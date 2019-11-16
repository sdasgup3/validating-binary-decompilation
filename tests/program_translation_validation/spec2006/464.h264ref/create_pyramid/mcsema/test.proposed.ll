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

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41e380.gop_pyramid(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6d0278_type = type <{ [8 x i8] }>
@G_0x6d0278= global %G_0x6d0278_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4bf5b7_type = type <{ [8 x i8] }>
@G__0x4bf5b7= global %G__0x4bf5b7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4bf5d5_type = type <{ [8 x i8] }>
@G__0x4bf5d5= global %G__0x4bf5d5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @create_pyramid(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .create_pyramid:	 RIP: 41dcf0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 41dcf0	 Bytes: 1
  %loadMem_41dcf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcf0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcf0)
  store %struct.Memory* %call_41dcf0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 41dcf1	 Bytes: 3
  %loadMem_41dcf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcf1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcf1)
  store %struct.Memory* %call_41dcf1, %struct.Memory** %MEMORY

  ; Code: subq $0x50, %rsp	 RIP: 41dcf4	 Bytes: 4
  %loadMem_41dcf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcf4 = call %struct.Memory* @routine_subq__0x50___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcf4)
  store %struct.Memory* %call_41dcf4, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 41dcf8	 Bytes: 5
  %loadMem_41dcf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcf8 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcf8)
  store %struct.Memory* %call_41dcf8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 41dcfd	 Bytes: 8
  %loadMem_41dcfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcfd = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcfd)
  store %struct.Memory* %call_41dcfd, %struct.Memory** %MEMORY

  ; Code: movl 0x4d4(%rcx), %edx	 RIP: 41dd05	 Bytes: 6
  %loadMem_41dd05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd05 = call %struct.Memory* @routine_movl_0x4d4__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd05)
  store %struct.Memory* %call_41dd05, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 41dd0b	 Bytes: 3
  %loadMem_41dd0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd0b = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd0b)
  store %struct.Memory* %call_41dd0b, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 41dd0e	 Bytes: 2
  %loadMem_41dd0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd0e = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd0e)
  store %struct.Memory* %call_41dd0e, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 41dd10	 Bytes: 1
  %loadMem_41dd10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd10 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd10)
  store %struct.Memory* %call_41dd10, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %esi	 RIP: 41dd11	 Bytes: 3
  %loadMem_41dd11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd11 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd11)
  store %struct.Memory* %call_41dd11, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 41dd14	 Bytes: 2
  %loadMem_41dd14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd14 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd14)
  store %struct.Memory* %call_41dd14, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 41dd16	 Bytes: 3
  %loadMem_41dd16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd16 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd16)
  store %struct.Memory* %call_41dd16, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 41dd19	 Bytes: 8
  %loadMem_41dd19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd19 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd19)
  store %struct.Memory* %call_41dd19, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x528(%rcx)	 RIP: 41dd21	 Bytes: 7
  %loadMem_41dd21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd21 = call %struct.Memory* @routine_cmpl__0x1__0x528__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd21)
  store %struct.Memory* %call_41dd21, %struct.Memory** %MEMORY

  ; Code: jne .L_41de4d	 RIP: 41dd28	 Bytes: 6
  %loadMem_41dd28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd28 = call %struct.Memory* @routine_jne_.L_41de4d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd28, i8* %BRANCH_TAKEN, i64 293, i64 6, i64 6)
  store %struct.Memory* %call_41dd28, %struct.Memory** %MEMORY

  %loadBr_41dd28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dd28 = icmp eq i8 %loadBr_41dd28, 1
  br i1 %cmpBr_41dd28, label %block_.L_41de4d, label %block_41dd2e

block_41dd2e:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 41dd2e	 Bytes: 7
  %loadMem_41dd2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd2e = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd2e)
  store %struct.Memory* %call_41dd2e, %struct.Memory** %MEMORY

  ; Code: .L_41dd35:	 RIP: 41dd35	 Bytes: 0
  br label %block_.L_41dd35
block_.L_41dd35:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 41dd35	 Bytes: 3
  %loadMem_41dd35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd35 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd35)
  store %struct.Memory* %call_41dd35, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 41dd38	 Bytes: 8
  %loadMem_41dd38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd38 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd38)
  store %struct.Memory* %call_41dd38, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4d4(%rcx), %eax	 RIP: 41dd40	 Bytes: 6
  %loadMem_41dd40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd40 = call %struct.Memory* @routine_cmpl_0x4d4__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd40)
  store %struct.Memory* %call_41dd40, %struct.Memory** %MEMORY

  ; Code: jge .L_41de48	 RIP: 41dd46	 Bytes: 6
  %loadMem_41dd46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd46 = call %struct.Memory* @routine_jge_.L_41de48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd46, i8* %BRANCH_TAKEN, i64 258, i64 6, i64 6)
  store %struct.Memory* %call_41dd46, %struct.Memory** %MEMORY

  %loadBr_41dd46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dd46 = icmp eq i8 %loadBr_41dd46, 1
  br i1 %cmpBr_41dd46, label %block_.L_41de48, label %block_41dd4c

block_41dd4c:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 41dd4c	 Bytes: 3
  %loadMem_41dd4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd4c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd4c)
  store %struct.Memory* %call_41dd4c, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 41dd4f	 Bytes: 3
  %loadMem_41dd4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd4f = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd4f)
  store %struct.Memory* %call_41dd4f, %struct.Memory** %MEMORY

  ; Code: jge .L_41ddc9	 RIP: 41dd52	 Bytes: 6
  %loadMem_41dd52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd52 = call %struct.Memory* @routine_jge_.L_41ddc9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd52, i8* %BRANCH_TAKEN, i64 119, i64 6, i64 6)
  store %struct.Memory* %call_41dd52, %struct.Memory** %MEMORY

  %loadBr_41dd52 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dd52 = icmp eq i8 %loadBr_41dd52, 1
  br i1 %cmpBr_41dd52, label %block_.L_41ddc9, label %block_41dd58

block_41dd58:
  ; Code: movq 0x6d0278, %rax	 RIP: 41dd58	 Bytes: 8
  %loadMem_41dd58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd58 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd58)
  store %struct.Memory* %call_41dd58, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 41dd60	 Bytes: 4
  %loadMem_41dd60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd60 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd60)
  store %struct.Memory* %call_41dd60, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41dd64	 Bytes: 4
  %loadMem_41dd64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd64 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd64)
  store %struct.Memory* %call_41dd64, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41dd68	 Bytes: 3
  %loadMem_41dd68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd68 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd68)
  store %struct.Memory* %call_41dd68, %struct.Memory** %MEMORY

  ; Code: movl $0x1, (%rax)	 RIP: 41dd6b	 Bytes: 6
  %loadMem_41dd6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd6b = call %struct.Memory* @routine_movl__0x1____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd6b)
  store %struct.Memory* %call_41dd6b, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 41dd71	 Bytes: 3
  %loadMem_41dd71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd71 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd71)
  store %struct.Memory* %call_41dd71, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 41dd74	 Bytes: 3
  %loadMem_41dd74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd74 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd74)
  store %struct.Memory* %call_41dd74, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41dd77	 Bytes: 3
  %loadMem_41dd77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd77 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd77)
  store %struct.Memory* %call_41dd77, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41dd7a	 Bytes: 8
  %loadMem_41dd7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd7a = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd7a)
  store %struct.Memory* %call_41dd7a, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 41dd82	 Bytes: 4
  %loadMem_41dd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd82 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd82)
  store %struct.Memory* %call_41dd82, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41dd86	 Bytes: 4
  %loadMem_41dd86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd86 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd86)
  store %struct.Memory* %call_41dd86, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41dd8a	 Bytes: 3
  %loadMem_41dd8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd8a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd8a)
  store %struct.Memory* %call_41dd8a, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x4(%rax)	 RIP: 41dd8d	 Bytes: 3
  %loadMem_41dd8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd8d = call %struct.Memory* @routine_movl__edx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd8d)
  store %struct.Memory* %call_41dd8d, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41dd90	 Bytes: 8
  %loadMem_41dd90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd90 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd90)
  store %struct.Memory* %call_41dd90, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 41dd98	 Bytes: 4
  %loadMem_41dd98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd98 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd98)
  store %struct.Memory* %call_41dd98, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41dd9c	 Bytes: 4
  %loadMem_41dd9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd9c = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd9c)
  store %struct.Memory* %call_41dd9c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41dda0	 Bytes: 3
  %loadMem_41dda0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dda0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dda0)
  store %struct.Memory* %call_41dda0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x10(%rax)	 RIP: 41dda3	 Bytes: 7
  %loadMem_41dda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dda3 = call %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dda3)
  store %struct.Memory* %call_41dda3, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41ddaa	 Bytes: 8
  %loadMem_41ddaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddaa = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddaa)
  store %struct.Memory* %call_41ddaa, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 41ddb2	 Bytes: 4
  %loadMem_41ddb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddb2 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddb2)
  store %struct.Memory* %call_41ddb2, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41ddb6	 Bytes: 4
  %loadMem_41ddb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddb6 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddb6)
  store %struct.Memory* %call_41ddb6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41ddba	 Bytes: 3
  %loadMem_41ddba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddba = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddba)
  store %struct.Memory* %call_41ddba, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x8(%rax)	 RIP: 41ddbd	 Bytes: 7
  %loadMem_41ddbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddbd = call %struct.Memory* @routine_movl__0x2__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddbd)
  store %struct.Memory* %call_41ddbd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41de35	 RIP: 41ddc4	 Bytes: 5
  %loadMem_41ddc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddc4 = call %struct.Memory* @routine_jmpq_.L_41de35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddc4, i64 113, i64 5)
  store %struct.Memory* %call_41ddc4, %struct.Memory** %MEMORY

  br label %block_.L_41de35

  ; Code: .L_41ddc9:	 RIP: 41ddc9	 Bytes: 0
block_.L_41ddc9:

  ; Code: movq 0x6d0278, %rax	 RIP: 41ddc9	 Bytes: 8
  %loadMem_41ddc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddc9 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddc9)
  store %struct.Memory* %call_41ddc9, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 41ddd1	 Bytes: 4
  %loadMem_41ddd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddd1 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddd1)
  store %struct.Memory* %call_41ddd1, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41ddd5	 Bytes: 4
  %loadMem_41ddd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddd5 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddd5)
  store %struct.Memory* %call_41ddd5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41ddd9	 Bytes: 3
  %loadMem_41ddd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddd9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddd9)
  store %struct.Memory* %call_41ddd9, %struct.Memory** %MEMORY

  ; Code: movl $0x1, (%rax)	 RIP: 41dddc	 Bytes: 6
  %loadMem_41dddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dddc = call %struct.Memory* @routine_movl__0x1____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dddc)
  store %struct.Memory* %call_41dddc, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 41dde2	 Bytes: 3
  %loadMem_41dde2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dde2 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dde2)
  store %struct.Memory* %call_41dde2, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %edx	 RIP: 41dde5	 Bytes: 3
  %loadMem_41dde5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dde5 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dde5)
  store %struct.Memory* %call_41dde5, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 41dde8	 Bytes: 3
  %loadMem_41dde8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dde8 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dde8)
  store %struct.Memory* %call_41dde8, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41ddeb	 Bytes: 8
  %loadMem_41ddeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddeb = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddeb)
  store %struct.Memory* %call_41ddeb, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 41ddf3	 Bytes: 4
  %loadMem_41ddf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddf3 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddf3)
  store %struct.Memory* %call_41ddf3, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41ddf7	 Bytes: 4
  %loadMem_41ddf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddf7 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddf7)
  store %struct.Memory* %call_41ddf7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41ddfb	 Bytes: 3
  %loadMem_41ddfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddfb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddfb)
  store %struct.Memory* %call_41ddfb, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x4(%rax)	 RIP: 41ddfe	 Bytes: 3
  %loadMem_41ddfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddfe = call %struct.Memory* @routine_movl__edx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddfe)
  store %struct.Memory* %call_41ddfe, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41de01	 Bytes: 8
  %loadMem_41de01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de01 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de01)
  store %struct.Memory* %call_41de01, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 41de09	 Bytes: 4
  %loadMem_41de09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de09 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de09)
  store %struct.Memory* %call_41de09, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41de0d	 Bytes: 4
  %loadMem_41de0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de0d = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de0d)
  store %struct.Memory* %call_41de0d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41de11	 Bytes: 3
  %loadMem_41de11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de11 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de11)
  store %struct.Memory* %call_41de11, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x10(%rax)	 RIP: 41de14	 Bytes: 7
  %loadMem_41de14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de14 = call %struct.Memory* @routine_movl__0x1__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de14)
  store %struct.Memory* %call_41de14, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41de1b	 Bytes: 8
  %loadMem_41de1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de1b = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de1b)
  store %struct.Memory* %call_41de1b, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 41de23	 Bytes: 4
  %loadMem_41de23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de23 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de23)
  store %struct.Memory* %call_41de23, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41de27	 Bytes: 4
  %loadMem_41de27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de27 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de27)
  store %struct.Memory* %call_41de27, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41de2b	 Bytes: 3
  %loadMem_41de2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de2b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de2b)
  store %struct.Memory* %call_41de2b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8(%rax)	 RIP: 41de2e	 Bytes: 7
  %loadMem_41de2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de2e = call %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de2e)
  store %struct.Memory* %call_41de2e, %struct.Memory** %MEMORY

  ; Code: .L_41de35:	 RIP: 41de35	 Bytes: 0
  br label %block_.L_41de35
block_.L_41de35:

  ; Code: jmpq .L_41de3a	 RIP: 41de35	 Bytes: 5
  %loadMem_41de35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de35 = call %struct.Memory* @routine_jmpq_.L_41de3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de35, i64 5, i64 5)
  store %struct.Memory* %call_41de35, %struct.Memory** %MEMORY

  br label %block_.L_41de3a

  ; Code: .L_41de3a:	 RIP: 41de3a	 Bytes: 0
block_.L_41de3a:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 41de3a	 Bytes: 3
  %loadMem_41de3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de3a = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de3a)
  store %struct.Memory* %call_41de3a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41de3d	 Bytes: 3
  %loadMem_41de3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de3d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de3d)
  store %struct.Memory* %call_41de3d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 41de40	 Bytes: 3
  %loadMem_41de40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de40 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de40)
  store %struct.Memory* %call_41de40, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41dd35	 RIP: 41de43	 Bytes: 5
  %loadMem_41de43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de43 = call %struct.Memory* @routine_jmpq_.L_41dd35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de43, i64 -270, i64 5)
  store %struct.Memory* %call_41de43, %struct.Memory** %MEMORY

  br label %block_.L_41dd35

  ; Code: .L_41de48:	 RIP: 41de48	 Bytes: 0
block_.L_41de48:

  ; Code: jmpq .L_41e374	 RIP: 41de48	 Bytes: 5
  %loadMem_41de48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de48 = call %struct.Memory* @routine_jmpq_.L_41e374(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de48, i64 1324, i64 5)
  store %struct.Memory* %call_41de48, %struct.Memory** %MEMORY

  br label %block_.L_41e374

  ; Code: .L_41de4d:	 RIP: 41de4d	 Bytes: 0
block_.L_41de4d:

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 41de4d	 Bytes: 7
  %loadMem_41de4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de4d = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de4d)
  store %struct.Memory* %call_41de4d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41de54	 Bytes: 8
  %loadMem_41de54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de54 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de54)
  store %struct.Memory* %call_41de54, %struct.Memory** %MEMORY

  ; Code: movl 0x4d4(%rax), %ecx	 RIP: 41de5c	 Bytes: 6
  %loadMem_41de5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de5c = call %struct.Memory* @routine_movl_0x4d4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de5c)
  store %struct.Memory* %call_41de5c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 41de62	 Bytes: 3
  %loadMem_41de62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de62 = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de62)
  store %struct.Memory* %call_41de62, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 41de65	 Bytes: 3
  %loadMem_41de65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de65 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de65)
  store %struct.Memory* %call_41de65, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 41de68	 Bytes: 3
  %loadMem_41de68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de68 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de68)
  store %struct.Memory* %call_41de68, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41de6b	 Bytes: 8
  %loadMem_41de6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de6b = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de6b)
  store %struct.Memory* %call_41de6b, %struct.Memory** %MEMORY

  ; Code: movl 0x4d4(%rax), %ecx	 RIP: 41de73	 Bytes: 6
  %loadMem_41de73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de73 = call %struct.Memory* @routine_movl_0x4d4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de73)
  store %struct.Memory* %call_41de73, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x30(%rbp)	 RIP: 41de79	 Bytes: 3
  %loadMem_41de79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de79 = call %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de79)
  store %struct.Memory* %call_41de79, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41de7c	 Bytes: 8
  %loadMem_41de7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de7c = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de7c)
  store %struct.Memory* %call_41de7c, %struct.Memory** %MEMORY

  ; Code: movl 0x4d4(%rax), %ecx	 RIP: 41de84	 Bytes: 6
  %loadMem_41de84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de84 = call %struct.Memory* @routine_movl_0x4d4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de84)
  store %struct.Memory* %call_41de84, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 41de8a	 Bytes: 3
  %loadMem_41de8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de8a = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de8a)
  store %struct.Memory* %call_41de8a, %struct.Memory** %MEMORY

  ; Code: .L_41de8d:	 RIP: 41de8d	 Bytes: 0
  br label %block_.L_41de8d
block_.L_41de8d:

  ; Code: cmpl $0x2, -0x14(%rbp)	 RIP: 41de8d	 Bytes: 4
  %loadMem_41de8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de8d = call %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de8d)
  store %struct.Memory* %call_41de8d, %struct.Memory** %MEMORY

  ; Code: jle .L_41debb	 RIP: 41de91	 Bytes: 6
  %loadMem_41de91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de91 = call %struct.Memory* @routine_jle_.L_41debb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de91, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_41de91, %struct.Memory** %MEMORY

  %loadBr_41de91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41de91 = icmp eq i8 %loadBr_41de91, 1
  br i1 %cmpBr_41de91, label %block_.L_41debb, label %block_41de97

block_41de97:
  ; Code: movl $0x2, %eax	 RIP: 41de97	 Bytes: 5
  %loadMem_41de97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de97 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de97)
  store %struct.Memory* %call_41de97, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 41de9c	 Bytes: 3
  %loadMem_41de9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de9c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de9c)
  store %struct.Memory* %call_41de9c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 41de9f	 Bytes: 3
  %loadMem_41de9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de9f = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de9f)
  store %struct.Memory* %call_41de9f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 41dea2	 Bytes: 2
  %loadMem_41dea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dea2 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dea2)
  store %struct.Memory* %call_41dea2, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 41dea4	 Bytes: 1
  %loadMem_41dea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dea4 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dea4)
  store %struct.Memory* %call_41dea4, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %ecx	 RIP: 41dea5	 Bytes: 3
  %loadMem_41dea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dea5 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dea5)
  store %struct.Memory* %call_41dea5, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 41dea8	 Bytes: 2
  %loadMem_41dea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dea8 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dea8)
  store %struct.Memory* %call_41dea8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 41deaa	 Bytes: 3
  %loadMem_41deaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41deaa = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41deaa)
  store %struct.Memory* %call_41deaa, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 41dead	 Bytes: 3
  %loadMem_41dead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dead = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dead)
  store %struct.Memory* %call_41dead, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41deb0	 Bytes: 3
  %loadMem_41deb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41deb0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41deb0)
  store %struct.Memory* %call_41deb0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 41deb3	 Bytes: 3
  %loadMem_41deb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41deb3 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41deb3)
  store %struct.Memory* %call_41deb3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41de8d	 RIP: 41deb6	 Bytes: 5
  %loadMem_41deb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41deb6 = call %struct.Memory* @routine_jmpq_.L_41de8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41deb6, i64 -41, i64 5)
  store %struct.Memory* %call_41deb6, %struct.Memory** %MEMORY

  br label %block_.L_41de8d

  ; Code: .L_41debb:	 RIP: 41debb	 Bytes: 0
block_.L_41debb:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 41debb	 Bytes: 3
  %loadMem_41debb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41debb = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41debb)
  store %struct.Memory* %call_41debb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 41debe	 Bytes: 3
  %loadMem_41debe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41debe = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41debe)
  store %struct.Memory* %call_41debe, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 41dec1	 Bytes: 3
  %loadMem_41dec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dec1 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dec1)
  store %struct.Memory* %call_41dec1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41dec4	 Bytes: 3
  %loadMem_41dec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dec4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dec4)
  store %struct.Memory* %call_41dec4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41dec7	 Bytes: 3
  %loadMem_41dec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dec7 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dec7)
  store %struct.Memory* %call_41dec7, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 41deca	 Bytes: 4
  %loadMem_41deca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41deca = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41deca)
  store %struct.Memory* %call_41deca, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41dece	 Bytes: 3
  %loadMem_41dece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dece = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dece)
  store %struct.Memory* %call_41dece, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 41ded1	 Bytes: 5
  %loadMem1_41ded1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ded1 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ded1, i64 -118145, i64 5, i64 5)
  store %struct.Memory* %call1_41ded1, %struct.Memory** %MEMORY

  %loadMem2_41ded1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ded1 = load i64, i64* %3
  %call2_41ded1 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_41ded1, %struct.Memory* %loadMem2_41ded1)
  store %struct.Memory* %call2_41ded1, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 41ded6	 Bytes: 2
  %loadMem_41ded6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ded6 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ded6)
  store %struct.Memory* %call_41ded6, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 41ded8	 Bytes: 2
  %loadMem_41ded8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ded8 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ded8)
  store %struct.Memory* %call_41ded8, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 41deda	 Bytes: 4
  %loadMem_41deda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41deda = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41deda)
  store %struct.Memory* %call_41deda, %struct.Memory** %MEMORY

  ; Code: cmpq %rax, %rcx	 RIP: 41dede	 Bytes: 3
  %loadMem_41dede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dede = call %struct.Memory* @routine_cmpq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dede)
  store %struct.Memory* %call_41dede, %struct.Memory** %MEMORY

  ; Code: jne .L_41def6	 RIP: 41dee1	 Bytes: 6
  %loadMem_41dee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dee1 = call %struct.Memory* @routine_jne_.L_41def6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dee1, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_41dee1, %struct.Memory** %MEMORY

  %loadBr_41dee1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dee1 = icmp eq i8 %loadBr_41dee1, 1
  br i1 %cmpBr_41dee1, label %block_.L_41def6, label %block_41dee7

block_41dee7:
  ; Code: movq $0x4bf5b7, %rdi	 RIP: 41dee7	 Bytes: 10
  %loadMem_41dee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dee7 = call %struct.Memory* @routine_movq__0x4bf5b7___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dee7)
  store %struct.Memory* %call_41dee7, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 41def1	 Bytes: 5
  %loadMem1_41def1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41def1 = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41def1, i64 242943, i64 5, i64 5)
  store %struct.Memory* %call1_41def1, %struct.Memory** %MEMORY

  %loadMem2_41def1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41def1 = load i64, i64* %3
  %call2_41def1 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_41def1, %struct.Memory* %loadMem2_41def1)
  store %struct.Memory* %call2_41def1, %struct.Memory** %MEMORY

  ; Code: .L_41def6:	 RIP: 41def6	 Bytes: 0
  br label %block_.L_41def6
block_.L_41def6:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 41def6	 Bytes: 3
  %loadMem_41def6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41def6 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41def6)
  store %struct.Memory* %call_41def6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41def9	 Bytes: 3
  %loadMem_41def9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41def9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41def9)
  store %struct.Memory* %call_41def9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41defc	 Bytes: 3
  %loadMem_41defc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41defc = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41defc)
  store %struct.Memory* %call_41defc, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 41deff	 Bytes: 4
  %loadMem_41deff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41deff = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41deff)
  store %struct.Memory* %call_41deff, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41df03	 Bytes: 3
  %loadMem_41df03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df03 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df03)
  store %struct.Memory* %call_41df03, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 41df06	 Bytes: 5
  %loadMem1_41df06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41df06 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41df06, i64 -118198, i64 5, i64 5)
  store %struct.Memory* %call1_41df06, %struct.Memory** %MEMORY

  %loadMem2_41df06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41df06 = load i64, i64* %3
  %call2_41df06 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_41df06, %struct.Memory* %loadMem2_41df06)
  store %struct.Memory* %call2_41df06, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 41df0b	 Bytes: 2
  %loadMem_41df0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df0b = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df0b)
  store %struct.Memory* %call_41df0b, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 41df0d	 Bytes: 2
  %loadMem_41df0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df0d = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df0d)
  store %struct.Memory* %call_41df0d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x28(%rbp)	 RIP: 41df0f	 Bytes: 4
  %loadMem_41df0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df0f = call %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df0f)
  store %struct.Memory* %call_41df0f, %struct.Memory** %MEMORY

  ; Code: cmpq %rax, %rcx	 RIP: 41df13	 Bytes: 3
  %loadMem_41df13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df13 = call %struct.Memory* @routine_cmpq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df13)
  store %struct.Memory* %call_41df13, %struct.Memory** %MEMORY

  ; Code: jne .L_41df2b	 RIP: 41df16	 Bytes: 6
  %loadMem_41df16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df16 = call %struct.Memory* @routine_jne_.L_41df2b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df16, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_41df16, %struct.Memory** %MEMORY

  %loadBr_41df16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41df16 = icmp eq i8 %loadBr_41df16, 1
  br i1 %cmpBr_41df16, label %block_.L_41df2b, label %block_41df1c

block_41df1c:
  ; Code: movq $0x4bf5d5, %rdi	 RIP: 41df1c	 Bytes: 10
  %loadMem_41df1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df1c = call %struct.Memory* @routine_movq__0x4bf5d5___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df1c)
  store %struct.Memory* %call_41df1c, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 41df26	 Bytes: 5
  %loadMem1_41df26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41df26 = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41df26, i64 242890, i64 5, i64 5)
  store %struct.Memory* %call1_41df26, %struct.Memory** %MEMORY

  %loadMem2_41df26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41df26 = load i64, i64* %3
  %call2_41df26 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_41df26, %struct.Memory* %loadMem2_41df26)
  store %struct.Memory* %call2_41df26, %struct.Memory** %MEMORY

  ; Code: .L_41df2b:	 RIP: 41df2b	 Bytes: 0
  br label %block_.L_41df2b
block_.L_41df2b:

  ; Code: movl $0x0, -0x38(%rbp)	 RIP: 41df2b	 Bytes: 7
  %loadMem_41df2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df2b = call %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df2b)
  store %struct.Memory* %call_41df2b, %struct.Memory** %MEMORY

  ; Code: .L_41df32:	 RIP: 41df32	 Bytes: 0
  br label %block_.L_41df32
block_.L_41df32:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 41df32	 Bytes: 3
  %loadMem_41df32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df32 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df32)
  store %struct.Memory* %call_41df32, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 41df35	 Bytes: 8
  %loadMem_41df35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df35 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df35)
  store %struct.Memory* %call_41df35, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4d4(%rcx), %eax	 RIP: 41df3d	 Bytes: 6
  %loadMem_41df3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df3d = call %struct.Memory* @routine_cmpl_0x4d4__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df3d)
  store %struct.Memory* %call_41df3d, %struct.Memory** %MEMORY

  ; Code: jge .L_41df8a	 RIP: 41df43	 Bytes: 6
  %loadMem_41df43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df43 = call %struct.Memory* @routine_jge_.L_41df8a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df43, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_41df43, %struct.Memory** %MEMORY

  %loadBr_41df43 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41df43 = icmp eq i8 %loadBr_41df43, 1
  br i1 %cmpBr_41df43, label %block_.L_41df8a, label %block_41df49

block_41df49:
  ; Code: movq 0x6d0278, %rax	 RIP: 41df49	 Bytes: 8
  %loadMem_41df49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df49 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df49)
  store %struct.Memory* %call_41df49, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 41df51	 Bytes: 4
  %loadMem_41df51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df51 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df51)
  store %struct.Memory* %call_41df51, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41df55	 Bytes: 4
  %loadMem_41df55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df55 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df55)
  store %struct.Memory* %call_41df55, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41df59	 Bytes: 3
  %loadMem_41df59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df59 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df59)
  store %struct.Memory* %call_41df59, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x4(%rax)	 RIP: 41df5c	 Bytes: 7
  %loadMem_41df5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df5c = call %struct.Memory* @routine_movl__0x0__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df5c)
  store %struct.Memory* %call_41df5c, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41df63	 Bytes: 8
  %loadMem_41df63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df63 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df63)
  store %struct.Memory* %call_41df63, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 41df6b	 Bytes: 4
  %loadMem_41df6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df6b = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df6b)
  store %struct.Memory* %call_41df6b, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41df6f	 Bytes: 4
  %loadMem_41df6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df6f = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df6f)
  store %struct.Memory* %call_41df6f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41df73	 Bytes: 3
  %loadMem_41df73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df73 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df73)
  store %struct.Memory* %call_41df73, %struct.Memory** %MEMORY

  ; Code: movl $0x1, (%rax)	 RIP: 41df76	 Bytes: 6
  %loadMem_41df76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df76 = call %struct.Memory* @routine_movl__0x1____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df76)
  store %struct.Memory* %call_41df76, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 41df7c	 Bytes: 3
  %loadMem_41df7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df7c = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df7c)
  store %struct.Memory* %call_41df7c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41df7f	 Bytes: 3
  %loadMem_41df7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df7f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df7f)
  store %struct.Memory* %call_41df7f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 41df82	 Bytes: 3
  %loadMem_41df82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df82 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df82)
  store %struct.Memory* %call_41df82, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41df32	 RIP: 41df85	 Bytes: 5
  %loadMem_41df85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df85 = call %struct.Memory* @routine_jmpq_.L_41df32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df85, i64 -83, i64 5)
  store %struct.Memory* %call_41df85, %struct.Memory** %MEMORY

  br label %block_.L_41df32

  ; Code: .L_41df8a:	 RIP: 41df8a	 Bytes: 0
block_.L_41df8a:

  ; Code: jmpq .L_41df8f	 RIP: 41df8a	 Bytes: 5
  %loadMem_41df8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df8a = call %struct.Memory* @routine_jmpq_.L_41df8f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df8a, i64 5, i64 5)
  store %struct.Memory* %call_41df8a, %struct.Memory** %MEMORY

  br label %block_.L_41df8f

  ; Code: .L_41df8f:	 RIP: 41df8f	 Bytes: 0
block_.L_41df8f:

  ; Code: cmpl $0x2, -0x34(%rbp)	 RIP: 41df8f	 Bytes: 4
  %loadMem_41df8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df8f = call %struct.Memory* @routine_cmpl__0x2__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df8f)
  store %struct.Memory* %call_41df8f, %struct.Memory** %MEMORY

  ; Code: jle .L_41dffc	 RIP: 41df93	 Bytes: 6
  %loadMem_41df93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df93 = call %struct.Memory* @routine_jle_.L_41dffc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df93, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_41df93, %struct.Memory** %MEMORY

  %loadBr_41df93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41df93 = icmp eq i8 %loadBr_41df93, 1
  br i1 %cmpBr_41df93, label %block_.L_41dffc, label %block_41df99

block_41df99:
  ; Code: movl $0x2, %eax	 RIP: 41df99	 Bytes: 5
  %loadMem_41df99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df99 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df99)
  store %struct.Memory* %call_41df99, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 41df9e	 Bytes: 3
  %loadMem_41df9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df9e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df9e)
  store %struct.Memory* %call_41df9e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 41dfa1	 Bytes: 3
  %loadMem_41dfa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfa1 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfa1)
  store %struct.Memory* %call_41dfa1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 41dfa4	 Bytes: 2
  %loadMem_41dfa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfa4 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfa4)
  store %struct.Memory* %call_41dfa4, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 41dfa6	 Bytes: 1
  %loadMem_41dfa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfa6 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfa6)
  store %struct.Memory* %call_41dfa6, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ecx	 RIP: 41dfa7	 Bytes: 3
  %loadMem_41dfa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfa7 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfa7)
  store %struct.Memory* %call_41dfa7, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 41dfaa	 Bytes: 2
  %loadMem_41dfaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfaa = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfaa)
  store %struct.Memory* %call_41dfaa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 41dfac	 Bytes: 3
  %loadMem_41dfac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfac = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfac)
  store %struct.Memory* %call_41dfac, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 41dfaf	 Bytes: 3
  %loadMem_41dfaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfaf = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfaf)
  store %struct.Memory* %call_41dfaf, %struct.Memory** %MEMORY

  ; Code: subl -0x34(%rbp), %eax	 RIP: 41dfb2	 Bytes: 3
  %loadMem_41dfb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfb2 = call %struct.Memory* @routine_subl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfb2)
  store %struct.Memory* %call_41dfb2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 41dfb5	 Bytes: 4
  %loadMem_41dfb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfb5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfb5)
  store %struct.Memory* %call_41dfb5, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 41dfb9	 Bytes: 4
  %loadMem_41dfb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfb9 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfb9)
  store %struct.Memory* %call_41dfb9, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rsi,%rdi,4)	 RIP: 41dfbd	 Bytes: 3
  %loadMem_41dfbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfbd = call %struct.Memory* @routine_movl__eax____rsi__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfbd)
  store %struct.Memory* %call_41dfbd, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 41dfc0	 Bytes: 3
  %loadMem_41dfc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfc0 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfc0)
  store %struct.Memory* %call_41dfc0, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %r8d	 RIP: 41dfc3	 Bytes: 4
  %loadMem_41dfc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfc3 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfc3)
  store %struct.Memory* %call_41dfc3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 41dfc7	 Bytes: 3
  %loadMem_41dfc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfc7 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfc7)
  store %struct.Memory* %call_41dfc7, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 41dfca	 Bytes: 3
  %loadMem_41dfca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfca = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfca)
  store %struct.Memory* %call_41dfca, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 41dfcd	 Bytes: 1
  %loadMem_41dfcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfcd = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfcd)
  store %struct.Memory* %call_41dfcd, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 41dfce	 Bytes: 2
  %loadMem_41dfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfce = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfce)
  store %struct.Memory* %call_41dfce, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %r8d	 RIP: 41dfd0	 Bytes: 4
  %loadMem_41dfd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfd0 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfd0)
  store %struct.Memory* %call_41dfd0, %struct.Memory** %MEMORY

  ; Code: addl %edx, %r8d	 RIP: 41dfd4	 Bytes: 3
  %loadMem_41dfd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfd4 = call %struct.Memory* @routine_addl__edx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfd4)
  store %struct.Memory* %call_41dfd4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rsi	 RIP: 41dfd7	 Bytes: 4
  %loadMem_41dfd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfd7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfd7)
  store %struct.Memory* %call_41dfd7, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 41dfdb	 Bytes: 3
  %loadMem_41dfdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfdb = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfdb)
  store %struct.Memory* %call_41dfdb, %struct.Memory** %MEMORY

  ; Code: subl -0x2c(%rbp), %edx	 RIP: 41dfde	 Bytes: 3
  %loadMem_41dfde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfde = call %struct.Memory* @routine_subl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfde)
  store %struct.Memory* %call_41dfde, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rdi	 RIP: 41dfe1	 Bytes: 3
  %loadMem_41dfe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfe1 = call %struct.Memory* @routine_movslq__edx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfe1)
  store %struct.Memory* %call_41dfe1, %struct.Memory** %MEMORY

  ; Code: movl %r8d, (%rsi,%rdi,4)	 RIP: 41dfe4	 Bytes: 4
  %loadMem_41dfe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfe4 = call %struct.Memory* @routine_movl__r8d____rsi__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfe4)
  store %struct.Memory* %call_41dfe4, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 41dfe8	 Bytes: 3
  %loadMem_41dfe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfe8 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfe8)
  store %struct.Memory* %call_41dfe8, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x30(%rbp)	 RIP: 41dfeb	 Bytes: 3
  %loadMem_41dfeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfeb = call %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfeb)
  store %struct.Memory* %call_41dfeb, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 41dfee	 Bytes: 3
  %loadMem_41dfee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfee = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfee)
  store %struct.Memory* %call_41dfee, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %edx	 RIP: 41dff1	 Bytes: 3
  %loadMem_41dff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dff1 = call %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dff1)
  store %struct.Memory* %call_41dff1, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp)	 RIP: 41dff4	 Bytes: 3
  %loadMem_41dff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dff4 = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dff4)
  store %struct.Memory* %call_41dff4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41df8f	 RIP: 41dff7	 Bytes: 5
  %loadMem_41dff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dff7 = call %struct.Memory* @routine_jmpq_.L_41df8f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dff7, i64 -104, i64 5)
  store %struct.Memory* %call_41dff7, %struct.Memory** %MEMORY

  br label %block_.L_41df8f

  ; Code: .L_41dffc:	 RIP: 41dffc	 Bytes: 0
block_.L_41dffc:

  ; Code: movl $0x2, %eax	 RIP: 41dffc	 Bytes: 5
  %loadMem_41dffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dffc = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dffc)
  store %struct.Memory* %call_41dffc, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 41e001	 Bytes: 3
  %loadMem_41e001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e001 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e001)
  store %struct.Memory* %call_41e001, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 41e004	 Bytes: 4
  %loadMem_41e004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e004 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e004)
  store %struct.Memory* %call_41e004, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rdx)	 RIP: 41e008	 Bytes: 2
  %loadMem_41e008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e008 = call %struct.Memory* @routine_movl__ecx____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e008)
  store %struct.Memory* %call_41e008, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 41e00a	 Bytes: 3
  %loadMem_41e00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e00a = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e00a)
  store %struct.Memory* %call_41e00a, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 41e00d	 Bytes: 3
  %loadMem_41e00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e00d = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e00d)
  store %struct.Memory* %call_41e00d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 41e010	 Bytes: 3
  %loadMem_41e010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e010 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e010)
  store %struct.Memory* %call_41e010, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 41e013	 Bytes: 2
  %loadMem_41e013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e013 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e013)
  store %struct.Memory* %call_41e013, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 41e015	 Bytes: 1
  %loadMem_41e015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e015 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e015)
  store %struct.Memory* %call_41e015, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 41e016	 Bytes: 3
  %loadMem_41e016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e016 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e016)
  store %struct.Memory* %call_41e016, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 41e019	 Bytes: 2
  %loadMem_41e019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e019 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e019)
  store %struct.Memory* %call_41e019, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 41e01b	 Bytes: 2
  %loadMem_41e01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e01b = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e01b)
  store %struct.Memory* %call_41e01b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41e01d	 Bytes: 4
  %loadMem_41e01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e01d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e01d)
  store %struct.Memory* %call_41e01d, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %r8	 RIP: 41e021	 Bytes: 4
  %loadMem_41e021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e021 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e021)
  store %struct.Memory* %call_41e021, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rdi,%r8,4)	 RIP: 41e025	 Bytes: 4
  %loadMem_41e025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e025 = call %struct.Memory* @routine_movl__ecx____rdi__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e025)
  store %struct.Memory* %call_41e025, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 41e029	 Bytes: 7
  %loadMem_41e029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e029 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e029)
  store %struct.Memory* %call_41e029, %struct.Memory** %MEMORY

  ; Code: .L_41e030:	 RIP: 41e030	 Bytes: 0
  br label %block_.L_41e030
block_.L_41e030:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41e030	 Bytes: 3
  %loadMem_41e030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e030 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e030)
  store %struct.Memory* %call_41e030, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41e033	 Bytes: 4
  %loadMem_41e033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e033 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e033)
  store %struct.Memory* %call_41e033, %struct.Memory** %MEMORY

  ; Code: cmpl (%rcx), %eax	 RIP: 41e037	 Bytes: 2
  %loadMem_41e037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e037 = call %struct.Memory* @routine_cmpl___rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e037)
  store %struct.Memory* %call_41e037, %struct.Memory** %MEMORY

  ; Code: jge .L_41e078	 RIP: 41e039	 Bytes: 6
  %loadMem_41e039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e039 = call %struct.Memory* @routine_jge_.L_41e078(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e039, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_41e039, %struct.Memory** %MEMORY

  %loadBr_41e039 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e039 = icmp eq i8 %loadBr_41e039, 1
  br i1 %cmpBr_41e039, label %block_.L_41e078, label %block_41e03f

block_41e03f:
  ; Code: movl -0x10(%rbp), %edi	 RIP: 41e03f	 Bytes: 3
  %loadMem_41e03f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e03f = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e03f)
  store %struct.Memory* %call_41e03f, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41e042	 Bytes: 3
  %loadMem_41e042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e042 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e042)
  store %struct.Memory* %call_41e042, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41e045	 Bytes: 3
  %loadMem_41e045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e045 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e045)
  store %struct.Memory* %call_41e045, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 41e048	 Bytes: 4
  %loadMem_41e048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e048 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e048)
  store %struct.Memory* %call_41e048, %struct.Memory** %MEMORY

  ; Code: imull (%rcx), %eax	 RIP: 41e04c	 Bytes: 3
  %loadMem_41e04c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e04c = call %struct.Memory* @routine_imull___rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e04c)
  store %struct.Memory* %call_41e04c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 41e04f	 Bytes: 3
  %loadMem_41e04f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e04f = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e04f)
  store %struct.Memory* %call_41e04f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 41e052	 Bytes: 4
  %loadMem_41e052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e052 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e052)
  store %struct.Memory* %call_41e052, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edx	 RIP: 41e056	 Bytes: 2
  %loadMem_41e056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e056 = call %struct.Memory* @routine_movl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e056)
  store %struct.Memory* %call_41e056, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 41e058	 Bytes: 3
  %loadMem_41e058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e058 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e058)
  store %struct.Memory* %call_41e058, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rcx	 RIP: 41e05b	 Bytes: 8
  %loadMem_41e05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e05b = call %struct.Memory* @routine_movq_0x6d0278___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e05b)
  store %struct.Memory* %call_41e05b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41e063	 Bytes: 2
  %loadMem_41e063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e063 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e063)
  store %struct.Memory* %call_41e063, %struct.Memory** %MEMORY

  ; Code: callq .gop_pyramid	 RIP: 41e065	 Bytes: 5
  %loadMem1_41e065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e065 = call %struct.Memory* @routine_callq_.gop_pyramid(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e065, i64 795, i64 5, i64 5)
  store %struct.Memory* %call1_41e065, %struct.Memory** %MEMORY

  %loadMem2_41e065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e065 = load i64, i64* %3
  %call2_41e065 = call %struct.Memory* @sub_41e380.gop_pyramid(%struct.State* %0, i64  %loadPC_41e065, %struct.Memory* %loadMem2_41e065)
  store %struct.Memory* %call2_41e065, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41e06a	 Bytes: 3
  %loadMem_41e06a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e06a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e06a)
  store %struct.Memory* %call_41e06a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41e06d	 Bytes: 3
  %loadMem_41e06d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e06d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e06d)
  store %struct.Memory* %call_41e06d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 41e070	 Bytes: 3
  %loadMem_41e070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e070 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e070)
  store %struct.Memory* %call_41e070, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41e030	 RIP: 41e073	 Bytes: 5
  %loadMem_41e073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e073 = call %struct.Memory* @routine_jmpq_.L_41e030(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e073, i64 -67, i64 5)
  store %struct.Memory* %call_41e073, %struct.Memory** %MEMORY

  br label %block_.L_41e030

  ; Code: .L_41e078:	 RIP: 41e078	 Bytes: 0
block_.L_41e078:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41e078	 Bytes: 8
  %loadMem_41e078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e078 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e078)
  store %struct.Memory* %call_41e078, %struct.Memory** %MEMORY

  ; Code: movl 0x4d4(%rax), %ecx	 RIP: 41e080	 Bytes: 6
  %loadMem_41e080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e080 = call %struct.Memory* @routine_movl_0x4d4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e080)
  store %struct.Memory* %call_41e080, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x8(%rbp)	 RIP: 41e086	 Bytes: 3
  %loadMem_41e086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e086 = call %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e086)
  store %struct.Memory* %call_41e086, %struct.Memory** %MEMORY

  ; Code: .L_41e089:	 RIP: 41e089	 Bytes: 0
  br label %block_.L_41e089
block_.L_41e089:

  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 41e089	 Bytes: 4
  %loadMem_41e089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e089 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e089)
  store %struct.Memory* %call_41e089, %struct.Memory** %MEMORY

  ; Code: jle .L_41e36f	 RIP: 41e08d	 Bytes: 6
  %loadMem_41e08d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e08d = call %struct.Memory* @routine_jle_.L_41e36f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e08d, i8* %BRANCH_TAKEN, i64 738, i64 6, i64 6)
  store %struct.Memory* %call_41e08d, %struct.Memory** %MEMORY

  %loadBr_41e08d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e08d = icmp eq i8 %loadBr_41e08d, 1
  br i1 %cmpBr_41e08d, label %block_.L_41e36f, label %block_41e093

block_41e093:
  ; Code: movl $0x1, -0x38(%rbp)	 RIP: 41e093	 Bytes: 7
  %loadMem_41e093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e093 = call %struct.Memory* @routine_movl__0x1__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e093)
  store %struct.Memory* %call_41e093, %struct.Memory** %MEMORY

  ; Code: .L_41e09a:	 RIP: 41e09a	 Bytes: 0
  br label %block_.L_41e09a
block_.L_41e09a:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 41e09a	 Bytes: 3
  %loadMem_41e09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e09a = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e09a)
  store %struct.Memory* %call_41e09a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 41e09d	 Bytes: 3
  %loadMem_41e09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e09d = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e09d)
  store %struct.Memory* %call_41e09d, %struct.Memory** %MEMORY

  ; Code: jge .L_41e35c	 RIP: 41e0a0	 Bytes: 6
  %loadMem_41e0a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0a0 = call %struct.Memory* @routine_jge_.L_41e35c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0a0, i8* %BRANCH_TAKEN, i64 700, i64 6, i64 6)
  store %struct.Memory* %call_41e0a0, %struct.Memory** %MEMORY

  %loadBr_41e0a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e0a0 = icmp eq i8 %loadBr_41e0a0, 1
  br i1 %cmpBr_41e0a0, label %block_.L_41e35c, label %block_41e0a6

block_41e0a6:
  ; Code: movq 0x6d0278, %rax	 RIP: 41e0a6	 Bytes: 8
  %loadMem_41e0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0a6 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0a6)
  store %struct.Memory* %call_41e0a6, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 41e0ae	 Bytes: 4
  %loadMem_41e0ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0ae = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0ae)
  store %struct.Memory* %call_41e0ae, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41e0b2	 Bytes: 4
  %loadMem_41e0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0b2 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0b2)
  store %struct.Memory* %call_41e0b2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41e0b6	 Bytes: 3
  %loadMem_41e0b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0b6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0b6)
  store %struct.Memory* %call_41e0b6, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %edx	 RIP: 41e0b9	 Bytes: 3
  %loadMem_41e0b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0b9 = call %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0b9)
  store %struct.Memory* %call_41e0b9, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e0bc	 Bytes: 8
  %loadMem_41e0bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0bc = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0bc)
  store %struct.Memory* %call_41e0bc, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 41e0c4	 Bytes: 3
  %loadMem_41e0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0c4 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0c4)
  store %struct.Memory* %call_41e0c4, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 41e0c7	 Bytes: 3
  %loadMem_41e0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0c7 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0c7)
  store %struct.Memory* %call_41e0c7, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 41e0ca	 Bytes: 3
  %loadMem_41e0ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0ca = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0ca)
  store %struct.Memory* %call_41e0ca, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41e0cd	 Bytes: 4
  %loadMem_41e0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0cd = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0cd)
  store %struct.Memory* %call_41e0cd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41e0d1	 Bytes: 3
  %loadMem_41e0d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0d1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0d1)
  store %struct.Memory* %call_41e0d1, %struct.Memory** %MEMORY

  ; Code: cmpl 0x10(%rax), %edx	 RIP: 41e0d4	 Bytes: 3
  %loadMem_41e0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0d4 = call %struct.Memory* @routine_cmpl_0x10__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0d4)
  store %struct.Memory* %call_41e0d4, %struct.Memory** %MEMORY

  ; Code: jle .L_41e349	 RIP: 41e0d7	 Bytes: 6
  %loadMem_41e0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0d7 = call %struct.Memory* @routine_jle_.L_41e349(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0d7, i8* %BRANCH_TAKEN, i64 626, i64 6, i64 6)
  store %struct.Memory* %call_41e0d7, %struct.Memory** %MEMORY

  %loadBr_41e0d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e0d7 = icmp eq i8 %loadBr_41e0d7, 1
  br i1 %cmpBr_41e0d7, label %block_.L_41e349, label %block_41e0dd

block_41e0dd:
  ; Code: movq 0x6d0278, %rax	 RIP: 41e0dd	 Bytes: 8
  %loadMem_41e0dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0dd = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0dd)
  store %struct.Memory* %call_41e0dd, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 41e0e5	 Bytes: 3
  %loadMem_41e0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0e5 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0e5)
  store %struct.Memory* %call_41e0e5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 41e0e8	 Bytes: 3
  %loadMem_41e0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0e8 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0e8)
  store %struct.Memory* %call_41e0e8, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 41e0eb	 Bytes: 3
  %loadMem_41e0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0eb = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0eb)
  store %struct.Memory* %call_41e0eb, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e0ee	 Bytes: 4
  %loadMem_41e0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0ee = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0ee)
  store %struct.Memory* %call_41e0ee, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e0f2	 Bytes: 3
  %loadMem_41e0f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0f2 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0f2)
  store %struct.Memory* %call_41e0f2, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 41e0f5	 Bytes: 3
  %loadMem_41e0f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0f5 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0f5)
  store %struct.Memory* %call_41e0f5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3c(%rbp)	 RIP: 41e0f8	 Bytes: 3
  %loadMem_41e0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0f8 = call %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0f8)
  store %struct.Memory* %call_41e0f8, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e0fb	 Bytes: 8
  %loadMem_41e0fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e0fb = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e0fb)
  store %struct.Memory* %call_41e0fb, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rdx	 RIP: 41e103	 Bytes: 4
  %loadMem_41e103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e103 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e103)
  store %struct.Memory* %call_41e103, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e107	 Bytes: 4
  %loadMem_41e107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e107 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e107)
  store %struct.Memory* %call_41e107, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e10b	 Bytes: 3
  %loadMem_41e10b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e10b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e10b)
  store %struct.Memory* %call_41e10b, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 41e10e	 Bytes: 3
  %loadMem_41e10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e10e = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e10e)
  store %struct.Memory* %call_41e10e, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e111	 Bytes: 8
  %loadMem_41e111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e111 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e111)
  store %struct.Memory* %call_41e111, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 41e119	 Bytes: 3
  %loadMem_41e119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e119 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e119)
  store %struct.Memory* %call_41e119, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 41e11c	 Bytes: 3
  %loadMem_41e11c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e11c = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e11c)
  store %struct.Memory* %call_41e11c, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 41e11f	 Bytes: 3
  %loadMem_41e11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e11f = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e11f)
  store %struct.Memory* %call_41e11f, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e122	 Bytes: 4
  %loadMem_41e122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e122 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e122)
  store %struct.Memory* %call_41e122, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e126	 Bytes: 3
  %loadMem_41e126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e126 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e126)
  store %struct.Memory* %call_41e126, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 41e129	 Bytes: 3
  %loadMem_41e129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e129 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e129)
  store %struct.Memory* %call_41e129, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 41e12c	 Bytes: 3
  %loadMem_41e12c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e12c = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e12c)
  store %struct.Memory* %call_41e12c, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e12f	 Bytes: 8
  %loadMem_41e12f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e12f = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e12f)
  store %struct.Memory* %call_41e12f, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rdx	 RIP: 41e137	 Bytes: 4
  %loadMem_41e137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e137 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e137)
  store %struct.Memory* %call_41e137, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e13b	 Bytes: 4
  %loadMem_41e13b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e13b = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e13b)
  store %struct.Memory* %call_41e13b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e13f	 Bytes: 3
  %loadMem_41e13f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e13f = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e13f)
  store %struct.Memory* %call_41e13f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 41e142	 Bytes: 3
  %loadMem_41e142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e142 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e142)
  store %struct.Memory* %call_41e142, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e145	 Bytes: 8
  %loadMem_41e145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e145 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e145)
  store %struct.Memory* %call_41e145, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 41e14d	 Bytes: 3
  %loadMem_41e14d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e14d = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e14d)
  store %struct.Memory* %call_41e14d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 41e150	 Bytes: 3
  %loadMem_41e150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e150 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e150)
  store %struct.Memory* %call_41e150, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 41e153	 Bytes: 3
  %loadMem_41e153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e153 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e153)
  store %struct.Memory* %call_41e153, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e156	 Bytes: 4
  %loadMem_41e156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e156 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e156)
  store %struct.Memory* %call_41e156, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e15a	 Bytes: 3
  %loadMem_41e15a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e15a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e15a)
  store %struct.Memory* %call_41e15a, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %ecx	 RIP: 41e15d	 Bytes: 3
  %loadMem_41e15d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e15d = call %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e15d)
  store %struct.Memory* %call_41e15d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3c(%rbp)	 RIP: 41e160	 Bytes: 3
  %loadMem_41e160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e160 = call %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e160)
  store %struct.Memory* %call_41e160, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e163	 Bytes: 8
  %loadMem_41e163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e163 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e163)
  store %struct.Memory* %call_41e163, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rdx	 RIP: 41e16b	 Bytes: 4
  %loadMem_41e16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e16b = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e16b)
  store %struct.Memory* %call_41e16b, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e16f	 Bytes: 4
  %loadMem_41e16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e16f = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e16f)
  store %struct.Memory* %call_41e16f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e173	 Bytes: 3
  %loadMem_41e173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e173 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e173)
  store %struct.Memory* %call_41e173, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %ecx	 RIP: 41e176	 Bytes: 3
  %loadMem_41e176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e176 = call %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e176)
  store %struct.Memory* %call_41e176, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e179	 Bytes: 8
  %loadMem_41e179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e179 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e179)
  store %struct.Memory* %call_41e179, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 41e181	 Bytes: 3
  %loadMem_41e181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e181 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e181)
  store %struct.Memory* %call_41e181, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 41e184	 Bytes: 3
  %loadMem_41e184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e184 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e184)
  store %struct.Memory* %call_41e184, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 41e187	 Bytes: 3
  %loadMem_41e187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e187 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e187)
  store %struct.Memory* %call_41e187, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e18a	 Bytes: 4
  %loadMem_41e18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e18a = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e18a)
  store %struct.Memory* %call_41e18a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e18e	 Bytes: 3
  %loadMem_41e18e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e18e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e18e)
  store %struct.Memory* %call_41e18e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rax)	 RIP: 41e191	 Bytes: 3
  %loadMem_41e191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e191 = call %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e191)
  store %struct.Memory* %call_41e191, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 41e194	 Bytes: 3
  %loadMem_41e194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e194 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e194)
  store %struct.Memory* %call_41e194, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e197	 Bytes: 8
  %loadMem_41e197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e197 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e197)
  store %struct.Memory* %call_41e197, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rdx	 RIP: 41e19f	 Bytes: 4
  %loadMem_41e19f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e19f = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e19f)
  store %struct.Memory* %call_41e19f, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e1a3	 Bytes: 4
  %loadMem_41e1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1a3 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1a3)
  store %struct.Memory* %call_41e1a3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e1a7	 Bytes: 3
  %loadMem_41e1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1a7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1a7)
  store %struct.Memory* %call_41e1a7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rax)	 RIP: 41e1aa	 Bytes: 3
  %loadMem_41e1aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1aa = call %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1aa)
  store %struct.Memory* %call_41e1aa, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e1ad	 Bytes: 8
  %loadMem_41e1ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1ad = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1ad)
  store %struct.Memory* %call_41e1ad, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 41e1b5	 Bytes: 3
  %loadMem_41e1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1b5 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1b5)
  store %struct.Memory* %call_41e1b5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 41e1b8	 Bytes: 3
  %loadMem_41e1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1b8 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1b8)
  store %struct.Memory* %call_41e1b8, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 41e1bb	 Bytes: 3
  %loadMem_41e1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1bb = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1bb)
  store %struct.Memory* %call_41e1bb, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e1be	 Bytes: 4
  %loadMem_41e1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1be = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1be)
  store %struct.Memory* %call_41e1be, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e1c2	 Bytes: 3
  %loadMem_41e1c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1c2 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1c2)
  store %struct.Memory* %call_41e1c2, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 41e1c5	 Bytes: 3
  %loadMem_41e1c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1c5 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1c5)
  store %struct.Memory* %call_41e1c5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3c(%rbp)	 RIP: 41e1c8	 Bytes: 3
  %loadMem_41e1c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1c8 = call %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1c8)
  store %struct.Memory* %call_41e1c8, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e1cb	 Bytes: 8
  %loadMem_41e1cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1cb = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1cb)
  store %struct.Memory* %call_41e1cb, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rdx	 RIP: 41e1d3	 Bytes: 4
  %loadMem_41e1d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1d3 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1d3)
  store %struct.Memory* %call_41e1d3, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e1d7	 Bytes: 4
  %loadMem_41e1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1d7 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1d7)
  store %struct.Memory* %call_41e1d7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e1db	 Bytes: 3
  %loadMem_41e1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1db = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1db)
  store %struct.Memory* %call_41e1db, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 41e1de	 Bytes: 3
  %loadMem_41e1de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1de = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1de)
  store %struct.Memory* %call_41e1de, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e1e1	 Bytes: 8
  %loadMem_41e1e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1e1 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1e1)
  store %struct.Memory* %call_41e1e1, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 41e1e9	 Bytes: 3
  %loadMem_41e1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1e9 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1e9)
  store %struct.Memory* %call_41e1e9, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 41e1ec	 Bytes: 3
  %loadMem_41e1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1ec = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1ec)
  store %struct.Memory* %call_41e1ec, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 41e1ef	 Bytes: 3
  %loadMem_41e1ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1ef = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1ef)
  store %struct.Memory* %call_41e1ef, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e1f2	 Bytes: 4
  %loadMem_41e1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1f2 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1f2)
  store %struct.Memory* %call_41e1f2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e1f6	 Bytes: 3
  %loadMem_41e1f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1f6 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1f6)
  store %struct.Memory* %call_41e1f6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rax)	 RIP: 41e1f9	 Bytes: 3
  %loadMem_41e1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1f9 = call %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1f9)
  store %struct.Memory* %call_41e1f9, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 41e1fc	 Bytes: 3
  %loadMem_41e1fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1fc = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1fc)
  store %struct.Memory* %call_41e1fc, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e1ff	 Bytes: 8
  %loadMem_41e1ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e1ff = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e1ff)
  store %struct.Memory* %call_41e1ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rdx	 RIP: 41e207	 Bytes: 4
  %loadMem_41e207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e207 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e207)
  store %struct.Memory* %call_41e207, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e20b	 Bytes: 4
  %loadMem_41e20b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e20b = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e20b)
  store %struct.Memory* %call_41e20b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e20f	 Bytes: 3
  %loadMem_41e20f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e20f = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e20f)
  store %struct.Memory* %call_41e20f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rax)	 RIP: 41e212	 Bytes: 3
  %loadMem_41e212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e212 = call %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e212)
  store %struct.Memory* %call_41e212, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e215	 Bytes: 8
  %loadMem_41e215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e215 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e215)
  store %struct.Memory* %call_41e215, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 41e21d	 Bytes: 3
  %loadMem_41e21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e21d = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e21d)
  store %struct.Memory* %call_41e21d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 41e220	 Bytes: 3
  %loadMem_41e220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e220 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e220)
  store %struct.Memory* %call_41e220, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 41e223	 Bytes: 3
  %loadMem_41e223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e223 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e223)
  store %struct.Memory* %call_41e223, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e226	 Bytes: 4
  %loadMem_41e226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e226 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e226)
  store %struct.Memory* %call_41e226, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e22a	 Bytes: 3
  %loadMem_41e22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e22a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e22a)
  store %struct.Memory* %call_41e22a, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 41e22d	 Bytes: 2
  %loadMem_41e22d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e22d = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e22d)
  store %struct.Memory* %call_41e22d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3c(%rbp)	 RIP: 41e22f	 Bytes: 3
  %loadMem_41e22f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e22f = call %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e22f)
  store %struct.Memory* %call_41e22f, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e232	 Bytes: 8
  %loadMem_41e232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e232 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e232)
  store %struct.Memory* %call_41e232, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rdx	 RIP: 41e23a	 Bytes: 4
  %loadMem_41e23a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e23a = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e23a)
  store %struct.Memory* %call_41e23a, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e23e	 Bytes: 4
  %loadMem_41e23e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e23e = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e23e)
  store %struct.Memory* %call_41e23e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e242	 Bytes: 3
  %loadMem_41e242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e242 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e242)
  store %struct.Memory* %call_41e242, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 41e245	 Bytes: 2
  %loadMem_41e245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e245 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e245)
  store %struct.Memory* %call_41e245, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e247	 Bytes: 8
  %loadMem_41e247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e247 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e247)
  store %struct.Memory* %call_41e247, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 41e24f	 Bytes: 3
  %loadMem_41e24f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e24f = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e24f)
  store %struct.Memory* %call_41e24f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 41e252	 Bytes: 3
  %loadMem_41e252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e252 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e252)
  store %struct.Memory* %call_41e252, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 41e255	 Bytes: 3
  %loadMem_41e255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e255 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e255)
  store %struct.Memory* %call_41e255, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e258	 Bytes: 4
  %loadMem_41e258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e258 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e258)
  store %struct.Memory* %call_41e258, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e25c	 Bytes: 3
  %loadMem_41e25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e25c = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e25c)
  store %struct.Memory* %call_41e25c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 41e25f	 Bytes: 2
  %loadMem_41e25f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e25f = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e25f)
  store %struct.Memory* %call_41e25f, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 41e261	 Bytes: 3
  %loadMem_41e261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e261 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e261)
  store %struct.Memory* %call_41e261, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e264	 Bytes: 8
  %loadMem_41e264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e264 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e264)
  store %struct.Memory* %call_41e264, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rdx	 RIP: 41e26c	 Bytes: 4
  %loadMem_41e26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e26c = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e26c)
  store %struct.Memory* %call_41e26c, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e270	 Bytes: 4
  %loadMem_41e270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e270 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e270)
  store %struct.Memory* %call_41e270, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e274	 Bytes: 3
  %loadMem_41e274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e274 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e274)
  store %struct.Memory* %call_41e274, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 41e277	 Bytes: 2
  %loadMem_41e277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e277 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e277)
  store %struct.Memory* %call_41e277, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e279	 Bytes: 8
  %loadMem_41e279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e279 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e279)
  store %struct.Memory* %call_41e279, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 41e281	 Bytes: 3
  %loadMem_41e281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e281 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e281)
  store %struct.Memory* %call_41e281, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 41e284	 Bytes: 3
  %loadMem_41e284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e284 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e284)
  store %struct.Memory* %call_41e284, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 41e287	 Bytes: 3
  %loadMem_41e287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e287 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e287)
  store %struct.Memory* %call_41e287, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e28a	 Bytes: 4
  %loadMem_41e28a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e28a = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e28a)
  store %struct.Memory* %call_41e28a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e28e	 Bytes: 3
  %loadMem_41e28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e28e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e28e)
  store %struct.Memory* %call_41e28e, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 41e291	 Bytes: 3
  %loadMem_41e291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e291 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e291)
  store %struct.Memory* %call_41e291, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3c(%rbp)	 RIP: 41e294	 Bytes: 3
  %loadMem_41e294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e294 = call %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e294)
  store %struct.Memory* %call_41e294, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e297	 Bytes: 8
  %loadMem_41e297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e297 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e297)
  store %struct.Memory* %call_41e297, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rdx	 RIP: 41e29f	 Bytes: 4
  %loadMem_41e29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e29f = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e29f)
  store %struct.Memory* %call_41e29f, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e2a3	 Bytes: 4
  %loadMem_41e2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2a3 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2a3)
  store %struct.Memory* %call_41e2a3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e2a7	 Bytes: 3
  %loadMem_41e2a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2a7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2a7)
  store %struct.Memory* %call_41e2a7, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 41e2aa	 Bytes: 3
  %loadMem_41e2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2aa = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2aa)
  store %struct.Memory* %call_41e2aa, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e2ad	 Bytes: 8
  %loadMem_41e2ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2ad = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2ad)
  store %struct.Memory* %call_41e2ad, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 41e2b5	 Bytes: 3
  %loadMem_41e2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2b5 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2b5)
  store %struct.Memory* %call_41e2b5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 41e2b8	 Bytes: 3
  %loadMem_41e2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2b8 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2b8)
  store %struct.Memory* %call_41e2b8, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 41e2bb	 Bytes: 3
  %loadMem_41e2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2bb = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2bb)
  store %struct.Memory* %call_41e2bb, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e2be	 Bytes: 4
  %loadMem_41e2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2be = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2be)
  store %struct.Memory* %call_41e2be, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e2c2	 Bytes: 3
  %loadMem_41e2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2c2 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2c2)
  store %struct.Memory* %call_41e2c2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xc(%rax)	 RIP: 41e2c5	 Bytes: 3
  %loadMem_41e2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2c5 = call %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2c5)
  store %struct.Memory* %call_41e2c5, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 41e2c8	 Bytes: 3
  %loadMem_41e2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2c8 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2c8)
  store %struct.Memory* %call_41e2c8, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e2cb	 Bytes: 8
  %loadMem_41e2cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2cb = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2cb)
  store %struct.Memory* %call_41e2cb, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rdx	 RIP: 41e2d3	 Bytes: 4
  %loadMem_41e2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2d3 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2d3)
  store %struct.Memory* %call_41e2d3, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e2d7	 Bytes: 4
  %loadMem_41e2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2d7 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2d7)
  store %struct.Memory* %call_41e2d7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e2db	 Bytes: 3
  %loadMem_41e2db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2db = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2db)
  store %struct.Memory* %call_41e2db, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xc(%rax)	 RIP: 41e2de	 Bytes: 3
  %loadMem_41e2de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2de = call %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2de)
  store %struct.Memory* %call_41e2de, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e2e1	 Bytes: 8
  %loadMem_41e2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2e1 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2e1)
  store %struct.Memory* %call_41e2e1, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 41e2e9	 Bytes: 3
  %loadMem_41e2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2e9 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2e9)
  store %struct.Memory* %call_41e2e9, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 41e2ec	 Bytes: 3
  %loadMem_41e2ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2ec = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2ec)
  store %struct.Memory* %call_41e2ec, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 41e2ef	 Bytes: 3
  %loadMem_41e2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2ef = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2ef)
  store %struct.Memory* %call_41e2ef, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e2f2	 Bytes: 4
  %loadMem_41e2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2f2 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2f2)
  store %struct.Memory* %call_41e2f2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e2f6	 Bytes: 3
  %loadMem_41e2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2f6 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2f6)
  store %struct.Memory* %call_41e2f6, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %ecx	 RIP: 41e2f9	 Bytes: 3
  %loadMem_41e2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2f9 = call %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2f9)
  store %struct.Memory* %call_41e2f9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3c(%rbp)	 RIP: 41e2fc	 Bytes: 3
  %loadMem_41e2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2fc = call %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2fc)
  store %struct.Memory* %call_41e2fc, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e2ff	 Bytes: 8
  %loadMem_41e2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e2ff = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e2ff)
  store %struct.Memory* %call_41e2ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rdx	 RIP: 41e307	 Bytes: 4
  %loadMem_41e307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e307 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e307)
  store %struct.Memory* %call_41e307, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e30b	 Bytes: 4
  %loadMem_41e30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e30b = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e30b)
  store %struct.Memory* %call_41e30b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e30f	 Bytes: 3
  %loadMem_41e30f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e30f = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e30f)
  store %struct.Memory* %call_41e30f, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %ecx	 RIP: 41e312	 Bytes: 3
  %loadMem_41e312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e312 = call %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e312)
  store %struct.Memory* %call_41e312, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e315	 Bytes: 8
  %loadMem_41e315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e315 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e315)
  store %struct.Memory* %call_41e315, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 41e31d	 Bytes: 3
  %loadMem_41e31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e31d = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e31d)
  store %struct.Memory* %call_41e31d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 41e320	 Bytes: 3
  %loadMem_41e320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e320 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e320)
  store %struct.Memory* %call_41e320, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 41e323	 Bytes: 3
  %loadMem_41e323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e323 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e323)
  store %struct.Memory* %call_41e323, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e326	 Bytes: 4
  %loadMem_41e326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e326 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e326)
  store %struct.Memory* %call_41e326, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e32a	 Bytes: 3
  %loadMem_41e32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e32a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e32a)
  store %struct.Memory* %call_41e32a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x14(%rax)	 RIP: 41e32d	 Bytes: 3
  %loadMem_41e32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e32d = call %struct.Memory* @routine_movl__ecx__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e32d)
  store %struct.Memory* %call_41e32d, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 41e330	 Bytes: 3
  %loadMem_41e330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e330 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e330)
  store %struct.Memory* %call_41e330, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41e333	 Bytes: 8
  %loadMem_41e333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e333 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e333)
  store %struct.Memory* %call_41e333, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rdx	 RIP: 41e33b	 Bytes: 4
  %loadMem_41e33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e33b = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e33b)
  store %struct.Memory* %call_41e33b, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41e33f	 Bytes: 4
  %loadMem_41e33f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e33f = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e33f)
  store %struct.Memory* %call_41e33f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41e343	 Bytes: 3
  %loadMem_41e343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e343 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e343)
  store %struct.Memory* %call_41e343, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x14(%rax)	 RIP: 41e346	 Bytes: 3
  %loadMem_41e346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e346 = call %struct.Memory* @routine_movl__ecx__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e346)
  store %struct.Memory* %call_41e346, %struct.Memory** %MEMORY

  ; Code: .L_41e349:	 RIP: 41e349	 Bytes: 0
  br label %block_.L_41e349
block_.L_41e349:

  ; Code: jmpq .L_41e34e	 RIP: 41e349	 Bytes: 5
  %loadMem_41e349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e349 = call %struct.Memory* @routine_jmpq_.L_41e34e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e349, i64 5, i64 5)
  store %struct.Memory* %call_41e349, %struct.Memory** %MEMORY

  br label %block_.L_41e34e

  ; Code: .L_41e34e:	 RIP: 41e34e	 Bytes: 0
block_.L_41e34e:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 41e34e	 Bytes: 3
  %loadMem_41e34e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e34e = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e34e)
  store %struct.Memory* %call_41e34e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41e351	 Bytes: 3
  %loadMem_41e351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e351 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e351)
  store %struct.Memory* %call_41e351, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 41e354	 Bytes: 3
  %loadMem_41e354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e354 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e354)
  store %struct.Memory* %call_41e354, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41e09a	 RIP: 41e357	 Bytes: 5
  %loadMem_41e357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e357 = call %struct.Memory* @routine_jmpq_.L_41e09a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e357, i64 -701, i64 5)
  store %struct.Memory* %call_41e357, %struct.Memory** %MEMORY

  br label %block_.L_41e09a

  ; Code: .L_41e35c:	 RIP: 41e35c	 Bytes: 0
block_.L_41e35c:

  ; Code: jmpq .L_41e361	 RIP: 41e35c	 Bytes: 5
  %loadMem_41e35c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e35c = call %struct.Memory* @routine_jmpq_.L_41e361(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e35c, i64 5, i64 5)
  store %struct.Memory* %call_41e35c, %struct.Memory** %MEMORY

  br label %block_.L_41e361

  ; Code: .L_41e361:	 RIP: 41e361	 Bytes: 0
block_.L_41e361:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41e361	 Bytes: 3
  %loadMem_41e361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e361 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e361)
  store %struct.Memory* %call_41e361, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 41e364	 Bytes: 3
  %loadMem_41e364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e364 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e364)
  store %struct.Memory* %call_41e364, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 41e367	 Bytes: 3
  %loadMem_41e367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e367 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e367)
  store %struct.Memory* %call_41e367, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41e089	 RIP: 41e36a	 Bytes: 5
  %loadMem_41e36a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e36a = call %struct.Memory* @routine_jmpq_.L_41e089(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e36a, i64 -737, i64 5)
  store %struct.Memory* %call_41e36a, %struct.Memory** %MEMORY

  br label %block_.L_41e089

  ; Code: .L_41e36f:	 RIP: 41e36f	 Bytes: 0
block_.L_41e36f:

  ; Code: jmpq .L_41e374	 RIP: 41e36f	 Bytes: 5
  %loadMem_41e36f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e36f = call %struct.Memory* @routine_jmpq_.L_41e374(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e36f, i64 5, i64 5)
  store %struct.Memory* %call_41e36f, %struct.Memory** %MEMORY

  br label %block_.L_41e374

  ; Code: .L_41e374:	 RIP: 41e374	 Bytes: 0
block_.L_41e374:

  ; Code: addq $0x50, %rsp	 RIP: 41e374	 Bytes: 4
  %loadMem_41e374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e374 = call %struct.Memory* @routine_addq__0x50___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e374)
  store %struct.Memory* %call_41e374, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 41e378	 Bytes: 1
  %loadMem_41e378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e378 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e378)
  store %struct.Memory* %call_41e378, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 41e379	 Bytes: 1
  %loadMem_41e379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e379 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e379)
  store %struct.Memory* %call_41e379, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_41e379
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

define %struct.Memory* @routine_subq__0x50___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 80)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6cb8f8_type* @G_0x6cb8f8 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x4d4__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_cmpl__0x1__0x528__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_jne_.L_41de4d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_cmpl_0x4d4__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 1236
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

define %struct.Memory* @routine_jge_.L_41de48(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_41ddc9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6d0278_type* @G_0x6d0278 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
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


define %struct.Memory* @routine_movl__0x1____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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










define %struct.Memory* @routine_movl__edx__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movl__0x2__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_41de35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl_MINUS0xc__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






















define %struct.Memory* @routine_movl__0x1__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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


define %struct.Memory* @routine_jmpq_.L_41de3a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41dd35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41e374(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cb8f8_type* @G_0x6cb8f8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x4d4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
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

define %struct.Memory* @routine_jle_.L_41debb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_41de8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_callq_.malloc_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
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

define %struct.Memory* @routine_cmpq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jne_.L_41def6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x4bf5b7___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bf5b7_type* @G__0x4bf5b7 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.no_mem_exit(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_41df2b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4bf5d5___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4bf5d5_type* @G__0x4bf5d5 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_jge_.L_41df8a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41df32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41df8f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_41dffc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_subl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__eax____rsi__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
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


define %struct.Memory* @routine_movl_MINUS0x34__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_addl__edx___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__edx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r8d____rsi__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDI
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


define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 -1)
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








define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx____rdi__r8_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ECX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_jge_.L_41e078(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6
  %8 = shl i64 %3, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %7 to i64
  %11 = mul  i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %2, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #22
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imull___rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
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

define %struct.Memory* @routine_subl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_subl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_0x6d0278___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6d0278_type* @G_0x6d0278 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_callq_.gop_pyramid(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41e030(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jle_.L_41e36f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 8
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_41e35c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_subl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_cmpl_0x10__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 16
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_41e349(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}
























define %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


























define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


























define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


























define %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


























define %struct.Memory* @routine_movl__ecx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


























define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


























define %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


























define %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


























define %struct.Memory* @routine_movl__ecx__0x14__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 20
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_jmpq_.L_41e34e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41e09a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41e361(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 -1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_41e089(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x50___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 80)
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

