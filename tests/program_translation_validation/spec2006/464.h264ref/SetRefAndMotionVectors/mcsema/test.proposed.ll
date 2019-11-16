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
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cea08_type = type <{ [8 x i8] }>
@G_0x6cea08= global %G_0x6cea08_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722cb8_type = type <{ [8 x i8] }>
@G_0x722cb8= global %G_0x722cb8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @SetRefAndMotionVectors(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .SetRefAndMotionVectors:	 RIP: 48fb00	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 48fb00	 Bytes: 1
  %loadMem_48fb00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb00 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb00)
  store %struct.Memory* %call_48fb00, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 48fb01	 Bytes: 3
  %loadMem_48fb01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb01 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb01)
  store %struct.Memory* %call_48fb01, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 48fb04	 Bytes: 3
  %loadMem_48fb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb04 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb04)
  store %struct.Memory* %call_48fb04, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 48fb07	 Bytes: 3
  %loadMem_48fb07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb07 = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb07)
  store %struct.Memory* %call_48fb07, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xc(%rbp)	 RIP: 48fb0a	 Bytes: 3
  %loadMem_48fb0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb0a = call %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb0a)
  store %struct.Memory* %call_48fb0a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x10(%rbp)	 RIP: 48fb0d	 Bytes: 3
  %loadMem_48fb0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb0d = call %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb0d)
  store %struct.Memory* %call_48fb0d, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x14(%rbp)	 RIP: 48fb10	 Bytes: 4
  %loadMem_48fb10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb10 = call %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb10)
  store %struct.Memory* %call_48fb10, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 48fb14	 Bytes: 7
  %loadMem_48fb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb14 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb14)
  store %struct.Memory* %call_48fb14, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48fb1b	 Bytes: 8
  %loadMem_48fb1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb1b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb1b)
  store %struct.Memory* %call_48fb1b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rax)	 RIP: 48fb23	 Bytes: 4
  %loadMem_48fb23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb23 = call %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb23)
  store %struct.Memory* %call_48fb23, %struct.Memory** %MEMORY

  ; Code: sete %r9b	 RIP: 48fb27	 Bytes: 4
  %loadMem_48fb27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb27 = call %struct.Memory* @routine_sete__r9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb27)
  store %struct.Memory* %call_48fb27, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r9b	 RIP: 48fb2b	 Bytes: 4
  %loadMem_48fb2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb2b = call %struct.Memory* @routine_andb__0x1___r9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb2b)
  store %struct.Memory* %call_48fb2b, %struct.Memory** %MEMORY

  ; Code: movzbl %r9b, %ecx	 RIP: 48fb2f	 Bytes: 4
  %loadMem_48fb2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb2f = call %struct.Memory* @routine_movzbl__r9b___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb2f)
  store %struct.Memory* %call_48fb2f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 48fb33	 Bytes: 3
  %loadMem_48fb33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb33 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb33)
  store %struct.Memory* %call_48fb33, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x8(%rbp)	 RIP: 48fb36	 Bytes: 4
  %loadMem_48fb36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb36 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb36)
  store %struct.Memory* %call_48fb36, %struct.Memory** %MEMORY

  ; Code: je .L_48fb54	 RIP: 48fb3a	 Bytes: 6
  %loadMem_48fb3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb3a = call %struct.Memory* @routine_je_.L_48fb54(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb3a, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_48fb3a, %struct.Memory** %MEMORY

  %loadBr_48fb3a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48fb3a = icmp eq i8 %loadBr_48fb3a, 1
  br i1 %cmpBr_48fb3a, label %block_.L_48fb54, label %block_48fb40

block_48fb40:
  ; Code: cmpl $0x2, -0x8(%rbp)	 RIP: 48fb40	 Bytes: 4
  %loadMem_48fb40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb40 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb40)
  store %struct.Memory* %call_48fb40, %struct.Memory** %MEMORY

  ; Code: je .L_48fb54	 RIP: 48fb44	 Bytes: 6
  %loadMem_48fb44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb44 = call %struct.Memory* @routine_je_.L_48fb54(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb44, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_48fb44, %struct.Memory** %MEMORY

  %loadBr_48fb44 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48fb44 = icmp eq i8 %loadBr_48fb44, 1
  br i1 %cmpBr_48fb44, label %block_.L_48fb54, label %block_48fb4a

block_48fb4a:
  ; Code: cmpl $0x3, -0x8(%rbp)	 RIP: 48fb4a	 Bytes: 4
  %loadMem_48fb4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb4a = call %struct.Memory* @routine_cmpl__0x3__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb4a)
  store %struct.Memory* %call_48fb4a, %struct.Memory** %MEMORY

  ; Code: jne .L_48fb5f	 RIP: 48fb4e	 Bytes: 6
  %loadMem_48fb4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb4e = call %struct.Memory* @routine_jne_.L_48fb5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb4e, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_48fb4e, %struct.Memory** %MEMORY

  %loadBr_48fb4e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48fb4e = icmp eq i8 %loadBr_48fb4e, 1
  br i1 %cmpBr_48fb4e, label %block_.L_48fb5f, label %block_.L_48fb54

  ; Code: .L_48fb54:	 RIP: 48fb54	 Bytes: 0
block_.L_48fb54:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 48fb54	 Bytes: 3
  %loadMem_48fb54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb54 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb54)
  store %struct.Memory* %call_48fb54, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 48fb57	 Bytes: 3
  %loadMem_48fb57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb57 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb57)
  store %struct.Memory* %call_48fb57, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48fb6c	 RIP: 48fb5a	 Bytes: 5
  %loadMem_48fb5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb5a = call %struct.Memory* @routine_jmpq_.L_48fb6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb5a, i64 18, i64 5)
  store %struct.Memory* %call_48fb5a, %struct.Memory** %MEMORY

  br label %block_.L_48fb6c

  ; Code: .L_48fb5f:	 RIP: 48fb5f	 Bytes: 0
block_.L_48fb5f:

  ; Code: movl $0x4, %eax	 RIP: 48fb5f	 Bytes: 5
  %loadMem_48fb5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb5f = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb5f)
  store %struct.Memory* %call_48fb5f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 48fb64	 Bytes: 3
  %loadMem_48fb64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb64 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb64)
  store %struct.Memory* %call_48fb64, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48fb6c	 RIP: 48fb67	 Bytes: 5
  %loadMem_48fb67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb67 = call %struct.Memory* @routine_jmpq_.L_48fb6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb67, i64 5, i64 5)
  store %struct.Memory* %call_48fb67, %struct.Memory** %MEMORY

  br label %block_.L_48fb6c

  ; Code: .L_48fb6c:	 RIP: 48fb6c	 Bytes: 0
block_.L_48fb6c:

  ; Code: movl -0x54(%rbp), %eax	 RIP: 48fb6c	 Bytes: 3
  %loadMem_48fb6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb6c = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb6c)
  store %struct.Memory* %call_48fb6c, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %ecx	 RIP: 48fb6f	 Bytes: 5
  %loadMem_48fb6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb6f = call %struct.Memory* @routine_movl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb6f)
  store %struct.Memory* %call_48fb6f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 48fb74	 Bytes: 3
  %loadMem_48fb74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb74 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb74)
  store %struct.Memory* %call_48fb74, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 48fb77	 Bytes: 3
  %loadMem_48fb77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb77 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb77)
  store %struct.Memory* %call_48fb77, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 48fb7a	 Bytes: 1
  %loadMem_48fb7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb7a = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb7a)
  store %struct.Memory* %call_48fb7a, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 48fb7b	 Bytes: 2
  %loadMem_48fb7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb7b = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb7b)
  store %struct.Memory* %call_48fb7b, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 48fb7d	 Bytes: 3
  %loadMem_48fb7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb7d = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb7d)
  store %struct.Memory* %call_48fb7d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 48fb80	 Bytes: 3
  %loadMem_48fb80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb80 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb80)
  store %struct.Memory* %call_48fb80, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 48fb83	 Bytes: 3
  %loadMem_48fb83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb83 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb83)
  store %struct.Memory* %call_48fb83, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 48fb86	 Bytes: 1
  %loadMem_48fb86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb86 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb86)
  store %struct.Memory* %call_48fb86, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 48fb87	 Bytes: 2
  %loadMem_48fb87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb87 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb87)
  store %struct.Memory* %call_48fb87, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 48fb89	 Bytes: 3
  %loadMem_48fb89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb89 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb89)
  store %struct.Memory* %call_48fb89, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp)	 RIP: 48fb8c	 Bytes: 3
  %loadMem_48fb8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb8c = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb8c)
  store %struct.Memory* %call_48fb8c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 48fb8f	 Bytes: 3
  %loadMem_48fb8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb8f = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb8f)
  store %struct.Memory* %call_48fb8f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rsi	 RIP: 48fb92	 Bytes: 8
  %loadMem_48fb92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb92 = call %struct.Memory* @routine_movq_0x6cb8f8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb92)
  store %struct.Memory* %call_48fb92, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 48fb9a	 Bytes: 4
  %loadMem_48fb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb9a = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb9a)
  store %struct.Memory* %call_48fb9a, %struct.Memory** %MEMORY

  ; Code: addl 0x94(%rsi,%rdi,8), %ecx	 RIP: 48fb9e	 Bytes: 7
  %loadMem_48fb9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fb9e = call %struct.Memory* @routine_addl_0x94__rsi__rdi_8____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fb9e)
  store %struct.Memory* %call_48fb9e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x30(%rbp)	 RIP: 48fba5	 Bytes: 3
  %loadMem_48fba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fba5 = call %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fba5)
  store %struct.Memory* %call_48fba5, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %ecx	 RIP: 48fba8	 Bytes: 3
  %loadMem_48fba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fba8 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fba8)
  store %struct.Memory* %call_48fba8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rsi	 RIP: 48fbab	 Bytes: 8
  %loadMem_48fbab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fbab = call %struct.Memory* @routine_movq_0x6cb8f8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fbab)
  store %struct.Memory* %call_48fbab, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 48fbb3	 Bytes: 4
  %loadMem_48fbb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fbb3 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fbb3)
  store %struct.Memory* %call_48fbb3, %struct.Memory** %MEMORY

  ; Code: addl 0x90(%rsi,%rdi,8), %ecx	 RIP: 48fbb7	 Bytes: 7
  %loadMem_48fbb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fbb7 = call %struct.Memory* @routine_addl_0x90__rsi__rdi_8____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fbb7)
  store %struct.Memory* %call_48fbb7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 48fbbe	 Bytes: 3
  %loadMem_48fbbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fbbe = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fbbe)
  store %struct.Memory* %call_48fbbe, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 48fbc1	 Bytes: 8
  %loadMem_48fbc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fbc1 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fbc1)
  store %struct.Memory* %call_48fbc1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ad0(%rsi)	 RIP: 48fbc9	 Bytes: 7
  %loadMem_48fbc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fbc9 = call %struct.Memory* @routine_cmpl__0x0__0x11ad0__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fbc9)
  store %struct.Memory* %call_48fbc9, %struct.Memory** %MEMORY

  ; Code: je .L_48fc36	 RIP: 48fbd0	 Bytes: 6
  %loadMem_48fbd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fbd0 = call %struct.Memory* @routine_je_.L_48fc36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fbd0, i8* %BRANCH_TAKEN, i64 102, i64 6, i64 6)
  store %struct.Memory* %call_48fbd0, %struct.Memory** %MEMORY

  %loadBr_48fbd0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48fbd0 = icmp eq i8 %loadBr_48fbd0, 1
  br i1 %cmpBr_48fbd0, label %block_.L_48fc36, label %block_48fbd6

block_48fbd6:
  ; Code: movq 0x6cb900, %rax	 RIP: 48fbd6	 Bytes: 8
  %loadMem_48fbd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fbd6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fbd6)
  store %struct.Memory* %call_48fbd6, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 48fbde	 Bytes: 7
  %loadMem_48fbde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fbde = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fbde)
  store %struct.Memory* %call_48fbde, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fbe5	 Bytes: 8
  %loadMem_48fbe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fbe5 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fbe5)
  store %struct.Memory* %call_48fbe5, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rcx), %rcx	 RIP: 48fbed	 Bytes: 4
  %loadMem_48fbed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fbed = call %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fbed)
  store %struct.Memory* %call_48fbed, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 48fbf1	 Bytes: 7
  %loadMem_48fbf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fbf1 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fbf1)
  store %struct.Memory* %call_48fbf1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48fbf8	 Bytes: 3
  %loadMem_48fbf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fbf8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fbf8)
  store %struct.Memory* %call_48fbf8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 48fbfb	 Bytes: 7
  %loadMem_48fbfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fbfb = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fbfb)
  store %struct.Memory* %call_48fbfb, %struct.Memory** %MEMORY

  ; Code: je .L_48fc36	 RIP: 48fc02	 Bytes: 6
  %loadMem_48fc02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc02 = call %struct.Memory* @routine_je_.L_48fc36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc02, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_48fc02, %struct.Memory** %MEMORY

  %loadBr_48fc02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48fc02 = icmp eq i8 %loadBr_48fc02, 1
  br i1 %cmpBr_48fc02, label %block_.L_48fc36, label %block_48fc08

block_48fc08:
  ; Code: movl $0x2, %eax	 RIP: 48fc08	 Bytes: 5
  %loadMem_48fc08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc08 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc08)
  store %struct.Memory* %call_48fc08, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %ecx	 RIP: 48fc0d	 Bytes: 5
  %loadMem_48fc0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc0d = call %struct.Memory* @routine_movl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc0d)
  store %struct.Memory* %call_48fc0d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 48fc12	 Bytes: 8
  %loadMem_48fc12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc12 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc12)
  store %struct.Memory* %call_48fc12, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rdx), %esi	 RIP: 48fc1a	 Bytes: 3
  %loadMem_48fc1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc1a = call %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc1a)
  store %struct.Memory* %call_48fc1a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 48fc1d	 Bytes: 3
  %loadMem_48fc1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc1d = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc1d)
  store %struct.Memory* %call_48fc1d, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 48fc20	 Bytes: 2
  %loadMem_48fc20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc20 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc20)
  store %struct.Memory* %call_48fc20, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 48fc22	 Bytes: 1
  %loadMem_48fc22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc22 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc22)
  store %struct.Memory* %call_48fc22, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %esi	 RIP: 48fc23	 Bytes: 3
  %loadMem_48fc23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc23 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc23)
  store %struct.Memory* %call_48fc23, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 48fc26	 Bytes: 2
  %loadMem_48fc26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc26 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc26)
  store %struct.Memory* %call_48fc26, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 48fc28	 Bytes: 3
  %loadMem_48fc28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc28 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc28)
  store %struct.Memory* %call_48fc28, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %esi	 RIP: 48fc2b	 Bytes: 3
  %loadMem_48fc2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc2b = call %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc2b)
  store %struct.Memory* %call_48fc2b, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x5c(%rbp)	 RIP: 48fc2e	 Bytes: 3
  %loadMem_48fc2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc2e = call %struct.Memory* @routine_movl__esi__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc2e)
  store %struct.Memory* %call_48fc2e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48fc40	 RIP: 48fc31	 Bytes: 5
  %loadMem_48fc31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc31 = call %struct.Memory* @routine_jmpq_.L_48fc40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc31, i64 15, i64 5)
  store %struct.Memory* %call_48fc31, %struct.Memory** %MEMORY

  br label %block_.L_48fc40

  ; Code: .L_48fc36:	 RIP: 48fc36	 Bytes: 0
block_.L_48fc36:

  ; Code: xorl %eax, %eax	 RIP: 48fc36	 Bytes: 2
  %loadMem_48fc36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc36 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc36)
  store %struct.Memory* %call_48fc36, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 48fc38	 Bytes: 3
  %loadMem_48fc38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc38 = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc38)
  store %struct.Memory* %call_48fc38, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48fc40	 RIP: 48fc3b	 Bytes: 5
  %loadMem_48fc3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc3b = call %struct.Memory* @routine_jmpq_.L_48fc40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc3b, i64 5, i64 5)
  store %struct.Memory* %call_48fc3b, %struct.Memory** %MEMORY

  br label %block_.L_48fc40

  ; Code: .L_48fc40:	 RIP: 48fc40	 Bytes: 0
block_.L_48fc40:

  ; Code: movl -0x5c(%rbp), %eax	 RIP: 48fc40	 Bytes: 3
  %loadMem_48fc40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc40 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc40)
  store %struct.Memory* %call_48fc40, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 48fc43	 Bytes: 3
  %loadMem_48fc43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc43 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc43)
  store %struct.Memory* %call_48fc43, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fc46	 Bytes: 8
  %loadMem_48fc46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc46 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc46)
  store %struct.Memory* %call_48fc46, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rcx), %rcx	 RIP: 48fc4e	 Bytes: 7
  %loadMem_48fc4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc4e = call %struct.Memory* @routine_movq_0x3758__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc4e)
  store %struct.Memory* %call_48fc4e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 48fc55	 Bytes: 8
  %loadMem_48fc55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc55 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc55)
  store %struct.Memory* %call_48fc55, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rdx), %rdx	 RIP: 48fc5d	 Bytes: 4
  %loadMem_48fc5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc5d = call %struct.Memory* @routine_movslq_0xc__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc5d)
  store %struct.Memory* %call_48fc5d, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rdx, %rdx	 RIP: 48fc61	 Bytes: 7
  %loadMem_48fc61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc61 = call %struct.Memory* @routine_imulq__0x278___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc61)
  store %struct.Memory* %call_48fc61, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48fc68	 Bytes: 3
  %loadMem_48fc68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc68 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc68)
  store %struct.Memory* %call_48fc68, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x40(%rbp)	 RIP: 48fc6b	 Bytes: 4
  %loadMem_48fc6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc6b = call %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc6b)
  store %struct.Memory* %call_48fc6b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 48fc6f	 Bytes: 4
  %loadMem_48fc6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc6f = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc6f)
  store %struct.Memory* %call_48fc6f, %struct.Memory** %MEMORY

  ; Code: jge .L_48fef9	 RIP: 48fc73	 Bytes: 6
  %loadMem_48fc73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc73 = call %struct.Memory* @routine_jge_.L_48fef9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc73, i8* %BRANCH_TAKEN, i64 646, i64 6, i64 6)
  store %struct.Memory* %call_48fc73, %struct.Memory** %MEMORY

  %loadBr_48fc73 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48fc73 = icmp eq i8 %loadBr_48fc73, 1
  br i1 %cmpBr_48fc73, label %block_.L_48fef9, label %block_48fc79

block_48fc79:
  ; Code: movl -0x28(%rbp), %eax	 RIP: 48fc79	 Bytes: 3
  %loadMem_48fc79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc79 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc79)
  store %struct.Memory* %call_48fc79, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 48fc7c	 Bytes: 3
  %loadMem_48fc7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc7c = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc7c)
  store %struct.Memory* %call_48fc7c, %struct.Memory** %MEMORY

  ; Code: .L_48fc7f:	 RIP: 48fc7f	 Bytes: 0
  br label %block_.L_48fc7f
block_.L_48fc7f:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 48fc7f	 Bytes: 3
  %loadMem_48fc7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc7f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc7f)
  store %struct.Memory* %call_48fc7f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 48fc82	 Bytes: 3
  %loadMem_48fc82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc82 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc82)
  store %struct.Memory* %call_48fc82, %struct.Memory** %MEMORY

  ; Code: jge .L_48fef4	 RIP: 48fc85	 Bytes: 6
  %loadMem_48fc85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc85 = call %struct.Memory* @routine_jge_.L_48fef4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc85, i8* %BRANCH_TAKEN, i64 623, i64 6, i64 6)
  store %struct.Memory* %call_48fc85, %struct.Memory** %MEMORY

  %loadBr_48fc85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48fc85 = icmp eq i8 %loadBr_48fc85, 1
  br i1 %cmpBr_48fc85, label %block_.L_48fef4, label %block_48fc8b

block_48fc8b:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48fc8b	 Bytes: 3
  %loadMem_48fc8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc8b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc8b)
  store %struct.Memory* %call_48fc8b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 48fc8e	 Bytes: 3
  %loadMem_48fc8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc8e = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc8e)
  store %struct.Memory* %call_48fc8e, %struct.Memory** %MEMORY

  ; Code: .L_48fc91:	 RIP: 48fc91	 Bytes: 0
  br label %block_.L_48fc91
block_.L_48fc91:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 48fc91	 Bytes: 3
  %loadMem_48fc91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc91 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc91)
  store %struct.Memory* %call_48fc91, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %eax	 RIP: 48fc94	 Bytes: 3
  %loadMem_48fc94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc94 = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc94)
  store %struct.Memory* %call_48fc94, %struct.Memory** %MEMORY

  ; Code: jge .L_48fee1	 RIP: 48fc97	 Bytes: 6
  %loadMem_48fc97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc97 = call %struct.Memory* @routine_jge_.L_48fee1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc97, i8* %BRANCH_TAKEN, i64 586, i64 6, i64 6)
  store %struct.Memory* %call_48fc97, %struct.Memory** %MEMORY

  %loadBr_48fc97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48fc97 = icmp eq i8 %loadBr_48fc97, 1
  br i1 %cmpBr_48fc97, label %block_.L_48fee1, label %block_48fc9d

block_48fc9d:
  ; Code: movq 0x70fcf0, %rax	 RIP: 48fc9d	 Bytes: 8
  %loadMem_48fc9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fc9d = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fc9d)
  store %struct.Memory* %call_48fc9d, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 48fca5	 Bytes: 7
  %loadMem_48fca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fca5 = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fca5)
  store %struct.Memory* %call_48fca5, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 48fcac	 Bytes: 3
  %loadMem_48fcac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fcac = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fcac)
  store %struct.Memory* %call_48fcac, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fcaf	 Bytes: 8
  %loadMem_48fcaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fcaf = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fcaf)
  store %struct.Memory* %call_48fcaf, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 48fcb7	 Bytes: 6
  %loadMem_48fcb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fcb7 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fcb7)
  store %struct.Memory* %call_48fcb7, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 48fcbd	 Bytes: 3
  %loadMem_48fcbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fcbd = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fcbd)
  store %struct.Memory* %call_48fcbd, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48fcc0	 Bytes: 3
  %loadMem_48fcc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fcc0 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fcc0)
  store %struct.Memory* %call_48fcc0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48fcc3	 Bytes: 4
  %loadMem_48fcc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fcc3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fcc3)
  store %struct.Memory* %call_48fcc3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fcc7	 Bytes: 8
  %loadMem_48fcc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fcc7 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fcc7)
  store %struct.Memory* %call_48fcc7, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 48fccf	 Bytes: 6
  %loadMem_48fccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fccf = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fccf)
  store %struct.Memory* %call_48fccf, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 48fcd5	 Bytes: 3
  %loadMem_48fcd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fcd5 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fcd5)
  store %struct.Memory* %call_48fcd5, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48fcd8	 Bytes: 3
  %loadMem_48fcd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fcd8 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fcd8)
  store %struct.Memory* %call_48fcd8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48fcdb	 Bytes: 4
  %loadMem_48fcdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fcdb = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fcdb)
  store %struct.Memory* %call_48fcdb, %struct.Memory** %MEMORY

  ; Code: movw $0x0, (%rax)	 RIP: 48fcdf	 Bytes: 5
  %loadMem_48fcdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fcdf = call %struct.Memory* @routine_movw__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fcdf)
  store %struct.Memory* %call_48fcdf, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 48fce4	 Bytes: 8
  %loadMem_48fce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fce4 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fce4)
  store %struct.Memory* %call_48fce4, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 48fcec	 Bytes: 7
  %loadMem_48fcec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fcec = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fcec)
  store %struct.Memory* %call_48fcec, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 48fcf3	 Bytes: 3
  %loadMem_48fcf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fcf3 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fcf3)
  store %struct.Memory* %call_48fcf3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fcf6	 Bytes: 8
  %loadMem_48fcf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fcf6 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fcf6)
  store %struct.Memory* %call_48fcf6, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 48fcfe	 Bytes: 6
  %loadMem_48fcfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fcfe = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fcfe)
  store %struct.Memory* %call_48fcfe, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 48fd04	 Bytes: 3
  %loadMem_48fd04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd04 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd04)
  store %struct.Memory* %call_48fd04, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48fd07	 Bytes: 3
  %loadMem_48fd07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd07 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd07)
  store %struct.Memory* %call_48fd07, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48fd0a	 Bytes: 4
  %loadMem_48fd0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd0a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd0a)
  store %struct.Memory* %call_48fd0a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fd0e	 Bytes: 8
  %loadMem_48fd0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd0e = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd0e)
  store %struct.Memory* %call_48fd0e, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 48fd16	 Bytes: 6
  %loadMem_48fd16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd16 = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd16)
  store %struct.Memory* %call_48fd16, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 48fd1c	 Bytes: 3
  %loadMem_48fd1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd1c = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd1c)
  store %struct.Memory* %call_48fd1c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48fd1f	 Bytes: 3
  %loadMem_48fd1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd1f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd1f)
  store %struct.Memory* %call_48fd1f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48fd22	 Bytes: 4
  %loadMem_48fd22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd22 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd22)
  store %struct.Memory* %call_48fd22, %struct.Memory** %MEMORY

  ; Code: movw $0x0, 0x2(%rax)	 RIP: 48fd26	 Bytes: 6
  %loadMem_48fd26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd26 = call %struct.Memory* @routine_movw__0x0__0x2__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd26)
  store %struct.Memory* %call_48fd26, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 48fd2c	 Bytes: 8
  %loadMem_48fd2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd2c = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd2c)
  store %struct.Memory* %call_48fd2c, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 48fd34	 Bytes: 7
  %loadMem_48fd34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd34 = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd34)
  store %struct.Memory* %call_48fd34, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 48fd3b	 Bytes: 4
  %loadMem_48fd3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd3b = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd3b)
  store %struct.Memory* %call_48fd3b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fd3f	 Bytes: 8
  %loadMem_48fd3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd3f = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd3f)
  store %struct.Memory* %call_48fd3f, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 48fd47	 Bytes: 6
  %loadMem_48fd47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd47 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd47)
  store %struct.Memory* %call_48fd47, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 48fd4d	 Bytes: 3
  %loadMem_48fd4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd4d = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd4d)
  store %struct.Memory* %call_48fd4d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48fd50	 Bytes: 3
  %loadMem_48fd50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd50 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd50)
  store %struct.Memory* %call_48fd50, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48fd53	 Bytes: 4
  %loadMem_48fd53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd53 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd53)
  store %struct.Memory* %call_48fd53, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fd57	 Bytes: 8
  %loadMem_48fd57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd57 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd57)
  store %struct.Memory* %call_48fd57, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 48fd5f	 Bytes: 6
  %loadMem_48fd5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd5f = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd5f)
  store %struct.Memory* %call_48fd5f, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 48fd65	 Bytes: 3
  %loadMem_48fd65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd65 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd65)
  store %struct.Memory* %call_48fd65, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48fd68	 Bytes: 3
  %loadMem_48fd68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd68 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd68)
  store %struct.Memory* %call_48fd68, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48fd6b	 Bytes: 4
  %loadMem_48fd6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd6b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd6b)
  store %struct.Memory* %call_48fd6b, %struct.Memory** %MEMORY

  ; Code: movw $0x0, (%rax)	 RIP: 48fd6f	 Bytes: 5
  %loadMem_48fd6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd6f = call %struct.Memory* @routine_movw__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd6f)
  store %struct.Memory* %call_48fd6f, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 48fd74	 Bytes: 8
  %loadMem_48fd74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd74 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd74)
  store %struct.Memory* %call_48fd74, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 48fd7c	 Bytes: 7
  %loadMem_48fd7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd7c = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd7c)
  store %struct.Memory* %call_48fd7c, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 48fd83	 Bytes: 4
  %loadMem_48fd83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd83 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd83)
  store %struct.Memory* %call_48fd83, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fd87	 Bytes: 8
  %loadMem_48fd87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd87 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd87)
  store %struct.Memory* %call_48fd87, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 48fd8f	 Bytes: 6
  %loadMem_48fd8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd8f = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd8f)
  store %struct.Memory* %call_48fd8f, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 48fd95	 Bytes: 3
  %loadMem_48fd95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd95 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd95)
  store %struct.Memory* %call_48fd95, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48fd98	 Bytes: 3
  %loadMem_48fd98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd98 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd98)
  store %struct.Memory* %call_48fd98, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48fd9b	 Bytes: 4
  %loadMem_48fd9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd9b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd9b)
  store %struct.Memory* %call_48fd9b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fd9f	 Bytes: 8
  %loadMem_48fd9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fd9f = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fd9f)
  store %struct.Memory* %call_48fd9f, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 48fda7	 Bytes: 6
  %loadMem_48fda7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fda7 = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fda7)
  store %struct.Memory* %call_48fda7, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 48fdad	 Bytes: 3
  %loadMem_48fdad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fdad = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fdad)
  store %struct.Memory* %call_48fdad, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48fdb0	 Bytes: 3
  %loadMem_48fdb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fdb0 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fdb0)
  store %struct.Memory* %call_48fdb0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48fdb3	 Bytes: 4
  %loadMem_48fdb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fdb3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fdb3)
  store %struct.Memory* %call_48fdb3, %struct.Memory** %MEMORY

  ; Code: movw $0x0, 0x2(%rax)	 RIP: 48fdb7	 Bytes: 6
  %loadMem_48fdb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fdb7 = call %struct.Memory* @routine_movw__0x0__0x2__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fdb7)
  store %struct.Memory* %call_48fdb7, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 48fdbd	 Bytes: 8
  %loadMem_48fdbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fdbd = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fdbd)
  store %struct.Memory* %call_48fdbd, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rax), %rax	 RIP: 48fdc5	 Bytes: 7
  %loadMem_48fdc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fdc5 = call %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fdc5)
  store %struct.Memory* %call_48fdc5, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 48fdcc	 Bytes: 3
  %loadMem_48fdcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fdcc = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fdcc)
  store %struct.Memory* %call_48fdcc, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fdcf	 Bytes: 8
  %loadMem_48fdcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fdcf = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fdcf)
  store %struct.Memory* %call_48fdcf, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 48fdd7	 Bytes: 6
  %loadMem_48fdd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fdd7 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fdd7)
  store %struct.Memory* %call_48fdd7, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 48fddd	 Bytes: 3
  %loadMem_48fddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fddd = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fddd)
  store %struct.Memory* %call_48fddd, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48fde0	 Bytes: 3
  %loadMem_48fde0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fde0 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fde0)
  store %struct.Memory* %call_48fde0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48fde3	 Bytes: 4
  %loadMem_48fde3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fde3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fde3)
  store %struct.Memory* %call_48fde3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fde7	 Bytes: 8
  %loadMem_48fde7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fde7 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fde7)
  store %struct.Memory* %call_48fde7, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 48fdef	 Bytes: 6
  %loadMem_48fdef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fdef = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fdef)
  store %struct.Memory* %call_48fdef, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 48fdf5	 Bytes: 3
  %loadMem_48fdf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fdf5 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fdf5)
  store %struct.Memory* %call_48fdf5, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48fdf8	 Bytes: 3
  %loadMem_48fdf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fdf8 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fdf8)
  store %struct.Memory* %call_48fdf8, %struct.Memory** %MEMORY

  ; Code: movw $0xffff, (%rax,%rcx,2)	 RIP: 48fdfb	 Bytes: 6
  %loadMem_48fdfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fdfb = call %struct.Memory* @routine_movw__0xffff____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fdfb)
  store %struct.Memory* %call_48fdfb, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 48fe01	 Bytes: 8
  %loadMem_48fe01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe01 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe01)
  store %struct.Memory* %call_48fe01, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rax), %rax	 RIP: 48fe09	 Bytes: 7
  %loadMem_48fe09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe09 = call %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe09)
  store %struct.Memory* %call_48fe09, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 48fe10	 Bytes: 4
  %loadMem_48fe10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe10 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe10)
  store %struct.Memory* %call_48fe10, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fe14	 Bytes: 8
  %loadMem_48fe14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe14 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe14)
  store %struct.Memory* %call_48fe14, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 48fe1c	 Bytes: 6
  %loadMem_48fe1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe1c = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe1c)
  store %struct.Memory* %call_48fe1c, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 48fe22	 Bytes: 3
  %loadMem_48fe22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe22 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe22)
  store %struct.Memory* %call_48fe22, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48fe25	 Bytes: 3
  %loadMem_48fe25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe25 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe25)
  store %struct.Memory* %call_48fe25, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48fe28	 Bytes: 4
  %loadMem_48fe28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe28 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe28)
  store %struct.Memory* %call_48fe28, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fe2c	 Bytes: 8
  %loadMem_48fe2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe2c = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe2c)
  store %struct.Memory* %call_48fe2c, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 48fe34	 Bytes: 6
  %loadMem_48fe34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe34 = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe34)
  store %struct.Memory* %call_48fe34, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 48fe3a	 Bytes: 3
  %loadMem_48fe3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe3a = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe3a)
  store %struct.Memory* %call_48fe3a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48fe3d	 Bytes: 3
  %loadMem_48fe3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe3d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe3d)
  store %struct.Memory* %call_48fe3d, %struct.Memory** %MEMORY

  ; Code: movw $0xffff, (%rax,%rcx,2)	 RIP: 48fe40	 Bytes: 6
  %loadMem_48fe40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe40 = call %struct.Memory* @routine_movw__0xffff____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe40)
  store %struct.Memory* %call_48fe40, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 48fe46	 Bytes: 8
  %loadMem_48fe46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe46 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe46)
  store %struct.Memory* %call_48fe46, %struct.Memory** %MEMORY

  ; Code: movq 0x1958(%rax), %rax	 RIP: 48fe4e	 Bytes: 7
  %loadMem_48fe4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe4e = call %struct.Memory* @routine_movq_0x1958__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe4e)
  store %struct.Memory* %call_48fe4e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 48fe55	 Bytes: 3
  %loadMem_48fe55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe55 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe55)
  store %struct.Memory* %call_48fe55, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fe58	 Bytes: 8
  %loadMem_48fe58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe58 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe58)
  store %struct.Memory* %call_48fe58, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 48fe60	 Bytes: 6
  %loadMem_48fe60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe60 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe60)
  store %struct.Memory* %call_48fe60, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 48fe66	 Bytes: 3
  %loadMem_48fe66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe66 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe66)
  store %struct.Memory* %call_48fe66, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48fe69	 Bytes: 3
  %loadMem_48fe69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe69 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe69)
  store %struct.Memory* %call_48fe69, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48fe6c	 Bytes: 4
  %loadMem_48fe6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe6c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe6c)
  store %struct.Memory* %call_48fe6c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fe70	 Bytes: 8
  %loadMem_48fe70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe70 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe70)
  store %struct.Memory* %call_48fe70, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 48fe78	 Bytes: 6
  %loadMem_48fe78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe78 = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe78)
  store %struct.Memory* %call_48fe78, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 48fe7e	 Bytes: 3
  %loadMem_48fe7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe7e = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe7e)
  store %struct.Memory* %call_48fe7e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48fe81	 Bytes: 3
  %loadMem_48fe81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe81 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe81)
  store %struct.Memory* %call_48fe81, %struct.Memory** %MEMORY

  ; Code: movq $0xffffffffffffffff, (%rax,%rcx,8)	 RIP: 48fe84	 Bytes: 8
  %loadMem_48fe84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe84 = call %struct.Memory* @routine_movq__0xffffffffffffffff____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe84)
  store %struct.Memory* %call_48fe84, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 48fe8c	 Bytes: 8
  %loadMem_48fe8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe8c = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe8c)
  store %struct.Memory* %call_48fe8c, %struct.Memory** %MEMORY

  ; Code: movq 0x1958(%rax), %rax	 RIP: 48fe94	 Bytes: 7
  %loadMem_48fe94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe94 = call %struct.Memory* @routine_movq_0x1958__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe94)
  store %struct.Memory* %call_48fe94, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 48fe9b	 Bytes: 4
  %loadMem_48fe9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe9b = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe9b)
  store %struct.Memory* %call_48fe9b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48fe9f	 Bytes: 8
  %loadMem_48fe9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fe9f = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fe9f)
  store %struct.Memory* %call_48fe9f, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 48fea7	 Bytes: 6
  %loadMem_48fea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fea7 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fea7)
  store %struct.Memory* %call_48fea7, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 48fead	 Bytes: 3
  %loadMem_48fead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fead = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fead)
  store %struct.Memory* %call_48fead, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48feb0	 Bytes: 3
  %loadMem_48feb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48feb0 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48feb0)
  store %struct.Memory* %call_48feb0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48feb3	 Bytes: 4
  %loadMem_48feb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48feb3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48feb3)
  store %struct.Memory* %call_48feb3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48feb7	 Bytes: 8
  %loadMem_48feb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48feb7 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48feb7)
  store %struct.Memory* %call_48feb7, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 48febf	 Bytes: 6
  %loadMem_48febf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48febf = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48febf)
  store %struct.Memory* %call_48febf, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 48fec5	 Bytes: 3
  %loadMem_48fec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fec5 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fec5)
  store %struct.Memory* %call_48fec5, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48fec8	 Bytes: 3
  %loadMem_48fec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fec8 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fec8)
  store %struct.Memory* %call_48fec8, %struct.Memory** %MEMORY

  ; Code: movq $0xffffffffffffffff, (%rax,%rcx,8)	 RIP: 48fecb	 Bytes: 8
  %loadMem_48fecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fecb = call %struct.Memory* @routine_movq__0xffffffffffffffff____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fecb)
  store %struct.Memory* %call_48fecb, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 48fed3	 Bytes: 3
  %loadMem_48fed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fed3 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fed3)
  store %struct.Memory* %call_48fed3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48fed6	 Bytes: 3
  %loadMem_48fed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fed6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fed6)
  store %struct.Memory* %call_48fed6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 48fed9	 Bytes: 3
  %loadMem_48fed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fed9 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fed9)
  store %struct.Memory* %call_48fed9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48fc91	 RIP: 48fedc	 Bytes: 5
  %loadMem_48fedc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fedc = call %struct.Memory* @routine_jmpq_.L_48fc91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fedc, i64 -587, i64 5)
  store %struct.Memory* %call_48fedc, %struct.Memory** %MEMORY

  br label %block_.L_48fc91

  ; Code: .L_48fee1:	 RIP: 48fee1	 Bytes: 0
block_.L_48fee1:

  ; Code: jmpq .L_48fee6	 RIP: 48fee1	 Bytes: 5
  %loadMem_48fee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fee1 = call %struct.Memory* @routine_jmpq_.L_48fee6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fee1, i64 5, i64 5)
  store %struct.Memory* %call_48fee1, %struct.Memory** %MEMORY

  br label %block_.L_48fee6

  ; Code: .L_48fee6:	 RIP: 48fee6	 Bytes: 0
block_.L_48fee6:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 48fee6	 Bytes: 3
  %loadMem_48fee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fee6 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fee6)
  store %struct.Memory* %call_48fee6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48fee9	 Bytes: 3
  %loadMem_48fee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fee9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fee9)
  store %struct.Memory* %call_48fee9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 48feec	 Bytes: 3
  %loadMem_48feec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48feec = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48feec)
  store %struct.Memory* %call_48feec, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48fc7f	 RIP: 48feef	 Bytes: 5
  %loadMem_48feef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48feef = call %struct.Memory* @routine_jmpq_.L_48fc7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48feef, i64 -624, i64 5)
  store %struct.Memory* %call_48feef, %struct.Memory** %MEMORY

  br label %block_.L_48fc7f

  ; Code: .L_48fef4:	 RIP: 48fef4	 Bytes: 0
block_.L_48fef4:

  ; Code: jmpq .L_490c5d	 RIP: 48fef4	 Bytes: 5
  %loadMem_48fef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fef4 = call %struct.Memory* @routine_jmpq_.L_490c5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fef4, i64 3433, i64 5)
  store %struct.Memory* %call_48fef4, %struct.Memory** %MEMORY

  br label %block_.L_490c5d

  ; Code: .L_48fef9:	 RIP: 48fef9	 Bytes: 0
block_.L_48fef9:

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 48fef9	 Bytes: 4
  %loadMem_48fef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fef9 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fef9)
  store %struct.Memory* %call_48fef9, %struct.Memory** %MEMORY

  ; Code: jne .L_490133	 RIP: 48fefd	 Bytes: 6
  %loadMem_48fefd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fefd = call %struct.Memory* @routine_jne_.L_490133(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fefd, i8* %BRANCH_TAKEN, i64 566, i64 6, i64 6)
  store %struct.Memory* %call_48fefd, %struct.Memory** %MEMORY

  %loadBr_48fefd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48fefd = icmp eq i8 %loadBr_48fefd, 1
  br i1 %cmpBr_48fefd, label %block_.L_490133, label %block_48ff03

block_48ff03:
  ; Code: movl -0x28(%rbp), %eax	 RIP: 48ff03	 Bytes: 3
  %loadMem_48ff03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff03 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff03)
  store %struct.Memory* %call_48ff03, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 48ff06	 Bytes: 3
  %loadMem_48ff06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff06 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff06)
  store %struct.Memory* %call_48ff06, %struct.Memory** %MEMORY

  ; Code: .L_48ff09:	 RIP: 48ff09	 Bytes: 0
  br label %block_.L_48ff09
block_.L_48ff09:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 48ff09	 Bytes: 3
  %loadMem_48ff09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff09 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff09)
  store %struct.Memory* %call_48ff09, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 48ff0c	 Bytes: 3
  %loadMem_48ff0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff0c = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff0c)
  store %struct.Memory* %call_48ff0c, %struct.Memory** %MEMORY

  ; Code: jge .L_49012e	 RIP: 48ff0f	 Bytes: 6
  %loadMem_48ff0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff0f = call %struct.Memory* @routine_jge_.L_49012e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff0f, i8* %BRANCH_TAKEN, i64 543, i64 6, i64 6)
  store %struct.Memory* %call_48ff0f, %struct.Memory** %MEMORY

  %loadBr_48ff0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48ff0f = icmp eq i8 %loadBr_48ff0f, 1
  br i1 %cmpBr_48ff0f, label %block_.L_49012e, label %block_48ff15

block_48ff15:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48ff15	 Bytes: 3
  %loadMem_48ff15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff15 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff15)
  store %struct.Memory* %call_48ff15, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 48ff18	 Bytes: 3
  %loadMem_48ff18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff18 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff18)
  store %struct.Memory* %call_48ff18, %struct.Memory** %MEMORY

  ; Code: .L_48ff1b:	 RIP: 48ff1b	 Bytes: 0
  br label %block_.L_48ff1b
block_.L_48ff1b:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 48ff1b	 Bytes: 3
  %loadMem_48ff1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff1b = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff1b)
  store %struct.Memory* %call_48ff1b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %eax	 RIP: 48ff1e	 Bytes: 3
  %loadMem_48ff1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff1e = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff1e)
  store %struct.Memory* %call_48ff1e, %struct.Memory** %MEMORY

  ; Code: jge .L_49011b	 RIP: 48ff21	 Bytes: 6
  %loadMem_48ff21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff21 = call %struct.Memory* @routine_jge_.L_49011b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff21, i8* %BRANCH_TAKEN, i64 506, i64 6, i64 6)
  store %struct.Memory* %call_48ff21, %struct.Memory** %MEMORY

  %loadBr_48ff21 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48ff21 = icmp eq i8 %loadBr_48ff21, 1
  br i1 %cmpBr_48ff21, label %block_.L_49011b, label %block_48ff27

block_48ff27:
  ; Code: movq 0x6cb900, %rax	 RIP: 48ff27	 Bytes: 8
  %loadMem_48ff27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff27 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff27)
  store %struct.Memory* %call_48ff27, %struct.Memory** %MEMORY

  ; Code: movq 0x118f8(%rax), %rax	 RIP: 48ff2f	 Bytes: 7
  %loadMem_48ff2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff2f = call %struct.Memory* @routine_movq_0x118f8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff2f)
  store %struct.Memory* %call_48ff2f, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 48ff36	 Bytes: 4
  %loadMem_48ff36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff36 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff36)
  store %struct.Memory* %call_48ff36, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48ff3a	 Bytes: 4
  %loadMem_48ff3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff3a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff3a)
  store %struct.Memory* %call_48ff3a, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 48ff3e	 Bytes: 4
  %loadMem_48ff3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff3e = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff3e)
  store %struct.Memory* %call_48ff3e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48ff42	 Bytes: 4
  %loadMem_48ff42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff42 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff42)
  store %struct.Memory* %call_48ff42, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 48ff46	 Bytes: 3
  %loadMem_48ff46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff46 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff46)
  store %struct.Memory* %call_48ff46, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 48ff49	 Bytes: 4
  %loadMem_48ff49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff49 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff49)
  store %struct.Memory* %call_48ff49, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48ff4d	 Bytes: 4
  %loadMem_48ff4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff4d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff4d)
  store %struct.Memory* %call_48ff4d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 48ff51	 Bytes: 4
  %loadMem_48ff51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff51 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff51)
  store %struct.Memory* %call_48ff51, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48ff55	 Bytes: 4
  %loadMem_48ff55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff55 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff55)
  store %struct.Memory* %call_48ff55, %struct.Memory** %MEMORY

  ; Code: movw (%rax), %dx	 RIP: 48ff59	 Bytes: 3
  %loadMem_48ff59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff59 = call %struct.Memory* @routine_movw___rax____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff59)
  store %struct.Memory* %call_48ff59, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 48ff5c	 Bytes: 8
  %loadMem_48ff5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff5c = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff5c)
  store %struct.Memory* %call_48ff5c, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 48ff64	 Bytes: 7
  %loadMem_48ff64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff64 = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff64)
  store %struct.Memory* %call_48ff64, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 48ff6b	 Bytes: 3
  %loadMem_48ff6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff6b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff6b)
  store %struct.Memory* %call_48ff6b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48ff6e	 Bytes: 8
  %loadMem_48ff6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff6e = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff6e)
  store %struct.Memory* %call_48ff6e, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %esi	 RIP: 48ff76	 Bytes: 6
  %loadMem_48ff76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff76 = call %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff76)
  store %struct.Memory* %call_48ff76, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 48ff7c	 Bytes: 3
  %loadMem_48ff7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff7c = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff7c)
  store %struct.Memory* %call_48ff7c, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 48ff7f	 Bytes: 3
  %loadMem_48ff7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff7f = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff7f)
  store %struct.Memory* %call_48ff7f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48ff82	 Bytes: 4
  %loadMem_48ff82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff82 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff82)
  store %struct.Memory* %call_48ff82, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48ff86	 Bytes: 8
  %loadMem_48ff86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff86 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff86)
  store %struct.Memory* %call_48ff86, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %esi	 RIP: 48ff8e	 Bytes: 6
  %loadMem_48ff8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff8e = call %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff8e)
  store %struct.Memory* %call_48ff8e, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 48ff94	 Bytes: 3
  %loadMem_48ff94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff94 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff94)
  store %struct.Memory* %call_48ff94, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 48ff97	 Bytes: 3
  %loadMem_48ff97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff97 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff97)
  store %struct.Memory* %call_48ff97, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48ff9a	 Bytes: 4
  %loadMem_48ff9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff9a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff9a)
  store %struct.Memory* %call_48ff9a, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax)	 RIP: 48ff9e	 Bytes: 3
  %loadMem_48ff9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ff9e = call %struct.Memory* @routine_movw__dx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ff9e)
  store %struct.Memory* %call_48ff9e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48ffa1	 Bytes: 8
  %loadMem_48ffa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffa1 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffa1)
  store %struct.Memory* %call_48ffa1, %struct.Memory** %MEMORY

  ; Code: movq 0x118f8(%rax), %rax	 RIP: 48ffa9	 Bytes: 7
  %loadMem_48ffa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffa9 = call %struct.Memory* @routine_movq_0x118f8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffa9)
  store %struct.Memory* %call_48ffa9, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 48ffb0	 Bytes: 4
  %loadMem_48ffb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffb0 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffb0)
  store %struct.Memory* %call_48ffb0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48ffb4	 Bytes: 4
  %loadMem_48ffb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffb4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffb4)
  store %struct.Memory* %call_48ffb4, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 48ffb8	 Bytes: 4
  %loadMem_48ffb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffb8 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffb8)
  store %struct.Memory* %call_48ffb8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48ffbc	 Bytes: 4
  %loadMem_48ffbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffbc = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffbc)
  store %struct.Memory* %call_48ffbc, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 48ffc0	 Bytes: 3
  %loadMem_48ffc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffc0 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffc0)
  store %struct.Memory* %call_48ffc0, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 48ffc3	 Bytes: 4
  %loadMem_48ffc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffc3 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffc3)
  store %struct.Memory* %call_48ffc3, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48ffc7	 Bytes: 4
  %loadMem_48ffc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffc7 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffc7)
  store %struct.Memory* %call_48ffc7, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 48ffcb	 Bytes: 4
  %loadMem_48ffcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffcb = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffcb)
  store %struct.Memory* %call_48ffcb, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48ffcf	 Bytes: 4
  %loadMem_48ffcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffcf = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffcf)
  store %struct.Memory* %call_48ffcf, %struct.Memory** %MEMORY

  ; Code: movw 0x2(%rax), %dx	 RIP: 48ffd3	 Bytes: 4
  %loadMem_48ffd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffd3 = call %struct.Memory* @routine_movw_0x2__rax____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffd3)
  store %struct.Memory* %call_48ffd3, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 48ffd7	 Bytes: 8
  %loadMem_48ffd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffd7 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffd7)
  store %struct.Memory* %call_48ffd7, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 48ffdf	 Bytes: 7
  %loadMem_48ffdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffdf = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffdf)
  store %struct.Memory* %call_48ffdf, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 48ffe6	 Bytes: 3
  %loadMem_48ffe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffe6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffe6)
  store %struct.Memory* %call_48ffe6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48ffe9	 Bytes: 8
  %loadMem_48ffe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ffe9 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ffe9)
  store %struct.Memory* %call_48ffe9, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %esi	 RIP: 48fff1	 Bytes: 6
  %loadMem_48fff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fff1 = call %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fff1)
  store %struct.Memory* %call_48fff1, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 48fff7	 Bytes: 3
  %loadMem_48fff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fff7 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fff7)
  store %struct.Memory* %call_48fff7, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 48fffa	 Bytes: 3
  %loadMem_48fffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fffa = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fffa)
  store %struct.Memory* %call_48fffa, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48fffd	 Bytes: 4
  %loadMem_48fffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48fffd = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48fffd)
  store %struct.Memory* %call_48fffd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490001	 Bytes: 8
  %loadMem_490001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490001 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490001)
  store %struct.Memory* %call_490001, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %esi	 RIP: 490009	 Bytes: 6
  %loadMem_490009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490009 = call %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490009)
  store %struct.Memory* %call_490009, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 49000f	 Bytes: 3
  %loadMem_49000f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49000f = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49000f)
  store %struct.Memory* %call_49000f, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490012	 Bytes: 3
  %loadMem_490012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490012 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490012)
  store %struct.Memory* %call_490012, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490015	 Bytes: 4
  %loadMem_490015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490015 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490015)
  store %struct.Memory* %call_490015, %struct.Memory** %MEMORY

  ; Code: movw %dx, 0x2(%rax)	 RIP: 490019	 Bytes: 4
  %loadMem_490019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490019 = call %struct.Memory* @routine_movw__dx__0x2__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490019)
  store %struct.Memory* %call_490019, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %esi	 RIP: 49001d	 Bytes: 3
  %loadMem_49001d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49001d = call %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49001d)
  store %struct.Memory* %call_49001d, %struct.Memory** %MEMORY

  ; Code: movw %si, %dx	 RIP: 490020	 Bytes: 3
  %loadMem_490020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490020 = call %struct.Memory* @routine_movw__si___dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490020)
  store %struct.Memory* %call_490020, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 490023	 Bytes: 8
  %loadMem_490023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490023 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490023)
  store %struct.Memory* %call_490023, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rax), %rax	 RIP: 49002b	 Bytes: 7
  %loadMem_49002b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49002b = call %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49002b)
  store %struct.Memory* %call_49002b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 490032	 Bytes: 3
  %loadMem_490032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490032 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490032)
  store %struct.Memory* %call_490032, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490035	 Bytes: 8
  %loadMem_490035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490035 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490035)
  store %struct.Memory* %call_490035, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %esi	 RIP: 49003d	 Bytes: 6
  %loadMem_49003d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49003d = call %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49003d)
  store %struct.Memory* %call_49003d, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 490043	 Bytes: 3
  %loadMem_490043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490043 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490043)
  store %struct.Memory* %call_490043, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490046	 Bytes: 3
  %loadMem_490046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490046 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490046)
  store %struct.Memory* %call_490046, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490049	 Bytes: 4
  %loadMem_490049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490049 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490049)
  store %struct.Memory* %call_490049, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 49004d	 Bytes: 8
  %loadMem_49004d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49004d = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49004d)
  store %struct.Memory* %call_49004d, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %esi	 RIP: 490055	 Bytes: 6
  %loadMem_490055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490055 = call %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490055)
  store %struct.Memory* %call_490055, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 49005b	 Bytes: 3
  %loadMem_49005b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49005b = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49005b)
  store %struct.Memory* %call_49005b, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 49005e	 Bytes: 3
  %loadMem_49005e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49005e = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49005e)
  store %struct.Memory* %call_49005e, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax,%rcx,2)	 RIP: 490061	 Bytes: 4
  %loadMem_490061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490061 = call %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490061)
  store %struct.Memory* %call_490061, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 490065	 Bytes: 8
  %loadMem_490065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490065 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490065)
  store %struct.Memory* %call_490065, %struct.Memory** %MEMORY

  ; Code: addq $0x18, %rax	 RIP: 49006d	 Bytes: 4
  %loadMem_49006d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49006d = call %struct.Memory* @routine_addq__0x18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49006d)
  store %struct.Memory* %call_49006d, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 490071	 Bytes: 3
  %loadMem_490071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490071 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490071)
  store %struct.Memory* %call_490071, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %esi	 RIP: 490074	 Bytes: 3
  %loadMem_490074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490074 = call %struct.Memory* @routine_addl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490074)
  store %struct.Memory* %call_490074, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490077	 Bytes: 3
  %loadMem_490077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490077 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490077)
  store %struct.Memory* %call_490077, %struct.Memory** %MEMORY

  ; Code: imulq $0x108, %rcx, %rcx	 RIP: 49007a	 Bytes: 7
  %loadMem_49007a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49007a = call %struct.Memory* @routine_imulq__0x108___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49007a)
  store %struct.Memory* %call_49007a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 490081	 Bytes: 3
  %loadMem_490081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490081 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490081)
  store %struct.Memory* %call_490081, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 490084	 Bytes: 8
  %loadMem_490084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490084 = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490084)
  store %struct.Memory* %call_490084, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rcx), %rcx	 RIP: 49008c	 Bytes: 7
  %loadMem_49008c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49008c = call %struct.Memory* @routine_movq_0x1950__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49008c)
  store %struct.Memory* %call_49008c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 490093	 Bytes: 3
  %loadMem_490093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490093 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490093)
  store %struct.Memory* %call_490093, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 490096	 Bytes: 8
  %loadMem_490096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490096 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490096)
  store %struct.Memory* %call_490096, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rdi), %esi	 RIP: 49009e	 Bytes: 6
  %loadMem_49009e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49009e = call %struct.Memory* @routine_movl_0x90__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49009e)
  store %struct.Memory* %call_49009e, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 4900a4	 Bytes: 3
  %loadMem_4900a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900a4 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900a4)
  store %struct.Memory* %call_4900a4, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 4900a7	 Bytes: 3
  %loadMem_4900a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900a7 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900a7)
  store %struct.Memory* %call_4900a7, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdi,8), %rcx	 RIP: 4900aa	 Bytes: 4
  %loadMem_4900aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900aa = call %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900aa)
  store %struct.Memory* %call_4900aa, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 4900ae	 Bytes: 8
  %loadMem_4900ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900ae = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900ae)
  store %struct.Memory* %call_4900ae, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rdi), %esi	 RIP: 4900b6	 Bytes: 6
  %loadMem_4900b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900b6 = call %struct.Memory* @routine_movl_0x94__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900b6)
  store %struct.Memory* %call_4900b6, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 4900bc	 Bytes: 3
  %loadMem_4900bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900bc = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900bc)
  store %struct.Memory* %call_4900bc, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 4900bf	 Bytes: 3
  %loadMem_4900bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900bf = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900bf)
  store %struct.Memory* %call_4900bf, %struct.Memory** %MEMORY

  ; Code: movswq (%rcx,%rdi,2), %rcx	 RIP: 4900c2	 Bytes: 5
  %loadMem_4900c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900c2 = call %struct.Memory* @routine_movswq___rcx__rdi_2____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900c2)
  store %struct.Memory* %call_4900c2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4900c7	 Bytes: 4
  %loadMem_4900c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900c7 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900c7)
  store %struct.Memory* %call_4900c7, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 4900cb	 Bytes: 8
  %loadMem_4900cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900cb = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900cb)
  store %struct.Memory* %call_4900cb, %struct.Memory** %MEMORY

  ; Code: movq 0x1958(%rcx), %rcx	 RIP: 4900d3	 Bytes: 7
  %loadMem_4900d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900d3 = call %struct.Memory* @routine_movq_0x1958__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900d3)
  store %struct.Memory* %call_4900d3, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 4900da	 Bytes: 3
  %loadMem_4900da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900da = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900da)
  store %struct.Memory* %call_4900da, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 4900dd	 Bytes: 8
  %loadMem_4900dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900dd = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900dd)
  store %struct.Memory* %call_4900dd, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rdi), %esi	 RIP: 4900e5	 Bytes: 6
  %loadMem_4900e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900e5 = call %struct.Memory* @routine_movl_0x90__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900e5)
  store %struct.Memory* %call_4900e5, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 4900eb	 Bytes: 3
  %loadMem_4900eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900eb = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900eb)
  store %struct.Memory* %call_4900eb, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 4900ee	 Bytes: 3
  %loadMem_4900ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900ee = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900ee)
  store %struct.Memory* %call_4900ee, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdi,8), %rcx	 RIP: 4900f1	 Bytes: 4
  %loadMem_4900f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900f1 = call %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900f1)
  store %struct.Memory* %call_4900f1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 4900f5	 Bytes: 8
  %loadMem_4900f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900f5 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900f5)
  store %struct.Memory* %call_4900f5, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rdi), %esi	 RIP: 4900fd	 Bytes: 6
  %loadMem_4900fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4900fd = call %struct.Memory* @routine_movl_0x94__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4900fd)
  store %struct.Memory* %call_4900fd, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 490103	 Bytes: 3
  %loadMem_490103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490103 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490103)
  store %struct.Memory* %call_490103, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 490106	 Bytes: 3
  %loadMem_490106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490106 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490106)
  store %struct.Memory* %call_490106, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdi,8)	 RIP: 490109	 Bytes: 4
  %loadMem_490109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490109 = call %struct.Memory* @routine_movq__rax____rcx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490109)
  store %struct.Memory* %call_490109, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 49010d	 Bytes: 3
  %loadMem_49010d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49010d = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49010d)
  store %struct.Memory* %call_49010d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 490110	 Bytes: 3
  %loadMem_490110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490110 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490110)
  store %struct.Memory* %call_490110, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 490113	 Bytes: 3
  %loadMem_490113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490113 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490113)
  store %struct.Memory* %call_490113, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48ff1b	 RIP: 490116	 Bytes: 5
  %loadMem_490116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490116 = call %struct.Memory* @routine_jmpq_.L_48ff1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490116, i64 -507, i64 5)
  store %struct.Memory* %call_490116, %struct.Memory** %MEMORY

  br label %block_.L_48ff1b

  ; Code: .L_49011b:	 RIP: 49011b	 Bytes: 0
block_.L_49011b:

  ; Code: jmpq .L_490120	 RIP: 49011b	 Bytes: 5
  %loadMem_49011b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49011b = call %struct.Memory* @routine_jmpq_.L_490120(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49011b, i64 5, i64 5)
  store %struct.Memory* %call_49011b, %struct.Memory** %MEMORY

  br label %block_.L_490120

  ; Code: .L_490120:	 RIP: 490120	 Bytes: 0
block_.L_490120:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 490120	 Bytes: 3
  %loadMem_490120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490120 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490120)
  store %struct.Memory* %call_490120, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 490123	 Bytes: 3
  %loadMem_490123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490123 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490123)
  store %struct.Memory* %call_490123, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 490126	 Bytes: 3
  %loadMem_490126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490126 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490126)
  store %struct.Memory* %call_490126, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48ff09	 RIP: 490129	 Bytes: 5
  %loadMem_490129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490129 = call %struct.Memory* @routine_jmpq_.L_48ff09(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490129, i64 -544, i64 5)
  store %struct.Memory* %call_490129, %struct.Memory** %MEMORY

  br label %block_.L_48ff09

  ; Code: .L_49012e:	 RIP: 49012e	 Bytes: 0
block_.L_49012e:

  ; Code: jmpq .L_490c5d	 RIP: 49012e	 Bytes: 5
  %loadMem_49012e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49012e = call %struct.Memory* @routine_jmpq_.L_490c5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49012e, i64 2863, i64 5)
  store %struct.Memory* %call_49012e, %struct.Memory** %MEMORY

  br label %block_.L_490c5d

  ; Code: .L_490133:	 RIP: 490133	 Bytes: 0
block_.L_490133:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 490133	 Bytes: 3
  %loadMem_490133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490133 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490133)
  store %struct.Memory* %call_490133, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 490136	 Bytes: 3
  %loadMem_490136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490136 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490136)
  store %struct.Memory* %call_490136, %struct.Memory** %MEMORY

  ; Code: .L_490139:	 RIP: 490139	 Bytes: 0
  br label %block_.L_490139
block_.L_490139:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 490139	 Bytes: 3
  %loadMem_490139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490139 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490139)
  store %struct.Memory* %call_490139, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 49013c	 Bytes: 3
  %loadMem_49013c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49013c = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49013c)
  store %struct.Memory* %call_49013c, %struct.Memory** %MEMORY

  ; Code: jge .L_490c58	 RIP: 49013f	 Bytes: 6
  %loadMem_49013f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49013f = call %struct.Memory* @routine_jge_.L_490c58(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49013f, i8* %BRANCH_TAKEN, i64 2841, i64 6, i64 6)
  store %struct.Memory* %call_49013f, %struct.Memory** %MEMORY

  %loadBr_49013f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49013f = icmp eq i8 %loadBr_49013f, 1
  br i1 %cmpBr_49013f, label %block_.L_490c58, label %block_490145

block_490145:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 490145	 Bytes: 3
  %loadMem_490145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490145 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490145)
  store %struct.Memory* %call_490145, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 490148	 Bytes: 3
  %loadMem_490148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490148 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490148)
  store %struct.Memory* %call_490148, %struct.Memory** %MEMORY

  ; Code: .L_49014b:	 RIP: 49014b	 Bytes: 0
  br label %block_.L_49014b
block_.L_49014b:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 49014b	 Bytes: 3
  %loadMem_49014b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49014b = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49014b)
  store %struct.Memory* %call_49014b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %eax	 RIP: 49014e	 Bytes: 3
  %loadMem_49014e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49014e = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49014e)
  store %struct.Memory* %call_49014e, %struct.Memory** %MEMORY

  ; Code: jge .L_490c45	 RIP: 490151	 Bytes: 6
  %loadMem_490151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490151 = call %struct.Memory* @routine_jge_.L_490c45(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490151, i8* %BRANCH_TAKEN, i64 2804, i64 6, i64 6)
  store %struct.Memory* %call_490151, %struct.Memory** %MEMORY

  %loadBr_490151 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490151 = icmp eq i8 %loadBr_490151, 1
  br i1 %cmpBr_490151, label %block_.L_490c45, label %block_490157

block_490157:
  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 490157	 Bytes: 4
  %loadMem_490157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490157 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490157)
  store %struct.Memory* %call_490157, %struct.Memory** %MEMORY

  ; Code: jne .L_490219	 RIP: 49015b	 Bytes: 6
  %loadMem_49015b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49015b = call %struct.Memory* @routine_jne_.L_490219(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49015b, i8* %BRANCH_TAKEN, i64 190, i64 6, i64 6)
  store %struct.Memory* %call_49015b, %struct.Memory** %MEMORY

  %loadBr_49015b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49015b = icmp eq i8 %loadBr_49015b, 1
  br i1 %cmpBr_49015b, label %block_.L_490219, label %block_490161

block_490161:
  ; Code: movq 0x722cb8, %rax	 RIP: 490161	 Bytes: 8
  %loadMem_490161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490161 = call %struct.Memory* @routine_movq_0x722cb8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490161)
  store %struct.Memory* %call_490161, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490169	 Bytes: 8
  %loadMem_490169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490169 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490169)
  store %struct.Memory* %call_490169, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 490171	 Bytes: 6
  %loadMem_490171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490171 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490171)
  store %struct.Memory* %call_490171, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 490177	 Bytes: 3
  %loadMem_490177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490177 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490177)
  store %struct.Memory* %call_490177, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 49017a	 Bytes: 3
  %loadMem_49017a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49017a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49017a)
  store %struct.Memory* %call_49017a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 49017d	 Bytes: 4
  %loadMem_49017d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49017d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49017d)
  store %struct.Memory* %call_49017d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490181	 Bytes: 8
  %loadMem_490181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490181 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490181)
  store %struct.Memory* %call_490181, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 490189	 Bytes: 6
  %loadMem_490189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490189 = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490189)
  store %struct.Memory* %call_490189, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 49018f	 Bytes: 3
  %loadMem_49018f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49018f = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49018f)
  store %struct.Memory* %call_49018f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 490192	 Bytes: 3
  %loadMem_490192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490192 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490192)
  store %struct.Memory* %call_490192, %struct.Memory** %MEMORY

  ; Code: movswl (%rax,%rcx,2), %edx	 RIP: 490195	 Bytes: 4
  %loadMem_490195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490195 = call %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490195)
  store %struct.Memory* %call_490195, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xc(%rbp)	 RIP: 490199	 Bytes: 3
  %loadMem_490199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490199 = call %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490199)
  store %struct.Memory* %call_490199, %struct.Memory** %MEMORY

  ; Code: movq 0x6cea08, %rax	 RIP: 49019c	 Bytes: 8
  %loadMem_49019c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49019c = call %struct.Memory* @routine_movq_0x6cea08___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49019c)
  store %struct.Memory* %call_49019c, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4901a4	 Bytes: 3
  %loadMem_4901a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901a4 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901a4)
  store %struct.Memory* %call_4901a4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4901a7	 Bytes: 8
  %loadMem_4901a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901a7 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901a7)
  store %struct.Memory* %call_4901a7, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 4901af	 Bytes: 6
  %loadMem_4901af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901af = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901af)
  store %struct.Memory* %call_4901af, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 4901b5	 Bytes: 3
  %loadMem_4901b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901b5 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901b5)
  store %struct.Memory* %call_4901b5, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4901b8	 Bytes: 3
  %loadMem_4901b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901b8 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901b8)
  store %struct.Memory* %call_4901b8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4901bb	 Bytes: 4
  %loadMem_4901bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901bb = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901bb)
  store %struct.Memory* %call_4901bb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4901bf	 Bytes: 8
  %loadMem_4901bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901bf = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901bf)
  store %struct.Memory* %call_4901bf, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 4901c7	 Bytes: 6
  %loadMem_4901c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901c7 = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901c7)
  store %struct.Memory* %call_4901c7, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 4901cd	 Bytes: 3
  %loadMem_4901cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901cd = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901cd)
  store %struct.Memory* %call_4901cd, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4901d0	 Bytes: 3
  %loadMem_4901d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901d0 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901d0)
  store %struct.Memory* %call_4901d0, %struct.Memory** %MEMORY

  ; Code: movswl (%rax,%rcx,2), %edx	 RIP: 4901d3	 Bytes: 4
  %loadMem_4901d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901d3 = call %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901d3)
  store %struct.Memory* %call_4901d3, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x10(%rbp)	 RIP: 4901d7	 Bytes: 3
  %loadMem_4901d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901d7 = call %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901d7)
  store %struct.Memory* %call_4901d7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cea08, %rax	 RIP: 4901da	 Bytes: 8
  %loadMem_4901da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901da = call %struct.Memory* @routine_movq_0x6cea08___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901da)
  store %struct.Memory* %call_4901da, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 4901e2	 Bytes: 4
  %loadMem_4901e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901e2 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901e2)
  store %struct.Memory* %call_4901e2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4901e6	 Bytes: 8
  %loadMem_4901e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901e6 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901e6)
  store %struct.Memory* %call_4901e6, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 4901ee	 Bytes: 6
  %loadMem_4901ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901ee = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901ee)
  store %struct.Memory* %call_4901ee, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 4901f4	 Bytes: 3
  %loadMem_4901f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901f4 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901f4)
  store %struct.Memory* %call_4901f4, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4901f7	 Bytes: 3
  %loadMem_4901f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901f7 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901f7)
  store %struct.Memory* %call_4901f7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4901fa	 Bytes: 4
  %loadMem_4901fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901fa = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901fa)
  store %struct.Memory* %call_4901fa, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4901fe	 Bytes: 8
  %loadMem_4901fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4901fe = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4901fe)
  store %struct.Memory* %call_4901fe, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 490206	 Bytes: 6
  %loadMem_490206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490206 = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490206)
  store %struct.Memory* %call_490206, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 49020c	 Bytes: 3
  %loadMem_49020c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49020c = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49020c)
  store %struct.Memory* %call_49020c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 49020f	 Bytes: 3
  %loadMem_49020f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49020f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49020f)
  store %struct.Memory* %call_49020f, %struct.Memory** %MEMORY

  ; Code: movswl (%rax,%rcx,2), %edx	 RIP: 490212	 Bytes: 4
  %loadMem_490212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490212 = call %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490212)
  store %struct.Memory* %call_490212, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x14(%rbp)	 RIP: 490216	 Bytes: 3
  %loadMem_490216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490216 = call %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490216)
  store %struct.Memory* %call_490216, %struct.Memory** %MEMORY

  ; Code: .L_490219:	 RIP: 490219	 Bytes: 0
  br label %block_.L_490219
block_.L_490219:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 490219	 Bytes: 4
  %loadMem_490219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490219 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490219)
  store %struct.Memory* %call_490219, %struct.Memory** %MEMORY

  ; Code: je .L_49022d	 RIP: 49021d	 Bytes: 6
  %loadMem_49021d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49021d = call %struct.Memory* @routine_je_.L_49022d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49021d, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_49021d, %struct.Memory** %MEMORY

  %loadBr_49021d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49021d = icmp eq i8 %loadBr_49021d, 1
  br i1 %cmpBr_49021d, label %block_.L_49022d, label %block_490223

block_490223:
  ; Code: cmpl $0x2, -0xc(%rbp)	 RIP: 490223	 Bytes: 4
  %loadMem_490223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490223 = call %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490223)
  store %struct.Memory* %call_490223, %struct.Memory** %MEMORY

  ; Code: jne .L_490604	 RIP: 490227	 Bytes: 6
  %loadMem_490227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490227 = call %struct.Memory* @routine_jne_.L_490604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490227, i8* %BRANCH_TAKEN, i64 989, i64 6, i64 6)
  store %struct.Memory* %call_490227, %struct.Memory** %MEMORY

  %loadBr_490227 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490227 = icmp eq i8 %loadBr_490227, 1
  br i1 %cmpBr_490227, label %block_.L_490604, label %block_.L_49022d

  ; Code: .L_49022d:	 RIP: 49022d	 Bytes: 0
block_.L_49022d:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 49022d	 Bytes: 4
  %loadMem_49022d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49022d = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49022d)
  store %struct.Memory* %call_49022d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x244(%rax)	 RIP: 490231	 Bytes: 7
  %loadMem_490231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490231 = call %struct.Memory* @routine_cmpl__0x0__0x244__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490231)
  store %struct.Memory* %call_490231, %struct.Memory** %MEMORY

  ; Code: je .L_490419	 RIP: 490238	 Bytes: 6
  %loadMem_490238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490238 = call %struct.Memory* @routine_je_.L_490419(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490238, i8* %BRANCH_TAKEN, i64 481, i64 6, i64 6)
  store %struct.Memory* %call_490238, %struct.Memory** %MEMORY

  %loadBr_490238 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490238 = icmp eq i8 %loadBr_490238, 1
  br i1 %cmpBr_490238, label %block_.L_490419, label %block_49023e

block_49023e:
  ; Code: cmpl $0x2, -0xc(%rbp)	 RIP: 49023e	 Bytes: 4
  %loadMem_49023e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49023e = call %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49023e)
  store %struct.Memory* %call_49023e, %struct.Memory** %MEMORY

  ; Code: jne .L_490419	 RIP: 490242	 Bytes: 6
  %loadMem_490242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490242 = call %struct.Memory* @routine_jne_.L_490419(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490242, i8* %BRANCH_TAKEN, i64 471, i64 6, i64 6)
  store %struct.Memory* %call_490242, %struct.Memory** %MEMORY

  %loadBr_490242 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490242 = icmp eq i8 %loadBr_490242, 1
  br i1 %cmpBr_490242, label %block_.L_490419, label %block_490248

block_490248:
  ; Code: cmpl $0x1, -0x8(%rbp)	 RIP: 490248	 Bytes: 4
  %loadMem_490248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490248 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490248)
  store %struct.Memory* %call_490248, %struct.Memory** %MEMORY

  ; Code: jne .L_490419	 RIP: 49024c	 Bytes: 6
  %loadMem_49024c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49024c = call %struct.Memory* @routine_jne_.L_490419(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49024c, i8* %BRANCH_TAKEN, i64 461, i64 6, i64 6)
  store %struct.Memory* %call_49024c, %struct.Memory** %MEMORY

  %loadBr_49024c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49024c = icmp eq i8 %loadBr_49024c, 1
  br i1 %cmpBr_49024c, label %block_.L_490419, label %block_490252

block_490252:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 490252	 Bytes: 4
  %loadMem_490252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490252 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490252)
  store %struct.Memory* %call_490252, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x244(%rax)	 RIP: 490256	 Bytes: 7
  %loadMem_490256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490256 = call %struct.Memory* @routine_cmpl__0x1__0x244__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490256)
  store %struct.Memory* %call_490256, %struct.Memory** %MEMORY

  ; Code: jne .L_49027b	 RIP: 49025d	 Bytes: 6
  %loadMem_49025d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49025d = call %struct.Memory* @routine_jne_.L_49027b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49025d, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_49025d, %struct.Memory** %MEMORY

  %loadBr_49025d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49025d = icmp eq i8 %loadBr_49025d, 1
  br i1 %cmpBr_49025d, label %block_.L_49027b, label %block_490263

block_490263:
  ; Code: movq 0x6cb900, %rax	 RIP: 490263	 Bytes: 8
  %loadMem_490263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490263 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490263)
  store %struct.Memory* %call_490263, %struct.Memory** %MEMORY

  ; Code: movq 0x11900(%rax), %rax	 RIP: 49026b	 Bytes: 7
  %loadMem_49026b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49026b = call %struct.Memory* @routine_movq_0x11900__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49026b)
  store %struct.Memory* %call_49026b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 490272	 Bytes: 4
  %loadMem_490272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490272 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490272)
  store %struct.Memory* %call_490272, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49028e	 RIP: 490276	 Bytes: 5
  %loadMem_490276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490276 = call %struct.Memory* @routine_jmpq_.L_49028e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490276, i64 24, i64 5)
  store %struct.Memory* %call_490276, %struct.Memory** %MEMORY

  br label %block_.L_49028e

  ; Code: .L_49027b:	 RIP: 49027b	 Bytes: 0
block_.L_49027b:

  ; Code: movq 0x6cb900, %rax	 RIP: 49027b	 Bytes: 8
  %loadMem_49027b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49027b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49027b)
  store %struct.Memory* %call_49027b, %struct.Memory** %MEMORY

  ; Code: movq 0x11908(%rax), %rax	 RIP: 490283	 Bytes: 7
  %loadMem_490283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490283 = call %struct.Memory* @routine_movq_0x11908__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490283)
  store %struct.Memory* %call_490283, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 49028a	 Bytes: 4
  %loadMem_49028a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49028a = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49028a)
  store %struct.Memory* %call_49028a, %struct.Memory** %MEMORY

  ; Code: .L_49028e:	 RIP: 49028e	 Bytes: 0
  br label %block_.L_49028e
block_.L_49028e:

  ; Code: movq -0x68(%rbp), %rax	 RIP: 49028e	 Bytes: 4
  %loadMem_49028e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49028e = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49028e)
  store %struct.Memory* %call_49028e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 490292	 Bytes: 4
  %loadMem_490292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490292 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490292)
  store %struct.Memory* %call_490292, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 490296	 Bytes: 4
  %loadMem_490296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490296 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490296)
  store %struct.Memory* %call_490296, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 49029a	 Bytes: 4
  %loadMem_49029a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49029a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49029a)
  store %struct.Memory* %call_49029a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 49029e	 Bytes: 4
  %loadMem_49029e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49029e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49029e)
  store %struct.Memory* %call_49029e, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4902a2	 Bytes: 4
  %loadMem_4902a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902a2 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902a2)
  store %struct.Memory* %call_4902a2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4902a6	 Bytes: 4
  %loadMem_4902a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902a6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902a6)
  store %struct.Memory* %call_4902a6, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4902aa	 Bytes: 3
  %loadMem_4902aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902aa = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902aa)
  store %struct.Memory* %call_4902aa, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4902ad	 Bytes: 3
  %loadMem_4902ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902ad = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902ad)
  store %struct.Memory* %call_4902ad, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4902b0	 Bytes: 4
  %loadMem_4902b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902b0 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902b0)
  store %struct.Memory* %call_4902b0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4902b4	 Bytes: 4
  %loadMem_4902b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902b4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902b4)
  store %struct.Memory* %call_4902b4, %struct.Memory** %MEMORY

  ; Code: movw (%rax), %dx	 RIP: 4902b8	 Bytes: 3
  %loadMem_4902b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902b8 = call %struct.Memory* @routine_movw___rax____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902b8)
  store %struct.Memory* %call_4902b8, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 4902bb	 Bytes: 8
  %loadMem_4902bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902bb = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902bb)
  store %struct.Memory* %call_4902bb, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 4902c3	 Bytes: 7
  %loadMem_4902c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902c3 = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902c3)
  store %struct.Memory* %call_4902c3, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4902ca	 Bytes: 3
  %loadMem_4902ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902ca = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902ca)
  store %struct.Memory* %call_4902ca, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4902cd	 Bytes: 8
  %loadMem_4902cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902cd = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902cd)
  store %struct.Memory* %call_4902cd, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %esi	 RIP: 4902d5	 Bytes: 6
  %loadMem_4902d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902d5 = call %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902d5)
  store %struct.Memory* %call_4902d5, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 4902db	 Bytes: 3
  %loadMem_4902db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902db = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902db)
  store %struct.Memory* %call_4902db, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 4902de	 Bytes: 3
  %loadMem_4902de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902de = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902de)
  store %struct.Memory* %call_4902de, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4902e1	 Bytes: 4
  %loadMem_4902e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902e1 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902e1)
  store %struct.Memory* %call_4902e1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4902e5	 Bytes: 8
  %loadMem_4902e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902e5 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902e5)
  store %struct.Memory* %call_4902e5, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %esi	 RIP: 4902ed	 Bytes: 6
  %loadMem_4902ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902ed = call %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902ed)
  store %struct.Memory* %call_4902ed, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 4902f3	 Bytes: 3
  %loadMem_4902f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902f3 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902f3)
  store %struct.Memory* %call_4902f3, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 4902f6	 Bytes: 3
  %loadMem_4902f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902f6 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902f6)
  store %struct.Memory* %call_4902f6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4902f9	 Bytes: 4
  %loadMem_4902f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902f9 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902f9)
  store %struct.Memory* %call_4902f9, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax)	 RIP: 4902fd	 Bytes: 3
  %loadMem_4902fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4902fd = call %struct.Memory* @routine_movw__dx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4902fd)
  store %struct.Memory* %call_4902fd, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 490300	 Bytes: 4
  %loadMem_490300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490300 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490300)
  store %struct.Memory* %call_490300, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 490304	 Bytes: 4
  %loadMem_490304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490304 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490304)
  store %struct.Memory* %call_490304, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490308	 Bytes: 4
  %loadMem_490308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490308 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490308)
  store %struct.Memory* %call_490308, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 49030c	 Bytes: 4
  %loadMem_49030c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49030c = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49030c)
  store %struct.Memory* %call_49030c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490310	 Bytes: 4
  %loadMem_490310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490310 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490310)
  store %struct.Memory* %call_490310, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 490314	 Bytes: 3
  %loadMem_490314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490314 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490314)
  store %struct.Memory* %call_490314, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 490317	 Bytes: 3
  %loadMem_490317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490317 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490317)
  store %struct.Memory* %call_490317, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 49031a	 Bytes: 4
  %loadMem_49031a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49031a = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49031a)
  store %struct.Memory* %call_49031a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 49031e	 Bytes: 4
  %loadMem_49031e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49031e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49031e)
  store %struct.Memory* %call_49031e, %struct.Memory** %MEMORY

  ; Code: movw 0x2(%rax), %dx	 RIP: 490322	 Bytes: 4
  %loadMem_490322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490322 = call %struct.Memory* @routine_movw_0x2__rax____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490322)
  store %struct.Memory* %call_490322, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 490326	 Bytes: 8
  %loadMem_490326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490326 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490326)
  store %struct.Memory* %call_490326, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 49032e	 Bytes: 7
  %loadMem_49032e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49032e = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49032e)
  store %struct.Memory* %call_49032e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 490335	 Bytes: 3
  %loadMem_490335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490335 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490335)
  store %struct.Memory* %call_490335, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490338	 Bytes: 8
  %loadMem_490338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490338 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490338)
  store %struct.Memory* %call_490338, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %esi	 RIP: 490340	 Bytes: 6
  %loadMem_490340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490340 = call %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490340)
  store %struct.Memory* %call_490340, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 490346	 Bytes: 3
  %loadMem_490346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490346 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490346)
  store %struct.Memory* %call_490346, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490349	 Bytes: 3
  %loadMem_490349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490349 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490349)
  store %struct.Memory* %call_490349, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 49034c	 Bytes: 4
  %loadMem_49034c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49034c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49034c)
  store %struct.Memory* %call_49034c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490350	 Bytes: 8
  %loadMem_490350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490350 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490350)
  store %struct.Memory* %call_490350, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %esi	 RIP: 490358	 Bytes: 6
  %loadMem_490358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490358 = call %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490358)
  store %struct.Memory* %call_490358, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 49035e	 Bytes: 3
  %loadMem_49035e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49035e = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49035e)
  store %struct.Memory* %call_49035e, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490361	 Bytes: 3
  %loadMem_490361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490361 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490361)
  store %struct.Memory* %call_490361, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490364	 Bytes: 4
  %loadMem_490364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490364 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490364)
  store %struct.Memory* %call_490364, %struct.Memory** %MEMORY

  ; Code: movw %dx, 0x2(%rax)	 RIP: 490368	 Bytes: 4
  %loadMem_490368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490368 = call %struct.Memory* @routine_movw__dx__0x2__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490368)
  store %struct.Memory* %call_490368, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 49036c	 Bytes: 8
  %loadMem_49036c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49036c = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49036c)
  store %struct.Memory* %call_49036c, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rax), %rax	 RIP: 490374	 Bytes: 7
  %loadMem_490374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490374 = call %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490374)
  store %struct.Memory* %call_490374, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 49037b	 Bytes: 3
  %loadMem_49037b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49037b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49037b)
  store %struct.Memory* %call_49037b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 49037e	 Bytes: 8
  %loadMem_49037e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49037e = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49037e)
  store %struct.Memory* %call_49037e, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %esi	 RIP: 490386	 Bytes: 6
  %loadMem_490386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490386 = call %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490386)
  store %struct.Memory* %call_490386, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 49038c	 Bytes: 3
  %loadMem_49038c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49038c = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49038c)
  store %struct.Memory* %call_49038c, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 49038f	 Bytes: 3
  %loadMem_49038f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49038f = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49038f)
  store %struct.Memory* %call_49038f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490392	 Bytes: 4
  %loadMem_490392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490392 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490392)
  store %struct.Memory* %call_490392, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490396	 Bytes: 8
  %loadMem_490396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490396 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490396)
  store %struct.Memory* %call_490396, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %esi	 RIP: 49039e	 Bytes: 6
  %loadMem_49039e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49039e = call %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49039e)
  store %struct.Memory* %call_49039e, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 4903a4	 Bytes: 3
  %loadMem_4903a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903a4 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903a4)
  store %struct.Memory* %call_4903a4, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 4903a7	 Bytes: 3
  %loadMem_4903a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903a7 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903a7)
  store %struct.Memory* %call_4903a7, %struct.Memory** %MEMORY

  ; Code: movw $0x0, (%rax,%rcx,2)	 RIP: 4903aa	 Bytes: 6
  %loadMem_4903aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903aa = call %struct.Memory* @routine_movw__0x0____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903aa)
  store %struct.Memory* %call_4903aa, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 4903b0	 Bytes: 8
  %loadMem_4903b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903b0 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903b0)
  store %struct.Memory* %call_4903b0, %struct.Memory** %MEMORY

  ; Code: addq $0x18, %rax	 RIP: 4903b8	 Bytes: 4
  %loadMem_4903b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903b8 = call %struct.Memory* @routine_addq__0x18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903b8)
  store %struct.Memory* %call_4903b8, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 4903bc	 Bytes: 3
  %loadMem_4903bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903bc = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903bc)
  store %struct.Memory* %call_4903bc, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %esi	 RIP: 4903bf	 Bytes: 3
  %loadMem_4903bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903bf = call %struct.Memory* @routine_addl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903bf)
  store %struct.Memory* %call_4903bf, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 4903c2	 Bytes: 3
  %loadMem_4903c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903c2 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903c2)
  store %struct.Memory* %call_4903c2, %struct.Memory** %MEMORY

  ; Code: imulq $0x108, %rcx, %rcx	 RIP: 4903c5	 Bytes: 7
  %loadMem_4903c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903c5 = call %struct.Memory* @routine_imulq__0x108___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903c5)
  store %struct.Memory* %call_4903c5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4903cc	 Bytes: 3
  %loadMem_4903cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903cc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903cc)
  store %struct.Memory* %call_4903cc, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4903cf	 Bytes: 3
  %loadMem_4903cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903cf = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903cf)
  store %struct.Memory* %call_4903cf, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 4903d2	 Bytes: 8
  %loadMem_4903d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903d2 = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903d2)
  store %struct.Memory* %call_4903d2, %struct.Memory** %MEMORY

  ; Code: movq 0x1958(%rcx), %rcx	 RIP: 4903da	 Bytes: 7
  %loadMem_4903da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903da = call %struct.Memory* @routine_movq_0x1958__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903da)
  store %struct.Memory* %call_4903da, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 4903e1	 Bytes: 3
  %loadMem_4903e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903e1 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903e1)
  store %struct.Memory* %call_4903e1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 4903e4	 Bytes: 8
  %loadMem_4903e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903e4 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903e4)
  store %struct.Memory* %call_4903e4, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rdi), %esi	 RIP: 4903ec	 Bytes: 6
  %loadMem_4903ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903ec = call %struct.Memory* @routine_movl_0x90__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903ec)
  store %struct.Memory* %call_4903ec, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 4903f2	 Bytes: 3
  %loadMem_4903f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903f2 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903f2)
  store %struct.Memory* %call_4903f2, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 4903f5	 Bytes: 3
  %loadMem_4903f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903f5 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903f5)
  store %struct.Memory* %call_4903f5, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdi,8), %rcx	 RIP: 4903f8	 Bytes: 4
  %loadMem_4903f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903f8 = call %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903f8)
  store %struct.Memory* %call_4903f8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 4903fc	 Bytes: 8
  %loadMem_4903fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4903fc = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4903fc)
  store %struct.Memory* %call_4903fc, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rdi), %esi	 RIP: 490404	 Bytes: 6
  %loadMem_490404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490404 = call %struct.Memory* @routine_movl_0x94__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490404)
  store %struct.Memory* %call_490404, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 49040a	 Bytes: 3
  %loadMem_49040a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49040a = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49040a)
  store %struct.Memory* %call_49040a, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 49040d	 Bytes: 3
  %loadMem_49040d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49040d = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49040d)
  store %struct.Memory* %call_49040d, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdi,8)	 RIP: 490410	 Bytes: 4
  %loadMem_490410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490410 = call %struct.Memory* @routine_movq__rax____rcx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490410)
  store %struct.Memory* %call_490410, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4905ff	 RIP: 490414	 Bytes: 5
  %loadMem_490414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490414 = call %struct.Memory* @routine_jmpq_.L_4905ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490414, i64 491, i64 5)
  store %struct.Memory* %call_490414, %struct.Memory** %MEMORY

  br label %block_.L_4905ff

  ; Code: .L_490419:	 RIP: 490419	 Bytes: 0
block_.L_490419:

  ; Code: movq 0x6cb900, %rax	 RIP: 490419	 Bytes: 8
  %loadMem_490419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490419 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490419)
  store %struct.Memory* %call_490419, %struct.Memory** %MEMORY

  ; Code: movq 0x118f8(%rax), %rax	 RIP: 490421	 Bytes: 7
  %loadMem_490421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490421 = call %struct.Memory* @routine_movq_0x118f8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490421)
  store %struct.Memory* %call_490421, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 490428	 Bytes: 4
  %loadMem_490428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490428 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490428)
  store %struct.Memory* %call_490428, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 49042c	 Bytes: 4
  %loadMem_49042c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49042c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49042c)
  store %struct.Memory* %call_49042c, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 490430	 Bytes: 4
  %loadMem_490430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490430 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490430)
  store %struct.Memory* %call_490430, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490434	 Bytes: 4
  %loadMem_490434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490434 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490434)
  store %struct.Memory* %call_490434, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 490438	 Bytes: 3
  %loadMem_490438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490438 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490438)
  store %struct.Memory* %call_490438, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 49043b	 Bytes: 4
  %loadMem_49043b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49043b = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49043b)
  store %struct.Memory* %call_49043b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 49043f	 Bytes: 4
  %loadMem_49043f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49043f = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49043f)
  store %struct.Memory* %call_49043f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 490443	 Bytes: 4
  %loadMem_490443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490443 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490443)
  store %struct.Memory* %call_490443, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490447	 Bytes: 4
  %loadMem_490447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490447 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490447)
  store %struct.Memory* %call_490447, %struct.Memory** %MEMORY

  ; Code: movw (%rax), %dx	 RIP: 49044b	 Bytes: 3
  %loadMem_49044b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49044b = call %struct.Memory* @routine_movw___rax____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49044b)
  store %struct.Memory* %call_49044b, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 49044e	 Bytes: 8
  %loadMem_49044e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49044e = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49044e)
  store %struct.Memory* %call_49044e, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 490456	 Bytes: 7
  %loadMem_490456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490456 = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490456)
  store %struct.Memory* %call_490456, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 49045d	 Bytes: 3
  %loadMem_49045d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49045d = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49045d)
  store %struct.Memory* %call_49045d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490460	 Bytes: 8
  %loadMem_490460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490460 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490460)
  store %struct.Memory* %call_490460, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %esi	 RIP: 490468	 Bytes: 6
  %loadMem_490468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490468 = call %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490468)
  store %struct.Memory* %call_490468, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 49046e	 Bytes: 3
  %loadMem_49046e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49046e = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49046e)
  store %struct.Memory* %call_49046e, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490471	 Bytes: 3
  %loadMem_490471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490471 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490471)
  store %struct.Memory* %call_490471, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490474	 Bytes: 4
  %loadMem_490474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490474 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490474)
  store %struct.Memory* %call_490474, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490478	 Bytes: 8
  %loadMem_490478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490478 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490478)
  store %struct.Memory* %call_490478, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %esi	 RIP: 490480	 Bytes: 6
  %loadMem_490480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490480 = call %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490480)
  store %struct.Memory* %call_490480, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 490486	 Bytes: 3
  %loadMem_490486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490486 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490486)
  store %struct.Memory* %call_490486, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490489	 Bytes: 3
  %loadMem_490489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490489 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490489)
  store %struct.Memory* %call_490489, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 49048c	 Bytes: 4
  %loadMem_49048c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49048c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49048c)
  store %struct.Memory* %call_49048c, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax)	 RIP: 490490	 Bytes: 3
  %loadMem_490490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490490 = call %struct.Memory* @routine_movw__dx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490490)
  store %struct.Memory* %call_490490, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 490493	 Bytes: 8
  %loadMem_490493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490493 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490493)
  store %struct.Memory* %call_490493, %struct.Memory** %MEMORY

  ; Code: movq 0x118f8(%rax), %rax	 RIP: 49049b	 Bytes: 7
  %loadMem_49049b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49049b = call %struct.Memory* @routine_movq_0x118f8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49049b)
  store %struct.Memory* %call_49049b, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 4904a2	 Bytes: 4
  %loadMem_4904a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904a2 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904a2)
  store %struct.Memory* %call_4904a2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4904a6	 Bytes: 4
  %loadMem_4904a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904a6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904a6)
  store %struct.Memory* %call_4904a6, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4904aa	 Bytes: 4
  %loadMem_4904aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904aa = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904aa)
  store %struct.Memory* %call_4904aa, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4904ae	 Bytes: 4
  %loadMem_4904ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904ae = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904ae)
  store %struct.Memory* %call_4904ae, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4904b2	 Bytes: 3
  %loadMem_4904b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904b2 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904b2)
  store %struct.Memory* %call_4904b2, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4904b5	 Bytes: 4
  %loadMem_4904b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904b5 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904b5)
  store %struct.Memory* %call_4904b5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4904b9	 Bytes: 4
  %loadMem_4904b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904b9 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904b9)
  store %struct.Memory* %call_4904b9, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4904bd	 Bytes: 4
  %loadMem_4904bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904bd = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904bd)
  store %struct.Memory* %call_4904bd, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4904c1	 Bytes: 4
  %loadMem_4904c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904c1 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904c1)
  store %struct.Memory* %call_4904c1, %struct.Memory** %MEMORY

  ; Code: movw 0x2(%rax), %dx	 RIP: 4904c5	 Bytes: 4
  %loadMem_4904c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904c5 = call %struct.Memory* @routine_movw_0x2__rax____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904c5)
  store %struct.Memory* %call_4904c5, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 4904c9	 Bytes: 8
  %loadMem_4904c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904c9 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904c9)
  store %struct.Memory* %call_4904c9, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 4904d1	 Bytes: 7
  %loadMem_4904d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904d1 = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904d1)
  store %struct.Memory* %call_4904d1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4904d8	 Bytes: 3
  %loadMem_4904d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904d8 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904d8)
  store %struct.Memory* %call_4904d8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4904db	 Bytes: 8
  %loadMem_4904db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904db = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904db)
  store %struct.Memory* %call_4904db, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %esi	 RIP: 4904e3	 Bytes: 6
  %loadMem_4904e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904e3 = call %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904e3)
  store %struct.Memory* %call_4904e3, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 4904e9	 Bytes: 3
  %loadMem_4904e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904e9 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904e9)
  store %struct.Memory* %call_4904e9, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 4904ec	 Bytes: 3
  %loadMem_4904ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904ec = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904ec)
  store %struct.Memory* %call_4904ec, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4904ef	 Bytes: 4
  %loadMem_4904ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904ef = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904ef)
  store %struct.Memory* %call_4904ef, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4904f3	 Bytes: 8
  %loadMem_4904f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904f3 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904f3)
  store %struct.Memory* %call_4904f3, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %esi	 RIP: 4904fb	 Bytes: 6
  %loadMem_4904fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4904fb = call %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4904fb)
  store %struct.Memory* %call_4904fb, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 490501	 Bytes: 3
  %loadMem_490501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490501 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490501)
  store %struct.Memory* %call_490501, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490504	 Bytes: 3
  %loadMem_490504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490504 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490504)
  store %struct.Memory* %call_490504, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490507	 Bytes: 4
  %loadMem_490507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490507 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490507)
  store %struct.Memory* %call_490507, %struct.Memory** %MEMORY

  ; Code: movw %dx, 0x2(%rax)	 RIP: 49050b	 Bytes: 4
  %loadMem_49050b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49050b = call %struct.Memory* @routine_movw__dx__0x2__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49050b)
  store %struct.Memory* %call_49050b, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %esi	 RIP: 49050f	 Bytes: 3
  %loadMem_49050f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49050f = call %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49050f)
  store %struct.Memory* %call_49050f, %struct.Memory** %MEMORY

  ; Code: movw %si, %dx	 RIP: 490512	 Bytes: 3
  %loadMem_490512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490512 = call %struct.Memory* @routine_movw__si___dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490512)
  store %struct.Memory* %call_490512, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 490515	 Bytes: 8
  %loadMem_490515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490515 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490515)
  store %struct.Memory* %call_490515, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rax), %rax	 RIP: 49051d	 Bytes: 7
  %loadMem_49051d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49051d = call %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49051d)
  store %struct.Memory* %call_49051d, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 490524	 Bytes: 3
  %loadMem_490524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490524 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490524)
  store %struct.Memory* %call_490524, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490527	 Bytes: 8
  %loadMem_490527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490527 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490527)
  store %struct.Memory* %call_490527, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %esi	 RIP: 49052f	 Bytes: 6
  %loadMem_49052f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49052f = call %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49052f)
  store %struct.Memory* %call_49052f, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 490535	 Bytes: 3
  %loadMem_490535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490535 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490535)
  store %struct.Memory* %call_490535, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490538	 Bytes: 3
  %loadMem_490538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490538 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490538)
  store %struct.Memory* %call_490538, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 49053b	 Bytes: 4
  %loadMem_49053b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49053b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49053b)
  store %struct.Memory* %call_49053b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 49053f	 Bytes: 8
  %loadMem_49053f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49053f = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49053f)
  store %struct.Memory* %call_49053f, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %esi	 RIP: 490547	 Bytes: 6
  %loadMem_490547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490547 = call %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490547)
  store %struct.Memory* %call_490547, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 49054d	 Bytes: 3
  %loadMem_49054d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49054d = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49054d)
  store %struct.Memory* %call_49054d, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490550	 Bytes: 3
  %loadMem_490550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490550 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490550)
  store %struct.Memory* %call_490550, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax,%rcx,2)	 RIP: 490553	 Bytes: 4
  %loadMem_490553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490553 = call %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490553)
  store %struct.Memory* %call_490553, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 490557	 Bytes: 8
  %loadMem_490557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490557 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490557)
  store %struct.Memory* %call_490557, %struct.Memory** %MEMORY

  ; Code: addq $0x18, %rax	 RIP: 49055f	 Bytes: 4
  %loadMem_49055f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49055f = call %struct.Memory* @routine_addq__0x18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49055f)
  store %struct.Memory* %call_49055f, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 490563	 Bytes: 3
  %loadMem_490563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490563 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490563)
  store %struct.Memory* %call_490563, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %esi	 RIP: 490566	 Bytes: 3
  %loadMem_490566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490566 = call %struct.Memory* @routine_addl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490566)
  store %struct.Memory* %call_490566, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490569	 Bytes: 3
  %loadMem_490569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490569 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490569)
  store %struct.Memory* %call_490569, %struct.Memory** %MEMORY

  ; Code: imulq $0x108, %rcx, %rcx	 RIP: 49056c	 Bytes: 7
  %loadMem_49056c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49056c = call %struct.Memory* @routine_imulq__0x108___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49056c)
  store %struct.Memory* %call_49056c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 490573	 Bytes: 3
  %loadMem_490573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490573 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490573)
  store %struct.Memory* %call_490573, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 490576	 Bytes: 8
  %loadMem_490576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490576 = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490576)
  store %struct.Memory* %call_490576, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rcx), %rcx	 RIP: 49057e	 Bytes: 7
  %loadMem_49057e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49057e = call %struct.Memory* @routine_movq_0x1950__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49057e)
  store %struct.Memory* %call_49057e, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 490585	 Bytes: 3
  %loadMem_490585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490585 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490585)
  store %struct.Memory* %call_490585, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 490588	 Bytes: 8
  %loadMem_490588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490588 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490588)
  store %struct.Memory* %call_490588, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rdi), %esi	 RIP: 490590	 Bytes: 6
  %loadMem_490590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490590 = call %struct.Memory* @routine_movl_0x90__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490590)
  store %struct.Memory* %call_490590, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 490596	 Bytes: 3
  %loadMem_490596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490596 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490596)
  store %struct.Memory* %call_490596, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 490599	 Bytes: 3
  %loadMem_490599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490599 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490599)
  store %struct.Memory* %call_490599, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdi,8), %rcx	 RIP: 49059c	 Bytes: 4
  %loadMem_49059c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49059c = call %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49059c)
  store %struct.Memory* %call_49059c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 4905a0	 Bytes: 8
  %loadMem_4905a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905a0 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905a0)
  store %struct.Memory* %call_4905a0, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rdi), %esi	 RIP: 4905a8	 Bytes: 6
  %loadMem_4905a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905a8 = call %struct.Memory* @routine_movl_0x94__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905a8)
  store %struct.Memory* %call_4905a8, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 4905ae	 Bytes: 3
  %loadMem_4905ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905ae = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905ae)
  store %struct.Memory* %call_4905ae, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 4905b1	 Bytes: 3
  %loadMem_4905b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905b1 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905b1)
  store %struct.Memory* %call_4905b1, %struct.Memory** %MEMORY

  ; Code: movswq (%rcx,%rdi,2), %rcx	 RIP: 4905b4	 Bytes: 5
  %loadMem_4905b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905b4 = call %struct.Memory* @routine_movswq___rcx__rdi_2____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905b4)
  store %struct.Memory* %call_4905b4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4905b9	 Bytes: 4
  %loadMem_4905b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905b9 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905b9)
  store %struct.Memory* %call_4905b9, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 4905bd	 Bytes: 8
  %loadMem_4905bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905bd = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905bd)
  store %struct.Memory* %call_4905bd, %struct.Memory** %MEMORY

  ; Code: movq 0x1958(%rcx), %rcx	 RIP: 4905c5	 Bytes: 7
  %loadMem_4905c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905c5 = call %struct.Memory* @routine_movq_0x1958__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905c5)
  store %struct.Memory* %call_4905c5, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 4905cc	 Bytes: 3
  %loadMem_4905cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905cc = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905cc)
  store %struct.Memory* %call_4905cc, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 4905cf	 Bytes: 8
  %loadMem_4905cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905cf = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905cf)
  store %struct.Memory* %call_4905cf, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rdi), %esi	 RIP: 4905d7	 Bytes: 6
  %loadMem_4905d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905d7 = call %struct.Memory* @routine_movl_0x90__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905d7)
  store %struct.Memory* %call_4905d7, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 4905dd	 Bytes: 3
  %loadMem_4905dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905dd = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905dd)
  store %struct.Memory* %call_4905dd, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 4905e0	 Bytes: 3
  %loadMem_4905e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905e0 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905e0)
  store %struct.Memory* %call_4905e0, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdi,8), %rcx	 RIP: 4905e3	 Bytes: 4
  %loadMem_4905e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905e3 = call %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905e3)
  store %struct.Memory* %call_4905e3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 4905e7	 Bytes: 8
  %loadMem_4905e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905e7 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905e7)
  store %struct.Memory* %call_4905e7, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rdi), %esi	 RIP: 4905ef	 Bytes: 6
  %loadMem_4905ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905ef = call %struct.Memory* @routine_movl_0x94__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905ef)
  store %struct.Memory* %call_4905ef, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 4905f5	 Bytes: 3
  %loadMem_4905f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905f5 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905f5)
  store %struct.Memory* %call_4905f5, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 4905f8	 Bytes: 3
  %loadMem_4905f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905f8 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905f8)
  store %struct.Memory* %call_4905f8, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdi,8)	 RIP: 4905fb	 Bytes: 4
  %loadMem_4905fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905fb = call %struct.Memory* @routine_movq__rax____rcx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905fb)
  store %struct.Memory* %call_4905fb, %struct.Memory** %MEMORY

  ; Code: .L_4905ff:	 RIP: 4905ff	 Bytes: 0
  br label %block_.L_4905ff
block_.L_4905ff:

  ; Code: jmpq .L_49071d	 RIP: 4905ff	 Bytes: 5
  %loadMem_4905ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4905ff = call %struct.Memory* @routine_jmpq_.L_49071d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4905ff, i64 286, i64 5)
  store %struct.Memory* %call_4905ff, %struct.Memory** %MEMORY

  br label %block_.L_49071d

  ; Code: .L_490604:	 RIP: 490604	 Bytes: 0
block_.L_490604:

  ; Code: movq 0x70fcf0, %rax	 RIP: 490604	 Bytes: 8
  %loadMem_490604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490604 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490604)
  store %struct.Memory* %call_490604, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 49060c	 Bytes: 7
  %loadMem_49060c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49060c = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49060c)
  store %struct.Memory* %call_49060c, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 490613	 Bytes: 3
  %loadMem_490613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490613 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490613)
  store %struct.Memory* %call_490613, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490616	 Bytes: 8
  %loadMem_490616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490616 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490616)
  store %struct.Memory* %call_490616, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 49061e	 Bytes: 6
  %loadMem_49061e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49061e = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49061e)
  store %struct.Memory* %call_49061e, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 490624	 Bytes: 3
  %loadMem_490624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490624 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490624)
  store %struct.Memory* %call_490624, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 490627	 Bytes: 3
  %loadMem_490627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490627 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490627)
  store %struct.Memory* %call_490627, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 49062a	 Bytes: 4
  %loadMem_49062a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49062a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49062a)
  store %struct.Memory* %call_49062a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 49062e	 Bytes: 8
  %loadMem_49062e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49062e = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49062e)
  store %struct.Memory* %call_49062e, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 490636	 Bytes: 6
  %loadMem_490636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490636 = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490636)
  store %struct.Memory* %call_490636, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 49063c	 Bytes: 3
  %loadMem_49063c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49063c = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49063c)
  store %struct.Memory* %call_49063c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 49063f	 Bytes: 3
  %loadMem_49063f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49063f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49063f)
  store %struct.Memory* %call_49063f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490642	 Bytes: 4
  %loadMem_490642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490642 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490642)
  store %struct.Memory* %call_490642, %struct.Memory** %MEMORY

  ; Code: movw $0x0, (%rax)	 RIP: 490646	 Bytes: 5
  %loadMem_490646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490646 = call %struct.Memory* @routine_movw__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490646)
  store %struct.Memory* %call_490646, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 49064b	 Bytes: 8
  %loadMem_49064b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49064b = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49064b)
  store %struct.Memory* %call_49064b, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 490653	 Bytes: 7
  %loadMem_490653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490653 = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490653)
  store %struct.Memory* %call_490653, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 49065a	 Bytes: 3
  %loadMem_49065a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49065a = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49065a)
  store %struct.Memory* %call_49065a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 49065d	 Bytes: 8
  %loadMem_49065d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49065d = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49065d)
  store %struct.Memory* %call_49065d, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 490665	 Bytes: 6
  %loadMem_490665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490665 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490665)
  store %struct.Memory* %call_490665, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 49066b	 Bytes: 3
  %loadMem_49066b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49066b = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49066b)
  store %struct.Memory* %call_49066b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 49066e	 Bytes: 3
  %loadMem_49066e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49066e = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49066e)
  store %struct.Memory* %call_49066e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490671	 Bytes: 4
  %loadMem_490671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490671 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490671)
  store %struct.Memory* %call_490671, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490675	 Bytes: 8
  %loadMem_490675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490675 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490675)
  store %struct.Memory* %call_490675, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 49067d	 Bytes: 6
  %loadMem_49067d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49067d = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49067d)
  store %struct.Memory* %call_49067d, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 490683	 Bytes: 3
  %loadMem_490683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490683 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490683)
  store %struct.Memory* %call_490683, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 490686	 Bytes: 3
  %loadMem_490686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490686 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490686)
  store %struct.Memory* %call_490686, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490689	 Bytes: 4
  %loadMem_490689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490689 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490689)
  store %struct.Memory* %call_490689, %struct.Memory** %MEMORY

  ; Code: movw $0x0, 0x2(%rax)	 RIP: 49068d	 Bytes: 6
  %loadMem_49068d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49068d = call %struct.Memory* @routine_movw__0x0__0x2__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49068d)
  store %struct.Memory* %call_49068d, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 490693	 Bytes: 8
  %loadMem_490693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490693 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490693)
  store %struct.Memory* %call_490693, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rax), %rax	 RIP: 49069b	 Bytes: 7
  %loadMem_49069b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49069b = call %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49069b)
  store %struct.Memory* %call_49069b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4906a2	 Bytes: 3
  %loadMem_4906a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906a2 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906a2)
  store %struct.Memory* %call_4906a2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4906a5	 Bytes: 8
  %loadMem_4906a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906a5 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906a5)
  store %struct.Memory* %call_4906a5, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 4906ad	 Bytes: 6
  %loadMem_4906ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906ad = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906ad)
  store %struct.Memory* %call_4906ad, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 4906b3	 Bytes: 3
  %loadMem_4906b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906b3 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906b3)
  store %struct.Memory* %call_4906b3, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4906b6	 Bytes: 3
  %loadMem_4906b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906b6 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906b6)
  store %struct.Memory* %call_4906b6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4906b9	 Bytes: 4
  %loadMem_4906b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906b9 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906b9)
  store %struct.Memory* %call_4906b9, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4906bd	 Bytes: 8
  %loadMem_4906bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906bd = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906bd)
  store %struct.Memory* %call_4906bd, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 4906c5	 Bytes: 6
  %loadMem_4906c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906c5 = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906c5)
  store %struct.Memory* %call_4906c5, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 4906cb	 Bytes: 3
  %loadMem_4906cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906cb = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906cb)
  store %struct.Memory* %call_4906cb, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4906ce	 Bytes: 3
  %loadMem_4906ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906ce = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906ce)
  store %struct.Memory* %call_4906ce, %struct.Memory** %MEMORY

  ; Code: movw $0xffff, (%rax,%rcx,2)	 RIP: 4906d1	 Bytes: 6
  %loadMem_4906d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906d1 = call %struct.Memory* @routine_movw__0xffff____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906d1)
  store %struct.Memory* %call_4906d1, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 4906d7	 Bytes: 8
  %loadMem_4906d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906d7 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906d7)
  store %struct.Memory* %call_4906d7, %struct.Memory** %MEMORY

  ; Code: movq 0x1958(%rax), %rax	 RIP: 4906df	 Bytes: 7
  %loadMem_4906df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906df = call %struct.Memory* @routine_movq_0x1958__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906df)
  store %struct.Memory* %call_4906df, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4906e6	 Bytes: 3
  %loadMem_4906e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906e6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906e6)
  store %struct.Memory* %call_4906e6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4906e9	 Bytes: 8
  %loadMem_4906e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906e9 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906e9)
  store %struct.Memory* %call_4906e9, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 4906f1	 Bytes: 6
  %loadMem_4906f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906f1 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906f1)
  store %struct.Memory* %call_4906f1, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 4906f7	 Bytes: 3
  %loadMem_4906f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906f7 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906f7)
  store %struct.Memory* %call_4906f7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4906fa	 Bytes: 3
  %loadMem_4906fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906fa = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906fa)
  store %struct.Memory* %call_4906fa, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4906fd	 Bytes: 4
  %loadMem_4906fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4906fd = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4906fd)
  store %struct.Memory* %call_4906fd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490701	 Bytes: 8
  %loadMem_490701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490701 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490701)
  store %struct.Memory* %call_490701, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 490709	 Bytes: 6
  %loadMem_490709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490709 = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490709)
  store %struct.Memory* %call_490709, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 49070f	 Bytes: 3
  %loadMem_49070f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49070f = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49070f)
  store %struct.Memory* %call_49070f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 490712	 Bytes: 3
  %loadMem_490712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490712 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490712)
  store %struct.Memory* %call_490712, %struct.Memory** %MEMORY

  ; Code: movq $0xffffffffffffffff, (%rax,%rcx,8)	 RIP: 490715	 Bytes: 8
  %loadMem_490715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490715 = call %struct.Memory* @routine_movq__0xffffffffffffffff____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490715)
  store %struct.Memory* %call_490715, %struct.Memory** %MEMORY

  ; Code: .L_49071d:	 RIP: 49071d	 Bytes: 0
  br label %block_.L_49071d
block_.L_49071d:

  ; Code: cmpl $0x1, -0xc(%rbp)	 RIP: 49071d	 Bytes: 4
  %loadMem_49071d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49071d = call %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49071d)
  store %struct.Memory* %call_49071d, %struct.Memory** %MEMORY

  ; Code: je .L_490731	 RIP: 490721	 Bytes: 6
  %loadMem_490721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490721 = call %struct.Memory* @routine_je_.L_490731(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490721, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_490721, %struct.Memory** %MEMORY

  %loadBr_490721 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490721 = icmp eq i8 %loadBr_490721, 1
  br i1 %cmpBr_490721, label %block_.L_490731, label %block_490727

block_490727:
  ; Code: cmpl $0x2, -0xc(%rbp)	 RIP: 490727	 Bytes: 4
  %loadMem_490727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490727 = call %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490727)
  store %struct.Memory* %call_490727, %struct.Memory** %MEMORY

  ; Code: jne .L_490b15	 RIP: 49072b	 Bytes: 6
  %loadMem_49072b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49072b = call %struct.Memory* @routine_jne_.L_490b15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49072b, i8* %BRANCH_TAKEN, i64 1002, i64 6, i64 6)
  store %struct.Memory* %call_49072b, %struct.Memory** %MEMORY

  %loadBr_49072b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49072b = icmp eq i8 %loadBr_49072b, 1
  br i1 %cmpBr_49072b, label %block_.L_490b15, label %block_.L_490731

  ; Code: .L_490731:	 RIP: 490731	 Bytes: 0
block_.L_490731:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 490731	 Bytes: 4
  %loadMem_490731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490731 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490731)
  store %struct.Memory* %call_490731, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x244(%rax)	 RIP: 490735	 Bytes: 7
  %loadMem_490735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490735 = call %struct.Memory* @routine_cmpl__0x0__0x244__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490735)
  store %struct.Memory* %call_490735, %struct.Memory** %MEMORY

  ; Code: je .L_490923	 RIP: 49073c	 Bytes: 6
  %loadMem_49073c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49073c = call %struct.Memory* @routine_je_.L_490923(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49073c, i8* %BRANCH_TAKEN, i64 487, i64 6, i64 6)
  store %struct.Memory* %call_49073c, %struct.Memory** %MEMORY

  %loadBr_49073c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49073c = icmp eq i8 %loadBr_49073c, 1
  br i1 %cmpBr_49073c, label %block_.L_490923, label %block_490742

block_490742:
  ; Code: cmpl $0x2, -0xc(%rbp)	 RIP: 490742	 Bytes: 4
  %loadMem_490742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490742 = call %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490742)
  store %struct.Memory* %call_490742, %struct.Memory** %MEMORY

  ; Code: jne .L_490923	 RIP: 490746	 Bytes: 6
  %loadMem_490746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490746 = call %struct.Memory* @routine_jne_.L_490923(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490746, i8* %BRANCH_TAKEN, i64 477, i64 6, i64 6)
  store %struct.Memory* %call_490746, %struct.Memory** %MEMORY

  %loadBr_490746 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490746 = icmp eq i8 %loadBr_490746, 1
  br i1 %cmpBr_490746, label %block_.L_490923, label %block_49074c

block_49074c:
  ; Code: cmpl $0x1, -0x8(%rbp)	 RIP: 49074c	 Bytes: 4
  %loadMem_49074c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49074c = call %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49074c)
  store %struct.Memory* %call_49074c, %struct.Memory** %MEMORY

  ; Code: jne .L_490923	 RIP: 490750	 Bytes: 6
  %loadMem_490750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490750 = call %struct.Memory* @routine_jne_.L_490923(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490750, i8* %BRANCH_TAKEN, i64 467, i64 6, i64 6)
  store %struct.Memory* %call_490750, %struct.Memory** %MEMORY

  %loadBr_490750 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490750 = icmp eq i8 %loadBr_490750, 1
  br i1 %cmpBr_490750, label %block_.L_490923, label %block_490756

block_490756:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 490756	 Bytes: 4
  %loadMem_490756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490756 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490756)
  store %struct.Memory* %call_490756, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x244(%rax)	 RIP: 49075a	 Bytes: 7
  %loadMem_49075a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49075a = call %struct.Memory* @routine_cmpl__0x1__0x244__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49075a)
  store %struct.Memory* %call_49075a, %struct.Memory** %MEMORY

  ; Code: jne .L_49077f	 RIP: 490761	 Bytes: 6
  %loadMem_490761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490761 = call %struct.Memory* @routine_jne_.L_49077f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490761, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_490761, %struct.Memory** %MEMORY

  %loadBr_490761 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490761 = icmp eq i8 %loadBr_490761, 1
  br i1 %cmpBr_490761, label %block_.L_49077f, label %block_490767

block_490767:
  ; Code: movq 0x6cb900, %rax	 RIP: 490767	 Bytes: 8
  %loadMem_490767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490767 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490767)
  store %struct.Memory* %call_490767, %struct.Memory** %MEMORY

  ; Code: movq 0x11900(%rax), %rax	 RIP: 49076f	 Bytes: 7
  %loadMem_49076f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49076f = call %struct.Memory* @routine_movq_0x11900__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49076f)
  store %struct.Memory* %call_49076f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 490776	 Bytes: 4
  %loadMem_490776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490776 = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490776)
  store %struct.Memory* %call_490776, %struct.Memory** %MEMORY

  ; Code: jmpq .L_490792	 RIP: 49077a	 Bytes: 5
  %loadMem_49077a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49077a = call %struct.Memory* @routine_jmpq_.L_490792(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49077a, i64 24, i64 5)
  store %struct.Memory* %call_49077a, %struct.Memory** %MEMORY

  br label %block_.L_490792

  ; Code: .L_49077f:	 RIP: 49077f	 Bytes: 0
block_.L_49077f:

  ; Code: movq 0x6cb900, %rax	 RIP: 49077f	 Bytes: 8
  %loadMem_49077f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49077f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49077f)
  store %struct.Memory* %call_49077f, %struct.Memory** %MEMORY

  ; Code: movq 0x11908(%rax), %rax	 RIP: 490787	 Bytes: 7
  %loadMem_490787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490787 = call %struct.Memory* @routine_movq_0x11908__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490787)
  store %struct.Memory* %call_490787, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 49078e	 Bytes: 4
  %loadMem_49078e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49078e = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49078e)
  store %struct.Memory* %call_49078e, %struct.Memory** %MEMORY

  ; Code: .L_490792:	 RIP: 490792	 Bytes: 0
  br label %block_.L_490792
block_.L_490792:

  ; Code: movq -0x70(%rbp), %rax	 RIP: 490792	 Bytes: 4
  %loadMem_490792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490792 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490792)
  store %struct.Memory* %call_490792, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x50(%rbp)	 RIP: 490796	 Bytes: 4
  %loadMem_490796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490796 = call %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490796)
  store %struct.Memory* %call_490796, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 49079a	 Bytes: 4
  %loadMem_49079a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49079a = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49079a)
  store %struct.Memory* %call_49079a, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 49079e	 Bytes: 4
  %loadMem_49079e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49079e = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49079e)
  store %struct.Memory* %call_49079e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4907a2	 Bytes: 4
  %loadMem_4907a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907a2 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907a2)
  store %struct.Memory* %call_4907a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4907a6	 Bytes: 4
  %loadMem_4907a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907a6 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907a6)
  store %struct.Memory* %call_4907a6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4907aa	 Bytes: 4
  %loadMem_4907aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907aa = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907aa)
  store %struct.Memory* %call_4907aa, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 4907ae	 Bytes: 4
  %loadMem_4907ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907ae = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907ae)
  store %struct.Memory* %call_4907ae, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4907b2	 Bytes: 3
  %loadMem_4907b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907b2 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907b2)
  store %struct.Memory* %call_4907b2, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4907b5	 Bytes: 4
  %loadMem_4907b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907b5 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907b5)
  store %struct.Memory* %call_4907b5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4907b9	 Bytes: 4
  %loadMem_4907b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907b9 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907b9)
  store %struct.Memory* %call_4907b9, %struct.Memory** %MEMORY

  ; Code: movw (%rax), %dx	 RIP: 4907bd	 Bytes: 3
  %loadMem_4907bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907bd = call %struct.Memory* @routine_movw___rax____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907bd)
  store %struct.Memory* %call_4907bd, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 4907c0	 Bytes: 8
  %loadMem_4907c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907c0 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907c0)
  store %struct.Memory* %call_4907c0, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 4907c8	 Bytes: 7
  %loadMem_4907c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907c8 = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907c8)
  store %struct.Memory* %call_4907c8, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 4907cf	 Bytes: 4
  %loadMem_4907cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907cf = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907cf)
  store %struct.Memory* %call_4907cf, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4907d3	 Bytes: 8
  %loadMem_4907d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907d3 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907d3)
  store %struct.Memory* %call_4907d3, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %esi	 RIP: 4907db	 Bytes: 6
  %loadMem_4907db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907db = call %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907db)
  store %struct.Memory* %call_4907db, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 4907e1	 Bytes: 3
  %loadMem_4907e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907e1 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907e1)
  store %struct.Memory* %call_4907e1, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 4907e4	 Bytes: 3
  %loadMem_4907e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907e4 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907e4)
  store %struct.Memory* %call_4907e4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4907e7	 Bytes: 4
  %loadMem_4907e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907e7 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907e7)
  store %struct.Memory* %call_4907e7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4907eb	 Bytes: 8
  %loadMem_4907eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907eb = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907eb)
  store %struct.Memory* %call_4907eb, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %esi	 RIP: 4907f3	 Bytes: 6
  %loadMem_4907f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907f3 = call %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907f3)
  store %struct.Memory* %call_4907f3, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 4907f9	 Bytes: 3
  %loadMem_4907f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907f9 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907f9)
  store %struct.Memory* %call_4907f9, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 4907fc	 Bytes: 3
  %loadMem_4907fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907fc = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907fc)
  store %struct.Memory* %call_4907fc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4907ff	 Bytes: 4
  %loadMem_4907ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4907ff = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4907ff)
  store %struct.Memory* %call_4907ff, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax)	 RIP: 490803	 Bytes: 3
  %loadMem_490803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490803 = call %struct.Memory* @routine_movw__dx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490803)
  store %struct.Memory* %call_490803, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 490806	 Bytes: 4
  %loadMem_490806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490806 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490806)
  store %struct.Memory* %call_490806, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 49080a	 Bytes: 4
  %loadMem_49080a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49080a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49080a)
  store %struct.Memory* %call_49080a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 49080e	 Bytes: 4
  %loadMem_49080e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49080e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49080e)
  store %struct.Memory* %call_49080e, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 490812	 Bytes: 4
  %loadMem_490812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490812 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490812)
  store %struct.Memory* %call_490812, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490816	 Bytes: 4
  %loadMem_490816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490816 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490816)
  store %struct.Memory* %call_490816, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 49081a	 Bytes: 4
  %loadMem_49081a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49081a = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49081a)
  store %struct.Memory* %call_49081a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 49081e	 Bytes: 3
  %loadMem_49081e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49081e = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49081e)
  store %struct.Memory* %call_49081e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 490821	 Bytes: 4
  %loadMem_490821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490821 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490821)
  store %struct.Memory* %call_490821, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490825	 Bytes: 4
  %loadMem_490825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490825 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490825)
  store %struct.Memory* %call_490825, %struct.Memory** %MEMORY

  ; Code: movw 0x2(%rax), %dx	 RIP: 490829	 Bytes: 4
  %loadMem_490829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490829 = call %struct.Memory* @routine_movw_0x2__rax____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490829)
  store %struct.Memory* %call_490829, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 49082d	 Bytes: 8
  %loadMem_49082d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49082d = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49082d)
  store %struct.Memory* %call_49082d, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 490835	 Bytes: 7
  %loadMem_490835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490835 = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490835)
  store %struct.Memory* %call_490835, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 49083c	 Bytes: 4
  %loadMem_49083c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49083c = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49083c)
  store %struct.Memory* %call_49083c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490840	 Bytes: 8
  %loadMem_490840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490840 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490840)
  store %struct.Memory* %call_490840, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %esi	 RIP: 490848	 Bytes: 6
  %loadMem_490848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490848 = call %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490848)
  store %struct.Memory* %call_490848, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 49084e	 Bytes: 3
  %loadMem_49084e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49084e = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49084e)
  store %struct.Memory* %call_49084e, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490851	 Bytes: 3
  %loadMem_490851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490851 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490851)
  store %struct.Memory* %call_490851, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490854	 Bytes: 4
  %loadMem_490854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490854 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490854)
  store %struct.Memory* %call_490854, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490858	 Bytes: 8
  %loadMem_490858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490858 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490858)
  store %struct.Memory* %call_490858, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %esi	 RIP: 490860	 Bytes: 6
  %loadMem_490860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490860 = call %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490860)
  store %struct.Memory* %call_490860, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 490866	 Bytes: 3
  %loadMem_490866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490866 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490866)
  store %struct.Memory* %call_490866, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490869	 Bytes: 3
  %loadMem_490869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490869 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490869)
  store %struct.Memory* %call_490869, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 49086c	 Bytes: 4
  %loadMem_49086c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49086c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49086c)
  store %struct.Memory* %call_49086c, %struct.Memory** %MEMORY

  ; Code: movw %dx, 0x2(%rax)	 RIP: 490870	 Bytes: 4
  %loadMem_490870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490870 = call %struct.Memory* @routine_movw__dx__0x2__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490870)
  store %struct.Memory* %call_490870, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 490874	 Bytes: 8
  %loadMem_490874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490874 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490874)
  store %struct.Memory* %call_490874, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rax), %rax	 RIP: 49087c	 Bytes: 7
  %loadMem_49087c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49087c = call %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49087c)
  store %struct.Memory* %call_49087c, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 490883	 Bytes: 4
  %loadMem_490883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490883 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490883)
  store %struct.Memory* %call_490883, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490887	 Bytes: 8
  %loadMem_490887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490887 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490887)
  store %struct.Memory* %call_490887, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %esi	 RIP: 49088f	 Bytes: 6
  %loadMem_49088f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49088f = call %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49088f)
  store %struct.Memory* %call_49088f, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 490895	 Bytes: 3
  %loadMem_490895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490895 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490895)
  store %struct.Memory* %call_490895, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490898	 Bytes: 3
  %loadMem_490898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490898 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490898)
  store %struct.Memory* %call_490898, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 49089b	 Bytes: 4
  %loadMem_49089b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49089b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49089b)
  store %struct.Memory* %call_49089b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 49089f	 Bytes: 8
  %loadMem_49089f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49089f = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49089f)
  store %struct.Memory* %call_49089f, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %esi	 RIP: 4908a7	 Bytes: 6
  %loadMem_4908a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908a7 = call %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908a7)
  store %struct.Memory* %call_4908a7, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 4908ad	 Bytes: 3
  %loadMem_4908ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908ad = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908ad)
  store %struct.Memory* %call_4908ad, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 4908b0	 Bytes: 3
  %loadMem_4908b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908b0 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908b0)
  store %struct.Memory* %call_4908b0, %struct.Memory** %MEMORY

  ; Code: movw $0x0, (%rax,%rcx,2)	 RIP: 4908b3	 Bytes: 6
  %loadMem_4908b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908b3 = call %struct.Memory* @routine_movw__0x0____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908b3)
  store %struct.Memory* %call_4908b3, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 4908b9	 Bytes: 8
  %loadMem_4908b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908b9 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908b9)
  store %struct.Memory* %call_4908b9, %struct.Memory** %MEMORY

  ; Code: addq $0x18, %rax	 RIP: 4908c1	 Bytes: 4
  %loadMem_4908c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908c1 = call %struct.Memory* @routine_addq__0x18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908c1)
  store %struct.Memory* %call_4908c1, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 4908c5	 Bytes: 3
  %loadMem_4908c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908c5 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908c5)
  store %struct.Memory* %call_4908c5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 4908c8	 Bytes: 3
  %loadMem_4908c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908c8 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908c8)
  store %struct.Memory* %call_4908c8, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 4908cb	 Bytes: 3
  %loadMem_4908cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908cb = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908cb)
  store %struct.Memory* %call_4908cb, %struct.Memory** %MEMORY

  ; Code: imulq $0x108, %rcx, %rcx	 RIP: 4908ce	 Bytes: 7
  %loadMem_4908ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908ce = call %struct.Memory* @routine_imulq__0x108___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908ce)
  store %struct.Memory* %call_4908ce, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4908d5	 Bytes: 3
  %loadMem_4908d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908d5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908d5)
  store %struct.Memory* %call_4908d5, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4908d8	 Bytes: 3
  %loadMem_4908d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908d8 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908d8)
  store %struct.Memory* %call_4908d8, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 4908db	 Bytes: 8
  %loadMem_4908db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908db = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908db)
  store %struct.Memory* %call_4908db, %struct.Memory** %MEMORY

  ; Code: movq 0x1958(%rcx), %rcx	 RIP: 4908e3	 Bytes: 7
  %loadMem_4908e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908e3 = call %struct.Memory* @routine_movq_0x1958__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908e3)
  store %struct.Memory* %call_4908e3, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 4908ea	 Bytes: 4
  %loadMem_4908ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908ea = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908ea)
  store %struct.Memory* %call_4908ea, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 4908ee	 Bytes: 8
  %loadMem_4908ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908ee = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908ee)
  store %struct.Memory* %call_4908ee, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rdi), %esi	 RIP: 4908f6	 Bytes: 6
  %loadMem_4908f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908f6 = call %struct.Memory* @routine_movl_0x90__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908f6)
  store %struct.Memory* %call_4908f6, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 4908fc	 Bytes: 3
  %loadMem_4908fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908fc = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908fc)
  store %struct.Memory* %call_4908fc, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 4908ff	 Bytes: 3
  %loadMem_4908ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4908ff = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4908ff)
  store %struct.Memory* %call_4908ff, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdi,8), %rcx	 RIP: 490902	 Bytes: 4
  %loadMem_490902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490902 = call %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490902)
  store %struct.Memory* %call_490902, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 490906	 Bytes: 8
  %loadMem_490906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490906 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490906)
  store %struct.Memory* %call_490906, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rdi), %esi	 RIP: 49090e	 Bytes: 6
  %loadMem_49090e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49090e = call %struct.Memory* @routine_movl_0x94__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49090e)
  store %struct.Memory* %call_49090e, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 490914	 Bytes: 3
  %loadMem_490914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490914 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490914)
  store %struct.Memory* %call_490914, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 490917	 Bytes: 3
  %loadMem_490917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490917 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490917)
  store %struct.Memory* %call_490917, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdi,8)	 RIP: 49091a	 Bytes: 4
  %loadMem_49091a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49091a = call %struct.Memory* @routine_movq__rax____rcx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49091a)
  store %struct.Memory* %call_49091a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_490b10	 RIP: 49091e	 Bytes: 5
  %loadMem_49091e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49091e = call %struct.Memory* @routine_jmpq_.L_490b10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49091e, i64 498, i64 5)
  store %struct.Memory* %call_49091e, %struct.Memory** %MEMORY

  br label %block_.L_490b10

  ; Code: .L_490923:	 RIP: 490923	 Bytes: 0
block_.L_490923:

  ; Code: movq 0x6cb900, %rax	 RIP: 490923	 Bytes: 8
  %loadMem_490923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490923 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490923)
  store %struct.Memory* %call_490923, %struct.Memory** %MEMORY

  ; Code: movq 0x118f8(%rax), %rax	 RIP: 49092b	 Bytes: 7
  %loadMem_49092b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49092b = call %struct.Memory* @routine_movq_0x118f8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49092b)
  store %struct.Memory* %call_49092b, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 490932	 Bytes: 4
  %loadMem_490932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490932 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490932)
  store %struct.Memory* %call_490932, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490936	 Bytes: 4
  %loadMem_490936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490936 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490936)
  store %struct.Memory* %call_490936, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 49093a	 Bytes: 4
  %loadMem_49093a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49093a = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49093a)
  store %struct.Memory* %call_49093a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 49093e	 Bytes: 4
  %loadMem_49093e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49093e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49093e)
  store %struct.Memory* %call_49093e, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 490942	 Bytes: 4
  %loadMem_490942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490942 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490942)
  store %struct.Memory* %call_490942, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 490946	 Bytes: 4
  %loadMem_490946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490946 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490946)
  store %struct.Memory* %call_490946, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 49094a	 Bytes: 4
  %loadMem_49094a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49094a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49094a)
  store %struct.Memory* %call_49094a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 49094e	 Bytes: 4
  %loadMem_49094e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49094e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49094e)
  store %struct.Memory* %call_49094e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490952	 Bytes: 4
  %loadMem_490952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490952 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490952)
  store %struct.Memory* %call_490952, %struct.Memory** %MEMORY

  ; Code: movw (%rax), %dx	 RIP: 490956	 Bytes: 3
  %loadMem_490956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490956 = call %struct.Memory* @routine_movw___rax____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490956)
  store %struct.Memory* %call_490956, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 490959	 Bytes: 8
  %loadMem_490959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490959 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490959)
  store %struct.Memory* %call_490959, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 490961	 Bytes: 7
  %loadMem_490961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490961 = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490961)
  store %struct.Memory* %call_490961, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 490968	 Bytes: 4
  %loadMem_490968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490968 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490968)
  store %struct.Memory* %call_490968, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 49096c	 Bytes: 8
  %loadMem_49096c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49096c = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49096c)
  store %struct.Memory* %call_49096c, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %esi	 RIP: 490974	 Bytes: 6
  %loadMem_490974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490974 = call %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490974)
  store %struct.Memory* %call_490974, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 49097a	 Bytes: 3
  %loadMem_49097a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49097a = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49097a)
  store %struct.Memory* %call_49097a, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 49097d	 Bytes: 3
  %loadMem_49097d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49097d = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49097d)
  store %struct.Memory* %call_49097d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490980	 Bytes: 4
  %loadMem_490980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490980 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490980)
  store %struct.Memory* %call_490980, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490984	 Bytes: 8
  %loadMem_490984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490984 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490984)
  store %struct.Memory* %call_490984, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %esi	 RIP: 49098c	 Bytes: 6
  %loadMem_49098c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49098c = call %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49098c)
  store %struct.Memory* %call_49098c, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 490992	 Bytes: 3
  %loadMem_490992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490992 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490992)
  store %struct.Memory* %call_490992, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490995	 Bytes: 3
  %loadMem_490995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490995 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490995)
  store %struct.Memory* %call_490995, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490998	 Bytes: 4
  %loadMem_490998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490998 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490998)
  store %struct.Memory* %call_490998, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax)	 RIP: 49099c	 Bytes: 3
  %loadMem_49099c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49099c = call %struct.Memory* @routine_movw__dx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49099c)
  store %struct.Memory* %call_49099c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 49099f	 Bytes: 8
  %loadMem_49099f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49099f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49099f)
  store %struct.Memory* %call_49099f, %struct.Memory** %MEMORY

  ; Code: movq 0x118f8(%rax), %rax	 RIP: 4909a7	 Bytes: 7
  %loadMem_4909a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909a7 = call %struct.Memory* @routine_movq_0x118f8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909a7)
  store %struct.Memory* %call_4909a7, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 4909ae	 Bytes: 4
  %loadMem_4909ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909ae = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909ae)
  store %struct.Memory* %call_4909ae, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4909b2	 Bytes: 4
  %loadMem_4909b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909b2 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909b2)
  store %struct.Memory* %call_4909b2, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4909b6	 Bytes: 4
  %loadMem_4909b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909b6 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909b6)
  store %struct.Memory* %call_4909b6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4909ba	 Bytes: 4
  %loadMem_4909ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909ba = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909ba)
  store %struct.Memory* %call_4909ba, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 4909be	 Bytes: 4
  %loadMem_4909be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909be = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909be)
  store %struct.Memory* %call_4909be, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 4909c2	 Bytes: 4
  %loadMem_4909c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909c2 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909c2)
  store %struct.Memory* %call_4909c2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4909c6	 Bytes: 4
  %loadMem_4909c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909c6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909c6)
  store %struct.Memory* %call_4909c6, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4909ca	 Bytes: 4
  %loadMem_4909ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909ca = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909ca)
  store %struct.Memory* %call_4909ca, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4909ce	 Bytes: 4
  %loadMem_4909ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909ce = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909ce)
  store %struct.Memory* %call_4909ce, %struct.Memory** %MEMORY

  ; Code: movw 0x2(%rax), %dx	 RIP: 4909d2	 Bytes: 4
  %loadMem_4909d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909d2 = call %struct.Memory* @routine_movw_0x2__rax____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909d2)
  store %struct.Memory* %call_4909d2, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 4909d6	 Bytes: 8
  %loadMem_4909d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909d6 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909d6)
  store %struct.Memory* %call_4909d6, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 4909de	 Bytes: 7
  %loadMem_4909de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909de = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909de)
  store %struct.Memory* %call_4909de, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 4909e5	 Bytes: 4
  %loadMem_4909e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909e5 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909e5)
  store %struct.Memory* %call_4909e5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4909e9	 Bytes: 8
  %loadMem_4909e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909e9 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909e9)
  store %struct.Memory* %call_4909e9, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %esi	 RIP: 4909f1	 Bytes: 6
  %loadMem_4909f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909f1 = call %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909f1)
  store %struct.Memory* %call_4909f1, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 4909f7	 Bytes: 3
  %loadMem_4909f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909f7 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909f7)
  store %struct.Memory* %call_4909f7, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 4909fa	 Bytes: 3
  %loadMem_4909fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909fa = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909fa)
  store %struct.Memory* %call_4909fa, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4909fd	 Bytes: 4
  %loadMem_4909fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909fd = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909fd)
  store %struct.Memory* %call_4909fd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490a01	 Bytes: 8
  %loadMem_490a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a01 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a01)
  store %struct.Memory* %call_490a01, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %esi	 RIP: 490a09	 Bytes: 6
  %loadMem_490a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a09 = call %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a09)
  store %struct.Memory* %call_490a09, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 490a0f	 Bytes: 3
  %loadMem_490a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a0f = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a0f)
  store %struct.Memory* %call_490a0f, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490a12	 Bytes: 3
  %loadMem_490a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a12 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a12)
  store %struct.Memory* %call_490a12, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490a15	 Bytes: 4
  %loadMem_490a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a15 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a15)
  store %struct.Memory* %call_490a15, %struct.Memory** %MEMORY

  ; Code: movw %dx, 0x2(%rax)	 RIP: 490a19	 Bytes: 4
  %loadMem_490a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a19 = call %struct.Memory* @routine_movw__dx__0x2__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a19)
  store %struct.Memory* %call_490a19, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 490a1d	 Bytes: 3
  %loadMem_490a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a1d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a1d)
  store %struct.Memory* %call_490a1d, %struct.Memory** %MEMORY

  ; Code: movw %si, %dx	 RIP: 490a20	 Bytes: 3
  %loadMem_490a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a20 = call %struct.Memory* @routine_movw__si___dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a20)
  store %struct.Memory* %call_490a20, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 490a23	 Bytes: 8
  %loadMem_490a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a23 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a23)
  store %struct.Memory* %call_490a23, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rax), %rax	 RIP: 490a2b	 Bytes: 7
  %loadMem_490a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a2b = call %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a2b)
  store %struct.Memory* %call_490a2b, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 490a32	 Bytes: 4
  %loadMem_490a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a32 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a32)
  store %struct.Memory* %call_490a32, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490a36	 Bytes: 8
  %loadMem_490a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a36 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a36)
  store %struct.Memory* %call_490a36, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %esi	 RIP: 490a3e	 Bytes: 6
  %loadMem_490a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a3e = call %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a3e)
  store %struct.Memory* %call_490a3e, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 490a44	 Bytes: 3
  %loadMem_490a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a44 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a44)
  store %struct.Memory* %call_490a44, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490a47	 Bytes: 3
  %loadMem_490a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a47 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a47)
  store %struct.Memory* %call_490a47, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490a4a	 Bytes: 4
  %loadMem_490a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a4a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a4a)
  store %struct.Memory* %call_490a4a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490a4e	 Bytes: 8
  %loadMem_490a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a4e = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a4e)
  store %struct.Memory* %call_490a4e, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %esi	 RIP: 490a56	 Bytes: 6
  %loadMem_490a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a56 = call %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a56)
  store %struct.Memory* %call_490a56, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 490a5c	 Bytes: 3
  %loadMem_490a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a5c = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a5c)
  store %struct.Memory* %call_490a5c, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490a5f	 Bytes: 3
  %loadMem_490a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a5f = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a5f)
  store %struct.Memory* %call_490a5f, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax,%rcx,2)	 RIP: 490a62	 Bytes: 4
  %loadMem_490a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a62 = call %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a62)
  store %struct.Memory* %call_490a62, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 490a66	 Bytes: 8
  %loadMem_490a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a66 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a66)
  store %struct.Memory* %call_490a66, %struct.Memory** %MEMORY

  ; Code: addq $0x18, %rax	 RIP: 490a6e	 Bytes: 4
  %loadMem_490a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a6e = call %struct.Memory* @routine_addq__0x18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a6e)
  store %struct.Memory* %call_490a6e, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 490a72	 Bytes: 3
  %loadMem_490a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a72 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a72)
  store %struct.Memory* %call_490a72, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 490a75	 Bytes: 3
  %loadMem_490a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a75 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a75)
  store %struct.Memory* %call_490a75, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 490a78	 Bytes: 3
  %loadMem_490a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a78 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a78)
  store %struct.Memory* %call_490a78, %struct.Memory** %MEMORY

  ; Code: imulq $0x108, %rcx, %rcx	 RIP: 490a7b	 Bytes: 7
  %loadMem_490a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a7b = call %struct.Memory* @routine_imulq__0x108___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a7b)
  store %struct.Memory* %call_490a7b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 490a82	 Bytes: 3
  %loadMem_490a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a82 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a82)
  store %struct.Memory* %call_490a82, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 490a85	 Bytes: 8
  %loadMem_490a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a85 = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a85)
  store %struct.Memory* %call_490a85, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rcx), %rcx	 RIP: 490a8d	 Bytes: 7
  %loadMem_490a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a8d = call %struct.Memory* @routine_movq_0x1950__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a8d)
  store %struct.Memory* %call_490a8d, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 490a94	 Bytes: 4
  %loadMem_490a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a94 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a94)
  store %struct.Memory* %call_490a94, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 490a98	 Bytes: 8
  %loadMem_490a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a98 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a98)
  store %struct.Memory* %call_490a98, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rdi), %esi	 RIP: 490aa0	 Bytes: 6
  %loadMem_490aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490aa0 = call %struct.Memory* @routine_movl_0x90__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490aa0)
  store %struct.Memory* %call_490aa0, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 490aa6	 Bytes: 3
  %loadMem_490aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490aa6 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490aa6)
  store %struct.Memory* %call_490aa6, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 490aa9	 Bytes: 3
  %loadMem_490aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490aa9 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490aa9)
  store %struct.Memory* %call_490aa9, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdi,8), %rcx	 RIP: 490aac	 Bytes: 4
  %loadMem_490aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490aac = call %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490aac)
  store %struct.Memory* %call_490aac, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 490ab0	 Bytes: 8
  %loadMem_490ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ab0 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ab0)
  store %struct.Memory* %call_490ab0, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rdi), %esi	 RIP: 490ab8	 Bytes: 6
  %loadMem_490ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ab8 = call %struct.Memory* @routine_movl_0x94__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ab8)
  store %struct.Memory* %call_490ab8, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 490abe	 Bytes: 3
  %loadMem_490abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490abe = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490abe)
  store %struct.Memory* %call_490abe, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 490ac1	 Bytes: 3
  %loadMem_490ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ac1 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ac1)
  store %struct.Memory* %call_490ac1, %struct.Memory** %MEMORY

  ; Code: movswq (%rcx,%rdi,2), %rcx	 RIP: 490ac4	 Bytes: 5
  %loadMem_490ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ac4 = call %struct.Memory* @routine_movswq___rcx__rdi_2____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ac4)
  store %struct.Memory* %call_490ac4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490ac9	 Bytes: 4
  %loadMem_490ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ac9 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ac9)
  store %struct.Memory* %call_490ac9, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 490acd	 Bytes: 8
  %loadMem_490acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490acd = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490acd)
  store %struct.Memory* %call_490acd, %struct.Memory** %MEMORY

  ; Code: movq 0x1958(%rcx), %rcx	 RIP: 490ad5	 Bytes: 7
  %loadMem_490ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ad5 = call %struct.Memory* @routine_movq_0x1958__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ad5)
  store %struct.Memory* %call_490ad5, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 490adc	 Bytes: 4
  %loadMem_490adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490adc = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490adc)
  store %struct.Memory* %call_490adc, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 490ae0	 Bytes: 8
  %loadMem_490ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ae0 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ae0)
  store %struct.Memory* %call_490ae0, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rdi), %esi	 RIP: 490ae8	 Bytes: 6
  %loadMem_490ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ae8 = call %struct.Memory* @routine_movl_0x90__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ae8)
  store %struct.Memory* %call_490ae8, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %esi	 RIP: 490aee	 Bytes: 3
  %loadMem_490aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490aee = call %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490aee)
  store %struct.Memory* %call_490aee, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 490af1	 Bytes: 3
  %loadMem_490af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490af1 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490af1)
  store %struct.Memory* %call_490af1, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdi,8), %rcx	 RIP: 490af4	 Bytes: 4
  %loadMem_490af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490af4 = call %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490af4)
  store %struct.Memory* %call_490af4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 490af8	 Bytes: 8
  %loadMem_490af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490af8 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490af8)
  store %struct.Memory* %call_490af8, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rdi), %esi	 RIP: 490b00	 Bytes: 6
  %loadMem_490b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b00 = call %struct.Memory* @routine_movl_0x94__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b00)
  store %struct.Memory* %call_490b00, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 490b06	 Bytes: 3
  %loadMem_490b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b06 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b06)
  store %struct.Memory* %call_490b06, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdi	 RIP: 490b09	 Bytes: 3
  %loadMem_490b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b09 = call %struct.Memory* @routine_movslq__esi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b09)
  store %struct.Memory* %call_490b09, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdi,8)	 RIP: 490b0c	 Bytes: 4
  %loadMem_490b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b0c = call %struct.Memory* @routine_movq__rax____rcx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b0c)
  store %struct.Memory* %call_490b0c, %struct.Memory** %MEMORY

  ; Code: .L_490b10:	 RIP: 490b10	 Bytes: 0
  br label %block_.L_490b10
block_.L_490b10:

  ; Code: jmpq .L_490c32	 RIP: 490b10	 Bytes: 5
  %loadMem_490b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b10 = call %struct.Memory* @routine_jmpq_.L_490c32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b10, i64 290, i64 5)
  store %struct.Memory* %call_490b10, %struct.Memory** %MEMORY

  br label %block_.L_490c32

  ; Code: .L_490b15:	 RIP: 490b15	 Bytes: 0
block_.L_490b15:

  ; Code: movq 0x70fcf0, %rax	 RIP: 490b15	 Bytes: 8
  %loadMem_490b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b15 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b15)
  store %struct.Memory* %call_490b15, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 490b1d	 Bytes: 7
  %loadMem_490b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b1d = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b1d)
  store %struct.Memory* %call_490b1d, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 490b24	 Bytes: 4
  %loadMem_490b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b24 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b24)
  store %struct.Memory* %call_490b24, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490b28	 Bytes: 8
  %loadMem_490b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b28 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b28)
  store %struct.Memory* %call_490b28, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 490b30	 Bytes: 6
  %loadMem_490b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b30 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b30)
  store %struct.Memory* %call_490b30, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 490b36	 Bytes: 3
  %loadMem_490b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b36 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b36)
  store %struct.Memory* %call_490b36, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 490b39	 Bytes: 3
  %loadMem_490b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b39 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b39)
  store %struct.Memory* %call_490b39, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490b3c	 Bytes: 4
  %loadMem_490b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b3c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b3c)
  store %struct.Memory* %call_490b3c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490b40	 Bytes: 8
  %loadMem_490b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b40 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b40)
  store %struct.Memory* %call_490b40, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 490b48	 Bytes: 6
  %loadMem_490b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b48 = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b48)
  store %struct.Memory* %call_490b48, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 490b4e	 Bytes: 3
  %loadMem_490b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b4e = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b4e)
  store %struct.Memory* %call_490b4e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 490b51	 Bytes: 3
  %loadMem_490b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b51 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b51)
  store %struct.Memory* %call_490b51, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490b54	 Bytes: 4
  %loadMem_490b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b54 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b54)
  store %struct.Memory* %call_490b54, %struct.Memory** %MEMORY

  ; Code: movw $0x0, (%rax)	 RIP: 490b58	 Bytes: 5
  %loadMem_490b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b58 = call %struct.Memory* @routine_movw__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b58)
  store %struct.Memory* %call_490b58, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 490b5d	 Bytes: 8
  %loadMem_490b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b5d = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b5d)
  store %struct.Memory* %call_490b5d, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 490b65	 Bytes: 7
  %loadMem_490b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b65 = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b65)
  store %struct.Memory* %call_490b65, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 490b6c	 Bytes: 4
  %loadMem_490b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b6c = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b6c)
  store %struct.Memory* %call_490b6c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490b70	 Bytes: 8
  %loadMem_490b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b70 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b70)
  store %struct.Memory* %call_490b70, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 490b78	 Bytes: 6
  %loadMem_490b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b78 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b78)
  store %struct.Memory* %call_490b78, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 490b7e	 Bytes: 3
  %loadMem_490b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b7e = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b7e)
  store %struct.Memory* %call_490b7e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 490b81	 Bytes: 3
  %loadMem_490b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b81 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b81)
  store %struct.Memory* %call_490b81, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490b84	 Bytes: 4
  %loadMem_490b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b84 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b84)
  store %struct.Memory* %call_490b84, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490b88	 Bytes: 8
  %loadMem_490b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b88 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b88)
  store %struct.Memory* %call_490b88, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 490b90	 Bytes: 6
  %loadMem_490b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b90 = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b90)
  store %struct.Memory* %call_490b90, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 490b96	 Bytes: 3
  %loadMem_490b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b96 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b96)
  store %struct.Memory* %call_490b96, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 490b99	 Bytes: 3
  %loadMem_490b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b99 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b99)
  store %struct.Memory* %call_490b99, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490b9c	 Bytes: 4
  %loadMem_490b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b9c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b9c)
  store %struct.Memory* %call_490b9c, %struct.Memory** %MEMORY

  ; Code: movw $0x0, 0x2(%rax)	 RIP: 490ba0	 Bytes: 6
  %loadMem_490ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ba0 = call %struct.Memory* @routine_movw__0x0__0x2__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ba0)
  store %struct.Memory* %call_490ba0, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 490ba6	 Bytes: 8
  %loadMem_490ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ba6 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ba6)
  store %struct.Memory* %call_490ba6, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rax), %rax	 RIP: 490bae	 Bytes: 7
  %loadMem_490bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bae = call %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bae)
  store %struct.Memory* %call_490bae, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 490bb5	 Bytes: 4
  %loadMem_490bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bb5 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bb5)
  store %struct.Memory* %call_490bb5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490bb9	 Bytes: 8
  %loadMem_490bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bb9 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bb9)
  store %struct.Memory* %call_490bb9, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 490bc1	 Bytes: 6
  %loadMem_490bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bc1 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bc1)
  store %struct.Memory* %call_490bc1, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 490bc7	 Bytes: 3
  %loadMem_490bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bc7 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bc7)
  store %struct.Memory* %call_490bc7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 490bca	 Bytes: 3
  %loadMem_490bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bca = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bca)
  store %struct.Memory* %call_490bca, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490bcd	 Bytes: 4
  %loadMem_490bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bcd = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bcd)
  store %struct.Memory* %call_490bcd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490bd1	 Bytes: 8
  %loadMem_490bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bd1 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bd1)
  store %struct.Memory* %call_490bd1, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 490bd9	 Bytes: 6
  %loadMem_490bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bd9 = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bd9)
  store %struct.Memory* %call_490bd9, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 490bdf	 Bytes: 3
  %loadMem_490bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bdf = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bdf)
  store %struct.Memory* %call_490bdf, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 490be2	 Bytes: 3
  %loadMem_490be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490be2 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490be2)
  store %struct.Memory* %call_490be2, %struct.Memory** %MEMORY

  ; Code: movw $0xffff, (%rax,%rcx,2)	 RIP: 490be5	 Bytes: 6
  %loadMem_490be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490be5 = call %struct.Memory* @routine_movw__0xffff____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490be5)
  store %struct.Memory* %call_490be5, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 490beb	 Bytes: 8
  %loadMem_490beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490beb = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490beb)
  store %struct.Memory* %call_490beb, %struct.Memory** %MEMORY

  ; Code: movq 0x1958(%rax), %rax	 RIP: 490bf3	 Bytes: 7
  %loadMem_490bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bf3 = call %struct.Memory* @routine_movq_0x1958__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bf3)
  store %struct.Memory* %call_490bf3, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 490bfa	 Bytes: 4
  %loadMem_490bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bfa = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bfa)
  store %struct.Memory* %call_490bfa, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490bfe	 Bytes: 8
  %loadMem_490bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bfe = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bfe)
  store %struct.Memory* %call_490bfe, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 490c06	 Bytes: 6
  %loadMem_490c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c06 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c06)
  store %struct.Memory* %call_490c06, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 490c0c	 Bytes: 3
  %loadMem_490c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c0c = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c0c)
  store %struct.Memory* %call_490c0c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 490c0f	 Bytes: 3
  %loadMem_490c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c0f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c0f)
  store %struct.Memory* %call_490c0f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 490c12	 Bytes: 4
  %loadMem_490c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c12 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c12)
  store %struct.Memory* %call_490c12, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 490c16	 Bytes: 8
  %loadMem_490c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c16 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c16)
  store %struct.Memory* %call_490c16, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 490c1e	 Bytes: 6
  %loadMem_490c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c1e = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c1e)
  store %struct.Memory* %call_490c1e, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 490c24	 Bytes: 3
  %loadMem_490c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c24 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c24)
  store %struct.Memory* %call_490c24, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 490c27	 Bytes: 3
  %loadMem_490c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c27 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c27)
  store %struct.Memory* %call_490c27, %struct.Memory** %MEMORY

  ; Code: movq $0xffffffffffffffff, (%rax,%rcx,8)	 RIP: 490c2a	 Bytes: 8
  %loadMem_490c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c2a = call %struct.Memory* @routine_movq__0xffffffffffffffff____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c2a)
  store %struct.Memory* %call_490c2a, %struct.Memory** %MEMORY

  ; Code: .L_490c32:	 RIP: 490c32	 Bytes: 0
  br label %block_.L_490c32
block_.L_490c32:

  ; Code: jmpq .L_490c37	 RIP: 490c32	 Bytes: 5
  %loadMem_490c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c32 = call %struct.Memory* @routine_jmpq_.L_490c37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c32, i64 5, i64 5)
  store %struct.Memory* %call_490c32, %struct.Memory** %MEMORY

  br label %block_.L_490c37

  ; Code: .L_490c37:	 RIP: 490c37	 Bytes: 0
block_.L_490c37:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 490c37	 Bytes: 3
  %loadMem_490c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c37 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c37)
  store %struct.Memory* %call_490c37, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 490c3a	 Bytes: 3
  %loadMem_490c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c3a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c3a)
  store %struct.Memory* %call_490c3a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 490c3d	 Bytes: 3
  %loadMem_490c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c3d = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c3d)
  store %struct.Memory* %call_490c3d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49014b	 RIP: 490c40	 Bytes: 5
  %loadMem_490c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c40 = call %struct.Memory* @routine_jmpq_.L_49014b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c40, i64 -2805, i64 5)
  store %struct.Memory* %call_490c40, %struct.Memory** %MEMORY

  br label %block_.L_49014b

  ; Code: .L_490c45:	 RIP: 490c45	 Bytes: 0
block_.L_490c45:

  ; Code: jmpq .L_490c4a	 RIP: 490c45	 Bytes: 5
  %loadMem_490c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c45 = call %struct.Memory* @routine_jmpq_.L_490c4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c45, i64 5, i64 5)
  store %struct.Memory* %call_490c45, %struct.Memory** %MEMORY

  br label %block_.L_490c4a

  ; Code: .L_490c4a:	 RIP: 490c4a	 Bytes: 0
block_.L_490c4a:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 490c4a	 Bytes: 3
  %loadMem_490c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c4a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c4a)
  store %struct.Memory* %call_490c4a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 490c4d	 Bytes: 3
  %loadMem_490c4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c4d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c4d)
  store %struct.Memory* %call_490c4d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 490c50	 Bytes: 3
  %loadMem_490c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c50 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c50)
  store %struct.Memory* %call_490c50, %struct.Memory** %MEMORY

  ; Code: jmpq .L_490139	 RIP: 490c53	 Bytes: 5
  %loadMem_490c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c53 = call %struct.Memory* @routine_jmpq_.L_490139(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c53, i64 -2842, i64 5)
  store %struct.Memory* %call_490c53, %struct.Memory** %MEMORY

  br label %block_.L_490139

  ; Code: .L_490c58:	 RIP: 490c58	 Bytes: 0
block_.L_490c58:

  ; Code: jmpq .L_490c5d	 RIP: 490c58	 Bytes: 5
  %loadMem_490c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c58 = call %struct.Memory* @routine_jmpq_.L_490c5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c58, i64 5, i64 5)
  store %struct.Memory* %call_490c58, %struct.Memory** %MEMORY

  br label %block_.L_490c5d

  ; Code: .L_490c5d:	 RIP: 490c5d	 Bytes: 0
block_.L_490c5d:

  ; Code: popq %rbp	 RIP: 490c5d	 Bytes: 1
  %loadMem_490c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c5d = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c5d)
  store %struct.Memory* %call_490c5d, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 490c5e	 Bytes: 1
  %loadMem_490c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c5e = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c5e)
  store %struct.Memory* %call_490c5e, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_490c5e
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sete__r9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %R9B)
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

define %struct.Memory* @routine_andb__0x1___r9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %R9B
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %R9B, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 255
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl__r9b___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %R9B
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_je_.L_48fb54(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl__0x3__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
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

define %struct.Memory* @routine_jne_.L_48fb5f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_48fb6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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






define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 2)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_shll__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x6cb8f8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6cb8f8_type* @G_0x6cb8f8 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_addl_0x94__rsi__rdi_8____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 8
  %19 = add i64 %16, 148
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_addl_0x90__rsi__rdi_8____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 8
  %19 = add i64 %16, 144
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_48fc36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_48fc40(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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




define %struct.Memory* @routine_movq_0x3758__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_jge_.L_48fef9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 48
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_48fef4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 52
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_48fee1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6504
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq___rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 148
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





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2InItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2InItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}




























define %struct.Memory* @routine_movw__0x0__0x2__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2InItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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






















































define %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6480
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}






















define %struct.Memory* @routine_movw__0xffff____rax__rcx_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = mul i64 %13, 2
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2InItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 -1)
  ret %struct.Memory* %18
}






























define %struct.Memory* @routine_movq_0x1958__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6488
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}





















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0xffffffffffffffff____rax__rcx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 -1)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_jmpq_.L_48fc91(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48fee6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48fc7f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_490c5d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_490133(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_49012e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_49011b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x118f8__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71928
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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




define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  store i16 %6, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw___rax____dx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DX, i64 %12)
  ret %struct.Memory* %15
}










define %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__dx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i16, i16* %DX
  %14 = zext i16 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}
























define %struct.Memory* @routine_movw_0x2__rax____dx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DX, i64 %13)
  ret %struct.Memory* %16
}




























define %struct.Memory* @routine_movw__dx__0x2__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 2
  %14 = load i16, i16* %DX
  %15 = zext i16 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i16
  store i16 %5, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__si___dx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %SI = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %SI
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addq__0x18___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 24)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 0)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_imulq__0x108___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 264)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x70fcf0_type* @G_0x70fcf0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x1950__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6480
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl_0x90__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl_0x94__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = sext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movswq___rcx__rdi_2____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 2
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq_0x1958__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6488
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}






















define %struct.Memory* @routine_movq__rax____rcx__rdi_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %19)
  ret %struct.Memory* %22
}








define %struct.Memory* @routine_jmpq_.L_48ff1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_490120(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48ff09(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_490c58(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_490c45(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_490219(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x722cb8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x722cb8_type* @G_0x722cb8 to i64))
  ret %struct.Memory* %11
}



















define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = sext i16 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_movq_0x6cea08___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cea08_type* @G_0x6cea08 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_je_.L_49022d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_490604(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__0x244__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 580
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_490419(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_490419(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl__0x1__0x244__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 580
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_49027b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x11900__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71936
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_jmpq_.L_49028e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movq_0x11908__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71944
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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
























































































































define %struct.Memory* @routine_movw__0x0____rax__rcx_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = mul i64 %13, 2
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2InItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}












































define %struct.Memory* @routine_jmpq_.L_4905ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












































































































































































































define %struct.Memory* @routine_jmpq_.L_49071d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














































































































define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_490731(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_490b15(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_490923(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_490923(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_49077f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_490792(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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






















define %struct.Memory* @routine_jmpq_.L_490b10(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


































































































define %struct.Memory* @routine_jmpq_.L_490c32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














































































































define %struct.Memory* @routine_jmpq_.L_490c37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_49014b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_490c4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_490139(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

