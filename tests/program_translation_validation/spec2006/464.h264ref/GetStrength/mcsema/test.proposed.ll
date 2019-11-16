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

declare %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44a2d0.get_mb_block_pos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x70fcf0_type = type <{ [8 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x72531c_type = type <{ [1 x i8] }>
@G_0x72531c= global %G_0x72531c_type <{ [1 x i8] c"\00" }>


define %struct.Memory* @GetStrength(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .GetStrength:	 RIP: 439570	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 439570	 Bytes: 1
  %loadMem_439570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439570 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439570)
  store %struct.Memory* %call_439570, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 439571	 Bytes: 3
  %loadMem_439571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439571 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439571)
  store %struct.Memory* %call_439571, %struct.Memory** %MEMORY

  ; Code: subq $0x150, %rsp	 RIP: 439574	 Bytes: 7
  %loadMem_439574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439574 = call %struct.Memory* @routine_subq__0x150___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439574)
  store %struct.Memory* %call_439574, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 43957b	 Bytes: 4
  %loadMem_43957b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43957b = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43957b)
  store %struct.Memory* %call_43957b, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 43957f	 Bytes: 4
  %loadMem_43957f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43957f = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43957f)
  store %struct.Memory* %call_43957f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x14(%rbp)	 RIP: 439583	 Bytes: 3
  %loadMem_439583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439583 = call %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439583)
  store %struct.Memory* %call_439583, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 439586	 Bytes: 3
  %loadMem_439586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439586 = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439586)
  store %struct.Memory* %call_439586, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x1c(%rbp)	 RIP: 439589	 Bytes: 4
  %loadMem_439589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439589 = call %struct.Memory* @routine_movl__r8d__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439589)
  store %struct.Memory* %call_439589, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x20(%rbp)	 RIP: 43958d	 Bytes: 4
  %loadMem_43958d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43958d = call %struct.Memory* @routine_movl__r9d__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43958d)
  store %struct.Memory* %call_43958d, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rsi	 RIP: 439591	 Bytes: 8
  %loadMem_439591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439591 = call %struct.Memory* @routine_movq_0x70fcf0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439591)
  store %struct.Memory* %call_439591, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rsi), %rsi	 RIP: 439599	 Bytes: 7
  %loadMem_439599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439599 = call %struct.Memory* @routine_movq_0x1968__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439599)
  store %struct.Memory* %call_439599, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rsi	 RIP: 4395a0	 Bytes: 3
  %loadMem_4395a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395a0 = call %struct.Memory* @routine_movq___rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395a0)
  store %struct.Memory* %call_4395a0, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x48(%rbp)	 RIP: 4395a3	 Bytes: 4
  %loadMem_4395a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395a3 = call %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395a3)
  store %struct.Memory* %call_4395a3, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rsi	 RIP: 4395a7	 Bytes: 8
  %loadMem_4395a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395a7 = call %struct.Memory* @routine_movq_0x70fcf0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395a7)
  store %struct.Memory* %call_4395a7, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rsi), %rsi	 RIP: 4395af	 Bytes: 7
  %loadMem_4395af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395af = call %struct.Memory* @routine_movq_0x1968__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395af)
  store %struct.Memory* %call_4395af, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rsi	 RIP: 4395b6	 Bytes: 4
  %loadMem_4395b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395b6 = call %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395b6)
  store %struct.Memory* %call_4395b6, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x50(%rbp)	 RIP: 4395ba	 Bytes: 4
  %loadMem_4395ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395ba = call %struct.Memory* @routine_movq__rsi__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395ba)
  store %struct.Memory* %call_4395ba, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rsi	 RIP: 4395be	 Bytes: 8
  %loadMem_4395be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395be = call %struct.Memory* @routine_movq_0x70fcf0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395be)
  store %struct.Memory* %call_4395be, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rsi), %rsi	 RIP: 4395c6	 Bytes: 7
  %loadMem_4395c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395c6 = call %struct.Memory* @routine_movq_0x1950__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395c6)
  store %struct.Memory* %call_4395c6, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rsi	 RIP: 4395cd	 Bytes: 3
  %loadMem_4395cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395cd = call %struct.Memory* @routine_movq___rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395cd)
  store %struct.Memory* %call_4395cd, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x58(%rbp)	 RIP: 4395d0	 Bytes: 4
  %loadMem_4395d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395d0 = call %struct.Memory* @routine_movq__rsi__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395d0)
  store %struct.Memory* %call_4395d0, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rsi	 RIP: 4395d4	 Bytes: 8
  %loadMem_4395d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395d4 = call %struct.Memory* @routine_movq_0x70fcf0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395d4)
  store %struct.Memory* %call_4395d4, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rsi), %rsi	 RIP: 4395dc	 Bytes: 7
  %loadMem_4395dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395dc = call %struct.Memory* @routine_movq_0x1950__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395dc)
  store %struct.Memory* %call_4395dc, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rsi	 RIP: 4395e3	 Bytes: 4
  %loadMem_4395e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395e3 = call %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395e3)
  store %struct.Memory* %call_4395e3, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x60(%rbp)	 RIP: 4395e7	 Bytes: 4
  %loadMem_4395e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395e7 = call %struct.Memory* @routine_movq__rsi__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395e7)
  store %struct.Memory* %call_4395e7, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rsi	 RIP: 4395eb	 Bytes: 8
  %loadMem_4395eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395eb = call %struct.Memory* @routine_movq_0x70fcf0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395eb)
  store %struct.Memory* %call_4395eb, %struct.Memory** %MEMORY

  ; Code: movq 0x1958(%rsi), %rsi	 RIP: 4395f3	 Bytes: 7
  %loadMem_4395f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395f3 = call %struct.Memory* @routine_movq_0x1958__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395f3)
  store %struct.Memory* %call_4395f3, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rsi	 RIP: 4395fa	 Bytes: 3
  %loadMem_4395fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395fa = call %struct.Memory* @routine_movq___rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395fa)
  store %struct.Memory* %call_4395fa, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x68(%rbp)	 RIP: 4395fd	 Bytes: 4
  %loadMem_4395fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4395fd = call %struct.Memory* @routine_movq__rsi__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4395fd)
  store %struct.Memory* %call_4395fd, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rsi	 RIP: 439601	 Bytes: 8
  %loadMem_439601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439601 = call %struct.Memory* @routine_movq_0x70fcf0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439601)
  store %struct.Memory* %call_439601, %struct.Memory** %MEMORY

  ; Code: movq 0x1958(%rsi), %rsi	 RIP: 439609	 Bytes: 7
  %loadMem_439609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439609 = call %struct.Memory* @routine_movq_0x1958__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439609)
  store %struct.Memory* %call_439609, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rsi	 RIP: 439610	 Bytes: 4
  %loadMem_439610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439610 = call %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439610)
  store %struct.Memory* %call_439610, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x70(%rbp)	 RIP: 439614	 Bytes: 4
  %loadMem_439614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439614 = call %struct.Memory* @routine_movq__rsi__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439614)
  store %struct.Memory* %call_439614, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 439618	 Bytes: 4
  %loadMem_439618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439618 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439618)
  store %struct.Memory* %call_439618, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rsi), %rsi	 RIP: 43961c	 Bytes: 7
  %loadMem_43961c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43961c = call %struct.Memory* @routine_movq_0x3758__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43961c)
  store %struct.Memory* %call_43961c, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdi	 RIP: 439623	 Bytes: 4
  %loadMem_439623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439623 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439623)
  store %struct.Memory* %call_439623, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rdi, %rdi	 RIP: 439627	 Bytes: 7
  %loadMem_439627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439627 = call %struct.Memory* @routine_imulq__0x278___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439627)
  store %struct.Memory* %call_439627, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 43962e	 Bytes: 3
  %loadMem_43962e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43962e = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43962e)
  store %struct.Memory* %call_43962e, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x90(%rbp)	 RIP: 439631	 Bytes: 7
  %loadMem_439631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439631 = call %struct.Memory* @routine_movq__rsi__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439631)
  store %struct.Memory* %call_439631, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 439638	 Bytes: 7
  %loadMem_439638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439638 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439638)
  store %struct.Memory* %call_439638, %struct.Memory** %MEMORY

  ; Code: .L_43963f:	 RIP: 43963f	 Bytes: 0
  br label %block_.L_43963f
block_.L_43963f:

  ; Code: cmpl $0x10, -0x2c(%rbp)	 RIP: 43963f	 Bytes: 4
  %loadMem_43963f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43963f = call %struct.Memory* @routine_cmpl__0x10__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43963f)
  store %struct.Memory* %call_43963f, %struct.Memory** %MEMORY

  ; Code: jge .L_43a29b	 RIP: 439643	 Bytes: 6
  %loadMem_439643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439643 = call %struct.Memory* @routine_jge_.L_43a29b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439643, i8* %BRANCH_TAKEN, i64 3160, i64 6, i64 6)
  store %struct.Memory* %call_439643, %struct.Memory** %MEMORY

  %loadBr_439643 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439643 = icmp eq i8 %loadBr_439643, 1
  br i1 %cmpBr_439643, label %block_.L_43a29b, label %block_439649

block_439649:
  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 439649	 Bytes: 4
  %loadMem_439649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439649 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439649)
  store %struct.Memory* %call_439649, %struct.Memory** %MEMORY

  ; Code: je .L_439661	 RIP: 43964d	 Bytes: 6
  %loadMem_43964d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43964d = call %struct.Memory* @routine_je_.L_439661(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43964d, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_43964d, %struct.Memory** %MEMORY

  %loadBr_43964d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43964d = icmp eq i8 %loadBr_43964d, 1
  br i1 %cmpBr_43964d, label %block_.L_439661, label %block_439653

block_439653:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 439653	 Bytes: 3
  %loadMem_439653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439653 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439653)
  store %struct.Memory* %call_439653, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd4(%rbp)	 RIP: 439656	 Bytes: 6
  %loadMem_439656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439656 = call %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439656)
  store %struct.Memory* %call_439656, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43966d	 RIP: 43965c	 Bytes: 5
  %loadMem_43965c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43965c = call %struct.Memory* @routine_jmpq_.L_43966d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43965c, i64 17, i64 5)
  store %struct.Memory* %call_43965c, %struct.Memory** %MEMORY

  br label %block_.L_43966d

  ; Code: .L_439661:	 RIP: 439661	 Bytes: 0
block_.L_439661:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 439661	 Bytes: 3
  %loadMem_439661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439661 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439661)
  store %struct.Memory* %call_439661, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 439664	 Bytes: 3
  %loadMem_439664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439664 = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439664)
  store %struct.Memory* %call_439664, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd4(%rbp)	 RIP: 439667	 Bytes: 6
  %loadMem_439667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439667 = call %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439667)
  store %struct.Memory* %call_439667, %struct.Memory** %MEMORY

  ; Code: .L_43966d:	 RIP: 43966d	 Bytes: 0
  br label %block_.L_43966d
block_.L_43966d:

  ; Code: movl -0xd4(%rbp), %eax	 RIP: 43966d	 Bytes: 6
  %loadMem_43966d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43966d = call %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43966d)
  store %struct.Memory* %call_43966d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 439673	 Bytes: 3
  %loadMem_439673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439673 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439673)
  store %struct.Memory* %call_439673, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 439676	 Bytes: 4
  %loadMem_439676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439676 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439676)
  store %struct.Memory* %call_439676, %struct.Memory** %MEMORY

  ; Code: je .L_4396bc	 RIP: 43967a	 Bytes: 6
  %loadMem_43967a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43967a = call %struct.Memory* @routine_je_.L_4396bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43967a, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_43967a, %struct.Memory** %MEMORY

  %loadBr_43967a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43967a = icmp eq i8 %loadBr_43967a, 1
  br i1 %cmpBr_43967a, label %block_.L_4396bc, label %block_439680

block_439680:
  ; Code: cmpl $0x4, -0x1c(%rbp)	 RIP: 439680	 Bytes: 4
  %loadMem_439680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439680 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439680)
  store %struct.Memory* %call_439680, %struct.Memory** %MEMORY

  ; Code: jge .L_43969b	 RIP: 439684	 Bytes: 6
  %loadMem_439684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439684 = call %struct.Memory* @routine_jge_.L_43969b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439684, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_439684, %struct.Memory** %MEMORY

  %loadBr_439684 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439684 = icmp eq i8 %loadBr_439684, 1
  br i1 %cmpBr_439684, label %block_.L_43969b, label %block_43968a

block_43968a:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 43968a	 Bytes: 3
  %loadMem_43968a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43968a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43968a)
  store %struct.Memory* %call_43968a, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 43968d	 Bytes: 3
  %loadMem_43968d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43968d = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43968d)
  store %struct.Memory* %call_43968d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd8(%rbp)	 RIP: 439690	 Bytes: 6
  %loadMem_439690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439690 = call %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439690)
  store %struct.Memory* %call_439690, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4396ab	 RIP: 439696	 Bytes: 5
  %loadMem_439696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439696 = call %struct.Memory* @routine_jmpq_.L_4396ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439696, i64 21, i64 5)
  store %struct.Memory* %call_439696, %struct.Memory** %MEMORY

  br label %block_.L_4396ab

  ; Code: .L_43969b:	 RIP: 43969b	 Bytes: 0
block_.L_43969b:

  ; Code: movl $0x1, %eax	 RIP: 43969b	 Bytes: 5
  %loadMem_43969b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43969b = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43969b)
  store %struct.Memory* %call_43969b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd8(%rbp)	 RIP: 4396a0	 Bytes: 6
  %loadMem_4396a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396a0 = call %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396a0)
  store %struct.Memory* %call_4396a0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4396ab	 RIP: 4396a6	 Bytes: 5
  %loadMem_4396a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396a6 = call %struct.Memory* @routine_jmpq_.L_4396ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396a6, i64 5, i64 5)
  store %struct.Memory* %call_4396a6, %struct.Memory** %MEMORY

  br label %block_.L_4396ab

  ; Code: .L_4396ab:	 RIP: 4396ab	 Bytes: 0
block_.L_4396ab:

  ; Code: movl -0xd8(%rbp), %eax	 RIP: 4396ab	 Bytes: 6
  %loadMem_4396ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396ab = call %struct.Memory* @routine_movl_MINUS0xd8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396ab)
  store %struct.Memory* %call_4396ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xdc(%rbp)	 RIP: 4396b1	 Bytes: 6
  %loadMem_4396b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396b1 = call %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396b1)
  store %struct.Memory* %call_4396b1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4396c5	 RIP: 4396b7	 Bytes: 5
  %loadMem_4396b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396b7 = call %struct.Memory* @routine_jmpq_.L_4396c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396b7, i64 14, i64 5)
  store %struct.Memory* %call_4396b7, %struct.Memory** %MEMORY

  br label %block_.L_4396c5

  ; Code: .L_4396bc:	 RIP: 4396bc	 Bytes: 0
block_.L_4396bc:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 4396bc	 Bytes: 3
  %loadMem_4396bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396bc = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396bc)
  store %struct.Memory* %call_4396bc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xdc(%rbp)	 RIP: 4396bf	 Bytes: 6
  %loadMem_4396bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396bf = call %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396bf)
  store %struct.Memory* %call_4396bf, %struct.Memory** %MEMORY

  ; Code: .L_4396c5:	 RIP: 4396c5	 Bytes: 0
  br label %block_.L_4396c5
block_.L_4396c5:

  ; Code: movl -0xdc(%rbp), %eax	 RIP: 4396c5	 Bytes: 6
  %loadMem_4396c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396c5 = call %struct.Memory* @routine_movl_MINUS0xdc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396c5)
  store %struct.Memory* %call_4396c5, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 4396cb	 Bytes: 5
  %loadMem_4396cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396cb = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396cb)
  store %struct.Memory* %call_4396cb, %struct.Memory** %MEMORY

  ; Code: leaq -0xb0(%rbp), %r8	 RIP: 4396d0	 Bytes: 7
  %loadMem_4396d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396d0 = call %struct.Memory* @routine_leaq_MINUS0xb0__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396d0)
  store %struct.Memory* %call_4396d0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 4396d7	 Bytes: 3
  %loadMem_4396d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396d7 = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396d7)
  store %struct.Memory* %call_4396d7, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 4396da	 Bytes: 3
  %loadMem_4396da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396da = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396da)
  store %struct.Memory* %call_4396da, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %eax	 RIP: 4396dd	 Bytes: 3
  %loadMem_4396dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396dd = call %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396dd)
  store %struct.Memory* %call_4396dd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4396e0	 Bytes: 2
  %loadMem_4396e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396e0 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396e0)
  store %struct.Memory* %call_4396e0, %struct.Memory** %MEMORY

  ; Code: subl -0x18(%rbp), %edx	 RIP: 4396e2	 Bytes: 3
  %loadMem_4396e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396e2 = call %struct.Memory* @routine_subl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396e2)
  store %struct.Memory* %call_4396e2, %struct.Memory** %MEMORY

  ; Code: subl %edx, %eax	 RIP: 4396e5	 Bytes: 2
  %loadMem_4396e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396e5 = call %struct.Memory* @routine_subl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396e5)
  store %struct.Memory* %call_4396e5, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %edx	 RIP: 4396e7	 Bytes: 3
  %loadMem_4396e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396e7 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396e7)
  store %struct.Memory* %call_4396e7, %struct.Memory** %MEMORY

  ; Code: subl -0x18(%rbp), %edx	 RIP: 4396ea	 Bytes: 3
  %loadMem_4396ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396ea = call %struct.Memory* @routine_subl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396ea)
  store %struct.Memory* %call_4396ea, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4396ed	 Bytes: 2
  %loadMem_4396ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396ed = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396ed)
  store %struct.Memory* %call_4396ed, %struct.Memory** %MEMORY

  ; Code: callq .getNeighbour	 RIP: 4396ef	 Bytes: 5
  %loadMem1_4396ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4396ef = call %struct.Memory* @routine_callq_.getNeighbour(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4396ef, i64 72385, i64 5, i64 5)
  store %struct.Memory* %call1_4396ef, %struct.Memory** %MEMORY

  %loadMem2_4396ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4396ef = load i64, i64* %3
  %call2_4396ef = call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* %0, i64  %loadPC_4396ef, %struct.Memory* %loadMem2_4396ef)
  store %struct.Memory* %call2_4396ef, %struct.Memory** %MEMORY

  ; Code: movl -0xa8(%rbp), %eax	 RIP: 4396f4	 Bytes: 6
  %loadMem_4396f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396f4 = call %struct.Memory* @routine_movl_MINUS0xa8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396f4)
  store %struct.Memory* %call_4396f4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 4396fa	 Bytes: 3
  %loadMem_4396fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396fa = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396fa)
  store %struct.Memory* %call_4396fa, %struct.Memory** %MEMORY

  ; Code: movl -0xa4(%rbp), %eax	 RIP: 4396fd	 Bytes: 6
  %loadMem_4396fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4396fd = call %struct.Memory* @routine_movl_MINUS0xa4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4396fd)
  store %struct.Memory* %call_4396fd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 439703	 Bytes: 3
  %loadMem_439703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439703 = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439703)
  store %struct.Memory* %call_439703, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %r8	 RIP: 439706	 Bytes: 4
  %loadMem_439706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439706 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439706)
  store %struct.Memory* %call_439706, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%r8), %r8	 RIP: 43970a	 Bytes: 7
  %loadMem_43970a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43970a = call %struct.Memory* @routine_movq_0x3758__r8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43970a)
  store %struct.Memory* %call_43970a, %struct.Memory** %MEMORY

  ; Code: movslq -0xac(%rbp), %r9	 RIP: 439711	 Bytes: 7
  %loadMem_439711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439711 = call %struct.Memory* @routine_movslq_MINUS0xac__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439711)
  store %struct.Memory* %call_439711, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %r9, %r9	 RIP: 439718	 Bytes: 7
  %loadMem_439718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439718 = call %struct.Memory* @routine_imulq__0x278___r9___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439718)
  store %struct.Memory* %call_439718, %struct.Memory** %MEMORY

  ; Code: addq %r9, %r8	 RIP: 43971f	 Bytes: 3
  %loadMem_43971f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43971f = call %struct.Memory* @routine_addq__r9___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43971f)
  store %struct.Memory* %call_43971f, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x98(%rbp)	 RIP: 439722	 Bytes: 7
  %loadMem_439722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439722 = call %struct.Memory* @routine_movq__r8__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439722)
  store %struct.Memory* %call_439722, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %r8	 RIP: 439729	 Bytes: 7
  %loadMem_439729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439729 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439729)
  store %struct.Memory* %call_439729, %struct.Memory** %MEMORY

  ; Code: movl 0x214(%r8), %eax	 RIP: 439730	 Bytes: 7
  %loadMem_439730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439730 = call %struct.Memory* @routine_movl_0x214__r8____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439730)
  store %struct.Memory* %call_439730, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %r8	 RIP: 439737	 Bytes: 7
  %loadMem_439737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439737 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439737)
  store %struct.Memory* %call_439737, %struct.Memory** %MEMORY

  ; Code: cmpl 0x214(%r8), %eax	 RIP: 43973e	 Bytes: 7
  %loadMem_43973e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43973e = call %struct.Memory* @routine_cmpl_0x214__r8____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43973e)
  store %struct.Memory* %call_43973e, %struct.Memory** %MEMORY

  ; Code: setne %r10b	 RIP: 439745	 Bytes: 4
  %loadMem_439745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439745 = call %struct.Memory* @routine_setne__r10b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439745)
  store %struct.Memory* %call_439745, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r10b	 RIP: 439749	 Bytes: 4
  %loadMem_439749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439749 = call %struct.Memory* @routine_andb__0x1___r10b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439749)
  store %struct.Memory* %call_439749, %struct.Memory** %MEMORY

  ; Code: movzbl %r10b, %eax	 RIP: 43974d	 Bytes: 4
  %loadMem_43974d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43974d = call %struct.Memory* @routine_movzbl__r10b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43974d)
  store %struct.Memory* %call_43974d, %struct.Memory** %MEMORY

  ; Code: movb %al, %r10b	 RIP: 439751	 Bytes: 3
  %loadMem_439751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439751 = call %struct.Memory* @routine_movb__al___r10b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439751)
  store %struct.Memory* %call_439751, %struct.Memory** %MEMORY

  ; Code: movb %r10b, 0x72531c	 RIP: 439754	 Bytes: 8
  %loadMem_439754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439754 = call %struct.Memory* @routine_movb__r10b__0x72531c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439754)
  store %struct.Memory* %call_439754, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %eax	 RIP: 43975c	 Bytes: 3
  %loadMem_43975c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43975c = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43975c)
  store %struct.Memory* %call_43975c, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %eax	 RIP: 43975f	 Bytes: 3
  %loadMem_43975f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43975f = call %struct.Memory* @routine_sarl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43975f)
  store %struct.Memory* %call_43975f, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 439762	 Bytes: 3
  %loadMem_439762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439762 = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439762)
  store %struct.Memory* %call_439762, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %ecx	 RIP: 439765	 Bytes: 3
  %loadMem_439765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439765 = call %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439765)
  store %struct.Memory* %call_439765, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %ecx	 RIP: 439768	 Bytes: 3
  %loadMem_439768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439768 = call %struct.Memory* @routine_sarl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439768)
  store %struct.Memory* %call_439768, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 43976b	 Bytes: 2
  %loadMem_43976b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43976b = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43976b)
  store %struct.Memory* %call_43976b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 43976d	 Bytes: 3
  %loadMem_43976d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43976d = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43976d)
  store %struct.Memory* %call_43976d, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp), %eax	 RIP: 439770	 Bytes: 3
  %loadMem_439770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439770 = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439770)
  store %struct.Memory* %call_439770, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %eax	 RIP: 439773	 Bytes: 3
  %loadMem_439773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439773 = call %struct.Memory* @routine_sarl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439773)
  store %struct.Memory* %call_439773, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 439776	 Bytes: 3
  %loadMem_439776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439776 = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439776)
  store %struct.Memory* %call_439776, %struct.Memory** %MEMORY

  ; Code: movl -0x78(%rbp), %ecx	 RIP: 439779	 Bytes: 3
  %loadMem_439779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439779 = call %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439779)
  store %struct.Memory* %call_439779, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %ecx	 RIP: 43977c	 Bytes: 3
  %loadMem_43977c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43977c = call %struct.Memory* @routine_sarl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43977c)
  store %struct.Memory* %call_43977c, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 43977f	 Bytes: 2
  %loadMem_43977f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43977f = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43977f)
  store %struct.Memory* %call_43977f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 439781	 Bytes: 3
  %loadMem_439781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439781 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439781)
  store %struct.Memory* %call_439781, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %r8	 RIP: 439784	 Bytes: 4
  %loadMem_439784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439784 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439784)
  store %struct.Memory* %call_439784, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x18(%r8)	 RIP: 439788	 Bytes: 5
  %loadMem_439788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439788 = call %struct.Memory* @routine_cmpl__0x3__0x18__r8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439788)
  store %struct.Memory* %call_439788, %struct.Memory** %MEMORY

  ; Code: je .L_4397a1	 RIP: 43978d	 Bytes: 6
  %loadMem_43978d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43978d = call %struct.Memory* @routine_je_.L_4397a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43978d, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_43978d, %struct.Memory** %MEMORY

  %loadBr_43978d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43978d = icmp eq i8 %loadBr_43978d, 1
  br i1 %cmpBr_43978d, label %block_.L_4397a1, label %block_439793

block_439793:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 439793	 Bytes: 4
  %loadMem_439793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439793 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439793)
  store %struct.Memory* %call_439793, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, 0x18(%rax)	 RIP: 439797	 Bytes: 4
  %loadMem_439797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439797 = call %struct.Memory* @routine_cmpl__0x4__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439797)
  store %struct.Memory* %call_439797, %struct.Memory** %MEMORY

  ; Code: jne .L_439894	 RIP: 43979b	 Bytes: 6
  %loadMem_43979b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43979b = call %struct.Memory* @routine_jne_.L_439894(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43979b, i8* %BRANCH_TAKEN, i64 249, i64 6, i64 6)
  store %struct.Memory* %call_43979b, %struct.Memory** %MEMORY

  %loadBr_43979b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43979b = icmp eq i8 %loadBr_43979b, 1
  br i1 %cmpBr_43979b, label %block_.L_439894, label %block_.L_4397a1

  ; Code: .L_4397a1:	 RIP: 4397a1	 Bytes: 0
block_.L_4397a1:

  ; Code: xorl %eax, %eax	 RIP: 4397a1	 Bytes: 2
  %loadMem_4397a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397a1 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397a1)
  store %struct.Memory* %call_4397a1, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 4397a3	 Bytes: 2
  %loadMem_4397a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397a3 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397a3)
  store %struct.Memory* %call_4397a3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 4397a5	 Bytes: 4
  %loadMem_4397a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397a5 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397a5)
  store %struct.Memory* %call_4397a5, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0xdd(%rbp)	 RIP: 4397a9	 Bytes: 6
  %loadMem_4397a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397a9 = call %struct.Memory* @routine_movb__cl__MINUS0xdd__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397a9)
  store %struct.Memory* %call_4397a9, %struct.Memory** %MEMORY

  ; Code: jne .L_43986d	 RIP: 4397af	 Bytes: 6
  %loadMem_4397af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397af = call %struct.Memory* @routine_jne_.L_43986d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397af, i8* %BRANCH_TAKEN, i64 190, i64 6, i64 6)
  store %struct.Memory* %call_4397af, %struct.Memory** %MEMORY

  %loadBr_4397af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4397af = icmp eq i8 %loadBr_4397af, 1
  br i1 %cmpBr_4397af, label %block_.L_43986d, label %block_4397b5

block_4397b5:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4397b5	 Bytes: 4
  %loadMem_4397b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397b5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397b5)
  store %struct.Memory* %call_4397b5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ad0(%rax)	 RIP: 4397b9	 Bytes: 7
  %loadMem_4397b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397b9 = call %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397b9)
  store %struct.Memory* %call_4397b9, %struct.Memory** %MEMORY

  ; Code: jne .L_4397dc	 RIP: 4397c0	 Bytes: 6
  %loadMem_4397c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397c0 = call %struct.Memory* @routine_jne_.L_4397dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397c0, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_4397c0, %struct.Memory** %MEMORY

  %loadBr_4397c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4397c0 = icmp eq i8 %loadBr_4397c0, 1
  br i1 %cmpBr_4397c0, label %block_.L_4397dc, label %block_4397c6

block_4397c6:
  ; Code: movb $0x1, %al	 RIP: 4397c6	 Bytes: 2
  %loadMem_4397c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397c6 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397c6)
  store %struct.Memory* %call_4397c6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4397c8	 Bytes: 4
  %loadMem_4397c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397c8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397c8)
  store %struct.Memory* %call_4397c8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rcx)	 RIP: 4397cc	 Bytes: 4
  %loadMem_4397cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397cc = call %struct.Memory* @routine_cmpl__0x0__0x1c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397cc)
  store %struct.Memory* %call_4397cc, %struct.Memory** %MEMORY

  ; Code: movb %al, -0xde(%rbp)	 RIP: 4397d0	 Bytes: 6
  %loadMem_4397d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397d0 = call %struct.Memory* @routine_movb__al__MINUS0xde__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397d0)
  store %struct.Memory* %call_4397d0, %struct.Memory** %MEMORY

  ; Code: je .L_439861	 RIP: 4397d6	 Bytes: 6
  %loadMem_4397d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397d6 = call %struct.Memory* @routine_je_.L_439861(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397d6, i8* %BRANCH_TAKEN, i64 139, i64 6, i64 6)
  store %struct.Memory* %call_4397d6, %struct.Memory** %MEMORY

  %loadBr_4397d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4397d6 = icmp eq i8 %loadBr_4397d6, 1
  br i1 %cmpBr_4397d6, label %block_.L_439861, label %block_.L_4397dc

  ; Code: .L_4397dc:	 RIP: 4397dc	 Bytes: 0
block_.L_4397dc:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4397dc	 Bytes: 4
  %loadMem_4397dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397dc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397dc)
  store %struct.Memory* %call_4397dc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ad0(%rax)	 RIP: 4397e0	 Bytes: 7
  %loadMem_4397e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397e0 = call %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397e0)
  store %struct.Memory* %call_4397e0, %struct.Memory** %MEMORY

  ; Code: je .L_43981d	 RIP: 4397e7	 Bytes: 6
  %loadMem_4397e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397e7 = call %struct.Memory* @routine_je_.L_43981d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397e7, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_4397e7, %struct.Memory** %MEMORY

  %loadBr_4397e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4397e7 = icmp eq i8 %loadBr_4397e7, 1
  br i1 %cmpBr_4397e7, label %block_.L_43981d, label %block_4397ed

block_4397ed:
  ; Code: movq -0x98(%rbp), %rax	 RIP: 4397ed	 Bytes: 7
  %loadMem_4397ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397ed = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397ed)
  store %struct.Memory* %call_4397ed, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 4397f4	 Bytes: 7
  %loadMem_4397f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397f4 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397f4)
  store %struct.Memory* %call_4397f4, %struct.Memory** %MEMORY

  ; Code: jne .L_43981d	 RIP: 4397fb	 Bytes: 6
  %loadMem_4397fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4397fb = call %struct.Memory* @routine_jne_.L_43981d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4397fb, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4397fb, %struct.Memory** %MEMORY

  %loadBr_4397fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4397fb = icmp eq i8 %loadBr_4397fb, 1
  br i1 %cmpBr_4397fb, label %block_.L_43981d, label %block_439801

block_439801:
  ; Code: movb $0x1, %al	 RIP: 439801	 Bytes: 2
  %loadMem_439801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439801 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439801)
  store %struct.Memory* %call_439801, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rcx	 RIP: 439803	 Bytes: 7
  %loadMem_439803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439803 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439803)
  store %struct.Memory* %call_439803, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rcx)	 RIP: 43980a	 Bytes: 7
  %loadMem_43980a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43980a = call %struct.Memory* @routine_cmpl__0x0__0x214__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43980a)
  store %struct.Memory* %call_43980a, %struct.Memory** %MEMORY

  ; Code: movb %al, -0xde(%rbp)	 RIP: 439811	 Bytes: 6
  %loadMem_439811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439811 = call %struct.Memory* @routine_movb__al__MINUS0xde__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439811)
  store %struct.Memory* %call_439811, %struct.Memory** %MEMORY

  ; Code: je .L_439861	 RIP: 439817	 Bytes: 6
  %loadMem_439817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439817 = call %struct.Memory* @routine_je_.L_439861(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439817, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_439817, %struct.Memory** %MEMORY

  %loadBr_439817 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439817 = icmp eq i8 %loadBr_439817, 1
  br i1 %cmpBr_439817, label %block_.L_439861, label %block_.L_43981d

  ; Code: .L_43981d:	 RIP: 43981d	 Bytes: 0
block_.L_43981d:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 43981d	 Bytes: 4
  %loadMem_43981d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43981d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43981d)
  store %struct.Memory* %call_43981d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ad0(%rax)	 RIP: 439821	 Bytes: 7
  %loadMem_439821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439821 = call %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439821)
  store %struct.Memory* %call_439821, %struct.Memory** %MEMORY

  ; Code: jne .L_439846	 RIP: 439828	 Bytes: 6
  %loadMem_439828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439828 = call %struct.Memory* @routine_jne_.L_439846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439828, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_439828, %struct.Memory** %MEMORY

  %loadBr_439828 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439828 = icmp eq i8 %loadBr_439828, 1
  br i1 %cmpBr_439828, label %block_.L_439846, label %block_43982e

block_43982e:
  ; Code: xorl %eax, %eax	 RIP: 43982e	 Bytes: 2
  %loadMem_43982e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43982e = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43982e)
  store %struct.Memory* %call_43982e, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 439830	 Bytes: 2
  %loadMem_439830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439830 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439830)
  store %struct.Memory* %call_439830, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 439832	 Bytes: 4
  %loadMem_439832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439832 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439832)
  store %struct.Memory* %call_439832, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rdx)	 RIP: 439836	 Bytes: 4
  %loadMem_439836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439836 = call %struct.Memory* @routine_cmpl__0x0__0x1c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439836)
  store %struct.Memory* %call_439836, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0xdf(%rbp)	 RIP: 43983a	 Bytes: 6
  %loadMem_43983a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43983a = call %struct.Memory* @routine_movb__cl__MINUS0xdf__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43983a)
  store %struct.Memory* %call_43983a, %struct.Memory** %MEMORY

  ; Code: je .L_439855	 RIP: 439840	 Bytes: 6
  %loadMem_439840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439840 = call %struct.Memory* @routine_je_.L_439855(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439840, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_439840, %struct.Memory** %MEMORY

  %loadBr_439840 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439840 = icmp eq i8 %loadBr_439840, 1
  br i1 %cmpBr_439840, label %block_.L_439855, label %block_.L_439846

  ; Code: .L_439846:	 RIP: 439846	 Bytes: 0
block_.L_439846:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 439846	 Bytes: 4
  %loadMem_439846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439846 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439846)
  store %struct.Memory* %call_439846, %struct.Memory** %MEMORY

  ; Code: setne %al	 RIP: 43984a	 Bytes: 3
  %loadMem_43984a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43984a = call %struct.Memory* @routine_setne__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43984a)
  store %struct.Memory* %call_43984a, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %al	 RIP: 43984d	 Bytes: 2
  %loadMem_43984d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43984d = call %struct.Memory* @routine_xorb__0xff___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43984d)
  store %struct.Memory* %call_43984d, %struct.Memory** %MEMORY

  ; Code: movb %al, -0xdf(%rbp)	 RIP: 43984f	 Bytes: 6
  %loadMem_43984f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43984f = call %struct.Memory* @routine_movb__al__MINUS0xdf__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43984f)
  store %struct.Memory* %call_43984f, %struct.Memory** %MEMORY

  ; Code: .L_439855:	 RIP: 439855	 Bytes: 0
  br label %block_.L_439855
block_.L_439855:

  ; Code: movb -0xdf(%rbp), %al	 RIP: 439855	 Bytes: 6
  %loadMem_439855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439855 = call %struct.Memory* @routine_movb_MINUS0xdf__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439855)
  store %struct.Memory* %call_439855, %struct.Memory** %MEMORY

  ; Code: movb %al, -0xde(%rbp)	 RIP: 43985b	 Bytes: 6
  %loadMem_43985b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43985b = call %struct.Memory* @routine_movb__al__MINUS0xde__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43985b)
  store %struct.Memory* %call_43985b, %struct.Memory** %MEMORY

  ; Code: .L_439861:	 RIP: 439861	 Bytes: 0
  br label %block_.L_439861
block_.L_439861:

  ; Code: movb -0xde(%rbp), %al	 RIP: 439861	 Bytes: 6
  %loadMem_439861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439861 = call %struct.Memory* @routine_movb_MINUS0xde__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439861)
  store %struct.Memory* %call_439861, %struct.Memory** %MEMORY

  ; Code: movb %al, -0xdd(%rbp)	 RIP: 439867	 Bytes: 6
  %loadMem_439867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439867 = call %struct.Memory* @routine_movb__al__MINUS0xdd__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439867)
  store %struct.Memory* %call_439867, %struct.Memory** %MEMORY

  ; Code: .L_43986d:	 RIP: 43986d	 Bytes: 0
  br label %block_.L_43986d
block_.L_43986d:

  ; Code: movb -0xdd(%rbp), %al	 RIP: 43986d	 Bytes: 6
  %loadMem_43986d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43986d = call %struct.Memory* @routine_movb_MINUS0xdd__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43986d)
  store %struct.Memory* %call_43986d, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 439873	 Bytes: 5
  %loadMem_439873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439873 = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439873)
  store %struct.Memory* %call_439873, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %edx	 RIP: 439878	 Bytes: 5
  %loadMem_439878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439878 = call %struct.Memory* @routine_movl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439878)
  store %struct.Memory* %call_439878, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 43987d	 Bytes: 2
  %loadMem_43987d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43987d = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43987d)
  store %struct.Memory* %call_43987d, %struct.Memory** %MEMORY

  ; Code: cmovnel %edx, %ecx	 RIP: 43987f	 Bytes: 3
  %loadMem_43987f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43987f = call %struct.Memory* @routine_cmovnel__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43987f)
  store %struct.Memory* %call_43987f, %struct.Memory** %MEMORY

  ; Code: movb %cl, %al	 RIP: 439882	 Bytes: 2
  %loadMem_439882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439882 = call %struct.Memory* @routine_movb__cl___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439882)
  store %struct.Memory* %call_439882, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 439884	 Bytes: 4
  %loadMem_439884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439884 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439884)
  store %struct.Memory* %call_439884, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 439888	 Bytes: 4
  %loadMem_439888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439888 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439888)
  store %struct.Memory* %call_439888, %struct.Memory** %MEMORY

  ; Code: movb %al, (%rsi,%rdi,1)	 RIP: 43988c	 Bytes: 3
  %loadMem_43988c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43988c = call %struct.Memory* @routine_movb__al____rsi__rdi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43988c)
  store %struct.Memory* %call_43988c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a288	 RIP: 43988f	 Bytes: 5
  %loadMem_43988f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43988f = call %struct.Memory* @routine_jmpq_.L_43a288(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43988f, i64 2553, i64 5)
  store %struct.Memory* %call_43988f, %struct.Memory** %MEMORY

  br label %block_.L_43a288

  ; Code: .L_439894:	 RIP: 439894	 Bytes: 0
block_.L_439894:

  ; Code: xorl %eax, %eax	 RIP: 439894	 Bytes: 2
  %loadMem_439894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439894 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439894)
  store %struct.Memory* %call_439894, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 439896	 Bytes: 2
  %loadMem_439896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439896 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439896)
  store %struct.Memory* %call_439896, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 439898	 Bytes: 4
  %loadMem_439898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439898 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439898)
  store %struct.Memory* %call_439898, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0xe0(%rbp)	 RIP: 43989c	 Bytes: 6
  %loadMem_43989c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43989c = call %struct.Memory* @routine_movb__cl__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43989c)
  store %struct.Memory* %call_43989c, %struct.Memory** %MEMORY

  ; Code: jne .L_439960	 RIP: 4398a2	 Bytes: 6
  %loadMem_4398a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398a2 = call %struct.Memory* @routine_jne_.L_439960(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398a2, i8* %BRANCH_TAKEN, i64 190, i64 6, i64 6)
  store %struct.Memory* %call_4398a2, %struct.Memory** %MEMORY

  %loadBr_4398a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4398a2 = icmp eq i8 %loadBr_4398a2, 1
  br i1 %cmpBr_4398a2, label %block_.L_439960, label %block_4398a8

block_4398a8:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4398a8	 Bytes: 4
  %loadMem_4398a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398a8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398a8)
  store %struct.Memory* %call_4398a8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ad0(%rax)	 RIP: 4398ac	 Bytes: 7
  %loadMem_4398ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398ac = call %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398ac)
  store %struct.Memory* %call_4398ac, %struct.Memory** %MEMORY

  ; Code: jne .L_4398cf	 RIP: 4398b3	 Bytes: 6
  %loadMem_4398b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398b3 = call %struct.Memory* @routine_jne_.L_4398cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398b3, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_4398b3, %struct.Memory** %MEMORY

  %loadBr_4398b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4398b3 = icmp eq i8 %loadBr_4398b3, 1
  br i1 %cmpBr_4398b3, label %block_.L_4398cf, label %block_4398b9

block_4398b9:
  ; Code: movb $0x1, %al	 RIP: 4398b9	 Bytes: 2
  %loadMem_4398b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398b9 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398b9)
  store %struct.Memory* %call_4398b9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4398bb	 Bytes: 4
  %loadMem_4398bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398bb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398bb)
  store %struct.Memory* %call_4398bb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rcx)	 RIP: 4398bf	 Bytes: 4
  %loadMem_4398bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398bf = call %struct.Memory* @routine_cmpl__0x0__0x1c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398bf)
  store %struct.Memory* %call_4398bf, %struct.Memory** %MEMORY

  ; Code: movb %al, -0xe1(%rbp)	 RIP: 4398c3	 Bytes: 6
  %loadMem_4398c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398c3 = call %struct.Memory* @routine_movb__al__MINUS0xe1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398c3)
  store %struct.Memory* %call_4398c3, %struct.Memory** %MEMORY

  ; Code: je .L_439954	 RIP: 4398c9	 Bytes: 6
  %loadMem_4398c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398c9 = call %struct.Memory* @routine_je_.L_439954(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398c9, i8* %BRANCH_TAKEN, i64 139, i64 6, i64 6)
  store %struct.Memory* %call_4398c9, %struct.Memory** %MEMORY

  %loadBr_4398c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4398c9 = icmp eq i8 %loadBr_4398c9, 1
  br i1 %cmpBr_4398c9, label %block_.L_439954, label %block_.L_4398cf

  ; Code: .L_4398cf:	 RIP: 4398cf	 Bytes: 0
block_.L_4398cf:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4398cf	 Bytes: 4
  %loadMem_4398cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398cf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398cf)
  store %struct.Memory* %call_4398cf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ad0(%rax)	 RIP: 4398d3	 Bytes: 7
  %loadMem_4398d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398d3 = call %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398d3)
  store %struct.Memory* %call_4398d3, %struct.Memory** %MEMORY

  ; Code: je .L_439910	 RIP: 4398da	 Bytes: 6
  %loadMem_4398da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398da = call %struct.Memory* @routine_je_.L_439910(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398da, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_4398da, %struct.Memory** %MEMORY

  %loadBr_4398da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4398da = icmp eq i8 %loadBr_4398da, 1
  br i1 %cmpBr_4398da, label %block_.L_439910, label %block_4398e0

block_4398e0:
  ; Code: movq -0x98(%rbp), %rax	 RIP: 4398e0	 Bytes: 7
  %loadMem_4398e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398e0 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398e0)
  store %struct.Memory* %call_4398e0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 4398e7	 Bytes: 7
  %loadMem_4398e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398e7 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398e7)
  store %struct.Memory* %call_4398e7, %struct.Memory** %MEMORY

  ; Code: jne .L_439910	 RIP: 4398ee	 Bytes: 6
  %loadMem_4398ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398ee = call %struct.Memory* @routine_jne_.L_439910(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398ee, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4398ee, %struct.Memory** %MEMORY

  %loadBr_4398ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4398ee = icmp eq i8 %loadBr_4398ee, 1
  br i1 %cmpBr_4398ee, label %block_.L_439910, label %block_4398f4

block_4398f4:
  ; Code: movb $0x1, %al	 RIP: 4398f4	 Bytes: 2
  %loadMem_4398f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398f4 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398f4)
  store %struct.Memory* %call_4398f4, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rcx	 RIP: 4398f6	 Bytes: 7
  %loadMem_4398f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398f6 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398f6)
  store %struct.Memory* %call_4398f6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rcx)	 RIP: 4398fd	 Bytes: 7
  %loadMem_4398fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4398fd = call %struct.Memory* @routine_cmpl__0x0__0x214__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4398fd)
  store %struct.Memory* %call_4398fd, %struct.Memory** %MEMORY

  ; Code: movb %al, -0xe1(%rbp)	 RIP: 439904	 Bytes: 6
  %loadMem_439904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439904 = call %struct.Memory* @routine_movb__al__MINUS0xe1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439904)
  store %struct.Memory* %call_439904, %struct.Memory** %MEMORY

  ; Code: je .L_439954	 RIP: 43990a	 Bytes: 6
  %loadMem_43990a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43990a = call %struct.Memory* @routine_je_.L_439954(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43990a, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_43990a, %struct.Memory** %MEMORY

  %loadBr_43990a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43990a = icmp eq i8 %loadBr_43990a, 1
  br i1 %cmpBr_43990a, label %block_.L_439954, label %block_.L_439910

  ; Code: .L_439910:	 RIP: 439910	 Bytes: 0
block_.L_439910:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 439910	 Bytes: 4
  %loadMem_439910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439910 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439910)
  store %struct.Memory* %call_439910, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ad0(%rax)	 RIP: 439914	 Bytes: 7
  %loadMem_439914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439914 = call %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439914)
  store %struct.Memory* %call_439914, %struct.Memory** %MEMORY

  ; Code: jne .L_439939	 RIP: 43991b	 Bytes: 6
  %loadMem_43991b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43991b = call %struct.Memory* @routine_jne_.L_439939(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43991b, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_43991b, %struct.Memory** %MEMORY

  %loadBr_43991b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43991b = icmp eq i8 %loadBr_43991b, 1
  br i1 %cmpBr_43991b, label %block_.L_439939, label %block_439921

block_439921:
  ; Code: xorl %eax, %eax	 RIP: 439921	 Bytes: 2
  %loadMem_439921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439921 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439921)
  store %struct.Memory* %call_439921, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 439923	 Bytes: 2
  %loadMem_439923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439923 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439923)
  store %struct.Memory* %call_439923, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 439925	 Bytes: 4
  %loadMem_439925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439925 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439925)
  store %struct.Memory* %call_439925, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rdx)	 RIP: 439929	 Bytes: 4
  %loadMem_439929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439929 = call %struct.Memory* @routine_cmpl__0x0__0x1c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439929)
  store %struct.Memory* %call_439929, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0xe2(%rbp)	 RIP: 43992d	 Bytes: 6
  %loadMem_43992d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43992d = call %struct.Memory* @routine_movb__cl__MINUS0xe2__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43992d)
  store %struct.Memory* %call_43992d, %struct.Memory** %MEMORY

  ; Code: je .L_439948	 RIP: 439933	 Bytes: 6
  %loadMem_439933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439933 = call %struct.Memory* @routine_je_.L_439948(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439933, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_439933, %struct.Memory** %MEMORY

  %loadBr_439933 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439933 = icmp eq i8 %loadBr_439933, 1
  br i1 %cmpBr_439933, label %block_.L_439948, label %block_.L_439939

  ; Code: .L_439939:	 RIP: 439939	 Bytes: 0
block_.L_439939:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 439939	 Bytes: 4
  %loadMem_439939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439939 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439939)
  store %struct.Memory* %call_439939, %struct.Memory** %MEMORY

  ; Code: setne %al	 RIP: 43993d	 Bytes: 3
  %loadMem_43993d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43993d = call %struct.Memory* @routine_setne__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43993d)
  store %struct.Memory* %call_43993d, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %al	 RIP: 439940	 Bytes: 2
  %loadMem_439940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439940 = call %struct.Memory* @routine_xorb__0xff___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439940)
  store %struct.Memory* %call_439940, %struct.Memory** %MEMORY

  ; Code: movb %al, -0xe2(%rbp)	 RIP: 439942	 Bytes: 6
  %loadMem_439942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439942 = call %struct.Memory* @routine_movb__al__MINUS0xe2__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439942)
  store %struct.Memory* %call_439942, %struct.Memory** %MEMORY

  ; Code: .L_439948:	 RIP: 439948	 Bytes: 0
  br label %block_.L_439948
block_.L_439948:

  ; Code: movb -0xe2(%rbp), %al	 RIP: 439948	 Bytes: 6
  %loadMem_439948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439948 = call %struct.Memory* @routine_movb_MINUS0xe2__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439948)
  store %struct.Memory* %call_439948, %struct.Memory** %MEMORY

  ; Code: movb %al, -0xe1(%rbp)	 RIP: 43994e	 Bytes: 6
  %loadMem_43994e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43994e = call %struct.Memory* @routine_movb__al__MINUS0xe1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43994e)
  store %struct.Memory* %call_43994e, %struct.Memory** %MEMORY

  ; Code: .L_439954:	 RIP: 439954	 Bytes: 0
  br label %block_.L_439954
block_.L_439954:

  ; Code: movb -0xe1(%rbp), %al	 RIP: 439954	 Bytes: 6
  %loadMem_439954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439954 = call %struct.Memory* @routine_movb_MINUS0xe1__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439954)
  store %struct.Memory* %call_439954, %struct.Memory** %MEMORY

  ; Code: movb %al, -0xe0(%rbp)	 RIP: 43995a	 Bytes: 6
  %loadMem_43995a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43995a = call %struct.Memory* @routine_movb__al__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43995a)
  store %struct.Memory* %call_43995a, %struct.Memory** %MEMORY

  ; Code: .L_439960:	 RIP: 439960	 Bytes: 0
  br label %block_.L_439960
block_.L_439960:

  ; Code: movb -0xe0(%rbp), %al	 RIP: 439960	 Bytes: 6
  %loadMem_439960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439960 = call %struct.Memory* @routine_movb_MINUS0xe0__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439960)
  store %struct.Memory* %call_439960, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 439966	 Bytes: 5
  %loadMem_439966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439966 = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439966)
  store %struct.Memory* %call_439966, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %edx	 RIP: 43996b	 Bytes: 5
  %loadMem_43996b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43996b = call %struct.Memory* @routine_movl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43996b)
  store %struct.Memory* %call_43996b, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 439970	 Bytes: 2
  %loadMem_439970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439970 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439970)
  store %struct.Memory* %call_439970, %struct.Memory** %MEMORY

  ; Code: cmovnel %edx, %ecx	 RIP: 439972	 Bytes: 3
  %loadMem_439972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439972 = call %struct.Memory* @routine_cmovnel__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439972)
  store %struct.Memory* %call_439972, %struct.Memory** %MEMORY

  ; Code: movb %cl, %al	 RIP: 439975	 Bytes: 2
  %loadMem_439975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439975 = call %struct.Memory* @routine_movb__cl___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439975)
  store %struct.Memory* %call_439975, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 439977	 Bytes: 4
  %loadMem_439977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439977 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439977)
  store %struct.Memory* %call_439977, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 43997b	 Bytes: 4
  %loadMem_43997b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43997b = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43997b)
  store %struct.Memory* %call_43997b, %struct.Memory** %MEMORY

  ; Code: movb %al, (%rsi,%rdi,1)	 RIP: 43997f	 Bytes: 3
  %loadMem_43997f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43997f = call %struct.Memory* @routine_movb__al____rsi__rdi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43997f)
  store %struct.Memory* %call_43997f, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rsi	 RIP: 439982	 Bytes: 7
  %loadMem_439982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439982 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439982)
  store %struct.Memory* %call_439982, %struct.Memory** %MEMORY

  ; Code: cmpl $0x9, 0x48(%rsi)	 RIP: 439989	 Bytes: 4
  %loadMem_439989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439989 = call %struct.Memory* @routine_cmpl__0x9__0x48__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439989)
  store %struct.Memory* %call_439989, %struct.Memory** %MEMORY

  ; Code: je .L_43a283	 RIP: 43998d	 Bytes: 6
  %loadMem_43998d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43998d = call %struct.Memory* @routine_je_.L_43a283(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43998d, i8* %BRANCH_TAKEN, i64 2294, i64 6, i64 6)
  store %struct.Memory* %call_43998d, %struct.Memory** %MEMORY

  %loadBr_43998d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43998d = icmp eq i8 %loadBr_43998d, 1
  br i1 %cmpBr_43998d, label %block_.L_43a283, label %block_439993

block_439993:
  ; Code: movq -0x98(%rbp), %rax	 RIP: 439993	 Bytes: 7
  %loadMem_439993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439993 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439993)
  store %struct.Memory* %call_439993, %struct.Memory** %MEMORY

  ; Code: cmpl $0xa, 0x48(%rax)	 RIP: 43999a	 Bytes: 4
  %loadMem_43999a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43999a = call %struct.Memory* @routine_cmpl__0xa__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43999a)
  store %struct.Memory* %call_43999a, %struct.Memory** %MEMORY

  ; Code: je .L_43a283	 RIP: 43999e	 Bytes: 6
  %loadMem_43999e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43999e = call %struct.Memory* @routine_je_.L_43a283(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43999e, i8* %BRANCH_TAKEN, i64 2277, i64 6, i64 6)
  store %struct.Memory* %call_43999e, %struct.Memory** %MEMORY

  %loadBr_43999e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43999e = icmp eq i8 %loadBr_43999e, 1
  br i1 %cmpBr_43999e, label %block_.L_43a283, label %block_4399a4

block_4399a4:
  ; Code: movq -0x98(%rbp), %rax	 RIP: 4399a4	 Bytes: 7
  %loadMem_4399a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399a4 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399a4)
  store %struct.Memory* %call_4399a4, %struct.Memory** %MEMORY

  ; Code: cmpl $0xe, 0x48(%rax)	 RIP: 4399ab	 Bytes: 4
  %loadMem_4399ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399ab = call %struct.Memory* @routine_cmpl__0xe__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399ab)
  store %struct.Memory* %call_4399ab, %struct.Memory** %MEMORY

  ; Code: je .L_43a283	 RIP: 4399af	 Bytes: 6
  %loadMem_4399af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399af = call %struct.Memory* @routine_je_.L_43a283(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399af, i8* %BRANCH_TAKEN, i64 2260, i64 6, i64 6)
  store %struct.Memory* %call_4399af, %struct.Memory** %MEMORY

  %loadBr_4399af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4399af = icmp eq i8 %loadBr_4399af, 1
  br i1 %cmpBr_4399af, label %block_.L_43a283, label %block_4399b5

block_4399b5:
  ; Code: movq -0x98(%rbp), %rax	 RIP: 4399b5	 Bytes: 7
  %loadMem_4399b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399b5 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399b5)
  store %struct.Memory* %call_4399b5, %struct.Memory** %MEMORY

  ; Code: cmpl $0xd, 0x48(%rax)	 RIP: 4399bc	 Bytes: 4
  %loadMem_4399bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399bc = call %struct.Memory* @routine_cmpl__0xd__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399bc)
  store %struct.Memory* %call_4399bc, %struct.Memory** %MEMORY

  ; Code: je .L_43a283	 RIP: 4399c0	 Bytes: 6
  %loadMem_4399c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399c0 = call %struct.Memory* @routine_je_.L_43a283(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399c0, i8* %BRANCH_TAKEN, i64 2243, i64 6, i64 6)
  store %struct.Memory* %call_4399c0, %struct.Memory** %MEMORY

  %loadBr_4399c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4399c0 = icmp eq i8 %loadBr_4399c0, 1
  br i1 %cmpBr_4399c0, label %block_.L_43a283, label %block_4399c6

block_4399c6:
  ; Code: movq -0x90(%rbp), %rax	 RIP: 4399c6	 Bytes: 7
  %loadMem_4399c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399c6 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399c6)
  store %struct.Memory* %call_4399c6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x9, 0x48(%rax)	 RIP: 4399cd	 Bytes: 4
  %loadMem_4399cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399cd = call %struct.Memory* @routine_cmpl__0x9__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399cd)
  store %struct.Memory* %call_4399cd, %struct.Memory** %MEMORY

  ; Code: je .L_43a283	 RIP: 4399d1	 Bytes: 6
  %loadMem_4399d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399d1 = call %struct.Memory* @routine_je_.L_43a283(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399d1, i8* %BRANCH_TAKEN, i64 2226, i64 6, i64 6)
  store %struct.Memory* %call_4399d1, %struct.Memory** %MEMORY

  %loadBr_4399d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4399d1 = icmp eq i8 %loadBr_4399d1, 1
  br i1 %cmpBr_4399d1, label %block_.L_43a283, label %block_4399d7

block_4399d7:
  ; Code: movq -0x90(%rbp), %rax	 RIP: 4399d7	 Bytes: 7
  %loadMem_4399d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399d7 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399d7)
  store %struct.Memory* %call_4399d7, %struct.Memory** %MEMORY

  ; Code: cmpl $0xa, 0x48(%rax)	 RIP: 4399de	 Bytes: 4
  %loadMem_4399de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399de = call %struct.Memory* @routine_cmpl__0xa__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399de)
  store %struct.Memory* %call_4399de, %struct.Memory** %MEMORY

  ; Code: je .L_43a283	 RIP: 4399e2	 Bytes: 6
  %loadMem_4399e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399e2 = call %struct.Memory* @routine_je_.L_43a283(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399e2, i8* %BRANCH_TAKEN, i64 2209, i64 6, i64 6)
  store %struct.Memory* %call_4399e2, %struct.Memory** %MEMORY

  %loadBr_4399e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4399e2 = icmp eq i8 %loadBr_4399e2, 1
  br i1 %cmpBr_4399e2, label %block_.L_43a283, label %block_4399e8

block_4399e8:
  ; Code: movq -0x90(%rbp), %rax	 RIP: 4399e8	 Bytes: 7
  %loadMem_4399e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399e8 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399e8)
  store %struct.Memory* %call_4399e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0xe, 0x48(%rax)	 RIP: 4399ef	 Bytes: 4
  %loadMem_4399ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399ef = call %struct.Memory* @routine_cmpl__0xe__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399ef)
  store %struct.Memory* %call_4399ef, %struct.Memory** %MEMORY

  ; Code: je .L_43a283	 RIP: 4399f3	 Bytes: 6
  %loadMem_4399f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399f3 = call %struct.Memory* @routine_je_.L_43a283(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399f3, i8* %BRANCH_TAKEN, i64 2192, i64 6, i64 6)
  store %struct.Memory* %call_4399f3, %struct.Memory** %MEMORY

  %loadBr_4399f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4399f3 = icmp eq i8 %loadBr_4399f3, 1
  br i1 %cmpBr_4399f3, label %block_.L_43a283, label %block_4399f9

block_4399f9:
  ; Code: movq -0x90(%rbp), %rax	 RIP: 4399f9	 Bytes: 7
  %loadMem_4399f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4399f9 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4399f9)
  store %struct.Memory* %call_4399f9, %struct.Memory** %MEMORY

  ; Code: cmpl $0xd, 0x48(%rax)	 RIP: 439a00	 Bytes: 4
  %loadMem_439a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a00 = call %struct.Memory* @routine_cmpl__0xd__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a00)
  store %struct.Memory* %call_439a00, %struct.Memory** %MEMORY

  ; Code: je .L_43a283	 RIP: 439a04	 Bytes: 6
  %loadMem_439a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a04 = call %struct.Memory* @routine_je_.L_43a283(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a04, i8* %BRANCH_TAKEN, i64 2175, i64 6, i64 6)
  store %struct.Memory* %call_439a04, %struct.Memory** %MEMORY

  %loadBr_439a04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439a04 = icmp eq i8 %loadBr_439a04, 1
  br i1 %cmpBr_439a04, label %block_.L_43a283, label %block_439a0a

block_439a0a:
  ; Code: movl $0x1, %eax	 RIP: 439a0a	 Bytes: 5
  %loadMem_439a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a0a = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a0a)
  store %struct.Memory* %call_439a0a, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rcx	 RIP: 439a0f	 Bytes: 7
  %loadMem_439a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a0f = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a0f)
  store %struct.Memory* %call_439a0f, %struct.Memory** %MEMORY

  ; Code: movq 0x1d0(%rcx), %rcx	 RIP: 439a16	 Bytes: 7
  %loadMem_439a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a16 = call %struct.Memory* @routine_movq_0x1d0__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a16)
  store %struct.Memory* %call_439a16, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 439a1d	 Bytes: 3
  %loadMem_439a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a1d = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a1d)
  store %struct.Memory* %call_439a1d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xf0(%rbp)	 RIP: 439a20	 Bytes: 7
  %loadMem_439a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a20 = call %struct.Memory* @routine_movq__rcx__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a20)
  store %struct.Memory* %call_439a20, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 439a27	 Bytes: 2
  %loadMem_439a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a27 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a27)
  store %struct.Memory* %call_439a27, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 439a29	 Bytes: 2
  %loadMem_439a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a29 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a29)
  store %struct.Memory* %call_439a29, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 439a2b	 Bytes: 3
  %loadMem_439a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a2b = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a2b)
  store %struct.Memory* %call_439a2b, %struct.Memory** %MEMORY

  ; Code: movq -0xf0(%rbp), %rdi	 RIP: 439a2e	 Bytes: 7
  %loadMem_439a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a2e = call %struct.Memory* @routine_movq_MINUS0xf0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a2e)
  store %struct.Memory* %call_439a2e, %struct.Memory** %MEMORY

  ; Code: andq %rsi, %rdi	 RIP: 439a35	 Bytes: 3
  %loadMem_439a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a35 = call %struct.Memory* @routine_andq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a35)
  store %struct.Memory* %call_439a35, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rdi	 RIP: 439a38	 Bytes: 4
  %loadMem_439a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a38 = call %struct.Memory* @routine_cmpq__0x0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a38)
  store %struct.Memory* %call_439a38, %struct.Memory** %MEMORY

  ; Code: jne .L_439a7a	 RIP: 439a3c	 Bytes: 6
  %loadMem_439a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a3c = call %struct.Memory* @routine_jne_.L_439a7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a3c, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_439a3c, %struct.Memory** %MEMORY

  %loadBr_439a3c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439a3c = icmp eq i8 %loadBr_439a3c, 1
  br i1 %cmpBr_439a3c, label %block_.L_439a7a, label %block_439a42

block_439a42:
  ; Code: movl $0x1, %eax	 RIP: 439a42	 Bytes: 5
  %loadMem_439a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a42 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a42)
  store %struct.Memory* %call_439a42, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rcx	 RIP: 439a47	 Bytes: 7
  %loadMem_439a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a47 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a47)
  store %struct.Memory* %call_439a47, %struct.Memory** %MEMORY

  ; Code: movq 0x1d0(%rcx), %rcx	 RIP: 439a4e	 Bytes: 7
  %loadMem_439a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a4e = call %struct.Memory* @routine_movq_0x1d0__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a4e)
  store %struct.Memory* %call_439a4e, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 439a55	 Bytes: 3
  %loadMem_439a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a55 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a55)
  store %struct.Memory* %call_439a55, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xf8(%rbp)	 RIP: 439a58	 Bytes: 7
  %loadMem_439a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a58 = call %struct.Memory* @routine_movq__rcx__MINUS0xf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a58)
  store %struct.Memory* %call_439a58, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 439a5f	 Bytes: 2
  %loadMem_439a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a5f = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a5f)
  store %struct.Memory* %call_439a5f, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 439a61	 Bytes: 2
  %loadMem_439a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a61 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a61)
  store %struct.Memory* %call_439a61, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 439a63	 Bytes: 3
  %loadMem_439a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a63 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a63)
  store %struct.Memory* %call_439a63, %struct.Memory** %MEMORY

  ; Code: movq -0xf8(%rbp), %rdi	 RIP: 439a66	 Bytes: 7
  %loadMem_439a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a66 = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a66)
  store %struct.Memory* %call_439a66, %struct.Memory** %MEMORY

  ; Code: andq %rsi, %rdi	 RIP: 439a6d	 Bytes: 3
  %loadMem_439a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a6d = call %struct.Memory* @routine_andq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a6d)
  store %struct.Memory* %call_439a6d, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rdi	 RIP: 439a70	 Bytes: 4
  %loadMem_439a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a70 = call %struct.Memory* @routine_cmpq__0x0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a70)
  store %struct.Memory* %call_439a70, %struct.Memory** %MEMORY

  ; Code: je .L_439a8b	 RIP: 439a74	 Bytes: 6
  %loadMem_439a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a74 = call %struct.Memory* @routine_je_.L_439a8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a74, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_439a74, %struct.Memory** %MEMORY

  %loadBr_439a74 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439a74 = icmp eq i8 %loadBr_439a74, 1
  br i1 %cmpBr_439a74, label %block_.L_439a8b, label %block_.L_439a7a

  ; Code: .L_439a7a:	 RIP: 439a7a	 Bytes: 0
block_.L_439a7a:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 439a7a	 Bytes: 4
  %loadMem_439a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a7a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a7a)
  store %struct.Memory* %call_439a7a, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 439a7e	 Bytes: 4
  %loadMem_439a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a7e = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a7e)
  store %struct.Memory* %call_439a7e, %struct.Memory** %MEMORY

  ; Code: movb $0x2, (%rax,%rcx,1)	 RIP: 439a82	 Bytes: 4
  %loadMem_439a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a82 = call %struct.Memory* @routine_movb__0x2____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a82)
  store %struct.Memory* %call_439a82, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a27e	 RIP: 439a86	 Bytes: 5
  %loadMem_439a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a86 = call %struct.Memory* @routine_jmpq_.L_43a27e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a86, i64 2040, i64 5)
  store %struct.Memory* %call_439a86, %struct.Memory** %MEMORY

  br label %block_.L_43a27e

  ; Code: .L_439a8b:	 RIP: 439a8b	 Bytes: 0
block_.L_439a8b:

  ; Code: cmpb $0x0, 0x72531c	 RIP: 439a8b	 Bytes: 8
  %loadMem_439a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a8b = call %struct.Memory* @routine_cmpb__0x0__0x72531c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a8b)
  store %struct.Memory* %call_439a8b, %struct.Memory** %MEMORY

  ; Code: je .L_439aaa	 RIP: 439a93	 Bytes: 6
  %loadMem_439a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a93 = call %struct.Memory* @routine_je_.L_439aaa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a93, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_439a93, %struct.Memory** %MEMORY

  %loadBr_439a93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439a93 = icmp eq i8 %loadBr_439a93, 1
  br i1 %cmpBr_439a93, label %block_.L_439aaa, label %block_439a99

block_439a99:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 439a99	 Bytes: 4
  %loadMem_439a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a99 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a99)
  store %struct.Memory* %call_439a99, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 439a9d	 Bytes: 4
  %loadMem_439a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439a9d = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439a9d)
  store %struct.Memory* %call_439a9d, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rax,%rcx,1)	 RIP: 439aa1	 Bytes: 4
  %loadMem_439aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439aa1 = call %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439aa1)
  store %struct.Memory* %call_439aa1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43a279	 RIP: 439aa5	 Bytes: 5
  %loadMem_439aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439aa5 = call %struct.Memory* @routine_jmpq_.L_43a279(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439aa5, i64 2004, i64 5)
  store %struct.Memory* %call_439aa5, %struct.Memory** %MEMORY

  br label %block_.L_43a279

  ; Code: .L_439aaa:	 RIP: 439aaa	 Bytes: 0
block_.L_439aaa:

  ; Code: leaq -0x84(%rbp), %rsi	 RIP: 439aaa	 Bytes: 7
  %loadMem_439aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439aaa = call %struct.Memory* @routine_leaq_MINUS0x84__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439aaa)
  store %struct.Memory* %call_439aaa, %struct.Memory** %MEMORY

  ; Code: leaq -0x88(%rbp), %rdx	 RIP: 439ab1	 Bytes: 7
  %loadMem_439ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ab1 = call %struct.Memory* @routine_leaq_MINUS0x88__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ab1)
  store %struct.Memory* %call_439ab1, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 439ab8	 Bytes: 3
  %loadMem_439ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ab8 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ab8)
  store %struct.Memory* %call_439ab8, %struct.Memory** %MEMORY

  ; Code: callq .get_mb_block_pos	 RIP: 439abb	 Bytes: 5
  %loadMem1_439abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439abb = call %struct.Memory* @routine_callq_.get_mb_block_pos(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439abb, i64 67605, i64 5, i64 5)
  store %struct.Memory* %call1_439abb, %struct.Memory** %MEMORY

  %loadMem2_439abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439abb = load i64, i64* %3
  %call2_439abb = call %struct.Memory* @sub_44a2d0.get_mb_block_pos(%struct.State* %0, i64  %loadPC_439abb, %struct.Memory* %loadMem2_439abb)
  store %struct.Memory* %call2_439abb, %struct.Memory** %MEMORY

  ; Code: movl -0x88(%rbp), %edi	 RIP: 439ac0	 Bytes: 6
  %loadMem_439ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ac0 = call %struct.Memory* @routine_movl_MINUS0x88__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ac0)
  store %struct.Memory* %call_439ac0, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %edi	 RIP: 439ac6	 Bytes: 3
  %loadMem_439ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ac6 = call %struct.Memory* @routine_shll__0x2___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ac6)
  store %struct.Memory* %call_439ac6, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 439ac9	 Bytes: 3
  %loadMem_439ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ac9 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ac9)
  store %struct.Memory* %call_439ac9, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %eax	 RIP: 439acc	 Bytes: 3
  %loadMem_439acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439acc = call %struct.Memory* @routine_sarl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439acc)
  store %struct.Memory* %call_439acc, %struct.Memory** %MEMORY

  ; Code: addl %eax, %edi	 RIP: 439acf	 Bytes: 2
  %loadMem_439acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439acf = call %struct.Memory* @routine_addl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439acf)
  store %struct.Memory* %call_439acf, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x38(%rbp)	 RIP: 439ad1	 Bytes: 3
  %loadMem_439ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ad1 = call %struct.Memory* @routine_movl__edi__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ad1)
  store %struct.Memory* %call_439ad1, %struct.Memory** %MEMORY

  ; Code: movl -0x84(%rbp), %eax	 RIP: 439ad4	 Bytes: 6
  %loadMem_439ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ad4 = call %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ad4)
  store %struct.Memory* %call_439ad4, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 439ada	 Bytes: 3
  %loadMem_439ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ada = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ada)
  store %struct.Memory* %call_439ada, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edi	 RIP: 439add	 Bytes: 3
  %loadMem_439add = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439add = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439add)
  store %struct.Memory* %call_439add, %struct.Memory** %MEMORY

  ; Code: andl $0x3, %edi	 RIP: 439ae0	 Bytes: 3
  %loadMem_439ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ae0 = call %struct.Memory* @routine_andl__0x3___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ae0)
  store %struct.Memory* %call_439ae0, %struct.Memory** %MEMORY

  ; Code: addl %edi, %eax	 RIP: 439ae3	 Bytes: 2
  %loadMem_439ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ae3 = call %struct.Memory* @routine_addl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ae3)
  store %struct.Memory* %call_439ae3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 439ae5	 Bytes: 3
  %loadMem_439ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ae5 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ae5)
  store %struct.Memory* %call_439ae5, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %eax	 RIP: 439ae8	 Bytes: 6
  %loadMem_439ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ae8 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ae8)
  store %struct.Memory* %call_439ae8, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %eax	 RIP: 439aee	 Bytes: 3
  %loadMem_439aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439aee = call %struct.Memory* @routine_sarl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439aee)
  store %struct.Memory* %call_439aee, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 439af1	 Bytes: 3
  %loadMem_439af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439af1 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439af1)
  store %struct.Memory* %call_439af1, %struct.Memory** %MEMORY

  ; Code: movl -0xa0(%rbp), %eax	 RIP: 439af4	 Bytes: 6
  %loadMem_439af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439af4 = call %struct.Memory* @routine_movl_MINUS0xa0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439af4)
  store %struct.Memory* %call_439af4, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %eax	 RIP: 439afa	 Bytes: 3
  %loadMem_439afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439afa = call %struct.Memory* @routine_sarl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439afa)
  store %struct.Memory* %call_439afa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 439afd	 Bytes: 3
  %loadMem_439afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439afd = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439afd)
  store %struct.Memory* %call_439afd, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rdx	 RIP: 439b00	 Bytes: 4
  %loadMem_439b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b00 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b00)
  store %struct.Memory* %call_439b00, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 439b04	 Bytes: 4
  %loadMem_439b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b04 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b04)
  store %struct.Memory* %call_439b04, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 439b08	 Bytes: 4
  %loadMem_439b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b08 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b08)
  store %struct.Memory* %call_439b08, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rsi	 RIP: 439b0c	 Bytes: 4
  %loadMem_439b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b0c = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b0c)
  store %struct.Memory* %call_439b0c, %struct.Memory** %MEMORY

  ; Code: movswl (%rdx,%rsi,2), %eax	 RIP: 439b10	 Bytes: 4
  %loadMem_439b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b10 = call %struct.Memory* @routine_movswl___rdx__rsi_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b10)
  store %struct.Memory* %call_439b10, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 439b14	 Bytes: 3
  %loadMem_439b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b14 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b14)
  store %struct.Memory* %call_439b14, %struct.Memory** %MEMORY

  ; Code: jge .L_439b30	 RIP: 439b17	 Bytes: 6
  %loadMem_439b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b17 = call %struct.Memory* @routine_jge_.L_439b30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b17, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_439b17, %struct.Memory** %MEMORY

  %loadBr_439b17 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439b17 = icmp eq i8 %loadBr_439b17, 1
  br i1 %cmpBr_439b17, label %block_.L_439b30, label %block_439b1d

block_439b1d:
  ; Code: movq $0xffffffffffffffff, %rax	 RIP: 439b1d	 Bytes: 7
  %loadMem_439b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b1d = call %struct.Memory* @routine_movq__0xffffffffffffffff___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b1d)
  store %struct.Memory* %call_439b1d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x100(%rbp)	 RIP: 439b24	 Bytes: 7
  %loadMem_439b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b24 = call %struct.Memory* @routine_movq__rax__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b24)
  store %struct.Memory* %call_439b24, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439b4b	 RIP: 439b2b	 Bytes: 5
  %loadMem_439b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b2b = call %struct.Memory* @routine_jmpq_.L_439b4b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b2b, i64 32, i64 5)
  store %struct.Memory* %call_439b2b, %struct.Memory** %MEMORY

  br label %block_.L_439b4b

  ; Code: .L_439b30:	 RIP: 439b30	 Bytes: 0
block_.L_439b30:

  ; Code: movq -0x68(%rbp), %rax	 RIP: 439b30	 Bytes: 4
  %loadMem_439b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b30 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b30)
  store %struct.Memory* %call_439b30, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 439b34	 Bytes: 4
  %loadMem_439b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b34 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b34)
  store %struct.Memory* %call_439b34, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439b38	 Bytes: 4
  %loadMem_439b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b38 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b38)
  store %struct.Memory* %call_439b38, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 439b3c	 Bytes: 4
  %loadMem_439b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b3c = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b3c)
  store %struct.Memory* %call_439b3c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439b40	 Bytes: 4
  %loadMem_439b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b40 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b40)
  store %struct.Memory* %call_439b40, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x100(%rbp)	 RIP: 439b44	 Bytes: 7
  %loadMem_439b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b44 = call %struct.Memory* @routine_movq__rax__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b44)
  store %struct.Memory* %call_439b44, %struct.Memory** %MEMORY

  ; Code: .L_439b4b:	 RIP: 439b4b	 Bytes: 0
  br label %block_.L_439b4b
block_.L_439b4b:

  ; Code: movq -0x100(%rbp), %rax	 RIP: 439b4b	 Bytes: 7
  %loadMem_439b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b4b = call %struct.Memory* @routine_movq_MINUS0x100__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b4b)
  store %struct.Memory* %call_439b4b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xb8(%rbp)	 RIP: 439b52	 Bytes: 7
  %loadMem_439b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b52 = call %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b52)
  store %struct.Memory* %call_439b52, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 439b59	 Bytes: 4
  %loadMem_439b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b59 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b59)
  store %struct.Memory* %call_439b59, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 439b5d	 Bytes: 4
  %loadMem_439b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b5d = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b5d)
  store %struct.Memory* %call_439b5d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439b61	 Bytes: 4
  %loadMem_439b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b61 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b61)
  store %struct.Memory* %call_439b61, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 439b65	 Bytes: 4
  %loadMem_439b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b65 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b65)
  store %struct.Memory* %call_439b65, %struct.Memory** %MEMORY

  ; Code: movswl (%rax,%rcx,2), %edx	 RIP: 439b69	 Bytes: 4
  %loadMem_439b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b69 = call %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b69)
  store %struct.Memory* %call_439b69, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 439b6d	 Bytes: 3
  %loadMem_439b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b6d = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b6d)
  store %struct.Memory* %call_439b6d, %struct.Memory** %MEMORY

  ; Code: jge .L_439b89	 RIP: 439b70	 Bytes: 6
  %loadMem_439b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b70 = call %struct.Memory* @routine_jge_.L_439b89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b70, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_439b70, %struct.Memory** %MEMORY

  %loadBr_439b70 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439b70 = icmp eq i8 %loadBr_439b70, 1
  br i1 %cmpBr_439b70, label %block_.L_439b89, label %block_439b76

block_439b76:
  ; Code: movq $0xffffffffffffffff, %rax	 RIP: 439b76	 Bytes: 7
  %loadMem_439b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b76 = call %struct.Memory* @routine_movq__0xffffffffffffffff___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b76)
  store %struct.Memory* %call_439b76, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x108(%rbp)	 RIP: 439b7d	 Bytes: 7
  %loadMem_439b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b7d = call %struct.Memory* @routine_movq__rax__MINUS0x108__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b7d)
  store %struct.Memory* %call_439b7d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439ba4	 RIP: 439b84	 Bytes: 5
  %loadMem_439b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b84 = call %struct.Memory* @routine_jmpq_.L_439ba4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b84, i64 32, i64 5)
  store %struct.Memory* %call_439b84, %struct.Memory** %MEMORY

  br label %block_.L_439ba4

  ; Code: .L_439b89:	 RIP: 439b89	 Bytes: 0
block_.L_439b89:

  ; Code: movq -0x68(%rbp), %rax	 RIP: 439b89	 Bytes: 4
  %loadMem_439b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b89 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b89)
  store %struct.Memory* %call_439b89, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 439b8d	 Bytes: 4
  %loadMem_439b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b8d = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b8d)
  store %struct.Memory* %call_439b8d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439b91	 Bytes: 4
  %loadMem_439b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b91 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b91)
  store %struct.Memory* %call_439b91, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 439b95	 Bytes: 4
  %loadMem_439b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b95 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b95)
  store %struct.Memory* %call_439b95, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439b99	 Bytes: 4
  %loadMem_439b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b99 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b99)
  store %struct.Memory* %call_439b99, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x108(%rbp)	 RIP: 439b9d	 Bytes: 7
  %loadMem_439b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439b9d = call %struct.Memory* @routine_movq__rax__MINUS0x108__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439b9d)
  store %struct.Memory* %call_439b9d, %struct.Memory** %MEMORY

  ; Code: .L_439ba4:	 RIP: 439ba4	 Bytes: 0
  br label %block_.L_439ba4
block_.L_439ba4:

  ; Code: movq -0x108(%rbp), %rax	 RIP: 439ba4	 Bytes: 7
  %loadMem_439ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ba4 = call %struct.Memory* @routine_movq_MINUS0x108__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ba4)
  store %struct.Memory* %call_439ba4, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xc8(%rbp)	 RIP: 439bab	 Bytes: 7
  %loadMem_439bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bab = call %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bab)
  store %struct.Memory* %call_439bab, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 439bb2	 Bytes: 4
  %loadMem_439bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bb2 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bb2)
  store %struct.Memory* %call_439bb2, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 439bb6	 Bytes: 4
  %loadMem_439bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bb6 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bb6)
  store %struct.Memory* %call_439bb6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439bba	 Bytes: 4
  %loadMem_439bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bba = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bba)
  store %struct.Memory* %call_439bba, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 439bbe	 Bytes: 4
  %loadMem_439bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bbe = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bbe)
  store %struct.Memory* %call_439bbe, %struct.Memory** %MEMORY

  ; Code: movswl (%rax,%rcx,2), %edx	 RIP: 439bc2	 Bytes: 4
  %loadMem_439bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bc2 = call %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bc2)
  store %struct.Memory* %call_439bc2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 439bc6	 Bytes: 3
  %loadMem_439bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bc6 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bc6)
  store %struct.Memory* %call_439bc6, %struct.Memory** %MEMORY

  ; Code: jge .L_439be2	 RIP: 439bc9	 Bytes: 6
  %loadMem_439bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bc9 = call %struct.Memory* @routine_jge_.L_439be2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bc9, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_439bc9, %struct.Memory** %MEMORY

  %loadBr_439bc9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439bc9 = icmp eq i8 %loadBr_439bc9, 1
  br i1 %cmpBr_439bc9, label %block_.L_439be2, label %block_439bcf

block_439bcf:
  ; Code: movq $0xffffffffffffffff, %rax	 RIP: 439bcf	 Bytes: 7
  %loadMem_439bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bcf = call %struct.Memory* @routine_movq__0xffffffffffffffff___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bcf)
  store %struct.Memory* %call_439bcf, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x110(%rbp)	 RIP: 439bd6	 Bytes: 7
  %loadMem_439bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bd6 = call %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bd6)
  store %struct.Memory* %call_439bd6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439bfd	 RIP: 439bdd	 Bytes: 5
  %loadMem_439bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bdd = call %struct.Memory* @routine_jmpq_.L_439bfd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bdd, i64 32, i64 5)
  store %struct.Memory* %call_439bdd, %struct.Memory** %MEMORY

  br label %block_.L_439bfd

  ; Code: .L_439be2:	 RIP: 439be2	 Bytes: 0
block_.L_439be2:

  ; Code: movq -0x70(%rbp), %rax	 RIP: 439be2	 Bytes: 4
  %loadMem_439be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439be2 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439be2)
  store %struct.Memory* %call_439be2, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 439be6	 Bytes: 4
  %loadMem_439be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439be6 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439be6)
  store %struct.Memory* %call_439be6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439bea	 Bytes: 4
  %loadMem_439bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bea = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bea)
  store %struct.Memory* %call_439bea, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 439bee	 Bytes: 4
  %loadMem_439bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bee = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bee)
  store %struct.Memory* %call_439bee, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439bf2	 Bytes: 4
  %loadMem_439bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bf2 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bf2)
  store %struct.Memory* %call_439bf2, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x110(%rbp)	 RIP: 439bf6	 Bytes: 7
  %loadMem_439bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bf6 = call %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bf6)
  store %struct.Memory* %call_439bf6, %struct.Memory** %MEMORY

  ; Code: .L_439bfd:	 RIP: 439bfd	 Bytes: 0
  br label %block_.L_439bfd
block_.L_439bfd:

  ; Code: movq -0x110(%rbp), %rax	 RIP: 439bfd	 Bytes: 7
  %loadMem_439bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439bfd = call %struct.Memory* @routine_movq_MINUS0x110__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439bfd)
  store %struct.Memory* %call_439bfd, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xc0(%rbp)	 RIP: 439c04	 Bytes: 7
  %loadMem_439c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c04 = call %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c04)
  store %struct.Memory* %call_439c04, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rax	 RIP: 439c0b	 Bytes: 4
  %loadMem_439c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c0b = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c0b)
  store %struct.Memory* %call_439c0b, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 439c0f	 Bytes: 4
  %loadMem_439c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c0f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c0f)
  store %struct.Memory* %call_439c0f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439c13	 Bytes: 4
  %loadMem_439c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c13 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c13)
  store %struct.Memory* %call_439c13, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 439c17	 Bytes: 4
  %loadMem_439c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c17 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c17)
  store %struct.Memory* %call_439c17, %struct.Memory** %MEMORY

  ; Code: movswl (%rax,%rcx,2), %edx	 RIP: 439c1b	 Bytes: 4
  %loadMem_439c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c1b = call %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c1b)
  store %struct.Memory* %call_439c1b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 439c1f	 Bytes: 3
  %loadMem_439c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c1f = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c1f)
  store %struct.Memory* %call_439c1f, %struct.Memory** %MEMORY

  ; Code: jge .L_439c3b	 RIP: 439c22	 Bytes: 6
  %loadMem_439c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c22 = call %struct.Memory* @routine_jge_.L_439c3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c22, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_439c22, %struct.Memory** %MEMORY

  %loadBr_439c22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439c22 = icmp eq i8 %loadBr_439c22, 1
  br i1 %cmpBr_439c22, label %block_.L_439c3b, label %block_439c28

block_439c28:
  ; Code: movq $0xffffffffffffffff, %rax	 RIP: 439c28	 Bytes: 7
  %loadMem_439c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c28 = call %struct.Memory* @routine_movq__0xffffffffffffffff___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c28)
  store %struct.Memory* %call_439c28, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x118(%rbp)	 RIP: 439c2f	 Bytes: 7
  %loadMem_439c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c2f = call %struct.Memory* @routine_movq__rax__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c2f)
  store %struct.Memory* %call_439c2f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439c56	 RIP: 439c36	 Bytes: 5
  %loadMem_439c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c36 = call %struct.Memory* @routine_jmpq_.L_439c56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c36, i64 32, i64 5)
  store %struct.Memory* %call_439c36, %struct.Memory** %MEMORY

  br label %block_.L_439c56

  ; Code: .L_439c3b:	 RIP: 439c3b	 Bytes: 0
block_.L_439c3b:

  ; Code: movq -0x70(%rbp), %rax	 RIP: 439c3b	 Bytes: 4
  %loadMem_439c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c3b = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c3b)
  store %struct.Memory* %call_439c3b, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 439c3f	 Bytes: 4
  %loadMem_439c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c3f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c3f)
  store %struct.Memory* %call_439c3f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439c43	 Bytes: 4
  %loadMem_439c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c43 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c43)
  store %struct.Memory* %call_439c43, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 439c47	 Bytes: 4
  %loadMem_439c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c47 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c47)
  store %struct.Memory* %call_439c47, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439c4b	 Bytes: 4
  %loadMem_439c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c4b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c4b)
  store %struct.Memory* %call_439c4b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x118(%rbp)	 RIP: 439c4f	 Bytes: 7
  %loadMem_439c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c4f = call %struct.Memory* @routine_movq__rax__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c4f)
  store %struct.Memory* %call_439c4f, %struct.Memory** %MEMORY

  ; Code: .L_439c56:	 RIP: 439c56	 Bytes: 0
  br label %block_.L_439c56
block_.L_439c56:

  ; Code: movq -0x118(%rbp), %rax	 RIP: 439c56	 Bytes: 7
  %loadMem_439c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c56 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c56)
  store %struct.Memory* %call_439c56, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xd0(%rbp)	 RIP: 439c5d	 Bytes: 7
  %loadMem_439c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c5d = call %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c5d)
  store %struct.Memory* %call_439c5d, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 439c64	 Bytes: 7
  %loadMem_439c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c64 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c64)
  store %struct.Memory* %call_439c64, %struct.Memory** %MEMORY

  ; Code: cmpq -0xc8(%rbp), %rax	 RIP: 439c6b	 Bytes: 7
  %loadMem_439c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c6b = call %struct.Memory* @routine_cmpq_MINUS0xc8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c6b)
  store %struct.Memory* %call_439c6b, %struct.Memory** %MEMORY

  ; Code: jne .L_439c8c	 RIP: 439c72	 Bytes: 6
  %loadMem_439c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c72 = call %struct.Memory* @routine_jne_.L_439c8c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c72, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_439c72, %struct.Memory** %MEMORY

  %loadBr_439c72 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439c72 = icmp eq i8 %loadBr_439c72, 1
  br i1 %cmpBr_439c72, label %block_.L_439c8c, label %block_439c78

block_439c78:
  ; Code: movq -0xc0(%rbp), %rax	 RIP: 439c78	 Bytes: 7
  %loadMem_439c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c78 = call %struct.Memory* @routine_movq_MINUS0xc0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c78)
  store %struct.Memory* %call_439c78, %struct.Memory** %MEMORY

  ; Code: cmpq -0xd0(%rbp), %rax	 RIP: 439c7f	 Bytes: 7
  %loadMem_439c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c7f = call %struct.Memory* @routine_cmpq_MINUS0xd0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c7f)
  store %struct.Memory* %call_439c7f, %struct.Memory** %MEMORY

  ; Code: je .L_439cb4	 RIP: 439c86	 Bytes: 6
  %loadMem_439c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c86 = call %struct.Memory* @routine_je_.L_439cb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c86, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_439c86, %struct.Memory** %MEMORY

  %loadBr_439c86 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439c86 = icmp eq i8 %loadBr_439c86, 1
  br i1 %cmpBr_439c86, label %block_.L_439cb4, label %block_.L_439c8c

  ; Code: .L_439c8c:	 RIP: 439c8c	 Bytes: 0
block_.L_439c8c:

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 439c8c	 Bytes: 7
  %loadMem_439c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c8c = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c8c)
  store %struct.Memory* %call_439c8c, %struct.Memory** %MEMORY

  ; Code: cmpq -0xd0(%rbp), %rax	 RIP: 439c93	 Bytes: 7
  %loadMem_439c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c93 = call %struct.Memory* @routine_cmpq_MINUS0xd0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c93)
  store %struct.Memory* %call_439c93, %struct.Memory** %MEMORY

  ; Code: jne .L_43a268	 RIP: 439c9a	 Bytes: 6
  %loadMem_439c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439c9a = call %struct.Memory* @routine_jne_.L_43a268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439c9a, i8* %BRANCH_TAKEN, i64 1486, i64 6, i64 6)
  store %struct.Memory* %call_439c9a, %struct.Memory** %MEMORY

  %loadBr_439c9a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439c9a = icmp eq i8 %loadBr_439c9a, 1
  br i1 %cmpBr_439c9a, label %block_.L_43a268, label %block_439ca0

block_439ca0:
  ; Code: movq -0xc0(%rbp), %rax	 RIP: 439ca0	 Bytes: 7
  %loadMem_439ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ca0 = call %struct.Memory* @routine_movq_MINUS0xc0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ca0)
  store %struct.Memory* %call_439ca0, %struct.Memory** %MEMORY

  ; Code: cmpq -0xc8(%rbp), %rax	 RIP: 439ca7	 Bytes: 7
  %loadMem_439ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ca7 = call %struct.Memory* @routine_cmpq_MINUS0xc8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ca7)
  store %struct.Memory* %call_439ca7, %struct.Memory** %MEMORY

  ; Code: jne .L_43a268	 RIP: 439cae	 Bytes: 6
  %loadMem_439cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cae = call %struct.Memory* @routine_jne_.L_43a268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cae, i8* %BRANCH_TAKEN, i64 1466, i64 6, i64 6)
  store %struct.Memory* %call_439cae, %struct.Memory** %MEMORY

  %loadBr_439cae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439cae = icmp eq i8 %loadBr_439cae, 1
  br i1 %cmpBr_439cae, label %block_.L_43a268, label %block_.L_439cb4

  ; Code: .L_439cb4:	 RIP: 439cb4	 Bytes: 0
block_.L_439cb4:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 439cb4	 Bytes: 4
  %loadMem_439cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cb4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cb4)
  store %struct.Memory* %call_439cb4, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 439cb8	 Bytes: 4
  %loadMem_439cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cb8 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cb8)
  store %struct.Memory* %call_439cb8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 439cbc	 Bytes: 4
  %loadMem_439cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cbc = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cbc)
  store %struct.Memory* %call_439cbc, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rax	 RIP: 439cc0	 Bytes: 7
  %loadMem_439cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cc0 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cc0)
  store %struct.Memory* %call_439cc0, %struct.Memory** %MEMORY

  ; Code: cmpq -0xc0(%rbp), %rax	 RIP: 439cc7	 Bytes: 7
  %loadMem_439cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cc7 = call %struct.Memory* @routine_cmpq_MINUS0xc0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cc7)
  store %struct.Memory* %call_439cc7, %struct.Memory** %MEMORY

  ; Code: je .L_439f9c	 RIP: 439cce	 Bytes: 6
  %loadMem_439cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cce = call %struct.Memory* @routine_je_.L_439f9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cce, i8* %BRANCH_TAKEN, i64 718, i64 6, i64 6)
  store %struct.Memory* %call_439cce, %struct.Memory** %MEMORY

  %loadBr_439cce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439cce = icmp eq i8 %loadBr_439cce, 1
  br i1 %cmpBr_439cce, label %block_.L_439f9c, label %block_439cd4

block_439cd4:
  ; Code: movq -0xb8(%rbp), %rax	 RIP: 439cd4	 Bytes: 7
  %loadMem_439cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cd4 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cd4)
  store %struct.Memory* %call_439cd4, %struct.Memory** %MEMORY

  ; Code: cmpq -0xc8(%rbp), %rax	 RIP: 439cdb	 Bytes: 7
  %loadMem_439cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cdb = call %struct.Memory* @routine_cmpq_MINUS0xc8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cdb)
  store %struct.Memory* %call_439cdb, %struct.Memory** %MEMORY

  ; Code: jne .L_439e42	 RIP: 439ce2	 Bytes: 6
  %loadMem_439ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ce2 = call %struct.Memory* @routine_jne_.L_439e42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ce2, i8* %BRANCH_TAKEN, i64 352, i64 6, i64 6)
  store %struct.Memory* %call_439ce2, %struct.Memory** %MEMORY

  %loadBr_439ce2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439ce2 = icmp eq i8 %loadBr_439ce2, 1
  br i1 %cmpBr_439ce2, label %block_.L_439e42, label %block_439ce8

block_439ce8:
  ; Code: movq -0x48(%rbp), %rax	 RIP: 439ce8	 Bytes: 4
  %loadMem_439ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ce8 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ce8)
  store %struct.Memory* %call_439ce8, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 439cec	 Bytes: 4
  %loadMem_439cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cec = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cec)
  store %struct.Memory* %call_439cec, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439cf0	 Bytes: 4
  %loadMem_439cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cf0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cf0)
  store %struct.Memory* %call_439cf0, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 439cf4	 Bytes: 4
  %loadMem_439cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cf4 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cf4)
  store %struct.Memory* %call_439cf4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439cf8	 Bytes: 4
  %loadMem_439cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cf8 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cf8)
  store %struct.Memory* %call_439cf8, %struct.Memory** %MEMORY

  ; Code: movswl (%rax), %edx	 RIP: 439cfc	 Bytes: 3
  %loadMem_439cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cfc = call %struct.Memory* @routine_movswl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cfc)
  store %struct.Memory* %call_439cfc, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 439cff	 Bytes: 4
  %loadMem_439cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439cff = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439cff)
  store %struct.Memory* %call_439cff, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 439d03	 Bytes: 4
  %loadMem_439d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d03 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d03)
  store %struct.Memory* %call_439d03, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439d07	 Bytes: 4
  %loadMem_439d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d07 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d07)
  store %struct.Memory* %call_439d07, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 439d0b	 Bytes: 4
  %loadMem_439d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d0b = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d0b)
  store %struct.Memory* %call_439d0b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439d0f	 Bytes: 4
  %loadMem_439d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d0f = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d0f)
  store %struct.Memory* %call_439d0f, %struct.Memory** %MEMORY

  ; Code: movswl (%rax), %esi	 RIP: 439d13	 Bytes: 3
  %loadMem_439d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d13 = call %struct.Memory* @routine_movswl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d13)
  store %struct.Memory* %call_439d13, %struct.Memory** %MEMORY

  ; Code: subl %esi, %edx	 RIP: 439d16	 Bytes: 2
  %loadMem_439d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d16 = call %struct.Memory* @routine_subl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d16)
  store %struct.Memory* %call_439d16, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edi	 RIP: 439d18	 Bytes: 2
  %loadMem_439d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d18 = call %struct.Memory* @routine_movl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d18)
  store %struct.Memory* %call_439d18, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 439d1a	 Bytes: 5
  %loadMem1_439d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439d1a = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439d1a, i64 -232730, i64 5, i64 5)
  store %struct.Memory* %call1_439d1a, %struct.Memory** %MEMORY

  %loadMem2_439d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439d1a = load i64, i64* %3
  %call2_439d1a = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_439d1a, %struct.Memory* %loadMem2_439d1a)
  store %struct.Memory* %call2_439d1a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %eax	 RIP: 439d1f	 Bytes: 3
  %loadMem_439d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d1f = call %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d1f)
  store %struct.Memory* %call_439d1f, %struct.Memory** %MEMORY

  ; Code: setge %r8b	 RIP: 439d22	 Bytes: 4
  %loadMem_439d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d22 = call %struct.Memory* @routine_setge__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d22)
  store %struct.Memory* %call_439d22, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r8b	 RIP: 439d26	 Bytes: 4
  %loadMem_439d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d26 = call %struct.Memory* @routine_andb__0x1___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d26)
  store %struct.Memory* %call_439d26, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %eax	 RIP: 439d2a	 Bytes: 4
  %loadMem_439d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d2a = call %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d2a)
  store %struct.Memory* %call_439d2a, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 439d2e	 Bytes: 4
  %loadMem_439d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d2e = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d2e)
  store %struct.Memory* %call_439d2e, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r9	 RIP: 439d32	 Bytes: 4
  %loadMem_439d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d32 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d32)
  store %struct.Memory* %call_439d32, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439d36	 Bytes: 4
  %loadMem_439d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d36 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d36)
  store %struct.Memory* %call_439d36, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %r9	 RIP: 439d3a	 Bytes: 4
  %loadMem_439d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d3a = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d3a)
  store %struct.Memory* %call_439d3a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439d3e	 Bytes: 4
  %loadMem_439d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d3e = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d3e)
  store %struct.Memory* %call_439d3e, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %edx	 RIP: 439d42	 Bytes: 4
  %loadMem_439d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d42 = call %struct.Memory* @routine_movswl_0x2__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d42)
  store %struct.Memory* %call_439d42, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 439d46	 Bytes: 4
  %loadMem_439d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d46 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d46)
  store %struct.Memory* %call_439d46, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r9	 RIP: 439d4a	 Bytes: 4
  %loadMem_439d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d4a = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d4a)
  store %struct.Memory* %call_439d4a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439d4e	 Bytes: 4
  %loadMem_439d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d4e = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d4e)
  store %struct.Memory* %call_439d4e, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %r9	 RIP: 439d52	 Bytes: 4
  %loadMem_439d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d52 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d52)
  store %struct.Memory* %call_439d52, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439d56	 Bytes: 4
  %loadMem_439d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d56 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d56)
  store %struct.Memory* %call_439d56, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %esi	 RIP: 439d5a	 Bytes: 4
  %loadMem_439d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d5a = call %struct.Memory* @routine_movswl_0x2__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d5a)
  store %struct.Memory* %call_439d5a, %struct.Memory** %MEMORY

  ; Code: subl %esi, %edx	 RIP: 439d5e	 Bytes: 2
  %loadMem_439d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d5e = call %struct.Memory* @routine_subl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d5e)
  store %struct.Memory* %call_439d5e, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edi	 RIP: 439d60	 Bytes: 2
  %loadMem_439d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d60 = call %struct.Memory* @routine_movl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d60)
  store %struct.Memory* %call_439d60, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x11c(%rbp)	 RIP: 439d62	 Bytes: 6
  %loadMem_439d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d62 = call %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d62)
  store %struct.Memory* %call_439d62, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 439d68	 Bytes: 5
  %loadMem1_439d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439d68 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439d68, i64 -232808, i64 5, i64 5)
  store %struct.Memory* %call1_439d68, %struct.Memory** %MEMORY

  %loadMem2_439d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439d68 = load i64, i64* %3
  %call2_439d68 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_439d68, %struct.Memory* %loadMem2_439d68)
  store %struct.Memory* %call2_439d68, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %eax	 RIP: 439d6d	 Bytes: 3
  %loadMem_439d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d6d = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d6d)
  store %struct.Memory* %call_439d6d, %struct.Memory** %MEMORY

  ; Code: setge %r8b	 RIP: 439d70	 Bytes: 4
  %loadMem_439d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d70 = call %struct.Memory* @routine_setge__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d70)
  store %struct.Memory* %call_439d70, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r8b	 RIP: 439d74	 Bytes: 4
  %loadMem_439d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d74 = call %struct.Memory* @routine_andb__0x1___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d74)
  store %struct.Memory* %call_439d74, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %eax	 RIP: 439d78	 Bytes: 4
  %loadMem_439d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d78 = call %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d78)
  store %struct.Memory* %call_439d78, %struct.Memory** %MEMORY

  ; Code: movl -0x11c(%rbp), %edx	 RIP: 439d7c	 Bytes: 6
  %loadMem_439d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d7c = call %struct.Memory* @routine_movl_MINUS0x11c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d7c)
  store %struct.Memory* %call_439d7c, %struct.Memory** %MEMORY

  ; Code: orl %eax, %edx	 RIP: 439d82	 Bytes: 2
  %loadMem_439d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d82 = call %struct.Memory* @routine_orl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d82)
  store %struct.Memory* %call_439d82, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 439d84	 Bytes: 4
  %loadMem_439d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d84 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d84)
  store %struct.Memory* %call_439d84, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r9	 RIP: 439d88	 Bytes: 4
  %loadMem_439d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d88 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d88)
  store %struct.Memory* %call_439d88, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439d8c	 Bytes: 4
  %loadMem_439d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d8c = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d8c)
  store %struct.Memory* %call_439d8c, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %r9	 RIP: 439d90	 Bytes: 4
  %loadMem_439d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d90 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d90)
  store %struct.Memory* %call_439d90, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439d94	 Bytes: 4
  %loadMem_439d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d94 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d94)
  store %struct.Memory* %call_439d94, %struct.Memory** %MEMORY

  ; Code: movswl (%rcx), %eax	 RIP: 439d98	 Bytes: 3
  %loadMem_439d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d98 = call %struct.Memory* @routine_movswl___rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d98)
  store %struct.Memory* %call_439d98, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 439d9b	 Bytes: 4
  %loadMem_439d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d9b = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d9b)
  store %struct.Memory* %call_439d9b, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r9	 RIP: 439d9f	 Bytes: 4
  %loadMem_439d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439d9f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439d9f)
  store %struct.Memory* %call_439d9f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439da3	 Bytes: 4
  %loadMem_439da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439da3 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439da3)
  store %struct.Memory* %call_439da3, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %r9	 RIP: 439da7	 Bytes: 4
  %loadMem_439da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439da7 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439da7)
  store %struct.Memory* %call_439da7, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439dab	 Bytes: 4
  %loadMem_439dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dab = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dab)
  store %struct.Memory* %call_439dab, %struct.Memory** %MEMORY

  ; Code: movswl (%rcx), %esi	 RIP: 439daf	 Bytes: 3
  %loadMem_439daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439daf = call %struct.Memory* @routine_movswl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439daf)
  store %struct.Memory* %call_439daf, %struct.Memory** %MEMORY

  ; Code: subl %esi, %eax	 RIP: 439db2	 Bytes: 2
  %loadMem_439db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439db2 = call %struct.Memory* @routine_subl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439db2)
  store %struct.Memory* %call_439db2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 439db4	 Bytes: 2
  %loadMem_439db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439db4 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439db4)
  store %struct.Memory* %call_439db4, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x120(%rbp)	 RIP: 439db6	 Bytes: 6
  %loadMem_439db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439db6 = call %struct.Memory* @routine_movl__edx__MINUS0x120__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439db6)
  store %struct.Memory* %call_439db6, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 439dbc	 Bytes: 5
  %loadMem1_439dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439dbc = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439dbc, i64 -232892, i64 5, i64 5)
  store %struct.Memory* %call1_439dbc, %struct.Memory** %MEMORY

  %loadMem2_439dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439dbc = load i64, i64* %3
  %call2_439dbc = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_439dbc, %struct.Memory* %loadMem2_439dbc)
  store %struct.Memory* %call2_439dbc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %eax	 RIP: 439dc1	 Bytes: 3
  %loadMem_439dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dc1 = call %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dc1)
  store %struct.Memory* %call_439dc1, %struct.Memory** %MEMORY

  ; Code: setge %r8b	 RIP: 439dc4	 Bytes: 4
  %loadMem_439dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dc4 = call %struct.Memory* @routine_setge__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dc4)
  store %struct.Memory* %call_439dc4, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r8b	 RIP: 439dc8	 Bytes: 4
  %loadMem_439dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dc8 = call %struct.Memory* @routine_andb__0x1___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dc8)
  store %struct.Memory* %call_439dc8, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %eax	 RIP: 439dcc	 Bytes: 4
  %loadMem_439dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dcc = call %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dcc)
  store %struct.Memory* %call_439dcc, %struct.Memory** %MEMORY

  ; Code: movl -0x120(%rbp), %edx	 RIP: 439dd0	 Bytes: 6
  %loadMem_439dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dd0 = call %struct.Memory* @routine_movl_MINUS0x120__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dd0)
  store %struct.Memory* %call_439dd0, %struct.Memory** %MEMORY

  ; Code: orl %eax, %edx	 RIP: 439dd6	 Bytes: 2
  %loadMem_439dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dd6 = call %struct.Memory* @routine_orl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dd6)
  store %struct.Memory* %call_439dd6, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 439dd8	 Bytes: 4
  %loadMem_439dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dd8 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dd8)
  store %struct.Memory* %call_439dd8, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r9	 RIP: 439ddc	 Bytes: 4
  %loadMem_439ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ddc = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ddc)
  store %struct.Memory* %call_439ddc, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439de0	 Bytes: 4
  %loadMem_439de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439de0 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439de0)
  store %struct.Memory* %call_439de0, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %r9	 RIP: 439de4	 Bytes: 4
  %loadMem_439de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439de4 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439de4)
  store %struct.Memory* %call_439de4, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439de8	 Bytes: 4
  %loadMem_439de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439de8 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439de8)
  store %struct.Memory* %call_439de8, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %eax	 RIP: 439dec	 Bytes: 4
  %loadMem_439dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dec = call %struct.Memory* @routine_movswl_0x2__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dec)
  store %struct.Memory* %call_439dec, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 439df0	 Bytes: 4
  %loadMem_439df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439df0 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439df0)
  store %struct.Memory* %call_439df0, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r9	 RIP: 439df4	 Bytes: 4
  %loadMem_439df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439df4 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439df4)
  store %struct.Memory* %call_439df4, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439df8	 Bytes: 4
  %loadMem_439df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439df8 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439df8)
  store %struct.Memory* %call_439df8, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %r9	 RIP: 439dfc	 Bytes: 4
  %loadMem_439dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439dfc = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439dfc)
  store %struct.Memory* %call_439dfc, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439e00	 Bytes: 4
  %loadMem_439e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e00 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e00)
  store %struct.Memory* %call_439e00, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %esi	 RIP: 439e04	 Bytes: 4
  %loadMem_439e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e04 = call %struct.Memory* @routine_movswl_0x2__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e04)
  store %struct.Memory* %call_439e04, %struct.Memory** %MEMORY

  ; Code: subl %esi, %eax	 RIP: 439e08	 Bytes: 2
  %loadMem_439e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e08 = call %struct.Memory* @routine_subl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e08)
  store %struct.Memory* %call_439e08, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 439e0a	 Bytes: 2
  %loadMem_439e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e0a = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e0a)
  store %struct.Memory* %call_439e0a, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x124(%rbp)	 RIP: 439e0c	 Bytes: 6
  %loadMem_439e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e0c = call %struct.Memory* @routine_movl__edx__MINUS0x124__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e0c)
  store %struct.Memory* %call_439e0c, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 439e12	 Bytes: 5
  %loadMem1_439e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439e12 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439e12, i64 -232978, i64 5, i64 5)
  store %struct.Memory* %call1_439e12, %struct.Memory** %MEMORY

  %loadMem2_439e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439e12 = load i64, i64* %3
  %call2_439e12 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_439e12, %struct.Memory* %loadMem2_439e12)
  store %struct.Memory* %call2_439e12, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %eax	 RIP: 439e17	 Bytes: 3
  %loadMem_439e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e17 = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e17)
  store %struct.Memory* %call_439e17, %struct.Memory** %MEMORY

  ; Code: setge %r8b	 RIP: 439e1a	 Bytes: 4
  %loadMem_439e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e1a = call %struct.Memory* @routine_setge__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e1a)
  store %struct.Memory* %call_439e1a, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r8b	 RIP: 439e1e	 Bytes: 4
  %loadMem_439e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e1e = call %struct.Memory* @routine_andb__0x1___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e1e)
  store %struct.Memory* %call_439e1e, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %eax	 RIP: 439e22	 Bytes: 4
  %loadMem_439e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e22 = call %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e22)
  store %struct.Memory* %call_439e22, %struct.Memory** %MEMORY

  ; Code: movl -0x124(%rbp), %edx	 RIP: 439e26	 Bytes: 6
  %loadMem_439e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e26 = call %struct.Memory* @routine_movl_MINUS0x124__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e26)
  store %struct.Memory* %call_439e26, %struct.Memory** %MEMORY

  ; Code: orl %eax, %edx	 RIP: 439e2c	 Bytes: 2
  %loadMem_439e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e2c = call %struct.Memory* @routine_orl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e2c)
  store %struct.Memory* %call_439e2c, %struct.Memory** %MEMORY

  ; Code: movb %dl, %r8b	 RIP: 439e2e	 Bytes: 3
  %loadMem_439e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e2e = call %struct.Memory* @routine_movb__dl___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e2e)
  store %struct.Memory* %call_439e2e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 439e31	 Bytes: 4
  %loadMem_439e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e31 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e31)
  store %struct.Memory* %call_439e31, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r9	 RIP: 439e35	 Bytes: 4
  %loadMem_439e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e35 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e35)
  store %struct.Memory* %call_439e35, %struct.Memory** %MEMORY

  ; Code: movb %r8b, (%rcx,%r9,1)	 RIP: 439e39	 Bytes: 4
  %loadMem_439e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e39 = call %struct.Memory* @routine_movb__r8b____rcx__r9_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e39)
  store %struct.Memory* %call_439e39, %struct.Memory** %MEMORY

  ; Code: jmpq .L_439f97	 RIP: 439e3d	 Bytes: 5
  %loadMem_439e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e3d = call %struct.Memory* @routine_jmpq_.L_439f97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e3d, i64 346, i64 5)
  store %struct.Memory* %call_439e3d, %struct.Memory** %MEMORY

  br label %block_.L_439f97

  ; Code: .L_439e42:	 RIP: 439e42	 Bytes: 0
block_.L_439e42:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 439e42	 Bytes: 4
  %loadMem_439e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e42 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e42)
  store %struct.Memory* %call_439e42, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 439e46	 Bytes: 4
  %loadMem_439e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e46 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e46)
  store %struct.Memory* %call_439e46, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439e4a	 Bytes: 4
  %loadMem_439e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e4a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e4a)
  store %struct.Memory* %call_439e4a, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 439e4e	 Bytes: 4
  %loadMem_439e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e4e = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e4e)
  store %struct.Memory* %call_439e4e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439e52	 Bytes: 4
  %loadMem_439e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e52 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e52)
  store %struct.Memory* %call_439e52, %struct.Memory** %MEMORY

  ; Code: movswl (%rax), %edx	 RIP: 439e56	 Bytes: 3
  %loadMem_439e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e56 = call %struct.Memory* @routine_movswl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e56)
  store %struct.Memory* %call_439e56, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 439e59	 Bytes: 4
  %loadMem_439e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e59 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e59)
  store %struct.Memory* %call_439e59, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 439e5d	 Bytes: 4
  %loadMem_439e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e5d = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e5d)
  store %struct.Memory* %call_439e5d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439e61	 Bytes: 4
  %loadMem_439e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e61 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e61)
  store %struct.Memory* %call_439e61, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 439e65	 Bytes: 4
  %loadMem_439e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e65 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e65)
  store %struct.Memory* %call_439e65, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439e69	 Bytes: 4
  %loadMem_439e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e69 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e69)
  store %struct.Memory* %call_439e69, %struct.Memory** %MEMORY

  ; Code: movswl (%rax), %esi	 RIP: 439e6d	 Bytes: 3
  %loadMem_439e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e6d = call %struct.Memory* @routine_movswl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e6d)
  store %struct.Memory* %call_439e6d, %struct.Memory** %MEMORY

  ; Code: subl %esi, %edx	 RIP: 439e70	 Bytes: 2
  %loadMem_439e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e70 = call %struct.Memory* @routine_subl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e70)
  store %struct.Memory* %call_439e70, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edi	 RIP: 439e72	 Bytes: 2
  %loadMem_439e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e72 = call %struct.Memory* @routine_movl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e72)
  store %struct.Memory* %call_439e72, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 439e74	 Bytes: 5
  %loadMem1_439e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439e74 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439e74, i64 -233076, i64 5, i64 5)
  store %struct.Memory* %call1_439e74, %struct.Memory** %MEMORY

  %loadMem2_439e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439e74 = load i64, i64* %3
  %call2_439e74 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_439e74, %struct.Memory* %loadMem2_439e74)
  store %struct.Memory* %call2_439e74, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %eax	 RIP: 439e79	 Bytes: 3
  %loadMem_439e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e79 = call %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e79)
  store %struct.Memory* %call_439e79, %struct.Memory** %MEMORY

  ; Code: setge %r8b	 RIP: 439e7c	 Bytes: 4
  %loadMem_439e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e7c = call %struct.Memory* @routine_setge__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e7c)
  store %struct.Memory* %call_439e7c, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r8b	 RIP: 439e80	 Bytes: 4
  %loadMem_439e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e80 = call %struct.Memory* @routine_andb__0x1___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e80)
  store %struct.Memory* %call_439e80, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %eax	 RIP: 439e84	 Bytes: 4
  %loadMem_439e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e84 = call %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e84)
  store %struct.Memory* %call_439e84, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 439e88	 Bytes: 4
  %loadMem_439e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e88 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e88)
  store %struct.Memory* %call_439e88, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r9	 RIP: 439e8c	 Bytes: 4
  %loadMem_439e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e8c = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e8c)
  store %struct.Memory* %call_439e8c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439e90	 Bytes: 4
  %loadMem_439e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e90 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e90)
  store %struct.Memory* %call_439e90, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %r9	 RIP: 439e94	 Bytes: 4
  %loadMem_439e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e94 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e94)
  store %struct.Memory* %call_439e94, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439e98	 Bytes: 4
  %loadMem_439e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e98 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e98)
  store %struct.Memory* %call_439e98, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %edx	 RIP: 439e9c	 Bytes: 4
  %loadMem_439e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439e9c = call %struct.Memory* @routine_movswl_0x2__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439e9c)
  store %struct.Memory* %call_439e9c, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 439ea0	 Bytes: 4
  %loadMem_439ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ea0 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ea0)
  store %struct.Memory* %call_439ea0, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r9	 RIP: 439ea4	 Bytes: 4
  %loadMem_439ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ea4 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ea4)
  store %struct.Memory* %call_439ea4, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439ea8	 Bytes: 4
  %loadMem_439ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ea8 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ea8)
  store %struct.Memory* %call_439ea8, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %r9	 RIP: 439eac	 Bytes: 4
  %loadMem_439eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439eac = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439eac)
  store %struct.Memory* %call_439eac, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439eb0	 Bytes: 4
  %loadMem_439eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439eb0 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439eb0)
  store %struct.Memory* %call_439eb0, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %esi	 RIP: 439eb4	 Bytes: 4
  %loadMem_439eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439eb4 = call %struct.Memory* @routine_movswl_0x2__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439eb4)
  store %struct.Memory* %call_439eb4, %struct.Memory** %MEMORY

  ; Code: subl %esi, %edx	 RIP: 439eb8	 Bytes: 2
  %loadMem_439eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439eb8 = call %struct.Memory* @routine_subl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439eb8)
  store %struct.Memory* %call_439eb8, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edi	 RIP: 439eba	 Bytes: 2
  %loadMem_439eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439eba = call %struct.Memory* @routine_movl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439eba)
  store %struct.Memory* %call_439eba, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x128(%rbp)	 RIP: 439ebc	 Bytes: 6
  %loadMem_439ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ebc = call %struct.Memory* @routine_movl__eax__MINUS0x128__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ebc)
  store %struct.Memory* %call_439ebc, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 439ec2	 Bytes: 5
  %loadMem1_439ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439ec2 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439ec2, i64 -233154, i64 5, i64 5)
  store %struct.Memory* %call1_439ec2, %struct.Memory** %MEMORY

  %loadMem2_439ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439ec2 = load i64, i64* %3
  %call2_439ec2 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_439ec2, %struct.Memory* %loadMem2_439ec2)
  store %struct.Memory* %call2_439ec2, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %eax	 RIP: 439ec7	 Bytes: 3
  %loadMem_439ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ec7 = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ec7)
  store %struct.Memory* %call_439ec7, %struct.Memory** %MEMORY

  ; Code: setge %r8b	 RIP: 439eca	 Bytes: 4
  %loadMem_439eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439eca = call %struct.Memory* @routine_setge__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439eca)
  store %struct.Memory* %call_439eca, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r8b	 RIP: 439ece	 Bytes: 4
  %loadMem_439ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ece = call %struct.Memory* @routine_andb__0x1___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ece)
  store %struct.Memory* %call_439ece, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %eax	 RIP: 439ed2	 Bytes: 4
  %loadMem_439ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ed2 = call %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ed2)
  store %struct.Memory* %call_439ed2, %struct.Memory** %MEMORY

  ; Code: movl -0x128(%rbp), %edx	 RIP: 439ed6	 Bytes: 6
  %loadMem_439ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ed6 = call %struct.Memory* @routine_movl_MINUS0x128__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ed6)
  store %struct.Memory* %call_439ed6, %struct.Memory** %MEMORY

  ; Code: orl %eax, %edx	 RIP: 439edc	 Bytes: 2
  %loadMem_439edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439edc = call %struct.Memory* @routine_orl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439edc)
  store %struct.Memory* %call_439edc, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 439ede	 Bytes: 4
  %loadMem_439ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ede = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ede)
  store %struct.Memory* %call_439ede, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r9	 RIP: 439ee2	 Bytes: 4
  %loadMem_439ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ee2 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ee2)
  store %struct.Memory* %call_439ee2, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439ee6	 Bytes: 4
  %loadMem_439ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ee6 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ee6)
  store %struct.Memory* %call_439ee6, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %r9	 RIP: 439eea	 Bytes: 4
  %loadMem_439eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439eea = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439eea)
  store %struct.Memory* %call_439eea, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439eee	 Bytes: 4
  %loadMem_439eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439eee = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439eee)
  store %struct.Memory* %call_439eee, %struct.Memory** %MEMORY

  ; Code: movswl (%rcx), %eax	 RIP: 439ef2	 Bytes: 3
  %loadMem_439ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ef2 = call %struct.Memory* @routine_movswl___rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ef2)
  store %struct.Memory* %call_439ef2, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 439ef5	 Bytes: 4
  %loadMem_439ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ef5 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ef5)
  store %struct.Memory* %call_439ef5, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r9	 RIP: 439ef9	 Bytes: 4
  %loadMem_439ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ef9 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ef9)
  store %struct.Memory* %call_439ef9, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439efd	 Bytes: 4
  %loadMem_439efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439efd = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439efd)
  store %struct.Memory* %call_439efd, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %r9	 RIP: 439f01	 Bytes: 4
  %loadMem_439f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f01 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f01)
  store %struct.Memory* %call_439f01, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439f05	 Bytes: 4
  %loadMem_439f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f05 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f05)
  store %struct.Memory* %call_439f05, %struct.Memory** %MEMORY

  ; Code: movswl (%rcx), %esi	 RIP: 439f09	 Bytes: 3
  %loadMem_439f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f09 = call %struct.Memory* @routine_movswl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f09)
  store %struct.Memory* %call_439f09, %struct.Memory** %MEMORY

  ; Code: subl %esi, %eax	 RIP: 439f0c	 Bytes: 2
  %loadMem_439f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f0c = call %struct.Memory* @routine_subl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f0c)
  store %struct.Memory* %call_439f0c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 439f0e	 Bytes: 2
  %loadMem_439f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f0e = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f0e)
  store %struct.Memory* %call_439f0e, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x12c(%rbp)	 RIP: 439f10	 Bytes: 6
  %loadMem_439f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f10 = call %struct.Memory* @routine_movl__edx__MINUS0x12c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f10)
  store %struct.Memory* %call_439f10, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 439f16	 Bytes: 5
  %loadMem1_439f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439f16 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439f16, i64 -233238, i64 5, i64 5)
  store %struct.Memory* %call1_439f16, %struct.Memory** %MEMORY

  %loadMem2_439f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439f16 = load i64, i64* %3
  %call2_439f16 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_439f16, %struct.Memory* %loadMem2_439f16)
  store %struct.Memory* %call2_439f16, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %eax	 RIP: 439f1b	 Bytes: 3
  %loadMem_439f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f1b = call %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f1b)
  store %struct.Memory* %call_439f1b, %struct.Memory** %MEMORY

  ; Code: setge %r8b	 RIP: 439f1e	 Bytes: 4
  %loadMem_439f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f1e = call %struct.Memory* @routine_setge__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f1e)
  store %struct.Memory* %call_439f1e, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r8b	 RIP: 439f22	 Bytes: 4
  %loadMem_439f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f22 = call %struct.Memory* @routine_andb__0x1___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f22)
  store %struct.Memory* %call_439f22, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %eax	 RIP: 439f26	 Bytes: 4
  %loadMem_439f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f26 = call %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f26)
  store %struct.Memory* %call_439f26, %struct.Memory** %MEMORY

  ; Code: movl -0x12c(%rbp), %edx	 RIP: 439f2a	 Bytes: 6
  %loadMem_439f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f2a = call %struct.Memory* @routine_movl_MINUS0x12c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f2a)
  store %struct.Memory* %call_439f2a, %struct.Memory** %MEMORY

  ; Code: orl %eax, %edx	 RIP: 439f30	 Bytes: 2
  %loadMem_439f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f30 = call %struct.Memory* @routine_orl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f30)
  store %struct.Memory* %call_439f30, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 439f32	 Bytes: 4
  %loadMem_439f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f32 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f32)
  store %struct.Memory* %call_439f32, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r9	 RIP: 439f36	 Bytes: 4
  %loadMem_439f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f36 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f36)
  store %struct.Memory* %call_439f36, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439f3a	 Bytes: 4
  %loadMem_439f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f3a = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f3a)
  store %struct.Memory* %call_439f3a, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %r9	 RIP: 439f3e	 Bytes: 4
  %loadMem_439f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f3e = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f3e)
  store %struct.Memory* %call_439f3e, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439f42	 Bytes: 4
  %loadMem_439f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f42 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f42)
  store %struct.Memory* %call_439f42, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %eax	 RIP: 439f46	 Bytes: 4
  %loadMem_439f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f46 = call %struct.Memory* @routine_movswl_0x2__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f46)
  store %struct.Memory* %call_439f46, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 439f4a	 Bytes: 4
  %loadMem_439f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f4a = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f4a)
  store %struct.Memory* %call_439f4a, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r9	 RIP: 439f4e	 Bytes: 4
  %loadMem_439f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f4e = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f4e)
  store %struct.Memory* %call_439f4e, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439f52	 Bytes: 4
  %loadMem_439f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f52 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f52)
  store %struct.Memory* %call_439f52, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %r9	 RIP: 439f56	 Bytes: 4
  %loadMem_439f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f56 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f56)
  store %struct.Memory* %call_439f56, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439f5a	 Bytes: 4
  %loadMem_439f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f5a = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f5a)
  store %struct.Memory* %call_439f5a, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %esi	 RIP: 439f5e	 Bytes: 4
  %loadMem_439f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f5e = call %struct.Memory* @routine_movswl_0x2__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f5e)
  store %struct.Memory* %call_439f5e, %struct.Memory** %MEMORY

  ; Code: subl %esi, %eax	 RIP: 439f62	 Bytes: 2
  %loadMem_439f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f62 = call %struct.Memory* @routine_subl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f62)
  store %struct.Memory* %call_439f62, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 439f64	 Bytes: 2
  %loadMem_439f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f64 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f64)
  store %struct.Memory* %call_439f64, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x130(%rbp)	 RIP: 439f66	 Bytes: 6
  %loadMem_439f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f66 = call %struct.Memory* @routine_movl__edx__MINUS0x130__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f66)
  store %struct.Memory* %call_439f66, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 439f6c	 Bytes: 5
  %loadMem1_439f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439f6c = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439f6c, i64 -233324, i64 5, i64 5)
  store %struct.Memory* %call1_439f6c, %struct.Memory** %MEMORY

  %loadMem2_439f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439f6c = load i64, i64* %3
  %call2_439f6c = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_439f6c, %struct.Memory* %loadMem2_439f6c)
  store %struct.Memory* %call2_439f6c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %eax	 RIP: 439f71	 Bytes: 3
  %loadMem_439f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f71 = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f71)
  store %struct.Memory* %call_439f71, %struct.Memory** %MEMORY

  ; Code: setge %r8b	 RIP: 439f74	 Bytes: 4
  %loadMem_439f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f74 = call %struct.Memory* @routine_setge__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f74)
  store %struct.Memory* %call_439f74, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r8b	 RIP: 439f78	 Bytes: 4
  %loadMem_439f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f78 = call %struct.Memory* @routine_andb__0x1___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f78)
  store %struct.Memory* %call_439f78, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %eax	 RIP: 439f7c	 Bytes: 4
  %loadMem_439f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f7c = call %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f7c)
  store %struct.Memory* %call_439f7c, %struct.Memory** %MEMORY

  ; Code: movl -0x130(%rbp), %edx	 RIP: 439f80	 Bytes: 6
  %loadMem_439f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f80 = call %struct.Memory* @routine_movl_MINUS0x130__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f80)
  store %struct.Memory* %call_439f80, %struct.Memory** %MEMORY

  ; Code: orl %eax, %edx	 RIP: 439f86	 Bytes: 2
  %loadMem_439f86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f86 = call %struct.Memory* @routine_orl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f86)
  store %struct.Memory* %call_439f86, %struct.Memory** %MEMORY

  ; Code: movb %dl, %r8b	 RIP: 439f88	 Bytes: 3
  %loadMem_439f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f88 = call %struct.Memory* @routine_movb__dl___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f88)
  store %struct.Memory* %call_439f88, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 439f8b	 Bytes: 4
  %loadMem_439f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f8b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f8b)
  store %struct.Memory* %call_439f8b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r9	 RIP: 439f8f	 Bytes: 4
  %loadMem_439f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f8f = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f8f)
  store %struct.Memory* %call_439f8f, %struct.Memory** %MEMORY

  ; Code: movb %r8b, (%rcx,%r9,1)	 RIP: 439f93	 Bytes: 4
  %loadMem_439f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f93 = call %struct.Memory* @routine_movb__r8b____rcx__r9_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f93)
  store %struct.Memory* %call_439f93, %struct.Memory** %MEMORY

  ; Code: .L_439f97:	 RIP: 439f97	 Bytes: 0
  br label %block_.L_439f97
block_.L_439f97:

  ; Code: jmpq .L_43a263	 RIP: 439f97	 Bytes: 5
  %loadMem_439f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f97 = call %struct.Memory* @routine_jmpq_.L_43a263(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f97, i64 716, i64 5)
  store %struct.Memory* %call_439f97, %struct.Memory** %MEMORY

  br label %block_.L_43a263

  ; Code: .L_439f9c:	 RIP: 439f9c	 Bytes: 0
block_.L_439f9c:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 439f9c	 Bytes: 4
  %loadMem_439f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439f9c = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439f9c)
  store %struct.Memory* %call_439f9c, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 439fa0	 Bytes: 4
  %loadMem_439fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fa0 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fa0)
  store %struct.Memory* %call_439fa0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439fa4	 Bytes: 4
  %loadMem_439fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fa4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fa4)
  store %struct.Memory* %call_439fa4, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 439fa8	 Bytes: 4
  %loadMem_439fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fa8 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fa8)
  store %struct.Memory* %call_439fa8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439fac	 Bytes: 4
  %loadMem_439fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fac = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fac)
  store %struct.Memory* %call_439fac, %struct.Memory** %MEMORY

  ; Code: movswl (%rax), %edx	 RIP: 439fb0	 Bytes: 3
  %loadMem_439fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fb0 = call %struct.Memory* @routine_movswl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fb0)
  store %struct.Memory* %call_439fb0, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 439fb3	 Bytes: 4
  %loadMem_439fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fb3 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fb3)
  store %struct.Memory* %call_439fb3, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 439fb7	 Bytes: 4
  %loadMem_439fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fb7 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fb7)
  store %struct.Memory* %call_439fb7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439fbb	 Bytes: 4
  %loadMem_439fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fbb = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fbb)
  store %struct.Memory* %call_439fbb, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 439fbf	 Bytes: 4
  %loadMem_439fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fbf = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fbf)
  store %struct.Memory* %call_439fbf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 439fc3	 Bytes: 4
  %loadMem_439fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fc3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fc3)
  store %struct.Memory* %call_439fc3, %struct.Memory** %MEMORY

  ; Code: movswl (%rax), %esi	 RIP: 439fc7	 Bytes: 3
  %loadMem_439fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fc7 = call %struct.Memory* @routine_movswl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fc7)
  store %struct.Memory* %call_439fc7, %struct.Memory** %MEMORY

  ; Code: subl %esi, %edx	 RIP: 439fca	 Bytes: 2
  %loadMem_439fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fca = call %struct.Memory* @routine_subl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fca)
  store %struct.Memory* %call_439fca, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edi	 RIP: 439fcc	 Bytes: 2
  %loadMem_439fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fcc = call %struct.Memory* @routine_movl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fcc)
  store %struct.Memory* %call_439fcc, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 439fce	 Bytes: 5
  %loadMem1_439fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_439fce = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_439fce, i64 -233422, i64 5, i64 5)
  store %struct.Memory* %call1_439fce, %struct.Memory** %MEMORY

  %loadMem2_439fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439fce = load i64, i64* %3
  %call2_439fce = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_439fce, %struct.Memory* %loadMem2_439fce)
  store %struct.Memory* %call2_439fce, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %eax	 RIP: 439fd3	 Bytes: 3
  %loadMem_439fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fd3 = call %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fd3)
  store %struct.Memory* %call_439fd3, %struct.Memory** %MEMORY

  ; Code: setge %r8b	 RIP: 439fd6	 Bytes: 4
  %loadMem_439fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fd6 = call %struct.Memory* @routine_setge__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fd6)
  store %struct.Memory* %call_439fd6, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r8b	 RIP: 439fda	 Bytes: 4
  %loadMem_439fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fda = call %struct.Memory* @routine_andb__0x1___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fda)
  store %struct.Memory* %call_439fda, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %eax	 RIP: 439fde	 Bytes: 4
  %loadMem_439fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fde = call %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fde)
  store %struct.Memory* %call_439fde, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 439fe2	 Bytes: 4
  %loadMem_439fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fe2 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fe2)
  store %struct.Memory* %call_439fe2, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r9	 RIP: 439fe6	 Bytes: 4
  %loadMem_439fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fe6 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fe6)
  store %struct.Memory* %call_439fe6, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439fea	 Bytes: 4
  %loadMem_439fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fea = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fea)
  store %struct.Memory* %call_439fea, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %r9	 RIP: 439fee	 Bytes: 4
  %loadMem_439fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439fee = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439fee)
  store %struct.Memory* %call_439fee, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 439ff2	 Bytes: 4
  %loadMem_439ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ff2 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ff2)
  store %struct.Memory* %call_439ff2, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %edx	 RIP: 439ff6	 Bytes: 4
  %loadMem_439ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ff6 = call %struct.Memory* @routine_movswl_0x2__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ff6)
  store %struct.Memory* %call_439ff6, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 439ffa	 Bytes: 4
  %loadMem_439ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ffa = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ffa)
  store %struct.Memory* %call_439ffa, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r9	 RIP: 439ffe	 Bytes: 4
  %loadMem_439ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_439ffe = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_439ffe)
  store %struct.Memory* %call_439ffe, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a002	 Bytes: 4
  %loadMem_43a002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a002 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a002)
  store %struct.Memory* %call_43a002, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %r9	 RIP: 43a006	 Bytes: 4
  %loadMem_43a006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a006 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a006)
  store %struct.Memory* %call_43a006, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a00a	 Bytes: 4
  %loadMem_43a00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a00a = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a00a)
  store %struct.Memory* %call_43a00a, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %esi	 RIP: 43a00e	 Bytes: 4
  %loadMem_43a00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a00e = call %struct.Memory* @routine_movswl_0x2__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a00e)
  store %struct.Memory* %call_43a00e, %struct.Memory** %MEMORY

  ; Code: subl %esi, %edx	 RIP: 43a012	 Bytes: 2
  %loadMem_43a012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a012 = call %struct.Memory* @routine_subl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a012)
  store %struct.Memory* %call_43a012, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edi	 RIP: 43a014	 Bytes: 2
  %loadMem_43a014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a014 = call %struct.Memory* @routine_movl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a014)
  store %struct.Memory* %call_43a014, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x134(%rbp)	 RIP: 43a016	 Bytes: 6
  %loadMem_43a016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a016 = call %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a016)
  store %struct.Memory* %call_43a016, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 43a01c	 Bytes: 5
  %loadMem1_43a01c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43a01c = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43a01c, i64 -233500, i64 5, i64 5)
  store %struct.Memory* %call1_43a01c, %struct.Memory** %MEMORY

  %loadMem2_43a01c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43a01c = load i64, i64* %3
  %call2_43a01c = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_43a01c, %struct.Memory* %loadMem2_43a01c)
  store %struct.Memory* %call2_43a01c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %eax	 RIP: 43a021	 Bytes: 3
  %loadMem_43a021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a021 = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a021)
  store %struct.Memory* %call_43a021, %struct.Memory** %MEMORY

  ; Code: setge %r8b	 RIP: 43a024	 Bytes: 4
  %loadMem_43a024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a024 = call %struct.Memory* @routine_setge__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a024)
  store %struct.Memory* %call_43a024, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r8b	 RIP: 43a028	 Bytes: 4
  %loadMem_43a028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a028 = call %struct.Memory* @routine_andb__0x1___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a028)
  store %struct.Memory* %call_43a028, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %eax	 RIP: 43a02c	 Bytes: 4
  %loadMem_43a02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a02c = call %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a02c)
  store %struct.Memory* %call_43a02c, %struct.Memory** %MEMORY

  ; Code: movl -0x134(%rbp), %edx	 RIP: 43a030	 Bytes: 6
  %loadMem_43a030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a030 = call %struct.Memory* @routine_movl_MINUS0x134__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a030)
  store %struct.Memory* %call_43a030, %struct.Memory** %MEMORY

  ; Code: orl %eax, %edx	 RIP: 43a036	 Bytes: 2
  %loadMem_43a036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a036 = call %struct.Memory* @routine_orl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a036)
  store %struct.Memory* %call_43a036, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 43a038	 Bytes: 4
  %loadMem_43a038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a038 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a038)
  store %struct.Memory* %call_43a038, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r9	 RIP: 43a03c	 Bytes: 4
  %loadMem_43a03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a03c = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a03c)
  store %struct.Memory* %call_43a03c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a040	 Bytes: 4
  %loadMem_43a040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a040 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a040)
  store %struct.Memory* %call_43a040, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %r9	 RIP: 43a044	 Bytes: 4
  %loadMem_43a044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a044 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a044)
  store %struct.Memory* %call_43a044, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a048	 Bytes: 4
  %loadMem_43a048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a048 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a048)
  store %struct.Memory* %call_43a048, %struct.Memory** %MEMORY

  ; Code: movswl (%rcx), %eax	 RIP: 43a04c	 Bytes: 3
  %loadMem_43a04c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a04c = call %struct.Memory* @routine_movswl___rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a04c)
  store %struct.Memory* %call_43a04c, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 43a04f	 Bytes: 4
  %loadMem_43a04f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a04f = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a04f)
  store %struct.Memory* %call_43a04f, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r9	 RIP: 43a053	 Bytes: 4
  %loadMem_43a053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a053 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a053)
  store %struct.Memory* %call_43a053, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a057	 Bytes: 4
  %loadMem_43a057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a057 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a057)
  store %struct.Memory* %call_43a057, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %r9	 RIP: 43a05b	 Bytes: 4
  %loadMem_43a05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a05b = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a05b)
  store %struct.Memory* %call_43a05b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a05f	 Bytes: 4
  %loadMem_43a05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a05f = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a05f)
  store %struct.Memory* %call_43a05f, %struct.Memory** %MEMORY

  ; Code: movswl (%rcx), %esi	 RIP: 43a063	 Bytes: 3
  %loadMem_43a063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a063 = call %struct.Memory* @routine_movswl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a063)
  store %struct.Memory* %call_43a063, %struct.Memory** %MEMORY

  ; Code: subl %esi, %eax	 RIP: 43a066	 Bytes: 2
  %loadMem_43a066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a066 = call %struct.Memory* @routine_subl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a066)
  store %struct.Memory* %call_43a066, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 43a068	 Bytes: 2
  %loadMem_43a068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a068 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a068)
  store %struct.Memory* %call_43a068, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x138(%rbp)	 RIP: 43a06a	 Bytes: 6
  %loadMem_43a06a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a06a = call %struct.Memory* @routine_movl__edx__MINUS0x138__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a06a)
  store %struct.Memory* %call_43a06a, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 43a070	 Bytes: 5
  %loadMem1_43a070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43a070 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43a070, i64 -233584, i64 5, i64 5)
  store %struct.Memory* %call1_43a070, %struct.Memory** %MEMORY

  %loadMem2_43a070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43a070 = load i64, i64* %3
  %call2_43a070 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_43a070, %struct.Memory* %loadMem2_43a070)
  store %struct.Memory* %call2_43a070, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %eax	 RIP: 43a075	 Bytes: 3
  %loadMem_43a075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a075 = call %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a075)
  store %struct.Memory* %call_43a075, %struct.Memory** %MEMORY

  ; Code: setge %r8b	 RIP: 43a078	 Bytes: 4
  %loadMem_43a078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a078 = call %struct.Memory* @routine_setge__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a078)
  store %struct.Memory* %call_43a078, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r8b	 RIP: 43a07c	 Bytes: 4
  %loadMem_43a07c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a07c = call %struct.Memory* @routine_andb__0x1___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a07c)
  store %struct.Memory* %call_43a07c, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %eax	 RIP: 43a080	 Bytes: 4
  %loadMem_43a080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a080 = call %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a080)
  store %struct.Memory* %call_43a080, %struct.Memory** %MEMORY

  ; Code: movl -0x138(%rbp), %edx	 RIP: 43a084	 Bytes: 6
  %loadMem_43a084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a084 = call %struct.Memory* @routine_movl_MINUS0x138__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a084)
  store %struct.Memory* %call_43a084, %struct.Memory** %MEMORY

  ; Code: orl %eax, %edx	 RIP: 43a08a	 Bytes: 2
  %loadMem_43a08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a08a = call %struct.Memory* @routine_orl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a08a)
  store %struct.Memory* %call_43a08a, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 43a08c	 Bytes: 4
  %loadMem_43a08c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a08c = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a08c)
  store %struct.Memory* %call_43a08c, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r9	 RIP: 43a090	 Bytes: 4
  %loadMem_43a090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a090 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a090)
  store %struct.Memory* %call_43a090, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a094	 Bytes: 4
  %loadMem_43a094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a094 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a094)
  store %struct.Memory* %call_43a094, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %r9	 RIP: 43a098	 Bytes: 4
  %loadMem_43a098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a098 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a098)
  store %struct.Memory* %call_43a098, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a09c	 Bytes: 4
  %loadMem_43a09c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a09c = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a09c)
  store %struct.Memory* %call_43a09c, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %eax	 RIP: 43a0a0	 Bytes: 4
  %loadMem_43a0a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0a0 = call %struct.Memory* @routine_movswl_0x2__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0a0)
  store %struct.Memory* %call_43a0a0, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 43a0a4	 Bytes: 4
  %loadMem_43a0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0a4 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0a4)
  store %struct.Memory* %call_43a0a4, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r9	 RIP: 43a0a8	 Bytes: 4
  %loadMem_43a0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0a8 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0a8)
  store %struct.Memory* %call_43a0a8, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a0ac	 Bytes: 4
  %loadMem_43a0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0ac = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0ac)
  store %struct.Memory* %call_43a0ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %r9	 RIP: 43a0b0	 Bytes: 4
  %loadMem_43a0b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0b0 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0b0)
  store %struct.Memory* %call_43a0b0, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a0b4	 Bytes: 4
  %loadMem_43a0b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0b4 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0b4)
  store %struct.Memory* %call_43a0b4, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %esi	 RIP: 43a0b8	 Bytes: 4
  %loadMem_43a0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0b8 = call %struct.Memory* @routine_movswl_0x2__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0b8)
  store %struct.Memory* %call_43a0b8, %struct.Memory** %MEMORY

  ; Code: subl %esi, %eax	 RIP: 43a0bc	 Bytes: 2
  %loadMem_43a0bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0bc = call %struct.Memory* @routine_subl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0bc)
  store %struct.Memory* %call_43a0bc, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 43a0be	 Bytes: 2
  %loadMem_43a0be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0be = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0be)
  store %struct.Memory* %call_43a0be, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x13c(%rbp)	 RIP: 43a0c0	 Bytes: 6
  %loadMem_43a0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0c0 = call %struct.Memory* @routine_movl__edx__MINUS0x13c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0c0)
  store %struct.Memory* %call_43a0c0, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 43a0c6	 Bytes: 5
  %loadMem1_43a0c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43a0c6 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43a0c6, i64 -233670, i64 5, i64 5)
  store %struct.Memory* %call1_43a0c6, %struct.Memory** %MEMORY

  %loadMem2_43a0c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43a0c6 = load i64, i64* %3
  %call2_43a0c6 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_43a0c6, %struct.Memory* %loadMem2_43a0c6)
  store %struct.Memory* %call2_43a0c6, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 43a0cb	 Bytes: 2
  %loadMem_43a0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0cb = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0cb)
  store %struct.Memory* %call_43a0cb, %struct.Memory** %MEMORY

  ; Code: movb %dl, %r8b	 RIP: 43a0cd	 Bytes: 3
  %loadMem_43a0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0cd = call %struct.Memory* @routine_movb__dl___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0cd)
  store %struct.Memory* %call_43a0cd, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %eax	 RIP: 43a0d0	 Bytes: 3
  %loadMem_43a0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0d0 = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0d0)
  store %struct.Memory* %call_43a0d0, %struct.Memory** %MEMORY

  ; Code: setge %r10b	 RIP: 43a0d3	 Bytes: 4
  %loadMem_43a0d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0d3 = call %struct.Memory* @routine_setge__r10b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0d3)
  store %struct.Memory* %call_43a0d3, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r10b	 RIP: 43a0d7	 Bytes: 4
  %loadMem_43a0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0d7 = call %struct.Memory* @routine_andb__0x1___r10b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0d7)
  store %struct.Memory* %call_43a0d7, %struct.Memory** %MEMORY

  ; Code: movzbl %r10b, %eax	 RIP: 43a0db	 Bytes: 4
  %loadMem_43a0db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0db = call %struct.Memory* @routine_movzbl__r10b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0db)
  store %struct.Memory* %call_43a0db, %struct.Memory** %MEMORY

  ; Code: movl -0x13c(%rbp), %edx	 RIP: 43a0df	 Bytes: 6
  %loadMem_43a0df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0df = call %struct.Memory* @routine_movl_MINUS0x13c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0df)
  store %struct.Memory* %call_43a0df, %struct.Memory** %MEMORY

  ; Code: orl %eax, %edx	 RIP: 43a0e5	 Bytes: 2
  %loadMem_43a0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0e5 = call %struct.Memory* @routine_orl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0e5)
  store %struct.Memory* %call_43a0e5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 43a0e7	 Bytes: 3
  %loadMem_43a0e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0e7 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0e7)
  store %struct.Memory* %call_43a0e7, %struct.Memory** %MEMORY

  ; Code: movb %r8b, -0x13d(%rbp)	 RIP: 43a0ea	 Bytes: 7
  %loadMem_43a0ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0ea = call %struct.Memory* @routine_movb__r8b__MINUS0x13d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0ea)
  store %struct.Memory* %call_43a0ea, %struct.Memory** %MEMORY

  ; Code: je .L_43a24b	 RIP: 43a0f1	 Bytes: 6
  %loadMem_43a0f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0f1 = call %struct.Memory* @routine_je_.L_43a24b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0f1, i8* %BRANCH_TAKEN, i64 346, i64 6, i64 6)
  store %struct.Memory* %call_43a0f1, %struct.Memory** %MEMORY

  %loadBr_43a0f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43a0f1 = icmp eq i8 %loadBr_43a0f1, 1
  br i1 %cmpBr_43a0f1, label %block_.L_43a24b, label %block_43a0f7

block_43a0f7:
  ; Code: movq -0x48(%rbp), %rax	 RIP: 43a0f7	 Bytes: 4
  %loadMem_43a0f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0f7 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0f7)
  store %struct.Memory* %call_43a0f7, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 43a0fb	 Bytes: 4
  %loadMem_43a0fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0fb = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0fb)
  store %struct.Memory* %call_43a0fb, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43a0ff	 Bytes: 4
  %loadMem_43a0ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a0ff = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a0ff)
  store %struct.Memory* %call_43a0ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 43a103	 Bytes: 4
  %loadMem_43a103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a103 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a103)
  store %struct.Memory* %call_43a103, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43a107	 Bytes: 4
  %loadMem_43a107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a107 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a107)
  store %struct.Memory* %call_43a107, %struct.Memory** %MEMORY

  ; Code: movswl (%rax), %edx	 RIP: 43a10b	 Bytes: 3
  %loadMem_43a10b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a10b = call %struct.Memory* @routine_movswl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a10b)
  store %struct.Memory* %call_43a10b, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 43a10e	 Bytes: 4
  %loadMem_43a10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a10e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a10e)
  store %struct.Memory* %call_43a10e, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 43a112	 Bytes: 4
  %loadMem_43a112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a112 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a112)
  store %struct.Memory* %call_43a112, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43a116	 Bytes: 4
  %loadMem_43a116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a116 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a116)
  store %struct.Memory* %call_43a116, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 43a11a	 Bytes: 4
  %loadMem_43a11a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a11a = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a11a)
  store %struct.Memory* %call_43a11a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43a11e	 Bytes: 4
  %loadMem_43a11e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a11e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a11e)
  store %struct.Memory* %call_43a11e, %struct.Memory** %MEMORY

  ; Code: movswl (%rax), %esi	 RIP: 43a122	 Bytes: 3
  %loadMem_43a122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a122 = call %struct.Memory* @routine_movswl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a122)
  store %struct.Memory* %call_43a122, %struct.Memory** %MEMORY

  ; Code: subl %esi, %edx	 RIP: 43a125	 Bytes: 2
  %loadMem_43a125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a125 = call %struct.Memory* @routine_subl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a125)
  store %struct.Memory* %call_43a125, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edi	 RIP: 43a127	 Bytes: 2
  %loadMem_43a127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a127 = call %struct.Memory* @routine_movl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a127)
  store %struct.Memory* %call_43a127, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 43a129	 Bytes: 5
  %loadMem1_43a129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43a129 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43a129, i64 -233769, i64 5, i64 5)
  store %struct.Memory* %call1_43a129, %struct.Memory** %MEMORY

  %loadMem2_43a129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43a129 = load i64, i64* %3
  %call2_43a129 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_43a129, %struct.Memory* %loadMem2_43a129)
  store %struct.Memory* %call2_43a129, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %eax	 RIP: 43a12e	 Bytes: 3
  %loadMem_43a12e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a12e = call %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a12e)
  store %struct.Memory* %call_43a12e, %struct.Memory** %MEMORY

  ; Code: setge %r8b	 RIP: 43a131	 Bytes: 4
  %loadMem_43a131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a131 = call %struct.Memory* @routine_setge__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a131)
  store %struct.Memory* %call_43a131, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r8b	 RIP: 43a135	 Bytes: 4
  %loadMem_43a135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a135 = call %struct.Memory* @routine_andb__0x1___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a135)
  store %struct.Memory* %call_43a135, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %eax	 RIP: 43a139	 Bytes: 4
  %loadMem_43a139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a139 = call %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a139)
  store %struct.Memory* %call_43a139, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 43a13d	 Bytes: 4
  %loadMem_43a13d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a13d = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a13d)
  store %struct.Memory* %call_43a13d, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r9	 RIP: 43a141	 Bytes: 4
  %loadMem_43a141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a141 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a141)
  store %struct.Memory* %call_43a141, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a145	 Bytes: 4
  %loadMem_43a145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a145 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a145)
  store %struct.Memory* %call_43a145, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %r9	 RIP: 43a149	 Bytes: 4
  %loadMem_43a149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a149 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a149)
  store %struct.Memory* %call_43a149, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a14d	 Bytes: 4
  %loadMem_43a14d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a14d = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a14d)
  store %struct.Memory* %call_43a14d, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %edx	 RIP: 43a151	 Bytes: 4
  %loadMem_43a151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a151 = call %struct.Memory* @routine_movswl_0x2__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a151)
  store %struct.Memory* %call_43a151, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 43a155	 Bytes: 4
  %loadMem_43a155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a155 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a155)
  store %struct.Memory* %call_43a155, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r9	 RIP: 43a159	 Bytes: 4
  %loadMem_43a159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a159 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a159)
  store %struct.Memory* %call_43a159, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a15d	 Bytes: 4
  %loadMem_43a15d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a15d = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a15d)
  store %struct.Memory* %call_43a15d, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %r9	 RIP: 43a161	 Bytes: 4
  %loadMem_43a161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a161 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a161)
  store %struct.Memory* %call_43a161, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a165	 Bytes: 4
  %loadMem_43a165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a165 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a165)
  store %struct.Memory* %call_43a165, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %esi	 RIP: 43a169	 Bytes: 4
  %loadMem_43a169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a169 = call %struct.Memory* @routine_movswl_0x2__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a169)
  store %struct.Memory* %call_43a169, %struct.Memory** %MEMORY

  ; Code: subl %esi, %edx	 RIP: 43a16d	 Bytes: 2
  %loadMem_43a16d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a16d = call %struct.Memory* @routine_subl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a16d)
  store %struct.Memory* %call_43a16d, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edi	 RIP: 43a16f	 Bytes: 2
  %loadMem_43a16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a16f = call %struct.Memory* @routine_movl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a16f)
  store %struct.Memory* %call_43a16f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x144(%rbp)	 RIP: 43a171	 Bytes: 6
  %loadMem_43a171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a171 = call %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a171)
  store %struct.Memory* %call_43a171, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 43a177	 Bytes: 5
  %loadMem1_43a177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43a177 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43a177, i64 -233847, i64 5, i64 5)
  store %struct.Memory* %call1_43a177, %struct.Memory** %MEMORY

  %loadMem2_43a177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43a177 = load i64, i64* %3
  %call2_43a177 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_43a177, %struct.Memory* %loadMem2_43a177)
  store %struct.Memory* %call2_43a177, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %eax	 RIP: 43a17c	 Bytes: 3
  %loadMem_43a17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a17c = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a17c)
  store %struct.Memory* %call_43a17c, %struct.Memory** %MEMORY

  ; Code: setge %r8b	 RIP: 43a17f	 Bytes: 4
  %loadMem_43a17f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a17f = call %struct.Memory* @routine_setge__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a17f)
  store %struct.Memory* %call_43a17f, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r8b	 RIP: 43a183	 Bytes: 4
  %loadMem_43a183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a183 = call %struct.Memory* @routine_andb__0x1___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a183)
  store %struct.Memory* %call_43a183, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %eax	 RIP: 43a187	 Bytes: 4
  %loadMem_43a187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a187 = call %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a187)
  store %struct.Memory* %call_43a187, %struct.Memory** %MEMORY

  ; Code: movl -0x144(%rbp), %edx	 RIP: 43a18b	 Bytes: 6
  %loadMem_43a18b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a18b = call %struct.Memory* @routine_movl_MINUS0x144__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a18b)
  store %struct.Memory* %call_43a18b, %struct.Memory** %MEMORY

  ; Code: orl %eax, %edx	 RIP: 43a191	 Bytes: 2
  %loadMem_43a191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a191 = call %struct.Memory* @routine_orl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a191)
  store %struct.Memory* %call_43a191, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 43a193	 Bytes: 4
  %loadMem_43a193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a193 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a193)
  store %struct.Memory* %call_43a193, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r9	 RIP: 43a197	 Bytes: 4
  %loadMem_43a197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a197 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a197)
  store %struct.Memory* %call_43a197, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a19b	 Bytes: 4
  %loadMem_43a19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a19b = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a19b)
  store %struct.Memory* %call_43a19b, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %r9	 RIP: 43a19f	 Bytes: 4
  %loadMem_43a19f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a19f = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a19f)
  store %struct.Memory* %call_43a19f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a1a3	 Bytes: 4
  %loadMem_43a1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1a3 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1a3)
  store %struct.Memory* %call_43a1a3, %struct.Memory** %MEMORY

  ; Code: movswl (%rcx), %eax	 RIP: 43a1a7	 Bytes: 3
  %loadMem_43a1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1a7 = call %struct.Memory* @routine_movswl___rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1a7)
  store %struct.Memory* %call_43a1a7, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 43a1aa	 Bytes: 4
  %loadMem_43a1aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1aa = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1aa)
  store %struct.Memory* %call_43a1aa, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r9	 RIP: 43a1ae	 Bytes: 4
  %loadMem_43a1ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1ae = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1ae)
  store %struct.Memory* %call_43a1ae, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a1b2	 Bytes: 4
  %loadMem_43a1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1b2 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1b2)
  store %struct.Memory* %call_43a1b2, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %r9	 RIP: 43a1b6	 Bytes: 4
  %loadMem_43a1b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1b6 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1b6)
  store %struct.Memory* %call_43a1b6, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a1ba	 Bytes: 4
  %loadMem_43a1ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1ba = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1ba)
  store %struct.Memory* %call_43a1ba, %struct.Memory** %MEMORY

  ; Code: movswl (%rcx), %esi	 RIP: 43a1be	 Bytes: 3
  %loadMem_43a1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1be = call %struct.Memory* @routine_movswl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1be)
  store %struct.Memory* %call_43a1be, %struct.Memory** %MEMORY

  ; Code: subl %esi, %eax	 RIP: 43a1c1	 Bytes: 2
  %loadMem_43a1c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1c1 = call %struct.Memory* @routine_subl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1c1)
  store %struct.Memory* %call_43a1c1, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 43a1c3	 Bytes: 2
  %loadMem_43a1c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1c3 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1c3)
  store %struct.Memory* %call_43a1c3, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x148(%rbp)	 RIP: 43a1c5	 Bytes: 6
  %loadMem_43a1c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1c5 = call %struct.Memory* @routine_movl__edx__MINUS0x148__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1c5)
  store %struct.Memory* %call_43a1c5, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 43a1cb	 Bytes: 5
  %loadMem1_43a1cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43a1cb = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43a1cb, i64 -233931, i64 5, i64 5)
  store %struct.Memory* %call1_43a1cb, %struct.Memory** %MEMORY

  %loadMem2_43a1cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43a1cb = load i64, i64* %3
  %call2_43a1cb = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_43a1cb, %struct.Memory* %loadMem2_43a1cb)
  store %struct.Memory* %call2_43a1cb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %eax	 RIP: 43a1d0	 Bytes: 3
  %loadMem_43a1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1d0 = call %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1d0)
  store %struct.Memory* %call_43a1d0, %struct.Memory** %MEMORY

  ; Code: setge %r8b	 RIP: 43a1d3	 Bytes: 4
  %loadMem_43a1d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1d3 = call %struct.Memory* @routine_setge__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1d3)
  store %struct.Memory* %call_43a1d3, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r8b	 RIP: 43a1d7	 Bytes: 4
  %loadMem_43a1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1d7 = call %struct.Memory* @routine_andb__0x1___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1d7)
  store %struct.Memory* %call_43a1d7, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %eax	 RIP: 43a1db	 Bytes: 4
  %loadMem_43a1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1db = call %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1db)
  store %struct.Memory* %call_43a1db, %struct.Memory** %MEMORY

  ; Code: movl -0x148(%rbp), %edx	 RIP: 43a1df	 Bytes: 6
  %loadMem_43a1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1df = call %struct.Memory* @routine_movl_MINUS0x148__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1df)
  store %struct.Memory* %call_43a1df, %struct.Memory** %MEMORY

  ; Code: orl %eax, %edx	 RIP: 43a1e5	 Bytes: 2
  %loadMem_43a1e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1e5 = call %struct.Memory* @routine_orl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1e5)
  store %struct.Memory* %call_43a1e5, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 43a1e7	 Bytes: 4
  %loadMem_43a1e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1e7 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1e7)
  store %struct.Memory* %call_43a1e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r9	 RIP: 43a1eb	 Bytes: 4
  %loadMem_43a1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1eb = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1eb)
  store %struct.Memory* %call_43a1eb, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a1ef	 Bytes: 4
  %loadMem_43a1ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1ef = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1ef)
  store %struct.Memory* %call_43a1ef, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %r9	 RIP: 43a1f3	 Bytes: 4
  %loadMem_43a1f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1f3 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1f3)
  store %struct.Memory* %call_43a1f3, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a1f7	 Bytes: 4
  %loadMem_43a1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1f7 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1f7)
  store %struct.Memory* %call_43a1f7, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %eax	 RIP: 43a1fb	 Bytes: 4
  %loadMem_43a1fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1fb = call %struct.Memory* @routine_movswl_0x2__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1fb)
  store %struct.Memory* %call_43a1fb, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 43a1ff	 Bytes: 4
  %loadMem_43a1ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a1ff = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a1ff)
  store %struct.Memory* %call_43a1ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r9	 RIP: 43a203	 Bytes: 4
  %loadMem_43a203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a203 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a203)
  store %struct.Memory* %call_43a203, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a207	 Bytes: 4
  %loadMem_43a207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a207 = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a207)
  store %struct.Memory* %call_43a207, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %r9	 RIP: 43a20b	 Bytes: 4
  %loadMem_43a20b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a20b = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a20b)
  store %struct.Memory* %call_43a20b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%r9,8), %rcx	 RIP: 43a20f	 Bytes: 4
  %loadMem_43a20f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a20f = call %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a20f)
  store %struct.Memory* %call_43a20f, %struct.Memory** %MEMORY

  ; Code: movswl 0x2(%rcx), %esi	 RIP: 43a213	 Bytes: 4
  %loadMem_43a213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a213 = call %struct.Memory* @routine_movswl_0x2__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a213)
  store %struct.Memory* %call_43a213, %struct.Memory** %MEMORY

  ; Code: subl %esi, %eax	 RIP: 43a217	 Bytes: 2
  %loadMem_43a217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a217 = call %struct.Memory* @routine_subl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a217)
  store %struct.Memory* %call_43a217, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 43a219	 Bytes: 2
  %loadMem_43a219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a219 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a219)
  store %struct.Memory* %call_43a219, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x14c(%rbp)	 RIP: 43a21b	 Bytes: 6
  %loadMem_43a21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a21b = call %struct.Memory* @routine_movl__edx__MINUS0x14c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a21b)
  store %struct.Memory* %call_43a21b, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 43a221	 Bytes: 5
  %loadMem1_43a221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43a221 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43a221, i64 -234017, i64 5, i64 5)
  store %struct.Memory* %call1_43a221, %struct.Memory** %MEMORY

  %loadMem2_43a221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43a221 = load i64, i64* %3
  %call2_43a221 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_43a221, %struct.Memory* %loadMem2_43a221)
  store %struct.Memory* %call2_43a221, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %eax	 RIP: 43a226	 Bytes: 3
  %loadMem_43a226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a226 = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a226)
  store %struct.Memory* %call_43a226, %struct.Memory** %MEMORY

  ; Code: setge %r8b	 RIP: 43a229	 Bytes: 4
  %loadMem_43a229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a229 = call %struct.Memory* @routine_setge__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a229)
  store %struct.Memory* %call_43a229, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r8b	 RIP: 43a22d	 Bytes: 4
  %loadMem_43a22d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a22d = call %struct.Memory* @routine_andb__0x1___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a22d)
  store %struct.Memory* %call_43a22d, %struct.Memory** %MEMORY

  ; Code: movzbl %r8b, %eax	 RIP: 43a231	 Bytes: 4
  %loadMem_43a231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a231 = call %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a231)
  store %struct.Memory* %call_43a231, %struct.Memory** %MEMORY

  ; Code: movl -0x14c(%rbp), %edx	 RIP: 43a235	 Bytes: 6
  %loadMem_43a235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a235 = call %struct.Memory* @routine_movl_MINUS0x14c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a235)
  store %struct.Memory* %call_43a235, %struct.Memory** %MEMORY

  ; Code: orl %eax, %edx	 RIP: 43a23b	 Bytes: 2
  %loadMem_43a23b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a23b = call %struct.Memory* @routine_orl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a23b)
  store %struct.Memory* %call_43a23b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 43a23d	 Bytes: 3
  %loadMem_43a23d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a23d = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a23d)
  store %struct.Memory* %call_43a23d, %struct.Memory** %MEMORY

  ; Code: setne %r8b	 RIP: 43a240	 Bytes: 4
  %loadMem_43a240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a240 = call %struct.Memory* @routine_setne__r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a240)
  store %struct.Memory* %call_43a240, %struct.Memory** %MEMORY

  ; Code: movb %r8b, -0x13d(%rbp)	 RIP: 43a244	 Bytes: 7
  %loadMem_43a244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a244 = call %struct.Memory* @routine_movb__r8b__MINUS0x13d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a244)
  store %struct.Memory* %call_43a244, %struct.Memory** %MEMORY

  ; Code: .L_43a24b:	 RIP: 43a24b	 Bytes: 0
  br label %block_.L_43a24b
block_.L_43a24b:

  ; Code: movb -0x13d(%rbp), %al	 RIP: 43a24b	 Bytes: 6
  %loadMem_43a24b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a24b = call %struct.Memory* @routine_movb_MINUS0x13d__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a24b)
  store %struct.Memory* %call_43a24b, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 43a251	 Bytes: 2
  %loadMem_43a251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a251 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a251)
  store %struct.Memory* %call_43a251, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 43a253	 Bytes: 3
  %loadMem_43a253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a253 = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a253)
  store %struct.Memory* %call_43a253, %struct.Memory** %MEMORY

  ; Code: movb %cl, %al	 RIP: 43a256	 Bytes: 2
  %loadMem_43a256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a256 = call %struct.Memory* @routine_movb__cl___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a256)
  store %struct.Memory* %call_43a256, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 43a258	 Bytes: 4
  %loadMem_43a258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a258 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a258)
  store %struct.Memory* %call_43a258, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 43a25c	 Bytes: 4
  %loadMem_43a25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a25c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a25c)
  store %struct.Memory* %call_43a25c, %struct.Memory** %MEMORY

  ; Code: movb %al, (%rdx,%rsi,1)	 RIP: 43a260	 Bytes: 3
  %loadMem_43a260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a260 = call %struct.Memory* @routine_movb__al____rdx__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a260)
  store %struct.Memory* %call_43a260, %struct.Memory** %MEMORY

  ; Code: .L_43a263:	 RIP: 43a263	 Bytes: 0
  br label %block_.L_43a263
block_.L_43a263:

  ; Code: jmpq .L_43a274	 RIP: 43a263	 Bytes: 5
  %loadMem_43a263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a263 = call %struct.Memory* @routine_jmpq_.L_43a274(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a263, i64 17, i64 5)
  store %struct.Memory* %call_43a263, %struct.Memory** %MEMORY

  br label %block_.L_43a274

  ; Code: .L_43a268:	 RIP: 43a268	 Bytes: 0
block_.L_43a268:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43a268	 Bytes: 4
  %loadMem_43a268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a268 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a268)
  store %struct.Memory* %call_43a268, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 43a26c	 Bytes: 4
  %loadMem_43a26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a26c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a26c)
  store %struct.Memory* %call_43a26c, %struct.Memory** %MEMORY

  ; Code: movb $0x1, (%rax,%rcx,1)	 RIP: 43a270	 Bytes: 4
  %loadMem_43a270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a270 = call %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a270)
  store %struct.Memory* %call_43a270, %struct.Memory** %MEMORY

  ; Code: .L_43a274:	 RIP: 43a274	 Bytes: 0
  br label %block_.L_43a274
block_.L_43a274:

  ; Code: jmpq .L_43a279	 RIP: 43a274	 Bytes: 5
  %loadMem_43a274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a274 = call %struct.Memory* @routine_jmpq_.L_43a279(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a274, i64 5, i64 5)
  store %struct.Memory* %call_43a274, %struct.Memory** %MEMORY

  br label %block_.L_43a279

  ; Code: .L_43a279:	 RIP: 43a279	 Bytes: 0
block_.L_43a279:

  ; Code: jmpq .L_43a27e	 RIP: 43a279	 Bytes: 5
  %loadMem_43a279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a279 = call %struct.Memory* @routine_jmpq_.L_43a27e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a279, i64 5, i64 5)
  store %struct.Memory* %call_43a279, %struct.Memory** %MEMORY

  br label %block_.L_43a27e

  ; Code: .L_43a27e:	 RIP: 43a27e	 Bytes: 0
block_.L_43a27e:

  ; Code: jmpq .L_43a283	 RIP: 43a27e	 Bytes: 5
  %loadMem_43a27e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a27e = call %struct.Memory* @routine_jmpq_.L_43a283(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a27e, i64 5, i64 5)
  store %struct.Memory* %call_43a27e, %struct.Memory** %MEMORY

  br label %block_.L_43a283

  ; Code: .L_43a283:	 RIP: 43a283	 Bytes: 0
block_.L_43a283:

  ; Code: jmpq .L_43a288	 RIP: 43a283	 Bytes: 5
  %loadMem_43a283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a283 = call %struct.Memory* @routine_jmpq_.L_43a288(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a283, i64 5, i64 5)
  store %struct.Memory* %call_43a283, %struct.Memory** %MEMORY

  br label %block_.L_43a288

  ; Code: .L_43a288:	 RIP: 43a288	 Bytes: 0
block_.L_43a288:

  ; Code: jmpq .L_43a28d	 RIP: 43a288	 Bytes: 5
  %loadMem_43a288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a288 = call %struct.Memory* @routine_jmpq_.L_43a28d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a288, i64 5, i64 5)
  store %struct.Memory* %call_43a288, %struct.Memory** %MEMORY

  br label %block_.L_43a28d

  ; Code: .L_43a28d:	 RIP: 43a28d	 Bytes: 0
block_.L_43a28d:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 43a28d	 Bytes: 3
  %loadMem_43a28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a28d = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a28d)
  store %struct.Memory* %call_43a28d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43a290	 Bytes: 3
  %loadMem_43a290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a290 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a290)
  store %struct.Memory* %call_43a290, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 43a293	 Bytes: 3
  %loadMem_43a293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a293 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a293)
  store %struct.Memory* %call_43a293, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43963f	 RIP: 43a296	 Bytes: 5
  %loadMem_43a296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a296 = call %struct.Memory* @routine_jmpq_.L_43963f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a296, i64 -3159, i64 5)
  store %struct.Memory* %call_43a296, %struct.Memory** %MEMORY

  br label %block_.L_43963f

  ; Code: .L_43a29b:	 RIP: 43a29b	 Bytes: 0
block_.L_43a29b:

  ; Code: addq $0x150, %rsp	 RIP: 43a29b	 Bytes: 7
  %loadMem_43a29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a29b = call %struct.Memory* @routine_addq__0x150___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a29b)
  store %struct.Memory* %call_43a29b, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 43a2a2	 Bytes: 1
  %loadMem_43a2a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2a2 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2a2)
  store %struct.Memory* %call_43a2a2, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 43a2a3	 Bytes: 1
  %loadMem_43a2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43a2a3 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43a2a3)
  store %struct.Memory* %call_43a2a3, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_43a2a3
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

define %struct.Memory* @routine_subq__0x150___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 336)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r9d__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
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

define %struct.Memory* @routine_movq_0x70fcf0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x70fcf0_type* @G_0x70fcf0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x1968__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6504
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rsi__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x1950__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6480
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__rsi__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movq__rsi__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x1958__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6488
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__rsi__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movq__rsi__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_0x3758__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
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

define %struct.Memory* @routine_imulq__0x278___rdi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 632)
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


define %struct.Memory* @routine_movq__rsi__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
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

define %struct.Memory* @routine_cmpl__0x10__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
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

define %struct.Memory* @routine_jge_.L_43a29b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_439661(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_43966d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 212
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_je_.L_4396bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_43969b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4396ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_MINUS0xd8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 220
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4396c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_MINUS0xdc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0xb0__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = sub i32 %6, %8
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = icmp ult i32 %6, %8
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %9, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #22
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %8, %6
  %21 = xor i32 %20, %9
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %9, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %9, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = lshr i32 %8, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add   i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subl_MINUS0x18__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_subl__edx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x7c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_callq_.getNeighbour(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0xa8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0xa4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x3758__r8____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0xac__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x278___r9___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R9
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %9, i64 632)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__r9___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %R9
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r8__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x90__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x214__r8____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 532
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x98__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
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

define %struct.Memory* @routine_cmpl_0x214__r8____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %R8
  %15 = add i64 %14, 532
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setne__r10b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %R10B)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_andb__0x1___r10b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %R10B
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %R10B, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 255
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl__r10b___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %R10B
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__al___r10b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 21
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %R10B, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__r10b__0x72531c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %R10B
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x72531c_type* @G_0x72531c to i64), i64 %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_sarl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_sarl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_addl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_cmpl__0x3__0x18__r8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4397a1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x4__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
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

define %struct.Memory* @routine_jne_.L_439894(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__cl__MINUS0xdd__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 221
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jne_.L_43986d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4397dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x1c__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__al__MINUS0xde__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 222
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_439861(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_43981d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 532
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43981d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x214__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 532
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_jne_.L_439846(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x1c__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__cl__MINUS0xdf__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 223
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_439855(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_setne__al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %AL)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #0 {
  %6 = xor i64 %4, %3
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

define %struct.Memory* @routine_xorb__0xff___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %11, i64 255)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movb__al__MINUS0xdf__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 223
  %15 = load i8, i8* %AL
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

define %struct.Memory* @routine_movb_MINUS0xdf__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 223
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movb_MINUS0xde__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 222
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movb__al__MINUS0xdd__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 221
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0xdd__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 221
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__0x3___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 3)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 4)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_cmovnel__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__cl___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movb__al____rsi__rdi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RSI = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 11
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %RDI
  %18 = add i64 %17, %16
  %19 = load i8, i8* %AL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_43a288(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movb__cl__MINUS0xe0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 224
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jne_.L_439960(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4398cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movb__al__MINUS0xe1__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 225
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_439954(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_439910(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_439910(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_439939(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movb__cl__MINUS0xe2__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 226
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_439948(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movb__al__MINUS0xe2__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 226
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0xe2__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 226
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movb_MINUS0xe1__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 225
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movb__al__MINUS0xe0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 224
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0xe0__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 224
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


















define %struct.Memory* @routine_movq_MINUS0x98__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x9__0x48__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 9)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43a283(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0xe__0x48__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 14)
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




define %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


























define %struct.Memory* @routine_movq_0x1d0__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__MINUS0xf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_shll__cl___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = and i64 %4, %3
  store i64 %6, i64* %2, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %6 to i32
  %9 = and i32 %8, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9) #22
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i64 %6, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %6, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_andq__rsi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_cmpq__0x0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_439a7a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__MINUS0xf8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_je_.L_439a8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x2____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 2)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_43a27e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpb__0x0__0x72531c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x72531c_type* @G_0x72531c to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_439aaa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 1)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_43a279(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_leaq_MINUS0x84__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x88__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.get_mb_block_pos(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x88__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shll__0x2___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 2)
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


define %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_andl__0x3___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 3)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addl__edi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0xa0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = sext i16 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movswl___rdx__rsi_2____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_jge_.L_439b30(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0xffffffffffffffff___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 -1)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__MINUS0x100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_439b4b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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






define %struct.Memory* @routine_movq_MINUS0x100__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_jge_.L_439b89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__MINUS0x108__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 264
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_439ba4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movq_MINUS0x108__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_jge_.L_439be2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_439bfd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movq_MINUS0x110__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_jge_.L_439c3b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__MINUS0x118__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_439c56(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  %7 = sub i64 %2, %6
  %8 = icmp ugt i64 %6, %2
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
  %18 = xor i64 %6, %2
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
  %30 = lshr i64 %2, 63
  %31 = lshr i64 %6, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add   i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq_MINUS0xc8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 200
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jne_.L_439c8c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0xc0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpq_MINUS0xd0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 208
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_je_.L_439cb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_43a268(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpq_MINUS0xc0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 192
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_je_.L_439f9c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_439e42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movswl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}












define %struct.Memory* @routine_movswl___rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_movl__edx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_cmpl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNLI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setge__r8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNLI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %R8B)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_andb__0x1___r8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %R8B
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %R8B, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movzbl__r8b___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %R8B
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
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


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rcx__r9_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %R9
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x38__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movswl_0x2__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x34__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movswl_0x2__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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








define %struct.Memory* @routine_movl_MINUS0x11c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 284
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_orl__eax___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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










define %struct.Memory* @routine_movswl___rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
}












define %struct.Memory* @routine_movswl___rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_subl__esi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__edx__MINUS0x120__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movl_MINUS0x120__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movswl_0x2__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_movl__edx__MINUS0x124__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 292
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movl_MINUS0x124__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 292
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movb__dl___r8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %DL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %R8B, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movb__r8b____rcx__r9_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 19
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %R9 = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %R9
  %18 = add i64 %17, %16
  %19 = load i8, i8* %R8B
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_439f97(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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












define %struct.Memory* @routine_movl_MINUS0x128__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}
































define %struct.Memory* @routine_movl__edx__MINUS0x12c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 300
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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
































define %struct.Memory* @routine_movl__edx__MINUS0x130__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 304
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movl_MINUS0x130__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_jmpq_.L_43a263(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movl_MINUS0x134__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 308
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}
































define %struct.Memory* @routine_movl__edx__MINUS0x138__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 312
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movl_MINUS0x138__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 312
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}
































define %struct.Memory* @routine_movl__edx__MINUS0x13c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 316
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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






define %struct.Memory* @routine_setge__r10b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNLI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %R10B)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movl_MINUS0x13c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 316
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movb__r8b__MINUS0x13d__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 317
  %15 = load i8, i8* %R8B
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_43a24b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movl_MINUS0x144__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 324
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}
































define %struct.Memory* @routine_movl__edx__MINUS0x148__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 328
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movl_MINUS0x148__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 328
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}
































define %struct.Memory* @routine_movl__edx__MINUS0x14c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 332
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movl_MINUS0x14c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 332
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_setne__r8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %R8B)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movb_MINUS0x13d__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 317
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movzbl__al___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %AL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movb__al____rdx__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = add i64 %17, %16
  %19 = load i8, i8* %AL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_43a274(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jmpq_.L_43a283(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jmpq_.L_43a28d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43963f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x150___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 336)
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

