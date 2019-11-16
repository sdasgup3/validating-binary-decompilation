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

declare %struct.Memory* @sub_403980.intrapred_luma_16x16(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_448f10.find_sad_16x16(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4043e0.dct_luma_16x16(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4074c0.dct_chroma(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6f6f90_type = type <{ [8 x i8] }>
@G_0x6f6f90= global %G_0x6f6f90_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x726418_type = type <{ [8 x i8] }>
@G_0x726418= global %G_0x726418_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
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
%G__0x723720_type = type <{ [8 x i8] }>
@G__0x723720= global %G__0x723720_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @Intra16x16_Mode_Decision(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .Intra16x16_Mode_Decision:	 RIP: 489010	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 489010	 Bytes: 1
  %loadMem_489010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489010 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489010)
  store %struct.Memory* %call_489010, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 489011	 Bytes: 3
  %loadMem_489011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489011 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489011)
  store %struct.Memory* %call_489011, %struct.Memory** %MEMORY

  ; Code: subq $0x80, %rsp	 RIP: 489014	 Bytes: 7
  %loadMem_489014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489014 = call %struct.Memory* @routine_subq__0x80___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489014)
  store %struct.Memory* %call_489014, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 48901b	 Bytes: 4
  %loadMem_48901b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48901b = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48901b)
  store %struct.Memory* %call_48901b, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 48901f	 Bytes: 4
  %loadMem_48901f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48901f = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48901f)
  store %struct.Memory* %call_48901f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 489023	 Bytes: 8
  %loadMem_489023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489023 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489023)
  store %struct.Memory* %call_489023, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rsi), %rsi	 RIP: 48902b	 Bytes: 7
  %loadMem_48902b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48902b = call %struct.Memory* @routine_movq_0x3758__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48902b)
  store %struct.Memory* %call_48902b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 489032	 Bytes: 8
  %loadMem_489032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489032 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489032)
  store %struct.Memory* %call_489032, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rdi), %rdi	 RIP: 48903a	 Bytes: 4
  %loadMem_48903a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48903a = call %struct.Memory* @routine_movslq_0xc__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48903a)
  store %struct.Memory* %call_48903a, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rdi, %rdi	 RIP: 48903e	 Bytes: 7
  %loadMem_48903e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48903e = call %struct.Memory* @routine_imulq__0x278___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48903e)
  store %struct.Memory* %call_48903e, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 489045	 Bytes: 3
  %loadMem_489045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489045 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489045)
  store %struct.Memory* %call_489045, %struct.Memory** %MEMORY

  ; Code: movl 0x20c(%rsi), %eax	 RIP: 489048	 Bytes: 6
  %loadMem_489048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489048 = call %struct.Memory* @routine_movl_0x20c__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489048)
  store %struct.Memory* %call_489048, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 48904e	 Bytes: 3
  %loadMem_48904e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48904e = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48904e)
  store %struct.Memory* %call_48904e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 489051	 Bytes: 8
  %loadMem_489051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489051 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489051)
  store %struct.Memory* %call_489051, %struct.Memory** %MEMORY

  ; Code: movl 0x98(%rsi), %eax	 RIP: 489059	 Bytes: 6
  %loadMem_489059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489059 = call %struct.Memory* @routine_movl_0x98__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489059)
  store %struct.Memory* %call_489059, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 48905f	 Bytes: 3
  %loadMem_48905f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48905f = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48905f)
  store %struct.Memory* %call_48905f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 489062	 Bytes: 8
  %loadMem_489062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489062 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489062)
  store %struct.Memory* %call_489062, %struct.Memory** %MEMORY

  ; Code: movl 0x9c(%rsi), %eax	 RIP: 48906a	 Bytes: 6
  %loadMem_48906a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48906a = call %struct.Memory* @routine_movl_0x9c__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48906a)
  store %struct.Memory* %call_48906a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 489070	 Bytes: 3
  %loadMem_489070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489070 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489070)
  store %struct.Memory* %call_489070, %struct.Memory** %MEMORY

  ; Code: movq 0x726418, %rsi	 RIP: 489073	 Bytes: 8
  %loadMem_489073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489073 = call %struct.Memory* @routine_movq_0x726418___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489073)
  store %struct.Memory* %call_489073, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x40(%rbp)	 RIP: 48907b	 Bytes: 4
  %loadMem_48907b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48907b = call %struct.Memory* @routine_movq__rsi__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48907b)
  store %struct.Memory* %call_48907b, %struct.Memory** %MEMORY

  ; Code: movq 0x6f6f90, %rsi	 RIP: 48907f	 Bytes: 8
  %loadMem_48907f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48907f = call %struct.Memory* @routine_movq_0x6f6f90___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48907f)
  store %struct.Memory* %call_48907f, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x48(%rbp)	 RIP: 489087	 Bytes: 4
  %loadMem_489087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489087 = call %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489087)
  store %struct.Memory* %call_489087, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48908b	 Bytes: 2
  %loadMem_48908b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48908b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48908b)
  store %struct.Memory* %call_48908b, %struct.Memory** %MEMORY

  ; Code: callq .intrapred_luma_16x16	 RIP: 48908d	 Bytes: 5
  %loadMem1_48908d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48908d = call %struct.Memory* @routine_callq_.intrapred_luma_16x16(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48908d, i64 -546573, i64 5, i64 5)
  store %struct.Memory* %call1_48908d, %struct.Memory** %MEMORY

  %loadMem2_48908d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48908d = load i64, i64* %3
  %call2_48908d = call %struct.Memory* @sub_403980.intrapred_luma_16x16(%struct.State* %0, i64  %loadPC_48908d, %struct.Memory* %loadMem2_48908d)
  store %struct.Memory* %call2_48908d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 489092	 Bytes: 8
  %loadMem_489092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489092 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489092)
  store %struct.Memory* %call_489092, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rsi)	 RIP: 48909a	 Bytes: 7
  %loadMem_48909a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48909a = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48909a)
  store %struct.Memory* %call_48909a, %struct.Memory** %MEMORY

  ; Code: jne .L_4890b3	 RIP: 4890a1	 Bytes: 6
  %loadMem_4890a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4890a1 = call %struct.Memory* @routine_jne_.L_4890b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4890a1, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4890a1, %struct.Memory** %MEMORY

  %loadBr_4890a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4890a1 = icmp eq i8 %loadBr_4890a1, 1
  br i1 %cmpBr_4890a1, label %block_.L_4890b3, label %block_4890a7

block_4890a7:
  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4890a7	 Bytes: 4
  %loadMem_4890a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4890a7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4890a7)
  store %struct.Memory* %call_4890a7, %struct.Memory** %MEMORY

  ; Code: callq .find_sad_16x16	 RIP: 4890ab	 Bytes: 5
  %loadMem1_4890ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4890ab = call %struct.Memory* @routine_callq_.find_sad_16x16(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4890ab, i64 -262555, i64 5, i64 5)
  store %struct.Memory* %call1_4890ab, %struct.Memory** %MEMORY

  %loadMem2_4890ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4890ab = load i64, i64* %3
  %call2_4890ab = call %struct.Memory* @sub_448f10.find_sad_16x16(%struct.State* %0, i64  %loadPC_4890ab, %struct.Memory* %loadMem2_4890ab)
  store %struct.Memory* %call2_4890ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 4890b0	 Bytes: 3
  %loadMem_4890b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4890b0 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4890b0)
  store %struct.Memory* %call_4890b0, %struct.Memory** %MEMORY

  ; Code: .L_4890b3:	 RIP: 4890b3	 Bytes: 0
  br label %block_.L_4890b3
block_.L_4890b3:

  ; Code: movq 0x6cb900, %rax	 RIP: 4890b3	 Bytes: 8
  %loadMem_4890b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4890b3 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4890b3)
  store %struct.Memory* %call_4890b3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 4890bb	 Bytes: 7
  %loadMem_4890bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4890bb = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4890bb)
  store %struct.Memory* %call_4890bb, %struct.Memory** %MEMORY

  ; Code: je .L_4892f3	 RIP: 4890c2	 Bytes: 6
  %loadMem_4890c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4890c2 = call %struct.Memory* @routine_je_.L_4892f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4890c2, i8* %BRANCH_TAKEN, i64 561, i64 6, i64 6)
  store %struct.Memory* %call_4890c2, %struct.Memory** %MEMORY

  %loadBr_4890c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4890c2 = icmp eq i8 %loadBr_4890c2, 1
  br i1 %cmpBr_4890c2, label %block_.L_4892f3, label %block_4890c8

block_4890c8:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4890c8	 Bytes: 7
  %loadMem_4890c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4890c8 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4890c8)
  store %struct.Memory* %call_4890c8, %struct.Memory** %MEMORY

  ; Code: .L_4890cf:	 RIP: 4890cf	 Bytes: 0
  br label %block_.L_4890cf
block_.L_4890cf:

  ; Code: cmpl $0x10, -0x28(%rbp)	 RIP: 4890cf	 Bytes: 4
  %loadMem_4890cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4890cf = call %struct.Memory* @routine_cmpl__0x10__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4890cf)
  store %struct.Memory* %call_4890cf, %struct.Memory** %MEMORY

  ; Code: jge .L_4892ee	 RIP: 4890d3	 Bytes: 6
  %loadMem_4890d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4890d3 = call %struct.Memory* @routine_jge_.L_4892ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4890d3, i8* %BRANCH_TAKEN, i64 539, i64 6, i64 6)
  store %struct.Memory* %call_4890d3, %struct.Memory** %MEMORY

  %loadBr_4890d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4890d3 = icmp eq i8 %loadBr_4890d3, 1
  br i1 %cmpBr_4890d3, label %block_.L_4892ee, label %block_4890d9

block_4890d9:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 4890d9	 Bytes: 7
  %loadMem_4890d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4890d9 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4890d9)
  store %struct.Memory* %call_4890d9, %struct.Memory** %MEMORY

  ; Code: .L_4890e0:	 RIP: 4890e0	 Bytes: 0
  br label %block_.L_4890e0
block_.L_4890e0:

  ; Code: cmpl $0x10, -0x24(%rbp)	 RIP: 4890e0	 Bytes: 4
  %loadMem_4890e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4890e0 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4890e0)
  store %struct.Memory* %call_4890e0, %struct.Memory** %MEMORY

  ; Code: jge .L_4892db	 RIP: 4890e4	 Bytes: 6
  %loadMem_4890e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4890e4 = call %struct.Memory* @routine_jge_.L_4892db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4890e4, i8* %BRANCH_TAKEN, i64 503, i64 6, i64 6)
  store %struct.Memory* %call_4890e4, %struct.Memory** %MEMORY

  %loadBr_4890e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4890e4 = icmp eq i8 %loadBr_4890e4, 1
  br i1 %cmpBr_4890e4, label %block_.L_4892db, label %block_4890ea

block_4890ea:
  ; Code: movq $0x723720, %rax	 RIP: 4890ea	 Bytes: 10
  %loadMem_4890ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4890ea = call %struct.Memory* @routine_movq__0x723720___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4890ea)
  store %struct.Memory* %call_4890ea, %struct.Memory** %MEMORY

  ; Code: movq $0x6d40f0, %rcx	 RIP: 4890f4	 Bytes: 10
  %loadMem_4890f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4890f4 = call %struct.Memory* @routine_movq__0x6d40f0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4890f4)
  store %struct.Memory* %call_4890f4, %struct.Memory** %MEMORY

  ; Code: movq $0x6f6fa0, %rdx	 RIP: 4890fe	 Bytes: 10
  %loadMem_4890fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4890fe = call %struct.Memory* @routine_movq__0x6f6fa0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4890fe)
  store %struct.Memory* %call_4890fe, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rsi	 RIP: 489108	 Bytes: 4
  %loadMem_489108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489108 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489108)
  store %struct.Memory* %call_489108, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rsi	 RIP: 48910c	 Bytes: 3
  %loadMem_48910c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48910c = call %struct.Memory* @routine_movq___rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48910c)
  store %struct.Memory* %call_48910c, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edi	 RIP: 48910f	 Bytes: 3
  %loadMem_48910f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48910f = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48910f)
  store %struct.Memory* %call_48910f, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %edi	 RIP: 489112	 Bytes: 3
  %loadMem_489112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489112 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489112)
  store %struct.Memory* %call_489112, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 489115	 Bytes: 3
  %loadMem_489115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489115 = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489115)
  store %struct.Memory* %call_489115, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r8,8), %rsi	 RIP: 489118	 Bytes: 4
  %loadMem_489118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489118 = call %struct.Memory* @routine_movq___rsi__r8_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489118)
  store %struct.Memory* %call_489118, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 48911c	 Bytes: 3
  %loadMem_48911c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48911c = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48911c)
  store %struct.Memory* %call_48911c, %struct.Memory** %MEMORY

  ; Code: addl -0x24(%rbp), %edi	 RIP: 48911f	 Bytes: 3
  %loadMem_48911f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48911f = call %struct.Memory* @routine_addl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48911f)
  store %struct.Memory* %call_48911f, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 489122	 Bytes: 3
  %loadMem_489122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489122 = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489122)
  store %struct.Memory* %call_489122, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%r8,2), %edi	 RIP: 489125	 Bytes: 5
  %loadMem_489125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489125 = call %struct.Memory* @routine_movzwl___rsi__r8_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489125)
  store %struct.Memory* %call_489125, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 48912a	 Bytes: 8
  %loadMem_48912a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48912a = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48912a)
  store %struct.Memory* %call_48912a, %struct.Memory** %MEMORY

  ; Code: addq $0x2138, %rsi	 RIP: 489132	 Bytes: 7
  %loadMem_489132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489132 = call %struct.Memory* @routine_addq__0x2138___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489132)
  store %struct.Memory* %call_489132, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %r8	 RIP: 489139	 Bytes: 4
  %loadMem_489139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489139 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489139)
  store %struct.Memory* %call_489139, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %r8	 RIP: 48913d	 Bytes: 4
  %loadMem_48913d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48913d = call %struct.Memory* @routine_shlq__0x9___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48913d)
  store %struct.Memory* %call_48913d, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rsi	 RIP: 489141	 Bytes: 3
  %loadMem_489141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489141 = call %struct.Memory* @routine_addq__r8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489141)
  store %struct.Memory* %call_489141, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %r8	 RIP: 489144	 Bytes: 4
  %loadMem_489144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489144 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489144)
  store %struct.Memory* %call_489144, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %r8	 RIP: 489148	 Bytes: 4
  %loadMem_489148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489148 = call %struct.Memory* @routine_shlq__0x5___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489148)
  store %struct.Memory* %call_489148, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rsi	 RIP: 48914c	 Bytes: 3
  %loadMem_48914c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48914c = call %struct.Memory* @routine_addq__r8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48914c)
  store %struct.Memory* %call_48914c, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %r8	 RIP: 48914f	 Bytes: 4
  %loadMem_48914f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48914f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48914f)
  store %struct.Memory* %call_48914f, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%r8,2), %r9d	 RIP: 489153	 Bytes: 5
  %loadMem_489153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489153 = call %struct.Memory* @routine_movzwl___rsi__r8_2____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489153)
  store %struct.Memory* %call_489153, %struct.Memory** %MEMORY

  ; Code: subl %r9d, %edi	 RIP: 489158	 Bytes: 3
  %loadMem_489158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489158 = call %struct.Memory* @routine_subl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489158)
  store %struct.Memory* %call_489158, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x1c(%rbp)	 RIP: 48915b	 Bytes: 3
  %loadMem_48915b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48915b = call %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48915b)
  store %struct.Memory* %call_48915b, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rsi	 RIP: 48915e	 Bytes: 4
  %loadMem_48915e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48915e = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48915e)
  store %struct.Memory* %call_48915e, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edi	 RIP: 489162	 Bytes: 3
  %loadMem_489162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489162 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489162)
  store %struct.Memory* %call_489162, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %edi	 RIP: 489165	 Bytes: 3
  %loadMem_489165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489165 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489165)
  store %struct.Memory* %call_489165, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 489168	 Bytes: 3
  %loadMem_489168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489168 = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489168)
  store %struct.Memory* %call_489168, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r8,8), %rsi	 RIP: 48916b	 Bytes: 4
  %loadMem_48916b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48916b = call %struct.Memory* @routine_movq___rsi__r8_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48916b)
  store %struct.Memory* %call_48916b, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 48916f	 Bytes: 3
  %loadMem_48916f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48916f = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48916f)
  store %struct.Memory* %call_48916f, %struct.Memory** %MEMORY

  ; Code: addl -0x24(%rbp), %edi	 RIP: 489172	 Bytes: 3
  %loadMem_489172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489172 = call %struct.Memory* @routine_addl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489172)
  store %struct.Memory* %call_489172, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 489175	 Bytes: 3
  %loadMem_489175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489175 = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489175)
  store %struct.Memory* %call_489175, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%r8,2), %edi	 RIP: 489178	 Bytes: 5
  %loadMem_489178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489178 = call %struct.Memory* @routine_movzwl___rsi__r8_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489178)
  store %struct.Memory* %call_489178, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 48917d	 Bytes: 8
  %loadMem_48917d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48917d = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48917d)
  store %struct.Memory* %call_48917d, %struct.Memory** %MEMORY

  ; Code: addq $0x12b8, %rsi	 RIP: 489185	 Bytes: 7
  %loadMem_489185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489185 = call %struct.Memory* @routine_addq__0x12b8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489185)
  store %struct.Memory* %call_489185, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %r8	 RIP: 48918c	 Bytes: 4
  %loadMem_48918c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48918c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48918c)
  store %struct.Memory* %call_48918c, %struct.Memory** %MEMORY

  ; Code: movslq (%r8), %r8	 RIP: 489190	 Bytes: 3
  %loadMem_489190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489190 = call %struct.Memory* @routine_movslq___r8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489190)
  store %struct.Memory* %call_489190, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %r8	 RIP: 489193	 Bytes: 4
  %loadMem_489193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489193 = call %struct.Memory* @routine_shlq__0x9___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489193)
  store %struct.Memory* %call_489193, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rsi	 RIP: 489197	 Bytes: 3
  %loadMem_489197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489197 = call %struct.Memory* @routine_addq__r8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489197)
  store %struct.Memory* %call_489197, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %r8	 RIP: 48919a	 Bytes: 4
  %loadMem_48919a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48919a = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48919a)
  store %struct.Memory* %call_48919a, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %r8	 RIP: 48919e	 Bytes: 4
  %loadMem_48919e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48919e = call %struct.Memory* @routine_shlq__0x5___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48919e)
  store %struct.Memory* %call_48919e, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rsi	 RIP: 4891a2	 Bytes: 3
  %loadMem_4891a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891a2 = call %struct.Memory* @routine_addq__r8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891a2)
  store %struct.Memory* %call_4891a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %r8	 RIP: 4891a5	 Bytes: 4
  %loadMem_4891a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891a5 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891a5)
  store %struct.Memory* %call_4891a5, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%r8,2), %r9d	 RIP: 4891a9	 Bytes: 5
  %loadMem_4891a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891a9 = call %struct.Memory* @routine_movzwl___rsi__r8_2____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891a9)
  store %struct.Memory* %call_4891a9, %struct.Memory** %MEMORY

  ; Code: subl %r9d, %edi	 RIP: 4891ae	 Bytes: 3
  %loadMem_4891ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891ae = call %struct.Memory* @routine_subl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891ae)
  store %struct.Memory* %call_4891ae, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x18(%rbp)	 RIP: 4891b1	 Bytes: 3
  %loadMem_4891b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891b1 = call %struct.Memory* @routine_movl__edi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891b1)
  store %struct.Memory* %call_4891b1, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rsi	 RIP: 4891b4	 Bytes: 4
  %loadMem_4891b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891b4 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891b4)
  store %struct.Memory* %call_4891b4, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rsi	 RIP: 4891b8	 Bytes: 4
  %loadMem_4891b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891b8 = call %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891b8)
  store %struct.Memory* %call_4891b8, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edi	 RIP: 4891bc	 Bytes: 3
  %loadMem_4891bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891bc = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891bc)
  store %struct.Memory* %call_4891bc, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %edi	 RIP: 4891bf	 Bytes: 3
  %loadMem_4891bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891bf = call %struct.Memory* @routine_addl_MINUS0x28__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891bf)
  store %struct.Memory* %call_4891bf, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 4891c2	 Bytes: 3
  %loadMem_4891c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891c2 = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891c2)
  store %struct.Memory* %call_4891c2, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r8,8), %rsi	 RIP: 4891c5	 Bytes: 4
  %loadMem_4891c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891c5 = call %struct.Memory* @routine_movq___rsi__r8_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891c5)
  store %struct.Memory* %call_4891c5, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4891c9	 Bytes: 3
  %loadMem_4891c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891c9 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891c9)
  store %struct.Memory* %call_4891c9, %struct.Memory** %MEMORY

  ; Code: addl -0x24(%rbp), %edi	 RIP: 4891cc	 Bytes: 3
  %loadMem_4891cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891cc = call %struct.Memory* @routine_addl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891cc)
  store %struct.Memory* %call_4891cc, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %r8	 RIP: 4891cf	 Bytes: 3
  %loadMem_4891cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891cf = call %struct.Memory* @routine_movslq__edi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891cf)
  store %struct.Memory* %call_4891cf, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%r8,2), %edi	 RIP: 4891d2	 Bytes: 5
  %loadMem_4891d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891d2 = call %struct.Memory* @routine_movzwl___rsi__r8_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891d2)
  store %struct.Memory* %call_4891d2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 4891d7	 Bytes: 8
  %loadMem_4891d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891d7 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891d7)
  store %struct.Memory* %call_4891d7, %struct.Memory** %MEMORY

  ; Code: addq $0x2138, %rsi	 RIP: 4891df	 Bytes: 7
  %loadMem_4891df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891df = call %struct.Memory* @routine_addq__0x2138___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891df)
  store %struct.Memory* %call_4891df, %struct.Memory** %MEMORY

  ; Code: addq $0x800, %rsi	 RIP: 4891e6	 Bytes: 7
  %loadMem_4891e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891e6 = call %struct.Memory* @routine_addq__0x800___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891e6)
  store %struct.Memory* %call_4891e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %r8	 RIP: 4891ed	 Bytes: 4
  %loadMem_4891ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891ed = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891ed)
  store %struct.Memory* %call_4891ed, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %r8	 RIP: 4891f1	 Bytes: 4
  %loadMem_4891f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891f1 = call %struct.Memory* @routine_shlq__0x9___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891f1)
  store %struct.Memory* %call_4891f1, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rsi	 RIP: 4891f5	 Bytes: 3
  %loadMem_4891f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891f5 = call %struct.Memory* @routine_addq__r8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891f5)
  store %struct.Memory* %call_4891f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %r8	 RIP: 4891f8	 Bytes: 4
  %loadMem_4891f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891f8 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891f8)
  store %struct.Memory* %call_4891f8, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %r8	 RIP: 4891fc	 Bytes: 4
  %loadMem_4891fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4891fc = call %struct.Memory* @routine_shlq__0x5___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4891fc)
  store %struct.Memory* %call_4891fc, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rsi	 RIP: 489200	 Bytes: 3
  %loadMem_489200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489200 = call %struct.Memory* @routine_addq__r8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489200)
  store %struct.Memory* %call_489200, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %r8	 RIP: 489203	 Bytes: 4
  %loadMem_489203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489203 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489203)
  store %struct.Memory* %call_489203, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%r8,2), %r9d	 RIP: 489207	 Bytes: 5
  %loadMem_489207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489207 = call %struct.Memory* @routine_movzwl___rsi__r8_2____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489207)
  store %struct.Memory* %call_489207, %struct.Memory** %MEMORY

  ; Code: subl %r9d, %edi	 RIP: 48920c	 Bytes: 3
  %loadMem_48920c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48920c = call %struct.Memory* @routine_subl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48920c)
  store %struct.Memory* %call_48920c, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x14(%rbp)	 RIP: 48920f	 Bytes: 3
  %loadMem_48920f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48920f = call %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48920f)
  store %struct.Memory* %call_48920f, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 489212	 Bytes: 3
  %loadMem_489212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489212 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489212)
  store %struct.Memory* %call_489212, %struct.Memory** %MEMORY

  ; Code: subl -0x1c(%rbp), %edi	 RIP: 489215	 Bytes: 3
  %loadMem_489215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489215 = call %struct.Memory* @routine_subl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489215)
  store %struct.Memory* %call_489215, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 489218	 Bytes: 4
  %loadMem_489218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489218 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489218)
  store %struct.Memory* %call_489218, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 48921c	 Bytes: 4
  %loadMem_48921c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48921c = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48921c)
  store %struct.Memory* %call_48921c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %r8	 RIP: 489220	 Bytes: 3
  %loadMem_489220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489220 = call %struct.Memory* @routine_movq__rdx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489220)
  store %struct.Memory* %call_489220, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %r8	 RIP: 489223	 Bytes: 3
  %loadMem_489223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489223 = call %struct.Memory* @routine_addq__rsi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489223)
  store %struct.Memory* %call_489223, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 489226	 Bytes: 4
  %loadMem_489226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489226 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489226)
  store %struct.Memory* %call_489226, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%r8,%rsi,4)	 RIP: 48922a	 Bytes: 4
  %loadMem_48922a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48922a = call %struct.Memory* @routine_movl__edi____r8__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48922a)
  store %struct.Memory* %call_48922a, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edi	 RIP: 48922e	 Bytes: 3
  %loadMem_48922e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48922e = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48922e)
  store %struct.Memory* %call_48922e, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 489231	 Bytes: 4
  %loadMem_489231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489231 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489231)
  store %struct.Memory* %call_489231, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 489235	 Bytes: 4
  %loadMem_489235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489235 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489235)
  store %struct.Memory* %call_489235, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 489239	 Bytes: 3
  %loadMem_489239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489239 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489239)
  store %struct.Memory* %call_489239, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 48923c	 Bytes: 4
  %loadMem_48923c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48923c = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48923c)
  store %struct.Memory* %call_48923c, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rsi,4), %r9d	 RIP: 489240	 Bytes: 4
  %loadMem_489240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489240 = call %struct.Memory* @routine_movl___rdx__rsi_4____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489240)
  store %struct.Memory* %call_489240, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %r9d	 RIP: 489244	 Bytes: 4
  %loadMem_489244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489244 = call %struct.Memory* @routine_sarl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489244)
  store %struct.Memory* %call_489244, %struct.Memory** %MEMORY

  ; Code: addl %r9d, %edi	 RIP: 489248	 Bytes: 3
  %loadMem_489248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489248 = call %struct.Memory* @routine_addl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489248)
  store %struct.Memory* %call_489248, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x2c(%rbp)	 RIP: 48924b	 Bytes: 3
  %loadMem_48924b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48924b = call %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48924b)
  store %struct.Memory* %call_48924b, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 48924e	 Bytes: 3
  %loadMem_48924e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48924e = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48924e)
  store %struct.Memory* %call_48924e, %struct.Memory** %MEMORY

  ; Code: subl -0x2c(%rbp), %edi	 RIP: 489251	 Bytes: 3
  %loadMem_489251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489251 = call %struct.Memory* @routine_subl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489251)
  store %struct.Memory* %call_489251, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 489254	 Bytes: 4
  %loadMem_489254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489254 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489254)
  store %struct.Memory* %call_489254, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 489258	 Bytes: 4
  %loadMem_489258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489258 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489258)
  store %struct.Memory* %call_489258, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 48925c	 Bytes: 3
  %loadMem_48925c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48925c = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48925c)
  store %struct.Memory* %call_48925c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 48925f	 Bytes: 3
  %loadMem_48925f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48925f = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48925f)
  store %struct.Memory* %call_48925f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 489262	 Bytes: 4
  %loadMem_489262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489262 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489262)
  store %struct.Memory* %call_489262, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rsi,%rdx,4)	 RIP: 489266	 Bytes: 3
  %loadMem_489266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489266 = call %struct.Memory* @routine_movl__edi____rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489266)
  store %struct.Memory* %call_489266, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 489269	 Bytes: 3
  %loadMem_489269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489269 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489269)
  store %struct.Memory* %call_489269, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 48926c	 Bytes: 4
  %loadMem_48926c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48926c = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48926c)
  store %struct.Memory* %call_48926c, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 489270	 Bytes: 4
  %loadMem_489270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489270 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489270)
  store %struct.Memory* %call_489270, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 489274	 Bytes: 3
  %loadMem_489274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489274 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489274)
  store %struct.Memory* %call_489274, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 489277	 Bytes: 4
  %loadMem_489277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489277 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489277)
  store %struct.Memory* %call_489277, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %r9d	 RIP: 48927b	 Bytes: 4
  %loadMem_48927b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48927b = call %struct.Memory* @routine_movl___rcx__rdx_4____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48927b)
  store %struct.Memory* %call_48927b, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %r9d	 RIP: 48927f	 Bytes: 4
  %loadMem_48927f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48927f = call %struct.Memory* @routine_sarl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48927f)
  store %struct.Memory* %call_48927f, %struct.Memory** %MEMORY

  ; Code: addl %r9d, %edi	 RIP: 489283	 Bytes: 3
  %loadMem_489283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489283 = call %struct.Memory* @routine_addl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489283)
  store %struct.Memory* %call_489283, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 489286	 Bytes: 4
  %loadMem_489286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489286 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489286)
  store %struct.Memory* %call_489286, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 48928a	 Bytes: 4
  %loadMem_48928a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48928a = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48928a)
  store %struct.Memory* %call_48928a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 48928e	 Bytes: 3
  %loadMem_48928e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48928e = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48928e)
  store %struct.Memory* %call_48928e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 489291	 Bytes: 3
  %loadMem_489291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489291 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489291)
  store %struct.Memory* %call_489291, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 489294	 Bytes: 4
  %loadMem_489294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489294 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489294)
  store %struct.Memory* %call_489294, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rdx,%rcx,4)	 RIP: 489298	 Bytes: 3
  %loadMem_489298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489298 = call %struct.Memory* @routine_movl__edi____rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489298)
  store %struct.Memory* %call_489298, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 48929b	 Bytes: 4
  %loadMem_48929b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48929b = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48929b)
  store %struct.Memory* %call_48929b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 48929f	 Bytes: 4
  %loadMem_48929f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48929f = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48929f)
  store %struct.Memory* %call_48929f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4892a3	 Bytes: 3
  %loadMem_4892a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892a3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892a3)
  store %struct.Memory* %call_4892a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4892a6	 Bytes: 4
  %loadMem_4892a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892a6 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892a6)
  store %struct.Memory* %call_4892a6, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edi	 RIP: 4892aa	 Bytes: 3
  %loadMem_4892aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892aa = call %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892aa)
  store %struct.Memory* %call_4892aa, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4892ad	 Bytes: 8
  %loadMem_4892ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892ad = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892ad)
  store %struct.Memory* %call_4892ad, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 4892b5	 Bytes: 6
  %loadMem_4892b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892b5 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892b5)
  store %struct.Memory* %call_4892b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4892bb	 Bytes: 4
  %loadMem_4892bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892bb = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892bb)
  store %struct.Memory* %call_4892bb, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4892bf	 Bytes: 4
  %loadMem_4892bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892bf = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892bf)
  store %struct.Memory* %call_4892bf, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4892c3	 Bytes: 3
  %loadMem_4892c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892c3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892c3)
  store %struct.Memory* %call_4892c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4892c6	 Bytes: 4
  %loadMem_4892c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892c6 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892c6)
  store %struct.Memory* %call_4892c6, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rax,%rcx,4)	 RIP: 4892ca	 Bytes: 3
  %loadMem_4892ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892ca = call %struct.Memory* @routine_movl__edi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892ca)
  store %struct.Memory* %call_4892ca, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4892cd	 Bytes: 3
  %loadMem_4892cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892cd = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892cd)
  store %struct.Memory* %call_4892cd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4892d0	 Bytes: 3
  %loadMem_4892d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892d0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892d0)
  store %struct.Memory* %call_4892d0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4892d3	 Bytes: 3
  %loadMem_4892d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892d3 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892d3)
  store %struct.Memory* %call_4892d3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4890e0	 RIP: 4892d6	 Bytes: 5
  %loadMem_4892d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892d6 = call %struct.Memory* @routine_jmpq_.L_4890e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892d6, i64 -502, i64 5)
  store %struct.Memory* %call_4892d6, %struct.Memory** %MEMORY

  br label %block_.L_4890e0

  ; Code: .L_4892db:	 RIP: 4892db	 Bytes: 0
block_.L_4892db:

  ; Code: jmpq .L_4892e0	 RIP: 4892db	 Bytes: 5
  %loadMem_4892db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892db = call %struct.Memory* @routine_jmpq_.L_4892e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892db, i64 5, i64 5)
  store %struct.Memory* %call_4892db, %struct.Memory** %MEMORY

  br label %block_.L_4892e0

  ; Code: .L_4892e0:	 RIP: 4892e0	 Bytes: 0
block_.L_4892e0:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4892e0	 Bytes: 3
  %loadMem_4892e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892e0 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892e0)
  store %struct.Memory* %call_4892e0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4892e3	 Bytes: 3
  %loadMem_4892e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892e3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892e3)
  store %struct.Memory* %call_4892e3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4892e6	 Bytes: 3
  %loadMem_4892e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892e6 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892e6)
  store %struct.Memory* %call_4892e6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4890cf	 RIP: 4892e9	 Bytes: 5
  %loadMem_4892e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892e9 = call %struct.Memory* @routine_jmpq_.L_4890cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892e9, i64 -538, i64 5)
  store %struct.Memory* %call_4892e9, %struct.Memory** %MEMORY

  br label %block_.L_4890cf

  ; Code: .L_4892ee:	 RIP: 4892ee	 Bytes: 0
block_.L_4892ee:

  ; Code: jmpq .L_4892f3	 RIP: 4892ee	 Bytes: 5
  %loadMem_4892ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892ee = call %struct.Memory* @routine_jmpq_.L_4892f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892ee, i64 5, i64 5)
  store %struct.Memory* %call_4892ee, %struct.Memory** %MEMORY

  br label %block_.L_4892f3

  ; Code: .L_4892f3:	 RIP: 4892f3	 Bytes: 0
block_.L_4892f3:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4892f3	 Bytes: 4
  %loadMem_4892f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892f3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892f3)
  store %struct.Memory* %call_4892f3, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edi	 RIP: 4892f7	 Bytes: 2
  %loadMem_4892f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892f7 = call %struct.Memory* @routine_movl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892f7)
  store %struct.Memory* %call_4892f7, %struct.Memory** %MEMORY

  ; Code: callq .dct_luma_16x16	 RIP: 4892f9	 Bytes: 5
  %loadMem1_4892f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4892f9 = call %struct.Memory* @routine_callq_.dct_luma_16x16(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4892f9, i64 -544537, i64 5, i64 5)
  store %struct.Memory* %call1_4892f9, %struct.Memory** %MEMORY

  %loadMem2_4892f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4892f9 = load i64, i64* %3
  %call2_4892f9 = call %struct.Memory* @sub_4043e0.dct_luma_16x16(%struct.State* %0, i64  %loadPC_4892f9, %struct.Memory* %loadMem2_4892f9)
  store %struct.Memory* %call2_4892f9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4892fe	 Bytes: 4
  %loadMem_4892fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4892fe = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4892fe)
  store %struct.Memory* %call_4892fe, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1cc(%rcx)	 RIP: 489302	 Bytes: 6
  %loadMem_489302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489302 = call %struct.Memory* @routine_movl__eax__0x1cc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489302)
  store %struct.Memory* %call_489302, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 489308	 Bytes: 8
  %loadMem_489308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489308 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489308)
  store %struct.Memory* %call_489308, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rcx)	 RIP: 489310	 Bytes: 7
  %loadMem_489310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489310 = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489310)
  store %struct.Memory* %call_489310, %struct.Memory** %MEMORY

  ; Code: je .L_489a9b	 RIP: 489317	 Bytes: 6
  %loadMem_489317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489317 = call %struct.Memory* @routine_je_.L_489a9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489317, i8* %BRANCH_TAKEN, i64 1924, i64 6, i64 6)
  store %struct.Memory* %call_489317, %struct.Memory** %MEMORY

  %loadBr_489317 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489317 = icmp eq i8 %loadBr_489317, 1
  br i1 %cmpBr_489317, label %block_.L_489a9b, label %block_48931d

block_48931d:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 48931d	 Bytes: 7
  %loadMem_48931d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48931d = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48931d)
  store %struct.Memory* %call_48931d, %struct.Memory** %MEMORY

  ; Code: .L_489324:	 RIP: 489324	 Bytes: 0
  br label %block_.L_489324
block_.L_489324:

  ; Code: cmpl $0x10, -0x28(%rbp)	 RIP: 489324	 Bytes: 4
  %loadMem_489324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489324 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489324)
  store %struct.Memory* %call_489324, %struct.Memory** %MEMORY

  ; Code: jge .L_4893d9	 RIP: 489328	 Bytes: 6
  %loadMem_489328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489328 = call %struct.Memory* @routine_jge_.L_4893d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489328, i8* %BRANCH_TAKEN, i64 177, i64 6, i64 6)
  store %struct.Memory* %call_489328, %struct.Memory** %MEMORY

  %loadBr_489328 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489328 = icmp eq i8 %loadBr_489328, 1
  br i1 %cmpBr_489328, label %block_.L_4893d9, label %block_48932e

block_48932e:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 48932e	 Bytes: 7
  %loadMem_48932e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48932e = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48932e)
  store %struct.Memory* %call_48932e, %struct.Memory** %MEMORY

  ; Code: .L_489335:	 RIP: 489335	 Bytes: 0
  br label %block_.L_489335
block_.L_489335:

  ; Code: cmpl $0x10, -0x24(%rbp)	 RIP: 489335	 Bytes: 4
  %loadMem_489335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489335 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489335)
  store %struct.Memory* %call_489335, %struct.Memory** %MEMORY

  ; Code: jge .L_4893c6	 RIP: 489339	 Bytes: 6
  %loadMem_489339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489339 = call %struct.Memory* @routine_jge_.L_4893c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489339, i8* %BRANCH_TAKEN, i64 141, i64 6, i64 6)
  store %struct.Memory* %call_489339, %struct.Memory** %MEMORY

  %loadBr_489339 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489339 = icmp eq i8 %loadBr_489339, 1
  br i1 %cmpBr_489339, label %block_.L_4893c6, label %block_48933f

block_48933f:
  ; Code: movq $0x6f6fa0, %rax	 RIP: 48933f	 Bytes: 10
  %loadMem_48933f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48933f = call %struct.Memory* @routine_movq__0x6f6fa0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48933f)
  store %struct.Memory* %call_48933f, %struct.Memory** %MEMORY

  ; Code: movq $0x722ff0, %rcx	 RIP: 489349	 Bytes: 10
  %loadMem_489349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489349 = call %struct.Memory* @routine_movq__0x722ff0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489349)
  store %struct.Memory* %call_489349, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 489353	 Bytes: 8
  %loadMem_489353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489353 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489353)
  store %struct.Memory* %call_489353, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rdx	 RIP: 48935b	 Bytes: 7
  %loadMem_48935b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48935b = call %struct.Memory* @routine_addq__0x3338___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48935b)
  store %struct.Memory* %call_48935b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 489362	 Bytes: 4
  %loadMem_489362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489362 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489362)
  store %struct.Memory* %call_489362, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 489366	 Bytes: 4
  %loadMem_489366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489366 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489366)
  store %struct.Memory* %call_489366, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 48936a	 Bytes: 3
  %loadMem_48936a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48936a = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48936a)
  store %struct.Memory* %call_48936a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 48936d	 Bytes: 4
  %loadMem_48936d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48936d = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48936d)
  store %struct.Memory* %call_48936d, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rsi,4), %edi	 RIP: 489371	 Bytes: 3
  %loadMem_489371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489371 = call %struct.Memory* @routine_movl___rdx__rsi_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489371)
  store %struct.Memory* %call_489371, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 489374	 Bytes: 4
  %loadMem_489374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489374 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489374)
  store %struct.Memory* %call_489374, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 489378	 Bytes: 4
  %loadMem_489378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489378 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489378)
  store %struct.Memory* %call_489378, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48937c	 Bytes: 3
  %loadMem_48937c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48937c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48937c)
  store %struct.Memory* %call_48937c, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 48937f	 Bytes: 4
  %loadMem_48937f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48937f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48937f)
  store %struct.Memory* %call_48937f, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rcx,%rdx,4)	 RIP: 489383	 Bytes: 3
  %loadMem_489383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489383 = call %struct.Memory* @routine_movl__edi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489383)
  store %struct.Memory* %call_489383, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 489386	 Bytes: 4
  %loadMem_489386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489386 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489386)
  store %struct.Memory* %call_489386, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 48938a	 Bytes: 4
  %loadMem_48938a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48938a = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48938a)
  store %struct.Memory* %call_48938a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48938e	 Bytes: 3
  %loadMem_48938e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48938e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48938e)
  store %struct.Memory* %call_48938e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 489391	 Bytes: 4
  %loadMem_489391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489391 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489391)
  store %struct.Memory* %call_489391, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edi	 RIP: 489395	 Bytes: 3
  %loadMem_489395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489395 = call %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489395)
  store %struct.Memory* %call_489395, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 489398	 Bytes: 8
  %loadMem_489398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489398 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489398)
  store %struct.Memory* %call_489398, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 4893a0	 Bytes: 6
  %loadMem_4893a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893a0 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893a0)
  store %struct.Memory* %call_4893a0, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4893a6	 Bytes: 4
  %loadMem_4893a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893a6 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893a6)
  store %struct.Memory* %call_4893a6, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4893aa	 Bytes: 4
  %loadMem_4893aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893aa = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893aa)
  store %struct.Memory* %call_4893aa, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4893ae	 Bytes: 3
  %loadMem_4893ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893ae = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893ae)
  store %struct.Memory* %call_4893ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4893b1	 Bytes: 4
  %loadMem_4893b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893b1 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893b1)
  store %struct.Memory* %call_4893b1, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rax,%rcx,4)	 RIP: 4893b5	 Bytes: 3
  %loadMem_4893b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893b5 = call %struct.Memory* @routine_movl__edi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893b5)
  store %struct.Memory* %call_4893b5, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4893b8	 Bytes: 3
  %loadMem_4893b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893b8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893b8)
  store %struct.Memory* %call_4893b8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4893bb	 Bytes: 3
  %loadMem_4893bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893bb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893bb)
  store %struct.Memory* %call_4893bb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4893be	 Bytes: 3
  %loadMem_4893be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893be = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893be)
  store %struct.Memory* %call_4893be, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489335	 RIP: 4893c1	 Bytes: 5
  %loadMem_4893c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893c1 = call %struct.Memory* @routine_jmpq_.L_489335(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893c1, i64 -140, i64 5)
  store %struct.Memory* %call_4893c1, %struct.Memory** %MEMORY

  br label %block_.L_489335

  ; Code: .L_4893c6:	 RIP: 4893c6	 Bytes: 0
block_.L_4893c6:

  ; Code: jmpq .L_4893cb	 RIP: 4893c6	 Bytes: 5
  %loadMem_4893c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893c6 = call %struct.Memory* @routine_jmpq_.L_4893cb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893c6, i64 5, i64 5)
  store %struct.Memory* %call_4893c6, %struct.Memory** %MEMORY

  br label %block_.L_4893cb

  ; Code: .L_4893cb:	 RIP: 4893cb	 Bytes: 0
block_.L_4893cb:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4893cb	 Bytes: 3
  %loadMem_4893cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893cb = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893cb)
  store %struct.Memory* %call_4893cb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4893ce	 Bytes: 3
  %loadMem_4893ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893ce = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893ce)
  store %struct.Memory* %call_4893ce, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4893d1	 Bytes: 3
  %loadMem_4893d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893d1 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893d1)
  store %struct.Memory* %call_4893d1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489324	 RIP: 4893d4	 Bytes: 5
  %loadMem_4893d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893d4 = call %struct.Memory* @routine_jmpq_.L_489324(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893d4, i64 -176, i64 5)
  store %struct.Memory* %call_4893d4, %struct.Memory** %MEMORY

  br label %block_.L_489324

  ; Code: .L_4893d9:	 RIP: 4893d9	 Bytes: 0
block_.L_4893d9:

  ; Code: xorl %eax, %eax	 RIP: 4893d9	 Bytes: 2
  %loadMem_4893d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893d9 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893d9)
  store %struct.Memory* %call_4893d9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 4893db	 Bytes: 2
  %loadMem_4893db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893db = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893db)
  store %struct.Memory* %call_4893db, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4893dd	 Bytes: 2
  %loadMem_4893dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893dd = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893dd)
  store %struct.Memory* %call_4893dd, %struct.Memory** %MEMORY

  ; Code: callq .dct_chroma	 RIP: 4893df	 Bytes: 5
  %loadMem1_4893df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4893df = call %struct.Memory* @routine_callq_.dct_chroma(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4893df, i64 -532255, i64 5, i64 5)
  store %struct.Memory* %call1_4893df, %struct.Memory** %MEMORY

  %loadMem2_4893df = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4893df = load i64, i64* %3
  %call2_4893df = call %struct.Memory* @sub_4074c0.dct_chroma(%struct.State* %0, i64  %loadPC_4893df, %struct.Memory* %loadMem2_4893df)
  store %struct.Memory* %call2_4893df, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 4893e4	 Bytes: 3
  %loadMem_4893e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893e4 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893e4)
  store %struct.Memory* %call_4893e4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4893e7	 Bytes: 7
  %loadMem_4893e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893e7 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893e7)
  store %struct.Memory* %call_4893e7, %struct.Memory** %MEMORY

  ; Code: .L_4893ee:	 RIP: 4893ee	 Bytes: 0
  br label %block_.L_4893ee
block_.L_4893ee:

  ; Code: cmpl $0x10, -0x28(%rbp)	 RIP: 4893ee	 Bytes: 4
  %loadMem_4893ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893ee = call %struct.Memory* @routine_cmpl__0x10__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893ee)
  store %struct.Memory* %call_4893ee, %struct.Memory** %MEMORY

  ; Code: jge .L_4894a3	 RIP: 4893f2	 Bytes: 6
  %loadMem_4893f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893f2 = call %struct.Memory* @routine_jge_.L_4894a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893f2, i8* %BRANCH_TAKEN, i64 177, i64 6, i64 6)
  store %struct.Memory* %call_4893f2, %struct.Memory** %MEMORY

  %loadBr_4893f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4893f2 = icmp eq i8 %loadBr_4893f2, 1
  br i1 %cmpBr_4893f2, label %block_.L_4894a3, label %block_4893f8

block_4893f8:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 4893f8	 Bytes: 7
  %loadMem_4893f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893f8 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893f8)
  store %struct.Memory* %call_4893f8, %struct.Memory** %MEMORY

  ; Code: .L_4893ff:	 RIP: 4893ff	 Bytes: 0
  br label %block_.L_4893ff
block_.L_4893ff:

  ; Code: cmpl $0x10, -0x24(%rbp)	 RIP: 4893ff	 Bytes: 4
  %loadMem_4893ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4893ff = call %struct.Memory* @routine_cmpl__0x10__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4893ff)
  store %struct.Memory* %call_4893ff, %struct.Memory** %MEMORY

  ; Code: jge .L_489490	 RIP: 489403	 Bytes: 6
  %loadMem_489403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489403 = call %struct.Memory* @routine_jge_.L_489490(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489403, i8* %BRANCH_TAKEN, i64 141, i64 6, i64 6)
  store %struct.Memory* %call_489403, %struct.Memory** %MEMORY

  %loadBr_489403 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489403 = icmp eq i8 %loadBr_489403, 1
  br i1 %cmpBr_489403, label %block_.L_489490, label %block_489409

block_489409:
  ; Code: movq $0x6d40f0, %rax	 RIP: 489409	 Bytes: 10
  %loadMem_489409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489409 = call %struct.Memory* @routine_movq__0x6d40f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489409)
  store %struct.Memory* %call_489409, %struct.Memory** %MEMORY

  ; Code: movq $0x6f8f20, %rcx	 RIP: 489413	 Bytes: 10
  %loadMem_489413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489413 = call %struct.Memory* @routine_movq__0x6f8f20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489413)
  store %struct.Memory* %call_489413, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 48941d	 Bytes: 8
  %loadMem_48941d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48941d = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48941d)
  store %struct.Memory* %call_48941d, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rdx	 RIP: 489425	 Bytes: 7
  %loadMem_489425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489425 = call %struct.Memory* @routine_addq__0x3338___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489425)
  store %struct.Memory* %call_489425, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 48942c	 Bytes: 4
  %loadMem_48942c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48942c = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48942c)
  store %struct.Memory* %call_48942c, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 489430	 Bytes: 4
  %loadMem_489430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489430 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489430)
  store %struct.Memory* %call_489430, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 489434	 Bytes: 3
  %loadMem_489434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489434 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489434)
  store %struct.Memory* %call_489434, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 489437	 Bytes: 4
  %loadMem_489437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489437 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489437)
  store %struct.Memory* %call_489437, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rsi,4), %edi	 RIP: 48943b	 Bytes: 3
  %loadMem_48943b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48943b = call %struct.Memory* @routine_movl___rdx__rsi_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48943b)
  store %struct.Memory* %call_48943b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 48943e	 Bytes: 4
  %loadMem_48943e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48943e = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48943e)
  store %struct.Memory* %call_48943e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 489442	 Bytes: 4
  %loadMem_489442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489442 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489442)
  store %struct.Memory* %call_489442, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 489446	 Bytes: 3
  %loadMem_489446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489446 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489446)
  store %struct.Memory* %call_489446, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 489449	 Bytes: 4
  %loadMem_489449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489449 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489449)
  store %struct.Memory* %call_489449, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rcx,%rdx,4)	 RIP: 48944d	 Bytes: 3
  %loadMem_48944d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48944d = call %struct.Memory* @routine_movl__edi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48944d)
  store %struct.Memory* %call_48944d, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 489450	 Bytes: 4
  %loadMem_489450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489450 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489450)
  store %struct.Memory* %call_489450, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 489454	 Bytes: 4
  %loadMem_489454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489454 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489454)
  store %struct.Memory* %call_489454, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 489458	 Bytes: 3
  %loadMem_489458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489458 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489458)
  store %struct.Memory* %call_489458, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 48945b	 Bytes: 4
  %loadMem_48945b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48945b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48945b)
  store %struct.Memory* %call_48945b, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edi	 RIP: 48945f	 Bytes: 3
  %loadMem_48945f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48945f = call %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48945f)
  store %struct.Memory* %call_48945f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 489462	 Bytes: 8
  %loadMem_489462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489462 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489462)
  store %struct.Memory* %call_489462, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 48946a	 Bytes: 6
  %loadMem_48946a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48946a = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48946a)
  store %struct.Memory* %call_48946a, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 489470	 Bytes: 4
  %loadMem_489470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489470 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489470)
  store %struct.Memory* %call_489470, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 489474	 Bytes: 4
  %loadMem_489474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489474 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489474)
  store %struct.Memory* %call_489474, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 489478	 Bytes: 3
  %loadMem_489478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489478 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489478)
  store %struct.Memory* %call_489478, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 48947b	 Bytes: 4
  %loadMem_48947b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48947b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48947b)
  store %struct.Memory* %call_48947b, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rax,%rcx,4)	 RIP: 48947f	 Bytes: 3
  %loadMem_48947f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48947f = call %struct.Memory* @routine_movl__edi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48947f)
  store %struct.Memory* %call_48947f, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 489482	 Bytes: 3
  %loadMem_489482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489482 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489482)
  store %struct.Memory* %call_489482, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 489485	 Bytes: 3
  %loadMem_489485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489485 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489485)
  store %struct.Memory* %call_489485, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 489488	 Bytes: 3
  %loadMem_489488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489488 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489488)
  store %struct.Memory* %call_489488, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4893ff	 RIP: 48948b	 Bytes: 5
  %loadMem_48948b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48948b = call %struct.Memory* @routine_jmpq_.L_4893ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48948b, i64 -140, i64 5)
  store %struct.Memory* %call_48948b, %struct.Memory** %MEMORY

  br label %block_.L_4893ff

  ; Code: .L_489490:	 RIP: 489490	 Bytes: 0
block_.L_489490:

  ; Code: jmpq .L_489495	 RIP: 489490	 Bytes: 5
  %loadMem_489490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489490 = call %struct.Memory* @routine_jmpq_.L_489495(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489490, i64 5, i64 5)
  store %struct.Memory* %call_489490, %struct.Memory** %MEMORY

  br label %block_.L_489495

  ; Code: .L_489495:	 RIP: 489495	 Bytes: 0
block_.L_489495:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 489495	 Bytes: 3
  %loadMem_489495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489495 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489495)
  store %struct.Memory* %call_489495, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 489498	 Bytes: 3
  %loadMem_489498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489498 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489498)
  store %struct.Memory* %call_489498, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 48949b	 Bytes: 3
  %loadMem_48949b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48949b = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48949b)
  store %struct.Memory* %call_48949b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4893ee	 RIP: 48949e	 Bytes: 5
  %loadMem_48949e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48949e = call %struct.Memory* @routine_jmpq_.L_4893ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48949e, i64 -176, i64 5)
  store %struct.Memory* %call_48949e, %struct.Memory** %MEMORY

  br label %block_.L_4893ee

  ; Code: .L_4894a3:	 RIP: 4894a3	 Bytes: 0
block_.L_4894a3:

  ; Code: movl $0x1, %edi	 RIP: 4894a3	 Bytes: 5
  %loadMem_4894a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894a3 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894a3)
  store %struct.Memory* %call_4894a3, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 4894a8	 Bytes: 3
  %loadMem_4894a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894a8 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894a8)
  store %struct.Memory* %call_4894a8, %struct.Memory** %MEMORY

  ; Code: callq .dct_chroma	 RIP: 4894ab	 Bytes: 5
  %loadMem1_4894ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4894ab = call %struct.Memory* @routine_callq_.dct_chroma(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4894ab, i64 -532459, i64 5, i64 5)
  store %struct.Memory* %call1_4894ab, %struct.Memory** %MEMORY

  %loadMem2_4894ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4894ab = load i64, i64* %3
  %call2_4894ab = call %struct.Memory* @sub_4074c0.dct_chroma(%struct.State* %0, i64  %loadPC_4894ab, %struct.Memory* %loadMem2_4894ab)
  store %struct.Memory* %call2_4894ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 4894b0	 Bytes: 3
  %loadMem_4894b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894b0 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894b0)
  store %struct.Memory* %call_4894b0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4894b3	 Bytes: 7
  %loadMem_4894b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894b3 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894b3)
  store %struct.Memory* %call_4894b3, %struct.Memory** %MEMORY

  ; Code: .L_4894ba:	 RIP: 4894ba	 Bytes: 0
  br label %block_.L_4894ba
block_.L_4894ba:

  ; Code: cmpl $0x10, -0x28(%rbp)	 RIP: 4894ba	 Bytes: 4
  %loadMem_4894ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894ba = call %struct.Memory* @routine_cmpl__0x10__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894ba)
  store %struct.Memory* %call_4894ba, %struct.Memory** %MEMORY

  ; Code: jge .L_489533	 RIP: 4894be	 Bytes: 6
  %loadMem_4894be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894be = call %struct.Memory* @routine_jge_.L_489533(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894be, i8* %BRANCH_TAKEN, i64 117, i64 6, i64 6)
  store %struct.Memory* %call_4894be, %struct.Memory** %MEMORY

  %loadBr_4894be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4894be = icmp eq i8 %loadBr_4894be, 1
  br i1 %cmpBr_4894be, label %block_.L_489533, label %block_4894c4

block_4894c4:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 4894c4	 Bytes: 7
  %loadMem_4894c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894c4 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894c4)
  store %struct.Memory* %call_4894c4, %struct.Memory** %MEMORY

  ; Code: .L_4894cb:	 RIP: 4894cb	 Bytes: 0
  br label %block_.L_4894cb
block_.L_4894cb:

  ; Code: cmpl $0x10, -0x24(%rbp)	 RIP: 4894cb	 Bytes: 4
  %loadMem_4894cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894cb = call %struct.Memory* @routine_cmpl__0x10__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894cb)
  store %struct.Memory* %call_4894cb, %struct.Memory** %MEMORY

  ; Code: jge .L_489520	 RIP: 4894cf	 Bytes: 6
  %loadMem_4894cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894cf = call %struct.Memory* @routine_jge_.L_489520(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894cf, i8* %BRANCH_TAKEN, i64 81, i64 6, i64 6)
  store %struct.Memory* %call_4894cf, %struct.Memory** %MEMORY

  %loadBr_4894cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4894cf = icmp eq i8 %loadBr_4894cf, 1
  br i1 %cmpBr_4894cf, label %block_.L_489520, label %block_4894d5

block_4894d5:
  ; Code: movq $0x6d2ec0, %rax	 RIP: 4894d5	 Bytes: 10
  %loadMem_4894d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894d5 = call %struct.Memory* @routine_movq__0x6d2ec0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894d5)
  store %struct.Memory* %call_4894d5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4894df	 Bytes: 8
  %loadMem_4894df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894df = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894df)
  store %struct.Memory* %call_4894df, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 4894e7	 Bytes: 7
  %loadMem_4894e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894e7 = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894e7)
  store %struct.Memory* %call_4894e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4894ee	 Bytes: 4
  %loadMem_4894ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894ee = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894ee)
  store %struct.Memory* %call_4894ee, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4894f2	 Bytes: 4
  %loadMem_4894f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894f2 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894f2)
  store %struct.Memory* %call_4894f2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4894f6	 Bytes: 3
  %loadMem_4894f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894f6 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894f6)
  store %struct.Memory* %call_4894f6, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4894f9	 Bytes: 4
  %loadMem_4894f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894f9 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894f9)
  store %struct.Memory* %call_4894f9, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 4894fd	 Bytes: 3
  %loadMem_4894fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4894fd = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4894fd)
  store %struct.Memory* %call_4894fd, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 489500	 Bytes: 4
  %loadMem_489500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489500 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489500)
  store %struct.Memory* %call_489500, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 489504	 Bytes: 4
  %loadMem_489504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489504 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489504)
  store %struct.Memory* %call_489504, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 489508	 Bytes: 3
  %loadMem_489508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489508 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489508)
  store %struct.Memory* %call_489508, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 48950b	 Bytes: 4
  %loadMem_48950b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48950b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48950b)
  store %struct.Memory* %call_48950b, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 48950f	 Bytes: 3
  %loadMem_48950f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48950f = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48950f)
  store %struct.Memory* %call_48950f, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 489512	 Bytes: 3
  %loadMem_489512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489512 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489512)
  store %struct.Memory* %call_489512, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 489515	 Bytes: 3
  %loadMem_489515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489515 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489515)
  store %struct.Memory* %call_489515, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 489518	 Bytes: 3
  %loadMem_489518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489518 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489518)
  store %struct.Memory* %call_489518, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4894cb	 RIP: 48951b	 Bytes: 5
  %loadMem_48951b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48951b = call %struct.Memory* @routine_jmpq_.L_4894cb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48951b, i64 -80, i64 5)
  store %struct.Memory* %call_48951b, %struct.Memory** %MEMORY

  br label %block_.L_4894cb

  ; Code: .L_489520:	 RIP: 489520	 Bytes: 0
block_.L_489520:

  ; Code: jmpq .L_489525	 RIP: 489520	 Bytes: 5
  %loadMem_489520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489520 = call %struct.Memory* @routine_jmpq_.L_489525(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489520, i64 5, i64 5)
  store %struct.Memory* %call_489520, %struct.Memory** %MEMORY

  br label %block_.L_489525

  ; Code: .L_489525:	 RIP: 489525	 Bytes: 0
block_.L_489525:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 489525	 Bytes: 3
  %loadMem_489525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489525 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489525)
  store %struct.Memory* %call_489525, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 489528	 Bytes: 3
  %loadMem_489528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489528 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489528)
  store %struct.Memory* %call_489528, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 48952b	 Bytes: 3
  %loadMem_48952b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48952b = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48952b)
  store %struct.Memory* %call_48952b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4894ba	 RIP: 48952e	 Bytes: 5
  %loadMem_48952e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48952e = call %struct.Memory* @routine_jmpq_.L_4894ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48952e, i64 -116, i64 5)
  store %struct.Memory* %call_48952e, %struct.Memory** %MEMORY

  br label %block_.L_4894ba

  ; Code: .L_489533:	 RIP: 489533	 Bytes: 0
block_.L_489533:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 489533	 Bytes: 3
  %loadMem_489533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489533 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489533)
  store %struct.Memory* %call_489533, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %eax	 RIP: 489536	 Bytes: 3
  %loadMem_489536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489536 = call %struct.Memory* @routine_shll__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489536)
  store %struct.Memory* %call_489536, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 489539	 Bytes: 4
  %loadMem_489539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489539 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489539)
  store %struct.Memory* %call_489539, %struct.Memory** %MEMORY

  ; Code: addl 0x1cc(%rcx), %eax	 RIP: 48953d	 Bytes: 6
  %loadMem_48953d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48953d = call %struct.Memory* @routine_addl_0x1cc__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48953d)
  store %struct.Memory* %call_48953d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1cc(%rcx)	 RIP: 489543	 Bytes: 6
  %loadMem_489543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489543 = call %struct.Memory* @routine_movl__eax__0x1cc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489543)
  store %struct.Memory* %call_489543, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 489549	 Bytes: 7
  %loadMem_489549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489549 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489549)
  store %struct.Memory* %call_489549, %struct.Memory** %MEMORY

  ; Code: .L_489550:	 RIP: 489550	 Bytes: 0
  br label %block_.L_489550
block_.L_489550:

  ; Code: cmpl $0x10, -0x28(%rbp)	 RIP: 489550	 Bytes: 4
  %loadMem_489550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489550 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489550)
  store %struct.Memory* %call_489550, %struct.Memory** %MEMORY

  ; Code: jge .L_489a96	 RIP: 489554	 Bytes: 6
  %loadMem_489554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489554 = call %struct.Memory* @routine_jge_.L_489a96(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489554, i8* %BRANCH_TAKEN, i64 1346, i64 6, i64 6)
  store %struct.Memory* %call_489554, %struct.Memory** %MEMORY

  %loadBr_489554 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489554 = icmp eq i8 %loadBr_489554, 1
  br i1 %cmpBr_489554, label %block_.L_489a96, label %block_48955a

block_48955a:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 48955a	 Bytes: 7
  %loadMem_48955a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48955a = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48955a)
  store %struct.Memory* %call_48955a, %struct.Memory** %MEMORY

  ; Code: .L_489561:	 RIP: 489561	 Bytes: 0
  br label %block_.L_489561
block_.L_489561:

  ; Code: cmpl $0x10, -0x24(%rbp)	 RIP: 489561	 Bytes: 4
  %loadMem_489561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489561 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489561)
  store %struct.Memory* %call_489561, %struct.Memory** %MEMORY

  ; Code: jge .L_489a83	 RIP: 489565	 Bytes: 6
  %loadMem_489565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489565 = call %struct.Memory* @routine_jge_.L_489a83(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489565, i8* %BRANCH_TAKEN, i64 1310, i64 6, i64 6)
  store %struct.Memory* %call_489565, %struct.Memory** %MEMORY

  %loadBr_489565 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489565 = icmp eq i8 %loadBr_489565, 1
  br i1 %cmpBr_489565, label %block_.L_489a83, label %block_48956b

block_48956b:
  ; Code: xorl %eax, %eax	 RIP: 48956b	 Bytes: 2
  %loadMem_48956b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48956b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48956b)
  store %struct.Memory* %call_48956b, %struct.Memory** %MEMORY

  ; Code: movq $0x6f8f20, %rcx	 RIP: 48956d	 Bytes: 10
  %loadMem_48956d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48956d = call %struct.Memory* @routine_movq__0x6f8f20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48956d)
  store %struct.Memory* %call_48956d, %struct.Memory** %MEMORY

  ; Code: movq $0x6d2ec0, %rdx	 RIP: 489577	 Bytes: 10
  %loadMem_489577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489577 = call %struct.Memory* @routine_movq__0x6d2ec0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489577)
  store %struct.Memory* %call_489577, %struct.Memory** %MEMORY

  ; Code: movq $0x722ff0, %rsi	 RIP: 489581	 Bytes: 10
  %loadMem_489581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489581 = call %struct.Memory* @routine_movq__0x722ff0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489581)
  store %struct.Memory* %call_489581, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 48958b	 Bytes: 4
  %loadMem_48958b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48958b = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48958b)
  store %struct.Memory* %call_48958b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 48958f	 Bytes: 4
  %loadMem_48958f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48958f = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48958f)
  store %struct.Memory* %call_48958f, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 489593	 Bytes: 3
  %loadMem_489593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489593 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489593)
  store %struct.Memory* %call_489593, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 489596	 Bytes: 4
  %loadMem_489596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489596 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489596)
  store %struct.Memory* %call_489596, %struct.Memory** %MEMORY

  ; Code: movl (%rsi,%rdi,4), %r8d	 RIP: 48959a	 Bytes: 4
  %loadMem_48959a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48959a = call %struct.Memory* @routine_movl___rsi__rdi_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48959a)
  store %struct.Memory* %call_48959a, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 48959e	 Bytes: 4
  %loadMem_48959e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48959e = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48959e)
  store %struct.Memory* %call_48959e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 4895a2	 Bytes: 4
  %loadMem_4895a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895a2 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895a2)
  store %struct.Memory* %call_4895a2, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 4895a6	 Bytes: 3
  %loadMem_4895a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895a6 = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895a6)
  store %struct.Memory* %call_4895a6, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 4895a9	 Bytes: 3
  %loadMem_4895a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895a9 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895a9)
  store %struct.Memory* %call_4895a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4895ac	 Bytes: 4
  %loadMem_4895ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895ac = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895ac)
  store %struct.Memory* %call_4895ac, %struct.Memory** %MEMORY

  ; Code: movl (%rdi,%rsi,4), %r9d	 RIP: 4895b0	 Bytes: 4
  %loadMem_4895b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895b0 = call %struct.Memory* @routine_movl___rdi__rsi_4____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895b0)
  store %struct.Memory* %call_4895b0, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %r9d	 RIP: 4895b4	 Bytes: 4
  %loadMem_4895b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895b4 = call %struct.Memory* @routine_sarl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895b4)
  store %struct.Memory* %call_4895b4, %struct.Memory** %MEMORY

  ; Code: subl %r9d, %r8d	 RIP: 4895b8	 Bytes: 3
  %loadMem_4895b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895b8 = call %struct.Memory* @routine_subl__r9d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895b8)
  store %struct.Memory* %call_4895b8, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x2c(%rbp)	 RIP: 4895bb	 Bytes: 4
  %loadMem_4895bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895bb = call %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895bb)
  store %struct.Memory* %call_4895bb, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 4895bf	 Bytes: 4
  %loadMem_4895bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895bf = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895bf)
  store %struct.Memory* %call_4895bf, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 4895c3	 Bytes: 4
  %loadMem_4895c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895c3 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895c3)
  store %struct.Memory* %call_4895c3, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4895c7	 Bytes: 3
  %loadMem_4895c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895c7 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895c7)
  store %struct.Memory* %call_4895c7, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4895ca	 Bytes: 4
  %loadMem_4895ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895ca = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895ca)
  store %struct.Memory* %call_4895ca, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rsi,4), %r8d	 RIP: 4895ce	 Bytes: 4
  %loadMem_4895ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895ce = call %struct.Memory* @routine_movl___rdx__rsi_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895ce)
  store %struct.Memory* %call_4895ce, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %r8d	 RIP: 4895d2	 Bytes: 4
  %loadMem_4895d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895d2 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895d2)
  store %struct.Memory* %call_4895d2, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x18(%rbp)	 RIP: 4895d6	 Bytes: 4
  %loadMem_4895d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895d6 = call %struct.Memory* @routine_movl__r8d__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895d6)
  store %struct.Memory* %call_4895d6, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %r8d	 RIP: 4895da	 Bytes: 4
  %loadMem_4895da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895da = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895da)
  store %struct.Memory* %call_4895da, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4895de	 Bytes: 4
  %loadMem_4895de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895de = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895de)
  store %struct.Memory* %call_4895de, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4895e2	 Bytes: 4
  %loadMem_4895e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895e2 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895e2)
  store %struct.Memory* %call_4895e2, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 4895e6	 Bytes: 3
  %loadMem_4895e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895e6 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895e6)
  store %struct.Memory* %call_4895e6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 4895e9	 Bytes: 3
  %loadMem_4895e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895e9 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895e9)
  store %struct.Memory* %call_4895e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4895ec	 Bytes: 4
  %loadMem_4895ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895ec = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895ec)
  store %struct.Memory* %call_4895ec, %struct.Memory** %MEMORY

  ; Code: movl (%rsi,%rdx,4), %r9d	 RIP: 4895f0	 Bytes: 4
  %loadMem_4895f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895f0 = call %struct.Memory* @routine_movl___rsi__rdx_4____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895f0)
  store %struct.Memory* %call_4895f0, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %r9d	 RIP: 4895f4	 Bytes: 4
  %loadMem_4895f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895f4 = call %struct.Memory* @routine_sarl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895f4)
  store %struct.Memory* %call_4895f4, %struct.Memory** %MEMORY

  ; Code: subl %r9d, %r8d	 RIP: 4895f8	 Bytes: 3
  %loadMem_4895f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895f8 = call %struct.Memory* @routine_subl__r9d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895f8)
  store %struct.Memory* %call_4895f8, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x1c(%rbp)	 RIP: 4895fb	 Bytes: 4
  %loadMem_4895fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895fb = call %struct.Memory* @routine_movl__r8d__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895fb)
  store %struct.Memory* %call_4895fb, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %r8d	 RIP: 4895ff	 Bytes: 4
  %loadMem_4895ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4895ff = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4895ff)
  store %struct.Memory* %call_4895ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 489603	 Bytes: 4
  %loadMem_489603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489603 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489603)
  store %struct.Memory* %call_489603, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 489607	 Bytes: 4
  %loadMem_489607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489607 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489607)
  store %struct.Memory* %call_489607, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48960b	 Bytes: 3
  %loadMem_48960b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48960b = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48960b)
  store %struct.Memory* %call_48960b, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 48960e	 Bytes: 4
  %loadMem_48960e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48960e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48960e)
  store %struct.Memory* %call_48960e, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %r8d	 RIP: 489612	 Bytes: 4
  %loadMem_489612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489612 = call %struct.Memory* @routine_addl___rcx__rdx_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489612)
  store %struct.Memory* %call_489612, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x14(%rbp)	 RIP: 489616	 Bytes: 4
  %loadMem_489616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489616 = call %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489616)
  store %struct.Memory* %call_489616, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48961a	 Bytes: 8
  %loadMem_48961a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48961a = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48961a)
  store %struct.Memory* %call_48961a, %struct.Memory** %MEMORY

  ; Code: movl 0x11bf0(%rcx), %r8d	 RIP: 489622	 Bytes: 7
  %loadMem_489622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489622 = call %struct.Memory* @routine_movl_0x11bf0__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489622)
  store %struct.Memory* %call_489622, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %r9d	 RIP: 489629	 Bytes: 4
  %loadMem_489629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489629 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489629)
  store %struct.Memory* %call_489629, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48962d	 Bytes: 8
  %loadMem_48962d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48962d = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48962d)
  store %struct.Memory* %call_48962d, %struct.Memory** %MEMORY

  ; Code: addq $0x2138, %rcx	 RIP: 489635	 Bytes: 7
  %loadMem_489635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489635 = call %struct.Memory* @routine_addq__0x2138___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489635)
  store %struct.Memory* %call_489635, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 48963c	 Bytes: 4
  %loadMem_48963c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48963c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48963c)
  store %struct.Memory* %call_48963c, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %rdx	 RIP: 489640	 Bytes: 4
  %loadMem_489640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489640 = call %struct.Memory* @routine_shlq__0x9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489640)
  store %struct.Memory* %call_489640, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 489644	 Bytes: 3
  %loadMem_489644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489644 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489644)
  store %struct.Memory* %call_489644, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 489647	 Bytes: 4
  %loadMem_489647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489647 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489647)
  store %struct.Memory* %call_489647, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 48964b	 Bytes: 4
  %loadMem_48964b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48964b = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48964b)
  store %struct.Memory* %call_48964b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48964f	 Bytes: 3
  %loadMem_48964f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48964f = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48964f)
  store %struct.Memory* %call_48964f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 489652	 Bytes: 4
  %loadMem_489652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489652 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489652)
  store %struct.Memory* %call_489652, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %r10d	 RIP: 489656	 Bytes: 5
  %loadMem_489656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489656 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489656)
  store %struct.Memory* %call_489656, %struct.Memory** %MEMORY

  ; Code: addl %r10d, %r9d	 RIP: 48965b	 Bytes: 3
  %loadMem_48965b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48965b = call %struct.Memory* @routine_addl__r10d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48965b)
  store %struct.Memory* %call_48965b, %struct.Memory** %MEMORY

  ; Code: cmpl %r9d, %eax	 RIP: 48965e	 Bytes: 3
  %loadMem_48965e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48965e = call %struct.Memory* @routine_cmpl__r9d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48965e)
  store %struct.Memory* %call_48965e, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x54(%rbp)	 RIP: 489661	 Bytes: 4
  %loadMem_489661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489661 = call %struct.Memory* @routine_movl__r8d__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489661)
  store %struct.Memory* %call_489661, %struct.Memory** %MEMORY

  ; Code: jle .L_489675	 RIP: 489665	 Bytes: 6
  %loadMem_489665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489665 = call %struct.Memory* @routine_jle_.L_489675(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489665, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_489665, %struct.Memory** %MEMORY

  %loadBr_489665 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489665 = icmp eq i8 %loadBr_489665, 1
  br i1 %cmpBr_489665, label %block_.L_489675, label %block_48966b

block_48966b:
  ; Code: xorl %eax, %eax	 RIP: 48966b	 Bytes: 2
  %loadMem_48966b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48966b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48966b)
  store %struct.Memory* %call_48966b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 48966d	 Bytes: 3
  %loadMem_48966d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48966d = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48966d)
  store %struct.Memory* %call_48966d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4896aa	 RIP: 489670	 Bytes: 5
  %loadMem_489670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489670 = call %struct.Memory* @routine_jmpq_.L_4896aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489670, i64 58, i64 5)
  store %struct.Memory* %call_489670, %struct.Memory** %MEMORY

  br label %block_.L_4896aa

  ; Code: .L_489675:	 RIP: 489675	 Bytes: 0
block_.L_489675:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 489675	 Bytes: 3
  %loadMem_489675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489675 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489675)
  store %struct.Memory* %call_489675, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 489678	 Bytes: 8
  %loadMem_489678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489678 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489678)
  store %struct.Memory* %call_489678, %struct.Memory** %MEMORY

  ; Code: addq $0x2138, %rcx	 RIP: 489680	 Bytes: 7
  %loadMem_489680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489680 = call %struct.Memory* @routine_addq__0x2138___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489680)
  store %struct.Memory* %call_489680, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 489687	 Bytes: 4
  %loadMem_489687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489687 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489687)
  store %struct.Memory* %call_489687, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %rdx	 RIP: 48968b	 Bytes: 4
  %loadMem_48968b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48968b = call %struct.Memory* @routine_shlq__0x9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48968b)
  store %struct.Memory* %call_48968b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48968f	 Bytes: 3
  %loadMem_48968f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48968f = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48968f)
  store %struct.Memory* %call_48968f, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 489692	 Bytes: 4
  %loadMem_489692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489692 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489692)
  store %struct.Memory* %call_489692, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 489696	 Bytes: 4
  %loadMem_489696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489696 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489696)
  store %struct.Memory* %call_489696, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48969a	 Bytes: 3
  %loadMem_48969a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48969a = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48969a)
  store %struct.Memory* %call_48969a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 48969d	 Bytes: 4
  %loadMem_48969d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48969d = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48969d)
  store %struct.Memory* %call_48969d, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 4896a1	 Bytes: 4
  %loadMem_4896a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896a1 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896a1)
  store %struct.Memory* %call_4896a1, %struct.Memory** %MEMORY

  ; Code: addl %esi, %eax	 RIP: 4896a5	 Bytes: 2
  %loadMem_4896a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896a5 = call %struct.Memory* @routine_addl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896a5)
  store %struct.Memory* %call_4896a5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 4896a7	 Bytes: 3
  %loadMem_4896a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896a7 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896a7)
  store %struct.Memory* %call_4896a7, %struct.Memory** %MEMORY

  ; Code: .L_4896aa:	 RIP: 4896aa	 Bytes: 0
  br label %block_.L_4896aa
block_.L_4896aa:

  ; Code: movl -0x58(%rbp), %eax	 RIP: 4896aa	 Bytes: 3
  %loadMem_4896aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896aa = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896aa)
  store %struct.Memory* %call_4896aa, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %ecx	 RIP: 4896ad	 Bytes: 3
  %loadMem_4896ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896ad = call %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896ad)
  store %struct.Memory* %call_4896ad, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 4896b0	 Bytes: 2
  %loadMem_4896b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896b0 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896b0)
  store %struct.Memory* %call_4896b0, %struct.Memory** %MEMORY

  ; Code: jge .L_4896ce	 RIP: 4896b2	 Bytes: 6
  %loadMem_4896b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896b2 = call %struct.Memory* @routine_jge_.L_4896ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896b2, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_4896b2, %struct.Memory** %MEMORY

  %loadBr_4896b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4896b2 = icmp eq i8 %loadBr_4896b2, 1
  br i1 %cmpBr_4896b2, label %block_.L_4896ce, label %block_4896b8

block_4896b8:
  ; Code: movq 0x6cb900, %rax	 RIP: 4896b8	 Bytes: 8
  %loadMem_4896b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896b8 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896b8)
  store %struct.Memory* %call_4896b8, %struct.Memory** %MEMORY

  ; Code: movl 0x11bf0(%rax), %ecx	 RIP: 4896c0	 Bytes: 6
  %loadMem_4896c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896c0 = call %struct.Memory* @routine_movl_0x11bf0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896c0)
  store %struct.Memory* %call_4896c0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x5c(%rbp)	 RIP: 4896c6	 Bytes: 3
  %loadMem_4896c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896c6 = call %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896c6)
  store %struct.Memory* %call_4896c6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48974f	 RIP: 4896c9	 Bytes: 5
  %loadMem_4896c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896c9 = call %struct.Memory* @routine_jmpq_.L_48974f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896c9, i64 134, i64 5)
  store %struct.Memory* %call_4896c9, %struct.Memory** %MEMORY

  br label %block_.L_48974f

  ; Code: .L_4896ce:	 RIP: 4896ce	 Bytes: 0
block_.L_4896ce:

  ; Code: xorl %eax, %eax	 RIP: 4896ce	 Bytes: 2
  %loadMem_4896ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896ce = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896ce)
  store %struct.Memory* %call_4896ce, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4896d0	 Bytes: 3
  %loadMem_4896d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896d0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896d0)
  store %struct.Memory* %call_4896d0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4896d3	 Bytes: 8
  %loadMem_4896d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896d3 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896d3)
  store %struct.Memory* %call_4896d3, %struct.Memory** %MEMORY

  ; Code: addq $0x2138, %rdx	 RIP: 4896db	 Bytes: 7
  %loadMem_4896db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896db = call %struct.Memory* @routine_addq__0x2138___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896db)
  store %struct.Memory* %call_4896db, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 4896e2	 Bytes: 4
  %loadMem_4896e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896e2 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896e2)
  store %struct.Memory* %call_4896e2, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %rsi	 RIP: 4896e6	 Bytes: 4
  %loadMem_4896e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896e6 = call %struct.Memory* @routine_shlq__0x9___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896e6)
  store %struct.Memory* %call_4896e6, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4896ea	 Bytes: 3
  %loadMem_4896ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896ea = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896ea)
  store %struct.Memory* %call_4896ea, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 4896ed	 Bytes: 4
  %loadMem_4896ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896ed = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896ed)
  store %struct.Memory* %call_4896ed, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rsi	 RIP: 4896f1	 Bytes: 4
  %loadMem_4896f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896f1 = call %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896f1)
  store %struct.Memory* %call_4896f1, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4896f5	 Bytes: 3
  %loadMem_4896f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896f5 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896f5)
  store %struct.Memory* %call_4896f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4896f8	 Bytes: 4
  %loadMem_4896f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896f8 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896f8)
  store %struct.Memory* %call_4896f8, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %edi	 RIP: 4896fc	 Bytes: 4
  %loadMem_4896fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4896fc = call %struct.Memory* @routine_movzwl___rdx__rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4896fc)
  store %struct.Memory* %call_4896fc, %struct.Memory** %MEMORY

  ; Code: addl %edi, %ecx	 RIP: 489700	 Bytes: 2
  %loadMem_489700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489700 = call %struct.Memory* @routine_addl__edi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489700)
  store %struct.Memory* %call_489700, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 489702	 Bytes: 2
  %loadMem_489702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489702 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489702)
  store %struct.Memory* %call_489702, %struct.Memory** %MEMORY

  ; Code: jle .L_489714	 RIP: 489704	 Bytes: 6
  %loadMem_489704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489704 = call %struct.Memory* @routine_jle_.L_489714(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489704, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_489704, %struct.Memory** %MEMORY

  %loadBr_489704 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489704 = icmp eq i8 %loadBr_489704, 1
  br i1 %cmpBr_489704, label %block_.L_489714, label %block_48970a

block_48970a:
  ; Code: xorl %eax, %eax	 RIP: 48970a	 Bytes: 2
  %loadMem_48970a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48970a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48970a)
  store %struct.Memory* %call_48970a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 48970c	 Bytes: 3
  %loadMem_48970c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48970c = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48970c)
  store %struct.Memory* %call_48970c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489749	 RIP: 48970f	 Bytes: 5
  %loadMem_48970f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48970f = call %struct.Memory* @routine_jmpq_.L_489749(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48970f, i64 58, i64 5)
  store %struct.Memory* %call_48970f, %struct.Memory** %MEMORY

  br label %block_.L_489749

  ; Code: .L_489714:	 RIP: 489714	 Bytes: 0
block_.L_489714:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 489714	 Bytes: 3
  %loadMem_489714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489714 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489714)
  store %struct.Memory* %call_489714, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 489717	 Bytes: 8
  %loadMem_489717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489717 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489717)
  store %struct.Memory* %call_489717, %struct.Memory** %MEMORY

  ; Code: addq $0x2138, %rcx	 RIP: 48971f	 Bytes: 7
  %loadMem_48971f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48971f = call %struct.Memory* @routine_addq__0x2138___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48971f)
  store %struct.Memory* %call_48971f, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 489726	 Bytes: 4
  %loadMem_489726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489726 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489726)
  store %struct.Memory* %call_489726, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %rdx	 RIP: 48972a	 Bytes: 4
  %loadMem_48972a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48972a = call %struct.Memory* @routine_shlq__0x9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48972a)
  store %struct.Memory* %call_48972a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48972e	 Bytes: 3
  %loadMem_48972e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48972e = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48972e)
  store %struct.Memory* %call_48972e, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 489731	 Bytes: 4
  %loadMem_489731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489731 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489731)
  store %struct.Memory* %call_489731, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 489735	 Bytes: 4
  %loadMem_489735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489735 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489735)
  store %struct.Memory* %call_489735, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 489739	 Bytes: 3
  %loadMem_489739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489739 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489739)
  store %struct.Memory* %call_489739, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 48973c	 Bytes: 4
  %loadMem_48973c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48973c = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48973c)
  store %struct.Memory* %call_48973c, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 489740	 Bytes: 4
  %loadMem_489740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489740 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489740)
  store %struct.Memory* %call_489740, %struct.Memory** %MEMORY

  ; Code: addl %esi, %eax	 RIP: 489744	 Bytes: 2
  %loadMem_489744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489744 = call %struct.Memory* @routine_addl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489744)
  store %struct.Memory* %call_489744, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 489746	 Bytes: 3
  %loadMem_489746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489746 = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489746)
  store %struct.Memory* %call_489746, %struct.Memory** %MEMORY

  ; Code: .L_489749:	 RIP: 489749	 Bytes: 0
  br label %block_.L_489749
block_.L_489749:

  ; Code: movl -0x60(%rbp), %eax	 RIP: 489749	 Bytes: 3
  %loadMem_489749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489749 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489749)
  store %struct.Memory* %call_489749, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 48974c	 Bytes: 3
  %loadMem_48974c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48974c = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48974c)
  store %struct.Memory* %call_48974c, %struct.Memory** %MEMORY

  ; Code: .L_48974f:	 RIP: 48974f	 Bytes: 0
  br label %block_.L_48974f
block_.L_48974f:

  ; Code: movl -0x5c(%rbp), %eax	 RIP: 48974f	 Bytes: 3
  %loadMem_48974f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48974f = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48974f)
  store %struct.Memory* %call_48974f, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 489752	 Bytes: 2
  %loadMem_489752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489752 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489752)
  store %struct.Memory* %call_489752, %struct.Memory** %MEMORY

  ; Code: movw %ax, %dx	 RIP: 489754	 Bytes: 3
  %loadMem_489754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489754 = call %struct.Memory* @routine_movw__ax___dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489754)
  store %struct.Memory* %call_489754, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rsi	 RIP: 489757	 Bytes: 8
  %loadMem_489757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489757 = call %struct.Memory* @routine_movq_0x70fcf0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489757)
  store %struct.Memory* %call_489757, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rsi), %rsi	 RIP: 48975f	 Bytes: 7
  %loadMem_48975f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48975f = call %struct.Memory* @routine_movq_0x1940__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48975f)
  store %struct.Memory* %call_48975f, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rsi	 RIP: 489766	 Bytes: 3
  %loadMem_489766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489766 = call %struct.Memory* @routine_movq___rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489766)
  store %struct.Memory* %call_489766, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 489769	 Bytes: 3
  %loadMem_489769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489769 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489769)
  store %struct.Memory* %call_489769, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %eax	 RIP: 48976c	 Bytes: 3
  %loadMem_48976c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48976c = call %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48976c)
  store %struct.Memory* %call_48976c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 48976f	 Bytes: 3
  %loadMem_48976f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48976f = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48976f)
  store %struct.Memory* %call_48976f, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 489772	 Bytes: 4
  %loadMem_489772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489772 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489772)
  store %struct.Memory* %call_489772, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 489776	 Bytes: 3
  %loadMem_489776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489776 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489776)
  store %struct.Memory* %call_489776, %struct.Memory** %MEMORY

  ; Code: addl -0x24(%rbp), %eax	 RIP: 489779	 Bytes: 3
  %loadMem_489779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489779 = call %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489779)
  store %struct.Memory* %call_489779, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 48977c	 Bytes: 3
  %loadMem_48977c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48977c = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48977c)
  store %struct.Memory* %call_48977c, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rsi,%rdi,2)	 RIP: 48977f	 Bytes: 4
  %loadMem_48977f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48977f = call %struct.Memory* @routine_movw__dx____rsi__rdi_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48977f)
  store %struct.Memory* %call_48977f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 489783	 Bytes: 8
  %loadMem_489783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489783 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489783)
  store %struct.Memory* %call_489783, %struct.Memory** %MEMORY

  ; Code: movl 0x11bec(%rsi), %eax	 RIP: 48978b	 Bytes: 6
  %loadMem_48978b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48978b = call %struct.Memory* @routine_movl_0x11bec__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48978b)
  store %struct.Memory* %call_48978b, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %r8d	 RIP: 489791	 Bytes: 4
  %loadMem_489791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489791 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489791)
  store %struct.Memory* %call_489791, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 489795	 Bytes: 8
  %loadMem_489795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489795 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489795)
  store %struct.Memory* %call_489795, %struct.Memory** %MEMORY

  ; Code: addq $0x12b8, %rsi	 RIP: 48979d	 Bytes: 7
  %loadMem_48979d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48979d = call %struct.Memory* @routine_addq__0x12b8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48979d)
  store %struct.Memory* %call_48979d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4897a4	 Bytes: 4
  %loadMem_4897a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897a4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897a4)
  store %struct.Memory* %call_4897a4, %struct.Memory** %MEMORY

  ; Code: movslq (%rdi), %rdi	 RIP: 4897a8	 Bytes: 3
  %loadMem_4897a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897a8 = call %struct.Memory* @routine_movslq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897a8)
  store %struct.Memory* %call_4897a8, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %rdi	 RIP: 4897ab	 Bytes: 4
  %loadMem_4897ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897ab = call %struct.Memory* @routine_shlq__0x9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897ab)
  store %struct.Memory* %call_4897ab, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 4897af	 Bytes: 3
  %loadMem_4897af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897af = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897af)
  store %struct.Memory* %call_4897af, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 4897b2	 Bytes: 4
  %loadMem_4897b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897b2 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897b2)
  store %struct.Memory* %call_4897b2, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdi	 RIP: 4897b6	 Bytes: 4
  %loadMem_4897b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897b6 = call %struct.Memory* @routine_shlq__0x5___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897b6)
  store %struct.Memory* %call_4897b6, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 4897ba	 Bytes: 3
  %loadMem_4897ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897ba = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897ba)
  store %struct.Memory* %call_4897ba, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4897bd	 Bytes: 4
  %loadMem_4897bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897bd = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897bd)
  store %struct.Memory* %call_4897bd, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%rdi,2), %r9d	 RIP: 4897c1	 Bytes: 5
  %loadMem_4897c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897c1 = call %struct.Memory* @routine_movzwl___rsi__rdi_2____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897c1)
  store %struct.Memory* %call_4897c1, %struct.Memory** %MEMORY

  ; Code: addl %r9d, %r8d	 RIP: 4897c6	 Bytes: 3
  %loadMem_4897c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897c6 = call %struct.Memory* @routine_addl__r9d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897c6)
  store %struct.Memory* %call_4897c6, %struct.Memory** %MEMORY

  ; Code: cmpl %r8d, %ecx	 RIP: 4897c9	 Bytes: 3
  %loadMem_4897c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897c9 = call %struct.Memory* @routine_cmpl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897c9)
  store %struct.Memory* %call_4897c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x64(%rbp)	 RIP: 4897cc	 Bytes: 3
  %loadMem_4897cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897cc = call %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897cc)
  store %struct.Memory* %call_4897cc, %struct.Memory** %MEMORY

  ; Code: jle .L_4897df	 RIP: 4897cf	 Bytes: 6
  %loadMem_4897cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897cf = call %struct.Memory* @routine_jle_.L_4897df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897cf, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_4897cf, %struct.Memory** %MEMORY

  %loadBr_4897cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4897cf = icmp eq i8 %loadBr_4897cf, 1
  br i1 %cmpBr_4897cf, label %block_.L_4897df, label %block_4897d5

block_4897d5:
  ; Code: xorl %eax, %eax	 RIP: 4897d5	 Bytes: 2
  %loadMem_4897d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897d5 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897d5)
  store %struct.Memory* %call_4897d5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 4897d7	 Bytes: 3
  %loadMem_4897d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897d7 = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897d7)
  store %struct.Memory* %call_4897d7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489817	 RIP: 4897da	 Bytes: 5
  %loadMem_4897da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897da = call %struct.Memory* @routine_jmpq_.L_489817(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897da, i64 61, i64 5)
  store %struct.Memory* %call_4897da, %struct.Memory** %MEMORY

  br label %block_.L_489817

  ; Code: .L_4897df:	 RIP: 4897df	 Bytes: 0
block_.L_4897df:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 4897df	 Bytes: 3
  %loadMem_4897df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897df = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897df)
  store %struct.Memory* %call_4897df, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4897e2	 Bytes: 8
  %loadMem_4897e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897e2 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897e2)
  store %struct.Memory* %call_4897e2, %struct.Memory** %MEMORY

  ; Code: addq $0x12b8, %rcx	 RIP: 4897ea	 Bytes: 7
  %loadMem_4897ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897ea = call %struct.Memory* @routine_addq__0x12b8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897ea)
  store %struct.Memory* %call_4897ea, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4897f1	 Bytes: 4
  %loadMem_4897f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897f1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897f1)
  store %struct.Memory* %call_4897f1, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx), %rdx	 RIP: 4897f5	 Bytes: 3
  %loadMem_4897f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897f5 = call %struct.Memory* @routine_movslq___rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897f5)
  store %struct.Memory* %call_4897f5, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %rdx	 RIP: 4897f8	 Bytes: 4
  %loadMem_4897f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897f8 = call %struct.Memory* @routine_shlq__0x9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897f8)
  store %struct.Memory* %call_4897f8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4897fc	 Bytes: 3
  %loadMem_4897fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897fc = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897fc)
  store %struct.Memory* %call_4897fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4897ff	 Bytes: 4
  %loadMem_4897ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4897ff = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4897ff)
  store %struct.Memory* %call_4897ff, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 489803	 Bytes: 4
  %loadMem_489803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489803 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489803)
  store %struct.Memory* %call_489803, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 489807	 Bytes: 3
  %loadMem_489807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489807 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489807)
  store %struct.Memory* %call_489807, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 48980a	 Bytes: 4
  %loadMem_48980a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48980a = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48980a)
  store %struct.Memory* %call_48980a, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 48980e	 Bytes: 4
  %loadMem_48980e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48980e = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48980e)
  store %struct.Memory* %call_48980e, %struct.Memory** %MEMORY

  ; Code: addl %esi, %eax	 RIP: 489812	 Bytes: 2
  %loadMem_489812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489812 = call %struct.Memory* @routine_addl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489812)
  store %struct.Memory* %call_489812, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 489814	 Bytes: 3
  %loadMem_489814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489814 = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489814)
  store %struct.Memory* %call_489814, %struct.Memory** %MEMORY

  ; Code: .L_489817:	 RIP: 489817	 Bytes: 0
  br label %block_.L_489817
block_.L_489817:

  ; Code: movl -0x68(%rbp), %eax	 RIP: 489817	 Bytes: 3
  %loadMem_489817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489817 = call %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489817)
  store %struct.Memory* %call_489817, %struct.Memory** %MEMORY

  ; Code: movl -0x64(%rbp), %ecx	 RIP: 48981a	 Bytes: 3
  %loadMem_48981a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48981a = call %struct.Memory* @routine_movl_MINUS0x64__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48981a)
  store %struct.Memory* %call_48981a, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 48981d	 Bytes: 2
  %loadMem_48981d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48981d = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48981d)
  store %struct.Memory* %call_48981d, %struct.Memory** %MEMORY

  ; Code: jge .L_48983b	 RIP: 48981f	 Bytes: 6
  %loadMem_48981f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48981f = call %struct.Memory* @routine_jge_.L_48983b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48981f, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_48981f, %struct.Memory** %MEMORY

  %loadBr_48981f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48981f = icmp eq i8 %loadBr_48981f, 1
  br i1 %cmpBr_48981f, label %block_.L_48983b, label %block_489825

block_489825:
  ; Code: movq 0x6cb900, %rax	 RIP: 489825	 Bytes: 8
  %loadMem_489825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489825 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489825)
  store %struct.Memory* %call_489825, %struct.Memory** %MEMORY

  ; Code: movl 0x11bec(%rax), %ecx	 RIP: 48982d	 Bytes: 6
  %loadMem_48982d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48982d = call %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48982d)
  store %struct.Memory* %call_48982d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x6c(%rbp)	 RIP: 489833	 Bytes: 3
  %loadMem_489833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489833 = call %struct.Memory* @routine_movl__ecx__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489833)
  store %struct.Memory* %call_489833, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4898c2	 RIP: 489836	 Bytes: 5
  %loadMem_489836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489836 = call %struct.Memory* @routine_jmpq_.L_4898c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489836, i64 140, i64 5)
  store %struct.Memory* %call_489836, %struct.Memory** %MEMORY

  br label %block_.L_4898c2

  ; Code: .L_48983b:	 RIP: 48983b	 Bytes: 0
block_.L_48983b:

  ; Code: xorl %eax, %eax	 RIP: 48983b	 Bytes: 2
  %loadMem_48983b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48983b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48983b)
  store %struct.Memory* %call_48983b, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 48983d	 Bytes: 3
  %loadMem_48983d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48983d = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48983d)
  store %struct.Memory* %call_48983d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 489840	 Bytes: 8
  %loadMem_489840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489840 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489840)
  store %struct.Memory* %call_489840, %struct.Memory** %MEMORY

  ; Code: addq $0x12b8, %rdx	 RIP: 489848	 Bytes: 7
  %loadMem_489848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489848 = call %struct.Memory* @routine_addq__0x12b8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489848)
  store %struct.Memory* %call_489848, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 48984f	 Bytes: 4
  %loadMem_48984f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48984f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48984f)
  store %struct.Memory* %call_48984f, %struct.Memory** %MEMORY

  ; Code: movslq (%rsi), %rsi	 RIP: 489853	 Bytes: 3
  %loadMem_489853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489853 = call %struct.Memory* @routine_movslq___rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489853)
  store %struct.Memory* %call_489853, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %rsi	 RIP: 489856	 Bytes: 4
  %loadMem_489856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489856 = call %struct.Memory* @routine_shlq__0x9___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489856)
  store %struct.Memory* %call_489856, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 48985a	 Bytes: 3
  %loadMem_48985a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48985a = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48985a)
  store %struct.Memory* %call_48985a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 48985d	 Bytes: 4
  %loadMem_48985d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48985d = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48985d)
  store %struct.Memory* %call_48985d, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rsi	 RIP: 489861	 Bytes: 4
  %loadMem_489861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489861 = call %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489861)
  store %struct.Memory* %call_489861, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 489865	 Bytes: 3
  %loadMem_489865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489865 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489865)
  store %struct.Memory* %call_489865, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 489868	 Bytes: 4
  %loadMem_489868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489868 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489868)
  store %struct.Memory* %call_489868, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %edi	 RIP: 48986c	 Bytes: 4
  %loadMem_48986c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48986c = call %struct.Memory* @routine_movzwl___rdx__rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48986c)
  store %struct.Memory* %call_48986c, %struct.Memory** %MEMORY

  ; Code: addl %edi, %ecx	 RIP: 489870	 Bytes: 2
  %loadMem_489870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489870 = call %struct.Memory* @routine_addl__edi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489870)
  store %struct.Memory* %call_489870, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 489872	 Bytes: 2
  %loadMem_489872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489872 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489872)
  store %struct.Memory* %call_489872, %struct.Memory** %MEMORY

  ; Code: jle .L_489884	 RIP: 489874	 Bytes: 6
  %loadMem_489874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489874 = call %struct.Memory* @routine_jle_.L_489884(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489874, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_489874, %struct.Memory** %MEMORY

  %loadBr_489874 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489874 = icmp eq i8 %loadBr_489874, 1
  br i1 %cmpBr_489874, label %block_.L_489884, label %block_48987a

block_48987a:
  ; Code: xorl %eax, %eax	 RIP: 48987a	 Bytes: 2
  %loadMem_48987a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48987a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48987a)
  store %struct.Memory* %call_48987a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 48987c	 Bytes: 3
  %loadMem_48987c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48987c = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48987c)
  store %struct.Memory* %call_48987c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4898bc	 RIP: 48987f	 Bytes: 5
  %loadMem_48987f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48987f = call %struct.Memory* @routine_jmpq_.L_4898bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48987f, i64 61, i64 5)
  store %struct.Memory* %call_48987f, %struct.Memory** %MEMORY

  br label %block_.L_4898bc

  ; Code: .L_489884:	 RIP: 489884	 Bytes: 0
block_.L_489884:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 489884	 Bytes: 3
  %loadMem_489884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489884 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489884)
  store %struct.Memory* %call_489884, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 489887	 Bytes: 8
  %loadMem_489887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489887 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489887)
  store %struct.Memory* %call_489887, %struct.Memory** %MEMORY

  ; Code: addq $0x12b8, %rcx	 RIP: 48988f	 Bytes: 7
  %loadMem_48988f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48988f = call %struct.Memory* @routine_addq__0x12b8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48988f)
  store %struct.Memory* %call_48988f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 489896	 Bytes: 4
  %loadMem_489896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489896 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489896)
  store %struct.Memory* %call_489896, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx), %rdx	 RIP: 48989a	 Bytes: 3
  %loadMem_48989a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48989a = call %struct.Memory* @routine_movslq___rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48989a)
  store %struct.Memory* %call_48989a, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %rdx	 RIP: 48989d	 Bytes: 4
  %loadMem_48989d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48989d = call %struct.Memory* @routine_shlq__0x9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48989d)
  store %struct.Memory* %call_48989d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4898a1	 Bytes: 3
  %loadMem_4898a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898a1 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898a1)
  store %struct.Memory* %call_4898a1, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4898a4	 Bytes: 4
  %loadMem_4898a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898a4 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898a4)
  store %struct.Memory* %call_4898a4, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 4898a8	 Bytes: 4
  %loadMem_4898a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898a8 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898a8)
  store %struct.Memory* %call_4898a8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4898ac	 Bytes: 3
  %loadMem_4898ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898ac = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898ac)
  store %struct.Memory* %call_4898ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4898af	 Bytes: 4
  %loadMem_4898af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898af = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898af)
  store %struct.Memory* %call_4898af, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 4898b3	 Bytes: 4
  %loadMem_4898b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898b3 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898b3)
  store %struct.Memory* %call_4898b3, %struct.Memory** %MEMORY

  ; Code: addl %esi, %eax	 RIP: 4898b7	 Bytes: 2
  %loadMem_4898b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898b7 = call %struct.Memory* @routine_addl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898b7)
  store %struct.Memory* %call_4898b7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 4898b9	 Bytes: 3
  %loadMem_4898b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898b9 = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898b9)
  store %struct.Memory* %call_4898b9, %struct.Memory** %MEMORY

  ; Code: .L_4898bc:	 RIP: 4898bc	 Bytes: 0
  br label %block_.L_4898bc
block_.L_4898bc:

  ; Code: movl -0x70(%rbp), %eax	 RIP: 4898bc	 Bytes: 3
  %loadMem_4898bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898bc = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898bc)
  store %struct.Memory* %call_4898bc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 4898bf	 Bytes: 3
  %loadMem_4898bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898bf = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898bf)
  store %struct.Memory* %call_4898bf, %struct.Memory** %MEMORY

  ; Code: .L_4898c2:	 RIP: 4898c2	 Bytes: 0
  br label %block_.L_4898c2
block_.L_4898c2:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 4898c2	 Bytes: 3
  %loadMem_4898c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898c2 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898c2)
  store %struct.Memory* %call_4898c2, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 4898c5	 Bytes: 2
  %loadMem_4898c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898c5 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898c5)
  store %struct.Memory* %call_4898c5, %struct.Memory** %MEMORY

  ; Code: movw %ax, %dx	 RIP: 4898c7	 Bytes: 3
  %loadMem_4898c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898c7 = call %struct.Memory* @routine_movw__ax___dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898c7)
  store %struct.Memory* %call_4898c7, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rsi	 RIP: 4898ca	 Bytes: 8
  %loadMem_4898ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898ca = call %struct.Memory* @routine_movq_0x70fcf0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898ca)
  store %struct.Memory* %call_4898ca, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rsi), %rsi	 RIP: 4898d2	 Bytes: 7
  %loadMem_4898d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898d2 = call %struct.Memory* @routine_movq_0x1918__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898d2)
  store %struct.Memory* %call_4898d2, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4898d9	 Bytes: 3
  %loadMem_4898d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898d9 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898d9)
  store %struct.Memory* %call_4898d9, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %eax	 RIP: 4898dc	 Bytes: 3
  %loadMem_4898dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898dc = call %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898dc)
  store %struct.Memory* %call_4898dc, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 4898df	 Bytes: 3
  %loadMem_4898df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898df = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898df)
  store %struct.Memory* %call_4898df, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4898e2	 Bytes: 4
  %loadMem_4898e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898e2 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898e2)
  store %struct.Memory* %call_4898e2, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 4898e6	 Bytes: 3
  %loadMem_4898e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898e6 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898e6)
  store %struct.Memory* %call_4898e6, %struct.Memory** %MEMORY

  ; Code: addl -0x24(%rbp), %eax	 RIP: 4898e9	 Bytes: 3
  %loadMem_4898e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898e9 = call %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898e9)
  store %struct.Memory* %call_4898e9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 4898ec	 Bytes: 3
  %loadMem_4898ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898ec = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898ec)
  store %struct.Memory* %call_4898ec, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rsi,%rdi,2)	 RIP: 4898ef	 Bytes: 4
  %loadMem_4898ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898ef = call %struct.Memory* @routine_movw__dx____rsi__rdi_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898ef)
  store %struct.Memory* %call_4898ef, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 4898f3	 Bytes: 8
  %loadMem_4898f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898f3 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898f3)
  store %struct.Memory* %call_4898f3, %struct.Memory** %MEMORY

  ; Code: movl 0x11bf0(%rsi), %eax	 RIP: 4898fb	 Bytes: 6
  %loadMem_4898fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4898fb = call %struct.Memory* @routine_movl_0x11bf0__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4898fb)
  store %struct.Memory* %call_4898fb, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 489901	 Bytes: 4
  %loadMem_489901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489901 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489901)
  store %struct.Memory* %call_489901, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 489905	 Bytes: 8
  %loadMem_489905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489905 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489905)
  store %struct.Memory* %call_489905, %struct.Memory** %MEMORY

  ; Code: addq $0x2138, %rsi	 RIP: 48990d	 Bytes: 7
  %loadMem_48990d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48990d = call %struct.Memory* @routine_addq__0x2138___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48990d)
  store %struct.Memory* %call_48990d, %struct.Memory** %MEMORY

  ; Code: addq $0x800, %rsi	 RIP: 489914	 Bytes: 7
  %loadMem_489914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489914 = call %struct.Memory* @routine_addq__0x800___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489914)
  store %struct.Memory* %call_489914, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdi	 RIP: 48991b	 Bytes: 4
  %loadMem_48991b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48991b = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48991b)
  store %struct.Memory* %call_48991b, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %rdi	 RIP: 48991f	 Bytes: 4
  %loadMem_48991f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48991f = call %struct.Memory* @routine_shlq__0x9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48991f)
  store %struct.Memory* %call_48991f, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 489923	 Bytes: 3
  %loadMem_489923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489923 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489923)
  store %struct.Memory* %call_489923, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 489926	 Bytes: 4
  %loadMem_489926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489926 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489926)
  store %struct.Memory* %call_489926, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdi	 RIP: 48992a	 Bytes: 4
  %loadMem_48992a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48992a = call %struct.Memory* @routine_shlq__0x5___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48992a)
  store %struct.Memory* %call_48992a, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 48992e	 Bytes: 3
  %loadMem_48992e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48992e = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48992e)
  store %struct.Memory* %call_48992e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 489931	 Bytes: 4
  %loadMem_489931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489931 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489931)
  store %struct.Memory* %call_489931, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%rdi,2), %r9d	 RIP: 489935	 Bytes: 5
  %loadMem_489935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489935 = call %struct.Memory* @routine_movzwl___rsi__rdi_2____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489935)
  store %struct.Memory* %call_489935, %struct.Memory** %MEMORY

  ; Code: addl %r9d, %r8d	 RIP: 48993a	 Bytes: 3
  %loadMem_48993a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48993a = call %struct.Memory* @routine_addl__r9d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48993a)
  store %struct.Memory* %call_48993a, %struct.Memory** %MEMORY

  ; Code: cmpl %r8d, %ecx	 RIP: 48993d	 Bytes: 3
  %loadMem_48993d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48993d = call %struct.Memory* @routine_cmpl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48993d)
  store %struct.Memory* %call_48993d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 489940	 Bytes: 3
  %loadMem_489940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489940 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489940)
  store %struct.Memory* %call_489940, %struct.Memory** %MEMORY

  ; Code: jle .L_489953	 RIP: 489943	 Bytes: 6
  %loadMem_489943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489943 = call %struct.Memory* @routine_jle_.L_489953(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489943, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_489943, %struct.Memory** %MEMORY

  %loadBr_489943 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489943 = icmp eq i8 %loadBr_489943, 1
  br i1 %cmpBr_489943, label %block_.L_489953, label %block_489949

block_489949:
  ; Code: xorl %eax, %eax	 RIP: 489949	 Bytes: 2
  %loadMem_489949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489949 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489949)
  store %struct.Memory* %call_489949, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 48994b	 Bytes: 3
  %loadMem_48994b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48994b = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48994b)
  store %struct.Memory* %call_48994b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48998f	 RIP: 48994e	 Bytes: 5
  %loadMem_48994e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48994e = call %struct.Memory* @routine_jmpq_.L_48998f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48994e, i64 65, i64 5)
  store %struct.Memory* %call_48994e, %struct.Memory** %MEMORY

  br label %block_.L_48998f

  ; Code: .L_489953:	 RIP: 489953	 Bytes: 0
block_.L_489953:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 489953	 Bytes: 3
  %loadMem_489953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489953 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489953)
  store %struct.Memory* %call_489953, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 489956	 Bytes: 8
  %loadMem_489956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489956 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489956)
  store %struct.Memory* %call_489956, %struct.Memory** %MEMORY

  ; Code: addq $0x2138, %rcx	 RIP: 48995e	 Bytes: 7
  %loadMem_48995e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48995e = call %struct.Memory* @routine_addq__0x2138___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48995e)
  store %struct.Memory* %call_48995e, %struct.Memory** %MEMORY

  ; Code: addq $0x800, %rcx	 RIP: 489965	 Bytes: 7
  %loadMem_489965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489965 = call %struct.Memory* @routine_addq__0x800___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489965)
  store %struct.Memory* %call_489965, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 48996c	 Bytes: 4
  %loadMem_48996c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48996c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48996c)
  store %struct.Memory* %call_48996c, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %rdx	 RIP: 489970	 Bytes: 4
  %loadMem_489970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489970 = call %struct.Memory* @routine_shlq__0x9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489970)
  store %struct.Memory* %call_489970, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 489974	 Bytes: 3
  %loadMem_489974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489974 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489974)
  store %struct.Memory* %call_489974, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 489977	 Bytes: 4
  %loadMem_489977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489977 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489977)
  store %struct.Memory* %call_489977, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 48997b	 Bytes: 4
  %loadMem_48997b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48997b = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48997b)
  store %struct.Memory* %call_48997b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48997f	 Bytes: 3
  %loadMem_48997f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48997f = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48997f)
  store %struct.Memory* %call_48997f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 489982	 Bytes: 4
  %loadMem_489982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489982 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489982)
  store %struct.Memory* %call_489982, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 489986	 Bytes: 4
  %loadMem_489986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489986 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489986)
  store %struct.Memory* %call_489986, %struct.Memory** %MEMORY

  ; Code: addl %esi, %eax	 RIP: 48998a	 Bytes: 2
  %loadMem_48998a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48998a = call %struct.Memory* @routine_addl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48998a)
  store %struct.Memory* %call_48998a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 48998c	 Bytes: 3
  %loadMem_48998c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48998c = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48998c)
  store %struct.Memory* %call_48998c, %struct.Memory** %MEMORY

  ; Code: .L_48998f:	 RIP: 48998f	 Bytes: 0
  br label %block_.L_48998f
block_.L_48998f:

  ; Code: movl -0x78(%rbp), %eax	 RIP: 48998f	 Bytes: 3
  %loadMem_48998f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48998f = call %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48998f)
  store %struct.Memory* %call_48998f, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %ecx	 RIP: 489992	 Bytes: 3
  %loadMem_489992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489992 = call %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489992)
  store %struct.Memory* %call_489992, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 489995	 Bytes: 2
  %loadMem_489995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489995 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489995)
  store %struct.Memory* %call_489995, %struct.Memory** %MEMORY

  ; Code: jge .L_4899b3	 RIP: 489997	 Bytes: 6
  %loadMem_489997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489997 = call %struct.Memory* @routine_jge_.L_4899b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489997, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_489997, %struct.Memory** %MEMORY

  %loadBr_489997 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489997 = icmp eq i8 %loadBr_489997, 1
  br i1 %cmpBr_489997, label %block_.L_4899b3, label %block_48999d

block_48999d:
  ; Code: movq 0x6cb900, %rax	 RIP: 48999d	 Bytes: 8
  %loadMem_48999d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48999d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48999d)
  store %struct.Memory* %call_48999d, %struct.Memory** %MEMORY

  ; Code: movl 0x11bf0(%rax), %ecx	 RIP: 4899a5	 Bytes: 6
  %loadMem_4899a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899a5 = call %struct.Memory* @routine_movl_0x11bf0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899a5)
  store %struct.Memory* %call_4899a5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x7c(%rbp)	 RIP: 4899ab	 Bytes: 3
  %loadMem_4899ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899ab = call %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899ab)
  store %struct.Memory* %call_4899ab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489a42	 RIP: 4899ae	 Bytes: 5
  %loadMem_4899ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899ae = call %struct.Memory* @routine_jmpq_.L_489a42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899ae, i64 148, i64 5)
  store %struct.Memory* %call_4899ae, %struct.Memory** %MEMORY

  br label %block_.L_489a42

  ; Code: .L_4899b3:	 RIP: 4899b3	 Bytes: 0
block_.L_4899b3:

  ; Code: xorl %eax, %eax	 RIP: 4899b3	 Bytes: 2
  %loadMem_4899b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899b3 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899b3)
  store %struct.Memory* %call_4899b3, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 4899b5	 Bytes: 3
  %loadMem_4899b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899b5 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899b5)
  store %struct.Memory* %call_4899b5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4899b8	 Bytes: 8
  %loadMem_4899b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899b8 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899b8)
  store %struct.Memory* %call_4899b8, %struct.Memory** %MEMORY

  ; Code: addq $0x2138, %rdx	 RIP: 4899c0	 Bytes: 7
  %loadMem_4899c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899c0 = call %struct.Memory* @routine_addq__0x2138___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899c0)
  store %struct.Memory* %call_4899c0, %struct.Memory** %MEMORY

  ; Code: addq $0x800, %rdx	 RIP: 4899c7	 Bytes: 7
  %loadMem_4899c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899c7 = call %struct.Memory* @routine_addq__0x800___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899c7)
  store %struct.Memory* %call_4899c7, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 4899ce	 Bytes: 4
  %loadMem_4899ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899ce = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899ce)
  store %struct.Memory* %call_4899ce, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %rsi	 RIP: 4899d2	 Bytes: 4
  %loadMem_4899d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899d2 = call %struct.Memory* @routine_shlq__0x9___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899d2)
  store %struct.Memory* %call_4899d2, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4899d6	 Bytes: 3
  %loadMem_4899d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899d6 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899d6)
  store %struct.Memory* %call_4899d6, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 4899d9	 Bytes: 4
  %loadMem_4899d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899d9 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899d9)
  store %struct.Memory* %call_4899d9, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rsi	 RIP: 4899dd	 Bytes: 4
  %loadMem_4899dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899dd = call %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899dd)
  store %struct.Memory* %call_4899dd, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4899e1	 Bytes: 3
  %loadMem_4899e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899e1 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899e1)
  store %struct.Memory* %call_4899e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4899e4	 Bytes: 4
  %loadMem_4899e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899e4 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899e4)
  store %struct.Memory* %call_4899e4, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %edi	 RIP: 4899e8	 Bytes: 4
  %loadMem_4899e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899e8 = call %struct.Memory* @routine_movzwl___rdx__rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899e8)
  store %struct.Memory* %call_4899e8, %struct.Memory** %MEMORY

  ; Code: addl %edi, %ecx	 RIP: 4899ec	 Bytes: 2
  %loadMem_4899ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899ec = call %struct.Memory* @routine_addl__edi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899ec)
  store %struct.Memory* %call_4899ec, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4899ee	 Bytes: 2
  %loadMem_4899ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899ee = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899ee)
  store %struct.Memory* %call_4899ee, %struct.Memory** %MEMORY

  ; Code: jle .L_489a00	 RIP: 4899f0	 Bytes: 6
  %loadMem_4899f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899f0 = call %struct.Memory* @routine_jle_.L_489a00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899f0, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_4899f0, %struct.Memory** %MEMORY

  %loadBr_4899f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4899f0 = icmp eq i8 %loadBr_4899f0, 1
  br i1 %cmpBr_4899f0, label %block_.L_489a00, label %block_4899f6

block_4899f6:
  ; Code: xorl %eax, %eax	 RIP: 4899f6	 Bytes: 2
  %loadMem_4899f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899f6 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899f6)
  store %struct.Memory* %call_4899f6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 4899f8	 Bytes: 3
  %loadMem_4899f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899f8 = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899f8)
  store %struct.Memory* %call_4899f8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489a3c	 RIP: 4899fb	 Bytes: 5
  %loadMem_4899fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4899fb = call %struct.Memory* @routine_jmpq_.L_489a3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4899fb, i64 65, i64 5)
  store %struct.Memory* %call_4899fb, %struct.Memory** %MEMORY

  br label %block_.L_489a3c

  ; Code: .L_489a00:	 RIP: 489a00	 Bytes: 0
block_.L_489a00:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 489a00	 Bytes: 3
  %loadMem_489a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a00 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a00)
  store %struct.Memory* %call_489a00, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 489a03	 Bytes: 8
  %loadMem_489a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a03 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a03)
  store %struct.Memory* %call_489a03, %struct.Memory** %MEMORY

  ; Code: addq $0x2138, %rcx	 RIP: 489a0b	 Bytes: 7
  %loadMem_489a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a0b = call %struct.Memory* @routine_addq__0x2138___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a0b)
  store %struct.Memory* %call_489a0b, %struct.Memory** %MEMORY

  ; Code: addq $0x800, %rcx	 RIP: 489a12	 Bytes: 7
  %loadMem_489a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a12 = call %struct.Memory* @routine_addq__0x800___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a12)
  store %struct.Memory* %call_489a12, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 489a19	 Bytes: 4
  %loadMem_489a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a19 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a19)
  store %struct.Memory* %call_489a19, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %rdx	 RIP: 489a1d	 Bytes: 4
  %loadMem_489a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a1d = call %struct.Memory* @routine_shlq__0x9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a1d)
  store %struct.Memory* %call_489a1d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 489a21	 Bytes: 3
  %loadMem_489a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a21 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a21)
  store %struct.Memory* %call_489a21, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 489a24	 Bytes: 4
  %loadMem_489a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a24 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a24)
  store %struct.Memory* %call_489a24, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 489a28	 Bytes: 4
  %loadMem_489a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a28 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a28)
  store %struct.Memory* %call_489a28, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 489a2c	 Bytes: 3
  %loadMem_489a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a2c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a2c)
  store %struct.Memory* %call_489a2c, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 489a2f	 Bytes: 4
  %loadMem_489a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a2f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a2f)
  store %struct.Memory* %call_489a2f, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 489a33	 Bytes: 4
  %loadMem_489a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a33 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a33)
  store %struct.Memory* %call_489a33, %struct.Memory** %MEMORY

  ; Code: addl %esi, %eax	 RIP: 489a37	 Bytes: 2
  %loadMem_489a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a37 = call %struct.Memory* @routine_addl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a37)
  store %struct.Memory* %call_489a37, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 489a39	 Bytes: 3
  %loadMem_489a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a39 = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a39)
  store %struct.Memory* %call_489a39, %struct.Memory** %MEMORY

  ; Code: .L_489a3c:	 RIP: 489a3c	 Bytes: 0
  br label %block_.L_489a3c
block_.L_489a3c:

  ; Code: movl -0x80(%rbp), %eax	 RIP: 489a3c	 Bytes: 3
  %loadMem_489a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a3c = call %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a3c)
  store %struct.Memory* %call_489a3c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 489a3f	 Bytes: 3
  %loadMem_489a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a3f = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a3f)
  store %struct.Memory* %call_489a3f, %struct.Memory** %MEMORY

  ; Code: .L_489a42:	 RIP: 489a42	 Bytes: 0
  br label %block_.L_489a42
block_.L_489a42:

  ; Code: movl -0x7c(%rbp), %eax	 RIP: 489a42	 Bytes: 3
  %loadMem_489a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a42 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a42)
  store %struct.Memory* %call_489a42, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 489a45	 Bytes: 3
  %loadMem_489a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a45 = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a45)
  store %struct.Memory* %call_489a45, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rdx	 RIP: 489a48	 Bytes: 8
  %loadMem_489a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a48 = call %struct.Memory* @routine_movq_0x70fcf0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a48)
  store %struct.Memory* %call_489a48, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rdx), %rdx	 RIP: 489a50	 Bytes: 7
  %loadMem_489a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a50 = call %struct.Memory* @routine_movq_0x1940__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a50)
  store %struct.Memory* %call_489a50, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 489a57	 Bytes: 4
  %loadMem_489a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a57 = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a57)
  store %struct.Memory* %call_489a57, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 489a5b	 Bytes: 3
  %loadMem_489a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a5b = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a5b)
  store %struct.Memory* %call_489a5b, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %eax	 RIP: 489a5e	 Bytes: 3
  %loadMem_489a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a5e = call %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a5e)
  store %struct.Memory* %call_489a5e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 489a61	 Bytes: 3
  %loadMem_489a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a61 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a61)
  store %struct.Memory* %call_489a61, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 489a64	 Bytes: 4
  %loadMem_489a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a64 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a64)
  store %struct.Memory* %call_489a64, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 489a68	 Bytes: 3
  %loadMem_489a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a68 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a68)
  store %struct.Memory* %call_489a68, %struct.Memory** %MEMORY

  ; Code: addl -0x24(%rbp), %eax	 RIP: 489a6b	 Bytes: 3
  %loadMem_489a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a6b = call %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a6b)
  store %struct.Memory* %call_489a6b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 489a6e	 Bytes: 3
  %loadMem_489a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a6e = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a6e)
  store %struct.Memory* %call_489a6e, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx,%rsi,2)	 RIP: 489a71	 Bytes: 4
  %loadMem_489a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a71 = call %struct.Memory* @routine_movw__cx____rdx__rsi_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a71)
  store %struct.Memory* %call_489a71, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 489a75	 Bytes: 3
  %loadMem_489a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a75 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a75)
  store %struct.Memory* %call_489a75, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 489a78	 Bytes: 3
  %loadMem_489a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a78 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a78)
  store %struct.Memory* %call_489a78, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 489a7b	 Bytes: 3
  %loadMem_489a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a7b = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a7b)
  store %struct.Memory* %call_489a7b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489561	 RIP: 489a7e	 Bytes: 5
  %loadMem_489a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a7e = call %struct.Memory* @routine_jmpq_.L_489561(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a7e, i64 -1309, i64 5)
  store %struct.Memory* %call_489a7e, %struct.Memory** %MEMORY

  br label %block_.L_489561

  ; Code: .L_489a83:	 RIP: 489a83	 Bytes: 0
block_.L_489a83:

  ; Code: jmpq .L_489a88	 RIP: 489a83	 Bytes: 5
  %loadMem_489a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a83 = call %struct.Memory* @routine_jmpq_.L_489a88(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a83, i64 5, i64 5)
  store %struct.Memory* %call_489a83, %struct.Memory** %MEMORY

  br label %block_.L_489a88

  ; Code: .L_489a88:	 RIP: 489a88	 Bytes: 0
block_.L_489a88:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 489a88	 Bytes: 3
  %loadMem_489a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a88 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a88)
  store %struct.Memory* %call_489a88, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 489a8b	 Bytes: 3
  %loadMem_489a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a8b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a8b)
  store %struct.Memory* %call_489a8b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 489a8e	 Bytes: 3
  %loadMem_489a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a8e = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a8e)
  store %struct.Memory* %call_489a8e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489550	 RIP: 489a91	 Bytes: 5
  %loadMem_489a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a91 = call %struct.Memory* @routine_jmpq_.L_489550(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a91, i64 -1345, i64 5)
  store %struct.Memory* %call_489a91, %struct.Memory** %MEMORY

  br label %block_.L_489550

  ; Code: .L_489a96:	 RIP: 489a96	 Bytes: 0
block_.L_489a96:

  ; Code: jmpq .L_489a9b	 RIP: 489a96	 Bytes: 5
  %loadMem_489a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a96 = call %struct.Memory* @routine_jmpq_.L_489a9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a96, i64 5, i64 5)
  store %struct.Memory* %call_489a96, %struct.Memory** %MEMORY

  br label %block_.L_489a9b

  ; Code: .L_489a9b:	 RIP: 489a9b	 Bytes: 0
block_.L_489a9b:

  ; Code: addq $0x80, %rsp	 RIP: 489a9b	 Bytes: 7
  %loadMem_489a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489a9b = call %struct.Memory* @routine_addq__0x80___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489a9b)
  store %struct.Memory* %call_489a9b, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 489aa2	 Bytes: 1
  %loadMem_489aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489aa2 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489aa2)
  store %struct.Memory* %call_489aa2, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 489aa3	 Bytes: 1
  %loadMem_489aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489aa3 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489aa3)
  store %struct.Memory* %call_489aa3, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_489aa3
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0xc__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x20c__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 524
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movq_0x726418___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x726418_type* @G_0x726418 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rsi__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x6f6f90___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6f6f90_type* @G_0x6f6f90 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_callq_.intrapred_luma_16x16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__0x11c14__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72724
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_4890b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.find_sad_16x16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4892f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x10__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jge_.L_4892ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x10__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4892db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x723720___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x723720_type* @G__0x723720 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x6d40f0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x6d40f0_type* @G__0x6d40f0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x6f6fa0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x6f6fa0_type* @G__0x6f6fa0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_addl_MINUS0x28__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__edi___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rsi__r8_8____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x24__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = zext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzwl___rsi__r8_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
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

define %struct.Memory* @routine_addq__0x2138___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 8504)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_shlq__0x9___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__r8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x24__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x5___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 5)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0x28__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzwl___rsi__r8_2____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R9D to i64*
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 2
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
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

define %struct.Memory* @routine_subl__r9d___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %R9D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_addq__0x12b8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 4792)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movslq___r8____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_movl__edi__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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






















define %struct.Memory* @routine_addq__0x800___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 2048)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDI
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

define %struct.Memory* @routine_subl_MINUS0x1c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movq__rdx___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__rsi___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi____r8__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R8
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl___rdx__rsi_4____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
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

define %struct.Memory* @routine_sarl__0x1___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i32, i32* %R9D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_addl__r9d___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %R9D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl_MINUS0x2c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__edi____rsi__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
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




define %struct.Memory* @routine_movl___rcx__rdx_4____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R9D to i64*
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


define %struct.Memory* @routine_movl__edi____rdx__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
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




define %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
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










define %struct.Memory* @routine_movl__edi____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4890e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4892e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4890cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4892f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl___rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_callq_.dct_luma_16x16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__0x1cc__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 460
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_cmpl__0x0__0x11c14__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72724
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_489a9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4893d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4893c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x722ff0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x722ff0_type* @G__0x722ff0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_addq__0x3338___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 13112)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movl___rdx__rsi_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
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
































define %struct.Memory* @routine_jmpq_.L_489335(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4893cb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_489324(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_4894a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_489490(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x6f8f20___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x6f8f20_type* @G__0x6f8f20 to i64))
  ret %struct.Memory* %11
}
























































define %struct.Memory* @routine_jmpq_.L_4893ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_489495(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4893ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 1)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jge_.L_489533(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_489520(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_4894cb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_489525(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4894ba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 76
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




define %struct.Memory* @routine_addl_0x1cc__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 460
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jge_.L_489a96(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_489a83(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__0x6d2ec0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x6d2ec0_type* @G__0x6d2ec0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x722ff0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x722ff0_type* @G__0x722ff0 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movl___rdi__rsi_4____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_subl__r9d___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* %R9D
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl___rdx__rsi_4____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = bitcast i32* %R8D to i64*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_addl_MINUS0x2c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 44
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl__r8d__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_movl___rsi__rdx_4____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_addl___rcx__rdx_4____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i32, i32* %R8D
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


define %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x11bf0__rcx____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 72688
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_addq__0x2138___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 8504)
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


define %struct.Memory* @routine_shlq__0x9___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_shlq__0x5___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 5)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movzwl___rcx__rdx_2____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 2
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_addl__r10d___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_cmpl__r9d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
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

define %struct.Memory* @routine_jle_.L_489675(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4896aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




















define %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_addl__esi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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


define %struct.Memory* @routine_jge_.L_4896ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_48974f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addq__0x2138___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 8504)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_shlq__0x9___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_shlq__0x5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 5)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movzwl___rdx__rsi_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_addl__edi___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_489714(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_489749(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




























define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i16
  store i16 %5, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__ax___dx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %DX = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %AX
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_0x1940__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__eax___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__dx____rsi__rdi_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDI
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




define %struct.Memory* @routine_movl_0x11bec__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72684
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movslq___rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_shlq__0x9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_shlq__0x5___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 5)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movzwl___rsi__rdi_2____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = mul i64 %17, 2
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_addl__r9d___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* %R9D
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_cmpl__r8d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jle_.L_4897df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_489817(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addq__0x12b8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4792)
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


define %struct.Memory* @routine_movslq___rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x64__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_48983b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__ecx__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4898c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addq__0x12b8___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 4792)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movslq___rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_jle_.L_489884(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4898bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






























define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq_0x1918__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}




















define %struct.Memory* @routine_movl_0x11bf0__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jle_.L_489953(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_48998f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_jge_.L_4899b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_489a42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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






















define %struct.Memory* @routine_jle_.L_489a00(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_489a3c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_489561(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_489a88(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_489550(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_489a9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

