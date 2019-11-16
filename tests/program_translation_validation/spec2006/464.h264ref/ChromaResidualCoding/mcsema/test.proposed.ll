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

declare %struct.Memory* @sub_440c40.SetModesAndRefframe(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43fcc0.ChromaPrediction4x4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40d2b0.dct_chroma_sp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4074c0.dct_chroma(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6f6f90_type = type <{ [8 x i8] }>
@G_0x6f6f90= global %G_0x6f6f90_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b8e40_type = type <{ [8 x i8] }>
@G__0x4b8e40= global %G__0x4b8e40_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6d2ec0_type = type <{ [8 x i8] }>
@G__0x6d2ec0= global %G__0x6d2ec0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6d40f0_type = type <{ [8 x i8] }>
@G__0x6d40f0= global %G__0x6d40f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6f6fa0_type = type <{ [8 x i8] }>
@G__0x6f6fa0= global %G__0x6f6fa0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6f8f20_type = type <{ [8 x i8] }>
@G__0x6f8f20= global %G__0x6f8f20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x722ff0_type = type <{ [8 x i8] }>
@G__0x722ff0= global %G__0x722ff0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x725610_type = type <{ [8 x i8] }>
@G__0x725610= global %G__0x725610_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @ChromaResidualCoding(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .ChromaResidualCoding:	 RIP: 441540	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 441540	 Bytes: 1
  %loadMem_441540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441540 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441540)
  store %struct.Memory* %call_441540, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 441541	 Bytes: 3
  %loadMem_441541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441541 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441541)
  store %struct.Memory* %call_441541, %struct.Memory** %MEMORY

  ; Code: subq $0x160, %rsp	 RIP: 441544	 Bytes: 7
  %loadMem_441544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441544 = call %struct.Memory* @routine_subq__0x160___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441544)
  store %struct.Memory* %call_441544, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 44154b	 Bytes: 2
  %loadMem_44154b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44154b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44154b)
  store %struct.Memory* %call_44154b, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 44154d	 Bytes: 2
  %loadMem_44154d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44154d = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44154d)
  store %struct.Memory* %call_44154d, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 44154f	 Bytes: 4
  %loadMem_44154f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44154f = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44154f)
  store %struct.Memory* %call_44154f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 441553	 Bytes: 8
  %loadMem_441553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441553 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441553)
  store %struct.Memory* %call_441553, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rdi), %rdi	 RIP: 44155b	 Bytes: 7
  %loadMem_44155b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44155b = call %struct.Memory* @routine_movq_0x3758__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44155b)
  store %struct.Memory* %call_44155b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 441562	 Bytes: 8
  %loadMem_441562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441562 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441562)
  store %struct.Memory* %call_441562, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rdx), %rdx	 RIP: 44156a	 Bytes: 4
  %loadMem_44156a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44156a = call %struct.Memory* @routine_movslq_0xc__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44156a)
  store %struct.Memory* %call_44156a, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rdx, %rdx	 RIP: 44156e	 Bytes: 7
  %loadMem_44156e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44156e = call %struct.Memory* @routine_imulq__0x278___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44156e)
  store %struct.Memory* %call_44156e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 441575	 Bytes: 3
  %loadMem_441575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441575 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441575)
  store %struct.Memory* %call_441575, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x48(%rdi)	 RIP: 441578	 Bytes: 4
  %loadMem_441578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441578 = call %struct.Memory* @routine_cmpl__0x0__0x48__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441578)
  store %struct.Memory* %call_441578, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x111(%rbp)	 RIP: 44157c	 Bytes: 6
  %loadMem_44157c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44157c = call %struct.Memory* @routine_movb__cl__MINUS0x111__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44157c)
  store %struct.Memory* %call_44157c, %struct.Memory** %MEMORY

  ; Code: jne .L_4415c3	 RIP: 441582	 Bytes: 6
  %loadMem_441582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441582 = call %struct.Memory* @routine_jne_.L_4415c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441582, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_441582, %struct.Memory** %MEMORY

  %loadBr_441582 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441582 = icmp eq i8 %loadBr_441582, 1
  br i1 %cmpBr_441582, label %block_.L_4415c3, label %block_441588

block_441588:
  ; Code: movb $0x1, %al	 RIP: 441588	 Bytes: 2
  %loadMem_441588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441588 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441588)
  store %struct.Memory* %call_441588, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 44158a	 Bytes: 8
  %loadMem_44158a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44158a = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44158a)
  store %struct.Memory* %call_44158a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rcx)	 RIP: 441592	 Bytes: 4
  %loadMem_441592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441592 = call %struct.Memory* @routine_cmpl__0x0__0x18__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441592)
  store %struct.Memory* %call_441592, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x112(%rbp)	 RIP: 441596	 Bytes: 6
  %loadMem_441596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441596 = call %struct.Memory* @routine_movb__al__MINUS0x112__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441596)
  store %struct.Memory* %call_441596, %struct.Memory** %MEMORY

  ; Code: je .L_4415b7	 RIP: 44159c	 Bytes: 6
  %loadMem_44159c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44159c = call %struct.Memory* @routine_je_.L_4415b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44159c, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_44159c, %struct.Memory** %MEMORY

  %loadBr_44159c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44159c = icmp eq i8 %loadBr_44159c, 1
  br i1 %cmpBr_44159c, label %block_.L_4415b7, label %block_4415a2

block_4415a2:
  ; Code: movq 0x6cb900, %rax	 RIP: 4415a2	 Bytes: 8
  %loadMem_4415a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415a2 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415a2)
  store %struct.Memory* %call_4415a2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x18(%rax)	 RIP: 4415aa	 Bytes: 4
  %loadMem_4415aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415aa = call %struct.Memory* @routine_cmpl__0x3__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415aa)
  store %struct.Memory* %call_4415aa, %struct.Memory** %MEMORY

  ; Code: sete %cl	 RIP: 4415ae	 Bytes: 3
  %loadMem_4415ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415ae = call %struct.Memory* @routine_sete__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415ae)
  store %struct.Memory* %call_4415ae, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x112(%rbp)	 RIP: 4415b1	 Bytes: 6
  %loadMem_4415b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415b1 = call %struct.Memory* @routine_movb__cl__MINUS0x112__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415b1)
  store %struct.Memory* %call_4415b1, %struct.Memory** %MEMORY

  ; Code: .L_4415b7:	 RIP: 4415b7	 Bytes: 0
  br label %block_.L_4415b7
block_.L_4415b7:

  ; Code: movb -0x112(%rbp), %al	 RIP: 4415b7	 Bytes: 6
  %loadMem_4415b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415b7 = call %struct.Memory* @routine_movb_MINUS0x112__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415b7)
  store %struct.Memory* %call_4415b7, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x111(%rbp)	 RIP: 4415bd	 Bytes: 6
  %loadMem_4415bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415bd = call %struct.Memory* @routine_movb__al__MINUS0x111__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415bd)
  store %struct.Memory* %call_4415bd, %struct.Memory** %MEMORY

  ; Code: .L_4415c3:	 RIP: 4415c3	 Bytes: 0
  br label %block_.L_4415c3
block_.L_4415c3:

  ; Code: movb -0x111(%rbp), %al	 RIP: 4415c3	 Bytes: 6
  %loadMem_4415c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415c3 = call %struct.Memory* @routine_movb_MINUS0x111__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415c3)
  store %struct.Memory* %call_4415c3, %struct.Memory** %MEMORY

  ; Code: movq $0x4b8e40, %rcx	 RIP: 4415c9	 Bytes: 10
  %loadMem_4415c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415c9 = call %struct.Memory* @routine_movq__0x4b8e40___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415c9)
  store %struct.Memory* %call_4415c9, %struct.Memory** %MEMORY

  ; Code: movl $0xc0, %edx	 RIP: 4415d3	 Bytes: 5
  %loadMem_4415d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415d3 = call %struct.Memory* @routine_movl__0xc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415d3)
  store %struct.Memory* %call_4415d3, %struct.Memory** %MEMORY

  ; Code: leaq -0x100(%rbp), %rsi	 RIP: 4415d8	 Bytes: 7
  %loadMem_4415d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415d8 = call %struct.Memory* @routine_leaq_MINUS0x100__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415d8)
  store %struct.Memory* %call_4415d8, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 4415df	 Bytes: 2
  %loadMem_4415df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415df = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415df)
  store %struct.Memory* %call_4415df, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %edi	 RIP: 4415e1	 Bytes: 3
  %loadMem_4415e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415e1 = call %struct.Memory* @routine_movzbl__al___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415e1)
  store %struct.Memory* %call_4415e1, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x34(%rbp)	 RIP: 4415e4	 Bytes: 3
  %loadMem_4415e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415e4 = call %struct.Memory* @routine_movl__edi__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415e4)
  store %struct.Memory* %call_4415e4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r8	 RIP: 4415e7	 Bytes: 8
  %loadMem_4415e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415e7 = call %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415e7)
  store %struct.Memory* %call_4415e7, %struct.Memory** %MEMORY

  ; Code: movl 0x11bfc(%r8), %edi	 RIP: 4415ef	 Bytes: 7
  %loadMem_4415ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415ef = call %struct.Memory* @routine_movl_0x11bfc__r8____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415ef)
  store %struct.Memory* %call_4415ef, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edi	 RIP: 4415f6	 Bytes: 3
  %loadMem_4415f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415f6 = call %struct.Memory* @routine_subl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415f6)
  store %struct.Memory* %call_4415f6, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x38(%rbp)	 RIP: 4415f9	 Bytes: 3
  %loadMem_4415f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415f9 = call %struct.Memory* @routine_movl__edi__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415f9)
  store %struct.Memory* %call_4415f9, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 4415fc	 Bytes: 3
  %loadMem_4415fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415fc = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415fc)
  store %struct.Memory* %call_4415fc, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 4415ff	 Bytes: 3
  %loadMem_4415ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4415ff = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4415ff)
  store %struct.Memory* %call_4415ff, %struct.Memory** %MEMORY

  ; Code: callq .memcpy_plt	 RIP: 441602	 Bytes: 5
  %loadMem1_441602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_441602 = call %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_441602, i64 -263378, i64 5, i64 5)
  store %struct.Memory* %call1_441602, %struct.Memory** %MEMORY

  %loadMem2_441602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_441602 = load i64, i64* %3
  %call2_441602 = call %struct.Memory* @ext_memcpy(%struct.State* %0, i64  %loadPC_441602, %struct.Memory* %loadMem2_441602)
  store %struct.Memory* %call2_441602, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 441607	 Bytes: 4
  %loadMem_441607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441607 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441607)
  store %struct.Memory* %call_441607, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx)	 RIP: 44160b	 Bytes: 6
  %loadMem_44160b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44160b = call %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44160b)
  store %struct.Memory* %call_44160b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 441611	 Bytes: 7
  %loadMem_441611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441611 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441611)
  store %struct.Memory* %call_441611, %struct.Memory** %MEMORY

  ; Code: .L_441618:	 RIP: 441618	 Bytes: 0
  br label %block_.L_441618
block_.L_441618:

  ; Code: cmpl $0x2, -0xc(%rbp)	 RIP: 441618	 Bytes: 4
  %loadMem_441618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441618 = call %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441618)
  store %struct.Memory* %call_441618, %struct.Memory** %MEMORY

  ; Code: jge .L_441e07	 RIP: 44161c	 Bytes: 6
  %loadMem_44161c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44161c = call %struct.Memory* @routine_jge_.L_441e07(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44161c, i8* %BRANCH_TAKEN, i64 2027, i64 6, i64 6)
  store %struct.Memory* %call_44161c, %struct.Memory** %MEMORY

  %loadBr_44161c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44161c = icmp eq i8 %loadBr_44161c, 1
  br i1 %cmpBr_44161c, label %block_.L_441e07, label %block_441622

block_441622:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 441622	 Bytes: 7
  %loadMem_441622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441622 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441622)
  store %struct.Memory* %call_441622, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 441629	 Bytes: 7
  %loadMem_441629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441629 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441629)
  store %struct.Memory* %call_441629, %struct.Memory** %MEMORY

  ; Code: .L_441630:	 RIP: 441630	 Bytes: 0
  br label %block_.L_441630
block_.L_441630:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 441630	 Bytes: 3
  %loadMem_441630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441630 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441630)
  store %struct.Memory* %call_441630, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441633	 Bytes: 8
  %loadMem_441633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441633 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441633)
  store %struct.Memory* %call_441633, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11c08(%rcx), %eax	 RIP: 44163b	 Bytes: 6
  %loadMem_44163b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44163b = call %struct.Memory* @routine_cmpl_0x11c08__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44163b)
  store %struct.Memory* %call_44163b, %struct.Memory** %MEMORY

  ; Code: jge .L_44170a	 RIP: 441641	 Bytes: 6
  %loadMem_441641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441641 = call %struct.Memory* @routine_jge_.L_44170a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441641, i8* %BRANCH_TAKEN, i64 201, i64 6, i64 6)
  store %struct.Memory* %call_441641, %struct.Memory** %MEMORY

  %loadBr_441641 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441641 = icmp eq i8 %loadBr_441641, 1
  br i1 %cmpBr_441641, label %block_.L_44170a, label %block_441647

block_441647:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 441647	 Bytes: 7
  %loadMem_441647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441647 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441647)
  store %struct.Memory* %call_441647, %struct.Memory** %MEMORY

  ; Code: .L_44164e:	 RIP: 44164e	 Bytes: 0
  br label %block_.L_44164e
block_.L_44164e:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44164e	 Bytes: 3
  %loadMem_44164e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44164e = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44164e)
  store %struct.Memory* %call_44164e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441651	 Bytes: 8
  %loadMem_441651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441651 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441651)
  store %struct.Memory* %call_441651, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11c04(%rcx), %eax	 RIP: 441659	 Bytes: 6
  %loadMem_441659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441659 = call %struct.Memory* @routine_cmpl_0x11c04__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441659)
  store %struct.Memory* %call_441659, %struct.Memory** %MEMORY

  ; Code: jge .L_4416f7	 RIP: 44165f	 Bytes: 6
  %loadMem_44165f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44165f = call %struct.Memory* @routine_jge_.L_4416f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44165f, i8* %BRANCH_TAKEN, i64 152, i64 6, i64 6)
  store %struct.Memory* %call_44165f, %struct.Memory** %MEMORY

  %loadBr_44165f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44165f = icmp eq i8 %loadBr_44165f, 1
  br i1 %cmpBr_44165f, label %block_.L_4416f7, label %block_441665

block_441665:
  ; Code: leaq -0x2a(%rbp), %rsi	 RIP: 441665	 Bytes: 4
  %loadMem_441665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441665 = call %struct.Memory* @routine_leaq_MINUS0x2a__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441665)
  store %struct.Memory* %call_441665, %struct.Memory** %MEMORY

  ; Code: leaq -0x24(%rbp), %rdx	 RIP: 441669	 Bytes: 4
  %loadMem_441669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441669 = call %struct.Memory* @routine_leaq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441669)
  store %struct.Memory* %call_441669, %struct.Memory** %MEMORY

  ; Code: leaq -0x28(%rbp), %rcx	 RIP: 44166d	 Bytes: 4
  %loadMem_44166d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44166d = call %struct.Memory* @routine_leaq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44166d)
  store %struct.Memory* %call_44166d, %struct.Memory** %MEMORY

  ; Code: leaq -0x2c(%rbp), %r8	 RIP: 441671	 Bytes: 4
  %loadMem_441671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441671 = call %struct.Memory* @routine_leaq_MINUS0x2c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441671)
  store %struct.Memory* %call_441671, %struct.Memory** %MEMORY

  ; Code: leaq -0x2e(%rbp), %r9	 RIP: 441675	 Bytes: 4
  %loadMem_441675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441675 = call %struct.Memory* @routine_leaq_MINUS0x2e__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441675)
  store %struct.Memory* %call_441675, %struct.Memory** %MEMORY

  ; Code: leaq -0x100(%rbp), %rax	 RIP: 441679	 Bytes: 7
  %loadMem_441679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441679 = call %struct.Memory* @routine_leaq_MINUS0x100__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441679)
  store %struct.Memory* %call_441679, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rdi	 RIP: 441680	 Bytes: 4
  %loadMem_441680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441680 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441680)
  store %struct.Memory* %call_441680, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 441684	 Bytes: 4
  %loadMem_441684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441684 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441684)
  store %struct.Memory* %call_441684, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rax	 RIP: 441688	 Bytes: 3
  %loadMem_441688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441688 = call %struct.Memory* @routine_addq__rdi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441688)
  store %struct.Memory* %call_441688, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r10d	 RIP: 44168b	 Bytes: 4
  %loadMem_44168b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44168b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44168b)
  store %struct.Memory* %call_44168b, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %r10d	 RIP: 44168f	 Bytes: 4
  %loadMem_44168f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44168f = call %struct.Memory* @routine_sarl__0x2___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44168f)
  store %struct.Memory* %call_44168f, %struct.Memory** %MEMORY

  ; Code: movslq %r10d, %rdi	 RIP: 441693	 Bytes: 3
  %loadMem_441693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441693 = call %struct.Memory* @routine_movslq__r10d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441693)
  store %struct.Memory* %call_441693, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdi	 RIP: 441696	 Bytes: 4
  %loadMem_441696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441696 = call %struct.Memory* @routine_shlq__0x4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441696)
  store %struct.Memory* %call_441696, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rax	 RIP: 44169a	 Bytes: 3
  %loadMem_44169a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44169a = call %struct.Memory* @routine_addq__rdi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44169a)
  store %struct.Memory* %call_44169a, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %r10d	 RIP: 44169d	 Bytes: 4
  %loadMem_44169d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44169d = call %struct.Memory* @routine_movl_MINUS0x18__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44169d)
  store %struct.Memory* %call_44169d, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %r10d	 RIP: 4416a1	 Bytes: 4
  %loadMem_4416a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416a1 = call %struct.Memory* @routine_sarl__0x2___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416a1)
  store %struct.Memory* %call_4416a1, %struct.Memory** %MEMORY

  ; Code: movslq %r10d, %rdi	 RIP: 4416a5	 Bytes: 3
  %loadMem_4416a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416a5 = call %struct.Memory* @routine_movslq__r10d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416a5)
  store %struct.Memory* %call_4416a5, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdi,4), %r10d	 RIP: 4416a8	 Bytes: 4
  %loadMem_4416a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416a8 = call %struct.Memory* @routine_movl___rax__rdi_4____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416a8)
  store %struct.Memory* %call_4416a8, %struct.Memory** %MEMORY

  ; Code: movl %r10d, -0x10(%rbp)	 RIP: 4416ac	 Bytes: 4
  %loadMem_4416ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416ac = call %struct.Memory* @routine_movl__r10d__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416ac)
  store %struct.Memory* %call_4416ac, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 4416b0	 Bytes: 3
  %loadMem_4416b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416b0 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416b0)
  store %struct.Memory* %call_4416b0, %struct.Memory** %MEMORY

  ; Code: callq .SetModesAndRefframe	 RIP: 4416b3	 Bytes: 5
  %loadMem1_4416b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4416b3 = call %struct.Memory* @routine_callq_.SetModesAndRefframe(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4416b3, i64 -2675, i64 5, i64 5)
  store %struct.Memory* %call1_4416b3, %struct.Memory** %MEMORY

  %loadMem2_4416b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4416b3 = load i64, i64* %3
  %call2_4416b3 = call %struct.Memory* @sub_440c40.SetModesAndRefframe(%struct.State* %0, i64  %loadPC_4416b3, %struct.Memory* %loadMem2_4416b3)
  store %struct.Memory* %call2_4416b3, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edi	 RIP: 4416b8	 Bytes: 3
  %loadMem_4416b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416b8 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416b8)
  store %struct.Memory* %call_4416b8, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %esi	 RIP: 4416bb	 Bytes: 3
  %loadMem_4416bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416bb = call %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416bb)
  store %struct.Memory* %call_4416bb, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 4416be	 Bytes: 3
  %loadMem_4416be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416be = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416be)
  store %struct.Memory* %call_4416be, %struct.Memory** %MEMORY

  ; Code: movswl -0x2a(%rbp), %ecx	 RIP: 4416c1	 Bytes: 4
  %loadMem_4416c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416c1 = call %struct.Memory* @routine_movswl_MINUS0x2a__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416c1)
  store %struct.Memory* %call_4416c1, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r8d	 RIP: 4416c5	 Bytes: 4
  %loadMem_4416c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416c5 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416c5)
  store %struct.Memory* %call_4416c5, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %r9d	 RIP: 4416c9	 Bytes: 4
  %loadMem_4416c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416c9 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416c9)
  store %struct.Memory* %call_4416c9, %struct.Memory** %MEMORY

  ; Code: movw -0x2c(%rbp), %r11w	 RIP: 4416cd	 Bytes: 5
  %loadMem_4416cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416cd = call %struct.Memory* @routine_movw_MINUS0x2c__rbp____r11w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416cd)
  store %struct.Memory* %call_4416cd, %struct.Memory** %MEMORY

  ; Code: movswl %r11w, %r10d	 RIP: 4416d2	 Bytes: 4
  %loadMem_4416d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416d2 = call %struct.Memory* @routine_movswl__r11w___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416d2)
  store %struct.Memory* %call_4416d2, %struct.Memory** %MEMORY

  ; Code: movl %r10d, (%rsp)	 RIP: 4416d6	 Bytes: 4
  %loadMem_4416d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416d6 = call %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416d6)
  store %struct.Memory* %call_4416d6, %struct.Memory** %MEMORY

  ; Code: movswl -0x2e(%rbp), %r10d	 RIP: 4416da	 Bytes: 5
  %loadMem_4416da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416da = call %struct.Memory* @routine_movswl_MINUS0x2e__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416da)
  store %struct.Memory* %call_4416da, %struct.Memory** %MEMORY

  ; Code: movl %r10d, 0x8(%rsp)	 RIP: 4416df	 Bytes: 5
  %loadMem_4416df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416df = call %struct.Memory* @routine_movl__r10d__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416df)
  store %struct.Memory* %call_4416df, %struct.Memory** %MEMORY

  ; Code: callq .ChromaPrediction4x4	 RIP: 4416e4	 Bytes: 5
  %loadMem1_4416e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4416e4 = call %struct.Memory* @routine_callq_.ChromaPrediction4x4(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4416e4, i64 -6692, i64 5, i64 5)
  store %struct.Memory* %call1_4416e4, %struct.Memory** %MEMORY

  %loadMem2_4416e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4416e4 = load i64, i64* %3
  %call2_4416e4 = call %struct.Memory* @sub_43fcc0.ChromaPrediction4x4(%struct.State* %0, i64  %loadPC_4416e4, %struct.Memory* %loadMem2_4416e4)
  store %struct.Memory* %call2_4416e4, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 4416e9	 Bytes: 3
  %loadMem_4416e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416e9 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416e9)
  store %struct.Memory* %call_4416e9, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 4416ec	 Bytes: 3
  %loadMem_4416ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416ec = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416ec)
  store %struct.Memory* %call_4416ec, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 4416ef	 Bytes: 3
  %loadMem_4416ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416ef = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416ef)
  store %struct.Memory* %call_4416ef, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44164e	 RIP: 4416f2	 Bytes: 5
  %loadMem_4416f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416f2 = call %struct.Memory* @routine_jmpq_.L_44164e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416f2, i64 -164, i64 5)
  store %struct.Memory* %call_4416f2, %struct.Memory** %MEMORY

  br label %block_.L_44164e

  ; Code: .L_4416f7:	 RIP: 4416f7	 Bytes: 0
block_.L_4416f7:

  ; Code: jmpq .L_4416fc	 RIP: 4416f7	 Bytes: 5
  %loadMem_4416f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416f7 = call %struct.Memory* @routine_jmpq_.L_4416fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416f7, i64 5, i64 5)
  store %struct.Memory* %call_4416f7, %struct.Memory** %MEMORY

  br label %block_.L_4416fc

  ; Code: .L_4416fc:	 RIP: 4416fc	 Bytes: 0
block_.L_4416fc:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4416fc	 Bytes: 3
  %loadMem_4416fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416fc = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416fc)
  store %struct.Memory* %call_4416fc, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 4416ff	 Bytes: 3
  %loadMem_4416ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4416ff = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4416ff)
  store %struct.Memory* %call_4416ff, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 441702	 Bytes: 3
  %loadMem_441702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441702 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441702)
  store %struct.Memory* %call_441702, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441630	 RIP: 441705	 Bytes: 5
  %loadMem_441705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441705 = call %struct.Memory* @routine_jmpq_.L_441630(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441705, i64 -213, i64 5)
  store %struct.Memory* %call_441705, %struct.Memory** %MEMORY

  br label %block_.L_441630

  ; Code: .L_44170a:	 RIP: 44170a	 Bytes: 0
block_.L_44170a:

  ; Code: movq 0x6cb900, %rax	 RIP: 44170a	 Bytes: 8
  %loadMem_44170a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44170a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44170a)
  store %struct.Memory* %call_44170a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ac8(%rax)	 RIP: 441712	 Bytes: 7
  %loadMem_441712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441712 = call %struct.Memory* @routine_cmpl__0x0__0x11ac8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441712)
  store %struct.Memory* %call_441712, %struct.Memory** %MEMORY

  ; Code: je .L_44185c	 RIP: 441719	 Bytes: 6
  %loadMem_441719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441719 = call %struct.Memory* @routine_je_.L_44185c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441719, i8* %BRANCH_TAKEN, i64 323, i64 6, i64 6)
  store %struct.Memory* %call_441719, %struct.Memory** %MEMORY

  %loadBr_441719 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441719 = icmp eq i8 %loadBr_441719, 1
  br i1 %cmpBr_441719, label %block_.L_44185c, label %block_44171f

block_44171f:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 44171f	 Bytes: 7
  %loadMem_44171f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44171f = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44171f)
  store %struct.Memory* %call_44171f, %struct.Memory** %MEMORY

  ; Code: .L_441726:	 RIP: 441726	 Bytes: 0
  br label %block_.L_441726
block_.L_441726:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 441726	 Bytes: 3
  %loadMem_441726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441726 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441726)
  store %struct.Memory* %call_441726, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441729	 Bytes: 8
  %loadMem_441729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441729 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441729)
  store %struct.Memory* %call_441729, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11c08(%rcx), %eax	 RIP: 441731	 Bytes: 6
  %loadMem_441731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441731 = call %struct.Memory* @routine_cmpl_0x11c08__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441731)
  store %struct.Memory* %call_441731, %struct.Memory** %MEMORY

  ; Code: jge .L_441857	 RIP: 441737	 Bytes: 6
  %loadMem_441737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441737 = call %struct.Memory* @routine_jge_.L_441857(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441737, i8* %BRANCH_TAKEN, i64 288, i64 6, i64 6)
  store %struct.Memory* %call_441737, %struct.Memory** %MEMORY

  %loadBr_441737 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441737 = icmp eq i8 %loadBr_441737, 1
  br i1 %cmpBr_441737, label %block_.L_441857, label %block_44173d

block_44173d:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 44173d	 Bytes: 7
  %loadMem_44173d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44173d = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44173d)
  store %struct.Memory* %call_44173d, %struct.Memory** %MEMORY

  ; Code: .L_441744:	 RIP: 441744	 Bytes: 0
  br label %block_.L_441744
block_.L_441744:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 441744	 Bytes: 3
  %loadMem_441744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441744 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441744)
  store %struct.Memory* %call_441744, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441747	 Bytes: 8
  %loadMem_441747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441747 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441747)
  store %struct.Memory* %call_441747, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11c04(%rcx), %eax	 RIP: 44174f	 Bytes: 6
  %loadMem_44174f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44174f = call %struct.Memory* @routine_cmpl_0x11c04__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44174f)
  store %struct.Memory* %call_44174f, %struct.Memory** %MEMORY

  ; Code: jge .L_441844	 RIP: 441755	 Bytes: 6
  %loadMem_441755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441755 = call %struct.Memory* @routine_jge_.L_441844(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441755, i8* %BRANCH_TAKEN, i64 239, i64 6, i64 6)
  store %struct.Memory* %call_441755, %struct.Memory** %MEMORY

  %loadBr_441755 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441755 = icmp eq i8 %loadBr_441755, 1
  br i1 %cmpBr_441755, label %block_.L_441844, label %block_44175b

block_44175b:
  ; Code: movq 0x6cb900, %rax	 RIP: 44175b	 Bytes: 8
  %loadMem_44175b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44175b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44175b)
  store %struct.Memory* %call_44175b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 441763	 Bytes: 7
  %loadMem_441763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441763 = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441763)
  store %struct.Memory* %call_441763, %struct.Memory** %MEMORY

  ; Code: jne .L_4417dd	 RIP: 44176a	 Bytes: 6
  %loadMem_44176a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44176a = call %struct.Memory* @routine_jne_.L_4417dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44176a, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_44176a, %struct.Memory** %MEMORY

  %loadBr_44176a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44176a = icmp eq i8 %loadBr_44176a, 1
  br i1 %cmpBr_44176a, label %block_.L_4417dd, label %block_441770

block_441770:
  ; Code: movq 0x6cb900, %rax	 RIP: 441770	 Bytes: 8
  %loadMem_441770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441770 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441770)
  store %struct.Memory* %call_441770, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rax	 RIP: 441778	 Bytes: 6
  %loadMem_441778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441778 = call %struct.Memory* @routine_addq__0x3138___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441778)
  store %struct.Memory* %call_441778, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 44177e	 Bytes: 4
  %loadMem_44177e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44177e = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44177e)
  store %struct.Memory* %call_44177e, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rcx	 RIP: 441782	 Bytes: 4
  %loadMem_441782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441782 = call %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441782)
  store %struct.Memory* %call_441782, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 441786	 Bytes: 3
  %loadMem_441786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441786 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441786)
  store %struct.Memory* %call_441786, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 441789	 Bytes: 4
  %loadMem_441789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441789 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441789)
  store %struct.Memory* %call_441789, %struct.Memory** %MEMORY

  ; Code: movw (%rax,%rcx,2), %dx	 RIP: 44178d	 Bytes: 4
  %loadMem_44178d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44178d = call %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44178d)
  store %struct.Memory* %call_44178d, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 441791	 Bytes: 8
  %loadMem_441791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441791 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441791)
  store %struct.Memory* %call_441791, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rax), %rax	 RIP: 441799	 Bytes: 7
  %loadMem_441799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441799 = call %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441799)
  store %struct.Memory* %call_441799, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4417a0	 Bytes: 4
  %loadMem_4417a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417a0 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417a0)
  store %struct.Memory* %call_4417a0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4417a4	 Bytes: 4
  %loadMem_4417a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417a4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417a4)
  store %struct.Memory* %call_4417a4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4417a8	 Bytes: 8
  %loadMem_4417a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417a8 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417a8)
  store %struct.Memory* %call_4417a8, %struct.Memory** %MEMORY

  ; Code: movl 0xa4(%rcx), %esi	 RIP: 4417b0	 Bytes: 6
  %loadMem_4417b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417b0 = call %struct.Memory* @routine_movl_0xa4__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417b0)
  store %struct.Memory* %call_4417b0, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 4417b6	 Bytes: 3
  %loadMem_4417b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417b6 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417b6)
  store %struct.Memory* %call_4417b6, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 4417b9	 Bytes: 3
  %loadMem_4417b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417b9 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417b9)
  store %struct.Memory* %call_4417b9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4417bc	 Bytes: 4
  %loadMem_4417bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417bc = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417bc)
  store %struct.Memory* %call_4417bc, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4417c0	 Bytes: 8
  %loadMem_4417c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417c0 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417c0)
  store %struct.Memory* %call_4417c0, %struct.Memory** %MEMORY

  ; Code: movl 0xa0(%rcx), %esi	 RIP: 4417c8	 Bytes: 6
  %loadMem_4417c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417c8 = call %struct.Memory* @routine_movl_0xa0__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417c8)
  store %struct.Memory* %call_4417c8, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %esi	 RIP: 4417ce	 Bytes: 3
  %loadMem_4417ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417ce = call %struct.Memory* @routine_addl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417ce)
  store %struct.Memory* %call_4417ce, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 4417d1	 Bytes: 3
  %loadMem_4417d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417d1 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417d1)
  store %struct.Memory* %call_4417d1, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax,%rcx,2)	 RIP: 4417d4	 Bytes: 4
  %loadMem_4417d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417d4 = call %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417d4)
  store %struct.Memory* %call_4417d4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441831	 RIP: 4417d8	 Bytes: 5
  %loadMem_4417d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417d8 = call %struct.Memory* @routine_jmpq_.L_441831(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417d8, i64 89, i64 5)
  store %struct.Memory* %call_4417d8, %struct.Memory** %MEMORY

  br label %block_.L_441831

  ; Code: .L_4417dd:	 RIP: 4417dd	 Bytes: 0
block_.L_4417dd:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 4417dd	 Bytes: 4
  %loadMem_4417dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417dd = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417dd)
  store %struct.Memory* %call_4417dd, %struct.Memory** %MEMORY

  ; Code: jne .L_44180c	 RIP: 4417e1	 Bytes: 6
  %loadMem_4417e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417e1 = call %struct.Memory* @routine_jne_.L_44180c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417e1, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_4417e1, %struct.Memory** %MEMORY

  %loadBr_4417e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4417e1 = icmp eq i8 %loadBr_4417e1, 1
  br i1 %cmpBr_4417e1, label %block_.L_44180c, label %block_4417e7

block_4417e7:
  ; Code: movq $0x6f8f20, %rax	 RIP: 4417e7	 Bytes: 10
  %loadMem_4417e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417e7 = call %struct.Memory* @routine_movq__0x6f8f20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417e7)
  store %struct.Memory* %call_4417e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 4417f1	 Bytes: 4
  %loadMem_4417f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417f1 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417f1)
  store %struct.Memory* %call_4417f1, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4417f5	 Bytes: 4
  %loadMem_4417f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417f5 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417f5)
  store %struct.Memory* %call_4417f5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4417f9	 Bytes: 3
  %loadMem_4417f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417f9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417f9)
  store %struct.Memory* %call_4417f9, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4417fc	 Bytes: 4
  %loadMem_4417fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4417fc = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4417fc)
  store %struct.Memory* %call_4417fc, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 441800	 Bytes: 7
  %loadMem_441800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441800 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441800)
  store %struct.Memory* %call_441800, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44182c	 RIP: 441807	 Bytes: 5
  %loadMem_441807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441807 = call %struct.Memory* @routine_jmpq_.L_44182c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441807, i64 37, i64 5)
  store %struct.Memory* %call_441807, %struct.Memory** %MEMORY

  br label %block_.L_44182c

  ; Code: .L_44180c:	 RIP: 44180c	 Bytes: 0
block_.L_44180c:

  ; Code: movq $0x6d2ec0, %rax	 RIP: 44180c	 Bytes: 10
  %loadMem_44180c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44180c = call %struct.Memory* @routine_movq__0x6d2ec0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44180c)
  store %struct.Memory* %call_44180c, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 441816	 Bytes: 4
  %loadMem_441816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441816 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441816)
  store %struct.Memory* %call_441816, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 44181a	 Bytes: 4
  %loadMem_44181a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44181a = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44181a)
  store %struct.Memory* %call_44181a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44181e	 Bytes: 3
  %loadMem_44181e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44181e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44181e)
  store %struct.Memory* %call_44181e, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 441821	 Bytes: 4
  %loadMem_441821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441821 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441821)
  store %struct.Memory* %call_441821, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 441825	 Bytes: 7
  %loadMem_441825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441825 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441825)
  store %struct.Memory* %call_441825, %struct.Memory** %MEMORY

  ; Code: .L_44182c:	 RIP: 44182c	 Bytes: 0
  br label %block_.L_44182c
block_.L_44182c:

  ; Code: jmpq .L_441831	 RIP: 44182c	 Bytes: 5
  %loadMem_44182c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44182c = call %struct.Memory* @routine_jmpq_.L_441831(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44182c, i64 5, i64 5)
  store %struct.Memory* %call_44182c, %struct.Memory** %MEMORY

  br label %block_.L_441831

  ; Code: .L_441831:	 RIP: 441831	 Bytes: 0
block_.L_441831:

  ; Code: jmpq .L_441836	 RIP: 441831	 Bytes: 5
  %loadMem_441831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441831 = call %struct.Memory* @routine_jmpq_.L_441836(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441831, i64 5, i64 5)
  store %struct.Memory* %call_441831, %struct.Memory** %MEMORY

  br label %block_.L_441836

  ; Code: .L_441836:	 RIP: 441836	 Bytes: 0
block_.L_441836:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 441836	 Bytes: 3
  %loadMem_441836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441836 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441836)
  store %struct.Memory* %call_441836, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 441839	 Bytes: 3
  %loadMem_441839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441839 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441839)
  store %struct.Memory* %call_441839, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 44183c	 Bytes: 3
  %loadMem_44183c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44183c = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44183c)
  store %struct.Memory* %call_44183c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441744	 RIP: 44183f	 Bytes: 5
  %loadMem_44183f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44183f = call %struct.Memory* @routine_jmpq_.L_441744(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44183f, i64 -251, i64 5)
  store %struct.Memory* %call_44183f, %struct.Memory** %MEMORY

  br label %block_.L_441744

  ; Code: .L_441844:	 RIP: 441844	 Bytes: 0
block_.L_441844:

  ; Code: jmpq .L_441849	 RIP: 441844	 Bytes: 5
  %loadMem_441844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441844 = call %struct.Memory* @routine_jmpq_.L_441849(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441844, i64 5, i64 5)
  store %struct.Memory* %call_441844, %struct.Memory** %MEMORY

  br label %block_.L_441849

  ; Code: .L_441849:	 RIP: 441849	 Bytes: 0
block_.L_441849:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 441849	 Bytes: 3
  %loadMem_441849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441849 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441849)
  store %struct.Memory* %call_441849, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44184c	 Bytes: 3
  %loadMem_44184c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44184c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44184c)
  store %struct.Memory* %call_44184c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 44184f	 Bytes: 3
  %loadMem_44184f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44184f = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44184f)
  store %struct.Memory* %call_44184f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441726	 RIP: 441852	 Bytes: 5
  %loadMem_441852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441852 = call %struct.Memory* @routine_jmpq_.L_441726(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441852, i64 -300, i64 5)
  store %struct.Memory* %call_441852, %struct.Memory** %MEMORY

  br label %block_.L_441726

  ; Code: .L_441857:	 RIP: 441857	 Bytes: 0
block_.L_441857:

  ; Code: jmpq .L_441bc5	 RIP: 441857	 Bytes: 5
  %loadMem_441857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441857 = call %struct.Memory* @routine_jmpq_.L_441bc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441857, i64 878, i64 5)
  store %struct.Memory* %call_441857, %struct.Memory** %MEMORY

  br label %block_.L_441bc5

  ; Code: .L_44185c:	 RIP: 44185c	 Bytes: 0
block_.L_44185c:

  ; Code: cmpl $0x0, -0x34(%rbp)	 RIP: 44185c	 Bytes: 4
  %loadMem_44185c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44185c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44185c)
  store %struct.Memory* %call_44185c, %struct.Memory** %MEMORY

  ; Code: je .L_4418e4	 RIP: 441860	 Bytes: 6
  %loadMem_441860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441860 = call %struct.Memory* @routine_je_.L_4418e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441860, i8* %BRANCH_TAKEN, i64 132, i64 6, i64 6)
  store %struct.Memory* %call_441860, %struct.Memory** %MEMORY

  %loadBr_441860 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441860 = icmp eq i8 %loadBr_441860, 1
  br i1 %cmpBr_441860, label %block_.L_4418e4, label %block_441866

block_441866:
  ; Code: movq 0x6cb900, %rax	 RIP: 441866	 Bytes: 8
  %loadMem_441866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441866 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441866)
  store %struct.Memory* %call_441866, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x18(%rax)	 RIP: 44186e	 Bytes: 4
  %loadMem_44186e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44186e = call %struct.Memory* @routine_cmpl__0x3__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44186e)
  store %struct.Memory* %call_44186e, %struct.Memory** %MEMORY

  ; Code: jne .L_4418e4	 RIP: 441872	 Bytes: 6
  %loadMem_441872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441872 = call %struct.Memory* @routine_jne_.L_4418e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441872, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_441872, %struct.Memory** %MEMORY

  %loadBr_441872 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441872 = icmp eq i8 %loadBr_441872, 1
  br i1 %cmpBr_441872, label %block_.L_4418e4, label %block_441878

block_441878:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 441878	 Bytes: 7
  %loadMem_441878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441878 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441878)
  store %struct.Memory* %call_441878, %struct.Memory** %MEMORY

  ; Code: .L_44187f:	 RIP: 44187f	 Bytes: 0
  br label %block_.L_44187f
block_.L_44187f:

  ; Code: cmpl $0x8, -0x1c(%rbp)	 RIP: 44187f	 Bytes: 4
  %loadMem_44187f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44187f = call %struct.Memory* @routine_cmpl__0x8__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44187f)
  store %struct.Memory* %call_44187f, %struct.Memory** %MEMORY

  ; Code: jge .L_4418df	 RIP: 441883	 Bytes: 6
  %loadMem_441883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441883 = call %struct.Memory* @routine_jge_.L_4418df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441883, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_441883, %struct.Memory** %MEMORY

  %loadBr_441883 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441883 = icmp eq i8 %loadBr_441883, 1
  br i1 %cmpBr_441883, label %block_.L_4418df, label %block_441889

block_441889:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 441889	 Bytes: 7
  %loadMem_441889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441889 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441889)
  store %struct.Memory* %call_441889, %struct.Memory** %MEMORY

  ; Code: .L_441890:	 RIP: 441890	 Bytes: 0
  br label %block_.L_441890
block_.L_441890:

  ; Code: cmpl $0x8, -0x20(%rbp)	 RIP: 441890	 Bytes: 4
  %loadMem_441890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441890 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441890)
  store %struct.Memory* %call_441890, %struct.Memory** %MEMORY

  ; Code: jge .L_4418cc	 RIP: 441894	 Bytes: 6
  %loadMem_441894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441894 = call %struct.Memory* @routine_jge_.L_4418cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441894, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_441894, %struct.Memory** %MEMORY

  %loadBr_441894 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441894 = icmp eq i8 %loadBr_441894, 1
  br i1 %cmpBr_441894, label %block_.L_4418cc, label %block_44189a

block_44189a:
  ; Code: movq 0x6cb900, %rax	 RIP: 44189a	 Bytes: 8
  %loadMem_44189a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44189a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44189a)
  store %struct.Memory* %call_44189a, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 4418a2	 Bytes: 6
  %loadMem_4418a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418a2 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418a2)
  store %struct.Memory* %call_4418a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 4418a8	 Bytes: 4
  %loadMem_4418a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418a8 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418a8)
  store %struct.Memory* %call_4418a8, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4418ac	 Bytes: 4
  %loadMem_4418ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418ac = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418ac)
  store %struct.Memory* %call_4418ac, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4418b0	 Bytes: 3
  %loadMem_4418b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418b0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418b0)
  store %struct.Memory* %call_4418b0, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4418b3	 Bytes: 4
  %loadMem_4418b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418b3 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418b3)
  store %struct.Memory* %call_4418b3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 4418b7	 Bytes: 7
  %loadMem_4418b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418b7 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418b7)
  store %struct.Memory* %call_4418b7, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4418be	 Bytes: 3
  %loadMem_4418be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418be = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418be)
  store %struct.Memory* %call_4418be, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4418c1	 Bytes: 3
  %loadMem_4418c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418c1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418c1)
  store %struct.Memory* %call_4418c1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4418c4	 Bytes: 3
  %loadMem_4418c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418c4 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418c4)
  store %struct.Memory* %call_4418c4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441890	 RIP: 4418c7	 Bytes: 5
  %loadMem_4418c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418c7 = call %struct.Memory* @routine_jmpq_.L_441890(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418c7, i64 -55, i64 5)
  store %struct.Memory* %call_4418c7, %struct.Memory** %MEMORY

  br label %block_.L_441890

  ; Code: .L_4418cc:	 RIP: 4418cc	 Bytes: 0
block_.L_4418cc:

  ; Code: jmpq .L_4418d1	 RIP: 4418cc	 Bytes: 5
  %loadMem_4418cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418cc = call %struct.Memory* @routine_jmpq_.L_4418d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418cc, i64 5, i64 5)
  store %struct.Memory* %call_4418cc, %struct.Memory** %MEMORY

  br label %block_.L_4418d1

  ; Code: .L_4418d1:	 RIP: 4418d1	 Bytes: 0
block_.L_4418d1:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4418d1	 Bytes: 3
  %loadMem_4418d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418d1 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418d1)
  store %struct.Memory* %call_4418d1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4418d4	 Bytes: 3
  %loadMem_4418d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418d4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418d4)
  store %struct.Memory* %call_4418d4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4418d7	 Bytes: 3
  %loadMem_4418d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418d7 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418d7)
  store %struct.Memory* %call_4418d7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44187f	 RIP: 4418da	 Bytes: 5
  %loadMem_4418da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418da = call %struct.Memory* @routine_jmpq_.L_44187f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418da, i64 -91, i64 5)
  store %struct.Memory* %call_4418da, %struct.Memory** %MEMORY

  br label %block_.L_44187f

  ; Code: .L_4418df:	 RIP: 4418df	 Bytes: 0
block_.L_4418df:

  ; Code: jmpq .L_441bc0	 RIP: 4418df	 Bytes: 5
  %loadMem_4418df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418df = call %struct.Memory* @routine_jmpq_.L_441bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418df, i64 737, i64 5)
  store %struct.Memory* %call_4418df, %struct.Memory** %MEMORY

  br label %block_.L_441bc0

  ; Code: .L_4418e4:	 RIP: 4418e4	 Bytes: 0
block_.L_4418e4:

  ; Code: cmpl $0x0, -0x34(%rbp)	 RIP: 4418e4	 Bytes: 4
  %loadMem_4418e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418e4 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418e4)
  store %struct.Memory* %call_4418e4, %struct.Memory** %MEMORY

  ; Code: je .L_441a2b	 RIP: 4418e8	 Bytes: 6
  %loadMem_4418e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418e8 = call %struct.Memory* @routine_je_.L_441a2b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418e8, i8* %BRANCH_TAKEN, i64 323, i64 6, i64 6)
  store %struct.Memory* %call_4418e8, %struct.Memory** %MEMORY

  %loadBr_4418e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4418e8 = icmp eq i8 %loadBr_4418e8, 1
  br i1 %cmpBr_4418e8, label %block_.L_441a2b, label %block_4418ee

block_4418ee:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 4418ee	 Bytes: 7
  %loadMem_4418ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418ee = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418ee)
  store %struct.Memory* %call_4418ee, %struct.Memory** %MEMORY

  ; Code: .L_4418f5:	 RIP: 4418f5	 Bytes: 0
  br label %block_.L_4418f5
block_.L_4418f5:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4418f5	 Bytes: 3
  %loadMem_4418f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418f5 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418f5)
  store %struct.Memory* %call_4418f5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4418f8	 Bytes: 8
  %loadMem_4418f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4418f8 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4418f8)
  store %struct.Memory* %call_4418f8, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11c08(%rcx), %eax	 RIP: 441900	 Bytes: 6
  %loadMem_441900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441900 = call %struct.Memory* @routine_cmpl_0x11c08__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441900)
  store %struct.Memory* %call_441900, %struct.Memory** %MEMORY

  ; Code: jge .L_441a26	 RIP: 441906	 Bytes: 6
  %loadMem_441906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441906 = call %struct.Memory* @routine_jge_.L_441a26(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441906, i8* %BRANCH_TAKEN, i64 288, i64 6, i64 6)
  store %struct.Memory* %call_441906, %struct.Memory** %MEMORY

  %loadBr_441906 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441906 = icmp eq i8 %loadBr_441906, 1
  br i1 %cmpBr_441906, label %block_.L_441a26, label %block_44190c

block_44190c:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 44190c	 Bytes: 7
  %loadMem_44190c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44190c = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44190c)
  store %struct.Memory* %call_44190c, %struct.Memory** %MEMORY

  ; Code: .L_441913:	 RIP: 441913	 Bytes: 0
  br label %block_.L_441913
block_.L_441913:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 441913	 Bytes: 3
  %loadMem_441913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441913 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441913)
  store %struct.Memory* %call_441913, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441916	 Bytes: 8
  %loadMem_441916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441916 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441916)
  store %struct.Memory* %call_441916, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11c04(%rcx), %eax	 RIP: 44191e	 Bytes: 6
  %loadMem_44191e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44191e = call %struct.Memory* @routine_cmpl_0x11c04__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44191e)
  store %struct.Memory* %call_44191e, %struct.Memory** %MEMORY

  ; Code: jge .L_441a13	 RIP: 441924	 Bytes: 6
  %loadMem_441924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441924 = call %struct.Memory* @routine_jge_.L_441a13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441924, i8* %BRANCH_TAKEN, i64 239, i64 6, i64 6)
  store %struct.Memory* %call_441924, %struct.Memory** %MEMORY

  %loadBr_441924 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441924 = icmp eq i8 %loadBr_441924, 1
  br i1 %cmpBr_441924, label %block_.L_441a13, label %block_44192a

block_44192a:
  ; Code: movq 0x6cb900, %rax	 RIP: 44192a	 Bytes: 8
  %loadMem_44192a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44192a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44192a)
  store %struct.Memory* %call_44192a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 441932	 Bytes: 7
  %loadMem_441932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441932 = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441932)
  store %struct.Memory* %call_441932, %struct.Memory** %MEMORY

  ; Code: jne .L_4419ac	 RIP: 441939	 Bytes: 6
  %loadMem_441939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441939 = call %struct.Memory* @routine_jne_.L_4419ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441939, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_441939, %struct.Memory** %MEMORY

  %loadBr_441939 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441939 = icmp eq i8 %loadBr_441939, 1
  br i1 %cmpBr_441939, label %block_.L_4419ac, label %block_44193f

block_44193f:
  ; Code: movq 0x6cb900, %rax	 RIP: 44193f	 Bytes: 8
  %loadMem_44193f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44193f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44193f)
  store %struct.Memory* %call_44193f, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rax	 RIP: 441947	 Bytes: 6
  %loadMem_441947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441947 = call %struct.Memory* @routine_addq__0x3138___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441947)
  store %struct.Memory* %call_441947, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 44194d	 Bytes: 4
  %loadMem_44194d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44194d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44194d)
  store %struct.Memory* %call_44194d, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rcx	 RIP: 441951	 Bytes: 4
  %loadMem_441951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441951 = call %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441951)
  store %struct.Memory* %call_441951, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 441955	 Bytes: 3
  %loadMem_441955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441955 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441955)
  store %struct.Memory* %call_441955, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 441958	 Bytes: 4
  %loadMem_441958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441958 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441958)
  store %struct.Memory* %call_441958, %struct.Memory** %MEMORY

  ; Code: movw (%rax,%rcx,2), %dx	 RIP: 44195c	 Bytes: 4
  %loadMem_44195c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44195c = call %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44195c)
  store %struct.Memory* %call_44195c, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 441960	 Bytes: 8
  %loadMem_441960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441960 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441960)
  store %struct.Memory* %call_441960, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rax), %rax	 RIP: 441968	 Bytes: 7
  %loadMem_441968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441968 = call %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441968)
  store %struct.Memory* %call_441968, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 44196f	 Bytes: 4
  %loadMem_44196f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44196f = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44196f)
  store %struct.Memory* %call_44196f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 441973	 Bytes: 4
  %loadMem_441973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441973 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441973)
  store %struct.Memory* %call_441973, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441977	 Bytes: 8
  %loadMem_441977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441977 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441977)
  store %struct.Memory* %call_441977, %struct.Memory** %MEMORY

  ; Code: movl 0xa4(%rcx), %esi	 RIP: 44197f	 Bytes: 6
  %loadMem_44197f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44197f = call %struct.Memory* @routine_movl_0xa4__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44197f)
  store %struct.Memory* %call_44197f, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 441985	 Bytes: 3
  %loadMem_441985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441985 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441985)
  store %struct.Memory* %call_441985, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 441988	 Bytes: 3
  %loadMem_441988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441988 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441988)
  store %struct.Memory* %call_441988, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44198b	 Bytes: 4
  %loadMem_44198b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44198b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44198b)
  store %struct.Memory* %call_44198b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 44198f	 Bytes: 8
  %loadMem_44198f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44198f = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44198f)
  store %struct.Memory* %call_44198f, %struct.Memory** %MEMORY

  ; Code: movl 0xa0(%rcx), %esi	 RIP: 441997	 Bytes: 6
  %loadMem_441997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441997 = call %struct.Memory* @routine_movl_0xa0__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441997)
  store %struct.Memory* %call_441997, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %esi	 RIP: 44199d	 Bytes: 3
  %loadMem_44199d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44199d = call %struct.Memory* @routine_addl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44199d)
  store %struct.Memory* %call_44199d, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 4419a0	 Bytes: 3
  %loadMem_4419a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419a0 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419a0)
  store %struct.Memory* %call_4419a0, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax,%rcx,2)	 RIP: 4419a3	 Bytes: 4
  %loadMem_4419a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419a3 = call %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419a3)
  store %struct.Memory* %call_4419a3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441a00	 RIP: 4419a7	 Bytes: 5
  %loadMem_4419a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419a7 = call %struct.Memory* @routine_jmpq_.L_441a00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419a7, i64 89, i64 5)
  store %struct.Memory* %call_4419a7, %struct.Memory** %MEMORY

  br label %block_.L_441a00

  ; Code: .L_4419ac:	 RIP: 4419ac	 Bytes: 0
block_.L_4419ac:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 4419ac	 Bytes: 4
  %loadMem_4419ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419ac = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419ac)
  store %struct.Memory* %call_4419ac, %struct.Memory** %MEMORY

  ; Code: jne .L_4419db	 RIP: 4419b0	 Bytes: 6
  %loadMem_4419b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419b0 = call %struct.Memory* @routine_jne_.L_4419db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419b0, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_4419b0, %struct.Memory** %MEMORY

  %loadBr_4419b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4419b0 = icmp eq i8 %loadBr_4419b0, 1
  br i1 %cmpBr_4419b0, label %block_.L_4419db, label %block_4419b6

block_4419b6:
  ; Code: movq $0x6f8f20, %rax	 RIP: 4419b6	 Bytes: 10
  %loadMem_4419b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419b6 = call %struct.Memory* @routine_movq__0x6f8f20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419b6)
  store %struct.Memory* %call_4419b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 4419c0	 Bytes: 4
  %loadMem_4419c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419c0 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419c0)
  store %struct.Memory* %call_4419c0, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4419c4	 Bytes: 4
  %loadMem_4419c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419c4 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419c4)
  store %struct.Memory* %call_4419c4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4419c8	 Bytes: 3
  %loadMem_4419c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419c8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419c8)
  store %struct.Memory* %call_4419c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4419cb	 Bytes: 4
  %loadMem_4419cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419cb = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419cb)
  store %struct.Memory* %call_4419cb, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 4419cf	 Bytes: 7
  %loadMem_4419cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419cf = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419cf)
  store %struct.Memory* %call_4419cf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4419fb	 RIP: 4419d6	 Bytes: 5
  %loadMem_4419d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419d6 = call %struct.Memory* @routine_jmpq_.L_4419fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419d6, i64 37, i64 5)
  store %struct.Memory* %call_4419d6, %struct.Memory** %MEMORY

  br label %block_.L_4419fb

  ; Code: .L_4419db:	 RIP: 4419db	 Bytes: 0
block_.L_4419db:

  ; Code: movq $0x6d2ec0, %rax	 RIP: 4419db	 Bytes: 10
  %loadMem_4419db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419db = call %struct.Memory* @routine_movq__0x6d2ec0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419db)
  store %struct.Memory* %call_4419db, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 4419e5	 Bytes: 4
  %loadMem_4419e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419e5 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419e5)
  store %struct.Memory* %call_4419e5, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4419e9	 Bytes: 4
  %loadMem_4419e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419e9 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419e9)
  store %struct.Memory* %call_4419e9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4419ed	 Bytes: 3
  %loadMem_4419ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419ed = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419ed)
  store %struct.Memory* %call_4419ed, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4419f0	 Bytes: 4
  %loadMem_4419f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419f0 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419f0)
  store %struct.Memory* %call_4419f0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 4419f4	 Bytes: 7
  %loadMem_4419f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419f4 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419f4)
  store %struct.Memory* %call_4419f4, %struct.Memory** %MEMORY

  ; Code: .L_4419fb:	 RIP: 4419fb	 Bytes: 0
  br label %block_.L_4419fb
block_.L_4419fb:

  ; Code: jmpq .L_441a00	 RIP: 4419fb	 Bytes: 5
  %loadMem_4419fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4419fb = call %struct.Memory* @routine_jmpq_.L_441a00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4419fb, i64 5, i64 5)
  store %struct.Memory* %call_4419fb, %struct.Memory** %MEMORY

  br label %block_.L_441a00

  ; Code: .L_441a00:	 RIP: 441a00	 Bytes: 0
block_.L_441a00:

  ; Code: jmpq .L_441a05	 RIP: 441a00	 Bytes: 5
  %loadMem_441a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a00 = call %struct.Memory* @routine_jmpq_.L_441a05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a00, i64 5, i64 5)
  store %struct.Memory* %call_441a00, %struct.Memory** %MEMORY

  br label %block_.L_441a05

  ; Code: .L_441a05:	 RIP: 441a05	 Bytes: 0
block_.L_441a05:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 441a05	 Bytes: 3
  %loadMem_441a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a05 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a05)
  store %struct.Memory* %call_441a05, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 441a08	 Bytes: 3
  %loadMem_441a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a08 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a08)
  store %struct.Memory* %call_441a08, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 441a0b	 Bytes: 3
  %loadMem_441a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a0b = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a0b)
  store %struct.Memory* %call_441a0b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441913	 RIP: 441a0e	 Bytes: 5
  %loadMem_441a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a0e = call %struct.Memory* @routine_jmpq_.L_441913(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a0e, i64 -251, i64 5)
  store %struct.Memory* %call_441a0e, %struct.Memory** %MEMORY

  br label %block_.L_441913

  ; Code: .L_441a13:	 RIP: 441a13	 Bytes: 0
block_.L_441a13:

  ; Code: jmpq .L_441a18	 RIP: 441a13	 Bytes: 5
  %loadMem_441a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a13 = call %struct.Memory* @routine_jmpq_.L_441a18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a13, i64 5, i64 5)
  store %struct.Memory* %call_441a13, %struct.Memory** %MEMORY

  br label %block_.L_441a18

  ; Code: .L_441a18:	 RIP: 441a18	 Bytes: 0
block_.L_441a18:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 441a18	 Bytes: 3
  %loadMem_441a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a18 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a18)
  store %struct.Memory* %call_441a18, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 441a1b	 Bytes: 3
  %loadMem_441a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a1b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a1b)
  store %struct.Memory* %call_441a1b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 441a1e	 Bytes: 3
  %loadMem_441a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a1e = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a1e)
  store %struct.Memory* %call_441a1e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4418f5	 RIP: 441a21	 Bytes: 5
  %loadMem_441a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a21 = call %struct.Memory* @routine_jmpq_.L_4418f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a21, i64 -300, i64 5)
  store %struct.Memory* %call_441a21, %struct.Memory** %MEMORY

  br label %block_.L_4418f5

  ; Code: .L_441a26:	 RIP: 441a26	 Bytes: 0
block_.L_441a26:

  ; Code: jmpq .L_441bbb	 RIP: 441a26	 Bytes: 5
  %loadMem_441a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a26 = call %struct.Memory* @routine_jmpq_.L_441bbb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a26, i64 405, i64 5)
  store %struct.Memory* %call_441a26, %struct.Memory** %MEMORY

  br label %block_.L_441bbb

  ; Code: .L_441a2b:	 RIP: 441a2b	 Bytes: 0
block_.L_441a2b:

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 441a2b	 Bytes: 7
  %loadMem_441a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a2b = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a2b)
  store %struct.Memory* %call_441a2b, %struct.Memory** %MEMORY

  ; Code: .L_441a32:	 RIP: 441a32	 Bytes: 0
  br label %block_.L_441a32
block_.L_441a32:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 441a32	 Bytes: 3
  %loadMem_441a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a32 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a32)
  store %struct.Memory* %call_441a32, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441a35	 Bytes: 8
  %loadMem_441a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a35 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a35)
  store %struct.Memory* %call_441a35, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11c08(%rcx), %eax	 RIP: 441a3d	 Bytes: 6
  %loadMem_441a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a3d = call %struct.Memory* @routine_cmpl_0x11c08__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a3d)
  store %struct.Memory* %call_441a3d, %struct.Memory** %MEMORY

  ; Code: jge .L_441bb6	 RIP: 441a43	 Bytes: 6
  %loadMem_441a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a43 = call %struct.Memory* @routine_jge_.L_441bb6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a43, i8* %BRANCH_TAKEN, i64 371, i64 6, i64 6)
  store %struct.Memory* %call_441a43, %struct.Memory** %MEMORY

  %loadBr_441a43 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441a43 = icmp eq i8 %loadBr_441a43, 1
  br i1 %cmpBr_441a43, label %block_.L_441bb6, label %block_441a49

block_441a49:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 441a49	 Bytes: 7
  %loadMem_441a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a49 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a49)
  store %struct.Memory* %call_441a49, %struct.Memory** %MEMORY

  ; Code: .L_441a50:	 RIP: 441a50	 Bytes: 0
  br label %block_.L_441a50
block_.L_441a50:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 441a50	 Bytes: 3
  %loadMem_441a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a50 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a50)
  store %struct.Memory* %call_441a50, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441a53	 Bytes: 8
  %loadMem_441a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a53 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a53)
  store %struct.Memory* %call_441a53, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11c04(%rcx), %eax	 RIP: 441a5b	 Bytes: 6
  %loadMem_441a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a5b = call %struct.Memory* @routine_cmpl_0x11c04__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a5b)
  store %struct.Memory* %call_441a5b, %struct.Memory** %MEMORY

  ; Code: jge .L_441ba3	 RIP: 441a61	 Bytes: 6
  %loadMem_441a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a61 = call %struct.Memory* @routine_jge_.L_441ba3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a61, i8* %BRANCH_TAKEN, i64 322, i64 6, i64 6)
  store %struct.Memory* %call_441a61, %struct.Memory** %MEMORY

  %loadBr_441a61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441a61 = icmp eq i8 %loadBr_441a61, 1
  br i1 %cmpBr_441a61, label %block_.L_441ba3, label %block_441a67

block_441a67:
  ; Code: movq 0x6cb900, %rax	 RIP: 441a67	 Bytes: 8
  %loadMem_441a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a67 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a67)
  store %struct.Memory* %call_441a67, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 441a6f	 Bytes: 7
  %loadMem_441a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a6f = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a6f)
  store %struct.Memory* %call_441a6f, %struct.Memory** %MEMORY

  ; Code: jne .L_441b04	 RIP: 441a76	 Bytes: 6
  %loadMem_441a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a76 = call %struct.Memory* @routine_jne_.L_441b04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a76, i8* %BRANCH_TAKEN, i64 142, i64 6, i64 6)
  store %struct.Memory* %call_441a76, %struct.Memory** %MEMORY

  %loadBr_441a76 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441a76 = icmp eq i8 %loadBr_441a76, 1
  br i1 %cmpBr_441a76, label %block_.L_441b04, label %block_441a7c

block_441a7c:
  ; Code: movq 0x6f6f90, %rax	 RIP: 441a7c	 Bytes: 8
  %loadMem_441a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a7c = call %struct.Memory* @routine_movq_0x6f6f90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a7c)
  store %struct.Memory* %call_441a7c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 441a84	 Bytes: 4
  %loadMem_441a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a84 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a84)
  store %struct.Memory* %call_441a84, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 441a88	 Bytes: 4
  %loadMem_441a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a88 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a88)
  store %struct.Memory* %call_441a88, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441a8c	 Bytes: 8
  %loadMem_441a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a8c = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a8c)
  store %struct.Memory* %call_441a8c, %struct.Memory** %MEMORY

  ; Code: movl 0xb4(%rcx), %edx	 RIP: 441a94	 Bytes: 6
  %loadMem_441a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a94 = call %struct.Memory* @routine_movl_0xb4__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a94)
  store %struct.Memory* %call_441a94, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 441a9a	 Bytes: 3
  %loadMem_441a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a9a = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a9a)
  store %struct.Memory* %call_441a9a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 441a9d	 Bytes: 3
  %loadMem_441a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441a9d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441a9d)
  store %struct.Memory* %call_441a9d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 441aa0	 Bytes: 4
  %loadMem_441aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441aa0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441aa0)
  store %struct.Memory* %call_441aa0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441aa4	 Bytes: 8
  %loadMem_441aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441aa4 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441aa4)
  store %struct.Memory* %call_441aa4, %struct.Memory** %MEMORY

  ; Code: movl 0xb0(%rcx), %edx	 RIP: 441aac	 Bytes: 6
  %loadMem_441aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441aac = call %struct.Memory* @routine_movl_0xb0__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441aac)
  store %struct.Memory* %call_441aac, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %edx	 RIP: 441ab2	 Bytes: 3
  %loadMem_441ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ab2 = call %struct.Memory* @routine_addl_MINUS0x20__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ab2)
  store %struct.Memory* %call_441ab2, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 441ab5	 Bytes: 3
  %loadMem_441ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ab5 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ab5)
  store %struct.Memory* %call_441ab5, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 441ab8	 Bytes: 4
  %loadMem_441ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ab8 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ab8)
  store %struct.Memory* %call_441ab8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 441abc	 Bytes: 8
  %loadMem_441abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441abc = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441abc)
  store %struct.Memory* %call_441abc, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rax	 RIP: 441ac4	 Bytes: 6
  %loadMem_441ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ac4 = call %struct.Memory* @routine_addq__0x3138___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ac4)
  store %struct.Memory* %call_441ac4, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 441aca	 Bytes: 4
  %loadMem_441aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441aca = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441aca)
  store %struct.Memory* %call_441aca, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rcx	 RIP: 441ace	 Bytes: 4
  %loadMem_441ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ace = call %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ace)
  store %struct.Memory* %call_441ace, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 441ad2	 Bytes: 3
  %loadMem_441ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ad2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ad2)
  store %struct.Memory* %call_441ad2, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 441ad5	 Bytes: 4
  %loadMem_441ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ad5 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ad5)
  store %struct.Memory* %call_441ad5, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %esi	 RIP: 441ad9	 Bytes: 4
  %loadMem_441ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ad9 = call %struct.Memory* @routine_movzwl___rax__rcx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ad9)
  store %struct.Memory* %call_441ad9, %struct.Memory** %MEMORY

  ; Code: subl %esi, %edx	 RIP: 441add	 Bytes: 2
  %loadMem_441add = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441add = call %struct.Memory* @routine_subl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441add)
  store %struct.Memory* %call_441add, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 441adf	 Bytes: 8
  %loadMem_441adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441adf = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441adf)
  store %struct.Memory* %call_441adf, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 441ae7	 Bytes: 6
  %loadMem_441ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ae7 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ae7)
  store %struct.Memory* %call_441ae7, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 441aed	 Bytes: 4
  %loadMem_441aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441aed = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441aed)
  store %struct.Memory* %call_441aed, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 441af1	 Bytes: 4
  %loadMem_441af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441af1 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441af1)
  store %struct.Memory* %call_441af1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 441af5	 Bytes: 3
  %loadMem_441af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441af5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441af5)
  store %struct.Memory* %call_441af5, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 441af8	 Bytes: 4
  %loadMem_441af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441af8 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441af8)
  store %struct.Memory* %call_441af8, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 441afc	 Bytes: 3
  %loadMem_441afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441afc = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441afc)
  store %struct.Memory* %call_441afc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441b90	 RIP: 441aff	 Bytes: 5
  %loadMem_441aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441aff = call %struct.Memory* @routine_jmpq_.L_441b90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441aff, i64 145, i64 5)
  store %struct.Memory* %call_441aff, %struct.Memory** %MEMORY

  br label %block_.L_441b90

  ; Code: .L_441b04:	 RIP: 441b04	 Bytes: 0
block_.L_441b04:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 441b04	 Bytes: 4
  %loadMem_441b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b04 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b04)
  store %struct.Memory* %call_441b04, %struct.Memory** %MEMORY

  ; Code: jne .L_441b4f	 RIP: 441b08	 Bytes: 6
  %loadMem_441b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b08 = call %struct.Memory* @routine_jne_.L_441b4f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b08, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_441b08, %struct.Memory** %MEMORY

  %loadBr_441b08 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441b08 = icmp eq i8 %loadBr_441b08, 1
  br i1 %cmpBr_441b08, label %block_.L_441b4f, label %block_441b0e

block_441b0e:
  ; Code: movq $0x6f6fa0, %rax	 RIP: 441b0e	 Bytes: 10
  %loadMem_441b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b0e = call %struct.Memory* @routine_movq__0x6f6fa0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b0e)
  store %struct.Memory* %call_441b0e, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 441b18	 Bytes: 4
  %loadMem_441b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b18 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b18)
  store %struct.Memory* %call_441b18, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 441b1c	 Bytes: 4
  %loadMem_441b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b1c = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b1c)
  store %struct.Memory* %call_441b1c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 441b20	 Bytes: 3
  %loadMem_441b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b20 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b20)
  store %struct.Memory* %call_441b20, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 441b23	 Bytes: 4
  %loadMem_441b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b23 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b23)
  store %struct.Memory* %call_441b23, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 441b27	 Bytes: 3
  %loadMem_441b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b27 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b27)
  store %struct.Memory* %call_441b27, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 441b2a	 Bytes: 8
  %loadMem_441b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b2a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b2a)
  store %struct.Memory* %call_441b2a, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 441b32	 Bytes: 6
  %loadMem_441b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b32 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b32)
  store %struct.Memory* %call_441b32, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 441b38	 Bytes: 4
  %loadMem_441b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b38 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b38)
  store %struct.Memory* %call_441b38, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 441b3c	 Bytes: 4
  %loadMem_441b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b3c = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b3c)
  store %struct.Memory* %call_441b3c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 441b40	 Bytes: 3
  %loadMem_441b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b40 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b40)
  store %struct.Memory* %call_441b40, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 441b43	 Bytes: 4
  %loadMem_441b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b43 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b43)
  store %struct.Memory* %call_441b43, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 441b47	 Bytes: 3
  %loadMem_441b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b47 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b47)
  store %struct.Memory* %call_441b47, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441b8b	 RIP: 441b4a	 Bytes: 5
  %loadMem_441b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b4a = call %struct.Memory* @routine_jmpq_.L_441b8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b4a, i64 65, i64 5)
  store %struct.Memory* %call_441b4a, %struct.Memory** %MEMORY

  br label %block_.L_441b8b

  ; Code: .L_441b4f:	 RIP: 441b4f	 Bytes: 0
block_.L_441b4f:

  ; Code: movq $0x6d40f0, %rax	 RIP: 441b4f	 Bytes: 10
  %loadMem_441b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b4f = call %struct.Memory* @routine_movq__0x6d40f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b4f)
  store %struct.Memory* %call_441b4f, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 441b59	 Bytes: 4
  %loadMem_441b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b59 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b59)
  store %struct.Memory* %call_441b59, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 441b5d	 Bytes: 4
  %loadMem_441b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b5d = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b5d)
  store %struct.Memory* %call_441b5d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 441b61	 Bytes: 3
  %loadMem_441b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b61 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b61)
  store %struct.Memory* %call_441b61, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 441b64	 Bytes: 4
  %loadMem_441b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b64 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b64)
  store %struct.Memory* %call_441b64, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 441b68	 Bytes: 3
  %loadMem_441b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b68 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b68)
  store %struct.Memory* %call_441b68, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 441b6b	 Bytes: 8
  %loadMem_441b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b6b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b6b)
  store %struct.Memory* %call_441b6b, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 441b73	 Bytes: 6
  %loadMem_441b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b73 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b73)
  store %struct.Memory* %call_441b73, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 441b79	 Bytes: 4
  %loadMem_441b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b79 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b79)
  store %struct.Memory* %call_441b79, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 441b7d	 Bytes: 4
  %loadMem_441b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b7d = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b7d)
  store %struct.Memory* %call_441b7d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 441b81	 Bytes: 3
  %loadMem_441b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b81 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b81)
  store %struct.Memory* %call_441b81, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 441b84	 Bytes: 4
  %loadMem_441b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b84 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b84)
  store %struct.Memory* %call_441b84, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 441b88	 Bytes: 3
  %loadMem_441b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b88 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b88)
  store %struct.Memory* %call_441b88, %struct.Memory** %MEMORY

  ; Code: .L_441b8b:	 RIP: 441b8b	 Bytes: 0
  br label %block_.L_441b8b
block_.L_441b8b:

  ; Code: jmpq .L_441b90	 RIP: 441b8b	 Bytes: 5
  %loadMem_441b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b8b = call %struct.Memory* @routine_jmpq_.L_441b90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b8b, i64 5, i64 5)
  store %struct.Memory* %call_441b8b, %struct.Memory** %MEMORY

  br label %block_.L_441b90

  ; Code: .L_441b90:	 RIP: 441b90	 Bytes: 0
block_.L_441b90:

  ; Code: jmpq .L_441b95	 RIP: 441b90	 Bytes: 5
  %loadMem_441b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b90 = call %struct.Memory* @routine_jmpq_.L_441b95(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b90, i64 5, i64 5)
  store %struct.Memory* %call_441b90, %struct.Memory** %MEMORY

  br label %block_.L_441b95

  ; Code: .L_441b95:	 RIP: 441b95	 Bytes: 0
block_.L_441b95:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 441b95	 Bytes: 3
  %loadMem_441b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b95 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b95)
  store %struct.Memory* %call_441b95, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 441b98	 Bytes: 3
  %loadMem_441b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b98 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b98)
  store %struct.Memory* %call_441b98, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 441b9b	 Bytes: 3
  %loadMem_441b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b9b = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b9b)
  store %struct.Memory* %call_441b9b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441a50	 RIP: 441b9e	 Bytes: 5
  %loadMem_441b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441b9e = call %struct.Memory* @routine_jmpq_.L_441a50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441b9e, i64 -334, i64 5)
  store %struct.Memory* %call_441b9e, %struct.Memory** %MEMORY

  br label %block_.L_441a50

  ; Code: .L_441ba3:	 RIP: 441ba3	 Bytes: 0
block_.L_441ba3:

  ; Code: jmpq .L_441ba8	 RIP: 441ba3	 Bytes: 5
  %loadMem_441ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ba3 = call %struct.Memory* @routine_jmpq_.L_441ba8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ba3, i64 5, i64 5)
  store %struct.Memory* %call_441ba3, %struct.Memory** %MEMORY

  br label %block_.L_441ba8

  ; Code: .L_441ba8:	 RIP: 441ba8	 Bytes: 0
block_.L_441ba8:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 441ba8	 Bytes: 3
  %loadMem_441ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ba8 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ba8)
  store %struct.Memory* %call_441ba8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 441bab	 Bytes: 3
  %loadMem_441bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441bab = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441bab)
  store %struct.Memory* %call_441bab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 441bae	 Bytes: 3
  %loadMem_441bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441bae = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441bae)
  store %struct.Memory* %call_441bae, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441a32	 RIP: 441bb1	 Bytes: 5
  %loadMem_441bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441bb1 = call %struct.Memory* @routine_jmpq_.L_441a32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441bb1, i64 -383, i64 5)
  store %struct.Memory* %call_441bb1, %struct.Memory** %MEMORY

  br label %block_.L_441a32

  ; Code: .L_441bb6:	 RIP: 441bb6	 Bytes: 0
block_.L_441bb6:

  ; Code: jmpq .L_441bbb	 RIP: 441bb6	 Bytes: 5
  %loadMem_441bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441bb6 = call %struct.Memory* @routine_jmpq_.L_441bbb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441bb6, i64 5, i64 5)
  store %struct.Memory* %call_441bb6, %struct.Memory** %MEMORY

  br label %block_.L_441bbb

  ; Code: .L_441bbb:	 RIP: 441bbb	 Bytes: 0
block_.L_441bbb:

  ; Code: jmpq .L_441bc0	 RIP: 441bbb	 Bytes: 5
  %loadMem_441bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441bbb = call %struct.Memory* @routine_jmpq_.L_441bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441bbb, i64 5, i64 5)
  store %struct.Memory* %call_441bbb, %struct.Memory** %MEMORY

  br label %block_.L_441bc0

  ; Code: .L_441bc0:	 RIP: 441bc0	 Bytes: 0
block_.L_441bc0:

  ; Code: jmpq .L_441bc5	 RIP: 441bc0	 Bytes: 5
  %loadMem_441bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441bc0 = call %struct.Memory* @routine_jmpq_.L_441bc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441bc0, i64 5, i64 5)
  store %struct.Memory* %call_441bc0, %struct.Memory** %MEMORY

  br label %block_.L_441bc5

  ; Code: .L_441bc5:	 RIP: 441bc5	 Bytes: 0
block_.L_441bc5:

  ; Code: cmpl $0x0, -0x34(%rbp)	 RIP: 441bc5	 Bytes: 4
  %loadMem_441bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441bc5 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441bc5)
  store %struct.Memory* %call_441bc5, %struct.Memory** %MEMORY

  ; Code: je .L_441bfa	 RIP: 441bc9	 Bytes: 6
  %loadMem_441bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441bc9 = call %struct.Memory* @routine_je_.L_441bfa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441bc9, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_441bc9, %struct.Memory** %MEMORY

  %loadBr_441bc9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441bc9 = icmp eq i8 %loadBr_441bc9, 1
  br i1 %cmpBr_441bc9, label %block_.L_441bfa, label %block_441bcf

block_441bcf:
  ; Code: movq 0x6cb900, %rax	 RIP: 441bcf	 Bytes: 8
  %loadMem_441bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441bcf = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441bcf)
  store %struct.Memory* %call_441bcf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x18(%rax)	 RIP: 441bd7	 Bytes: 4
  %loadMem_441bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441bd7 = call %struct.Memory* @routine_cmpl__0x3__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441bd7)
  store %struct.Memory* %call_441bd7, %struct.Memory** %MEMORY

  ; Code: jne .L_441bfa	 RIP: 441bdb	 Bytes: 6
  %loadMem_441bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441bdb = call %struct.Memory* @routine_jne_.L_441bfa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441bdb, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_441bdb, %struct.Memory** %MEMORY

  %loadBr_441bdb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441bdb = icmp eq i8 %loadBr_441bdb, 1
  br i1 %cmpBr_441bdb, label %block_.L_441bfa, label %block_441be1

block_441be1:
  ; Code: movl -0xc(%rbp), %edi	 RIP: 441be1	 Bytes: 3
  %loadMem_441be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441be1 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441be1)
  store %struct.Memory* %call_441be1, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 441be4	 Bytes: 4
  %loadMem_441be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441be4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441be4)
  store %struct.Memory* %call_441be4, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 441be8	 Bytes: 2
  %loadMem_441be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441be8 = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441be8)
  store %struct.Memory* %call_441be8, %struct.Memory** %MEMORY

  ; Code: callq .dct_chroma_sp	 RIP: 441bea	 Bytes: 5
  %loadMem1_441bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_441bea = call %struct.Memory* @routine_callq_.dct_chroma_sp(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_441bea, i64 -215354, i64 5, i64 5)
  store %struct.Memory* %call1_441bea, %struct.Memory** %MEMORY

  %loadMem2_441bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_441bea = load i64, i64* %3
  %call2_441bea = call %struct.Memory* @sub_40d2b0.dct_chroma_sp(%struct.State* %0, i64  %loadPC_441bea, %struct.Memory* %loadMem2_441bea)
  store %struct.Memory* %call2_441bea, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 441bef	 Bytes: 4
  %loadMem_441bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441bef = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441bef)
  store %struct.Memory* %call_441bef, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 441bf3	 Bytes: 2
  %loadMem_441bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441bf3 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441bf3)
  store %struct.Memory* %call_441bf3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441df4	 RIP: 441bf5	 Bytes: 5
  %loadMem_441bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441bf5 = call %struct.Memory* @routine_jmpq_.L_441df4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441bf5, i64 511, i64 5)
  store %struct.Memory* %call_441bf5, %struct.Memory** %MEMORY

  br label %block_.L_441df4

  ; Code: .L_441bfa:	 RIP: 441bfa	 Bytes: 0
block_.L_441bfa:

  ; Code: movq 0x6cb900, %rax	 RIP: 441bfa	 Bytes: 8
  %loadMem_441bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441bfa = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441bfa)
  store %struct.Memory* %call_441bfa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ac8(%rax)	 RIP: 441c02	 Bytes: 7
  %loadMem_441c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c02 = call %struct.Memory* @routine_cmpl__0x0__0x11ac8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c02)
  store %struct.Memory* %call_441c02, %struct.Memory** %MEMORY

  ; Code: jne .L_441def	 RIP: 441c09	 Bytes: 6
  %loadMem_441c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c09 = call %struct.Memory* @routine_jne_.L_441def(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c09, i8* %BRANCH_TAKEN, i64 486, i64 6, i64 6)
  store %struct.Memory* %call_441c09, %struct.Memory** %MEMORY

  %loadBr_441c09 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441c09 = icmp eq i8 %loadBr_441c09, 1
  br i1 %cmpBr_441c09, label %block_.L_441def, label %block_441c0f

block_441c0f:
  ; Code: cmpl $0x0, -0x34(%rbp)	 RIP: 441c0f	 Bytes: 4
  %loadMem_441c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c0f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c0f)
  store %struct.Memory* %call_441c0f, %struct.Memory** %MEMORY

  ; Code: jne .L_441def	 RIP: 441c13	 Bytes: 6
  %loadMem_441c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c13 = call %struct.Memory* @routine_jne_.L_441def(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c13, i8* %BRANCH_TAKEN, i64 476, i64 6, i64 6)
  store %struct.Memory* %call_441c13, %struct.Memory** %MEMORY

  %loadBr_441c13 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441c13 = icmp eq i8 %loadBr_441c13, 1
  br i1 %cmpBr_441c13, label %block_.L_441def, label %block_441c19

block_441c19:
  ; Code: movq 0x6cb900, %rax	 RIP: 441c19	 Bytes: 8
  %loadMem_441c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c19 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c19)
  store %struct.Memory* %call_441c19, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x18(%rax)	 RIP: 441c21	 Bytes: 4
  %loadMem_441c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c21 = call %struct.Memory* @routine_cmpl__0x3__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c21)
  store %struct.Memory* %call_441c21, %struct.Memory** %MEMORY

  ; Code: jne .L_441cb8	 RIP: 441c25	 Bytes: 6
  %loadMem_441c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c25 = call %struct.Memory* @routine_jne_.L_441cb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c25, i8* %BRANCH_TAKEN, i64 147, i64 6, i64 6)
  store %struct.Memory* %call_441c25, %struct.Memory** %MEMORY

  %loadBr_441c25 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441c25 = icmp eq i8 %loadBr_441c25, 1
  br i1 %cmpBr_441c25, label %block_.L_441cb8, label %block_441c2b

block_441c2b:
  ; Code: movq 0x6cb900, %rax	 RIP: 441c2b	 Bytes: 8
  %loadMem_441c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c2b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c2b)
  store %struct.Memory* %call_441c2b, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 441c33	 Bytes: 7
  %loadMem_441c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c33 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c33)
  store %struct.Memory* %call_441c33, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441c3a	 Bytes: 8
  %loadMem_441c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c3a = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c3a)
  store %struct.Memory* %call_441c3a, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rcx), %rcx	 RIP: 441c42	 Bytes: 4
  %loadMem_441c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c42 = call %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c42)
  store %struct.Memory* %call_441c42, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 441c46	 Bytes: 7
  %loadMem_441c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c46 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c46)
  store %struct.Memory* %call_441c46, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 441c4d	 Bytes: 3
  %loadMem_441c4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c4d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c4d)
  store %struct.Memory* %call_441c4d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x9, 0x48(%rax)	 RIP: 441c50	 Bytes: 4
  %loadMem_441c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c50 = call %struct.Memory* @routine_cmpl__0x9__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c50)
  store %struct.Memory* %call_441c50, %struct.Memory** %MEMORY

  ; Code: je .L_441cb8	 RIP: 441c54	 Bytes: 6
  %loadMem_441c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c54 = call %struct.Memory* @routine_je_.L_441cb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c54, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_441c54, %struct.Memory** %MEMORY

  %loadBr_441c54 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441c54 = icmp eq i8 %loadBr_441c54, 1
  br i1 %cmpBr_441c54, label %block_.L_441cb8, label %block_441c5a

block_441c5a:
  ; Code: movq 0x6cb900, %rax	 RIP: 441c5a	 Bytes: 8
  %loadMem_441c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c5a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c5a)
  store %struct.Memory* %call_441c5a, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 441c62	 Bytes: 7
  %loadMem_441c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c62 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c62)
  store %struct.Memory* %call_441c62, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441c69	 Bytes: 8
  %loadMem_441c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c69 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c69)
  store %struct.Memory* %call_441c69, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rcx), %rcx	 RIP: 441c71	 Bytes: 4
  %loadMem_441c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c71 = call %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c71)
  store %struct.Memory* %call_441c71, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 441c75	 Bytes: 7
  %loadMem_441c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c75 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c75)
  store %struct.Memory* %call_441c75, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 441c7c	 Bytes: 3
  %loadMem_441c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c7c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c7c)
  store %struct.Memory* %call_441c7c, %struct.Memory** %MEMORY

  ; Code: cmpl $0xa, 0x48(%rax)	 RIP: 441c7f	 Bytes: 4
  %loadMem_441c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c7f = call %struct.Memory* @routine_cmpl__0xa__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c7f)
  store %struct.Memory* %call_441c7f, %struct.Memory** %MEMORY

  ; Code: je .L_441cb8	 RIP: 441c83	 Bytes: 6
  %loadMem_441c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c83 = call %struct.Memory* @routine_je_.L_441cb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c83, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_441c83, %struct.Memory** %MEMORY

  %loadBr_441c83 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441c83 = icmp eq i8 %loadBr_441c83, 1
  br i1 %cmpBr_441c83, label %block_.L_441cb8, label %block_441c89

block_441c89:
  ; Code: movq 0x6cb900, %rax	 RIP: 441c89	 Bytes: 8
  %loadMem_441c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c89 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c89)
  store %struct.Memory* %call_441c89, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 441c91	 Bytes: 7
  %loadMem_441c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c91 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c91)
  store %struct.Memory* %call_441c91, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441c98	 Bytes: 8
  %loadMem_441c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441c98 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441c98)
  store %struct.Memory* %call_441c98, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rcx), %rcx	 RIP: 441ca0	 Bytes: 4
  %loadMem_441ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ca0 = call %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ca0)
  store %struct.Memory* %call_441ca0, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 441ca4	 Bytes: 7
  %loadMem_441ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ca4 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ca4)
  store %struct.Memory* %call_441ca4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 441cab	 Bytes: 3
  %loadMem_441cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441cab = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441cab)
  store %struct.Memory* %call_441cab, %struct.Memory** %MEMORY

  ; Code: cmpl $0xd, 0x48(%rax)	 RIP: 441cae	 Bytes: 4
  %loadMem_441cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441cae = call %struct.Memory* @routine_cmpl__0xd__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441cae)
  store %struct.Memory* %call_441cae, %struct.Memory** %MEMORY

  ; Code: jne .L_441cd1	 RIP: 441cb2	 Bytes: 6
  %loadMem_441cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441cb2 = call %struct.Memory* @routine_jne_.L_441cd1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441cb2, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_441cb2, %struct.Memory** %MEMORY

  %loadBr_441cb2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441cb2 = icmp eq i8 %loadBr_441cb2, 1
  br i1 %cmpBr_441cb2, label %block_.L_441cd1, label %block_.L_441cb8

  ; Code: .L_441cb8:	 RIP: 441cb8	 Bytes: 0
block_.L_441cb8:

  ; Code: movl -0xc(%rbp), %edi	 RIP: 441cb8	 Bytes: 3
  %loadMem_441cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441cb8 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441cb8)
  store %struct.Memory* %call_441cb8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 441cbb	 Bytes: 4
  %loadMem_441cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441cbb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441cbb)
  store %struct.Memory* %call_441cbb, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 441cbf	 Bytes: 2
  %loadMem_441cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441cbf = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441cbf)
  store %struct.Memory* %call_441cbf, %struct.Memory** %MEMORY

  ; Code: callq .dct_chroma	 RIP: 441cc1	 Bytes: 5
  %loadMem1_441cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_441cc1 = call %struct.Memory* @routine_callq_.dct_chroma(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_441cc1, i64 -239617, i64 5, i64 5)
  store %struct.Memory* %call1_441cc1, %struct.Memory** %MEMORY

  %loadMem2_441cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_441cc1 = load i64, i64* %3
  %call2_441cc1 = call %struct.Memory* @sub_4074c0.dct_chroma(%struct.State* %0, i64  %loadPC_441cc1, %struct.Memory* %loadMem2_441cc1)
  store %struct.Memory* %call2_441cc1, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 441cc6	 Bytes: 4
  %loadMem_441cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441cc6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441cc6)
  store %struct.Memory* %call_441cc6, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 441cca	 Bytes: 2
  %loadMem_441cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441cca = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441cca)
  store %struct.Memory* %call_441cca, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441ce5	 RIP: 441ccc	 Bytes: 5
  %loadMem_441ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ccc = call %struct.Memory* @routine_jmpq_.L_441ce5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ccc, i64 25, i64 5)
  store %struct.Memory* %call_441ccc, %struct.Memory** %MEMORY

  br label %block_.L_441ce5

  ; Code: .L_441cd1:	 RIP: 441cd1	 Bytes: 0
block_.L_441cd1:

  ; Code: movl -0xc(%rbp), %edi	 RIP: 441cd1	 Bytes: 3
  %loadMem_441cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441cd1 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441cd1)
  store %struct.Memory* %call_441cd1, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 441cd4	 Bytes: 4
  %loadMem_441cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441cd4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441cd4)
  store %struct.Memory* %call_441cd4, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 441cd8	 Bytes: 2
  %loadMem_441cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441cd8 = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441cd8)
  store %struct.Memory* %call_441cd8, %struct.Memory** %MEMORY

  ; Code: callq .dct_chroma_sp	 RIP: 441cda	 Bytes: 5
  %loadMem1_441cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_441cda = call %struct.Memory* @routine_callq_.dct_chroma_sp(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_441cda, i64 -215594, i64 5, i64 5)
  store %struct.Memory* %call1_441cda, %struct.Memory** %MEMORY

  %loadMem2_441cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_441cda = load i64, i64* %3
  %call2_441cda = call %struct.Memory* @sub_40d2b0.dct_chroma_sp(%struct.State* %0, i64  %loadPC_441cda, %struct.Memory* %loadMem2_441cda)
  store %struct.Memory* %call2_441cda, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 441cdf	 Bytes: 4
  %loadMem_441cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441cdf = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441cdf)
  store %struct.Memory* %call_441cdf, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 441ce3	 Bytes: 2
  %loadMem_441ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ce3 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ce3)
  store %struct.Memory* %call_441ce3, %struct.Memory** %MEMORY

  ; Code: .L_441ce5:	 RIP: 441ce5	 Bytes: 0
  br label %block_.L_441ce5
block_.L_441ce5:

  ; Code: movq 0x6cb900, %rax	 RIP: 441ce5	 Bytes: 8
  %loadMem_441ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ce5 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ce5)
  store %struct.Memory* %call_441ce5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 441ced	 Bytes: 7
  %loadMem_441ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ced = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ced)
  store %struct.Memory* %call_441ced, %struct.Memory** %MEMORY

  ; Code: je .L_441dea	 RIP: 441cf4	 Bytes: 6
  %loadMem_441cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441cf4 = call %struct.Memory* @routine_je_.L_441dea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441cf4, i8* %BRANCH_TAKEN, i64 246, i64 6, i64 6)
  store %struct.Memory* %call_441cf4, %struct.Memory** %MEMORY

  %loadBr_441cf4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441cf4 = icmp eq i8 %loadBr_441cf4, 1
  br i1 %cmpBr_441cf4, label %block_.L_441dea, label %block_441cfa

block_441cfa:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 441cfa	 Bytes: 7
  %loadMem_441cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441cfa = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441cfa)
  store %struct.Memory* %call_441cfa, %struct.Memory** %MEMORY

  ; Code: .L_441d01:	 RIP: 441d01	 Bytes: 0
  br label %block_.L_441d01
block_.L_441d01:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 441d01	 Bytes: 3
  %loadMem_441d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d01 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d01)
  store %struct.Memory* %call_441d01, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441d04	 Bytes: 8
  %loadMem_441d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d04 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d04)
  store %struct.Memory* %call_441d04, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11c08(%rcx), %eax	 RIP: 441d0c	 Bytes: 6
  %loadMem_441d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d0c = call %struct.Memory* @routine_cmpl_0x11c08__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d0c)
  store %struct.Memory* %call_441d0c, %struct.Memory** %MEMORY

  ; Code: jge .L_441de5	 RIP: 441d12	 Bytes: 6
  %loadMem_441d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d12 = call %struct.Memory* @routine_jge_.L_441de5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d12, i8* %BRANCH_TAKEN, i64 211, i64 6, i64 6)
  store %struct.Memory* %call_441d12, %struct.Memory** %MEMORY

  %loadBr_441d12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441d12 = icmp eq i8 %loadBr_441d12, 1
  br i1 %cmpBr_441d12, label %block_.L_441de5, label %block_441d18

block_441d18:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 441d18	 Bytes: 7
  %loadMem_441d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d18 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d18)
  store %struct.Memory* %call_441d18, %struct.Memory** %MEMORY

  ; Code: .L_441d1f:	 RIP: 441d1f	 Bytes: 0
  br label %block_.L_441d1f
block_.L_441d1f:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 441d1f	 Bytes: 3
  %loadMem_441d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d1f = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d1f)
  store %struct.Memory* %call_441d1f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441d22	 Bytes: 8
  %loadMem_441d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d22 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d22)
  store %struct.Memory* %call_441d22, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11c04(%rcx), %eax	 RIP: 441d2a	 Bytes: 6
  %loadMem_441d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d2a = call %struct.Memory* @routine_cmpl_0x11c04__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d2a)
  store %struct.Memory* %call_441d2a, %struct.Memory** %MEMORY

  ; Code: jge .L_441dd2	 RIP: 441d30	 Bytes: 6
  %loadMem_441d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d30 = call %struct.Memory* @routine_jge_.L_441dd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d30, i8* %BRANCH_TAKEN, i64 162, i64 6, i64 6)
  store %struct.Memory* %call_441d30, %struct.Memory** %MEMORY

  %loadBr_441d30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441d30 = icmp eq i8 %loadBr_441d30, 1
  br i1 %cmpBr_441d30, label %block_.L_441dd2, label %block_441d36

block_441d36:
  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 441d36	 Bytes: 4
  %loadMem_441d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d36 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d36)
  store %struct.Memory* %call_441d36, %struct.Memory** %MEMORY

  ; Code: jne .L_441d82	 RIP: 441d3a	 Bytes: 6
  %loadMem_441d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d3a = call %struct.Memory* @routine_jne_.L_441d82(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d3a, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_441d3a, %struct.Memory** %MEMORY

  %loadBr_441d3a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441d3a = icmp eq i8 %loadBr_441d3a, 1
  br i1 %cmpBr_441d3a, label %block_.L_441d82, label %block_441d40

block_441d40:
  ; Code: movq $0x6f8f20, %rax	 RIP: 441d40	 Bytes: 10
  %loadMem_441d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d40 = call %struct.Memory* @routine_movq__0x6f8f20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d40)
  store %struct.Memory* %call_441d40, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441d4a	 Bytes: 8
  %loadMem_441d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d4a = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d4a)
  store %struct.Memory* %call_441d4a, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 441d52	 Bytes: 7
  %loadMem_441d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d52 = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d52)
  store %struct.Memory* %call_441d52, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 441d59	 Bytes: 4
  %loadMem_441d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d59 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d59)
  store %struct.Memory* %call_441d59, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 441d5d	 Bytes: 4
  %loadMem_441d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d5d = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d5d)
  store %struct.Memory* %call_441d5d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 441d61	 Bytes: 3
  %loadMem_441d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d61 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d61)
  store %struct.Memory* %call_441d61, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 441d64	 Bytes: 4
  %loadMem_441d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d64 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d64)
  store %struct.Memory* %call_441d64, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 441d68	 Bytes: 3
  %loadMem_441d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d68 = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d68)
  store %struct.Memory* %call_441d68, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 441d6b	 Bytes: 4
  %loadMem_441d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d6b = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d6b)
  store %struct.Memory* %call_441d6b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 441d6f	 Bytes: 4
  %loadMem_441d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d6f = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d6f)
  store %struct.Memory* %call_441d6f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 441d73	 Bytes: 3
  %loadMem_441d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d73 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d73)
  store %struct.Memory* %call_441d73, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 441d76	 Bytes: 4
  %loadMem_441d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d76 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d76)
  store %struct.Memory* %call_441d76, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 441d7a	 Bytes: 3
  %loadMem_441d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d7a = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d7a)
  store %struct.Memory* %call_441d7a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441dbf	 RIP: 441d7d	 Bytes: 5
  %loadMem_441d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d7d = call %struct.Memory* @routine_jmpq_.L_441dbf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d7d, i64 66, i64 5)
  store %struct.Memory* %call_441d7d, %struct.Memory** %MEMORY

  br label %block_.L_441dbf

  ; Code: .L_441d82:	 RIP: 441d82	 Bytes: 0
block_.L_441d82:

  ; Code: movq $0x6d2ec0, %rax	 RIP: 441d82	 Bytes: 10
  %loadMem_441d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d82 = call %struct.Memory* @routine_movq__0x6d2ec0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d82)
  store %struct.Memory* %call_441d82, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 441d8c	 Bytes: 8
  %loadMem_441d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d8c = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d8c)
  store %struct.Memory* %call_441d8c, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 441d94	 Bytes: 7
  %loadMem_441d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d94 = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d94)
  store %struct.Memory* %call_441d94, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 441d9b	 Bytes: 4
  %loadMem_441d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d9b = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d9b)
  store %struct.Memory* %call_441d9b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 441d9f	 Bytes: 4
  %loadMem_441d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441d9f = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441d9f)
  store %struct.Memory* %call_441d9f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 441da3	 Bytes: 3
  %loadMem_441da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441da3 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441da3)
  store %struct.Memory* %call_441da3, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 441da6	 Bytes: 4
  %loadMem_441da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441da6 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441da6)
  store %struct.Memory* %call_441da6, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 441daa	 Bytes: 3
  %loadMem_441daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441daa = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441daa)
  store %struct.Memory* %call_441daa, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 441dad	 Bytes: 4
  %loadMem_441dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441dad = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441dad)
  store %struct.Memory* %call_441dad, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 441db1	 Bytes: 4
  %loadMem_441db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441db1 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441db1)
  store %struct.Memory* %call_441db1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 441db5	 Bytes: 3
  %loadMem_441db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441db5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441db5)
  store %struct.Memory* %call_441db5, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 441db8	 Bytes: 4
  %loadMem_441db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441db8 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441db8)
  store %struct.Memory* %call_441db8, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 441dbc	 Bytes: 3
  %loadMem_441dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441dbc = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441dbc)
  store %struct.Memory* %call_441dbc, %struct.Memory** %MEMORY

  ; Code: .L_441dbf:	 RIP: 441dbf	 Bytes: 0
  br label %block_.L_441dbf
block_.L_441dbf:

  ; Code: jmpq .L_441dc4	 RIP: 441dbf	 Bytes: 5
  %loadMem_441dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441dbf = call %struct.Memory* @routine_jmpq_.L_441dc4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441dbf, i64 5, i64 5)
  store %struct.Memory* %call_441dbf, %struct.Memory** %MEMORY

  br label %block_.L_441dc4

  ; Code: .L_441dc4:	 RIP: 441dc4	 Bytes: 0
block_.L_441dc4:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 441dc4	 Bytes: 3
  %loadMem_441dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441dc4 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441dc4)
  store %struct.Memory* %call_441dc4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 441dc7	 Bytes: 3
  %loadMem_441dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441dc7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441dc7)
  store %struct.Memory* %call_441dc7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 441dca	 Bytes: 3
  %loadMem_441dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441dca = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441dca)
  store %struct.Memory* %call_441dca, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441d1f	 RIP: 441dcd	 Bytes: 5
  %loadMem_441dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441dcd = call %struct.Memory* @routine_jmpq_.L_441d1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441dcd, i64 -174, i64 5)
  store %struct.Memory* %call_441dcd, %struct.Memory** %MEMORY

  br label %block_.L_441d1f

  ; Code: .L_441dd2:	 RIP: 441dd2	 Bytes: 0
block_.L_441dd2:

  ; Code: jmpq .L_441dd7	 RIP: 441dd2	 Bytes: 5
  %loadMem_441dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441dd2 = call %struct.Memory* @routine_jmpq_.L_441dd7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441dd2, i64 5, i64 5)
  store %struct.Memory* %call_441dd2, %struct.Memory** %MEMORY

  br label %block_.L_441dd7

  ; Code: .L_441dd7:	 RIP: 441dd7	 Bytes: 0
block_.L_441dd7:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 441dd7	 Bytes: 3
  %loadMem_441dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441dd7 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441dd7)
  store %struct.Memory* %call_441dd7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 441dda	 Bytes: 3
  %loadMem_441dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441dda = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441dda)
  store %struct.Memory* %call_441dda, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 441ddd	 Bytes: 3
  %loadMem_441ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ddd = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ddd)
  store %struct.Memory* %call_441ddd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441d01	 RIP: 441de0	 Bytes: 5
  %loadMem_441de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441de0 = call %struct.Memory* @routine_jmpq_.L_441d01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441de0, i64 -223, i64 5)
  store %struct.Memory* %call_441de0, %struct.Memory** %MEMORY

  br label %block_.L_441d01

  ; Code: .L_441de5:	 RIP: 441de5	 Bytes: 0
block_.L_441de5:

  ; Code: jmpq .L_441dea	 RIP: 441de5	 Bytes: 5
  %loadMem_441de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441de5 = call %struct.Memory* @routine_jmpq_.L_441dea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441de5, i64 5, i64 5)
  store %struct.Memory* %call_441de5, %struct.Memory** %MEMORY

  br label %block_.L_441dea

  ; Code: .L_441dea:	 RIP: 441dea	 Bytes: 0
block_.L_441dea:

  ; Code: jmpq .L_441def	 RIP: 441dea	 Bytes: 5
  %loadMem_441dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441dea = call %struct.Memory* @routine_jmpq_.L_441def(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441dea, i64 5, i64 5)
  store %struct.Memory* %call_441dea, %struct.Memory** %MEMORY

  br label %block_.L_441def

  ; Code: .L_441def:	 RIP: 441def	 Bytes: 0
block_.L_441def:

  ; Code: jmpq .L_441df4	 RIP: 441def	 Bytes: 5
  %loadMem_441def = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441def = call %struct.Memory* @routine_jmpq_.L_441df4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441def, i64 5, i64 5)
  store %struct.Memory* %call_441def, %struct.Memory** %MEMORY

  br label %block_.L_441df4

  ; Code: .L_441df4:	 RIP: 441df4	 Bytes: 0
block_.L_441df4:

  ; Code: jmpq .L_441df9	 RIP: 441df4	 Bytes: 5
  %loadMem_441df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441df4 = call %struct.Memory* @routine_jmpq_.L_441df9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441df4, i64 5, i64 5)
  store %struct.Memory* %call_441df4, %struct.Memory** %MEMORY

  br label %block_.L_441df9

  ; Code: .L_441df9:	 RIP: 441df9	 Bytes: 0
block_.L_441df9:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 441df9	 Bytes: 3
  %loadMem_441df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441df9 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441df9)
  store %struct.Memory* %call_441df9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 441dfc	 Bytes: 3
  %loadMem_441dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441dfc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441dfc)
  store %struct.Memory* %call_441dfc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 441dff	 Bytes: 3
  %loadMem_441dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441dff = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441dff)
  store %struct.Memory* %call_441dff, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441618	 RIP: 441e02	 Bytes: 5
  %loadMem_441e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e02 = call %struct.Memory* @routine_jmpq_.L_441618(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e02, i64 -2026, i64 5)
  store %struct.Memory* %call_441e02, %struct.Memory** %MEMORY

  br label %block_.L_441618

  ; Code: .L_441e07:	 RIP: 441e07	 Bytes: 0
block_.L_441e07:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 441e07	 Bytes: 4
  %loadMem_441e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e07 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e07)
  store %struct.Memory* %call_441e07, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 441e0b	 Bytes: 2
  %loadMem_441e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e0b = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e0b)
  store %struct.Memory* %call_441e0b, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %ecx	 RIP: 441e0d	 Bytes: 3
  %loadMem_441e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e0d = call %struct.Memory* @routine_shll__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e0d)
  store %struct.Memory* %call_441e0d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 441e10	 Bytes: 8
  %loadMem_441e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e10 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e10)
  store %struct.Memory* %call_441e10, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 441e18	 Bytes: 7
  %loadMem_441e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e18 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e18)
  store %struct.Memory* %call_441e18, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 441e1f	 Bytes: 8
  %loadMem_441e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e1f = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e1f)
  store %struct.Memory* %call_441e1f, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rdx), %rdx	 RIP: 441e27	 Bytes: 4
  %loadMem_441e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e27 = call %struct.Memory* @routine_movslq_0xc__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e27)
  store %struct.Memory* %call_441e27, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rdx, %rdx	 RIP: 441e2b	 Bytes: 7
  %loadMem_441e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e2b = call %struct.Memory* @routine_imulq__0x278___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e2b)
  store %struct.Memory* %call_441e2b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 441e32	 Bytes: 3
  %loadMem_441e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e32 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e32)
  store %struct.Memory* %call_441e32, %struct.Memory** %MEMORY

  ; Code: addl 0x1cc(%rax), %ecx	 RIP: 441e35	 Bytes: 6
  %loadMem_441e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e35 = call %struct.Memory* @routine_addl_0x1cc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e35)
  store %struct.Memory* %call_441e35, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1cc(%rax)	 RIP: 441e3b	 Bytes: 6
  %loadMem_441e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e3b = call %struct.Memory* @routine_movl__ecx__0x1cc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e3b)
  store %struct.Memory* %call_441e3b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 441e41	 Bytes: 8
  %loadMem_441e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e41 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e41)
  store %struct.Memory* %call_441e41, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 441e49	 Bytes: 7
  %loadMem_441e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e49 = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e49)
  store %struct.Memory* %call_441e49, %struct.Memory** %MEMORY

  ; Code: je .L_4423b1	 RIP: 441e50	 Bytes: 6
  %loadMem_441e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e50 = call %struct.Memory* @routine_je_.L_4423b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e50, i8* %BRANCH_TAKEN, i64 1377, i64 6, i64 6)
  store %struct.Memory* %call_441e50, %struct.Memory** %MEMORY

  %loadBr_441e50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441e50 = icmp eq i8 %loadBr_441e50, 1
  br i1 %cmpBr_441e50, label %block_.L_4423b1, label %block_441e56

block_441e56:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 441e56	 Bytes: 7
  %loadMem_441e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e56 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e56)
  store %struct.Memory* %call_441e56, %struct.Memory** %MEMORY

  ; Code: .L_441e5d:	 RIP: 441e5d	 Bytes: 0
  br label %block_.L_441e5d
block_.L_441e5d:

  ; Code: cmpl $0x10, -0x1c(%rbp)	 RIP: 441e5d	 Bytes: 4
  %loadMem_441e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e5d = call %struct.Memory* @routine_cmpl__0x10__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e5d)
  store %struct.Memory* %call_441e5d, %struct.Memory** %MEMORY

  ; Code: jge .L_4423ac	 RIP: 441e61	 Bytes: 6
  %loadMem_441e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e61 = call %struct.Memory* @routine_jge_.L_4423ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e61, i8* %BRANCH_TAKEN, i64 1355, i64 6, i64 6)
  store %struct.Memory* %call_441e61, %struct.Memory** %MEMORY

  %loadBr_441e61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441e61 = icmp eq i8 %loadBr_441e61, 1
  br i1 %cmpBr_441e61, label %block_.L_4423ac, label %block_441e67

block_441e67:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 441e67	 Bytes: 7
  %loadMem_441e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e67 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e67)
  store %struct.Memory* %call_441e67, %struct.Memory** %MEMORY

  ; Code: .L_441e6e:	 RIP: 441e6e	 Bytes: 0
  br label %block_.L_441e6e
block_.L_441e6e:

  ; Code: cmpl $0x10, -0x20(%rbp)	 RIP: 441e6e	 Bytes: 4
  %loadMem_441e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e6e = call %struct.Memory* @routine_cmpl__0x10__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e6e)
  store %struct.Memory* %call_441e6e, %struct.Memory** %MEMORY

  ; Code: jge .L_442399	 RIP: 441e72	 Bytes: 6
  %loadMem_441e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e72 = call %struct.Memory* @routine_jge_.L_442399(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e72, i8* %BRANCH_TAKEN, i64 1319, i64 6, i64 6)
  store %struct.Memory* %call_441e72, %struct.Memory** %MEMORY

  %loadBr_441e72 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441e72 = icmp eq i8 %loadBr_441e72, 1
  br i1 %cmpBr_441e72, label %block_.L_442399, label %block_441e78

block_441e78:
  ; Code: xorl %eax, %eax	 RIP: 441e78	 Bytes: 2
  %loadMem_441e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e78 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e78)
  store %struct.Memory* %call_441e78, %struct.Memory** %MEMORY

  ; Code: movq $0x725610, %rcx	 RIP: 441e7a	 Bytes: 10
  %loadMem_441e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e7a = call %struct.Memory* @routine_movq__0x725610___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e7a)
  store %struct.Memory* %call_441e7a, %struct.Memory** %MEMORY

  ; Code: addq $0x400, %rcx	 RIP: 441e84	 Bytes: 7
  %loadMem_441e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e84 = call %struct.Memory* @routine_addq__0x400___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e84)
  store %struct.Memory* %call_441e84, %struct.Memory** %MEMORY

  ; Code: movq $0x6f8f20, %rdx	 RIP: 441e8b	 Bytes: 10
  %loadMem_441e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e8b = call %struct.Memory* @routine_movq__0x6f8f20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e8b)
  store %struct.Memory* %call_441e8b, %struct.Memory** %MEMORY

  ; Code: movq $0x6d2ec0, %rsi	 RIP: 441e95	 Bytes: 10
  %loadMem_441e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e95 = call %struct.Memory* @routine_movq__0x6d2ec0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e95)
  store %struct.Memory* %call_441e95, %struct.Memory** %MEMORY

  ; Code: movq $0x722ff0, %rdi	 RIP: 441e9f	 Bytes: 10
  %loadMem_441e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441e9f = call %struct.Memory* @routine_movq__0x722ff0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441e9f)
  store %struct.Memory* %call_441e9f, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %r8	 RIP: 441ea9	 Bytes: 4
  %loadMem_441ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ea9 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ea9)
  store %struct.Memory* %call_441ea9, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 441ead	 Bytes: 4
  %loadMem_441ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ead = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ead)
  store %struct.Memory* %call_441ead, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rdi	 RIP: 441eb1	 Bytes: 3
  %loadMem_441eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441eb1 = call %struct.Memory* @routine_addq__r8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441eb1)
  store %struct.Memory* %call_441eb1, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %r8	 RIP: 441eb4	 Bytes: 4
  %loadMem_441eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441eb4 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441eb4)
  store %struct.Memory* %call_441eb4, %struct.Memory** %MEMORY

  ; Code: movl (%rdi,%r8,4), %r9d	 RIP: 441eb8	 Bytes: 4
  %loadMem_441eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441eb8 = call %struct.Memory* @routine_movl___rdi__r8_4____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441eb8)
  store %struct.Memory* %call_441eb8, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdi	 RIP: 441ebc	 Bytes: 4
  %loadMem_441ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ebc = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ebc)
  store %struct.Memory* %call_441ebc, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 441ec0	 Bytes: 4
  %loadMem_441ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ec0 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ec0)
  store %struct.Memory* %call_441ec0, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %r8	 RIP: 441ec4	 Bytes: 3
  %loadMem_441ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ec4 = call %struct.Memory* @routine_movq__rsi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ec4)
  store %struct.Memory* %call_441ec4, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %r8	 RIP: 441ec7	 Bytes: 3
  %loadMem_441ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ec7 = call %struct.Memory* @routine_addq__rdi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ec7)
  store %struct.Memory* %call_441ec7, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdi	 RIP: 441eca	 Bytes: 4
  %loadMem_441eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441eca = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441eca)
  store %struct.Memory* %call_441eca, %struct.Memory** %MEMORY

  ; Code: movl (%r8,%rdi,4), %r10d	 RIP: 441ece	 Bytes: 4
  %loadMem_441ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ece = call %struct.Memory* @routine_movl___r8__rdi_4____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ece)
  store %struct.Memory* %call_441ece, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %r10d	 RIP: 441ed2	 Bytes: 4
  %loadMem_441ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ed2 = call %struct.Memory* @routine_sarl__0x1___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ed2)
  store %struct.Memory* %call_441ed2, %struct.Memory** %MEMORY

  ; Code: subl %r10d, %r9d	 RIP: 441ed6	 Bytes: 3
  %loadMem_441ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ed6 = call %struct.Memory* @routine_subl__r10d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ed6)
  store %struct.Memory* %call_441ed6, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x110(%rbp)	 RIP: 441ed9	 Bytes: 7
  %loadMem_441ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ed9 = call %struct.Memory* @routine_movl__r9d__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ed9)
  store %struct.Memory* %call_441ed9, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdi	 RIP: 441ee0	 Bytes: 4
  %loadMem_441ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ee0 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ee0)
  store %struct.Memory* %call_441ee0, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 441ee4	 Bytes: 4
  %loadMem_441ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ee4 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ee4)
  store %struct.Memory* %call_441ee4, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 441ee8	 Bytes: 3
  %loadMem_441ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ee8 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ee8)
  store %struct.Memory* %call_441ee8, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdi	 RIP: 441eeb	 Bytes: 4
  %loadMem_441eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441eeb = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441eeb)
  store %struct.Memory* %call_441eeb, %struct.Memory** %MEMORY

  ; Code: movl (%rsi,%rdi,4), %r9d	 RIP: 441eef	 Bytes: 4
  %loadMem_441eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441eef = call %struct.Memory* @routine_movl___rsi__rdi_4____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441eef)
  store %struct.Memory* %call_441eef, %struct.Memory** %MEMORY

  ; Code: addl -0x110(%rbp), %r9d	 RIP: 441ef3	 Bytes: 7
  %loadMem_441ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ef3 = call %struct.Memory* @routine_addl_MINUS0x110__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ef3)
  store %struct.Memory* %call_441ef3, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x108(%rbp)	 RIP: 441efa	 Bytes: 7
  %loadMem_441efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441efa = call %struct.Memory* @routine_movl__r9d__MINUS0x108__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441efa)
  store %struct.Memory* %call_441efa, %struct.Memory** %MEMORY

  ; Code: movl -0x110(%rbp), %r9d	 RIP: 441f01	 Bytes: 7
  %loadMem_441f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f01 = call %struct.Memory* @routine_movl_MINUS0x110__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f01)
  store %struct.Memory* %call_441f01, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 441f08	 Bytes: 4
  %loadMem_441f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f08 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f08)
  store %struct.Memory* %call_441f08, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 441f0c	 Bytes: 4
  %loadMem_441f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f0c = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f0c)
  store %struct.Memory* %call_441f0c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 441f10	 Bytes: 3
  %loadMem_441f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f10 = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f10)
  store %struct.Memory* %call_441f10, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 441f13	 Bytes: 3
  %loadMem_441f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f13 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f13)
  store %struct.Memory* %call_441f13, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 441f16	 Bytes: 4
  %loadMem_441f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f16 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f16)
  store %struct.Memory* %call_441f16, %struct.Memory** %MEMORY

  ; Code: movl (%rdi,%rsi,4), %r10d	 RIP: 441f1a	 Bytes: 4
  %loadMem_441f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f1a = call %struct.Memory* @routine_movl___rdi__rsi_4____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f1a)
  store %struct.Memory* %call_441f1a, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %r10d	 RIP: 441f1e	 Bytes: 4
  %loadMem_441f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f1e = call %struct.Memory* @routine_sarl__0x1___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f1e)
  store %struct.Memory* %call_441f1e, %struct.Memory** %MEMORY

  ; Code: subl %r10d, %r9d	 RIP: 441f22	 Bytes: 3
  %loadMem_441f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f22 = call %struct.Memory* @routine_subl__r10d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f22)
  store %struct.Memory* %call_441f22, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x10c(%rbp)	 RIP: 441f25	 Bytes: 7
  %loadMem_441f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f25 = call %struct.Memory* @routine_movl__r9d__MINUS0x10c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f25)
  store %struct.Memory* %call_441f25, %struct.Memory** %MEMORY

  ; Code: movl -0x10c(%rbp), %r9d	 RIP: 441f2c	 Bytes: 7
  %loadMem_441f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f2c = call %struct.Memory* @routine_movl_MINUS0x10c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f2c)
  store %struct.Memory* %call_441f2c, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 441f33	 Bytes: 4
  %loadMem_441f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f33 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f33)
  store %struct.Memory* %call_441f33, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 441f37	 Bytes: 4
  %loadMem_441f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f37 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f37)
  store %struct.Memory* %call_441f37, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 441f3b	 Bytes: 3
  %loadMem_441f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f3b = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f3b)
  store %struct.Memory* %call_441f3b, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 441f3e	 Bytes: 4
  %loadMem_441f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f3e = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f3e)
  store %struct.Memory* %call_441f3e, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rsi,4), %r9d	 RIP: 441f42	 Bytes: 4
  %loadMem_441f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f42 = call %struct.Memory* @routine_addl___rdx__rsi_4____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f42)
  store %struct.Memory* %call_441f42, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x104(%rbp)	 RIP: 441f46	 Bytes: 7
  %loadMem_441f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f46 = call %struct.Memory* @routine_movl__r9d__MINUS0x104__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f46)
  store %struct.Memory* %call_441f46, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 441f4d	 Bytes: 8
  %loadMem_441f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f4d = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f4d)
  store %struct.Memory* %call_441f4d, %struct.Memory** %MEMORY

  ; Code: movl 0x11bf0(%rdx), %r9d	 RIP: 441f55	 Bytes: 7
  %loadMem_441f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f55 = call %struct.Memory* @routine_movl_0x11bf0__rdx____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f55)
  store %struct.Memory* %call_441f55, %struct.Memory** %MEMORY

  ; Code: movl -0x10c(%rbp), %r10d	 RIP: 441f5c	 Bytes: 7
  %loadMem_441f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f5c = call %struct.Memory* @routine_movl_MINUS0x10c__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f5c)
  store %struct.Memory* %call_441f5c, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 441f63	 Bytes: 4
  %loadMem_441f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f63 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f63)
  store %struct.Memory* %call_441f63, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 441f67	 Bytes: 4
  %loadMem_441f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f67 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f67)
  store %struct.Memory* %call_441f67, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 441f6b	 Bytes: 3
  %loadMem_441f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f6b = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f6b)
  store %struct.Memory* %call_441f6b, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 441f6e	 Bytes: 4
  %loadMem_441f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f6e = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f6e)
  store %struct.Memory* %call_441f6e, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %r10d	 RIP: 441f72	 Bytes: 4
  %loadMem_441f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f72 = call %struct.Memory* @routine_addl___rcx__rdx_4____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f72)
  store %struct.Memory* %call_441f72, %struct.Memory** %MEMORY

  ; Code: cmpl %r10d, %eax	 RIP: 441f76	 Bytes: 3
  %loadMem_441f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f76 = call %struct.Memory* @routine_cmpl__r10d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f76)
  store %struct.Memory* %call_441f76, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x118(%rbp)	 RIP: 441f79	 Bytes: 7
  %loadMem_441f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f79 = call %struct.Memory* @routine_movl__r9d__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f79)
  store %struct.Memory* %call_441f79, %struct.Memory** %MEMORY

  ; Code: jle .L_441f93	 RIP: 441f80	 Bytes: 6
  %loadMem_441f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f80 = call %struct.Memory* @routine_jle_.L_441f93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f80, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_441f80, %struct.Memory** %MEMORY

  %loadBr_441f80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441f80 = icmp eq i8 %loadBr_441f80, 1
  br i1 %cmpBr_441f80, label %block_.L_441f93, label %block_441f86

block_441f86:
  ; Code: xorl %eax, %eax	 RIP: 441f86	 Bytes: 2
  %loadMem_441f86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f86 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f86)
  store %struct.Memory* %call_441f86, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x11c(%rbp)	 RIP: 441f88	 Bytes: 6
  %loadMem_441f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f88 = call %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f88)
  store %struct.Memory* %call_441f88, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441fc1	 RIP: 441f8e	 Bytes: 5
  %loadMem_441f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f8e = call %struct.Memory* @routine_jmpq_.L_441fc1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f8e, i64 51, i64 5)
  store %struct.Memory* %call_441f8e, %struct.Memory** %MEMORY

  br label %block_.L_441fc1

  ; Code: .L_441f93:	 RIP: 441f93	 Bytes: 0
block_.L_441f93:

  ; Code: movq $0x725610, %rax	 RIP: 441f93	 Bytes: 10
  %loadMem_441f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f93 = call %struct.Memory* @routine_movq__0x725610___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f93)
  store %struct.Memory* %call_441f93, %struct.Memory** %MEMORY

  ; Code: addq $0x400, %rax	 RIP: 441f9d	 Bytes: 6
  %loadMem_441f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441f9d = call %struct.Memory* @routine_addq__0x400___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441f9d)
  store %struct.Memory* %call_441f9d, %struct.Memory** %MEMORY

  ; Code: movl -0x10c(%rbp), %ecx	 RIP: 441fa3	 Bytes: 6
  %loadMem_441fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fa3 = call %struct.Memory* @routine_movl_MINUS0x10c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fa3)
  store %struct.Memory* %call_441fa3, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 441fa9	 Bytes: 4
  %loadMem_441fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fa9 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fa9)
  store %struct.Memory* %call_441fa9, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 441fad	 Bytes: 4
  %loadMem_441fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fad = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fad)
  store %struct.Memory* %call_441fad, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 441fb1	 Bytes: 3
  %loadMem_441fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fb1 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fb1)
  store %struct.Memory* %call_441fb1, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 441fb4	 Bytes: 4
  %loadMem_441fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fb4 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fb4)
  store %struct.Memory* %call_441fb4, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 441fb8	 Bytes: 3
  %loadMem_441fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fb8 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fb8)
  store %struct.Memory* %call_441fb8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x11c(%rbp)	 RIP: 441fbb	 Bytes: 6
  %loadMem_441fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fbb = call %struct.Memory* @routine_movl__ecx__MINUS0x11c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fbb)
  store %struct.Memory* %call_441fbb, %struct.Memory** %MEMORY

  ; Code: .L_441fc1:	 RIP: 441fc1	 Bytes: 0
  br label %block_.L_441fc1
block_.L_441fc1:

  ; Code: movl -0x11c(%rbp), %eax	 RIP: 441fc1	 Bytes: 6
  %loadMem_441fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fc1 = call %struct.Memory* @routine_movl_MINUS0x11c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fc1)
  store %struct.Memory* %call_441fc1, %struct.Memory** %MEMORY

  ; Code: movl -0x118(%rbp), %ecx	 RIP: 441fc7	 Bytes: 6
  %loadMem_441fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fc7 = call %struct.Memory* @routine_movl_MINUS0x118__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fc7)
  store %struct.Memory* %call_441fc7, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 441fcd	 Bytes: 2
  %loadMem_441fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fcd = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fcd)
  store %struct.Memory* %call_441fcd, %struct.Memory** %MEMORY

  ; Code: jge .L_441fee	 RIP: 441fcf	 Bytes: 6
  %loadMem_441fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fcf = call %struct.Memory* @routine_jge_.L_441fee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fcf, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_441fcf, %struct.Memory** %MEMORY

  %loadBr_441fcf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441fcf = icmp eq i8 %loadBr_441fcf, 1
  br i1 %cmpBr_441fcf, label %block_.L_441fee, label %block_441fd5

block_441fd5:
  ; Code: movq 0x6cb900, %rax	 RIP: 441fd5	 Bytes: 8
  %loadMem_441fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fd5 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fd5)
  store %struct.Memory* %call_441fd5, %struct.Memory** %MEMORY

  ; Code: movl 0x11bf0(%rax), %ecx	 RIP: 441fdd	 Bytes: 6
  %loadMem_441fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fdd = call %struct.Memory* @routine_movl_0x11bf0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fdd)
  store %struct.Memory* %call_441fdd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x120(%rbp)	 RIP: 441fe3	 Bytes: 6
  %loadMem_441fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fe3 = call %struct.Memory* @routine_movl__ecx__MINUS0x120__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fe3)
  store %struct.Memory* %call_441fe3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442068	 RIP: 441fe9	 Bytes: 5
  %loadMem_441fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fe9 = call %struct.Memory* @routine_jmpq_.L_442068(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fe9, i64 127, i64 5)
  store %struct.Memory* %call_441fe9, %struct.Memory** %MEMORY

  br label %block_.L_442068

  ; Code: .L_441fee:	 RIP: 441fee	 Bytes: 0
block_.L_441fee:

  ; Code: xorl %eax, %eax	 RIP: 441fee	 Bytes: 2
  %loadMem_441fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441fee = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441fee)
  store %struct.Memory* %call_441fee, %struct.Memory** %MEMORY

  ; Code: movq $0x725610, %rcx	 RIP: 441ff0	 Bytes: 10
  %loadMem_441ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ff0 = call %struct.Memory* @routine_movq__0x725610___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ff0)
  store %struct.Memory* %call_441ff0, %struct.Memory** %MEMORY

  ; Code: addq $0x400, %rcx	 RIP: 441ffa	 Bytes: 7
  %loadMem_441ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_441ffa = call %struct.Memory* @routine_addq__0x400___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_441ffa)
  store %struct.Memory* %call_441ffa, %struct.Memory** %MEMORY

  ; Code: movl -0x10c(%rbp), %edx	 RIP: 442001	 Bytes: 6
  %loadMem_442001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442001 = call %struct.Memory* @routine_movl_MINUS0x10c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442001)
  store %struct.Memory* %call_442001, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 442007	 Bytes: 4
  %loadMem_442007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442007 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442007)
  store %struct.Memory* %call_442007, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 44200b	 Bytes: 4
  %loadMem_44200b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44200b = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44200b)
  store %struct.Memory* %call_44200b, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 44200f	 Bytes: 3
  %loadMem_44200f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44200f = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44200f)
  store %struct.Memory* %call_44200f, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 442012	 Bytes: 4
  %loadMem_442012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442012 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442012)
  store %struct.Memory* %call_442012, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rsi,4), %edx	 RIP: 442016	 Bytes: 3
  %loadMem_442016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442016 = call %struct.Memory* @routine_addl___rcx__rsi_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442016)
  store %struct.Memory* %call_442016, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 442019	 Bytes: 2
  %loadMem_442019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442019 = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442019)
  store %struct.Memory* %call_442019, %struct.Memory** %MEMORY

  ; Code: jle .L_44202e	 RIP: 44201b	 Bytes: 6
  %loadMem_44201b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44201b = call %struct.Memory* @routine_jle_.L_44202e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44201b, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_44201b, %struct.Memory** %MEMORY

  %loadBr_44201b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44201b = icmp eq i8 %loadBr_44201b, 1
  br i1 %cmpBr_44201b, label %block_.L_44202e, label %block_442021

block_442021:
  ; Code: xorl %eax, %eax	 RIP: 442021	 Bytes: 2
  %loadMem_442021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442021 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442021)
  store %struct.Memory* %call_442021, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x124(%rbp)	 RIP: 442023	 Bytes: 6
  %loadMem_442023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442023 = call %struct.Memory* @routine_movl__eax__MINUS0x124__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442023)
  store %struct.Memory* %call_442023, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44205c	 RIP: 442029	 Bytes: 5
  %loadMem_442029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442029 = call %struct.Memory* @routine_jmpq_.L_44205c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442029, i64 51, i64 5)
  store %struct.Memory* %call_442029, %struct.Memory** %MEMORY

  br label %block_.L_44205c

  ; Code: .L_44202e:	 RIP: 44202e	 Bytes: 0
block_.L_44202e:

  ; Code: movq $0x725610, %rax	 RIP: 44202e	 Bytes: 10
  %loadMem_44202e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44202e = call %struct.Memory* @routine_movq__0x725610___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44202e)
  store %struct.Memory* %call_44202e, %struct.Memory** %MEMORY

  ; Code: addq $0x400, %rax	 RIP: 442038	 Bytes: 6
  %loadMem_442038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442038 = call %struct.Memory* @routine_addq__0x400___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442038)
  store %struct.Memory* %call_442038, %struct.Memory** %MEMORY

  ; Code: movl -0x10c(%rbp), %ecx	 RIP: 44203e	 Bytes: 6
  %loadMem_44203e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44203e = call %struct.Memory* @routine_movl_MINUS0x10c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44203e)
  store %struct.Memory* %call_44203e, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 442044	 Bytes: 4
  %loadMem_442044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442044 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442044)
  store %struct.Memory* %call_442044, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 442048	 Bytes: 4
  %loadMem_442048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442048 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442048)
  store %struct.Memory* %call_442048, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 44204c	 Bytes: 3
  %loadMem_44204c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44204c = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44204c)
  store %struct.Memory* %call_44204c, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 44204f	 Bytes: 4
  %loadMem_44204f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44204f = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44204f)
  store %struct.Memory* %call_44204f, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 442053	 Bytes: 3
  %loadMem_442053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442053 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442053)
  store %struct.Memory* %call_442053, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x124(%rbp)	 RIP: 442056	 Bytes: 6
  %loadMem_442056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442056 = call %struct.Memory* @routine_movl__ecx__MINUS0x124__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442056)
  store %struct.Memory* %call_442056, %struct.Memory** %MEMORY

  ; Code: .L_44205c:	 RIP: 44205c	 Bytes: 0
  br label %block_.L_44205c
block_.L_44205c:

  ; Code: movl -0x124(%rbp), %eax	 RIP: 44205c	 Bytes: 6
  %loadMem_44205c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44205c = call %struct.Memory* @routine_movl_MINUS0x124__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44205c)
  store %struct.Memory* %call_44205c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x120(%rbp)	 RIP: 442062	 Bytes: 6
  %loadMem_442062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442062 = call %struct.Memory* @routine_movl__eax__MINUS0x120__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442062)
  store %struct.Memory* %call_442062, %struct.Memory** %MEMORY

  ; Code: .L_442068:	 RIP: 442068	 Bytes: 0
  br label %block_.L_442068
block_.L_442068:

  ; Code: movl -0x120(%rbp), %eax	 RIP: 442068	 Bytes: 6
  %loadMem_442068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442068 = call %struct.Memory* @routine_movl_MINUS0x120__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442068)
  store %struct.Memory* %call_442068, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 44206e	 Bytes: 2
  %loadMem_44206e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44206e = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44206e)
  store %struct.Memory* %call_44206e, %struct.Memory** %MEMORY

  ; Code: movq $0x725610, %rdx	 RIP: 442070	 Bytes: 10
  %loadMem_442070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442070 = call %struct.Memory* @routine_movq__0x725610___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442070)
  store %struct.Memory* %call_442070, %struct.Memory** %MEMORY

  ; Code: movw %ax, %si	 RIP: 44207a	 Bytes: 3
  %loadMem_44207a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44207a = call %struct.Memory* @routine_movw__ax___si(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44207a)
  store %struct.Memory* %call_44207a, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rdi	 RIP: 44207d	 Bytes: 8
  %loadMem_44207d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44207d = call %struct.Memory* @routine_movq_0x70fcf0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44207d)
  store %struct.Memory* %call_44207d, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rdi), %rdi	 RIP: 442085	 Bytes: 7
  %loadMem_442085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442085 = call %struct.Memory* @routine_movq_0x1940__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442085)
  store %struct.Memory* %call_442085, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 44208c	 Bytes: 3
  %loadMem_44208c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44208c = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44208c)
  store %struct.Memory* %call_44208c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r8	 RIP: 44208f	 Bytes: 8
  %loadMem_44208f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44208f = call %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44208f)
  store %struct.Memory* %call_44208f, %struct.Memory** %MEMORY

  ; Code: movl 0x9c(%r8), %eax	 RIP: 442097	 Bytes: 7
  %loadMem_442097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442097 = call %struct.Memory* @routine_movl_0x9c__r8____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442097)
  store %struct.Memory* %call_442097, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 44209e	 Bytes: 3
  %loadMem_44209e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44209e = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44209e)
  store %struct.Memory* %call_44209e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 4420a1	 Bytes: 3
  %loadMem_4420a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420a1 = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420a1)
  store %struct.Memory* %call_4420a1, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%r8,8), %rdi	 RIP: 4420a4	 Bytes: 4
  %loadMem_4420a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420a4 = call %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420a4)
  store %struct.Memory* %call_4420a4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r8	 RIP: 4420a8	 Bytes: 8
  %loadMem_4420a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420a8 = call %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420a8)
  store %struct.Memory* %call_4420a8, %struct.Memory** %MEMORY

  ; Code: movl 0x98(%r8), %eax	 RIP: 4420b0	 Bytes: 7
  %loadMem_4420b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420b0 = call %struct.Memory* @routine_movl_0x98__r8____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420b0)
  store %struct.Memory* %call_4420b0, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %eax	 RIP: 4420b7	 Bytes: 3
  %loadMem_4420b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420b7 = call %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420b7)
  store %struct.Memory* %call_4420b7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 4420ba	 Bytes: 3
  %loadMem_4420ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420ba = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420ba)
  store %struct.Memory* %call_4420ba, %struct.Memory** %MEMORY

  ; Code: movw %si, (%rdi,%r8,2)	 RIP: 4420bd	 Bytes: 5
  %loadMem_4420bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420bd = call %struct.Memory* @routine_movw__si____rdi__r8_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420bd)
  store %struct.Memory* %call_4420bd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 4420c2	 Bytes: 8
  %loadMem_4420c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420c2 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420c2)
  store %struct.Memory* %call_4420c2, %struct.Memory** %MEMORY

  ; Code: movl 0x11bec(%rdi), %eax	 RIP: 4420ca	 Bytes: 6
  %loadMem_4420ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420ca = call %struct.Memory* @routine_movl_0x11bec__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420ca)
  store %struct.Memory* %call_4420ca, %struct.Memory** %MEMORY

  ; Code: movl -0x108(%rbp), %r9d	 RIP: 4420d0	 Bytes: 7
  %loadMem_4420d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420d0 = call %struct.Memory* @routine_movl_MINUS0x108__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420d0)
  store %struct.Memory* %call_4420d0, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdi	 RIP: 4420d7	 Bytes: 4
  %loadMem_4420d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420d7 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420d7)
  store %struct.Memory* %call_4420d7, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 4420db	 Bytes: 4
  %loadMem_4420db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420db = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420db)
  store %struct.Memory* %call_4420db, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rdx	 RIP: 4420df	 Bytes: 3
  %loadMem_4420df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420df = call %struct.Memory* @routine_addq__rdi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420df)
  store %struct.Memory* %call_4420df, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdi	 RIP: 4420e2	 Bytes: 4
  %loadMem_4420e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420e2 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420e2)
  store %struct.Memory* %call_4420e2, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rdi,4), %r9d	 RIP: 4420e6	 Bytes: 4
  %loadMem_4420e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420e6 = call %struct.Memory* @routine_addl___rdx__rdi_4____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420e6)
  store %struct.Memory* %call_4420e6, %struct.Memory** %MEMORY

  ; Code: cmpl %r9d, %ecx	 RIP: 4420ea	 Bytes: 3
  %loadMem_4420ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420ea = call %struct.Memory* @routine_cmpl__r9d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420ea)
  store %struct.Memory* %call_4420ea, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x128(%rbp)	 RIP: 4420ed	 Bytes: 6
  %loadMem_4420ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420ed = call %struct.Memory* @routine_movl__eax__MINUS0x128__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420ed)
  store %struct.Memory* %call_4420ed, %struct.Memory** %MEMORY

  ; Code: jle .L_442106	 RIP: 4420f3	 Bytes: 6
  %loadMem_4420f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420f3 = call %struct.Memory* @routine_jle_.L_442106(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420f3, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4420f3, %struct.Memory** %MEMORY

  %loadBr_4420f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4420f3 = icmp eq i8 %loadBr_4420f3, 1
  br i1 %cmpBr_4420f3, label %block_.L_442106, label %block_4420f9

block_4420f9:
  ; Code: xorl %eax, %eax	 RIP: 4420f9	 Bytes: 2
  %loadMem_4420f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420f9 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420f9)
  store %struct.Memory* %call_4420f9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x12c(%rbp)	 RIP: 4420fb	 Bytes: 6
  %loadMem_4420fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4420fb = call %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4420fb)
  store %struct.Memory* %call_4420fb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44212e	 RIP: 442101	 Bytes: 5
  %loadMem_442101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442101 = call %struct.Memory* @routine_jmpq_.L_44212e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442101, i64 45, i64 5)
  store %struct.Memory* %call_442101, %struct.Memory** %MEMORY

  br label %block_.L_44212e

  ; Code: .L_442106:	 RIP: 442106	 Bytes: 0
block_.L_442106:

  ; Code: movq $0x725610, %rax	 RIP: 442106	 Bytes: 10
  %loadMem_442106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442106 = call %struct.Memory* @routine_movq__0x725610___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442106)
  store %struct.Memory* %call_442106, %struct.Memory** %MEMORY

  ; Code: movl -0x108(%rbp), %ecx	 RIP: 442110	 Bytes: 6
  %loadMem_442110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442110 = call %struct.Memory* @routine_movl_MINUS0x108__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442110)
  store %struct.Memory* %call_442110, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 442116	 Bytes: 4
  %loadMem_442116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442116 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442116)
  store %struct.Memory* %call_442116, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 44211a	 Bytes: 4
  %loadMem_44211a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44211a = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44211a)
  store %struct.Memory* %call_44211a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 44211e	 Bytes: 3
  %loadMem_44211e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44211e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44211e)
  store %struct.Memory* %call_44211e, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 442121	 Bytes: 4
  %loadMem_442121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442121 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442121)
  store %struct.Memory* %call_442121, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 442125	 Bytes: 3
  %loadMem_442125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442125 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442125)
  store %struct.Memory* %call_442125, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x12c(%rbp)	 RIP: 442128	 Bytes: 6
  %loadMem_442128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442128 = call %struct.Memory* @routine_movl__ecx__MINUS0x12c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442128)
  store %struct.Memory* %call_442128, %struct.Memory** %MEMORY

  ; Code: .L_44212e:	 RIP: 44212e	 Bytes: 0
  br label %block_.L_44212e
block_.L_44212e:

  ; Code: movl -0x12c(%rbp), %eax	 RIP: 44212e	 Bytes: 6
  %loadMem_44212e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44212e = call %struct.Memory* @routine_movl_MINUS0x12c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44212e)
  store %struct.Memory* %call_44212e, %struct.Memory** %MEMORY

  ; Code: movl -0x128(%rbp), %ecx	 RIP: 442134	 Bytes: 6
  %loadMem_442134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442134 = call %struct.Memory* @routine_movl_MINUS0x128__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442134)
  store %struct.Memory* %call_442134, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 44213a	 Bytes: 2
  %loadMem_44213a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44213a = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44213a)
  store %struct.Memory* %call_44213a, %struct.Memory** %MEMORY

  ; Code: jge .L_44215b	 RIP: 44213c	 Bytes: 6
  %loadMem_44213c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44213c = call %struct.Memory* @routine_jge_.L_44215b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44213c, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_44213c, %struct.Memory** %MEMORY

  %loadBr_44213c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44213c = icmp eq i8 %loadBr_44213c, 1
  br i1 %cmpBr_44213c, label %block_.L_44215b, label %block_442142

block_442142:
  ; Code: movq 0x6cb900, %rax	 RIP: 442142	 Bytes: 8
  %loadMem_442142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442142 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442142)
  store %struct.Memory* %call_442142, %struct.Memory** %MEMORY

  ; Code: movl 0x11bec(%rax), %ecx	 RIP: 44214a	 Bytes: 6
  %loadMem_44214a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44214a = call %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44214a)
  store %struct.Memory* %call_44214a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x130(%rbp)	 RIP: 442150	 Bytes: 6
  %loadMem_442150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442150 = call %struct.Memory* @routine_movl__ecx__MINUS0x130__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442150)
  store %struct.Memory* %call_442150, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4421c8	 RIP: 442156	 Bytes: 5
  %loadMem_442156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442156 = call %struct.Memory* @routine_jmpq_.L_4421c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442156, i64 114, i64 5)
  store %struct.Memory* %call_442156, %struct.Memory** %MEMORY

  br label %block_.L_4421c8

  ; Code: .L_44215b:	 RIP: 44215b	 Bytes: 0
block_.L_44215b:

  ; Code: xorl %eax, %eax	 RIP: 44215b	 Bytes: 2
  %loadMem_44215b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44215b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44215b)
  store %struct.Memory* %call_44215b, %struct.Memory** %MEMORY

  ; Code: movq $0x725610, %rcx	 RIP: 44215d	 Bytes: 10
  %loadMem_44215d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44215d = call %struct.Memory* @routine_movq__0x725610___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44215d)
  store %struct.Memory* %call_44215d, %struct.Memory** %MEMORY

  ; Code: movl -0x108(%rbp), %edx	 RIP: 442167	 Bytes: 6
  %loadMem_442167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442167 = call %struct.Memory* @routine_movl_MINUS0x108__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442167)
  store %struct.Memory* %call_442167, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 44216d	 Bytes: 4
  %loadMem_44216d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44216d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44216d)
  store %struct.Memory* %call_44216d, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 442171	 Bytes: 4
  %loadMem_442171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442171 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442171)
  store %struct.Memory* %call_442171, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 442175	 Bytes: 3
  %loadMem_442175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442175 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442175)
  store %struct.Memory* %call_442175, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 442178	 Bytes: 4
  %loadMem_442178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442178 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442178)
  store %struct.Memory* %call_442178, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rsi,4), %edx	 RIP: 44217c	 Bytes: 3
  %loadMem_44217c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44217c = call %struct.Memory* @routine_addl___rcx__rsi_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44217c)
  store %struct.Memory* %call_44217c, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 44217f	 Bytes: 2
  %loadMem_44217f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44217f = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44217f)
  store %struct.Memory* %call_44217f, %struct.Memory** %MEMORY

  ; Code: jle .L_442194	 RIP: 442181	 Bytes: 6
  %loadMem_442181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442181 = call %struct.Memory* @routine_jle_.L_442194(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442181, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_442181, %struct.Memory** %MEMORY

  %loadBr_442181 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442181 = icmp eq i8 %loadBr_442181, 1
  br i1 %cmpBr_442181, label %block_.L_442194, label %block_442187

block_442187:
  ; Code: xorl %eax, %eax	 RIP: 442187	 Bytes: 2
  %loadMem_442187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442187 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442187)
  store %struct.Memory* %call_442187, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x134(%rbp)	 RIP: 442189	 Bytes: 6
  %loadMem_442189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442189 = call %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442189)
  store %struct.Memory* %call_442189, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4421bc	 RIP: 44218f	 Bytes: 5
  %loadMem_44218f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44218f = call %struct.Memory* @routine_jmpq_.L_4421bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44218f, i64 45, i64 5)
  store %struct.Memory* %call_44218f, %struct.Memory** %MEMORY

  br label %block_.L_4421bc

  ; Code: .L_442194:	 RIP: 442194	 Bytes: 0
block_.L_442194:

  ; Code: movq $0x725610, %rax	 RIP: 442194	 Bytes: 10
  %loadMem_442194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442194 = call %struct.Memory* @routine_movq__0x725610___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442194)
  store %struct.Memory* %call_442194, %struct.Memory** %MEMORY

  ; Code: movl -0x108(%rbp), %ecx	 RIP: 44219e	 Bytes: 6
  %loadMem_44219e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44219e = call %struct.Memory* @routine_movl_MINUS0x108__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44219e)
  store %struct.Memory* %call_44219e, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4421a4	 Bytes: 4
  %loadMem_4421a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421a4 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421a4)
  store %struct.Memory* %call_4421a4, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4421a8	 Bytes: 4
  %loadMem_4421a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421a8 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421a8)
  store %struct.Memory* %call_4421a8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4421ac	 Bytes: 3
  %loadMem_4421ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421ac = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421ac)
  store %struct.Memory* %call_4421ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4421af	 Bytes: 4
  %loadMem_4421af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421af = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421af)
  store %struct.Memory* %call_4421af, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 4421b3	 Bytes: 3
  %loadMem_4421b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421b3 = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421b3)
  store %struct.Memory* %call_4421b3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x134(%rbp)	 RIP: 4421b6	 Bytes: 6
  %loadMem_4421b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421b6 = call %struct.Memory* @routine_movl__ecx__MINUS0x134__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421b6)
  store %struct.Memory* %call_4421b6, %struct.Memory** %MEMORY

  ; Code: .L_4421bc:	 RIP: 4421bc	 Bytes: 0
  br label %block_.L_4421bc
block_.L_4421bc:

  ; Code: movl -0x134(%rbp), %eax	 RIP: 4421bc	 Bytes: 6
  %loadMem_4421bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421bc = call %struct.Memory* @routine_movl_MINUS0x134__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421bc)
  store %struct.Memory* %call_4421bc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x130(%rbp)	 RIP: 4421c2	 Bytes: 6
  %loadMem_4421c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421c2 = call %struct.Memory* @routine_movl__eax__MINUS0x130__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421c2)
  store %struct.Memory* %call_4421c2, %struct.Memory** %MEMORY

  ; Code: .L_4421c8:	 RIP: 4421c8	 Bytes: 0
  br label %block_.L_4421c8
block_.L_4421c8:

  ; Code: movl -0x130(%rbp), %eax	 RIP: 4421c8	 Bytes: 6
  %loadMem_4421c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421c8 = call %struct.Memory* @routine_movl_MINUS0x130__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421c8)
  store %struct.Memory* %call_4421c8, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 4421ce	 Bytes: 2
  %loadMem_4421ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421ce = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421ce)
  store %struct.Memory* %call_4421ce, %struct.Memory** %MEMORY

  ; Code: movq $0x725610, %rdx	 RIP: 4421d0	 Bytes: 10
  %loadMem_4421d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421d0 = call %struct.Memory* @routine_movq__0x725610___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421d0)
  store %struct.Memory* %call_4421d0, %struct.Memory** %MEMORY

  ; Code: addq $0x800, %rdx	 RIP: 4421da	 Bytes: 7
  %loadMem_4421da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421da = call %struct.Memory* @routine_addq__0x800___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421da)
  store %struct.Memory* %call_4421da, %struct.Memory** %MEMORY

  ; Code: movw %ax, %si	 RIP: 4421e1	 Bytes: 3
  %loadMem_4421e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421e1 = call %struct.Memory* @routine_movw__ax___si(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421e1)
  store %struct.Memory* %call_4421e1, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rdi	 RIP: 4421e4	 Bytes: 8
  %loadMem_4421e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421e4 = call %struct.Memory* @routine_movq_0x70fcf0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421e4)
  store %struct.Memory* %call_4421e4, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rdi), %rdi	 RIP: 4421ec	 Bytes: 7
  %loadMem_4421ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421ec = call %struct.Memory* @routine_movq_0x1918__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421ec)
  store %struct.Memory* %call_4421ec, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r8	 RIP: 4421f3	 Bytes: 8
  %loadMem_4421f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421f3 = call %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421f3)
  store %struct.Memory* %call_4421f3, %struct.Memory** %MEMORY

  ; Code: movl 0x9c(%r8), %eax	 RIP: 4421fb	 Bytes: 7
  %loadMem_4421fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4421fb = call %struct.Memory* @routine_movl_0x9c__r8____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4421fb)
  store %struct.Memory* %call_4421fb, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 442202	 Bytes: 3
  %loadMem_442202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442202 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442202)
  store %struct.Memory* %call_442202, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 442205	 Bytes: 3
  %loadMem_442205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442205 = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442205)
  store %struct.Memory* %call_442205, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%r8,8), %rdi	 RIP: 442208	 Bytes: 4
  %loadMem_442208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442208 = call %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442208)
  store %struct.Memory* %call_442208, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r8	 RIP: 44220c	 Bytes: 8
  %loadMem_44220c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44220c = call %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44220c)
  store %struct.Memory* %call_44220c, %struct.Memory** %MEMORY

  ; Code: movl 0x98(%r8), %eax	 RIP: 442214	 Bytes: 7
  %loadMem_442214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442214 = call %struct.Memory* @routine_movl_0x98__r8____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442214)
  store %struct.Memory* %call_442214, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %eax	 RIP: 44221b	 Bytes: 3
  %loadMem_44221b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44221b = call %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44221b)
  store %struct.Memory* %call_44221b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 44221e	 Bytes: 3
  %loadMem_44221e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44221e = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44221e)
  store %struct.Memory* %call_44221e, %struct.Memory** %MEMORY

  ; Code: movw %si, (%rdi,%r8,2)	 RIP: 442221	 Bytes: 5
  %loadMem_442221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442221 = call %struct.Memory* @routine_movw__si____rdi__r8_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442221)
  store %struct.Memory* %call_442221, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 442226	 Bytes: 8
  %loadMem_442226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442226 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442226)
  store %struct.Memory* %call_442226, %struct.Memory** %MEMORY

  ; Code: movl 0x11bf0(%rdi), %eax	 RIP: 44222e	 Bytes: 6
  %loadMem_44222e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44222e = call %struct.Memory* @routine_movl_0x11bf0__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44222e)
  store %struct.Memory* %call_44222e, %struct.Memory** %MEMORY

  ; Code: movl -0x104(%rbp), %r9d	 RIP: 442234	 Bytes: 7
  %loadMem_442234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442234 = call %struct.Memory* @routine_movl_MINUS0x104__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442234)
  store %struct.Memory* %call_442234, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdi	 RIP: 44223b	 Bytes: 4
  %loadMem_44223b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44223b = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44223b)
  store %struct.Memory* %call_44223b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 44223f	 Bytes: 4
  %loadMem_44223f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44223f = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44223f)
  store %struct.Memory* %call_44223f, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rdx	 RIP: 442243	 Bytes: 3
  %loadMem_442243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442243 = call %struct.Memory* @routine_addq__rdi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442243)
  store %struct.Memory* %call_442243, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdi	 RIP: 442246	 Bytes: 4
  %loadMem_442246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442246 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442246)
  store %struct.Memory* %call_442246, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rdi,4), %r9d	 RIP: 44224a	 Bytes: 4
  %loadMem_44224a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44224a = call %struct.Memory* @routine_addl___rdx__rdi_4____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44224a)
  store %struct.Memory* %call_44224a, %struct.Memory** %MEMORY

  ; Code: cmpl %r9d, %ecx	 RIP: 44224e	 Bytes: 3
  %loadMem_44224e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44224e = call %struct.Memory* @routine_cmpl__r9d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44224e)
  store %struct.Memory* %call_44224e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x138(%rbp)	 RIP: 442251	 Bytes: 6
  %loadMem_442251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442251 = call %struct.Memory* @routine_movl__eax__MINUS0x138__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442251)
  store %struct.Memory* %call_442251, %struct.Memory** %MEMORY

  ; Code: jle .L_44226a	 RIP: 442257	 Bytes: 6
  %loadMem_442257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442257 = call %struct.Memory* @routine_jle_.L_44226a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442257, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_442257, %struct.Memory** %MEMORY

  %loadBr_442257 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_442257 = icmp eq i8 %loadBr_442257, 1
  br i1 %cmpBr_442257, label %block_.L_44226a, label %block_44225d

block_44225d:
  ; Code: xorl %eax, %eax	 RIP: 44225d	 Bytes: 2
  %loadMem_44225d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44225d = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44225d)
  store %struct.Memory* %call_44225d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x13c(%rbp)	 RIP: 44225f	 Bytes: 6
  %loadMem_44225f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44225f = call %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44225f)
  store %struct.Memory* %call_44225f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442298	 RIP: 442265	 Bytes: 5
  %loadMem_442265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442265 = call %struct.Memory* @routine_jmpq_.L_442298(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442265, i64 51, i64 5)
  store %struct.Memory* %call_442265, %struct.Memory** %MEMORY

  br label %block_.L_442298

  ; Code: .L_44226a:	 RIP: 44226a	 Bytes: 0
block_.L_44226a:

  ; Code: movq $0x725610, %rax	 RIP: 44226a	 Bytes: 10
  %loadMem_44226a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44226a = call %struct.Memory* @routine_movq__0x725610___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44226a)
  store %struct.Memory* %call_44226a, %struct.Memory** %MEMORY

  ; Code: addq $0x800, %rax	 RIP: 442274	 Bytes: 6
  %loadMem_442274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442274 = call %struct.Memory* @routine_addq__0x800___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442274)
  store %struct.Memory* %call_442274, %struct.Memory** %MEMORY

  ; Code: movl -0x104(%rbp), %ecx	 RIP: 44227a	 Bytes: 6
  %loadMem_44227a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44227a = call %struct.Memory* @routine_movl_MINUS0x104__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44227a)
  store %struct.Memory* %call_44227a, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 442280	 Bytes: 4
  %loadMem_442280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442280 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442280)
  store %struct.Memory* %call_442280, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 442284	 Bytes: 4
  %loadMem_442284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442284 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442284)
  store %struct.Memory* %call_442284, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 442288	 Bytes: 3
  %loadMem_442288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442288 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442288)
  store %struct.Memory* %call_442288, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 44228b	 Bytes: 4
  %loadMem_44228b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44228b = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44228b)
  store %struct.Memory* %call_44228b, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 44228f	 Bytes: 3
  %loadMem_44228f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44228f = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44228f)
  store %struct.Memory* %call_44228f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x13c(%rbp)	 RIP: 442292	 Bytes: 6
  %loadMem_442292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442292 = call %struct.Memory* @routine_movl__ecx__MINUS0x13c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442292)
  store %struct.Memory* %call_442292, %struct.Memory** %MEMORY

  ; Code: .L_442298:	 RIP: 442298	 Bytes: 0
  br label %block_.L_442298
block_.L_442298:

  ; Code: movl -0x13c(%rbp), %eax	 RIP: 442298	 Bytes: 6
  %loadMem_442298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442298 = call %struct.Memory* @routine_movl_MINUS0x13c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442298)
  store %struct.Memory* %call_442298, %struct.Memory** %MEMORY

  ; Code: movl -0x138(%rbp), %ecx	 RIP: 44229e	 Bytes: 6
  %loadMem_44229e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44229e = call %struct.Memory* @routine_movl_MINUS0x138__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44229e)
  store %struct.Memory* %call_44229e, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 4422a4	 Bytes: 2
  %loadMem_4422a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422a4 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422a4)
  store %struct.Memory* %call_4422a4, %struct.Memory** %MEMORY

  ; Code: jge .L_4422c5	 RIP: 4422a6	 Bytes: 6
  %loadMem_4422a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422a6 = call %struct.Memory* @routine_jge_.L_4422c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422a6, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_4422a6, %struct.Memory** %MEMORY

  %loadBr_4422a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4422a6 = icmp eq i8 %loadBr_4422a6, 1
  br i1 %cmpBr_4422a6, label %block_.L_4422c5, label %block_4422ac

block_4422ac:
  ; Code: movq 0x6cb900, %rax	 RIP: 4422ac	 Bytes: 8
  %loadMem_4422ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422ac = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422ac)
  store %struct.Memory* %call_4422ac, %struct.Memory** %MEMORY

  ; Code: movl 0x11bf0(%rax), %ecx	 RIP: 4422b4	 Bytes: 6
  %loadMem_4422b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422b4 = call %struct.Memory* @routine_movl_0x11bf0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422b4)
  store %struct.Memory* %call_4422b4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x140(%rbp)	 RIP: 4422ba	 Bytes: 6
  %loadMem_4422ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422ba = call %struct.Memory* @routine_movl__ecx__MINUS0x140__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422ba)
  store %struct.Memory* %call_4422ba, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44233f	 RIP: 4422c0	 Bytes: 5
  %loadMem_4422c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422c0 = call %struct.Memory* @routine_jmpq_.L_44233f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422c0, i64 127, i64 5)
  store %struct.Memory* %call_4422c0, %struct.Memory** %MEMORY

  br label %block_.L_44233f

  ; Code: .L_4422c5:	 RIP: 4422c5	 Bytes: 0
block_.L_4422c5:

  ; Code: xorl %eax, %eax	 RIP: 4422c5	 Bytes: 2
  %loadMem_4422c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422c5 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422c5)
  store %struct.Memory* %call_4422c5, %struct.Memory** %MEMORY

  ; Code: movq $0x725610, %rcx	 RIP: 4422c7	 Bytes: 10
  %loadMem_4422c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422c7 = call %struct.Memory* @routine_movq__0x725610___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422c7)
  store %struct.Memory* %call_4422c7, %struct.Memory** %MEMORY

  ; Code: addq $0x800, %rcx	 RIP: 4422d1	 Bytes: 7
  %loadMem_4422d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422d1 = call %struct.Memory* @routine_addq__0x800___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422d1)
  store %struct.Memory* %call_4422d1, %struct.Memory** %MEMORY

  ; Code: movl -0x104(%rbp), %edx	 RIP: 4422d8	 Bytes: 6
  %loadMem_4422d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422d8 = call %struct.Memory* @routine_movl_MINUS0x104__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422d8)
  store %struct.Memory* %call_4422d8, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 4422de	 Bytes: 4
  %loadMem_4422de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422de = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422de)
  store %struct.Memory* %call_4422de, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 4422e2	 Bytes: 4
  %loadMem_4422e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422e2 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422e2)
  store %struct.Memory* %call_4422e2, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4422e6	 Bytes: 3
  %loadMem_4422e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422e6 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422e6)
  store %struct.Memory* %call_4422e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 4422e9	 Bytes: 4
  %loadMem_4422e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422e9 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422e9)
  store %struct.Memory* %call_4422e9, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rsi,4), %edx	 RIP: 4422ed	 Bytes: 3
  %loadMem_4422ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422ed = call %struct.Memory* @routine_addl___rcx__rsi_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422ed)
  store %struct.Memory* %call_4422ed, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4422f0	 Bytes: 2
  %loadMem_4422f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422f0 = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422f0)
  store %struct.Memory* %call_4422f0, %struct.Memory** %MEMORY

  ; Code: jle .L_442305	 RIP: 4422f2	 Bytes: 6
  %loadMem_4422f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422f2 = call %struct.Memory* @routine_jle_.L_442305(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422f2, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4422f2, %struct.Memory** %MEMORY

  %loadBr_4422f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4422f2 = icmp eq i8 %loadBr_4422f2, 1
  br i1 %cmpBr_4422f2, label %block_.L_442305, label %block_4422f8

block_4422f8:
  ; Code: xorl %eax, %eax	 RIP: 4422f8	 Bytes: 2
  %loadMem_4422f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422f8 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422f8)
  store %struct.Memory* %call_4422f8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x144(%rbp)	 RIP: 4422fa	 Bytes: 6
  %loadMem_4422fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4422fa = call %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4422fa)
  store %struct.Memory* %call_4422fa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_442333	 RIP: 442300	 Bytes: 5
  %loadMem_442300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442300 = call %struct.Memory* @routine_jmpq_.L_442333(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442300, i64 51, i64 5)
  store %struct.Memory* %call_442300, %struct.Memory** %MEMORY

  br label %block_.L_442333

  ; Code: .L_442305:	 RIP: 442305	 Bytes: 0
block_.L_442305:

  ; Code: movq $0x725610, %rax	 RIP: 442305	 Bytes: 10
  %loadMem_442305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442305 = call %struct.Memory* @routine_movq__0x725610___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442305)
  store %struct.Memory* %call_442305, %struct.Memory** %MEMORY

  ; Code: addq $0x800, %rax	 RIP: 44230f	 Bytes: 6
  %loadMem_44230f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44230f = call %struct.Memory* @routine_addq__0x800___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44230f)
  store %struct.Memory* %call_44230f, %struct.Memory** %MEMORY

  ; Code: movl -0x104(%rbp), %ecx	 RIP: 442315	 Bytes: 6
  %loadMem_442315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442315 = call %struct.Memory* @routine_movl_MINUS0x104__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442315)
  store %struct.Memory* %call_442315, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 44231b	 Bytes: 4
  %loadMem_44231b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44231b = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44231b)
  store %struct.Memory* %call_44231b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 44231f	 Bytes: 4
  %loadMem_44231f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44231f = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44231f)
  store %struct.Memory* %call_44231f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 442323	 Bytes: 3
  %loadMem_442323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442323 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442323)
  store %struct.Memory* %call_442323, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 442326	 Bytes: 4
  %loadMem_442326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442326 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442326)
  store %struct.Memory* %call_442326, %struct.Memory** %MEMORY

  ; Code: addl (%rax,%rdx,4), %ecx	 RIP: 44232a	 Bytes: 3
  %loadMem_44232a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44232a = call %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44232a)
  store %struct.Memory* %call_44232a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x144(%rbp)	 RIP: 44232d	 Bytes: 6
  %loadMem_44232d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44232d = call %struct.Memory* @routine_movl__ecx__MINUS0x144__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44232d)
  store %struct.Memory* %call_44232d, %struct.Memory** %MEMORY

  ; Code: .L_442333:	 RIP: 442333	 Bytes: 0
  br label %block_.L_442333
block_.L_442333:

  ; Code: movl -0x144(%rbp), %eax	 RIP: 442333	 Bytes: 6
  %loadMem_442333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442333 = call %struct.Memory* @routine_movl_MINUS0x144__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442333)
  store %struct.Memory* %call_442333, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x140(%rbp)	 RIP: 442339	 Bytes: 6
  %loadMem_442339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442339 = call %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442339)
  store %struct.Memory* %call_442339, %struct.Memory** %MEMORY

  ; Code: .L_44233f:	 RIP: 44233f	 Bytes: 0
  br label %block_.L_44233f
block_.L_44233f:

  ; Code: movl -0x140(%rbp), %eax	 RIP: 44233f	 Bytes: 6
  %loadMem_44233f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44233f = call %struct.Memory* @routine_movl_MINUS0x140__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44233f)
  store %struct.Memory* %call_44233f, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 442345	 Bytes: 3
  %loadMem_442345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442345 = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442345)
  store %struct.Memory* %call_442345, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rdx	 RIP: 442348	 Bytes: 8
  %loadMem_442348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442348 = call %struct.Memory* @routine_movq_0x70fcf0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442348)
  store %struct.Memory* %call_442348, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rdx), %rdx	 RIP: 442350	 Bytes: 7
  %loadMem_442350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442350 = call %struct.Memory* @routine_movq_0x1940__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442350)
  store %struct.Memory* %call_442350, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 442357	 Bytes: 4
  %loadMem_442357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442357 = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442357)
  store %struct.Memory* %call_442357, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 44235b	 Bytes: 8
  %loadMem_44235b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44235b = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44235b)
  store %struct.Memory* %call_44235b, %struct.Memory** %MEMORY

  ; Code: movl 0x9c(%rsi), %eax	 RIP: 442363	 Bytes: 6
  %loadMem_442363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442363 = call %struct.Memory* @routine_movl_0x9c__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442363)
  store %struct.Memory* %call_442363, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %eax	 RIP: 442369	 Bytes: 3
  %loadMem_442369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442369 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442369)
  store %struct.Memory* %call_442369, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 44236c	 Bytes: 3
  %loadMem_44236c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44236c = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44236c)
  store %struct.Memory* %call_44236c, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 44236f	 Bytes: 4
  %loadMem_44236f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44236f = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44236f)
  store %struct.Memory* %call_44236f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 442373	 Bytes: 8
  %loadMem_442373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442373 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442373)
  store %struct.Memory* %call_442373, %struct.Memory** %MEMORY

  ; Code: movl 0x98(%rsi), %eax	 RIP: 44237b	 Bytes: 6
  %loadMem_44237b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44237b = call %struct.Memory* @routine_movl_0x98__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44237b)
  store %struct.Memory* %call_44237b, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %eax	 RIP: 442381	 Bytes: 3
  %loadMem_442381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442381 = call %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442381)
  store %struct.Memory* %call_442381, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 442384	 Bytes: 3
  %loadMem_442384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442384 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442384)
  store %struct.Memory* %call_442384, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx,%rsi,2)	 RIP: 442387	 Bytes: 4
  %loadMem_442387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442387 = call %struct.Memory* @routine_movw__cx____rdx__rsi_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442387)
  store %struct.Memory* %call_442387, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 44238b	 Bytes: 3
  %loadMem_44238b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44238b = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44238b)
  store %struct.Memory* %call_44238b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44238e	 Bytes: 3
  %loadMem_44238e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44238e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44238e)
  store %struct.Memory* %call_44238e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 442391	 Bytes: 3
  %loadMem_442391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442391 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442391)
  store %struct.Memory* %call_442391, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441e6e	 RIP: 442394	 Bytes: 5
  %loadMem_442394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442394 = call %struct.Memory* @routine_jmpq_.L_441e6e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442394, i64 -1318, i64 5)
  store %struct.Memory* %call_442394, %struct.Memory** %MEMORY

  br label %block_.L_441e6e

  ; Code: .L_442399:	 RIP: 442399	 Bytes: 0
block_.L_442399:

  ; Code: jmpq .L_44239e	 RIP: 442399	 Bytes: 5
  %loadMem_442399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_442399 = call %struct.Memory* @routine_jmpq_.L_44239e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_442399, i64 5, i64 5)
  store %struct.Memory* %call_442399, %struct.Memory** %MEMORY

  br label %block_.L_44239e

  ; Code: .L_44239e:	 RIP: 44239e	 Bytes: 0
block_.L_44239e:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 44239e	 Bytes: 3
  %loadMem_44239e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44239e = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44239e)
  store %struct.Memory* %call_44239e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4423a1	 Bytes: 3
  %loadMem_4423a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423a1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423a1)
  store %struct.Memory* %call_4423a1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4423a4	 Bytes: 3
  %loadMem_4423a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423a4 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423a4)
  store %struct.Memory* %call_4423a4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_441e5d	 RIP: 4423a7	 Bytes: 5
  %loadMem_4423a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423a7 = call %struct.Memory* @routine_jmpq_.L_441e5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423a7, i64 -1354, i64 5)
  store %struct.Memory* %call_4423a7, %struct.Memory** %MEMORY

  br label %block_.L_441e5d

  ; Code: .L_4423ac:	 RIP: 4423ac	 Bytes: 0
block_.L_4423ac:

  ; Code: jmpq .L_4423b1	 RIP: 4423ac	 Bytes: 5
  %loadMem_4423ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423ac = call %struct.Memory* @routine_jmpq_.L_4423b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423ac, i64 5, i64 5)
  store %struct.Memory* %call_4423ac, %struct.Memory** %MEMORY

  br label %block_.L_4423b1

  ; Code: .L_4423b1:	 RIP: 4423b1	 Bytes: 0
block_.L_4423b1:

  ; Code: addq $0x160, %rsp	 RIP: 4423b1	 Bytes: 7
  %loadMem_4423b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423b1 = call %struct.Memory* @routine_addq__0x160___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423b1)
  store %struct.Memory* %call_4423b1, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4423b8	 Bytes: 1
  %loadMem_4423b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423b8 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423b8)
  store %struct.Memory* %call_4423b8, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4423b9	 Bytes: 1
  %loadMem_4423b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4423b9 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4423b9)
  store %struct.Memory* %call_4423b9, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4423b9
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

define %struct.Memory* @routine_subq__0x160___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 352)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x3758__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0xc__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_imulq__0x278___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 632)
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

define %struct.Memory* @routine_addq__rdx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
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

define %struct.Memory* @routine_cmpl__0x0__0x48__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl__MINUS0x111__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 273
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_jne_.L_4415c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl__0x0__0x18__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__al__MINUS0x112__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 274
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_je_.L_4415b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl__0x3__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sete__cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %CL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__cl__MINUS0x112__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 274
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
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

define %struct.Memory* @routine_movb_MINUS0x112__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 274
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movb__al__MINUS0x111__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 273
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x111__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 273
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x4b8e40___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x4b8e40_type* @G__0x4b8e40 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0xc0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 192)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x100__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #0 {
  %6 = and i64 %4, %3
  %7 = trunc i64 %6 to i8
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %6 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i8 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i8 %7, 7
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_andb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 255
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl__al___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %RDI = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %AL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x11bfc__r8____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 72700
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_subl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edi__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_callq_.memcpy_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
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

define %struct.Memory* @routine_jge_.L_441e07(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_0x11c08__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 72712
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_44170a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl_0x11c04__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 72708
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4416f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x2a__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 42
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x24__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x28__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x2c__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x2e__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 46
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x100__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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


define %struct.Memory* @routine_addq__rdi___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x14__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_sarl__0x2___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i32, i32* %R10D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 2)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__r10d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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




define %struct.Memory* @routine_movl_MINUS0x18__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl___rax__rdi_4____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R10D to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__r10d__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.SetModesAndRefframe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = sext i16 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movswl_MINUS0x2a__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 42
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x28__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  store i16 %6, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw_MINUS0x2c__rbp____r11w(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %R11W, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i32
  %6 = shl i32 %5, 16
  %7 = ashr exact i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movswl__r11w___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i16, i16* %R11W
  %14 = zext i16 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r10d____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movswl_MINUS0x2e__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 46
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r10d__0x8__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.ChromaPrediction4x4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_44164e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4416fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_441630(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x0__0x11ac8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72392
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44185c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_jge_.L_441857(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_jge_.L_441844(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72724
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4417dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x3138___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 12600)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_shlq__0x5___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 5)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DX = bitcast %union.anon* %8 to i16*
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x70fcf0_type* @G_0x70fcf0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
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




define %struct.Memory* @routine_movl_0xa4__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__esi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_0xa0__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x20__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DX = bitcast %union.anon* %8 to i16*
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %DX
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_441831(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_44180c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x6f8f20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x6f8f20_type* @G__0x6f8f20 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_44182c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x6d2ec0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x6d2ec0_type* @G__0x6d2ec0 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_jmpq_.L_441836(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_441744(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_441849(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_441726(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_441bc5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4418e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4418e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x8__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4418df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x8__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4418cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_addq__0x3338___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 13112)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_jmpq_.L_441890(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4418d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44187f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_441bc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_441a2b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_441a26(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_441a13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4419ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












































define %struct.Memory* @routine_jmpq_.L_441a00(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_4419db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jmpq_.L_4419fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_jmpq_.L_441a05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_441913(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_441a18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4418f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_441bbb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jge_.L_441bb6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_441ba3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_441b04(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6f6f90___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6f6f90_type* @G_0x6f6f90 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0xb4__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_movl_0xb0__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x20__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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














define %struct.Memory* @routine_movzwl___rax__rcx_2____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
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

define %struct.Memory* @routine_subl__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jmpq_.L_441b90(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_441b4f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x6f6fa0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x6f6fa0_type* @G__0x6f6fa0 to i64))
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
















define %struct.Memory* @routine_jmpq_.L_441b8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x6d40f0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x6d40f0_type* @G__0x6d40f0 to i64))
  ret %struct.Memory* %11
}




























define %struct.Memory* @routine_jmpq_.L_441b95(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_441a50(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_441ba8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_441a32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_je_.L_441bfa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_441bfa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl___rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_callq_.dct_chroma_sp(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_441df4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jne_.L_441def(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_441cb8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 632)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_cmpl__0x9__0x48__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 9)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_441cb8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_cmpl__0xa__0x48__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 10)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_cmpl__0xd__0x48__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 13)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_441cd1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_callq_.dct_chroma(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_441ce5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_je_.L_441dea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_441de5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_441dd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_441d82(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addq__0x3338___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 13112)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
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










define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
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


define %struct.Memory* @routine_jmpq_.L_441dbf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




























define %struct.Memory* @routine_jmpq_.L_441dc4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_441d1f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_441dd7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_441d01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_441dea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_441def(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jmpq_.L_441df9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_441618(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_shll__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
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


define %struct.Memory* @routine_addl_0x1cc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 460
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__0x1cc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 460
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_je_.L_4423b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x10__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4423ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x10__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_442399(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x725610___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x725610_type* @G__0x725610 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addq__0x400___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1024)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x6f8f20___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x6f8f20_type* @G__0x6f8f20 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x6d2ec0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x6d2ec0_type* @G__0x6d2ec0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x722ff0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x722ff0_type* @G__0x722ff0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
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


define %struct.Memory* @routine_addq__r8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rdi__r8_4____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R9D to i64*
  %16 = load i64, i64* %RDI
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rsi___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__rdi___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___r8__rdi_4____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R10D to i64*
  %16 = load i64, i64* %R8
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_sarl__0x1___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i32, i32* %R10D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_subl__r10d___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %R9D
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* %R10D
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl__r9d__MINUS0x110__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 272
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_movl___rsi__rdi_4____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R9D to i64*
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


define %struct.Memory* @routine_addl_MINUS0x110__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R9D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 272
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl__r9d__MINUS0x108__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 264
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x110__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 272
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movq__rdx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rdi__rsi_4____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R10D to i64*
  %16 = load i64, i64* %RDI
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}






define %struct.Memory* @routine_movl__r9d__MINUS0x10c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 268
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x10c__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 268
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_addl___rdx__rsi_4____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R9D to i64*
  %16 = load i32, i32* %R9D
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* %RDX
  %19 = load i64, i64* %RSI
  %20 = mul i64 %19, 4
  %21 = add i64 %20, %18
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %17, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movl__r9d__MINUS0x104__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 260
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x11bf0__rdx____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 72688
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x10c__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 268
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_addl___rcx__rdx_4____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R10D to i64*
  %16 = load i32, i32* %R10D
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* %RCX
  %19 = load i64, i64* %RDX
  %20 = mul i64 %19, 4
  %21 = add i64 %20, %18
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %17, i64 %21)
  ret %struct.Memory* %24
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

define %struct.Memory* @routine_cmpl__r10d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10D = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r9d__MINUS0x118__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 280
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
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

define %struct.Memory* @routine_jle_.L_441f93(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_441fc1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x725610___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x725610_type* @G__0x725610 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addq__0x400___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1024)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x10c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 268
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__ecx__MINUS0x11c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 284
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x11c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 284
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x118__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_441fee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x11bf0__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x120__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_442068(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addl___rcx__rsi_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_jle_.L_44202e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x124__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 292
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44205c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_movl__ecx__MINUS0x124__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 292
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x124__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 292
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x120__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x120__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__0x725610___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x725610_type* @G__0x725610 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i16
  store i16 %5, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__ax___si(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %SI = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %AX
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %SI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x70fcf0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x70fcf0_type* @G_0x70fcf0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x1940__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
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




define %struct.Memory* @routine_movl_0x9c__r8____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__eax___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x98__r8____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movw__si____rdi__r8_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %SI = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %SI
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 5
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl_0x11bec__rdi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72684
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x108__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 264
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_addl___rdx__rdi_4____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R9D to i64*
  %16 = load i32, i32* %R9D
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* %RDX
  %19 = load i64, i64* %RDI
  %20 = mul i64 %19, 4
  %21 = add i64 %20, %18
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %17, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_cmpl__r9d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x128__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 296
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_442106(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_44212e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0x108__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl__ecx__MINUS0x12c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 300
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x12c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 300
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x128__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 296
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_44215b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72684
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_4421c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_MINUS0x108__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_jle_.L_442194(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 308
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4421bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_movl__ecx__MINUS0x134__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 308
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x134__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 308
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x130__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 304
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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






define %struct.Memory* @routine_addq__0x800___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2048)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq_0x1918__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}
























define %struct.Memory* @routine_movl_0x11bf0__rdi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x104__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 260
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_movl__eax__MINUS0x138__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 312
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_44226a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 316
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_442298(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addq__0x800___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2048)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x104__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 260
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl__ecx__MINUS0x13c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 316
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x13c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 316
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x138__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 312
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_4422c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x140__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 320
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44233f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_addq__0x800___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2048)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x104__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 260
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_jle_.L_442305(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 324
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_442333(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_movl__ecx__MINUS0x144__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 324
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x144__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 324
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 320
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x140__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 320
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movw__ax___cx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %CX = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %AX
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %CX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x70fcf0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x70fcf0_type* @G_0x70fcf0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x1940__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x9c__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq__eax___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x98__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movw__cx____rdx__rsi_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %CX = bitcast %union.anon* %8 to i16*
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %CX
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}








define %struct.Memory* @routine_jmpq_.L_441e6e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44239e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_441e5d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4423b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_addq__0x160___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 352)
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

