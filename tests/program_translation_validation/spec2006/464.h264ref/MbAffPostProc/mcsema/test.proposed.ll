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

declare %struct.Memory* @sub_44a390.get_mb_pos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @MbAffPostProc(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .MbAffPostProc:	 RIP: 427290	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 427290	 Bytes: 1
  %loadMem_427290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427290 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427290)
  store %struct.Memory* %call_427290, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 427291	 Bytes: 3
  %loadMem_427291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427291 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427291)
  store %struct.Memory* %call_427291, %struct.Memory** %MEMORY

  ; Code: subq $0x450, %rsp	 RIP: 427294	 Bytes: 7
  %loadMem_427294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427294 = call %struct.Memory* @routine_subq__0x450___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427294)
  store %struct.Memory* %call_427294, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 42729b	 Bytes: 8
  %loadMem_42729b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42729b = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42729b)
  store %struct.Memory* %call_42729b, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rax), %rax	 RIP: 4272a3	 Bytes: 7
  %loadMem_4272a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272a3 = call %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272a3)
  store %struct.Memory* %call_4272a3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x408(%rbp)	 RIP: 4272aa	 Bytes: 7
  %loadMem_4272aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272aa = call %struct.Memory* @routine_movq__rax__MINUS0x408__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272aa)
  store %struct.Memory* %call_4272aa, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 4272b1	 Bytes: 8
  %loadMem_4272b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272b1 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272b1)
  store %struct.Memory* %call_4272b1, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rax), %rax	 RIP: 4272b9	 Bytes: 7
  %loadMem_4272b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272b9 = call %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272b9)
  store %struct.Memory* %call_4272b9, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x410(%rbp)	 RIP: 4272c0	 Bytes: 7
  %loadMem_4272c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272c0 = call %struct.Memory* @routine_movq__rax__MINUS0x410__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272c0)
  store %struct.Memory* %call_4272c0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4272c7	 Bytes: 8
  %loadMem_4272c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272c7 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272c7)
  store %struct.Memory* %call_4272c7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11bfc(%rax)	 RIP: 4272cf	 Bytes: 7
  %loadMem_4272cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272cf = call %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272cf)
  store %struct.Memory* %call_4272cf, %struct.Memory** %MEMORY

  ; Code: je .L_4277e0	 RIP: 4272d6	 Bytes: 6
  %loadMem_4272d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272d6 = call %struct.Memory* @routine_je_.L_4277e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272d6, i8* %BRANCH_TAKEN, i64 1290, i64 6, i64 6)
  store %struct.Memory* %call_4272d6, %struct.Memory** %MEMORY

  %loadBr_4272d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4272d6 = icmp eq i8 %loadBr_4272d6, 1
  br i1 %cmpBr_4272d6, label %block_.L_4277e0, label %block_4272dc

block_4272dc:
  ; Code: movl $0x0, -0x414(%rbp)	 RIP: 4272dc	 Bytes: 10
  %loadMem_4272dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272dc = call %struct.Memory* @routine_movl__0x0__MINUS0x414__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272dc)
  store %struct.Memory* %call_4272dc, %struct.Memory** %MEMORY

  ; Code: .L_4272e6:	 RIP: 4272e6	 Bytes: 0
  br label %block_.L_4272e6
block_.L_4272e6:

  ; Code: movl -0x414(%rbp), %eax	 RIP: 4272e6	 Bytes: 6
  %loadMem_4272e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272e6 = call %struct.Memory* @routine_movl_MINUS0x414__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272e6)
  store %struct.Memory* %call_4272e6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4272ec	 Bytes: 8
  %loadMem_4272ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272ec = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272ec)
  store %struct.Memory* %call_4272ec, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11b24(%rcx), %eax	 RIP: 4272f4	 Bytes: 6
  %loadMem_4272f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272f4 = call %struct.Memory* @routine_cmpl_0x11b24__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272f4)
  store %struct.Memory* %call_4272f4, %struct.Memory** %MEMORY

  ; Code: jge .L_4277db	 RIP: 4272fa	 Bytes: 6
  %loadMem_4272fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272fa = call %struct.Memory* @routine_jge_.L_4277db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272fa, i8* %BRANCH_TAKEN, i64 1249, i64 6, i64 6)
  store %struct.Memory* %call_4272fa, %struct.Memory** %MEMORY

  %loadBr_4272fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4272fa = icmp eq i8 %loadBr_4272fa, 1
  br i1 %cmpBr_4272fa, label %block_.L_4277db, label %block_427300

block_427300:
  ; Code: movq 0x70fcf0, %rax	 RIP: 427300	 Bytes: 8
  %loadMem_427300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427300 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427300)
  store %struct.Memory* %call_427300, %struct.Memory** %MEMORY

  ; Code: movq 0x1948(%rax), %rax	 RIP: 427308	 Bytes: 7
  %loadMem_427308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427308 = call %struct.Memory* @routine_movq_0x1948__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427308)
  store %struct.Memory* %call_427308, %struct.Memory** %MEMORY

  ; Code: movslq -0x414(%rbp), %rcx	 RIP: 42730f	 Bytes: 7
  %loadMem_42730f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42730f = call %struct.Memory* @routine_movslq_MINUS0x414__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42730f)
  store %struct.Memory* %call_42730f, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, (%rax,%rcx,1)	 RIP: 427316	 Bytes: 4
  %loadMem_427316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427316 = call %struct.Memory* @routine_cmpb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427316)
  store %struct.Memory* %call_427316, %struct.Memory** %MEMORY

  ; Code: je .L_4277c2	 RIP: 42731a	 Bytes: 6
  %loadMem_42731a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42731a = call %struct.Memory* @routine_je_.L_4277c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42731a, i8* %BRANCH_TAKEN, i64 1192, i64 6, i64 6)
  store %struct.Memory* %call_42731a, %struct.Memory** %MEMORY

  %loadBr_42731a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42731a = icmp eq i8 %loadBr_42731a, 1
  br i1 %cmpBr_42731a, label %block_.L_4277c2, label %block_427320

block_427320:
  ; Code: leaq -0x420(%rbp), %rsi	 RIP: 427320	 Bytes: 7
  %loadMem_427320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427320 = call %struct.Memory* @routine_leaq_MINUS0x420__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427320)
  store %struct.Memory* %call_427320, %struct.Memory** %MEMORY

  ; Code: leaq -0x424(%rbp), %rdx	 RIP: 427327	 Bytes: 7
  %loadMem_427327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427327 = call %struct.Memory* @routine_leaq_MINUS0x424__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427327)
  store %struct.Memory* %call_427327, %struct.Memory** %MEMORY

  ; Code: movl -0x414(%rbp), %edi	 RIP: 42732e	 Bytes: 6
  %loadMem_42732e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42732e = call %struct.Memory* @routine_movl_MINUS0x414__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42732e)
  store %struct.Memory* %call_42732e, %struct.Memory** %MEMORY

  ; Code: callq .get_mb_pos	 RIP: 427334	 Bytes: 5
  %loadMem1_427334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_427334 = call %struct.Memory* @routine_callq_.get_mb_pos(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_427334, i64 143452, i64 5, i64 5)
  store %struct.Memory* %call1_427334, %struct.Memory** %MEMORY

  %loadMem2_427334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427334 = load i64, i64* %3
  %call2_427334 = call %struct.Memory* @sub_44a390.get_mb_pos(%struct.State* %0, i64  %loadPC_427334, %struct.Memory* %loadMem2_427334)
  store %struct.Memory* %call2_427334, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x41c(%rbp)	 RIP: 427339	 Bytes: 10
  %loadMem_427339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427339 = call %struct.Memory* @routine_movl__0x0__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427339)
  store %struct.Memory* %call_427339, %struct.Memory** %MEMORY

  ; Code: .L_427343:	 RIP: 427343	 Bytes: 0
  br label %block_.L_427343
block_.L_427343:

  ; Code: cmpl $0x20, -0x41c(%rbp)	 RIP: 427343	 Bytes: 7
  %loadMem_427343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427343 = call %struct.Memory* @routine_cmpl__0x20__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427343)
  store %struct.Memory* %call_427343, %struct.Memory** %MEMORY

  ; Code: jge .L_4273e1	 RIP: 42734a	 Bytes: 6
  %loadMem_42734a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42734a = call %struct.Memory* @routine_jge_.L_4273e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42734a, i8* %BRANCH_TAKEN, i64 151, i64 6, i64 6)
  store %struct.Memory* %call_42734a, %struct.Memory** %MEMORY

  %loadBr_42734a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42734a = icmp eq i8 %loadBr_42734a, 1
  br i1 %cmpBr_42734a, label %block_.L_4273e1, label %block_427350

block_427350:
  ; Code: movl $0x0, -0x418(%rbp)	 RIP: 427350	 Bytes: 10
  %loadMem_427350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427350 = call %struct.Memory* @routine_movl__0x0__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427350)
  store %struct.Memory* %call_427350, %struct.Memory** %MEMORY

  ; Code: .L_42735a:	 RIP: 42735a	 Bytes: 0
  br label %block_.L_42735a
block_.L_42735a:

  ; Code: cmpl $0x10, -0x418(%rbp)	 RIP: 42735a	 Bytes: 7
  %loadMem_42735a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42735a = call %struct.Memory* @routine_cmpl__0x10__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42735a)
  store %struct.Memory* %call_42735a, %struct.Memory** %MEMORY

  ; Code: jge .L_4273c8	 RIP: 427361	 Bytes: 6
  %loadMem_427361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427361 = call %struct.Memory* @routine_jge_.L_4273c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427361, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_427361, %struct.Memory** %MEMORY

  %loadBr_427361 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427361 = icmp eq i8 %loadBr_427361, 1
  br i1 %cmpBr_427361, label %block_.L_4273c8, label %block_427367

block_427367:
  ; Code: leaq -0x400(%rbp), %rax	 RIP: 427367	 Bytes: 7
  %loadMem_427367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427367 = call %struct.Memory* @routine_leaq_MINUS0x400__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427367)
  store %struct.Memory* %call_427367, %struct.Memory** %MEMORY

  ; Code: movq -0x408(%rbp), %rcx	 RIP: 42736e	 Bytes: 7
  %loadMem_42736e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42736e = call %struct.Memory* @routine_movq_MINUS0x408__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42736e)
  store %struct.Memory* %call_42736e, %struct.Memory** %MEMORY

  ; Code: movl -0x424(%rbp), %edx	 RIP: 427375	 Bytes: 6
  %loadMem_427375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427375 = call %struct.Memory* @routine_movl_MINUS0x424__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427375)
  store %struct.Memory* %call_427375, %struct.Memory** %MEMORY

  ; Code: addl -0x41c(%rbp), %edx	 RIP: 42737b	 Bytes: 6
  %loadMem_42737b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42737b = call %struct.Memory* @routine_addl_MINUS0x41c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42737b)
  store %struct.Memory* %call_42737b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 427381	 Bytes: 3
  %loadMem_427381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427381 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427381)
  store %struct.Memory* %call_427381, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 427384	 Bytes: 4
  %loadMem_427384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427384 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427384)
  store %struct.Memory* %call_427384, %struct.Memory** %MEMORY

  ; Code: movl -0x420(%rbp), %edx	 RIP: 427388	 Bytes: 6
  %loadMem_427388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427388 = call %struct.Memory* @routine_movl_MINUS0x420__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427388)
  store %struct.Memory* %call_427388, %struct.Memory** %MEMORY

  ; Code: addl -0x418(%rbp), %edx	 RIP: 42738e	 Bytes: 6
  %loadMem_42738e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42738e = call %struct.Memory* @routine_addl_MINUS0x418__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42738e)
  store %struct.Memory* %call_42738e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 427394	 Bytes: 3
  %loadMem_427394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427394 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427394)
  store %struct.Memory* %call_427394, %struct.Memory** %MEMORY

  ; Code: movw (%rcx,%rsi,2), %di	 RIP: 427397	 Bytes: 4
  %loadMem_427397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427397 = call %struct.Memory* @routine_movw___rcx__rsi_2____di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427397)
  store %struct.Memory* %call_427397, %struct.Memory** %MEMORY

  ; Code: movslq -0x418(%rbp), %rcx	 RIP: 42739b	 Bytes: 7
  %loadMem_42739b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42739b = call %struct.Memory* @routine_movslq_MINUS0x418__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42739b)
  store %struct.Memory* %call_42739b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4273a2	 Bytes: 4
  %loadMem_4273a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273a2 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273a2)
  store %struct.Memory* %call_4273a2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4273a6	 Bytes: 3
  %loadMem_4273a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273a6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273a6)
  store %struct.Memory* %call_4273a6, %struct.Memory** %MEMORY

  ; Code: movslq -0x41c(%rbp), %rcx	 RIP: 4273a9	 Bytes: 7
  %loadMem_4273a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273a9 = call %struct.Memory* @routine_movslq_MINUS0x41c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273a9)
  store %struct.Memory* %call_4273a9, %struct.Memory** %MEMORY

  ; Code: movw %di, (%rax,%rcx,2)	 RIP: 4273b0	 Bytes: 4
  %loadMem_4273b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273b0 = call %struct.Memory* @routine_movw__di____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273b0)
  store %struct.Memory* %call_4273b0, %struct.Memory** %MEMORY

  ; Code: movl -0x418(%rbp), %eax	 RIP: 4273b4	 Bytes: 6
  %loadMem_4273b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273b4 = call %struct.Memory* @routine_movl_MINUS0x418__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273b4)
  store %struct.Memory* %call_4273b4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4273ba	 Bytes: 3
  %loadMem_4273ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273ba = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273ba)
  store %struct.Memory* %call_4273ba, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x418(%rbp)	 RIP: 4273bd	 Bytes: 6
  %loadMem_4273bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273bd = call %struct.Memory* @routine_movl__eax__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273bd)
  store %struct.Memory* %call_4273bd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42735a	 RIP: 4273c3	 Bytes: 5
  %loadMem_4273c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273c3 = call %struct.Memory* @routine_jmpq_.L_42735a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273c3, i64 -105, i64 5)
  store %struct.Memory* %call_4273c3, %struct.Memory** %MEMORY

  br label %block_.L_42735a

  ; Code: .L_4273c8:	 RIP: 4273c8	 Bytes: 0
block_.L_4273c8:

  ; Code: jmpq .L_4273cd	 RIP: 4273c8	 Bytes: 5
  %loadMem_4273c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273c8 = call %struct.Memory* @routine_jmpq_.L_4273cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273c8, i64 5, i64 5)
  store %struct.Memory* %call_4273c8, %struct.Memory** %MEMORY

  br label %block_.L_4273cd

  ; Code: .L_4273cd:	 RIP: 4273cd	 Bytes: 0
block_.L_4273cd:

  ; Code: movl -0x41c(%rbp), %eax	 RIP: 4273cd	 Bytes: 6
  %loadMem_4273cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273cd = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273cd)
  store %struct.Memory* %call_4273cd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4273d3	 Bytes: 3
  %loadMem_4273d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273d3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273d3)
  store %struct.Memory* %call_4273d3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x41c(%rbp)	 RIP: 4273d6	 Bytes: 6
  %loadMem_4273d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273d6 = call %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273d6)
  store %struct.Memory* %call_4273d6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_427343	 RIP: 4273dc	 Bytes: 5
  %loadMem_4273dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273dc = call %struct.Memory* @routine_jmpq_.L_427343(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273dc, i64 -153, i64 5)
  store %struct.Memory* %call_4273dc, %struct.Memory** %MEMORY

  br label %block_.L_427343

  ; Code: .L_4273e1:	 RIP: 4273e1	 Bytes: 0
block_.L_4273e1:

  ; Code: movl $0x0, -0x41c(%rbp)	 RIP: 4273e1	 Bytes: 10
  %loadMem_4273e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273e1 = call %struct.Memory* @routine_movl__0x0__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273e1)
  store %struct.Memory* %call_4273e1, %struct.Memory** %MEMORY

  ; Code: .L_4273eb:	 RIP: 4273eb	 Bytes: 0
  br label %block_.L_4273eb
block_.L_4273eb:

  ; Code: cmpl $0x10, -0x41c(%rbp)	 RIP: 4273eb	 Bytes: 7
  %loadMem_4273eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273eb = call %struct.Memory* @routine_cmpl__0x10__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273eb)
  store %struct.Memory* %call_4273eb, %struct.Memory** %MEMORY

  ; Code: jge .L_4274eb	 RIP: 4273f2	 Bytes: 6
  %loadMem_4273f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273f2 = call %struct.Memory* @routine_jge_.L_4274eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273f2, i8* %BRANCH_TAKEN, i64 249, i64 6, i64 6)
  store %struct.Memory* %call_4273f2, %struct.Memory** %MEMORY

  %loadBr_4273f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4273f2 = icmp eq i8 %loadBr_4273f2, 1
  br i1 %cmpBr_4273f2, label %block_.L_4274eb, label %block_4273f8

block_4273f8:
  ; Code: movl $0x0, -0x418(%rbp)	 RIP: 4273f8	 Bytes: 10
  %loadMem_4273f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273f8 = call %struct.Memory* @routine_movl__0x0__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273f8)
  store %struct.Memory* %call_4273f8, %struct.Memory** %MEMORY

  ; Code: .L_427402:	 RIP: 427402	 Bytes: 0
  br label %block_.L_427402
block_.L_427402:

  ; Code: cmpl $0x10, -0x418(%rbp)	 RIP: 427402	 Bytes: 7
  %loadMem_427402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427402 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427402)
  store %struct.Memory* %call_427402, %struct.Memory** %MEMORY

  ; Code: jge .L_4274d2	 RIP: 427409	 Bytes: 6
  %loadMem_427409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427409 = call %struct.Memory* @routine_jge_.L_4274d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427409, i8* %BRANCH_TAKEN, i64 201, i64 6, i64 6)
  store %struct.Memory* %call_427409, %struct.Memory** %MEMORY

  %loadBr_427409 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427409 = icmp eq i8 %loadBr_427409, 1
  br i1 %cmpBr_427409, label %block_.L_4274d2, label %block_42740f

block_42740f:
  ; Code: leaq -0x400(%rbp), %rax	 RIP: 42740f	 Bytes: 7
  %loadMem_42740f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42740f = call %struct.Memory* @routine_leaq_MINUS0x400__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42740f)
  store %struct.Memory* %call_42740f, %struct.Memory** %MEMORY

  ; Code: movslq -0x418(%rbp), %rcx	 RIP: 427416	 Bytes: 7
  %loadMem_427416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427416 = call %struct.Memory* @routine_movslq_MINUS0x418__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427416)
  store %struct.Memory* %call_427416, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 42741d	 Bytes: 4
  %loadMem_42741d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42741d = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42741d)
  store %struct.Memory* %call_42741d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 427421	 Bytes: 3
  %loadMem_427421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427421 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427421)
  store %struct.Memory* %call_427421, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 427424	 Bytes: 3
  %loadMem_427424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427424 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427424)
  store %struct.Memory* %call_427424, %struct.Memory** %MEMORY

  ; Code: movslq -0x41c(%rbp), %rcx	 RIP: 427427	 Bytes: 7
  %loadMem_427427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427427 = call %struct.Memory* @routine_movslq_MINUS0x41c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427427)
  store %struct.Memory* %call_427427, %struct.Memory** %MEMORY

  ; Code: movw (%rdx,%rcx,2), %si	 RIP: 42742e	 Bytes: 4
  %loadMem_42742e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42742e = call %struct.Memory* @routine_movw___rdx__rcx_2____si(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42742e)
  store %struct.Memory* %call_42742e, %struct.Memory** %MEMORY

  ; Code: movq -0x408(%rbp), %rcx	 RIP: 427432	 Bytes: 7
  %loadMem_427432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427432 = call %struct.Memory* @routine_movq_MINUS0x408__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427432)
  store %struct.Memory* %call_427432, %struct.Memory** %MEMORY

  ; Code: movl -0x424(%rbp), %edi	 RIP: 427439	 Bytes: 6
  %loadMem_427439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427439 = call %struct.Memory* @routine_movl_MINUS0x424__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427439)
  store %struct.Memory* %call_427439, %struct.Memory** %MEMORY

  ; Code: movl -0x41c(%rbp), %r8d	 RIP: 42743f	 Bytes: 7
  %loadMem_42743f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42743f = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42743f)
  store %struct.Memory* %call_42743f, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %r8d	 RIP: 427446	 Bytes: 4
  %loadMem_427446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427446 = call %struct.Memory* @routine_shll__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427446)
  store %struct.Memory* %call_427446, %struct.Memory** %MEMORY

  ; Code: addl %r8d, %edi	 RIP: 42744a	 Bytes: 3
  %loadMem_42744a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42744a = call %struct.Memory* @routine_addl__r8d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42744a)
  store %struct.Memory* %call_42744a, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rdx	 RIP: 42744d	 Bytes: 3
  %loadMem_42744d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42744d = call %struct.Memory* @routine_movslq__edi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42744d)
  store %struct.Memory* %call_42744d, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 427450	 Bytes: 4
  %loadMem_427450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427450 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427450)
  store %struct.Memory* %call_427450, %struct.Memory** %MEMORY

  ; Code: movl -0x420(%rbp), %edi	 RIP: 427454	 Bytes: 6
  %loadMem_427454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427454 = call %struct.Memory* @routine_movl_MINUS0x420__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427454)
  store %struct.Memory* %call_427454, %struct.Memory** %MEMORY

  ; Code: addl -0x418(%rbp), %edi	 RIP: 42745a	 Bytes: 6
  %loadMem_42745a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42745a = call %struct.Memory* @routine_addl_MINUS0x418__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42745a)
  store %struct.Memory* %call_42745a, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rdx	 RIP: 427460	 Bytes: 3
  %loadMem_427460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427460 = call %struct.Memory* @routine_movslq__edi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427460)
  store %struct.Memory* %call_427460, %struct.Memory** %MEMORY

  ; Code: movw %si, (%rcx,%rdx,2)	 RIP: 427463	 Bytes: 4
  %loadMem_427463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427463 = call %struct.Memory* @routine_movw__si____rcx__rdx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427463)
  store %struct.Memory* %call_427463, %struct.Memory** %MEMORY

  ; Code: movslq -0x418(%rbp), %rcx	 RIP: 427467	 Bytes: 7
  %loadMem_427467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427467 = call %struct.Memory* @routine_movslq_MINUS0x418__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427467)
  store %struct.Memory* %call_427467, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 42746e	 Bytes: 4
  %loadMem_42746e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42746e = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42746e)
  store %struct.Memory* %call_42746e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 427472	 Bytes: 3
  %loadMem_427472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427472 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427472)
  store %struct.Memory* %call_427472, %struct.Memory** %MEMORY

  ; Code: movl -0x41c(%rbp), %edi	 RIP: 427475	 Bytes: 6
  %loadMem_427475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427475 = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427475)
  store %struct.Memory* %call_427475, %struct.Memory** %MEMORY

  ; Code: addl $0x10, %edi	 RIP: 42747b	 Bytes: 3
  %loadMem_42747b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42747b = call %struct.Memory* @routine_addl__0x10___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42747b)
  store %struct.Memory* %call_42747b, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 42747e	 Bytes: 3
  %loadMem_42747e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42747e = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42747e)
  store %struct.Memory* %call_42747e, %struct.Memory** %MEMORY

  ; Code: movw (%rax,%rcx,2), %si	 RIP: 427481	 Bytes: 4
  %loadMem_427481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427481 = call %struct.Memory* @routine_movw___rax__rcx_2____si(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427481)
  store %struct.Memory* %call_427481, %struct.Memory** %MEMORY

  ; Code: movq -0x408(%rbp), %rax	 RIP: 427485	 Bytes: 7
  %loadMem_427485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427485 = call %struct.Memory* @routine_movq_MINUS0x408__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427485)
  store %struct.Memory* %call_427485, %struct.Memory** %MEMORY

  ; Code: movl -0x424(%rbp), %edi	 RIP: 42748c	 Bytes: 6
  %loadMem_42748c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42748c = call %struct.Memory* @routine_movl_MINUS0x424__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42748c)
  store %struct.Memory* %call_42748c, %struct.Memory** %MEMORY

  ; Code: movl -0x41c(%rbp), %r8d	 RIP: 427492	 Bytes: 7
  %loadMem_427492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427492 = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427492)
  store %struct.Memory* %call_427492, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %r8d	 RIP: 427499	 Bytes: 4
  %loadMem_427499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427499 = call %struct.Memory* @routine_shll__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427499)
  store %struct.Memory* %call_427499, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 42749d	 Bytes: 4
  %loadMem_42749d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42749d = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42749d)
  store %struct.Memory* %call_42749d, %struct.Memory** %MEMORY

  ; Code: addl %r8d, %edi	 RIP: 4274a1	 Bytes: 3
  %loadMem_4274a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274a1 = call %struct.Memory* @routine_addl__r8d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274a1)
  store %struct.Memory* %call_4274a1, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 4274a4	 Bytes: 3
  %loadMem_4274a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274a4 = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274a4)
  store %struct.Memory* %call_4274a4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4274a7	 Bytes: 4
  %loadMem_4274a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274a7 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274a7)
  store %struct.Memory* %call_4274a7, %struct.Memory** %MEMORY

  ; Code: movl -0x420(%rbp), %edi	 RIP: 4274ab	 Bytes: 6
  %loadMem_4274ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274ab = call %struct.Memory* @routine_movl_MINUS0x420__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274ab)
  store %struct.Memory* %call_4274ab, %struct.Memory** %MEMORY

  ; Code: addl -0x418(%rbp), %edi	 RIP: 4274b1	 Bytes: 6
  %loadMem_4274b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274b1 = call %struct.Memory* @routine_addl_MINUS0x418__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274b1)
  store %struct.Memory* %call_4274b1, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 4274b7	 Bytes: 3
  %loadMem_4274b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274b7 = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274b7)
  store %struct.Memory* %call_4274b7, %struct.Memory** %MEMORY

  ; Code: movw %si, (%rax,%rcx,2)	 RIP: 4274ba	 Bytes: 4
  %loadMem_4274ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274ba = call %struct.Memory* @routine_movw__si____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274ba)
  store %struct.Memory* %call_4274ba, %struct.Memory** %MEMORY

  ; Code: movl -0x418(%rbp), %eax	 RIP: 4274be	 Bytes: 6
  %loadMem_4274be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274be = call %struct.Memory* @routine_movl_MINUS0x418__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274be)
  store %struct.Memory* %call_4274be, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4274c4	 Bytes: 3
  %loadMem_4274c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274c4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274c4)
  store %struct.Memory* %call_4274c4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x418(%rbp)	 RIP: 4274c7	 Bytes: 6
  %loadMem_4274c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274c7 = call %struct.Memory* @routine_movl__eax__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274c7)
  store %struct.Memory* %call_4274c7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_427402	 RIP: 4274cd	 Bytes: 5
  %loadMem_4274cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274cd = call %struct.Memory* @routine_jmpq_.L_427402(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274cd, i64 -203, i64 5)
  store %struct.Memory* %call_4274cd, %struct.Memory** %MEMORY

  br label %block_.L_427402

  ; Code: .L_4274d2:	 RIP: 4274d2	 Bytes: 0
block_.L_4274d2:

  ; Code: jmpq .L_4274d7	 RIP: 4274d2	 Bytes: 5
  %loadMem_4274d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274d2 = call %struct.Memory* @routine_jmpq_.L_4274d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274d2, i64 5, i64 5)
  store %struct.Memory* %call_4274d2, %struct.Memory** %MEMORY

  br label %block_.L_4274d7

  ; Code: .L_4274d7:	 RIP: 4274d7	 Bytes: 0
block_.L_4274d7:

  ; Code: movl -0x41c(%rbp), %eax	 RIP: 4274d7	 Bytes: 6
  %loadMem_4274d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274d7 = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274d7)
  store %struct.Memory* %call_4274d7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4274dd	 Bytes: 3
  %loadMem_4274dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274dd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274dd)
  store %struct.Memory* %call_4274dd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x41c(%rbp)	 RIP: 4274e0	 Bytes: 6
  %loadMem_4274e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274e0 = call %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274e0)
  store %struct.Memory* %call_4274e0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4273eb	 RIP: 4274e6	 Bytes: 5
  %loadMem_4274e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274e6 = call %struct.Memory* @routine_jmpq_.L_4273eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274e6, i64 -251, i64 5)
  store %struct.Memory* %call_4274e6, %struct.Memory** %MEMORY

  br label %block_.L_4273eb

  ; Code: .L_4274eb:	 RIP: 4274eb	 Bytes: 0
block_.L_4274eb:

  ; Code: movl $0x10, %eax	 RIP: 4274eb	 Bytes: 5
  %loadMem_4274eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274eb = call %struct.Memory* @routine_movl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274eb)
  store %struct.Memory* %call_4274eb, %struct.Memory** %MEMORY

  ; Code: movl -0x420(%rbp), %ecx	 RIP: 4274f0	 Bytes: 6
  %loadMem_4274f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274f0 = call %struct.Memory* @routine_movl_MINUS0x420__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274f0)
  store %struct.Memory* %call_4274f0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4274f6	 Bytes: 8
  %loadMem_4274f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274f6 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274f6)
  store %struct.Memory* %call_4274f6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x42c(%rbp)	 RIP: 4274fe	 Bytes: 6
  %loadMem_4274fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274fe = call %struct.Memory* @routine_movl__eax__MINUS0x42c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274fe)
  store %struct.Memory* %call_4274fe, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x438(%rbp)	 RIP: 427504	 Bytes: 7
  %loadMem_427504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427504 = call %struct.Memory* @routine_movq__rdx__MINUS0x438__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427504)
  store %struct.Memory* %call_427504, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 42750b	 Bytes: 1
  %loadMem_42750b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42750b = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42750b)
  store %struct.Memory* %call_42750b, %struct.Memory** %MEMORY

  ; Code: movq -0x438(%rbp), %rsi	 RIP: 42750c	 Bytes: 7
  %loadMem_42750c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42750c = call %struct.Memory* @routine_movq_MINUS0x438__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42750c)
  store %struct.Memory* %call_42750c, %struct.Memory** %MEMORY

  ; Code: idivl 0x11c04(%rsi)	 RIP: 427513	 Bytes: 6
  %loadMem_427513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427513 = call %struct.Memory* @routine_idivl_0x11c04__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427513)
  store %struct.Memory* %call_427513, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x43c(%rbp)	 RIP: 427519	 Bytes: 6
  %loadMem_427519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427519 = call %struct.Memory* @routine_movl__eax__MINUS0x43c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427519)
  store %struct.Memory* %call_427519, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 42751f	 Bytes: 2
  %loadMem_42751f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42751f = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42751f)
  store %struct.Memory* %call_42751f, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 427521	 Bytes: 1
  %loadMem_427521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427521 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427521)
  store %struct.Memory* %call_427521, %struct.Memory** %MEMORY

  ; Code: movl -0x43c(%rbp), %ecx	 RIP: 427522	 Bytes: 6
  %loadMem_427522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427522 = call %struct.Memory* @routine_movl_MINUS0x43c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427522)
  store %struct.Memory* %call_427522, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 427528	 Bytes: 2
  %loadMem_427528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427528 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427528)
  store %struct.Memory* %call_427528, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x420(%rbp)	 RIP: 42752a	 Bytes: 6
  %loadMem_42752a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42752a = call %struct.Memory* @routine_movl__eax__MINUS0x420__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42752a)
  store %struct.Memory* %call_42752a, %struct.Memory** %MEMORY

  ; Code: movl -0x424(%rbp), %eax	 RIP: 427530	 Bytes: 6
  %loadMem_427530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427530 = call %struct.Memory* @routine_movl_MINUS0x424__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427530)
  store %struct.Memory* %call_427530, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 427536	 Bytes: 8
  %loadMem_427536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427536 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427536)
  store %struct.Memory* %call_427536, %struct.Memory** %MEMORY

  ; Code: movl -0x42c(%rbp), %r8d	 RIP: 42753e	 Bytes: 7
  %loadMem_42753e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42753e = call %struct.Memory* @routine_movl_MINUS0x42c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42753e)
  store %struct.Memory* %call_42753e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x440(%rbp)	 RIP: 427545	 Bytes: 6
  %loadMem_427545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427545 = call %struct.Memory* @routine_movl__eax__MINUS0x440__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427545)
  store %struct.Memory* %call_427545, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 42754b	 Bytes: 3
  %loadMem_42754b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42754b = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42754b)
  store %struct.Memory* %call_42754b, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 42754e	 Bytes: 1
  %loadMem_42754e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42754e = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42754e)
  store %struct.Memory* %call_42754e, %struct.Memory** %MEMORY

  ; Code: idivl 0x11c08(%rdi)	 RIP: 42754f	 Bytes: 6
  %loadMem_42754f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42754f = call %struct.Memory* @routine_idivl_0x11c08__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42754f)
  store %struct.Memory* %call_42754f, %struct.Memory** %MEMORY

  ; Code: movl -0x440(%rbp), %r9d	 RIP: 427555	 Bytes: 7
  %loadMem_427555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427555 = call %struct.Memory* @routine_movl_MINUS0x440__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427555)
  store %struct.Memory* %call_427555, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x444(%rbp)	 RIP: 42755c	 Bytes: 6
  %loadMem_42755c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42755c = call %struct.Memory* @routine_movl__eax__MINUS0x444__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42755c)
  store %struct.Memory* %call_42755c, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %eax	 RIP: 427562	 Bytes: 3
  %loadMem_427562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427562 = call %struct.Memory* @routine_movl__r9d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427562)
  store %struct.Memory* %call_427562, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 427565	 Bytes: 1
  %loadMem_427565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427565 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427565)
  store %struct.Memory* %call_427565, %struct.Memory** %MEMORY

  ; Code: movl -0x444(%rbp), %r10d	 RIP: 427566	 Bytes: 7
  %loadMem_427566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427566 = call %struct.Memory* @routine_movl_MINUS0x444__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427566)
  store %struct.Memory* %call_427566, %struct.Memory** %MEMORY

  ; Code: idivl %r10d	 RIP: 42756d	 Bytes: 3
  %loadMem_42756d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42756d = call %struct.Memory* @routine_idivl__r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42756d)
  store %struct.Memory* %call_42756d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x424(%rbp)	 RIP: 427570	 Bytes: 6
  %loadMem_427570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427570 = call %struct.Memory* @routine_movl__eax__MINUS0x424__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427570)
  store %struct.Memory* %call_427570, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x428(%rbp)	 RIP: 427576	 Bytes: 10
  %loadMem_427576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427576 = call %struct.Memory* @routine_movl__0x0__MINUS0x428__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427576)
  store %struct.Memory* %call_427576, %struct.Memory** %MEMORY

  ; Code: .L_427580:	 RIP: 427580	 Bytes: 0
  br label %block_.L_427580
block_.L_427580:

  ; Code: cmpl $0x2, -0x428(%rbp)	 RIP: 427580	 Bytes: 7
  %loadMem_427580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427580 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x428__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427580)
  store %struct.Memory* %call_427580, %struct.Memory** %MEMORY

  ; Code: jge .L_4277bd	 RIP: 427587	 Bytes: 6
  %loadMem_427587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427587 = call %struct.Memory* @routine_jge_.L_4277bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427587, i8* %BRANCH_TAKEN, i64 566, i64 6, i64 6)
  store %struct.Memory* %call_427587, %struct.Memory** %MEMORY

  %loadBr_427587 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427587 = icmp eq i8 %loadBr_427587, 1
  br i1 %cmpBr_427587, label %block_.L_4277bd, label %block_42758d

block_42758d:
  ; Code: movl $0x0, -0x41c(%rbp)	 RIP: 42758d	 Bytes: 10
  %loadMem_42758d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42758d = call %struct.Memory* @routine_movl__0x0__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42758d)
  store %struct.Memory* %call_42758d, %struct.Memory** %MEMORY

  ; Code: .L_427597:	 RIP: 427597	 Bytes: 0
  br label %block_.L_427597
block_.L_427597:

  ; Code: movl -0x41c(%rbp), %eax	 RIP: 427597	 Bytes: 6
  %loadMem_427597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427597 = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427597)
  store %struct.Memory* %call_427597, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 42759d	 Bytes: 8
  %loadMem_42759d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42759d = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42759d)
  store %struct.Memory* %call_42759d, %struct.Memory** %MEMORY

  ; Code: movl 0x11c08(%rcx), %edx	 RIP: 4275a5	 Bytes: 6
  %loadMem_4275a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275a5 = call %struct.Memory* @routine_movl_0x11c08__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275a5)
  store %struct.Memory* %call_4275a5, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 4275ab	 Bytes: 3
  %loadMem_4275ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275ab = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275ab)
  store %struct.Memory* %call_4275ab, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4275ae	 Bytes: 2
  %loadMem_4275ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275ae = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275ae)
  store %struct.Memory* %call_4275ae, %struct.Memory** %MEMORY

  ; Code: jge .L_42765f	 RIP: 4275b0	 Bytes: 6
  %loadMem_4275b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275b0 = call %struct.Memory* @routine_jge_.L_42765f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275b0, i8* %BRANCH_TAKEN, i64 175, i64 6, i64 6)
  store %struct.Memory* %call_4275b0, %struct.Memory** %MEMORY

  %loadBr_4275b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4275b0 = icmp eq i8 %loadBr_4275b0, 1
  br i1 %cmpBr_4275b0, label %block_.L_42765f, label %block_4275b6

block_4275b6:
  ; Code: movl $0x0, -0x418(%rbp)	 RIP: 4275b6	 Bytes: 10
  %loadMem_4275b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275b6 = call %struct.Memory* @routine_movl__0x0__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275b6)
  store %struct.Memory* %call_4275b6, %struct.Memory** %MEMORY

  ; Code: .L_4275c0:	 RIP: 4275c0	 Bytes: 0
  br label %block_.L_4275c0
block_.L_4275c0:

  ; Code: movl -0x418(%rbp), %eax	 RIP: 4275c0	 Bytes: 6
  %loadMem_4275c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275c0 = call %struct.Memory* @routine_movl_MINUS0x418__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275c0)
  store %struct.Memory* %call_4275c0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4275c6	 Bytes: 8
  %loadMem_4275c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275c6 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275c6)
  store %struct.Memory* %call_4275c6, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11c04(%rcx), %eax	 RIP: 4275ce	 Bytes: 6
  %loadMem_4275ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275ce = call %struct.Memory* @routine_cmpl_0x11c04__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275ce)
  store %struct.Memory* %call_4275ce, %struct.Memory** %MEMORY

  ; Code: jge .L_427646	 RIP: 4275d4	 Bytes: 6
  %loadMem_4275d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275d4 = call %struct.Memory* @routine_jge_.L_427646(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275d4, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_4275d4, %struct.Memory** %MEMORY

  %loadBr_4275d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4275d4 = icmp eq i8 %loadBr_4275d4, 1
  br i1 %cmpBr_4275d4, label %block_.L_427646, label %block_4275da

block_4275da:
  ; Code: leaq -0x400(%rbp), %rax	 RIP: 4275da	 Bytes: 7
  %loadMem_4275da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275da = call %struct.Memory* @routine_leaq_MINUS0x400__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275da)
  store %struct.Memory* %call_4275da, %struct.Memory** %MEMORY

  ; Code: movq -0x410(%rbp), %rcx	 RIP: 4275e1	 Bytes: 7
  %loadMem_4275e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275e1 = call %struct.Memory* @routine_movq_MINUS0x410__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275e1)
  store %struct.Memory* %call_4275e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x428(%rbp), %rdx	 RIP: 4275e8	 Bytes: 7
  %loadMem_4275e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275e8 = call %struct.Memory* @routine_movslq_MINUS0x428__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275e8)
  store %struct.Memory* %call_4275e8, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4275ef	 Bytes: 4
  %loadMem_4275ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275ef = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275ef)
  store %struct.Memory* %call_4275ef, %struct.Memory** %MEMORY

  ; Code: movl -0x424(%rbp), %esi	 RIP: 4275f3	 Bytes: 6
  %loadMem_4275f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275f3 = call %struct.Memory* @routine_movl_MINUS0x424__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275f3)
  store %struct.Memory* %call_4275f3, %struct.Memory** %MEMORY

  ; Code: addl -0x41c(%rbp), %esi	 RIP: 4275f9	 Bytes: 6
  %loadMem_4275f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275f9 = call %struct.Memory* @routine_addl_MINUS0x41c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275f9)
  store %struct.Memory* %call_4275f9, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 4275ff	 Bytes: 3
  %loadMem_4275ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4275ff = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4275ff)
  store %struct.Memory* %call_4275ff, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 427602	 Bytes: 4
  %loadMem_427602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427602 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427602)
  store %struct.Memory* %call_427602, %struct.Memory** %MEMORY

  ; Code: movl -0x420(%rbp), %esi	 RIP: 427606	 Bytes: 6
  %loadMem_427606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427606 = call %struct.Memory* @routine_movl_MINUS0x420__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427606)
  store %struct.Memory* %call_427606, %struct.Memory** %MEMORY

  ; Code: addl -0x418(%rbp), %esi	 RIP: 42760c	 Bytes: 6
  %loadMem_42760c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42760c = call %struct.Memory* @routine_addl_MINUS0x418__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42760c)
  store %struct.Memory* %call_42760c, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 427612	 Bytes: 3
  %loadMem_427612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427612 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427612)
  store %struct.Memory* %call_427612, %struct.Memory** %MEMORY

  ; Code: movw (%rcx,%rdx,2), %di	 RIP: 427615	 Bytes: 4
  %loadMem_427615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427615 = call %struct.Memory* @routine_movw___rcx__rdx_2____di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427615)
  store %struct.Memory* %call_427615, %struct.Memory** %MEMORY

  ; Code: movslq -0x418(%rbp), %rcx	 RIP: 427619	 Bytes: 7
  %loadMem_427619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427619 = call %struct.Memory* @routine_movslq_MINUS0x418__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427619)
  store %struct.Memory* %call_427619, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 427620	 Bytes: 4
  %loadMem_427620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427620 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427620)
  store %struct.Memory* %call_427620, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 427624	 Bytes: 3
  %loadMem_427624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427624 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427624)
  store %struct.Memory* %call_427624, %struct.Memory** %MEMORY

  ; Code: movslq -0x41c(%rbp), %rcx	 RIP: 427627	 Bytes: 7
  %loadMem_427627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427627 = call %struct.Memory* @routine_movslq_MINUS0x41c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427627)
  store %struct.Memory* %call_427627, %struct.Memory** %MEMORY

  ; Code: movw %di, (%rax,%rcx,2)	 RIP: 42762e	 Bytes: 4
  %loadMem_42762e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42762e = call %struct.Memory* @routine_movw__di____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42762e)
  store %struct.Memory* %call_42762e, %struct.Memory** %MEMORY

  ; Code: movl -0x418(%rbp), %eax	 RIP: 427632	 Bytes: 6
  %loadMem_427632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427632 = call %struct.Memory* @routine_movl_MINUS0x418__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427632)
  store %struct.Memory* %call_427632, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 427638	 Bytes: 3
  %loadMem_427638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427638 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427638)
  store %struct.Memory* %call_427638, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x418(%rbp)	 RIP: 42763b	 Bytes: 6
  %loadMem_42763b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42763b = call %struct.Memory* @routine_movl__eax__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42763b)
  store %struct.Memory* %call_42763b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4275c0	 RIP: 427641	 Bytes: 5
  %loadMem_427641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427641 = call %struct.Memory* @routine_jmpq_.L_4275c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427641, i64 -129, i64 5)
  store %struct.Memory* %call_427641, %struct.Memory** %MEMORY

  br label %block_.L_4275c0

  ; Code: .L_427646:	 RIP: 427646	 Bytes: 0
block_.L_427646:

  ; Code: jmpq .L_42764b	 RIP: 427646	 Bytes: 5
  %loadMem_427646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427646 = call %struct.Memory* @routine_jmpq_.L_42764b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427646, i64 5, i64 5)
  store %struct.Memory* %call_427646, %struct.Memory** %MEMORY

  br label %block_.L_42764b

  ; Code: .L_42764b:	 RIP: 42764b	 Bytes: 0
block_.L_42764b:

  ; Code: movl -0x41c(%rbp), %eax	 RIP: 42764b	 Bytes: 6
  %loadMem_42764b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42764b = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42764b)
  store %struct.Memory* %call_42764b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 427651	 Bytes: 3
  %loadMem_427651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427651 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427651)
  store %struct.Memory* %call_427651, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x41c(%rbp)	 RIP: 427654	 Bytes: 6
  %loadMem_427654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427654 = call %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427654)
  store %struct.Memory* %call_427654, %struct.Memory** %MEMORY

  ; Code: jmpq .L_427597	 RIP: 42765a	 Bytes: 5
  %loadMem_42765a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42765a = call %struct.Memory* @routine_jmpq_.L_427597(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42765a, i64 -195, i64 5)
  store %struct.Memory* %call_42765a, %struct.Memory** %MEMORY

  br label %block_.L_427597

  ; Code: .L_42765f:	 RIP: 42765f	 Bytes: 0
block_.L_42765f:

  ; Code: movl $0x0, -0x41c(%rbp)	 RIP: 42765f	 Bytes: 10
  %loadMem_42765f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42765f = call %struct.Memory* @routine_movl__0x0__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42765f)
  store %struct.Memory* %call_42765f, %struct.Memory** %MEMORY

  ; Code: .L_427669:	 RIP: 427669	 Bytes: 0
  br label %block_.L_427669
block_.L_427669:

  ; Code: movl -0x41c(%rbp), %eax	 RIP: 427669	 Bytes: 6
  %loadMem_427669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427669 = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427669)
  store %struct.Memory* %call_427669, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 42766f	 Bytes: 8
  %loadMem_42766f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42766f = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42766f)
  store %struct.Memory* %call_42766f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11c08(%rcx), %eax	 RIP: 427677	 Bytes: 6
  %loadMem_427677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427677 = call %struct.Memory* @routine_cmpl_0x11c08__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427677)
  store %struct.Memory* %call_427677, %struct.Memory** %MEMORY

  ; Code: jge .L_4277a4	 RIP: 42767d	 Bytes: 6
  %loadMem_42767d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42767d = call %struct.Memory* @routine_jge_.L_4277a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42767d, i8* %BRANCH_TAKEN, i64 295, i64 6, i64 6)
  store %struct.Memory* %call_42767d, %struct.Memory** %MEMORY

  %loadBr_42767d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42767d = icmp eq i8 %loadBr_42767d, 1
  br i1 %cmpBr_42767d, label %block_.L_4277a4, label %block_427683

block_427683:
  ; Code: movl $0x0, -0x418(%rbp)	 RIP: 427683	 Bytes: 10
  %loadMem_427683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427683 = call %struct.Memory* @routine_movl__0x0__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427683)
  store %struct.Memory* %call_427683, %struct.Memory** %MEMORY

  ; Code: .L_42768d:	 RIP: 42768d	 Bytes: 0
  br label %block_.L_42768d
block_.L_42768d:

  ; Code: movl -0x418(%rbp), %eax	 RIP: 42768d	 Bytes: 6
  %loadMem_42768d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42768d = call %struct.Memory* @routine_movl_MINUS0x418__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42768d)
  store %struct.Memory* %call_42768d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 427693	 Bytes: 8
  %loadMem_427693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427693 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427693)
  store %struct.Memory* %call_427693, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11c04(%rcx), %eax	 RIP: 42769b	 Bytes: 6
  %loadMem_42769b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42769b = call %struct.Memory* @routine_cmpl_0x11c04__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42769b)
  store %struct.Memory* %call_42769b, %struct.Memory** %MEMORY

  ; Code: jge .L_42778b	 RIP: 4276a1	 Bytes: 6
  %loadMem_4276a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276a1 = call %struct.Memory* @routine_jge_.L_42778b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276a1, i8* %BRANCH_TAKEN, i64 234, i64 6, i64 6)
  store %struct.Memory* %call_4276a1, %struct.Memory** %MEMORY

  %loadBr_4276a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4276a1 = icmp eq i8 %loadBr_4276a1, 1
  br i1 %cmpBr_4276a1, label %block_.L_42778b, label %block_4276a7

block_4276a7:
  ; Code: leaq -0x400(%rbp), %rax	 RIP: 4276a7	 Bytes: 7
  %loadMem_4276a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276a7 = call %struct.Memory* @routine_leaq_MINUS0x400__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276a7)
  store %struct.Memory* %call_4276a7, %struct.Memory** %MEMORY

  ; Code: movslq -0x418(%rbp), %rcx	 RIP: 4276ae	 Bytes: 7
  %loadMem_4276ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276ae = call %struct.Memory* @routine_movslq_MINUS0x418__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276ae)
  store %struct.Memory* %call_4276ae, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4276b5	 Bytes: 4
  %loadMem_4276b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276b5 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276b5)
  store %struct.Memory* %call_4276b5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4276b9	 Bytes: 3
  %loadMem_4276b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276b9 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276b9)
  store %struct.Memory* %call_4276b9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4276bc	 Bytes: 3
  %loadMem_4276bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276bc = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276bc)
  store %struct.Memory* %call_4276bc, %struct.Memory** %MEMORY

  ; Code: movslq -0x41c(%rbp), %rcx	 RIP: 4276bf	 Bytes: 7
  %loadMem_4276bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276bf = call %struct.Memory* @routine_movslq_MINUS0x41c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276bf)
  store %struct.Memory* %call_4276bf, %struct.Memory** %MEMORY

  ; Code: movw (%rdx,%rcx,2), %si	 RIP: 4276c6	 Bytes: 4
  %loadMem_4276c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276c6 = call %struct.Memory* @routine_movw___rdx__rcx_2____si(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276c6)
  store %struct.Memory* %call_4276c6, %struct.Memory** %MEMORY

  ; Code: movq -0x410(%rbp), %rcx	 RIP: 4276ca	 Bytes: 7
  %loadMem_4276ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276ca = call %struct.Memory* @routine_movq_MINUS0x410__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276ca)
  store %struct.Memory* %call_4276ca, %struct.Memory** %MEMORY

  ; Code: movslq -0x428(%rbp), %rdx	 RIP: 4276d1	 Bytes: 7
  %loadMem_4276d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276d1 = call %struct.Memory* @routine_movslq_MINUS0x428__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276d1)
  store %struct.Memory* %call_4276d1, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4276d8	 Bytes: 4
  %loadMem_4276d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276d8 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276d8)
  store %struct.Memory* %call_4276d8, %struct.Memory** %MEMORY

  ; Code: movl -0x424(%rbp), %edi	 RIP: 4276dc	 Bytes: 6
  %loadMem_4276dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276dc = call %struct.Memory* @routine_movl_MINUS0x424__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276dc)
  store %struct.Memory* %call_4276dc, %struct.Memory** %MEMORY

  ; Code: movl -0x41c(%rbp), %r8d	 RIP: 4276e2	 Bytes: 7
  %loadMem_4276e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276e2 = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276e2)
  store %struct.Memory* %call_4276e2, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %r8d	 RIP: 4276e9	 Bytes: 4
  %loadMem_4276e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276e9 = call %struct.Memory* @routine_shll__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276e9)
  store %struct.Memory* %call_4276e9, %struct.Memory** %MEMORY

  ; Code: addl %r8d, %edi	 RIP: 4276ed	 Bytes: 3
  %loadMem_4276ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276ed = call %struct.Memory* @routine_addl__r8d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276ed)
  store %struct.Memory* %call_4276ed, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rdx	 RIP: 4276f0	 Bytes: 3
  %loadMem_4276f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276f0 = call %struct.Memory* @routine_movslq__edi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276f0)
  store %struct.Memory* %call_4276f0, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4276f3	 Bytes: 4
  %loadMem_4276f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276f3 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276f3)
  store %struct.Memory* %call_4276f3, %struct.Memory** %MEMORY

  ; Code: movl -0x420(%rbp), %edi	 RIP: 4276f7	 Bytes: 6
  %loadMem_4276f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276f7 = call %struct.Memory* @routine_movl_MINUS0x420__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276f7)
  store %struct.Memory* %call_4276f7, %struct.Memory** %MEMORY

  ; Code: addl -0x418(%rbp), %edi	 RIP: 4276fd	 Bytes: 6
  %loadMem_4276fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4276fd = call %struct.Memory* @routine_addl_MINUS0x418__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4276fd)
  store %struct.Memory* %call_4276fd, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rdx	 RIP: 427703	 Bytes: 3
  %loadMem_427703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427703 = call %struct.Memory* @routine_movslq__edi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427703)
  store %struct.Memory* %call_427703, %struct.Memory** %MEMORY

  ; Code: movw %si, (%rcx,%rdx,2)	 RIP: 427706	 Bytes: 4
  %loadMem_427706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427706 = call %struct.Memory* @routine_movw__si____rcx__rdx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427706)
  store %struct.Memory* %call_427706, %struct.Memory** %MEMORY

  ; Code: movslq -0x418(%rbp), %rcx	 RIP: 42770a	 Bytes: 7
  %loadMem_42770a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42770a = call %struct.Memory* @routine_movslq_MINUS0x418__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42770a)
  store %struct.Memory* %call_42770a, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 427711	 Bytes: 4
  %loadMem_427711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427711 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427711)
  store %struct.Memory* %call_427711, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 427715	 Bytes: 3
  %loadMem_427715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427715 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427715)
  store %struct.Memory* %call_427715, %struct.Memory** %MEMORY

  ; Code: movl -0x41c(%rbp), %edi	 RIP: 427718	 Bytes: 6
  %loadMem_427718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427718 = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427718)
  store %struct.Memory* %call_427718, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 42771e	 Bytes: 8
  %loadMem_42771e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42771e = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42771e)
  store %struct.Memory* %call_42771e, %struct.Memory** %MEMORY

  ; Code: addl 0x11c08(%rcx), %edi	 RIP: 427726	 Bytes: 6
  %loadMem_427726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427726 = call %struct.Memory* @routine_addl_0x11c08__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427726)
  store %struct.Memory* %call_427726, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 42772c	 Bytes: 3
  %loadMem_42772c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42772c = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42772c)
  store %struct.Memory* %call_42772c, %struct.Memory** %MEMORY

  ; Code: movw (%rax,%rcx,2), %si	 RIP: 42772f	 Bytes: 4
  %loadMem_42772f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42772f = call %struct.Memory* @routine_movw___rax__rcx_2____si(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42772f)
  store %struct.Memory* %call_42772f, %struct.Memory** %MEMORY

  ; Code: movq -0x410(%rbp), %rax	 RIP: 427733	 Bytes: 7
  %loadMem_427733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427733 = call %struct.Memory* @routine_movq_MINUS0x410__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427733)
  store %struct.Memory* %call_427733, %struct.Memory** %MEMORY

  ; Code: movslq -0x428(%rbp), %rcx	 RIP: 42773a	 Bytes: 7
  %loadMem_42773a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42773a = call %struct.Memory* @routine_movslq_MINUS0x428__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42773a)
  store %struct.Memory* %call_42773a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 427741	 Bytes: 4
  %loadMem_427741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427741 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427741)
  store %struct.Memory* %call_427741, %struct.Memory** %MEMORY

  ; Code: movl -0x424(%rbp), %edi	 RIP: 427745	 Bytes: 6
  %loadMem_427745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427745 = call %struct.Memory* @routine_movl_MINUS0x424__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427745)
  store %struct.Memory* %call_427745, %struct.Memory** %MEMORY

  ; Code: movl -0x41c(%rbp), %r8d	 RIP: 42774b	 Bytes: 7
  %loadMem_42774b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42774b = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42774b)
  store %struct.Memory* %call_42774b, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %r8d	 RIP: 427752	 Bytes: 4
  %loadMem_427752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427752 = call %struct.Memory* @routine_shll__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427752)
  store %struct.Memory* %call_427752, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 427756	 Bytes: 4
  %loadMem_427756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427756 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427756)
  store %struct.Memory* %call_427756, %struct.Memory** %MEMORY

  ; Code: addl %r8d, %edi	 RIP: 42775a	 Bytes: 3
  %loadMem_42775a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42775a = call %struct.Memory* @routine_addl__r8d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42775a)
  store %struct.Memory* %call_42775a, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 42775d	 Bytes: 3
  %loadMem_42775d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42775d = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42775d)
  store %struct.Memory* %call_42775d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 427760	 Bytes: 4
  %loadMem_427760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427760 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427760)
  store %struct.Memory* %call_427760, %struct.Memory** %MEMORY

  ; Code: movl -0x420(%rbp), %edi	 RIP: 427764	 Bytes: 6
  %loadMem_427764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427764 = call %struct.Memory* @routine_movl_MINUS0x420__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427764)
  store %struct.Memory* %call_427764, %struct.Memory** %MEMORY

  ; Code: addl -0x418(%rbp), %edi	 RIP: 42776a	 Bytes: 6
  %loadMem_42776a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42776a = call %struct.Memory* @routine_addl_MINUS0x418__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42776a)
  store %struct.Memory* %call_42776a, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 427770	 Bytes: 3
  %loadMem_427770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427770 = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427770)
  store %struct.Memory* %call_427770, %struct.Memory** %MEMORY

  ; Code: movw %si, (%rax,%rcx,2)	 RIP: 427773	 Bytes: 4
  %loadMem_427773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427773 = call %struct.Memory* @routine_movw__si____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427773)
  store %struct.Memory* %call_427773, %struct.Memory** %MEMORY

  ; Code: movl -0x418(%rbp), %eax	 RIP: 427777	 Bytes: 6
  %loadMem_427777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427777 = call %struct.Memory* @routine_movl_MINUS0x418__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427777)
  store %struct.Memory* %call_427777, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42777d	 Bytes: 3
  %loadMem_42777d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42777d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42777d)
  store %struct.Memory* %call_42777d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x418(%rbp)	 RIP: 427780	 Bytes: 6
  %loadMem_427780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427780 = call %struct.Memory* @routine_movl__eax__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427780)
  store %struct.Memory* %call_427780, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42768d	 RIP: 427786	 Bytes: 5
  %loadMem_427786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427786 = call %struct.Memory* @routine_jmpq_.L_42768d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427786, i64 -249, i64 5)
  store %struct.Memory* %call_427786, %struct.Memory** %MEMORY

  br label %block_.L_42768d

  ; Code: .L_42778b:	 RIP: 42778b	 Bytes: 0
block_.L_42778b:

  ; Code: jmpq .L_427790	 RIP: 42778b	 Bytes: 5
  %loadMem_42778b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42778b = call %struct.Memory* @routine_jmpq_.L_427790(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42778b, i64 5, i64 5)
  store %struct.Memory* %call_42778b, %struct.Memory** %MEMORY

  br label %block_.L_427790

  ; Code: .L_427790:	 RIP: 427790	 Bytes: 0
block_.L_427790:

  ; Code: movl -0x41c(%rbp), %eax	 RIP: 427790	 Bytes: 6
  %loadMem_427790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427790 = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427790)
  store %struct.Memory* %call_427790, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 427796	 Bytes: 3
  %loadMem_427796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427796 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427796)
  store %struct.Memory* %call_427796, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x41c(%rbp)	 RIP: 427799	 Bytes: 6
  %loadMem_427799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427799 = call %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427799)
  store %struct.Memory* %call_427799, %struct.Memory** %MEMORY

  ; Code: jmpq .L_427669	 RIP: 42779f	 Bytes: 5
  %loadMem_42779f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42779f = call %struct.Memory* @routine_jmpq_.L_427669(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42779f, i64 -310, i64 5)
  store %struct.Memory* %call_42779f, %struct.Memory** %MEMORY

  br label %block_.L_427669

  ; Code: .L_4277a4:	 RIP: 4277a4	 Bytes: 0
block_.L_4277a4:

  ; Code: jmpq .L_4277a9	 RIP: 4277a4	 Bytes: 5
  %loadMem_4277a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277a4 = call %struct.Memory* @routine_jmpq_.L_4277a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277a4, i64 5, i64 5)
  store %struct.Memory* %call_4277a4, %struct.Memory** %MEMORY

  br label %block_.L_4277a9

  ; Code: .L_4277a9:	 RIP: 4277a9	 Bytes: 0
block_.L_4277a9:

  ; Code: movl -0x428(%rbp), %eax	 RIP: 4277a9	 Bytes: 6
  %loadMem_4277a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277a9 = call %struct.Memory* @routine_movl_MINUS0x428__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277a9)
  store %struct.Memory* %call_4277a9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4277af	 Bytes: 3
  %loadMem_4277af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277af = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277af)
  store %struct.Memory* %call_4277af, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x428(%rbp)	 RIP: 4277b2	 Bytes: 6
  %loadMem_4277b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277b2 = call %struct.Memory* @routine_movl__eax__MINUS0x428__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277b2)
  store %struct.Memory* %call_4277b2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_427580	 RIP: 4277b8	 Bytes: 5
  %loadMem_4277b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277b8 = call %struct.Memory* @routine_jmpq_.L_427580(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277b8, i64 -568, i64 5)
  store %struct.Memory* %call_4277b8, %struct.Memory** %MEMORY

  br label %block_.L_427580

  ; Code: .L_4277bd:	 RIP: 4277bd	 Bytes: 0
block_.L_4277bd:

  ; Code: jmpq .L_4277c2	 RIP: 4277bd	 Bytes: 5
  %loadMem_4277bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277bd = call %struct.Memory* @routine_jmpq_.L_4277c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277bd, i64 5, i64 5)
  store %struct.Memory* %call_4277bd, %struct.Memory** %MEMORY

  br label %block_.L_4277c2

  ; Code: .L_4277c2:	 RIP: 4277c2	 Bytes: 0
block_.L_4277c2:

  ; Code: jmpq .L_4277c7	 RIP: 4277c2	 Bytes: 5
  %loadMem_4277c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277c2 = call %struct.Memory* @routine_jmpq_.L_4277c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277c2, i64 5, i64 5)
  store %struct.Memory* %call_4277c2, %struct.Memory** %MEMORY

  br label %block_.L_4277c7

  ; Code: .L_4277c7:	 RIP: 4277c7	 Bytes: 0
block_.L_4277c7:

  ; Code: movl -0x414(%rbp), %eax	 RIP: 4277c7	 Bytes: 6
  %loadMem_4277c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277c7 = call %struct.Memory* @routine_movl_MINUS0x414__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277c7)
  store %struct.Memory* %call_4277c7, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 4277cd	 Bytes: 3
  %loadMem_4277cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277cd = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277cd)
  store %struct.Memory* %call_4277cd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x414(%rbp)	 RIP: 4277d0	 Bytes: 6
  %loadMem_4277d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277d0 = call %struct.Memory* @routine_movl__eax__MINUS0x414__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277d0)
  store %struct.Memory* %call_4277d0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4272e6	 RIP: 4277d6	 Bytes: 5
  %loadMem_4277d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277d6 = call %struct.Memory* @routine_jmpq_.L_4272e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277d6, i64 -1264, i64 5)
  store %struct.Memory* %call_4277d6, %struct.Memory** %MEMORY

  br label %block_.L_4272e6

  ; Code: .L_4277db:	 RIP: 4277db	 Bytes: 0
block_.L_4277db:

  ; Code: jmpq .L_427a12	 RIP: 4277db	 Bytes: 5
  %loadMem_4277db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277db = call %struct.Memory* @routine_jmpq_.L_427a12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277db, i64 567, i64 5)
  store %struct.Memory* %call_4277db, %struct.Memory** %MEMORY

  br label %block_.L_427a12

  ; Code: .L_4277e0:	 RIP: 4277e0	 Bytes: 0
block_.L_4277e0:

  ; Code: movl $0x0, -0x414(%rbp)	 RIP: 4277e0	 Bytes: 10
  %loadMem_4277e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277e0 = call %struct.Memory* @routine_movl__0x0__MINUS0x414__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277e0)
  store %struct.Memory* %call_4277e0, %struct.Memory** %MEMORY

  ; Code: .L_4277ea:	 RIP: 4277ea	 Bytes: 0
  br label %block_.L_4277ea
block_.L_4277ea:

  ; Code: movl -0x414(%rbp), %eax	 RIP: 4277ea	 Bytes: 6
  %loadMem_4277ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277ea = call %struct.Memory* @routine_movl_MINUS0x414__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277ea)
  store %struct.Memory* %call_4277ea, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4277f0	 Bytes: 8
  %loadMem_4277f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277f0 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277f0)
  store %struct.Memory* %call_4277f0, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11b24(%rcx), %eax	 RIP: 4277f8	 Bytes: 6
  %loadMem_4277f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277f8 = call %struct.Memory* @routine_cmpl_0x11b24__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277f8)
  store %struct.Memory* %call_4277f8, %struct.Memory** %MEMORY

  ; Code: jge .L_427a0d	 RIP: 4277fe	 Bytes: 6
  %loadMem_4277fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4277fe = call %struct.Memory* @routine_jge_.L_427a0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4277fe, i8* %BRANCH_TAKEN, i64 527, i64 6, i64 6)
  store %struct.Memory* %call_4277fe, %struct.Memory** %MEMORY

  %loadBr_4277fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4277fe = icmp eq i8 %loadBr_4277fe, 1
  br i1 %cmpBr_4277fe, label %block_.L_427a0d, label %block_427804

block_427804:
  ; Code: movq 0x70fcf0, %rax	 RIP: 427804	 Bytes: 8
  %loadMem_427804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427804 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427804)
  store %struct.Memory* %call_427804, %struct.Memory** %MEMORY

  ; Code: movq 0x1948(%rax), %rax	 RIP: 42780c	 Bytes: 7
  %loadMem_42780c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42780c = call %struct.Memory* @routine_movq_0x1948__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42780c)
  store %struct.Memory* %call_42780c, %struct.Memory** %MEMORY

  ; Code: movslq -0x414(%rbp), %rcx	 RIP: 427813	 Bytes: 7
  %loadMem_427813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427813 = call %struct.Memory* @routine_movslq_MINUS0x414__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427813)
  store %struct.Memory* %call_427813, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, (%rax,%rcx,1)	 RIP: 42781a	 Bytes: 4
  %loadMem_42781a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42781a = call %struct.Memory* @routine_cmpb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42781a)
  store %struct.Memory* %call_42781a, %struct.Memory** %MEMORY

  ; Code: je .L_4279f4	 RIP: 42781e	 Bytes: 6
  %loadMem_42781e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42781e = call %struct.Memory* @routine_je_.L_4279f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42781e, i8* %BRANCH_TAKEN, i64 470, i64 6, i64 6)
  store %struct.Memory* %call_42781e, %struct.Memory** %MEMORY

  %loadBr_42781e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42781e = icmp eq i8 %loadBr_42781e, 1
  br i1 %cmpBr_42781e, label %block_.L_4279f4, label %block_427824

block_427824:
  ; Code: leaq -0x420(%rbp), %rsi	 RIP: 427824	 Bytes: 7
  %loadMem_427824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427824 = call %struct.Memory* @routine_leaq_MINUS0x420__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427824)
  store %struct.Memory* %call_427824, %struct.Memory** %MEMORY

  ; Code: leaq -0x424(%rbp), %rdx	 RIP: 42782b	 Bytes: 7
  %loadMem_42782b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42782b = call %struct.Memory* @routine_leaq_MINUS0x424__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42782b)
  store %struct.Memory* %call_42782b, %struct.Memory** %MEMORY

  ; Code: movl -0x414(%rbp), %edi	 RIP: 427832	 Bytes: 6
  %loadMem_427832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427832 = call %struct.Memory* @routine_movl_MINUS0x414__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427832)
  store %struct.Memory* %call_427832, %struct.Memory** %MEMORY

  ; Code: callq .get_mb_pos	 RIP: 427838	 Bytes: 5
  %loadMem1_427838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_427838 = call %struct.Memory* @routine_callq_.get_mb_pos(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_427838, i64 142168, i64 5, i64 5)
  store %struct.Memory* %call1_427838, %struct.Memory** %MEMORY

  %loadMem2_427838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427838 = load i64, i64* %3
  %call2_427838 = call %struct.Memory* @sub_44a390.get_mb_pos(%struct.State* %0, i64  %loadPC_427838, %struct.Memory* %loadMem2_427838)
  store %struct.Memory* %call2_427838, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x41c(%rbp)	 RIP: 42783d	 Bytes: 10
  %loadMem_42783d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42783d = call %struct.Memory* @routine_movl__0x0__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42783d)
  store %struct.Memory* %call_42783d, %struct.Memory** %MEMORY

  ; Code: .L_427847:	 RIP: 427847	 Bytes: 0
  br label %block_.L_427847
block_.L_427847:

  ; Code: cmpl $0x20, -0x41c(%rbp)	 RIP: 427847	 Bytes: 7
  %loadMem_427847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427847 = call %struct.Memory* @routine_cmpl__0x20__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427847)
  store %struct.Memory* %call_427847, %struct.Memory** %MEMORY

  ; Code: jge .L_4278e5	 RIP: 42784e	 Bytes: 6
  %loadMem_42784e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42784e = call %struct.Memory* @routine_jge_.L_4278e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42784e, i8* %BRANCH_TAKEN, i64 151, i64 6, i64 6)
  store %struct.Memory* %call_42784e, %struct.Memory** %MEMORY

  %loadBr_42784e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42784e = icmp eq i8 %loadBr_42784e, 1
  br i1 %cmpBr_42784e, label %block_.L_4278e5, label %block_427854

block_427854:
  ; Code: movl $0x0, -0x418(%rbp)	 RIP: 427854	 Bytes: 10
  %loadMem_427854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427854 = call %struct.Memory* @routine_movl__0x0__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427854)
  store %struct.Memory* %call_427854, %struct.Memory** %MEMORY

  ; Code: .L_42785e:	 RIP: 42785e	 Bytes: 0
  br label %block_.L_42785e
block_.L_42785e:

  ; Code: cmpl $0x10, -0x418(%rbp)	 RIP: 42785e	 Bytes: 7
  %loadMem_42785e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42785e = call %struct.Memory* @routine_cmpl__0x10__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42785e)
  store %struct.Memory* %call_42785e, %struct.Memory** %MEMORY

  ; Code: jge .L_4278cc	 RIP: 427865	 Bytes: 6
  %loadMem_427865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427865 = call %struct.Memory* @routine_jge_.L_4278cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427865, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_427865, %struct.Memory** %MEMORY

  %loadBr_427865 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427865 = icmp eq i8 %loadBr_427865, 1
  br i1 %cmpBr_427865, label %block_.L_4278cc, label %block_42786b

block_42786b:
  ; Code: leaq -0x400(%rbp), %rax	 RIP: 42786b	 Bytes: 7
  %loadMem_42786b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42786b = call %struct.Memory* @routine_leaq_MINUS0x400__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42786b)
  store %struct.Memory* %call_42786b, %struct.Memory** %MEMORY

  ; Code: movq -0x408(%rbp), %rcx	 RIP: 427872	 Bytes: 7
  %loadMem_427872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427872 = call %struct.Memory* @routine_movq_MINUS0x408__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427872)
  store %struct.Memory* %call_427872, %struct.Memory** %MEMORY

  ; Code: movl -0x424(%rbp), %edx	 RIP: 427879	 Bytes: 6
  %loadMem_427879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427879 = call %struct.Memory* @routine_movl_MINUS0x424__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427879)
  store %struct.Memory* %call_427879, %struct.Memory** %MEMORY

  ; Code: addl -0x41c(%rbp), %edx	 RIP: 42787f	 Bytes: 6
  %loadMem_42787f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42787f = call %struct.Memory* @routine_addl_MINUS0x41c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42787f)
  store %struct.Memory* %call_42787f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 427885	 Bytes: 3
  %loadMem_427885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427885 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427885)
  store %struct.Memory* %call_427885, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 427888	 Bytes: 4
  %loadMem_427888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427888 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427888)
  store %struct.Memory* %call_427888, %struct.Memory** %MEMORY

  ; Code: movl -0x420(%rbp), %edx	 RIP: 42788c	 Bytes: 6
  %loadMem_42788c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42788c = call %struct.Memory* @routine_movl_MINUS0x420__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42788c)
  store %struct.Memory* %call_42788c, %struct.Memory** %MEMORY

  ; Code: addl -0x418(%rbp), %edx	 RIP: 427892	 Bytes: 6
  %loadMem_427892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427892 = call %struct.Memory* @routine_addl_MINUS0x418__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427892)
  store %struct.Memory* %call_427892, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 427898	 Bytes: 3
  %loadMem_427898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427898 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427898)
  store %struct.Memory* %call_427898, %struct.Memory** %MEMORY

  ; Code: movw (%rcx,%rsi,2), %di	 RIP: 42789b	 Bytes: 4
  %loadMem_42789b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42789b = call %struct.Memory* @routine_movw___rcx__rsi_2____di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42789b)
  store %struct.Memory* %call_42789b, %struct.Memory** %MEMORY

  ; Code: movslq -0x418(%rbp), %rcx	 RIP: 42789f	 Bytes: 7
  %loadMem_42789f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42789f = call %struct.Memory* @routine_movslq_MINUS0x418__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42789f)
  store %struct.Memory* %call_42789f, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4278a6	 Bytes: 4
  %loadMem_4278a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278a6 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278a6)
  store %struct.Memory* %call_4278a6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4278aa	 Bytes: 3
  %loadMem_4278aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278aa = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278aa)
  store %struct.Memory* %call_4278aa, %struct.Memory** %MEMORY

  ; Code: movslq -0x41c(%rbp), %rcx	 RIP: 4278ad	 Bytes: 7
  %loadMem_4278ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278ad = call %struct.Memory* @routine_movslq_MINUS0x41c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278ad)
  store %struct.Memory* %call_4278ad, %struct.Memory** %MEMORY

  ; Code: movw %di, (%rax,%rcx,2)	 RIP: 4278b4	 Bytes: 4
  %loadMem_4278b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278b4 = call %struct.Memory* @routine_movw__di____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278b4)
  store %struct.Memory* %call_4278b4, %struct.Memory** %MEMORY

  ; Code: movl -0x418(%rbp), %eax	 RIP: 4278b8	 Bytes: 6
  %loadMem_4278b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278b8 = call %struct.Memory* @routine_movl_MINUS0x418__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278b8)
  store %struct.Memory* %call_4278b8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4278be	 Bytes: 3
  %loadMem_4278be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278be = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278be)
  store %struct.Memory* %call_4278be, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x418(%rbp)	 RIP: 4278c1	 Bytes: 6
  %loadMem_4278c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278c1 = call %struct.Memory* @routine_movl__eax__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278c1)
  store %struct.Memory* %call_4278c1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42785e	 RIP: 4278c7	 Bytes: 5
  %loadMem_4278c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278c7 = call %struct.Memory* @routine_jmpq_.L_42785e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278c7, i64 -105, i64 5)
  store %struct.Memory* %call_4278c7, %struct.Memory** %MEMORY

  br label %block_.L_42785e

  ; Code: .L_4278cc:	 RIP: 4278cc	 Bytes: 0
block_.L_4278cc:

  ; Code: jmpq .L_4278d1	 RIP: 4278cc	 Bytes: 5
  %loadMem_4278cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278cc = call %struct.Memory* @routine_jmpq_.L_4278d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278cc, i64 5, i64 5)
  store %struct.Memory* %call_4278cc, %struct.Memory** %MEMORY

  br label %block_.L_4278d1

  ; Code: .L_4278d1:	 RIP: 4278d1	 Bytes: 0
block_.L_4278d1:

  ; Code: movl -0x41c(%rbp), %eax	 RIP: 4278d1	 Bytes: 6
  %loadMem_4278d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278d1 = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278d1)
  store %struct.Memory* %call_4278d1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4278d7	 Bytes: 3
  %loadMem_4278d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278d7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278d7)
  store %struct.Memory* %call_4278d7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x41c(%rbp)	 RIP: 4278da	 Bytes: 6
  %loadMem_4278da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278da = call %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278da)
  store %struct.Memory* %call_4278da, %struct.Memory** %MEMORY

  ; Code: jmpq .L_427847	 RIP: 4278e0	 Bytes: 5
  %loadMem_4278e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278e0 = call %struct.Memory* @routine_jmpq_.L_427847(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278e0, i64 -153, i64 5)
  store %struct.Memory* %call_4278e0, %struct.Memory** %MEMORY

  br label %block_.L_427847

  ; Code: .L_4278e5:	 RIP: 4278e5	 Bytes: 0
block_.L_4278e5:

  ; Code: movl $0x0, -0x41c(%rbp)	 RIP: 4278e5	 Bytes: 10
  %loadMem_4278e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278e5 = call %struct.Memory* @routine_movl__0x0__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278e5)
  store %struct.Memory* %call_4278e5, %struct.Memory** %MEMORY

  ; Code: .L_4278ef:	 RIP: 4278ef	 Bytes: 0
  br label %block_.L_4278ef
block_.L_4278ef:

  ; Code: cmpl $0x10, -0x41c(%rbp)	 RIP: 4278ef	 Bytes: 7
  %loadMem_4278ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278ef = call %struct.Memory* @routine_cmpl__0x10__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278ef)
  store %struct.Memory* %call_4278ef, %struct.Memory** %MEMORY

  ; Code: jge .L_4279ef	 RIP: 4278f6	 Bytes: 6
  %loadMem_4278f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278f6 = call %struct.Memory* @routine_jge_.L_4279ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278f6, i8* %BRANCH_TAKEN, i64 249, i64 6, i64 6)
  store %struct.Memory* %call_4278f6, %struct.Memory** %MEMORY

  %loadBr_4278f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4278f6 = icmp eq i8 %loadBr_4278f6, 1
  br i1 %cmpBr_4278f6, label %block_.L_4279ef, label %block_4278fc

block_4278fc:
  ; Code: movl $0x0, -0x418(%rbp)	 RIP: 4278fc	 Bytes: 10
  %loadMem_4278fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4278fc = call %struct.Memory* @routine_movl__0x0__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4278fc)
  store %struct.Memory* %call_4278fc, %struct.Memory** %MEMORY

  ; Code: .L_427906:	 RIP: 427906	 Bytes: 0
  br label %block_.L_427906
block_.L_427906:

  ; Code: cmpl $0x10, -0x418(%rbp)	 RIP: 427906	 Bytes: 7
  %loadMem_427906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427906 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427906)
  store %struct.Memory* %call_427906, %struct.Memory** %MEMORY

  ; Code: jge .L_4279d6	 RIP: 42790d	 Bytes: 6
  %loadMem_42790d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42790d = call %struct.Memory* @routine_jge_.L_4279d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42790d, i8* %BRANCH_TAKEN, i64 201, i64 6, i64 6)
  store %struct.Memory* %call_42790d, %struct.Memory** %MEMORY

  %loadBr_42790d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42790d = icmp eq i8 %loadBr_42790d, 1
  br i1 %cmpBr_42790d, label %block_.L_4279d6, label %block_427913

block_427913:
  ; Code: leaq -0x400(%rbp), %rax	 RIP: 427913	 Bytes: 7
  %loadMem_427913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427913 = call %struct.Memory* @routine_leaq_MINUS0x400__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427913)
  store %struct.Memory* %call_427913, %struct.Memory** %MEMORY

  ; Code: movslq -0x418(%rbp), %rcx	 RIP: 42791a	 Bytes: 7
  %loadMem_42791a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42791a = call %struct.Memory* @routine_movslq_MINUS0x418__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42791a)
  store %struct.Memory* %call_42791a, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 427921	 Bytes: 4
  %loadMem_427921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427921 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427921)
  store %struct.Memory* %call_427921, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 427925	 Bytes: 3
  %loadMem_427925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427925 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427925)
  store %struct.Memory* %call_427925, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 427928	 Bytes: 3
  %loadMem_427928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427928 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427928)
  store %struct.Memory* %call_427928, %struct.Memory** %MEMORY

  ; Code: movslq -0x41c(%rbp), %rcx	 RIP: 42792b	 Bytes: 7
  %loadMem_42792b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42792b = call %struct.Memory* @routine_movslq_MINUS0x41c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42792b)
  store %struct.Memory* %call_42792b, %struct.Memory** %MEMORY

  ; Code: movw (%rdx,%rcx,2), %si	 RIP: 427932	 Bytes: 4
  %loadMem_427932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427932 = call %struct.Memory* @routine_movw___rdx__rcx_2____si(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427932)
  store %struct.Memory* %call_427932, %struct.Memory** %MEMORY

  ; Code: movq -0x408(%rbp), %rcx	 RIP: 427936	 Bytes: 7
  %loadMem_427936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427936 = call %struct.Memory* @routine_movq_MINUS0x408__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427936)
  store %struct.Memory* %call_427936, %struct.Memory** %MEMORY

  ; Code: movl -0x424(%rbp), %edi	 RIP: 42793d	 Bytes: 6
  %loadMem_42793d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42793d = call %struct.Memory* @routine_movl_MINUS0x424__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42793d)
  store %struct.Memory* %call_42793d, %struct.Memory** %MEMORY

  ; Code: movl -0x41c(%rbp), %r8d	 RIP: 427943	 Bytes: 7
  %loadMem_427943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427943 = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427943)
  store %struct.Memory* %call_427943, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %r8d	 RIP: 42794a	 Bytes: 4
  %loadMem_42794a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42794a = call %struct.Memory* @routine_shll__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42794a)
  store %struct.Memory* %call_42794a, %struct.Memory** %MEMORY

  ; Code: addl %r8d, %edi	 RIP: 42794e	 Bytes: 3
  %loadMem_42794e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42794e = call %struct.Memory* @routine_addl__r8d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42794e)
  store %struct.Memory* %call_42794e, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rdx	 RIP: 427951	 Bytes: 3
  %loadMem_427951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427951 = call %struct.Memory* @routine_movslq__edi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427951)
  store %struct.Memory* %call_427951, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 427954	 Bytes: 4
  %loadMem_427954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427954 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427954)
  store %struct.Memory* %call_427954, %struct.Memory** %MEMORY

  ; Code: movl -0x420(%rbp), %edi	 RIP: 427958	 Bytes: 6
  %loadMem_427958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427958 = call %struct.Memory* @routine_movl_MINUS0x420__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427958)
  store %struct.Memory* %call_427958, %struct.Memory** %MEMORY

  ; Code: addl -0x418(%rbp), %edi	 RIP: 42795e	 Bytes: 6
  %loadMem_42795e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42795e = call %struct.Memory* @routine_addl_MINUS0x418__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42795e)
  store %struct.Memory* %call_42795e, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rdx	 RIP: 427964	 Bytes: 3
  %loadMem_427964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427964 = call %struct.Memory* @routine_movslq__edi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427964)
  store %struct.Memory* %call_427964, %struct.Memory** %MEMORY

  ; Code: movw %si, (%rcx,%rdx,2)	 RIP: 427967	 Bytes: 4
  %loadMem_427967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427967 = call %struct.Memory* @routine_movw__si____rcx__rdx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427967)
  store %struct.Memory* %call_427967, %struct.Memory** %MEMORY

  ; Code: movslq -0x418(%rbp), %rcx	 RIP: 42796b	 Bytes: 7
  %loadMem_42796b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42796b = call %struct.Memory* @routine_movslq_MINUS0x418__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42796b)
  store %struct.Memory* %call_42796b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 427972	 Bytes: 4
  %loadMem_427972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427972 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427972)
  store %struct.Memory* %call_427972, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 427976	 Bytes: 3
  %loadMem_427976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427976 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427976)
  store %struct.Memory* %call_427976, %struct.Memory** %MEMORY

  ; Code: movl -0x41c(%rbp), %edi	 RIP: 427979	 Bytes: 6
  %loadMem_427979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427979 = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427979)
  store %struct.Memory* %call_427979, %struct.Memory** %MEMORY

  ; Code: addl $0x10, %edi	 RIP: 42797f	 Bytes: 3
  %loadMem_42797f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42797f = call %struct.Memory* @routine_addl__0x10___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42797f)
  store %struct.Memory* %call_42797f, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 427982	 Bytes: 3
  %loadMem_427982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427982 = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427982)
  store %struct.Memory* %call_427982, %struct.Memory** %MEMORY

  ; Code: movw (%rax,%rcx,2), %si	 RIP: 427985	 Bytes: 4
  %loadMem_427985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427985 = call %struct.Memory* @routine_movw___rax__rcx_2____si(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427985)
  store %struct.Memory* %call_427985, %struct.Memory** %MEMORY

  ; Code: movq -0x408(%rbp), %rax	 RIP: 427989	 Bytes: 7
  %loadMem_427989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427989 = call %struct.Memory* @routine_movq_MINUS0x408__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427989)
  store %struct.Memory* %call_427989, %struct.Memory** %MEMORY

  ; Code: movl -0x424(%rbp), %edi	 RIP: 427990	 Bytes: 6
  %loadMem_427990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427990 = call %struct.Memory* @routine_movl_MINUS0x424__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427990)
  store %struct.Memory* %call_427990, %struct.Memory** %MEMORY

  ; Code: movl -0x41c(%rbp), %r8d	 RIP: 427996	 Bytes: 7
  %loadMem_427996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427996 = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427996)
  store %struct.Memory* %call_427996, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %r8d	 RIP: 42799d	 Bytes: 4
  %loadMem_42799d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42799d = call %struct.Memory* @routine_shll__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42799d)
  store %struct.Memory* %call_42799d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 4279a1	 Bytes: 4
  %loadMem_4279a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279a1 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279a1)
  store %struct.Memory* %call_4279a1, %struct.Memory** %MEMORY

  ; Code: addl %r8d, %edi	 RIP: 4279a5	 Bytes: 3
  %loadMem_4279a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279a5 = call %struct.Memory* @routine_addl__r8d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279a5)
  store %struct.Memory* %call_4279a5, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 4279a8	 Bytes: 3
  %loadMem_4279a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279a8 = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279a8)
  store %struct.Memory* %call_4279a8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4279ab	 Bytes: 4
  %loadMem_4279ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279ab = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279ab)
  store %struct.Memory* %call_4279ab, %struct.Memory** %MEMORY

  ; Code: movl -0x420(%rbp), %edi	 RIP: 4279af	 Bytes: 6
  %loadMem_4279af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279af = call %struct.Memory* @routine_movl_MINUS0x420__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279af)
  store %struct.Memory* %call_4279af, %struct.Memory** %MEMORY

  ; Code: addl -0x418(%rbp), %edi	 RIP: 4279b5	 Bytes: 6
  %loadMem_4279b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279b5 = call %struct.Memory* @routine_addl_MINUS0x418__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279b5)
  store %struct.Memory* %call_4279b5, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 4279bb	 Bytes: 3
  %loadMem_4279bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279bb = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279bb)
  store %struct.Memory* %call_4279bb, %struct.Memory** %MEMORY

  ; Code: movw %si, (%rax,%rcx,2)	 RIP: 4279be	 Bytes: 4
  %loadMem_4279be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279be = call %struct.Memory* @routine_movw__si____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279be)
  store %struct.Memory* %call_4279be, %struct.Memory** %MEMORY

  ; Code: movl -0x418(%rbp), %eax	 RIP: 4279c2	 Bytes: 6
  %loadMem_4279c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279c2 = call %struct.Memory* @routine_movl_MINUS0x418__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279c2)
  store %struct.Memory* %call_4279c2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4279c8	 Bytes: 3
  %loadMem_4279c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279c8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279c8)
  store %struct.Memory* %call_4279c8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x418(%rbp)	 RIP: 4279cb	 Bytes: 6
  %loadMem_4279cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279cb = call %struct.Memory* @routine_movl__eax__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279cb)
  store %struct.Memory* %call_4279cb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_427906	 RIP: 4279d1	 Bytes: 5
  %loadMem_4279d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279d1 = call %struct.Memory* @routine_jmpq_.L_427906(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279d1, i64 -203, i64 5)
  store %struct.Memory* %call_4279d1, %struct.Memory** %MEMORY

  br label %block_.L_427906

  ; Code: .L_4279d6:	 RIP: 4279d6	 Bytes: 0
block_.L_4279d6:

  ; Code: jmpq .L_4279db	 RIP: 4279d6	 Bytes: 5
  %loadMem_4279d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279d6 = call %struct.Memory* @routine_jmpq_.L_4279db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279d6, i64 5, i64 5)
  store %struct.Memory* %call_4279d6, %struct.Memory** %MEMORY

  br label %block_.L_4279db

  ; Code: .L_4279db:	 RIP: 4279db	 Bytes: 0
block_.L_4279db:

  ; Code: movl -0x41c(%rbp), %eax	 RIP: 4279db	 Bytes: 6
  %loadMem_4279db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279db = call %struct.Memory* @routine_movl_MINUS0x41c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279db)
  store %struct.Memory* %call_4279db, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4279e1	 Bytes: 3
  %loadMem_4279e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279e1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279e1)
  store %struct.Memory* %call_4279e1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x41c(%rbp)	 RIP: 4279e4	 Bytes: 6
  %loadMem_4279e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279e4 = call %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279e4)
  store %struct.Memory* %call_4279e4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4278ef	 RIP: 4279ea	 Bytes: 5
  %loadMem_4279ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279ea = call %struct.Memory* @routine_jmpq_.L_4278ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279ea, i64 -251, i64 5)
  store %struct.Memory* %call_4279ea, %struct.Memory** %MEMORY

  br label %block_.L_4278ef

  ; Code: .L_4279ef:	 RIP: 4279ef	 Bytes: 0
block_.L_4279ef:

  ; Code: jmpq .L_4279f4	 RIP: 4279ef	 Bytes: 5
  %loadMem_4279ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279ef = call %struct.Memory* @routine_jmpq_.L_4279f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279ef, i64 5, i64 5)
  store %struct.Memory* %call_4279ef, %struct.Memory** %MEMORY

  br label %block_.L_4279f4

  ; Code: .L_4279f4:	 RIP: 4279f4	 Bytes: 0
block_.L_4279f4:

  ; Code: jmpq .L_4279f9	 RIP: 4279f4	 Bytes: 5
  %loadMem_4279f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279f4 = call %struct.Memory* @routine_jmpq_.L_4279f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279f4, i64 5, i64 5)
  store %struct.Memory* %call_4279f4, %struct.Memory** %MEMORY

  br label %block_.L_4279f9

  ; Code: .L_4279f9:	 RIP: 4279f9	 Bytes: 0
block_.L_4279f9:

  ; Code: movl -0x414(%rbp), %eax	 RIP: 4279f9	 Bytes: 6
  %loadMem_4279f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279f9 = call %struct.Memory* @routine_movl_MINUS0x414__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279f9)
  store %struct.Memory* %call_4279f9, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 4279ff	 Bytes: 3
  %loadMem_4279ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4279ff = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4279ff)
  store %struct.Memory* %call_4279ff, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x414(%rbp)	 RIP: 427a02	 Bytes: 6
  %loadMem_427a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427a02 = call %struct.Memory* @routine_movl__eax__MINUS0x414__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427a02)
  store %struct.Memory* %call_427a02, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4277ea	 RIP: 427a08	 Bytes: 5
  %loadMem_427a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427a08 = call %struct.Memory* @routine_jmpq_.L_4277ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427a08, i64 -542, i64 5)
  store %struct.Memory* %call_427a08, %struct.Memory** %MEMORY

  br label %block_.L_4277ea

  ; Code: .L_427a0d:	 RIP: 427a0d	 Bytes: 0
block_.L_427a0d:

  ; Code: jmpq .L_427a12	 RIP: 427a0d	 Bytes: 5
  %loadMem_427a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427a0d = call %struct.Memory* @routine_jmpq_.L_427a12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427a0d, i64 5, i64 5)
  store %struct.Memory* %call_427a0d, %struct.Memory** %MEMORY

  br label %block_.L_427a12

  ; Code: .L_427a12:	 RIP: 427a12	 Bytes: 0
block_.L_427a12:

  ; Code: addq $0x450, %rsp	 RIP: 427a12	 Bytes: 7
  %loadMem_427a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427a12 = call %struct.Memory* @routine_addq__0x450___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427a12)
  store %struct.Memory* %call_427a12, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 427a19	 Bytes: 1
  %loadMem_427a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427a19 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427a19)
  store %struct.Memory* %call_427a19, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 427a1a	 Bytes: 1
  %loadMem_427a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427a1a = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427a1a)
  store %struct.Memory* %call_427a1a, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_427a1a
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

define %struct.Memory* @routine_subq__0x450___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1104)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax__MINUS0x408__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1032
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq__rax__MINUS0x410__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1040
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72700
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

define %struct.Memory* @routine_je_.L_4277e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x0__MINUS0x414__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1044
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
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

define %struct.Memory* @routine_movl_MINUS0x414__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1044
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_cmpl_0x11b24__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 72484
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jge_.L_4277db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x1948__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6472
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_movslq_MINUS0x414__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1044
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_cmpb__0x0____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 0)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_je_.L_4277c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_leaq_MINUS0x420__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1056
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x424__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1060
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x414__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1044
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_callq_.get_mb_pos(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x41c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1052
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x20__MINUS0x41c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1052
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 32)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4273e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x418__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1048
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x10__MINUS0x418__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1048
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4273c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x400__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1024
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x408__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1032
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x424__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1060
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_addl_MINUS0x41c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1052
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x420__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1056
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x418__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1048
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  store i16 %6, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw___rcx__rsi_2____di(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movslq_MINUS0x418__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1048
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_movslq_MINUS0x41c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1052
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__di____rax__rcx_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
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
  %19 = load i16, i16* %DI
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl_MINUS0x418__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1048
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax__MINUS0x418__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1048
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

define %struct.Memory* @routine_jmpq_.L_42735a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4273cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x41c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1052
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1052
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_427343(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x10__MINUS0x41c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1052
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4274eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4274d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movw___rdx__rcx_2____si(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %SI, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movl_MINUS0x424__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1060
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x41c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1052
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_shll__0x1___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
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

define %struct.Memory* @routine_addl__r8d___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__edi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movl_MINUS0x420__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1056
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x418__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1048
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movw__si____rcx__rdx_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %SI
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}








define %struct.Memory* @routine_movl_MINUS0x41c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1052
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x10___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 16)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__edi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movw___rax__rcx_2____si(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %SI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movq_MINUS0x408__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1032
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_addl__0x1___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
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








define %struct.Memory* @routine_movw__si____rax__rcx_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %19 = load i16, i16* %SI
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}








define %struct.Memory* @routine_jmpq_.L_427402(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4274d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4273eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x10___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 16)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x420__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1056
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x42c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1068
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rdx__MINUS0x438__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1080
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
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


define %struct.Memory* @routine_movq_MINUS0x438__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1080
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* dereferenceable(3376), i64) #0 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 1, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 7, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = inttoptr i64 %2 to i32*
  %13 = load i32, i32* %12
  %14 = sext i32 %13 to i64
  %15 = shl  i64 %11, 32
  %16 = or i64 %15, %7
  %17 = sdiv i64 %16, %14
  %18 = shl i64 %17, 32
  %19 = ashr exact i64 %18, 32
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %25, label %21

; <label>:21:                                     ; preds = %3
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %23, %struct.Memory* %0) #21
  br label %37

; <label>:25:                                     ; preds = %3
  %26 = srem i64 %16, %14
  %27 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %28 = and i64 %17, 4294967295
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  %30 = and i64 %26, 4294967295
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %25, %21
  %38 = phi %struct.Memory* [ %24, %21 ], [ %0, %25 ]
  ret %struct.Memory* %38
}

define %struct.Memory* @routine_idivl_0x11c04__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72708
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x43c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1084
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




define %struct.Memory* @routine_movl_MINUS0x43c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1084
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


define %struct.Memory* @routine_movl__eax__MINUS0x420__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1056
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x424__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1060
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x42c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1068
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x440__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1088
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_idivl_0x11c08__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72712
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x440__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1088
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x444__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1092
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r9d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x444__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1092
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_idivl__r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x424__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1060
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x428__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1064
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x2__MINUS0x428__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1064
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4277bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_0x11c08__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72712
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shll__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jge_.L_42765f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jge_.L_427646(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x410__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1040
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x428__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1064
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x424__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1060
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x41c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1052
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__esi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x420__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1056
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x418__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1048
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movw___rcx__rdx_2____di(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DI, i64 %18)
  ret %struct.Memory* %21
}


















define %struct.Memory* @routine_jmpq_.L_4275c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42764b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_427597(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jge_.L_4277a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_42778b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















































define %struct.Memory* @routine_addl_0x11c08__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 72712
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq_MINUS0x410__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1040
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x428__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1064
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}
































define %struct.Memory* @routine_jmpq_.L_42768d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_427790(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_427669(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4277a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x428__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1064
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x428__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1064
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_427580(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4277c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4277c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x414__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1044
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4272e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_427a12(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jge_.L_427a0d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_4279f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jge_.L_4278e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4278cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






































define %struct.Memory* @routine_jmpq_.L_42785e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4278d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_427847(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_4279ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4279d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















































































define %struct.Memory* @routine_jmpq_.L_427906(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4279db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4278ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4279f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4279f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4277ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x450___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1104)
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

