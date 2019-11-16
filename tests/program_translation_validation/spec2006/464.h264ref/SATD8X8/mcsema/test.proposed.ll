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
%G_0x726840_type = type <{ [8 x i8] }>
@G_0x726840= global %G_0x726840_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @SATD8X8(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .SATD8X8:	 RIP: 45f5b0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 45f5b0	 Bytes: 1
  %loadMem_45f5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5b0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5b0)
  store %struct.Memory* %call_45f5b0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 45f5b1	 Bytes: 3
  %loadMem_45f5b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5b1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5b1)
  store %struct.Memory* %call_45f5b1, %struct.Memory** %MEMORY

  ; Code: subq $0x2b0, %rsp	 RIP: 45f5b4	 Bytes: 7
  %loadMem_45f5b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5b4 = call %struct.Memory* @routine_subq__0x2b0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5b4)
  store %struct.Memory* %call_45f5b4, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 45f5bb	 Bytes: 4
  %loadMem_45f5bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5bb = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5bb)
  store %struct.Memory* %call_45f5bb, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 45f5bf	 Bytes: 3
  %loadMem_45f5bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5bf = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5bf)
  store %struct.Memory* %call_45f5bf, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 45f5c2	 Bytes: 7
  %loadMem_45f5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5c2 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5c2)
  store %struct.Memory* %call_45f5c2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 45f5c9	 Bytes: 4
  %loadMem_45f5c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5c9 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5c9)
  store %struct.Memory* %call_45f5c9, %struct.Memory** %MEMORY

  ; Code: je .L_45fece	 RIP: 45f5cd	 Bytes: 6
  %loadMem_45f5cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5cd = call %struct.Memory* @routine_je_.L_45fece(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5cd, i8* %BRANCH_TAKEN, i64 2305, i64 6, i64 6)
  store %struct.Memory* %call_45f5cd, %struct.Memory** %MEMORY

  %loadBr_45f5cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f5cd = icmp eq i8 %loadBr_45f5cd, 1
  br i1 %cmpBr_45f5cd, label %block_.L_45fece, label %block_45f5d3

block_45f5d3:
  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 45f5d3	 Bytes: 7
  %loadMem_45f5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5d3 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5d3)
  store %struct.Memory* %call_45f5d3, %struct.Memory** %MEMORY

  ; Code: .L_45f5da:	 RIP: 45f5da	 Bytes: 0
  br label %block_.L_45f5da
block_.L_45f5da:

  ; Code: cmpl $0x8, -0x14(%rbp)	 RIP: 45f5da	 Bytes: 4
  %loadMem_45f5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5da = call %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5da)
  store %struct.Memory* %call_45f5da, %struct.Memory** %MEMORY

  ; Code: jge .L_45faed	 RIP: 45f5de	 Bytes: 6
  %loadMem_45f5de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5de = call %struct.Memory* @routine_jge_.L_45faed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5de, i8* %BRANCH_TAKEN, i64 1295, i64 6, i64 6)
  store %struct.Memory* %call_45f5de, %struct.Memory** %MEMORY

  %loadBr_45f5de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f5de = icmp eq i8 %loadBr_45f5de, 1
  br i1 %cmpBr_45f5de, label %block_.L_45faed, label %block_45f5e4

block_45f5e4:
  ; Code: leaq -0x220(%rbp), %rax	 RIP: 45f5e4	 Bytes: 7
  %loadMem_45f5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5e4 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5e4)
  store %struct.Memory* %call_45f5e4, %struct.Memory** %MEMORY

  ; Code: leaq -0x120(%rbp), %rcx	 RIP: 45f5eb	 Bytes: 7
  %loadMem_45f5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5eb = call %struct.Memory* @routine_leaq_MINUS0x120__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5eb)
  store %struct.Memory* %call_45f5eb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f5f2	 Bytes: 4
  %loadMem_45f5f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5f2 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5f2)
  store %struct.Memory* %call_45f5f2, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 45f5f6	 Bytes: 3
  %loadMem_45f5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5f6 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5f6)
  store %struct.Memory* %call_45f5f6, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %esi	 RIP: 45f5f9	 Bytes: 3
  %loadMem_45f5f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5f9 = call %struct.Memory* @routine_shll__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5f9)
  store %struct.Memory* %call_45f5f9, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 45f5fc	 Bytes: 3
  %loadMem_45f5fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5fc = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5fc)
  store %struct.Memory* %call_45f5fc, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rdi,4), %esi	 RIP: 45f5ff	 Bytes: 3
  %loadMem_45f5ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5ff = call %struct.Memory* @routine_movl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5ff)
  store %struct.Memory* %call_45f5ff, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f602	 Bytes: 4
  %loadMem_45f602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f602 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f602)
  store %struct.Memory* %call_45f602, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 45f606	 Bytes: 4
  %loadMem_45f606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f606 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f606)
  store %struct.Memory* %call_45f606, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %r8d	 RIP: 45f60a	 Bytes: 4
  %loadMem_45f60a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f60a = call %struct.Memory* @routine_shll__0x3___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f60a)
  store %struct.Memory* %call_45f60a, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %r8d	 RIP: 45f60e	 Bytes: 4
  %loadMem_45f60e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f60e = call %struct.Memory* @routine_addl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f60e)
  store %struct.Memory* %call_45f60e, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdi	 RIP: 45f612	 Bytes: 3
  %loadMem_45f612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f612 = call %struct.Memory* @routine_movslq__r8d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f612)
  store %struct.Memory* %call_45f612, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rdi,4), %esi	 RIP: 45f615	 Bytes: 3
  %loadMem_45f615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f615 = call %struct.Memory* @routine_addl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f615)
  store %struct.Memory* %call_45f615, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f618	 Bytes: 4
  %loadMem_45f618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f618 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f618)
  store %struct.Memory* %call_45f618, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f61c	 Bytes: 4
  %loadMem_45f61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f61c = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f61c)
  store %struct.Memory* %call_45f61c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f620	 Bytes: 3
  %loadMem_45f620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f620 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f620)
  store %struct.Memory* %call_45f620, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f623	 Bytes: 3
  %loadMem_45f623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f623 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f623)
  store %struct.Memory* %call_45f623, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rdi)	 RIP: 45f626	 Bytes: 2
  %loadMem_45f626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f626 = call %struct.Memory* @routine_movl__esi____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f626)
  store %struct.Memory* %call_45f626, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f628	 Bytes: 4
  %loadMem_45f628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f628 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f628)
  store %struct.Memory* %call_45f628, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 45f62c	 Bytes: 3
  %loadMem_45f62c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f62c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f62c)
  store %struct.Memory* %call_45f62c, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %esi	 RIP: 45f62f	 Bytes: 3
  %loadMem_45f62f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f62f = call %struct.Memory* @routine_shll__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f62f)
  store %struct.Memory* %call_45f62f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 45f632	 Bytes: 3
  %loadMem_45f632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f632 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f632)
  store %struct.Memory* %call_45f632, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 45f635	 Bytes: 3
  %loadMem_45f635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f635 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f635)
  store %struct.Memory* %call_45f635, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rdi,4), %esi	 RIP: 45f638	 Bytes: 3
  %loadMem_45f638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f638 = call %struct.Memory* @routine_movl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f638)
  store %struct.Memory* %call_45f638, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f63b	 Bytes: 4
  %loadMem_45f63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f63b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f63b)
  store %struct.Memory* %call_45f63b, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 45f63f	 Bytes: 4
  %loadMem_45f63f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f63f = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f63f)
  store %struct.Memory* %call_45f63f, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %r8d	 RIP: 45f643	 Bytes: 4
  %loadMem_45f643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f643 = call %struct.Memory* @routine_shll__0x3___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f643)
  store %struct.Memory* %call_45f643, %struct.Memory** %MEMORY

  ; Code: addl $0x5, %r8d	 RIP: 45f647	 Bytes: 4
  %loadMem_45f647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f647 = call %struct.Memory* @routine_addl__0x5___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f647)
  store %struct.Memory* %call_45f647, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdi	 RIP: 45f64b	 Bytes: 3
  %loadMem_45f64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f64b = call %struct.Memory* @routine_movslq__r8d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f64b)
  store %struct.Memory* %call_45f64b, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rdi,4), %esi	 RIP: 45f64e	 Bytes: 3
  %loadMem_45f64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f64e = call %struct.Memory* @routine_addl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f64e)
  store %struct.Memory* %call_45f64e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f651	 Bytes: 4
  %loadMem_45f651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f651 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f651)
  store %struct.Memory* %call_45f651, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f655	 Bytes: 4
  %loadMem_45f655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f655 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f655)
  store %struct.Memory* %call_45f655, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f659	 Bytes: 3
  %loadMem_45f659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f659 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f659)
  store %struct.Memory* %call_45f659, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f65c	 Bytes: 3
  %loadMem_45f65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f65c = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f65c)
  store %struct.Memory* %call_45f65c, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x4(%rdi)	 RIP: 45f65f	 Bytes: 3
  %loadMem_45f65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f65f = call %struct.Memory* @routine_movl__esi__0x4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f65f)
  store %struct.Memory* %call_45f65f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f662	 Bytes: 4
  %loadMem_45f662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f662 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f662)
  store %struct.Memory* %call_45f662, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 45f666	 Bytes: 3
  %loadMem_45f666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f666 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f666)
  store %struct.Memory* %call_45f666, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %esi	 RIP: 45f669	 Bytes: 3
  %loadMem_45f669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f669 = call %struct.Memory* @routine_shll__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f669)
  store %struct.Memory* %call_45f669, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %esi	 RIP: 45f66c	 Bytes: 3
  %loadMem_45f66c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f66c = call %struct.Memory* @routine_addl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f66c)
  store %struct.Memory* %call_45f66c, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 45f66f	 Bytes: 3
  %loadMem_45f66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f66f = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f66f)
  store %struct.Memory* %call_45f66f, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rdi,4), %esi	 RIP: 45f672	 Bytes: 3
  %loadMem_45f672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f672 = call %struct.Memory* @routine_movl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f672)
  store %struct.Memory* %call_45f672, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f675	 Bytes: 4
  %loadMem_45f675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f675 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f675)
  store %struct.Memory* %call_45f675, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 45f679	 Bytes: 4
  %loadMem_45f679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f679 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f679)
  store %struct.Memory* %call_45f679, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %r8d	 RIP: 45f67d	 Bytes: 4
  %loadMem_45f67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f67d = call %struct.Memory* @routine_shll__0x3___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f67d)
  store %struct.Memory* %call_45f67d, %struct.Memory** %MEMORY

  ; Code: addl $0x6, %r8d	 RIP: 45f681	 Bytes: 4
  %loadMem_45f681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f681 = call %struct.Memory* @routine_addl__0x6___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f681)
  store %struct.Memory* %call_45f681, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdi	 RIP: 45f685	 Bytes: 3
  %loadMem_45f685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f685 = call %struct.Memory* @routine_movslq__r8d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f685)
  store %struct.Memory* %call_45f685, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rdi,4), %esi	 RIP: 45f688	 Bytes: 3
  %loadMem_45f688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f688 = call %struct.Memory* @routine_addl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f688)
  store %struct.Memory* %call_45f688, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f68b	 Bytes: 4
  %loadMem_45f68b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f68b = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f68b)
  store %struct.Memory* %call_45f68b, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f68f	 Bytes: 4
  %loadMem_45f68f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f68f = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f68f)
  store %struct.Memory* %call_45f68f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f693	 Bytes: 3
  %loadMem_45f693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f693 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f693)
  store %struct.Memory* %call_45f693, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f696	 Bytes: 3
  %loadMem_45f696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f696 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f696)
  store %struct.Memory* %call_45f696, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8(%rdi)	 RIP: 45f699	 Bytes: 3
  %loadMem_45f699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f699 = call %struct.Memory* @routine_movl__esi__0x8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f699)
  store %struct.Memory* %call_45f699, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f69c	 Bytes: 4
  %loadMem_45f69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f69c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f69c)
  store %struct.Memory* %call_45f69c, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 45f6a0	 Bytes: 3
  %loadMem_45f6a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6a0 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6a0)
  store %struct.Memory* %call_45f6a0, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %esi	 RIP: 45f6a3	 Bytes: 3
  %loadMem_45f6a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6a3 = call %struct.Memory* @routine_shll__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6a3)
  store %struct.Memory* %call_45f6a3, %struct.Memory** %MEMORY

  ; Code: addl $0x3, %esi	 RIP: 45f6a6	 Bytes: 3
  %loadMem_45f6a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6a6 = call %struct.Memory* @routine_addl__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6a6)
  store %struct.Memory* %call_45f6a6, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 45f6a9	 Bytes: 3
  %loadMem_45f6a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6a9 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6a9)
  store %struct.Memory* %call_45f6a9, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rdi,4), %esi	 RIP: 45f6ac	 Bytes: 3
  %loadMem_45f6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6ac = call %struct.Memory* @routine_movl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6ac)
  store %struct.Memory* %call_45f6ac, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f6af	 Bytes: 4
  %loadMem_45f6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6af = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6af)
  store %struct.Memory* %call_45f6af, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 45f6b3	 Bytes: 4
  %loadMem_45f6b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6b3 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6b3)
  store %struct.Memory* %call_45f6b3, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %r8d	 RIP: 45f6b7	 Bytes: 4
  %loadMem_45f6b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6b7 = call %struct.Memory* @routine_shll__0x3___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6b7)
  store %struct.Memory* %call_45f6b7, %struct.Memory** %MEMORY

  ; Code: addl $0x7, %r8d	 RIP: 45f6bb	 Bytes: 4
  %loadMem_45f6bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6bb = call %struct.Memory* @routine_addl__0x7___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6bb)
  store %struct.Memory* %call_45f6bb, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdi	 RIP: 45f6bf	 Bytes: 3
  %loadMem_45f6bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6bf = call %struct.Memory* @routine_movslq__r8d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6bf)
  store %struct.Memory* %call_45f6bf, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rdi,4), %esi	 RIP: 45f6c2	 Bytes: 3
  %loadMem_45f6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6c2 = call %struct.Memory* @routine_addl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6c2)
  store %struct.Memory* %call_45f6c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f6c5	 Bytes: 4
  %loadMem_45f6c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6c5 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6c5)
  store %struct.Memory* %call_45f6c5, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f6c9	 Bytes: 4
  %loadMem_45f6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6c9 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6c9)
  store %struct.Memory* %call_45f6c9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f6cd	 Bytes: 3
  %loadMem_45f6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6cd = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6cd)
  store %struct.Memory* %call_45f6cd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f6d0	 Bytes: 3
  %loadMem_45f6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6d0 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6d0)
  store %struct.Memory* %call_45f6d0, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0xc(%rdi)	 RIP: 45f6d3	 Bytes: 3
  %loadMem_45f6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6d3 = call %struct.Memory* @routine_movl__esi__0xc__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6d3)
  store %struct.Memory* %call_45f6d3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f6d6	 Bytes: 4
  %loadMem_45f6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6d6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6d6)
  store %struct.Memory* %call_45f6d6, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 45f6da	 Bytes: 3
  %loadMem_45f6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6da = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6da)
  store %struct.Memory* %call_45f6da, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %esi	 RIP: 45f6dd	 Bytes: 3
  %loadMem_45f6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6dd = call %struct.Memory* @routine_shll__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6dd)
  store %struct.Memory* %call_45f6dd, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 45f6e0	 Bytes: 3
  %loadMem_45f6e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6e0 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6e0)
  store %struct.Memory* %call_45f6e0, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rdi,4), %esi	 RIP: 45f6e3	 Bytes: 3
  %loadMem_45f6e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6e3 = call %struct.Memory* @routine_movl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6e3)
  store %struct.Memory* %call_45f6e3, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f6e6	 Bytes: 4
  %loadMem_45f6e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6e6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6e6)
  store %struct.Memory* %call_45f6e6, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 45f6ea	 Bytes: 4
  %loadMem_45f6ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6ea = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6ea)
  store %struct.Memory* %call_45f6ea, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %r8d	 RIP: 45f6ee	 Bytes: 4
  %loadMem_45f6ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6ee = call %struct.Memory* @routine_shll__0x3___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6ee)
  store %struct.Memory* %call_45f6ee, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %r8d	 RIP: 45f6f2	 Bytes: 4
  %loadMem_45f6f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6f2 = call %struct.Memory* @routine_addl__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6f2)
  store %struct.Memory* %call_45f6f2, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdi	 RIP: 45f6f6	 Bytes: 3
  %loadMem_45f6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6f6 = call %struct.Memory* @routine_movslq__r8d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6f6)
  store %struct.Memory* %call_45f6f6, %struct.Memory** %MEMORY

  ; Code: subl (%rdx,%rdi,4), %esi	 RIP: 45f6f9	 Bytes: 3
  %loadMem_45f6f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6f9 = call %struct.Memory* @routine_subl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6f9)
  store %struct.Memory* %call_45f6f9, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f6fc	 Bytes: 4
  %loadMem_45f6fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6fc = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6fc)
  store %struct.Memory* %call_45f6fc, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f700	 Bytes: 4
  %loadMem_45f700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f700 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f700)
  store %struct.Memory* %call_45f700, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f704	 Bytes: 3
  %loadMem_45f704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f704 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f704)
  store %struct.Memory* %call_45f704, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f707	 Bytes: 3
  %loadMem_45f707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f707 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f707)
  store %struct.Memory* %call_45f707, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x10(%rdi)	 RIP: 45f70a	 Bytes: 3
  %loadMem_45f70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f70a = call %struct.Memory* @routine_movl__esi__0x10__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f70a)
  store %struct.Memory* %call_45f70a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f70d	 Bytes: 4
  %loadMem_45f70d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f70d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f70d)
  store %struct.Memory* %call_45f70d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 45f711	 Bytes: 3
  %loadMem_45f711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f711 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f711)
  store %struct.Memory* %call_45f711, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %esi	 RIP: 45f714	 Bytes: 3
  %loadMem_45f714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f714 = call %struct.Memory* @routine_shll__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f714)
  store %struct.Memory* %call_45f714, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 45f717	 Bytes: 3
  %loadMem_45f717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f717 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f717)
  store %struct.Memory* %call_45f717, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 45f71a	 Bytes: 3
  %loadMem_45f71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f71a = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f71a)
  store %struct.Memory* %call_45f71a, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rdi,4), %esi	 RIP: 45f71d	 Bytes: 3
  %loadMem_45f71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f71d = call %struct.Memory* @routine_movl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f71d)
  store %struct.Memory* %call_45f71d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f720	 Bytes: 4
  %loadMem_45f720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f720 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f720)
  store %struct.Memory* %call_45f720, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 45f724	 Bytes: 4
  %loadMem_45f724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f724 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f724)
  store %struct.Memory* %call_45f724, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %r8d	 RIP: 45f728	 Bytes: 4
  %loadMem_45f728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f728 = call %struct.Memory* @routine_shll__0x3___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f728)
  store %struct.Memory* %call_45f728, %struct.Memory** %MEMORY

  ; Code: addl $0x5, %r8d	 RIP: 45f72c	 Bytes: 4
  %loadMem_45f72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f72c = call %struct.Memory* @routine_addl__0x5___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f72c)
  store %struct.Memory* %call_45f72c, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdi	 RIP: 45f730	 Bytes: 3
  %loadMem_45f730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f730 = call %struct.Memory* @routine_movslq__r8d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f730)
  store %struct.Memory* %call_45f730, %struct.Memory** %MEMORY

  ; Code: subl (%rdx,%rdi,4), %esi	 RIP: 45f733	 Bytes: 3
  %loadMem_45f733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f733 = call %struct.Memory* @routine_subl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f733)
  store %struct.Memory* %call_45f733, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f736	 Bytes: 4
  %loadMem_45f736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f736 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f736)
  store %struct.Memory* %call_45f736, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f73a	 Bytes: 4
  %loadMem_45f73a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f73a = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f73a)
  store %struct.Memory* %call_45f73a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f73e	 Bytes: 3
  %loadMem_45f73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f73e = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f73e)
  store %struct.Memory* %call_45f73e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f741	 Bytes: 3
  %loadMem_45f741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f741 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f741)
  store %struct.Memory* %call_45f741, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x14(%rdi)	 RIP: 45f744	 Bytes: 3
  %loadMem_45f744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f744 = call %struct.Memory* @routine_movl__esi__0x14__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f744)
  store %struct.Memory* %call_45f744, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f747	 Bytes: 4
  %loadMem_45f747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f747 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f747)
  store %struct.Memory* %call_45f747, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 45f74b	 Bytes: 3
  %loadMem_45f74b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f74b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f74b)
  store %struct.Memory* %call_45f74b, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %esi	 RIP: 45f74e	 Bytes: 3
  %loadMem_45f74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f74e = call %struct.Memory* @routine_shll__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f74e)
  store %struct.Memory* %call_45f74e, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %esi	 RIP: 45f751	 Bytes: 3
  %loadMem_45f751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f751 = call %struct.Memory* @routine_addl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f751)
  store %struct.Memory* %call_45f751, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 45f754	 Bytes: 3
  %loadMem_45f754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f754 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f754)
  store %struct.Memory* %call_45f754, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rdi,4), %esi	 RIP: 45f757	 Bytes: 3
  %loadMem_45f757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f757 = call %struct.Memory* @routine_movl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f757)
  store %struct.Memory* %call_45f757, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f75a	 Bytes: 4
  %loadMem_45f75a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f75a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f75a)
  store %struct.Memory* %call_45f75a, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 45f75e	 Bytes: 4
  %loadMem_45f75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f75e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f75e)
  store %struct.Memory* %call_45f75e, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %r8d	 RIP: 45f762	 Bytes: 4
  %loadMem_45f762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f762 = call %struct.Memory* @routine_shll__0x3___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f762)
  store %struct.Memory* %call_45f762, %struct.Memory** %MEMORY

  ; Code: addl $0x6, %r8d	 RIP: 45f766	 Bytes: 4
  %loadMem_45f766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f766 = call %struct.Memory* @routine_addl__0x6___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f766)
  store %struct.Memory* %call_45f766, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdi	 RIP: 45f76a	 Bytes: 3
  %loadMem_45f76a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f76a = call %struct.Memory* @routine_movslq__r8d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f76a)
  store %struct.Memory* %call_45f76a, %struct.Memory** %MEMORY

  ; Code: subl (%rdx,%rdi,4), %esi	 RIP: 45f76d	 Bytes: 3
  %loadMem_45f76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f76d = call %struct.Memory* @routine_subl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f76d)
  store %struct.Memory* %call_45f76d, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f770	 Bytes: 4
  %loadMem_45f770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f770 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f770)
  store %struct.Memory* %call_45f770, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f774	 Bytes: 4
  %loadMem_45f774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f774 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f774)
  store %struct.Memory* %call_45f774, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f778	 Bytes: 3
  %loadMem_45f778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f778 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f778)
  store %struct.Memory* %call_45f778, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f77b	 Bytes: 3
  %loadMem_45f77b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f77b = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f77b)
  store %struct.Memory* %call_45f77b, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x18(%rdi)	 RIP: 45f77e	 Bytes: 3
  %loadMem_45f77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f77e = call %struct.Memory* @routine_movl__esi__0x18__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f77e)
  store %struct.Memory* %call_45f77e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f781	 Bytes: 4
  %loadMem_45f781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f781 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f781)
  store %struct.Memory* %call_45f781, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 45f785	 Bytes: 3
  %loadMem_45f785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f785 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f785)
  store %struct.Memory* %call_45f785, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %esi	 RIP: 45f788	 Bytes: 3
  %loadMem_45f788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f788 = call %struct.Memory* @routine_shll__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f788)
  store %struct.Memory* %call_45f788, %struct.Memory** %MEMORY

  ; Code: addl $0x3, %esi	 RIP: 45f78b	 Bytes: 3
  %loadMem_45f78b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f78b = call %struct.Memory* @routine_addl__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f78b)
  store %struct.Memory* %call_45f78b, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 45f78e	 Bytes: 3
  %loadMem_45f78e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f78e = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f78e)
  store %struct.Memory* %call_45f78e, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rdi,4), %esi	 RIP: 45f791	 Bytes: 3
  %loadMem_45f791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f791 = call %struct.Memory* @routine_movl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f791)
  store %struct.Memory* %call_45f791, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 45f794	 Bytes: 4
  %loadMem_45f794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f794 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f794)
  store %struct.Memory* %call_45f794, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %r8d	 RIP: 45f798	 Bytes: 4
  %loadMem_45f798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f798 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f798)
  store %struct.Memory* %call_45f798, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %r8d	 RIP: 45f79c	 Bytes: 4
  %loadMem_45f79c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f79c = call %struct.Memory* @routine_shll__0x3___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f79c)
  store %struct.Memory* %call_45f79c, %struct.Memory** %MEMORY

  ; Code: addl $0x7, %r8d	 RIP: 45f7a0	 Bytes: 4
  %loadMem_45f7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7a0 = call %struct.Memory* @routine_addl__0x7___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7a0)
  store %struct.Memory* %call_45f7a0, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdi	 RIP: 45f7a4	 Bytes: 3
  %loadMem_45f7a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7a4 = call %struct.Memory* @routine_movslq__r8d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7a4)
  store %struct.Memory* %call_45f7a4, %struct.Memory** %MEMORY

  ; Code: subl (%rdx,%rdi,4), %esi	 RIP: 45f7a7	 Bytes: 3
  %loadMem_45f7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7a7 = call %struct.Memory* @routine_subl___rdx__rdi_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7a7)
  store %struct.Memory* %call_45f7a7, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f7aa	 Bytes: 4
  %loadMem_45f7aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7aa = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7aa)
  store %struct.Memory* %call_45f7aa, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f7ae	 Bytes: 4
  %loadMem_45f7ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7ae = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7ae)
  store %struct.Memory* %call_45f7ae, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f7b2	 Bytes: 3
  %loadMem_45f7b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7b2 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7b2)
  store %struct.Memory* %call_45f7b2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f7b5	 Bytes: 3
  %loadMem_45f7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7b5 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7b5)
  store %struct.Memory* %call_45f7b5, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x1c(%rdi)	 RIP: 45f7b8	 Bytes: 3
  %loadMem_45f7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7b8 = call %struct.Memory* @routine_movl__esi__0x1c__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7b8)
  store %struct.Memory* %call_45f7b8, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f7bb	 Bytes: 4
  %loadMem_45f7bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7bb = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7bb)
  store %struct.Memory* %call_45f7bb, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f7bf	 Bytes: 4
  %loadMem_45f7bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7bf = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7bf)
  store %struct.Memory* %call_45f7bf, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f7c3	 Bytes: 3
  %loadMem_45f7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7c3 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7c3)
  store %struct.Memory* %call_45f7c3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f7c6	 Bytes: 3
  %loadMem_45f7c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7c6 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7c6)
  store %struct.Memory* %call_45f7c6, %struct.Memory** %MEMORY

  ; Code: movl (%rdi), %esi	 RIP: 45f7c9	 Bytes: 2
  %loadMem_45f7c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7c9 = call %struct.Memory* @routine_movl___rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7c9)
  store %struct.Memory* %call_45f7c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f7cb	 Bytes: 4
  %loadMem_45f7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7cb = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7cb)
  store %struct.Memory* %call_45f7cb, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f7cf	 Bytes: 4
  %loadMem_45f7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7cf = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7cf)
  store %struct.Memory* %call_45f7cf, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f7d3	 Bytes: 3
  %loadMem_45f7d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7d3 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7d3)
  store %struct.Memory* %call_45f7d3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f7d6	 Bytes: 3
  %loadMem_45f7d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7d6 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7d6)
  store %struct.Memory* %call_45f7d6, %struct.Memory** %MEMORY

  ; Code: addl 0x8(%rdi), %esi	 RIP: 45f7d9	 Bytes: 3
  %loadMem_45f7d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7d9 = call %struct.Memory* @routine_addl_0x8__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7d9)
  store %struct.Memory* %call_45f7d9, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f7dc	 Bytes: 4
  %loadMem_45f7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7dc = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7dc)
  store %struct.Memory* %call_45f7dc, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f7e0	 Bytes: 4
  %loadMem_45f7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7e0 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7e0)
  store %struct.Memory* %call_45f7e0, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f7e4	 Bytes: 3
  %loadMem_45f7e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7e4 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7e4)
  store %struct.Memory* %call_45f7e4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f7e7	 Bytes: 3
  %loadMem_45f7e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7e7 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7e7)
  store %struct.Memory* %call_45f7e7, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rdi)	 RIP: 45f7ea	 Bytes: 2
  %loadMem_45f7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7ea = call %struct.Memory* @routine_movl__esi____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7ea)
  store %struct.Memory* %call_45f7ea, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f7ec	 Bytes: 4
  %loadMem_45f7ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7ec = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7ec)
  store %struct.Memory* %call_45f7ec, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f7f0	 Bytes: 4
  %loadMem_45f7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7f0 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7f0)
  store %struct.Memory* %call_45f7f0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f7f4	 Bytes: 3
  %loadMem_45f7f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7f4 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7f4)
  store %struct.Memory* %call_45f7f4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f7f7	 Bytes: 3
  %loadMem_45f7f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7f7 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7f7)
  store %struct.Memory* %call_45f7f7, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rdi), %esi	 RIP: 45f7fa	 Bytes: 3
  %loadMem_45f7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7fa = call %struct.Memory* @routine_movl_0x4__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7fa)
  store %struct.Memory* %call_45f7fa, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f7fd	 Bytes: 4
  %loadMem_45f7fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7fd = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7fd)
  store %struct.Memory* %call_45f7fd, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f801	 Bytes: 4
  %loadMem_45f801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f801 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f801)
  store %struct.Memory* %call_45f801, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f805	 Bytes: 3
  %loadMem_45f805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f805 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f805)
  store %struct.Memory* %call_45f805, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f808	 Bytes: 3
  %loadMem_45f808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f808 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f808)
  store %struct.Memory* %call_45f808, %struct.Memory** %MEMORY

  ; Code: addl 0xc(%rdi), %esi	 RIP: 45f80b	 Bytes: 3
  %loadMem_45f80b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f80b = call %struct.Memory* @routine_addl_0xc__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f80b)
  store %struct.Memory* %call_45f80b, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f80e	 Bytes: 4
  %loadMem_45f80e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f80e = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f80e)
  store %struct.Memory* %call_45f80e, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f812	 Bytes: 4
  %loadMem_45f812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f812 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f812)
  store %struct.Memory* %call_45f812, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f816	 Bytes: 3
  %loadMem_45f816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f816 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f816)
  store %struct.Memory* %call_45f816, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f819	 Bytes: 3
  %loadMem_45f819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f819 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f819)
  store %struct.Memory* %call_45f819, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x4(%rdi)	 RIP: 45f81c	 Bytes: 3
  %loadMem_45f81c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f81c = call %struct.Memory* @routine_movl__esi__0x4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f81c)
  store %struct.Memory* %call_45f81c, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f81f	 Bytes: 4
  %loadMem_45f81f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f81f = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f81f)
  store %struct.Memory* %call_45f81f, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f823	 Bytes: 4
  %loadMem_45f823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f823 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f823)
  store %struct.Memory* %call_45f823, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f827	 Bytes: 3
  %loadMem_45f827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f827 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f827)
  store %struct.Memory* %call_45f827, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f82a	 Bytes: 3
  %loadMem_45f82a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f82a = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f82a)
  store %struct.Memory* %call_45f82a, %struct.Memory** %MEMORY

  ; Code: movl (%rdi), %esi	 RIP: 45f82d	 Bytes: 2
  %loadMem_45f82d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f82d = call %struct.Memory* @routine_movl___rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f82d)
  store %struct.Memory* %call_45f82d, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f82f	 Bytes: 4
  %loadMem_45f82f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f82f = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f82f)
  store %struct.Memory* %call_45f82f, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f833	 Bytes: 4
  %loadMem_45f833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f833 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f833)
  store %struct.Memory* %call_45f833, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f837	 Bytes: 3
  %loadMem_45f837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f837 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f837)
  store %struct.Memory* %call_45f837, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f83a	 Bytes: 3
  %loadMem_45f83a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f83a = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f83a)
  store %struct.Memory* %call_45f83a, %struct.Memory** %MEMORY

  ; Code: subl 0x8(%rdi), %esi	 RIP: 45f83d	 Bytes: 3
  %loadMem_45f83d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f83d = call %struct.Memory* @routine_subl_0x8__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f83d)
  store %struct.Memory* %call_45f83d, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f840	 Bytes: 4
  %loadMem_45f840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f840 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f840)
  store %struct.Memory* %call_45f840, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f844	 Bytes: 4
  %loadMem_45f844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f844 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f844)
  store %struct.Memory* %call_45f844, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f848	 Bytes: 3
  %loadMem_45f848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f848 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f848)
  store %struct.Memory* %call_45f848, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f84b	 Bytes: 3
  %loadMem_45f84b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f84b = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f84b)
  store %struct.Memory* %call_45f84b, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8(%rdi)	 RIP: 45f84e	 Bytes: 3
  %loadMem_45f84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f84e = call %struct.Memory* @routine_movl__esi__0x8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f84e)
  store %struct.Memory* %call_45f84e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f851	 Bytes: 4
  %loadMem_45f851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f851 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f851)
  store %struct.Memory* %call_45f851, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f855	 Bytes: 4
  %loadMem_45f855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f855 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f855)
  store %struct.Memory* %call_45f855, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f859	 Bytes: 3
  %loadMem_45f859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f859 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f859)
  store %struct.Memory* %call_45f859, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f85c	 Bytes: 3
  %loadMem_45f85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f85c = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f85c)
  store %struct.Memory* %call_45f85c, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rdi), %esi	 RIP: 45f85f	 Bytes: 3
  %loadMem_45f85f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f85f = call %struct.Memory* @routine_movl_0x4__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f85f)
  store %struct.Memory* %call_45f85f, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f862	 Bytes: 4
  %loadMem_45f862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f862 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f862)
  store %struct.Memory* %call_45f862, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f866	 Bytes: 4
  %loadMem_45f866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f866 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f866)
  store %struct.Memory* %call_45f866, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f86a	 Bytes: 3
  %loadMem_45f86a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f86a = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f86a)
  store %struct.Memory* %call_45f86a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f86d	 Bytes: 3
  %loadMem_45f86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f86d = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f86d)
  store %struct.Memory* %call_45f86d, %struct.Memory** %MEMORY

  ; Code: subl 0xc(%rdi), %esi	 RIP: 45f870	 Bytes: 3
  %loadMem_45f870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f870 = call %struct.Memory* @routine_subl_0xc__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f870)
  store %struct.Memory* %call_45f870, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f873	 Bytes: 4
  %loadMem_45f873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f873 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f873)
  store %struct.Memory* %call_45f873, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f877	 Bytes: 4
  %loadMem_45f877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f877 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f877)
  store %struct.Memory* %call_45f877, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f87b	 Bytes: 3
  %loadMem_45f87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f87b = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f87b)
  store %struct.Memory* %call_45f87b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f87e	 Bytes: 3
  %loadMem_45f87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f87e = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f87e)
  store %struct.Memory* %call_45f87e, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0xc(%rdi)	 RIP: 45f881	 Bytes: 3
  %loadMem_45f881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f881 = call %struct.Memory* @routine_movl__esi__0xc__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f881)
  store %struct.Memory* %call_45f881, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f884	 Bytes: 4
  %loadMem_45f884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f884 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f884)
  store %struct.Memory* %call_45f884, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f888	 Bytes: 4
  %loadMem_45f888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f888 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f888)
  store %struct.Memory* %call_45f888, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f88c	 Bytes: 3
  %loadMem_45f88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f88c = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f88c)
  store %struct.Memory* %call_45f88c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f88f	 Bytes: 3
  %loadMem_45f88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f88f = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f88f)
  store %struct.Memory* %call_45f88f, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rdi), %esi	 RIP: 45f892	 Bytes: 3
  %loadMem_45f892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f892 = call %struct.Memory* @routine_movl_0x10__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f892)
  store %struct.Memory* %call_45f892, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f895	 Bytes: 4
  %loadMem_45f895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f895 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f895)
  store %struct.Memory* %call_45f895, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f899	 Bytes: 4
  %loadMem_45f899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f899 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f899)
  store %struct.Memory* %call_45f899, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f89d	 Bytes: 3
  %loadMem_45f89d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f89d = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f89d)
  store %struct.Memory* %call_45f89d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f8a0	 Bytes: 3
  %loadMem_45f8a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8a0 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8a0)
  store %struct.Memory* %call_45f8a0, %struct.Memory** %MEMORY

  ; Code: addl 0x18(%rdi), %esi	 RIP: 45f8a3	 Bytes: 3
  %loadMem_45f8a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8a3 = call %struct.Memory* @routine_addl_0x18__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8a3)
  store %struct.Memory* %call_45f8a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f8a6	 Bytes: 4
  %loadMem_45f8a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8a6 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8a6)
  store %struct.Memory* %call_45f8a6, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f8aa	 Bytes: 4
  %loadMem_45f8aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8aa = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8aa)
  store %struct.Memory* %call_45f8aa, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f8ae	 Bytes: 3
  %loadMem_45f8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8ae = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8ae)
  store %struct.Memory* %call_45f8ae, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f8b1	 Bytes: 3
  %loadMem_45f8b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8b1 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8b1)
  store %struct.Memory* %call_45f8b1, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x10(%rdi)	 RIP: 45f8b4	 Bytes: 3
  %loadMem_45f8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8b4 = call %struct.Memory* @routine_movl__esi__0x10__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8b4)
  store %struct.Memory* %call_45f8b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f8b7	 Bytes: 4
  %loadMem_45f8b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8b7 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8b7)
  store %struct.Memory* %call_45f8b7, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f8bb	 Bytes: 4
  %loadMem_45f8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8bb = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8bb)
  store %struct.Memory* %call_45f8bb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f8bf	 Bytes: 3
  %loadMem_45f8bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8bf = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8bf)
  store %struct.Memory* %call_45f8bf, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f8c2	 Bytes: 3
  %loadMem_45f8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8c2 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8c2)
  store %struct.Memory* %call_45f8c2, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rdi), %esi	 RIP: 45f8c5	 Bytes: 3
  %loadMem_45f8c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8c5 = call %struct.Memory* @routine_movl_0x14__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8c5)
  store %struct.Memory* %call_45f8c5, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f8c8	 Bytes: 4
  %loadMem_45f8c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8c8 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8c8)
  store %struct.Memory* %call_45f8c8, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f8cc	 Bytes: 4
  %loadMem_45f8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8cc = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8cc)
  store %struct.Memory* %call_45f8cc, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f8d0	 Bytes: 3
  %loadMem_45f8d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8d0 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8d0)
  store %struct.Memory* %call_45f8d0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f8d3	 Bytes: 3
  %loadMem_45f8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8d3 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8d3)
  store %struct.Memory* %call_45f8d3, %struct.Memory** %MEMORY

  ; Code: addl 0x1c(%rdi), %esi	 RIP: 45f8d6	 Bytes: 3
  %loadMem_45f8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8d6 = call %struct.Memory* @routine_addl_0x1c__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8d6)
  store %struct.Memory* %call_45f8d6, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f8d9	 Bytes: 4
  %loadMem_45f8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8d9 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8d9)
  store %struct.Memory* %call_45f8d9, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f8dd	 Bytes: 4
  %loadMem_45f8dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8dd = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8dd)
  store %struct.Memory* %call_45f8dd, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f8e1	 Bytes: 3
  %loadMem_45f8e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8e1 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8e1)
  store %struct.Memory* %call_45f8e1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f8e4	 Bytes: 3
  %loadMem_45f8e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8e4 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8e4)
  store %struct.Memory* %call_45f8e4, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x14(%rdi)	 RIP: 45f8e7	 Bytes: 3
  %loadMem_45f8e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8e7 = call %struct.Memory* @routine_movl__esi__0x14__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8e7)
  store %struct.Memory* %call_45f8e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f8ea	 Bytes: 4
  %loadMem_45f8ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8ea = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8ea)
  store %struct.Memory* %call_45f8ea, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f8ee	 Bytes: 4
  %loadMem_45f8ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8ee = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8ee)
  store %struct.Memory* %call_45f8ee, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f8f2	 Bytes: 3
  %loadMem_45f8f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8f2 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8f2)
  store %struct.Memory* %call_45f8f2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f8f5	 Bytes: 3
  %loadMem_45f8f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8f5 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8f5)
  store %struct.Memory* %call_45f8f5, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rdi), %esi	 RIP: 45f8f8	 Bytes: 3
  %loadMem_45f8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8f8 = call %struct.Memory* @routine_movl_0x10__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8f8)
  store %struct.Memory* %call_45f8f8, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f8fb	 Bytes: 4
  %loadMem_45f8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8fb = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8fb)
  store %struct.Memory* %call_45f8fb, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f8ff	 Bytes: 4
  %loadMem_45f8ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8ff = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8ff)
  store %struct.Memory* %call_45f8ff, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f903	 Bytes: 3
  %loadMem_45f903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f903 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f903)
  store %struct.Memory* %call_45f903, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f906	 Bytes: 3
  %loadMem_45f906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f906 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f906)
  store %struct.Memory* %call_45f906, %struct.Memory** %MEMORY

  ; Code: subl 0x18(%rdi), %esi	 RIP: 45f909	 Bytes: 3
  %loadMem_45f909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f909 = call %struct.Memory* @routine_subl_0x18__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f909)
  store %struct.Memory* %call_45f909, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f90c	 Bytes: 4
  %loadMem_45f90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f90c = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f90c)
  store %struct.Memory* %call_45f90c, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f910	 Bytes: 4
  %loadMem_45f910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f910 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f910)
  store %struct.Memory* %call_45f910, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f914	 Bytes: 3
  %loadMem_45f914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f914 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f914)
  store %struct.Memory* %call_45f914, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f917	 Bytes: 3
  %loadMem_45f917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f917 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f917)
  store %struct.Memory* %call_45f917, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x18(%rdi)	 RIP: 45f91a	 Bytes: 3
  %loadMem_45f91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f91a = call %struct.Memory* @routine_movl__esi__0x18__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f91a)
  store %struct.Memory* %call_45f91a, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f91d	 Bytes: 4
  %loadMem_45f91d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f91d = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f91d)
  store %struct.Memory* %call_45f91d, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f921	 Bytes: 4
  %loadMem_45f921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f921 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f921)
  store %struct.Memory* %call_45f921, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f925	 Bytes: 3
  %loadMem_45f925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f925 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f925)
  store %struct.Memory* %call_45f925, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f928	 Bytes: 3
  %loadMem_45f928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f928 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f928)
  store %struct.Memory* %call_45f928, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rdi), %esi	 RIP: 45f92b	 Bytes: 3
  %loadMem_45f92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f92b = call %struct.Memory* @routine_movl_0x14__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f92b)
  store %struct.Memory* %call_45f92b, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f92e	 Bytes: 4
  %loadMem_45f92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f92e = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f92e)
  store %struct.Memory* %call_45f92e, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f932	 Bytes: 4
  %loadMem_45f932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f932 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f932)
  store %struct.Memory* %call_45f932, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f936	 Bytes: 3
  %loadMem_45f936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f936 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f936)
  store %struct.Memory* %call_45f936, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f939	 Bytes: 3
  %loadMem_45f939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f939 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f939)
  store %struct.Memory* %call_45f939, %struct.Memory** %MEMORY

  ; Code: subl 0x1c(%rdi), %esi	 RIP: 45f93c	 Bytes: 3
  %loadMem_45f93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f93c = call %struct.Memory* @routine_subl_0x1c__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f93c)
  store %struct.Memory* %call_45f93c, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f93f	 Bytes: 4
  %loadMem_45f93f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f93f = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f93f)
  store %struct.Memory* %call_45f93f, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f943	 Bytes: 4
  %loadMem_45f943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f943 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f943)
  store %struct.Memory* %call_45f943, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f947	 Bytes: 3
  %loadMem_45f947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f947 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f947)
  store %struct.Memory* %call_45f947, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f94a	 Bytes: 3
  %loadMem_45f94a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f94a = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f94a)
  store %struct.Memory* %call_45f94a, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x1c(%rdi)	 RIP: 45f94d	 Bytes: 3
  %loadMem_45f94d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f94d = call %struct.Memory* @routine_movl__esi__0x1c__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f94d)
  store %struct.Memory* %call_45f94d, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f950	 Bytes: 4
  %loadMem_45f950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f950 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f950)
  store %struct.Memory* %call_45f950, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f954	 Bytes: 4
  %loadMem_45f954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f954 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f954)
  store %struct.Memory* %call_45f954, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f958	 Bytes: 3
  %loadMem_45f958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f958 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f958)
  store %struct.Memory* %call_45f958, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f95b	 Bytes: 3
  %loadMem_45f95b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f95b = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f95b)
  store %struct.Memory* %call_45f95b, %struct.Memory** %MEMORY

  ; Code: movl (%rdi), %esi	 RIP: 45f95e	 Bytes: 2
  %loadMem_45f95e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f95e = call %struct.Memory* @routine_movl___rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f95e)
  store %struct.Memory* %call_45f95e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f960	 Bytes: 4
  %loadMem_45f960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f960 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f960)
  store %struct.Memory* %call_45f960, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f964	 Bytes: 4
  %loadMem_45f964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f964 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f964)
  store %struct.Memory* %call_45f964, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f968	 Bytes: 3
  %loadMem_45f968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f968 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f968)
  store %struct.Memory* %call_45f968, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f96b	 Bytes: 3
  %loadMem_45f96b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f96b = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f96b)
  store %struct.Memory* %call_45f96b, %struct.Memory** %MEMORY

  ; Code: addl 0x4(%rdi), %esi	 RIP: 45f96e	 Bytes: 3
  %loadMem_45f96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f96e = call %struct.Memory* @routine_addl_0x4__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f96e)
  store %struct.Memory* %call_45f96e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f971	 Bytes: 4
  %loadMem_45f971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f971 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f971)
  store %struct.Memory* %call_45f971, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f975	 Bytes: 4
  %loadMem_45f975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f975 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f975)
  store %struct.Memory* %call_45f975, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f979	 Bytes: 3
  %loadMem_45f979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f979 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f979)
  store %struct.Memory* %call_45f979, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f97c	 Bytes: 3
  %loadMem_45f97c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f97c = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f97c)
  store %struct.Memory* %call_45f97c, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rdi)	 RIP: 45f97f	 Bytes: 2
  %loadMem_45f97f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f97f = call %struct.Memory* @routine_movl__esi____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f97f)
  store %struct.Memory* %call_45f97f, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f981	 Bytes: 4
  %loadMem_45f981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f981 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f981)
  store %struct.Memory* %call_45f981, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f985	 Bytes: 4
  %loadMem_45f985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f985 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f985)
  store %struct.Memory* %call_45f985, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f989	 Bytes: 3
  %loadMem_45f989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f989 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f989)
  store %struct.Memory* %call_45f989, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f98c	 Bytes: 3
  %loadMem_45f98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f98c = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f98c)
  store %struct.Memory* %call_45f98c, %struct.Memory** %MEMORY

  ; Code: movl (%rdi), %esi	 RIP: 45f98f	 Bytes: 2
  %loadMem_45f98f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f98f = call %struct.Memory* @routine_movl___rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f98f)
  store %struct.Memory* %call_45f98f, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f991	 Bytes: 4
  %loadMem_45f991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f991 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f991)
  store %struct.Memory* %call_45f991, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f995	 Bytes: 4
  %loadMem_45f995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f995 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f995)
  store %struct.Memory* %call_45f995, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f999	 Bytes: 3
  %loadMem_45f999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f999 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f999)
  store %struct.Memory* %call_45f999, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f99c	 Bytes: 3
  %loadMem_45f99c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f99c = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f99c)
  store %struct.Memory* %call_45f99c, %struct.Memory** %MEMORY

  ; Code: subl 0x4(%rdi), %esi	 RIP: 45f99f	 Bytes: 3
  %loadMem_45f99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f99f = call %struct.Memory* @routine_subl_0x4__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f99f)
  store %struct.Memory* %call_45f99f, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f9a2	 Bytes: 4
  %loadMem_45f9a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9a2 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9a2)
  store %struct.Memory* %call_45f9a2, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f9a6	 Bytes: 4
  %loadMem_45f9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9a6 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9a6)
  store %struct.Memory* %call_45f9a6, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f9aa	 Bytes: 3
  %loadMem_45f9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9aa = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9aa)
  store %struct.Memory* %call_45f9aa, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f9ad	 Bytes: 3
  %loadMem_45f9ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9ad = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9ad)
  store %struct.Memory* %call_45f9ad, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x4(%rdi)	 RIP: 45f9b0	 Bytes: 3
  %loadMem_45f9b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9b0 = call %struct.Memory* @routine_movl__esi__0x4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9b0)
  store %struct.Memory* %call_45f9b0, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f9b3	 Bytes: 4
  %loadMem_45f9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9b3 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9b3)
  store %struct.Memory* %call_45f9b3, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f9b7	 Bytes: 4
  %loadMem_45f9b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9b7 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9b7)
  store %struct.Memory* %call_45f9b7, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f9bb	 Bytes: 3
  %loadMem_45f9bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9bb = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9bb)
  store %struct.Memory* %call_45f9bb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f9be	 Bytes: 3
  %loadMem_45f9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9be = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9be)
  store %struct.Memory* %call_45f9be, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rdi), %esi	 RIP: 45f9c1	 Bytes: 3
  %loadMem_45f9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9c1 = call %struct.Memory* @routine_movl_0x8__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9c1)
  store %struct.Memory* %call_45f9c1, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f9c4	 Bytes: 4
  %loadMem_45f9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9c4 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9c4)
  store %struct.Memory* %call_45f9c4, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f9c8	 Bytes: 4
  %loadMem_45f9c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9c8 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9c8)
  store %struct.Memory* %call_45f9c8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f9cc	 Bytes: 3
  %loadMem_45f9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9cc = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9cc)
  store %struct.Memory* %call_45f9cc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f9cf	 Bytes: 3
  %loadMem_45f9cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9cf = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9cf)
  store %struct.Memory* %call_45f9cf, %struct.Memory** %MEMORY

  ; Code: addl 0xc(%rdi), %esi	 RIP: 45f9d2	 Bytes: 3
  %loadMem_45f9d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9d2 = call %struct.Memory* @routine_addl_0xc__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9d2)
  store %struct.Memory* %call_45f9d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f9d5	 Bytes: 4
  %loadMem_45f9d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9d5 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9d5)
  store %struct.Memory* %call_45f9d5, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f9d9	 Bytes: 4
  %loadMem_45f9d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9d9 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9d9)
  store %struct.Memory* %call_45f9d9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45f9dd	 Bytes: 3
  %loadMem_45f9dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9dd = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9dd)
  store %struct.Memory* %call_45f9dd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f9e0	 Bytes: 3
  %loadMem_45f9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9e0 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9e0)
  store %struct.Memory* %call_45f9e0, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8(%rdi)	 RIP: 45f9e3	 Bytes: 3
  %loadMem_45f9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9e3 = call %struct.Memory* @routine_movl__esi__0x8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9e3)
  store %struct.Memory* %call_45f9e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f9e6	 Bytes: 4
  %loadMem_45f9e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9e6 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9e6)
  store %struct.Memory* %call_45f9e6, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f9ea	 Bytes: 4
  %loadMem_45f9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9ea = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9ea)
  store %struct.Memory* %call_45f9ea, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f9ee	 Bytes: 3
  %loadMem_45f9ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9ee = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9ee)
  store %struct.Memory* %call_45f9ee, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45f9f1	 Bytes: 3
  %loadMem_45f9f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9f1 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9f1)
  store %struct.Memory* %call_45f9f1, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rdi), %esi	 RIP: 45f9f4	 Bytes: 3
  %loadMem_45f9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9f4 = call %struct.Memory* @routine_movl_0x8__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9f4)
  store %struct.Memory* %call_45f9f4, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45f9f7	 Bytes: 4
  %loadMem_45f9f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9f7 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9f7)
  store %struct.Memory* %call_45f9f7, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45f9fb	 Bytes: 4
  %loadMem_45f9fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9fb = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9fb)
  store %struct.Memory* %call_45f9fb, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45f9ff	 Bytes: 3
  %loadMem_45f9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9ff = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9ff)
  store %struct.Memory* %call_45f9ff, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45fa02	 Bytes: 3
  %loadMem_45fa02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa02 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa02)
  store %struct.Memory* %call_45fa02, %struct.Memory** %MEMORY

  ; Code: subl 0xc(%rdi), %esi	 RIP: 45fa05	 Bytes: 3
  %loadMem_45fa05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa05 = call %struct.Memory* @routine_subl_0xc__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa05)
  store %struct.Memory* %call_45fa05, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45fa08	 Bytes: 4
  %loadMem_45fa08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa08 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa08)
  store %struct.Memory* %call_45fa08, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45fa0c	 Bytes: 4
  %loadMem_45fa0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa0c = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa0c)
  store %struct.Memory* %call_45fa0c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45fa10	 Bytes: 3
  %loadMem_45fa10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa10 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa10)
  store %struct.Memory* %call_45fa10, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45fa13	 Bytes: 3
  %loadMem_45fa13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa13 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa13)
  store %struct.Memory* %call_45fa13, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0xc(%rdi)	 RIP: 45fa16	 Bytes: 3
  %loadMem_45fa16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa16 = call %struct.Memory* @routine_movl__esi__0xc__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa16)
  store %struct.Memory* %call_45fa16, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45fa19	 Bytes: 4
  %loadMem_45fa19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa19 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa19)
  store %struct.Memory* %call_45fa19, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45fa1d	 Bytes: 4
  %loadMem_45fa1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa1d = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa1d)
  store %struct.Memory* %call_45fa1d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45fa21	 Bytes: 3
  %loadMem_45fa21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa21 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa21)
  store %struct.Memory* %call_45fa21, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45fa24	 Bytes: 3
  %loadMem_45fa24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa24 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa24)
  store %struct.Memory* %call_45fa24, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rdi), %esi	 RIP: 45fa27	 Bytes: 3
  %loadMem_45fa27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa27 = call %struct.Memory* @routine_movl_0x10__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa27)
  store %struct.Memory* %call_45fa27, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45fa2a	 Bytes: 4
  %loadMem_45fa2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa2a = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa2a)
  store %struct.Memory* %call_45fa2a, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45fa2e	 Bytes: 4
  %loadMem_45fa2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa2e = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa2e)
  store %struct.Memory* %call_45fa2e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45fa32	 Bytes: 3
  %loadMem_45fa32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa32 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa32)
  store %struct.Memory* %call_45fa32, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45fa35	 Bytes: 3
  %loadMem_45fa35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa35 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa35)
  store %struct.Memory* %call_45fa35, %struct.Memory** %MEMORY

  ; Code: addl 0x14(%rdi), %esi	 RIP: 45fa38	 Bytes: 3
  %loadMem_45fa38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa38 = call %struct.Memory* @routine_addl_0x14__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa38)
  store %struct.Memory* %call_45fa38, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45fa3b	 Bytes: 4
  %loadMem_45fa3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa3b = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa3b)
  store %struct.Memory* %call_45fa3b, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45fa3f	 Bytes: 4
  %loadMem_45fa3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa3f = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa3f)
  store %struct.Memory* %call_45fa3f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45fa43	 Bytes: 3
  %loadMem_45fa43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa43 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa43)
  store %struct.Memory* %call_45fa43, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45fa46	 Bytes: 3
  %loadMem_45fa46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa46 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa46)
  store %struct.Memory* %call_45fa46, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x10(%rdi)	 RIP: 45fa49	 Bytes: 3
  %loadMem_45fa49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa49 = call %struct.Memory* @routine_movl__esi__0x10__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa49)
  store %struct.Memory* %call_45fa49, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45fa4c	 Bytes: 4
  %loadMem_45fa4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa4c = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa4c)
  store %struct.Memory* %call_45fa4c, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45fa50	 Bytes: 4
  %loadMem_45fa50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa50 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa50)
  store %struct.Memory* %call_45fa50, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45fa54	 Bytes: 3
  %loadMem_45fa54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa54 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa54)
  store %struct.Memory* %call_45fa54, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45fa57	 Bytes: 3
  %loadMem_45fa57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa57 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa57)
  store %struct.Memory* %call_45fa57, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rdi), %esi	 RIP: 45fa5a	 Bytes: 3
  %loadMem_45fa5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa5a = call %struct.Memory* @routine_movl_0x10__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa5a)
  store %struct.Memory* %call_45fa5a, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45fa5d	 Bytes: 4
  %loadMem_45fa5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa5d = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa5d)
  store %struct.Memory* %call_45fa5d, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45fa61	 Bytes: 4
  %loadMem_45fa61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa61 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa61)
  store %struct.Memory* %call_45fa61, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45fa65	 Bytes: 3
  %loadMem_45fa65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa65 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa65)
  store %struct.Memory* %call_45fa65, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45fa68	 Bytes: 3
  %loadMem_45fa68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa68 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa68)
  store %struct.Memory* %call_45fa68, %struct.Memory** %MEMORY

  ; Code: subl 0x14(%rdi), %esi	 RIP: 45fa6b	 Bytes: 3
  %loadMem_45fa6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa6b = call %struct.Memory* @routine_subl_0x14__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa6b)
  store %struct.Memory* %call_45fa6b, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45fa6e	 Bytes: 4
  %loadMem_45fa6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa6e = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa6e)
  store %struct.Memory* %call_45fa6e, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45fa72	 Bytes: 4
  %loadMem_45fa72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa72 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa72)
  store %struct.Memory* %call_45fa72, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45fa76	 Bytes: 3
  %loadMem_45fa76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa76 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa76)
  store %struct.Memory* %call_45fa76, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45fa79	 Bytes: 3
  %loadMem_45fa79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa79 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa79)
  store %struct.Memory* %call_45fa79, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x14(%rdi)	 RIP: 45fa7c	 Bytes: 3
  %loadMem_45fa7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa7c = call %struct.Memory* @routine_movl__esi__0x14__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa7c)
  store %struct.Memory* %call_45fa7c, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45fa7f	 Bytes: 4
  %loadMem_45fa7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa7f = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa7f)
  store %struct.Memory* %call_45fa7f, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45fa83	 Bytes: 4
  %loadMem_45fa83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa83 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa83)
  store %struct.Memory* %call_45fa83, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45fa87	 Bytes: 3
  %loadMem_45fa87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa87 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa87)
  store %struct.Memory* %call_45fa87, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45fa8a	 Bytes: 3
  %loadMem_45fa8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa8a = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa8a)
  store %struct.Memory* %call_45fa8a, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rdi), %esi	 RIP: 45fa8d	 Bytes: 3
  %loadMem_45fa8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa8d = call %struct.Memory* @routine_movl_0x18__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa8d)
  store %struct.Memory* %call_45fa8d, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45fa90	 Bytes: 4
  %loadMem_45fa90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa90 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa90)
  store %struct.Memory* %call_45fa90, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45fa94	 Bytes: 4
  %loadMem_45fa94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa94 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa94)
  store %struct.Memory* %call_45fa94, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45fa98	 Bytes: 3
  %loadMem_45fa98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa98 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa98)
  store %struct.Memory* %call_45fa98, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45fa9b	 Bytes: 3
  %loadMem_45fa9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa9b = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa9b)
  store %struct.Memory* %call_45fa9b, %struct.Memory** %MEMORY

  ; Code: addl 0x1c(%rdi), %esi	 RIP: 45fa9e	 Bytes: 3
  %loadMem_45fa9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa9e = call %struct.Memory* @routine_addl_0x1c__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa9e)
  store %struct.Memory* %call_45fa9e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45faa1	 Bytes: 4
  %loadMem_45faa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45faa1 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45faa1)
  store %struct.Memory* %call_45faa1, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45faa5	 Bytes: 4
  %loadMem_45faa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45faa5 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45faa5)
  store %struct.Memory* %call_45faa5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 45faa9	 Bytes: 3
  %loadMem_45faa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45faa9 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45faa9)
  store %struct.Memory* %call_45faa9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45faac	 Bytes: 3
  %loadMem_45faac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45faac = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45faac)
  store %struct.Memory* %call_45faac, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x18(%rdi)	 RIP: 45faaf	 Bytes: 3
  %loadMem_45faaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45faaf = call %struct.Memory* @routine_movl__esi__0x18__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45faaf)
  store %struct.Memory* %call_45faaf, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45fab2	 Bytes: 4
  %loadMem_45fab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fab2 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fab2)
  store %struct.Memory* %call_45fab2, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45fab6	 Bytes: 4
  %loadMem_45fab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fab6 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fab6)
  store %struct.Memory* %call_45fab6, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 45faba	 Bytes: 3
  %loadMem_45faba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45faba = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45faba)
  store %struct.Memory* %call_45faba, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 45fabd	 Bytes: 3
  %loadMem_45fabd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fabd = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fabd)
  store %struct.Memory* %call_45fabd, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rdi), %esi	 RIP: 45fac0	 Bytes: 3
  %loadMem_45fac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fac0 = call %struct.Memory* @routine_movl_0x18__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fac0)
  store %struct.Memory* %call_45fac0, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45fac3	 Bytes: 4
  %loadMem_45fac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fac3 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fac3)
  store %struct.Memory* %call_45fac3, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45fac7	 Bytes: 4
  %loadMem_45fac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fac7 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fac7)
  store %struct.Memory* %call_45fac7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 45facb	 Bytes: 3
  %loadMem_45facb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45facb = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45facb)
  store %struct.Memory* %call_45facb, %struct.Memory** %MEMORY

  ; Code: subl 0x1c(%rcx), %esi	 RIP: 45face	 Bytes: 3
  %loadMem_45face = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45face = call %struct.Memory* @routine_subl_0x1c__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45face)
  store %struct.Memory* %call_45face, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 45fad1	 Bytes: 4
  %loadMem_45fad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fad1 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fad1)
  store %struct.Memory* %call_45fad1, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rcx	 RIP: 45fad5	 Bytes: 4
  %loadMem_45fad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fad5 = call %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fad5)
  store %struct.Memory* %call_45fad5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 45fad9	 Bytes: 3
  %loadMem_45fad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fad9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fad9)
  store %struct.Memory* %call_45fad9, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x1c(%rax)	 RIP: 45fadc	 Bytes: 3
  %loadMem_45fadc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fadc = call %struct.Memory* @routine_movl__esi__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fadc)
  store %struct.Memory* %call_45fadc, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 45fadf	 Bytes: 3
  %loadMem_45fadf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fadf = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fadf)
  store %struct.Memory* %call_45fadf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45fae2	 Bytes: 3
  %loadMem_45fae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fae2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fae2)
  store %struct.Memory* %call_45fae2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 45fae5	 Bytes: 3
  %loadMem_45fae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fae5 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fae5)
  store %struct.Memory* %call_45fae5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45f5da	 RIP: 45fae8	 Bytes: 5
  %loadMem_45fae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fae8 = call %struct.Memory* @routine_jmpq_.L_45f5da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fae8, i64 -1294, i64 5)
  store %struct.Memory* %call_45fae8, %struct.Memory** %MEMORY

  br label %block_.L_45f5da

  ; Code: .L_45faed:	 RIP: 45faed	 Bytes: 0
block_.L_45faed:

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 45faed	 Bytes: 7
  %loadMem_45faed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45faed = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45faed)
  store %struct.Memory* %call_45faed, %struct.Memory** %MEMORY

  ; Code: .L_45faf4:	 RIP: 45faf4	 Bytes: 0
  br label %block_.L_45faf4
block_.L_45faf4:

  ; Code: cmpl $0x8, -0x10(%rbp)	 RIP: 45faf4	 Bytes: 4
  %loadMem_45faf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45faf4 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45faf4)
  store %struct.Memory* %call_45faf4, %struct.Memory** %MEMORY

  ; Code: jge .L_45fe09	 RIP: 45faf8	 Bytes: 6
  %loadMem_45faf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45faf8 = call %struct.Memory* @routine_jge_.L_45fe09(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45faf8, i8* %BRANCH_TAKEN, i64 785, i64 6, i64 6)
  store %struct.Memory* %call_45faf8, %struct.Memory** %MEMORY

  %loadBr_45faf8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45faf8 = icmp eq i8 %loadBr_45faf8, 1
  br i1 %cmpBr_45faf8, label %block_.L_45fe09, label %block_45fafe

block_45fafe:
  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fafe	 Bytes: 4
  %loadMem_45fafe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fafe = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fafe)
  store %struct.Memory* %call_45fafe, %struct.Memory** %MEMORY

  ; Code: movl -0x220(%rbp,%rax,4), %ecx	 RIP: 45fb02	 Bytes: 7
  %loadMem_45fb02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb02 = call %struct.Memory* @routine_movl_MINUS0x220__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb02)
  store %struct.Memory* %call_45fb02, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fb09	 Bytes: 4
  %loadMem_45fb09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb09 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb09)
  store %struct.Memory* %call_45fb09, %struct.Memory** %MEMORY

  ; Code: addl -0x1a0(%rbp,%rax,4), %ecx	 RIP: 45fb0d	 Bytes: 7
  %loadMem_45fb0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb0d = call %struct.Memory* @routine_addl_MINUS0x1a0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb0d)
  store %struct.Memory* %call_45fb0d, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fb14	 Bytes: 4
  %loadMem_45fb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb14 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb14)
  store %struct.Memory* %call_45fb14, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x320(%rbp,%rax,4)	 RIP: 45fb18	 Bytes: 7
  %loadMem_45fb18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb18 = call %struct.Memory* @routine_movl__ecx__MINUS0x320__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb18)
  store %struct.Memory* %call_45fb18, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fb1f	 Bytes: 4
  %loadMem_45fb1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb1f = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb1f)
  store %struct.Memory* %call_45fb1f, %struct.Memory** %MEMORY

  ; Code: movl -0x200(%rbp,%rax,4), %ecx	 RIP: 45fb23	 Bytes: 7
  %loadMem_45fb23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb23 = call %struct.Memory* @routine_movl_MINUS0x200__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb23)
  store %struct.Memory* %call_45fb23, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fb2a	 Bytes: 4
  %loadMem_45fb2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb2a = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb2a)
  store %struct.Memory* %call_45fb2a, %struct.Memory** %MEMORY

  ; Code: addl -0x180(%rbp,%rax,4), %ecx	 RIP: 45fb2e	 Bytes: 7
  %loadMem_45fb2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb2e = call %struct.Memory* @routine_addl_MINUS0x180__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb2e)
  store %struct.Memory* %call_45fb2e, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fb35	 Bytes: 4
  %loadMem_45fb35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb35 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb35)
  store %struct.Memory* %call_45fb35, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x300(%rbp,%rax,4)	 RIP: 45fb39	 Bytes: 7
  %loadMem_45fb39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb39 = call %struct.Memory* @routine_movl__ecx__MINUS0x300__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb39)
  store %struct.Memory* %call_45fb39, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fb40	 Bytes: 4
  %loadMem_45fb40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb40 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb40)
  store %struct.Memory* %call_45fb40, %struct.Memory** %MEMORY

  ; Code: movl -0x1e0(%rbp,%rax,4), %ecx	 RIP: 45fb44	 Bytes: 7
  %loadMem_45fb44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb44 = call %struct.Memory* @routine_movl_MINUS0x1e0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb44)
  store %struct.Memory* %call_45fb44, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fb4b	 Bytes: 4
  %loadMem_45fb4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb4b = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb4b)
  store %struct.Memory* %call_45fb4b, %struct.Memory** %MEMORY

  ; Code: addl -0x160(%rbp,%rax,4), %ecx	 RIP: 45fb4f	 Bytes: 7
  %loadMem_45fb4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb4f = call %struct.Memory* @routine_addl_MINUS0x160__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb4f)
  store %struct.Memory* %call_45fb4f, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fb56	 Bytes: 4
  %loadMem_45fb56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb56 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb56)
  store %struct.Memory* %call_45fb56, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2e0(%rbp,%rax,4)	 RIP: 45fb5a	 Bytes: 7
  %loadMem_45fb5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb5a = call %struct.Memory* @routine_movl__ecx__MINUS0x2e0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb5a)
  store %struct.Memory* %call_45fb5a, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fb61	 Bytes: 4
  %loadMem_45fb61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb61 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb61)
  store %struct.Memory* %call_45fb61, %struct.Memory** %MEMORY

  ; Code: movl -0x1c0(%rbp,%rax,4), %ecx	 RIP: 45fb65	 Bytes: 7
  %loadMem_45fb65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb65 = call %struct.Memory* @routine_movl_MINUS0x1c0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb65)
  store %struct.Memory* %call_45fb65, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fb6c	 Bytes: 4
  %loadMem_45fb6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb6c = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb6c)
  store %struct.Memory* %call_45fb6c, %struct.Memory** %MEMORY

  ; Code: addl -0x140(%rbp,%rax,4), %ecx	 RIP: 45fb70	 Bytes: 7
  %loadMem_45fb70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb70 = call %struct.Memory* @routine_addl_MINUS0x140__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb70)
  store %struct.Memory* %call_45fb70, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fb77	 Bytes: 4
  %loadMem_45fb77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb77 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb77)
  store %struct.Memory* %call_45fb77, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c0(%rbp,%rax,4)	 RIP: 45fb7b	 Bytes: 7
  %loadMem_45fb7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb7b = call %struct.Memory* @routine_movl__ecx__MINUS0x2c0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb7b)
  store %struct.Memory* %call_45fb7b, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fb82	 Bytes: 4
  %loadMem_45fb82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb82 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb82)
  store %struct.Memory* %call_45fb82, %struct.Memory** %MEMORY

  ; Code: movl -0x220(%rbp,%rax,4), %ecx	 RIP: 45fb86	 Bytes: 7
  %loadMem_45fb86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb86 = call %struct.Memory* @routine_movl_MINUS0x220__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb86)
  store %struct.Memory* %call_45fb86, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fb8d	 Bytes: 4
  %loadMem_45fb8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb8d = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb8d)
  store %struct.Memory* %call_45fb8d, %struct.Memory** %MEMORY

  ; Code: subl -0x1a0(%rbp,%rax,4), %ecx	 RIP: 45fb91	 Bytes: 7
  %loadMem_45fb91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb91 = call %struct.Memory* @routine_subl_MINUS0x1a0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb91)
  store %struct.Memory* %call_45fb91, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fb98	 Bytes: 4
  %loadMem_45fb98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb98 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb98)
  store %struct.Memory* %call_45fb98, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2a0(%rbp,%rax,4)	 RIP: 45fb9c	 Bytes: 7
  %loadMem_45fb9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb9c = call %struct.Memory* @routine_movl__ecx__MINUS0x2a0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb9c)
  store %struct.Memory* %call_45fb9c, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fba3	 Bytes: 4
  %loadMem_45fba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fba3 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fba3)
  store %struct.Memory* %call_45fba3, %struct.Memory** %MEMORY

  ; Code: movl -0x200(%rbp,%rax,4), %ecx	 RIP: 45fba7	 Bytes: 7
  %loadMem_45fba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fba7 = call %struct.Memory* @routine_movl_MINUS0x200__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fba7)
  store %struct.Memory* %call_45fba7, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fbae	 Bytes: 4
  %loadMem_45fbae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbae = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbae)
  store %struct.Memory* %call_45fbae, %struct.Memory** %MEMORY

  ; Code: subl -0x180(%rbp,%rax,4), %ecx	 RIP: 45fbb2	 Bytes: 7
  %loadMem_45fbb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbb2 = call %struct.Memory* @routine_subl_MINUS0x180__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbb2)
  store %struct.Memory* %call_45fbb2, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fbb9	 Bytes: 4
  %loadMem_45fbb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbb9 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbb9)
  store %struct.Memory* %call_45fbb9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x280(%rbp,%rax,4)	 RIP: 45fbbd	 Bytes: 7
  %loadMem_45fbbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbbd = call %struct.Memory* @routine_movl__ecx__MINUS0x280__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbbd)
  store %struct.Memory* %call_45fbbd, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fbc4	 Bytes: 4
  %loadMem_45fbc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbc4 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbc4)
  store %struct.Memory* %call_45fbc4, %struct.Memory** %MEMORY

  ; Code: movl -0x1e0(%rbp,%rax,4), %ecx	 RIP: 45fbc8	 Bytes: 7
  %loadMem_45fbc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbc8 = call %struct.Memory* @routine_movl_MINUS0x1e0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbc8)
  store %struct.Memory* %call_45fbc8, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fbcf	 Bytes: 4
  %loadMem_45fbcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbcf = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbcf)
  store %struct.Memory* %call_45fbcf, %struct.Memory** %MEMORY

  ; Code: subl -0x160(%rbp,%rax,4), %ecx	 RIP: 45fbd3	 Bytes: 7
  %loadMem_45fbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbd3 = call %struct.Memory* @routine_subl_MINUS0x160__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbd3)
  store %struct.Memory* %call_45fbd3, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fbda	 Bytes: 4
  %loadMem_45fbda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbda = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbda)
  store %struct.Memory* %call_45fbda, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x260(%rbp,%rax,4)	 RIP: 45fbde	 Bytes: 7
  %loadMem_45fbde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbde = call %struct.Memory* @routine_movl__ecx__MINUS0x260__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbde)
  store %struct.Memory* %call_45fbde, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fbe5	 Bytes: 4
  %loadMem_45fbe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbe5 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbe5)
  store %struct.Memory* %call_45fbe5, %struct.Memory** %MEMORY

  ; Code: movl -0x1c0(%rbp,%rax,4), %ecx	 RIP: 45fbe9	 Bytes: 7
  %loadMem_45fbe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbe9 = call %struct.Memory* @routine_movl_MINUS0x1c0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbe9)
  store %struct.Memory* %call_45fbe9, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fbf0	 Bytes: 4
  %loadMem_45fbf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbf0 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbf0)
  store %struct.Memory* %call_45fbf0, %struct.Memory** %MEMORY

  ; Code: subl -0x140(%rbp,%rax,4), %ecx	 RIP: 45fbf4	 Bytes: 7
  %loadMem_45fbf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbf4 = call %struct.Memory* @routine_subl_MINUS0x140__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbf4)
  store %struct.Memory* %call_45fbf4, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fbfb	 Bytes: 4
  %loadMem_45fbfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbfb = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbfb)
  store %struct.Memory* %call_45fbfb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x240(%rbp,%rax,4)	 RIP: 45fbff	 Bytes: 7
  %loadMem_45fbff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbff = call %struct.Memory* @routine_movl__ecx__MINUS0x240__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbff)
  store %struct.Memory* %call_45fbff, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fc06	 Bytes: 4
  %loadMem_45fc06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc06 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc06)
  store %struct.Memory* %call_45fc06, %struct.Memory** %MEMORY

  ; Code: movl -0x320(%rbp,%rax,4), %ecx	 RIP: 45fc0a	 Bytes: 7
  %loadMem_45fc0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc0a = call %struct.Memory* @routine_movl_MINUS0x320__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc0a)
  store %struct.Memory* %call_45fc0a, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fc11	 Bytes: 4
  %loadMem_45fc11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc11 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc11)
  store %struct.Memory* %call_45fc11, %struct.Memory** %MEMORY

  ; Code: addl -0x2e0(%rbp,%rax,4), %ecx	 RIP: 45fc15	 Bytes: 7
  %loadMem_45fc15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc15 = call %struct.Memory* @routine_addl_MINUS0x2e0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc15)
  store %struct.Memory* %call_45fc15, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fc1c	 Bytes: 4
  %loadMem_45fc1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc1c = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc1c)
  store %struct.Memory* %call_45fc1c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x120(%rbp,%rax,4)	 RIP: 45fc20	 Bytes: 7
  %loadMem_45fc20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc20 = call %struct.Memory* @routine_movl__ecx__MINUS0x120__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc20)
  store %struct.Memory* %call_45fc20, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fc27	 Bytes: 4
  %loadMem_45fc27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc27 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc27)
  store %struct.Memory* %call_45fc27, %struct.Memory** %MEMORY

  ; Code: movl -0x300(%rbp,%rax,4), %ecx	 RIP: 45fc2b	 Bytes: 7
  %loadMem_45fc2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc2b = call %struct.Memory* @routine_movl_MINUS0x300__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc2b)
  store %struct.Memory* %call_45fc2b, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fc32	 Bytes: 4
  %loadMem_45fc32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc32 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc32)
  store %struct.Memory* %call_45fc32, %struct.Memory** %MEMORY

  ; Code: addl -0x2c0(%rbp,%rax,4), %ecx	 RIP: 45fc36	 Bytes: 7
  %loadMem_45fc36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc36 = call %struct.Memory* @routine_addl_MINUS0x2c0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc36)
  store %struct.Memory* %call_45fc36, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fc3d	 Bytes: 4
  %loadMem_45fc3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc3d = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc3d)
  store %struct.Memory* %call_45fc3d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x100(%rbp,%rax,4)	 RIP: 45fc41	 Bytes: 7
  %loadMem_45fc41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc41 = call %struct.Memory* @routine_movl__ecx__MINUS0x100__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc41)
  store %struct.Memory* %call_45fc41, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fc48	 Bytes: 4
  %loadMem_45fc48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc48 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc48)
  store %struct.Memory* %call_45fc48, %struct.Memory** %MEMORY

  ; Code: movl -0x320(%rbp,%rax,4), %ecx	 RIP: 45fc4c	 Bytes: 7
  %loadMem_45fc4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc4c = call %struct.Memory* @routine_movl_MINUS0x320__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc4c)
  store %struct.Memory* %call_45fc4c, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fc53	 Bytes: 4
  %loadMem_45fc53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc53 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc53)
  store %struct.Memory* %call_45fc53, %struct.Memory** %MEMORY

  ; Code: subl -0x2e0(%rbp,%rax,4), %ecx	 RIP: 45fc57	 Bytes: 7
  %loadMem_45fc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc57 = call %struct.Memory* @routine_subl_MINUS0x2e0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc57)
  store %struct.Memory* %call_45fc57, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fc5e	 Bytes: 4
  %loadMem_45fc5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc5e = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc5e)
  store %struct.Memory* %call_45fc5e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xe0(%rbp,%rax,4)	 RIP: 45fc62	 Bytes: 7
  %loadMem_45fc62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc62 = call %struct.Memory* @routine_movl__ecx__MINUS0xe0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc62)
  store %struct.Memory* %call_45fc62, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fc69	 Bytes: 4
  %loadMem_45fc69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc69 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc69)
  store %struct.Memory* %call_45fc69, %struct.Memory** %MEMORY

  ; Code: movl -0x300(%rbp,%rax,4), %ecx	 RIP: 45fc6d	 Bytes: 7
  %loadMem_45fc6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc6d = call %struct.Memory* @routine_movl_MINUS0x300__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc6d)
  store %struct.Memory* %call_45fc6d, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fc74	 Bytes: 4
  %loadMem_45fc74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc74 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc74)
  store %struct.Memory* %call_45fc74, %struct.Memory** %MEMORY

  ; Code: subl -0x2c0(%rbp,%rax,4), %ecx	 RIP: 45fc78	 Bytes: 7
  %loadMem_45fc78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc78 = call %struct.Memory* @routine_subl_MINUS0x2c0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc78)
  store %struct.Memory* %call_45fc78, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fc7f	 Bytes: 4
  %loadMem_45fc7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc7f = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc7f)
  store %struct.Memory* %call_45fc7f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xc0(%rbp,%rax,4)	 RIP: 45fc83	 Bytes: 7
  %loadMem_45fc83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc83 = call %struct.Memory* @routine_movl__ecx__MINUS0xc0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc83)
  store %struct.Memory* %call_45fc83, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fc8a	 Bytes: 4
  %loadMem_45fc8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc8a = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc8a)
  store %struct.Memory* %call_45fc8a, %struct.Memory** %MEMORY

  ; Code: movl -0x2a0(%rbp,%rax,4), %ecx	 RIP: 45fc8e	 Bytes: 7
  %loadMem_45fc8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc8e = call %struct.Memory* @routine_movl_MINUS0x2a0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc8e)
  store %struct.Memory* %call_45fc8e, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fc95	 Bytes: 4
  %loadMem_45fc95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc95 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc95)
  store %struct.Memory* %call_45fc95, %struct.Memory** %MEMORY

  ; Code: addl -0x260(%rbp,%rax,4), %ecx	 RIP: 45fc99	 Bytes: 7
  %loadMem_45fc99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc99 = call %struct.Memory* @routine_addl_MINUS0x260__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc99)
  store %struct.Memory* %call_45fc99, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fca0	 Bytes: 4
  %loadMem_45fca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fca0 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fca0)
  store %struct.Memory* %call_45fca0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xa0(%rbp,%rax,4)	 RIP: 45fca4	 Bytes: 7
  %loadMem_45fca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fca4 = call %struct.Memory* @routine_movl__ecx__MINUS0xa0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fca4)
  store %struct.Memory* %call_45fca4, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fcab	 Bytes: 4
  %loadMem_45fcab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcab = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcab)
  store %struct.Memory* %call_45fcab, %struct.Memory** %MEMORY

  ; Code: movl -0x280(%rbp,%rax,4), %ecx	 RIP: 45fcaf	 Bytes: 7
  %loadMem_45fcaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcaf = call %struct.Memory* @routine_movl_MINUS0x280__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcaf)
  store %struct.Memory* %call_45fcaf, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fcb6	 Bytes: 4
  %loadMem_45fcb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcb6 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcb6)
  store %struct.Memory* %call_45fcb6, %struct.Memory** %MEMORY

  ; Code: addl -0x240(%rbp,%rax,4), %ecx	 RIP: 45fcba	 Bytes: 7
  %loadMem_45fcba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcba = call %struct.Memory* @routine_addl_MINUS0x240__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcba)
  store %struct.Memory* %call_45fcba, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fcc1	 Bytes: 4
  %loadMem_45fcc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcc1 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcc1)
  store %struct.Memory* %call_45fcc1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x80(%rbp,%rax,4)	 RIP: 45fcc5	 Bytes: 4
  %loadMem_45fcc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcc5 = call %struct.Memory* @routine_movl__ecx__MINUS0x80__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcc5)
  store %struct.Memory* %call_45fcc5, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fcc9	 Bytes: 4
  %loadMem_45fcc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcc9 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcc9)
  store %struct.Memory* %call_45fcc9, %struct.Memory** %MEMORY

  ; Code: movl -0x2a0(%rbp,%rax,4), %ecx	 RIP: 45fccd	 Bytes: 7
  %loadMem_45fccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fccd = call %struct.Memory* @routine_movl_MINUS0x2a0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fccd)
  store %struct.Memory* %call_45fccd, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fcd4	 Bytes: 4
  %loadMem_45fcd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcd4 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcd4)
  store %struct.Memory* %call_45fcd4, %struct.Memory** %MEMORY

  ; Code: subl -0x260(%rbp,%rax,4), %ecx	 RIP: 45fcd8	 Bytes: 7
  %loadMem_45fcd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcd8 = call %struct.Memory* @routine_subl_MINUS0x260__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcd8)
  store %struct.Memory* %call_45fcd8, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fcdf	 Bytes: 4
  %loadMem_45fcdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcdf = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcdf)
  store %struct.Memory* %call_45fcdf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x60(%rbp,%rax,4)	 RIP: 45fce3	 Bytes: 4
  %loadMem_45fce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fce3 = call %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fce3)
  store %struct.Memory* %call_45fce3, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fce7	 Bytes: 4
  %loadMem_45fce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fce7 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fce7)
  store %struct.Memory* %call_45fce7, %struct.Memory** %MEMORY

  ; Code: movl -0x280(%rbp,%rax,4), %ecx	 RIP: 45fceb	 Bytes: 7
  %loadMem_45fceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fceb = call %struct.Memory* @routine_movl_MINUS0x280__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fceb)
  store %struct.Memory* %call_45fceb, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fcf2	 Bytes: 4
  %loadMem_45fcf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcf2 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcf2)
  store %struct.Memory* %call_45fcf2, %struct.Memory** %MEMORY

  ; Code: subl -0x240(%rbp,%rax,4), %ecx	 RIP: 45fcf6	 Bytes: 7
  %loadMem_45fcf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcf6 = call %struct.Memory* @routine_subl_MINUS0x240__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcf6)
  store %struct.Memory* %call_45fcf6, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fcfd	 Bytes: 4
  %loadMem_45fcfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcfd = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcfd)
  store %struct.Memory* %call_45fcfd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x40(%rbp,%rax,4)	 RIP: 45fd01	 Bytes: 4
  %loadMem_45fd01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd01 = call %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd01)
  store %struct.Memory* %call_45fd01, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fd05	 Bytes: 4
  %loadMem_45fd05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd05 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd05)
  store %struct.Memory* %call_45fd05, %struct.Memory** %MEMORY

  ; Code: movl -0x120(%rbp,%rax,4), %ecx	 RIP: 45fd09	 Bytes: 7
  %loadMem_45fd09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd09 = call %struct.Memory* @routine_movl_MINUS0x120__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd09)
  store %struct.Memory* %call_45fd09, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fd10	 Bytes: 4
  %loadMem_45fd10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd10 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd10)
  store %struct.Memory* %call_45fd10, %struct.Memory** %MEMORY

  ; Code: addl -0x100(%rbp,%rax,4), %ecx	 RIP: 45fd14	 Bytes: 7
  %loadMem_45fd14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd14 = call %struct.Memory* @routine_addl_MINUS0x100__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd14)
  store %struct.Memory* %call_45fd14, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fd1b	 Bytes: 4
  %loadMem_45fd1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd1b = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd1b)
  store %struct.Memory* %call_45fd1b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x220(%rbp,%rax,4)	 RIP: 45fd1f	 Bytes: 7
  %loadMem_45fd1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd1f = call %struct.Memory* @routine_movl__ecx__MINUS0x220__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd1f)
  store %struct.Memory* %call_45fd1f, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fd26	 Bytes: 4
  %loadMem_45fd26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd26 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd26)
  store %struct.Memory* %call_45fd26, %struct.Memory** %MEMORY

  ; Code: movl -0x120(%rbp,%rax,4), %ecx	 RIP: 45fd2a	 Bytes: 7
  %loadMem_45fd2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd2a = call %struct.Memory* @routine_movl_MINUS0x120__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd2a)
  store %struct.Memory* %call_45fd2a, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fd31	 Bytes: 4
  %loadMem_45fd31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd31 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd31)
  store %struct.Memory* %call_45fd31, %struct.Memory** %MEMORY

  ; Code: subl -0x100(%rbp,%rax,4), %ecx	 RIP: 45fd35	 Bytes: 7
  %loadMem_45fd35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd35 = call %struct.Memory* @routine_subl_MINUS0x100__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd35)
  store %struct.Memory* %call_45fd35, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fd3c	 Bytes: 4
  %loadMem_45fd3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd3c = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd3c)
  store %struct.Memory* %call_45fd3c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x200(%rbp,%rax,4)	 RIP: 45fd40	 Bytes: 7
  %loadMem_45fd40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd40 = call %struct.Memory* @routine_movl__ecx__MINUS0x200__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd40)
  store %struct.Memory* %call_45fd40, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fd47	 Bytes: 4
  %loadMem_45fd47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd47 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd47)
  store %struct.Memory* %call_45fd47, %struct.Memory** %MEMORY

  ; Code: movl -0xe0(%rbp,%rax,4), %ecx	 RIP: 45fd4b	 Bytes: 7
  %loadMem_45fd4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd4b = call %struct.Memory* @routine_movl_MINUS0xe0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd4b)
  store %struct.Memory* %call_45fd4b, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fd52	 Bytes: 4
  %loadMem_45fd52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd52 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd52)
  store %struct.Memory* %call_45fd52, %struct.Memory** %MEMORY

  ; Code: addl -0xc0(%rbp,%rax,4), %ecx	 RIP: 45fd56	 Bytes: 7
  %loadMem_45fd56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd56 = call %struct.Memory* @routine_addl_MINUS0xc0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd56)
  store %struct.Memory* %call_45fd56, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fd5d	 Bytes: 4
  %loadMem_45fd5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd5d = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd5d)
  store %struct.Memory* %call_45fd5d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1e0(%rbp,%rax,4)	 RIP: 45fd61	 Bytes: 7
  %loadMem_45fd61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd61 = call %struct.Memory* @routine_movl__ecx__MINUS0x1e0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd61)
  store %struct.Memory* %call_45fd61, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fd68	 Bytes: 4
  %loadMem_45fd68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd68 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd68)
  store %struct.Memory* %call_45fd68, %struct.Memory** %MEMORY

  ; Code: movl -0xe0(%rbp,%rax,4), %ecx	 RIP: 45fd6c	 Bytes: 7
  %loadMem_45fd6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd6c = call %struct.Memory* @routine_movl_MINUS0xe0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd6c)
  store %struct.Memory* %call_45fd6c, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fd73	 Bytes: 4
  %loadMem_45fd73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd73 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd73)
  store %struct.Memory* %call_45fd73, %struct.Memory** %MEMORY

  ; Code: subl -0xc0(%rbp,%rax,4), %ecx	 RIP: 45fd77	 Bytes: 7
  %loadMem_45fd77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd77 = call %struct.Memory* @routine_subl_MINUS0xc0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd77)
  store %struct.Memory* %call_45fd77, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fd7e	 Bytes: 4
  %loadMem_45fd7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd7e = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd7e)
  store %struct.Memory* %call_45fd7e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c0(%rbp,%rax,4)	 RIP: 45fd82	 Bytes: 7
  %loadMem_45fd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd82 = call %struct.Memory* @routine_movl__ecx__MINUS0x1c0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd82)
  store %struct.Memory* %call_45fd82, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fd89	 Bytes: 4
  %loadMem_45fd89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd89 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd89)
  store %struct.Memory* %call_45fd89, %struct.Memory** %MEMORY

  ; Code: movl -0xa0(%rbp,%rax,4), %ecx	 RIP: 45fd8d	 Bytes: 7
  %loadMem_45fd8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd8d = call %struct.Memory* @routine_movl_MINUS0xa0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd8d)
  store %struct.Memory* %call_45fd8d, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fd94	 Bytes: 4
  %loadMem_45fd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd94 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd94)
  store %struct.Memory* %call_45fd94, %struct.Memory** %MEMORY

  ; Code: addl -0x80(%rbp,%rax,4), %ecx	 RIP: 45fd98	 Bytes: 4
  %loadMem_45fd98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd98 = call %struct.Memory* @routine_addl_MINUS0x80__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd98)
  store %struct.Memory* %call_45fd98, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fd9c	 Bytes: 4
  %loadMem_45fd9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd9c = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd9c)
  store %struct.Memory* %call_45fd9c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1a0(%rbp,%rax,4)	 RIP: 45fda0	 Bytes: 7
  %loadMem_45fda0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fda0 = call %struct.Memory* @routine_movl__ecx__MINUS0x1a0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fda0)
  store %struct.Memory* %call_45fda0, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fda7	 Bytes: 4
  %loadMem_45fda7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fda7 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fda7)
  store %struct.Memory* %call_45fda7, %struct.Memory** %MEMORY

  ; Code: movl -0xa0(%rbp,%rax,4), %ecx	 RIP: 45fdab	 Bytes: 7
  %loadMem_45fdab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdab = call %struct.Memory* @routine_movl_MINUS0xa0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdab)
  store %struct.Memory* %call_45fdab, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fdb2	 Bytes: 4
  %loadMem_45fdb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdb2 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdb2)
  store %struct.Memory* %call_45fdb2, %struct.Memory** %MEMORY

  ; Code: subl -0x80(%rbp,%rax,4), %ecx	 RIP: 45fdb6	 Bytes: 4
  %loadMem_45fdb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdb6 = call %struct.Memory* @routine_subl_MINUS0x80__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdb6)
  store %struct.Memory* %call_45fdb6, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fdba	 Bytes: 4
  %loadMem_45fdba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdba = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdba)
  store %struct.Memory* %call_45fdba, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x180(%rbp,%rax,4)	 RIP: 45fdbe	 Bytes: 7
  %loadMem_45fdbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdbe = call %struct.Memory* @routine_movl__ecx__MINUS0x180__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdbe)
  store %struct.Memory* %call_45fdbe, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fdc5	 Bytes: 4
  %loadMem_45fdc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdc5 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdc5)
  store %struct.Memory* %call_45fdc5, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp,%rax,4), %ecx	 RIP: 45fdc9	 Bytes: 4
  %loadMem_45fdc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdc9 = call %struct.Memory* @routine_movl_MINUS0x60__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdc9)
  store %struct.Memory* %call_45fdc9, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fdcd	 Bytes: 4
  %loadMem_45fdcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdcd = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdcd)
  store %struct.Memory* %call_45fdcd, %struct.Memory** %MEMORY

  ; Code: addl -0x40(%rbp,%rax,4), %ecx	 RIP: 45fdd1	 Bytes: 4
  %loadMem_45fdd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdd1 = call %struct.Memory* @routine_addl_MINUS0x40__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdd1)
  store %struct.Memory* %call_45fdd1, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fdd5	 Bytes: 4
  %loadMem_45fdd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdd5 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdd5)
  store %struct.Memory* %call_45fdd5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x160(%rbp,%rax,4)	 RIP: 45fdd9	 Bytes: 7
  %loadMem_45fdd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdd9 = call %struct.Memory* @routine_movl__ecx__MINUS0x160__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdd9)
  store %struct.Memory* %call_45fdd9, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fde0	 Bytes: 4
  %loadMem_45fde0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fde0 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fde0)
  store %struct.Memory* %call_45fde0, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp,%rax,4), %ecx	 RIP: 45fde4	 Bytes: 4
  %loadMem_45fde4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fde4 = call %struct.Memory* @routine_movl_MINUS0x60__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fde4)
  store %struct.Memory* %call_45fde4, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fde8	 Bytes: 4
  %loadMem_45fde8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fde8 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fde8)
  store %struct.Memory* %call_45fde8, %struct.Memory** %MEMORY

  ; Code: subl -0x40(%rbp,%rax,4), %ecx	 RIP: 45fdec	 Bytes: 4
  %loadMem_45fdec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdec = call %struct.Memory* @routine_subl_MINUS0x40__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdec)
  store %struct.Memory* %call_45fdec, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 45fdf0	 Bytes: 4
  %loadMem_45fdf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdf0 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdf0)
  store %struct.Memory* %call_45fdf0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x140(%rbp,%rax,4)	 RIP: 45fdf4	 Bytes: 7
  %loadMem_45fdf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdf4 = call %struct.Memory* @routine_movl__ecx__MINUS0x140__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdf4)
  store %struct.Memory* %call_45fdf4, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 45fdfb	 Bytes: 3
  %loadMem_45fdfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdfb = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdfb)
  store %struct.Memory* %call_45fdfb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45fdfe	 Bytes: 3
  %loadMem_45fdfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdfe = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdfe)
  store %struct.Memory* %call_45fdfe, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 45fe01	 Bytes: 3
  %loadMem_45fe01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe01 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe01)
  store %struct.Memory* %call_45fe01, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45faf4	 RIP: 45fe04	 Bytes: 5
  %loadMem_45fe04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe04 = call %struct.Memory* @routine_jmpq_.L_45faf4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe04, i64 -784, i64 5)
  store %struct.Memory* %call_45fe04, %struct.Memory** %MEMORY

  br label %block_.L_45faf4

  ; Code: .L_45fe09:	 RIP: 45fe09	 Bytes: 0
block_.L_45fe09:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 45fe09	 Bytes: 7
  %loadMem_45fe09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe09 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe09)
  store %struct.Memory* %call_45fe09, %struct.Memory** %MEMORY

  ; Code: .L_45fe10:	 RIP: 45fe10	 Bytes: 0
  br label %block_.L_45fe10
block_.L_45fe10:

  ; Code: cmpl $0x8, -0x14(%rbp)	 RIP: 45fe10	 Bytes: 4
  %loadMem_45fe10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe10 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe10)
  store %struct.Memory* %call_45fe10, %struct.Memory** %MEMORY

  ; Code: jge .L_45febd	 RIP: 45fe14	 Bytes: 6
  %loadMem_45fe14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe14 = call %struct.Memory* @routine_jge_.L_45febd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe14, i8* %BRANCH_TAKEN, i64 169, i64 6, i64 6)
  store %struct.Memory* %call_45fe14, %struct.Memory** %MEMORY

  %loadBr_45fe14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fe14 = icmp eq i8 %loadBr_45fe14, 1
  br i1 %cmpBr_45fe14, label %block_.L_45febd, label %block_45fe1a

block_45fe1a:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 45fe1a	 Bytes: 7
  %loadMem_45fe1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe1a = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe1a)
  store %struct.Memory* %call_45fe1a, %struct.Memory** %MEMORY

  ; Code: .L_45fe21:	 RIP: 45fe21	 Bytes: 0
  br label %block_.L_45fe21
block_.L_45fe21:

  ; Code: cmpl $0x8, -0x10(%rbp)	 RIP: 45fe21	 Bytes: 4
  %loadMem_45fe21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe21 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe21)
  store %struct.Memory* %call_45fe21, %struct.Memory** %MEMORY

  ; Code: jge .L_45feaa	 RIP: 45fe25	 Bytes: 6
  %loadMem_45fe25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe25 = call %struct.Memory* @routine_jge_.L_45feaa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe25, i8* %BRANCH_TAKEN, i64 133, i64 6, i64 6)
  store %struct.Memory* %call_45fe25, %struct.Memory** %MEMORY

  %loadBr_45fe25 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fe25 = icmp eq i8 %loadBr_45fe25, 1
  br i1 %cmpBr_45fe25, label %block_.L_45feaa, label %block_45fe2b

block_45fe2b:
  ; Code: leaq -0x220(%rbp), %rax	 RIP: 45fe2b	 Bytes: 7
  %loadMem_45fe2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe2b = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe2b)
  store %struct.Memory* %call_45fe2b, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 45fe32	 Bytes: 4
  %loadMem_45fe32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe32 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe32)
  store %struct.Memory* %call_45fe32, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rcx	 RIP: 45fe36	 Bytes: 4
  %loadMem_45fe36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe36 = call %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe36)
  store %struct.Memory* %call_45fe36, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 45fe3a	 Bytes: 3
  %loadMem_45fe3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe3a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe3a)
  store %struct.Memory* %call_45fe3a, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 45fe3d	 Bytes: 4
  %loadMem_45fe3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe3d = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe3d)
  store %struct.Memory* %call_45fe3d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rcx,4)	 RIP: 45fe41	 Bytes: 4
  %loadMem_45fe41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe41 = call %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe41)
  store %struct.Memory* %call_45fe41, %struct.Memory** %MEMORY

  ; Code: jge .L_45fe71	 RIP: 45fe45	 Bytes: 6
  %loadMem_45fe45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe45 = call %struct.Memory* @routine_jge_.L_45fe71(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe45, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_45fe45, %struct.Memory** %MEMORY

  %loadBr_45fe45 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fe45 = icmp eq i8 %loadBr_45fe45, 1
  br i1 %cmpBr_45fe45, label %block_.L_45fe71, label %block_45fe4b

block_45fe4b:
  ; Code: xorl %eax, %eax	 RIP: 45fe4b	 Bytes: 2
  %loadMem_45fe4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe4b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe4b)
  store %struct.Memory* %call_45fe4b, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rcx	 RIP: 45fe4d	 Bytes: 7
  %loadMem_45fe4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe4d = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe4d)
  store %struct.Memory* %call_45fe4d, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 45fe54	 Bytes: 4
  %loadMem_45fe54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe54 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe54)
  store %struct.Memory* %call_45fe54, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 45fe58	 Bytes: 4
  %loadMem_45fe58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe58 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe58)
  store %struct.Memory* %call_45fe58, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 45fe5c	 Bytes: 3
  %loadMem_45fe5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe5c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe5c)
  store %struct.Memory* %call_45fe5c, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 45fe5f	 Bytes: 4
  %loadMem_45fe5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe5f = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe5f)
  store %struct.Memory* %call_45fe5f, %struct.Memory** %MEMORY

  ; Code: subl (%rcx,%rdx,4), %eax	 RIP: 45fe63	 Bytes: 3
  %loadMem_45fe63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe63 = call %struct.Memory* @routine_subl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe63)
  store %struct.Memory* %call_45fe63, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x324(%rbp)	 RIP: 45fe66	 Bytes: 6
  %loadMem_45fe66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe66 = call %struct.Memory* @routine_movl__eax__MINUS0x324__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe66)
  store %struct.Memory* %call_45fe66, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45fe90	 RIP: 45fe6c	 Bytes: 5
  %loadMem_45fe6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe6c = call %struct.Memory* @routine_jmpq_.L_45fe90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe6c, i64 36, i64 5)
  store %struct.Memory* %call_45fe6c, %struct.Memory** %MEMORY

  br label %block_.L_45fe90

  ; Code: .L_45fe71:	 RIP: 45fe71	 Bytes: 0
block_.L_45fe71:

  ; Code: leaq -0x220(%rbp), %rax	 RIP: 45fe71	 Bytes: 7
  %loadMem_45fe71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe71 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe71)
  store %struct.Memory* %call_45fe71, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 45fe78	 Bytes: 4
  %loadMem_45fe78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe78 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe78)
  store %struct.Memory* %call_45fe78, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rcx	 RIP: 45fe7c	 Bytes: 4
  %loadMem_45fe7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe7c = call %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe7c)
  store %struct.Memory* %call_45fe7c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 45fe80	 Bytes: 3
  %loadMem_45fe80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe80 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe80)
  store %struct.Memory* %call_45fe80, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 45fe83	 Bytes: 4
  %loadMem_45fe83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe83 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe83)
  store %struct.Memory* %call_45fe83, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 45fe87	 Bytes: 3
  %loadMem_45fe87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe87 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe87)
  store %struct.Memory* %call_45fe87, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x324(%rbp)	 RIP: 45fe8a	 Bytes: 6
  %loadMem_45fe8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe8a = call %struct.Memory* @routine_movl__edx__MINUS0x324__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe8a)
  store %struct.Memory* %call_45fe8a, %struct.Memory** %MEMORY

  ; Code: .L_45fe90:	 RIP: 45fe90	 Bytes: 0
  br label %block_.L_45fe90
block_.L_45fe90:

  ; Code: movl -0x324(%rbp), %eax	 RIP: 45fe90	 Bytes: 6
  %loadMem_45fe90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe90 = call %struct.Memory* @routine_movl_MINUS0x324__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe90)
  store %struct.Memory* %call_45fe90, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %eax	 RIP: 45fe96	 Bytes: 3
  %loadMem_45fe96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe96 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe96)
  store %struct.Memory* %call_45fe96, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 45fe99	 Bytes: 3
  %loadMem_45fe99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe99 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe99)
  store %struct.Memory* %call_45fe99, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 45fe9c	 Bytes: 3
  %loadMem_45fe9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe9c = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe9c)
  store %struct.Memory* %call_45fe9c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45fe9f	 Bytes: 3
  %loadMem_45fe9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe9f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe9f)
  store %struct.Memory* %call_45fe9f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 45fea2	 Bytes: 3
  %loadMem_45fea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fea2 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fea2)
  store %struct.Memory* %call_45fea2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45fe21	 RIP: 45fea5	 Bytes: 5
  %loadMem_45fea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fea5 = call %struct.Memory* @routine_jmpq_.L_45fe21(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fea5, i64 -132, i64 5)
  store %struct.Memory* %call_45fea5, %struct.Memory** %MEMORY

  br label %block_.L_45fe21

  ; Code: .L_45feaa:	 RIP: 45feaa	 Bytes: 0
block_.L_45feaa:

  ; Code: jmpq .L_45feaf	 RIP: 45feaa	 Bytes: 5
  %loadMem_45feaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45feaa = call %struct.Memory* @routine_jmpq_.L_45feaf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45feaa, i64 5, i64 5)
  store %struct.Memory* %call_45feaa, %struct.Memory** %MEMORY

  br label %block_.L_45feaf

  ; Code: .L_45feaf:	 RIP: 45feaf	 Bytes: 0
block_.L_45feaf:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 45feaf	 Bytes: 3
  %loadMem_45feaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45feaf = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45feaf)
  store %struct.Memory* %call_45feaf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45feb2	 Bytes: 3
  %loadMem_45feb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45feb2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45feb2)
  store %struct.Memory* %call_45feb2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 45feb5	 Bytes: 3
  %loadMem_45feb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45feb5 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45feb5)
  store %struct.Memory* %call_45feb5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45fe10	 RIP: 45feb8	 Bytes: 5
  %loadMem_45feb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45feb8 = call %struct.Memory* @routine_jmpq_.L_45fe10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45feb8, i64 -168, i64 5)
  store %struct.Memory* %call_45feb8, %struct.Memory** %MEMORY

  br label %block_.L_45fe10

  ; Code: .L_45febd:	 RIP: 45febd	 Bytes: 0
block_.L_45febd:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 45febd	 Bytes: 3
  %loadMem_45febd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45febd = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45febd)
  store %struct.Memory* %call_45febd, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 45fec0	 Bytes: 3
  %loadMem_45fec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fec0 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fec0)
  store %struct.Memory* %call_45fec0, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %eax	 RIP: 45fec3	 Bytes: 3
  %loadMem_45fec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fec3 = call %struct.Memory* @routine_sarl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fec3)
  store %struct.Memory* %call_45fec3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 45fec6	 Bytes: 3
  %loadMem_45fec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fec6 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fec6)
  store %struct.Memory* %call_45fec6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45ff0f	 RIP: 45fec9	 Bytes: 5
  %loadMem_45fec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fec9 = call %struct.Memory* @routine_jmpq_.L_45ff0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fec9, i64 70, i64 5)
  store %struct.Memory* %call_45fec9, %struct.Memory** %MEMORY

  br label %block_.L_45ff0f

  ; Code: .L_45fece:	 RIP: 45fece	 Bytes: 0
block_.L_45fece:

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 45fece	 Bytes: 7
  %loadMem_45fece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fece = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fece)
  store %struct.Memory* %call_45fece, %struct.Memory** %MEMORY

  ; Code: .L_45fed5:	 RIP: 45fed5	 Bytes: 0
  br label %block_.L_45fed5
block_.L_45fed5:

  ; Code: cmpl $0x40, -0x10(%rbp)	 RIP: 45fed5	 Bytes: 4
  %loadMem_45fed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fed5 = call %struct.Memory* @routine_cmpl__0x40__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fed5)
  store %struct.Memory* %call_45fed5, %struct.Memory** %MEMORY

  ; Code: jge .L_45ff0a	 RIP: 45fed9	 Bytes: 6
  %loadMem_45fed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fed9 = call %struct.Memory* @routine_jge_.L_45ff0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fed9, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_45fed9, %struct.Memory** %MEMORY

  %loadBr_45fed9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fed9 = icmp eq i8 %loadBr_45fed9, 1
  br i1 %cmpBr_45fed9, label %block_.L_45ff0a, label %block_45fedf

block_45fedf:
  ; Code: movq 0x726840, %rax	 RIP: 45fedf	 Bytes: 8
  %loadMem_45fedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fedf = call %struct.Memory* @routine_movq_0x726840___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fedf)
  store %struct.Memory* %call_45fedf, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 45fee7	 Bytes: 4
  %loadMem_45fee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fee7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fee7)
  store %struct.Memory* %call_45fee7, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 45feeb	 Bytes: 4
  %loadMem_45feeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45feeb = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45feeb)
  store %struct.Memory* %call_45feeb, %struct.Memory** %MEMORY

  ; Code: movslq (%rcx,%rdx,4), %rcx	 RIP: 45feef	 Bytes: 4
  %loadMem_45feef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45feef = call %struct.Memory* @routine_movslq___rcx__rdx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45feef)
  store %struct.Memory* %call_45feef, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 45fef3	 Bytes: 3
  %loadMem_45fef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fef3 = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fef3)
  store %struct.Memory* %call_45fef3, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 45fef6	 Bytes: 3
  %loadMem_45fef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fef6 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fef6)
  store %struct.Memory* %call_45fef6, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x18(%rbp)	 RIP: 45fef9	 Bytes: 3
  %loadMem_45fef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fef9 = call %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fef9)
  store %struct.Memory* %call_45fef9, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 45fefc	 Bytes: 3
  %loadMem_45fefc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fefc = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fefc)
  store %struct.Memory* %call_45fefc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45feff	 Bytes: 3
  %loadMem_45feff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45feff = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45feff)
  store %struct.Memory* %call_45feff, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 45ff02	 Bytes: 3
  %loadMem_45ff02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff02 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff02)
  store %struct.Memory* %call_45ff02, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45fed5	 RIP: 45ff05	 Bytes: 5
  %loadMem_45ff05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff05 = call %struct.Memory* @routine_jmpq_.L_45fed5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff05, i64 -48, i64 5)
  store %struct.Memory* %call_45ff05, %struct.Memory** %MEMORY

  br label %block_.L_45fed5

  ; Code: .L_45ff0a:	 RIP: 45ff0a	 Bytes: 0
block_.L_45ff0a:

  ; Code: jmpq .L_45ff0f	 RIP: 45ff0a	 Bytes: 5
  %loadMem_45ff0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff0a = call %struct.Memory* @routine_jmpq_.L_45ff0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff0a, i64 5, i64 5)
  store %struct.Memory* %call_45ff0a, %struct.Memory** %MEMORY

  br label %block_.L_45ff0f

  ; Code: .L_45ff0f:	 RIP: 45ff0f	 Bytes: 0
block_.L_45ff0f:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 45ff0f	 Bytes: 3
  %loadMem_45ff0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff0f = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff0f)
  store %struct.Memory* %call_45ff0f, %struct.Memory** %MEMORY

  ; Code: addq $0x2b0, %rsp	 RIP: 45ff12	 Bytes: 7
  %loadMem_45ff12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff12 = call %struct.Memory* @routine_addq__0x2b0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff12)
  store %struct.Memory* %call_45ff12, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 45ff19	 Bytes: 1
  %loadMem_45ff19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff19 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff19)
  store %struct.Memory* %call_45ff19, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 45ff1a	 Bytes: 1
  %loadMem_45ff1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff1a = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff1a)
  store %struct.Memory* %call_45ff1a, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_45ff1a
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

define %struct.Memory* @routine_subq__0x2b0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 688)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_je_.L_45fece(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
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

define %struct.Memory* @routine_jge_.L_45faed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x220__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x120__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_shll__0x3___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 3)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__esi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rdx__rdi_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_shll__0x3___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 3)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_addl__0x4___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 4)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movslq__r8d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_addl___rdx__rdi_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movl__esi____rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_addl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_addl__0x5___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 5)
  ret %struct.Memory* %14
}














define %struct.Memory* @routine_movl__esi__0x4__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_addl__0x2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 2)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_addl__0x6___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 6)
  ret %struct.Memory* %14
}














define %struct.Memory* @routine_movl__esi__0x8__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_addl__0x3___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 3)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_addl__0x7___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 7)
  ret %struct.Memory* %14
}














define %struct.Memory* @routine_movl__esi__0xc__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 12
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_subl___rdx__rdi_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %19)
  ret %struct.Memory* %22
}










define %struct.Memory* @routine_movl__esi__0x10__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 16
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


































define %struct.Memory* @routine_movl__esi__0x14__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 20
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


































define %struct.Memory* @routine_movl__esi__0x18__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 24
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


































define %struct.Memory* @routine_movl__esi__0x1c__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 28
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl___rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}










define %struct.Memory* @routine_addl_0x8__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
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














define %struct.Memory* @routine_movl_0x4__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addl_0xc__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






























define %struct.Memory* @routine_subl_0x8__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






























define %struct.Memory* @routine_subl_0xc__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




















define %struct.Memory* @routine_movl_0x10__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addl_0x18__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




















define %struct.Memory* @routine_movl_0x14__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addl_0x1c__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






























define %struct.Memory* @routine_subl_0x18__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






























define %struct.Memory* @routine_subl_0x1c__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






























define %struct.Memory* @routine_addl_0x4__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






























define %struct.Memory* @routine_subl_0x4__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




















define %struct.Memory* @routine_movl_0x8__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






































































define %struct.Memory* @routine_addl_0x14__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






























define %struct.Memory* @routine_subl_0x14__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




















define %struct.Memory* @routine_movl_0x18__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_subl_0x1c__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__esi__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 28
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_45f5da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_cmpl__0x8__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_45fe09(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x220__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -544
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x1a0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -416
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x320__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -800
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl_MINUS0x200__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -512
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x180__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -384
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x300__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -768
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl_MINUS0x1e0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -480
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x160__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -352
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x2e0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -736
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl_MINUS0x1c0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -448
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x140__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -320
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x2c0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -704
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_subl_MINUS0x1a0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -416
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x2a0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -672
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_subl_MINUS0x180__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -384
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x280__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -640
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_subl_MINUS0x160__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -352
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x260__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -608
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_subl_MINUS0x140__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -320
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x240__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -576
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl_MINUS0x320__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -800
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x2e0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -736
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x120__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -288
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl_MINUS0x300__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -768
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x2c0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -704
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x100__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -256
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_subl_MINUS0x2e0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -736
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0xe0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -224
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_subl_MINUS0x2c0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -704
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0xc0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -192
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl_MINUS0x2a0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -672
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x260__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -608
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0xa0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -160
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl_MINUS0x280__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -640
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x240__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -576
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x80__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -128
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_subl_MINUS0x260__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -608
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -96
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_subl_MINUS0x240__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -576
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -64
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl_MINUS0x120__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -288
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x100__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -256
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x220__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -544
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_subl_MINUS0x100__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -256
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x200__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -512
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl_MINUS0xe0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -224
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0xc0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -192
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x1e0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -480
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_subl_MINUS0xc0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -192
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x1c0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -448
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl_MINUS0xa0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -160
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x80__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -128
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x1a0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -416
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_subl_MINUS0x80__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -128
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x180__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -384
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl_MINUS0x60__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -96
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x40__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -64
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x160__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -352
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_subl_MINUS0x40__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -64
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__ecx__MINUS0x140__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -320
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
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




define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_45faf4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_45febd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_45feaa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_45fe71(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x220__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl___rcx__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__eax__MINUS0x324__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 804
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_45fe90(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movl__edx__MINUS0x324__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 804
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x324__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 804
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x18__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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








define %struct.Memory* @routine_jmpq_.L_45fe21(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45feaf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_45fe10(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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




define %struct.Memory* @routine_jmpq_.L_45ff0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x40__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 64)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_45ff0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x726840___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x726840_type* @G_0x726840 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movslq___rcx__rdx_4____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_45fed5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_addq__0x2b0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 688)
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

