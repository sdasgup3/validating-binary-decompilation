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

declare %struct.Memory* @sub_427d20.encode_one_frame(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_434fc0.report_frame_statistic(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cc020_type = type <{ [4 x i8] }>
@G_0x6cc020= global %G_0x6cc020_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6cc024_type = type <{ [4 x i8] }>
@G_0x6cc024= global %G_0x6cc024_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6d0278_type = type <{ [8 x i8] }>
@G_0x6d0278= global %G_0x6d0278_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722c98_type = type <{ [4 x i8] }>
@G_0x722c98= global %G_0x722c98_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x92401__rip__type = type <{ [8 x i8] }>
@G_0x92401__rip_= global %G_0x92401__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x92458__rip__type = type <{ [8 x i8] }>
@G_0x92458__rip_= global %G_0x92458__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x926ca__rip__type = type <{ [8 x i8] }>
@G_0x926ca__rip_= global %G_0x926ca__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x928a3__rip__type = type <{ [8 x i8] }>
@G_0x928a3__rip_= global %G_0x928a3__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x928fa__rip__type = type <{ [8 x i8] }>
@G_0x928fa__rip_= global %G_0x928fa__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @encode_enhancement_layer(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .encode_enhancement_layer:	 RIP: 41ed40	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 41ed40	 Bytes: 1
  %loadMem_41ed40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed40 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed40)
  store %struct.Memory* %call_41ed40, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 41ed41	 Bytes: 3
  %loadMem_41ed41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed41 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed41)
  store %struct.Memory* %call_41ed41, %struct.Memory** %MEMORY

  ; Code: subq $0x30, %rsp	 RIP: 41ed44	 Bytes: 4
  %loadMem_41ed44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed44 = call %struct.Memory* @routine_subq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed44)
  store %struct.Memory* %call_41ed44, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41ed48	 Bytes: 8
  %loadMem_41ed48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed48 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed48)
  store %struct.Memory* %call_41ed48, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4d4(%rax)	 RIP: 41ed50	 Bytes: 7
  %loadMem_41ed50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed50 = call %struct.Memory* @routine_cmpl__0x0__0x4d4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed50)
  store %struct.Memory* %call_41ed50, %struct.Memory** %MEMORY

  ; Code: je .L_41f6ec	 RIP: 41ed57	 Bytes: 6
  %loadMem_41ed57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed57 = call %struct.Memory* @routine_je_.L_41f6ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed57, i8* %BRANCH_TAKEN, i64 2453, i64 6, i64 6)
  store %struct.Memory* %call_41ed57, %struct.Memory** %MEMORY

  %loadBr_41ed57 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ed57 = icmp eq i8 %loadBr_41ed57, 1
  br i1 %cmpBr_41ed57, label %block_.L_41f6ec, label %block_41ed5d

block_41ed5d:
  ; Code: movq 0x6cb900, %rax	 RIP: 41ed5d	 Bytes: 8
  %loadMem_41ed5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed5d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed5d)
  store %struct.Memory* %call_41ed5d, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 41ed65	 Bytes: 2
  %loadMem_41ed65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed65 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed65)
  store %struct.Memory* %call_41ed65, %struct.Memory** %MEMORY

  ; Code: subl 0x6cc020, %ecx	 RIP: 41ed67	 Bytes: 7
  %loadMem_41ed67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed67 = call %struct.Memory* @routine_subl_0x6cc020___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed67)
  store %struct.Memory* %call_41ed67, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 41ed6e	 Bytes: 3
  %loadMem_41ed6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed6e = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed6e)
  store %struct.Memory* %call_41ed6e, %struct.Memory** %MEMORY

  ; Code: jle .L_41f6ec	 RIP: 41ed71	 Bytes: 6
  %loadMem_41ed71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed71 = call %struct.Memory* @routine_jle_.L_41f6ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed71, i8* %BRANCH_TAKEN, i64 2427, i64 6, i64 6)
  store %struct.Memory* %call_41ed71, %struct.Memory** %MEMORY

  %loadBr_41ed71 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ed71 = icmp eq i8 %loadBr_41ed71, 1
  br i1 %cmpBr_41ed71, label %block_.L_41f6ec, label %block_41ed77

block_41ed77:
  ; Code: movq 0x6cb900, %rax	 RIP: 41ed77	 Bytes: 8
  %loadMem_41ed77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed77 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed77)
  store %struct.Memory* %call_41ed77, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18(%rax)	 RIP: 41ed7f	 Bytes: 7
  %loadMem_41ed7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed7f = call %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed7f)
  store %struct.Memory* %call_41ed7f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41ed86	 Bytes: 8
  %loadMem_41ed86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed86 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed86)
  store %struct.Memory* %call_41ed86, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb60(%rax)	 RIP: 41ed8e	 Bytes: 7
  %loadMem_41ed8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed8e = call %struct.Memory* @routine_cmpl__0x0__0xb60__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed8e)
  store %struct.Memory* %call_41ed8e, %struct.Memory** %MEMORY

  ; Code: jne .L_41edb2	 RIP: 41ed95	 Bytes: 6
  %loadMem_41ed95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed95 = call %struct.Memory* @routine_jne_.L_41edb2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed95, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_41ed95, %struct.Memory** %MEMORY

  %loadBr_41ed95 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ed95 = icmp eq i8 %loadBr_41ed95, 1
  br i1 %cmpBr_41ed95, label %block_.L_41edb2, label %block_41ed9b

block_41ed9b:
  ; Code: movq 0x6cb900, %rax	 RIP: 41ed9b	 Bytes: 8
  %loadMem_41ed9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ed9b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ed9b)
  store %struct.Memory* %call_41ed9b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11ac0(%rax)	 RIP: 41eda3	 Bytes: 10
  %loadMem_41eda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eda3 = call %struct.Memory* @routine_movl__0x0__0x11ac0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eda3)
  store %struct.Memory* %call_41eda3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41edc4	 RIP: 41edad	 Bytes: 5
  %loadMem_41edad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edad = call %struct.Memory* @routine_jmpq_.L_41edc4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edad, i64 23, i64 5)
  store %struct.Memory* %call_41edad, %struct.Memory** %MEMORY

  br label %block_.L_41edc4

  ; Code: .L_41edb2:	 RIP: 41edb2	 Bytes: 0
block_.L_41edb2:

  ; Code: movq 0x6cb900, %rax	 RIP: 41edb2	 Bytes: 8
  %loadMem_41edb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edb2 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edb2)
  store %struct.Memory* %call_41edb2, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x11ac0(%rax)	 RIP: 41edba	 Bytes: 10
  %loadMem_41edba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edba = call %struct.Memory* @routine_movl__0x1__0x11ac0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edba)
  store %struct.Memory* %call_41edba, %struct.Memory** %MEMORY

  ; Code: .L_41edc4:	 RIP: 41edc4	 Bytes: 0
  br label %block_.L_41edc4
block_.L_41edc4:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41edc4	 Bytes: 8
  %loadMem_41edc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edc4 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edc4)
  store %struct.Memory* %call_41edc4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x524(%rax)	 RIP: 41edcc	 Bytes: 7
  %loadMem_41edcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edcc = call %struct.Memory* @routine_cmpl__0x0__0x524__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edcc)
  store %struct.Memory* %call_41edcc, %struct.Memory** %MEMORY

  ; Code: jne .L_41ee38	 RIP: 41edd3	 Bytes: 6
  %loadMem_41edd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edd3 = call %struct.Memory* @routine_jne_.L_41ee38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edd3, i8* %BRANCH_TAKEN, i64 101, i64 6, i64 6)
  store %struct.Memory* %call_41edd3, %struct.Memory** %MEMORY

  %loadBr_41edd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41edd3 = icmp eq i8 %loadBr_41edd3, 1
  br i1 %cmpBr_41edd3, label %block_.L_41ee38, label %block_41edd9

block_41edd9:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 41edd9	 Bytes: 8
  %loadMem_41edd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edd9 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edd9)
  store %struct.Memory* %call_41edd9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x528(%rax)	 RIP: 41ede1	 Bytes: 7
  %loadMem_41ede1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ede1 = call %struct.Memory* @routine_cmpl__0x0__0x528__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ede1)
  store %struct.Memory* %call_41ede1, %struct.Memory** %MEMORY

  ; Code: jne .L_41ee38	 RIP: 41ede8	 Bytes: 6
  %loadMem_41ede8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ede8 = call %struct.Memory* @routine_jne_.L_41ee38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ede8, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_41ede8, %struct.Memory** %MEMORY

  %loadBr_41ede8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ede8 = icmp eq i8 %loadBr_41ede8, 1
  br i1 %cmpBr_41ede8, label %block_.L_41ee38, label %block_41edee

block_41edee:
  ; Code: movl $0x1, %eax	 RIP: 41edee	 Bytes: 5
  %loadMem_41edee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edee = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edee)
  store %struct.Memory* %call_41edee, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 41edf3	 Bytes: 8
  %loadMem_41edf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edf3 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edf3)
  store %struct.Memory* %call_41edf3, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rcx), %edx	 RIP: 41edfb	 Bytes: 6
  %loadMem_41edfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41edfb = call %struct.Memory* @routine_movl_0x11b10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41edfb)
  store %struct.Memory* %call_41edfb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41ee01	 Bytes: 3
  %loadMem_41ee01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee01 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee01)
  store %struct.Memory* %call_41ee01, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x11b10(%rcx)	 RIP: 41ee04	 Bytes: 6
  %loadMem_41ee04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee04 = call %struct.Memory* @routine_movl__edx__0x11b10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee04)
  store %struct.Memory* %call_41ee04, %struct.Memory** %MEMORY

  ; Code: movl 0x722c98, %edx	 RIP: 41ee0a	 Bytes: 7
  %loadMem_41ee0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee0a = call %struct.Memory* @routine_movl_0x722c98___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee0a)
  store %struct.Memory* %call_41ee0a, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %edx	 RIP: 41ee11	 Bytes: 3
  %loadMem_41ee11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee11 = call %struct.Memory* @routine_addl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee11)
  store %struct.Memory* %call_41ee11, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 41ee14	 Bytes: 2
  %loadMem_41ee14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee14 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee14)
  store %struct.Memory* %call_41ee14, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 41ee16	 Bytes: 2
  %loadMem_41ee16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee16 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee16)
  store %struct.Memory* %call_41ee16, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 41ee18	 Bytes: 8
  %loadMem_41ee18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee18 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee18)
  store %struct.Memory* %call_41ee18, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rsi), %edx	 RIP: 41ee20	 Bytes: 6
  %loadMem_41ee20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee20 = call %struct.Memory* @routine_movl_0x11b10__rsi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee20)
  store %struct.Memory* %call_41ee20, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 41ee26	 Bytes: 3
  %loadMem_41ee26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee26 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee26)
  store %struct.Memory* %call_41ee26, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 41ee29	 Bytes: 2
  %loadMem_41ee29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee29 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee29)
  store %struct.Memory* %call_41ee29, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 41ee2b	 Bytes: 2
  %loadMem_41ee2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee2b = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee2b)
  store %struct.Memory* %call_41ee2b, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 41ee2d	 Bytes: 3
  %loadMem_41ee2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee2d = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee2d)
  store %struct.Memory* %call_41ee2d, %struct.Memory** %MEMORY

  ; Code: divl %edi	 RIP: 41ee30	 Bytes: 2
  %loadMem_41ee30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee30 = call %struct.Memory* @routine_divl__edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee30)
  store %struct.Memory* %call_41ee30, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x11b10(%rsi)	 RIP: 41ee32	 Bytes: 6
  %loadMem_41ee32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee32 = call %struct.Memory* @routine_movl__edx__0x11b10__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee32)
  store %struct.Memory* %call_41ee32, %struct.Memory** %MEMORY

  ; Code: .L_41ee38:	 RIP: 41ee38	 Bytes: 0
  br label %block_.L_41ee38
block_.L_41ee38:

  ; Code: movq 0x6cb900, %rax	 RIP: 41ee38	 Bytes: 8
  %loadMem_41ee38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee38 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee38)
  store %struct.Memory* %call_41ee38, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11b30(%rax)	 RIP: 41ee40	 Bytes: 10
  %loadMem_41ee40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee40 = call %struct.Memory* @routine_movl__0x0__0x11b30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee40)
  store %struct.Memory* %call_41ee40, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41ee4a	 Bytes: 8
  %loadMem_41ee4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee4a = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee4a)
  store %struct.Memory* %call_41ee4a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x528(%rax)	 RIP: 41ee52	 Bytes: 7
  %loadMem_41ee52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee52 = call %struct.Memory* @routine_cmpl__0x0__0x528__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee52)
  store %struct.Memory* %call_41ee52, %struct.Memory** %MEMORY

  ; Code: je .L_41f349	 RIP: 41ee59	 Bytes: 6
  %loadMem_41ee59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee59 = call %struct.Memory* @routine_je_.L_41f349(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee59, i8* %BRANCH_TAKEN, i64 1264, i64 6, i64 6)
  store %struct.Memory* %call_41ee59, %struct.Memory** %MEMORY

  %loadBr_41ee59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ee59 = icmp eq i8 %loadBr_41ee59, 1
  br i1 %cmpBr_41ee59, label %block_.L_41f349, label %block_41ee5f

block_41ee5f:
  ; Code: movq 0x6cb900, %rax	 RIP: 41ee5f	 Bytes: 8
  %loadMem_41ee5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee5f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee5f)
  store %struct.Memory* %call_41ee5f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x118e4(%rax)	 RIP: 41ee67	 Bytes: 10
  %loadMem_41ee67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee67 = call %struct.Memory* @routine_movl__0x1__0x118e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee67)
  store %struct.Memory* %call_41ee67, %struct.Memory** %MEMORY

  ; Code: .L_41ee71:	 RIP: 41ee71	 Bytes: 0
  br label %block_.L_41ee71
block_.L_41ee71:

  ; Code: movq 0x6cb900, %rax	 RIP: 41ee71	 Bytes: 8
  %loadMem_41ee71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee71 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee71)
  store %struct.Memory* %call_41ee71, %struct.Memory** %MEMORY

  ; Code: movl 0x118e4(%rax), %ecx	 RIP: 41ee79	 Bytes: 6
  %loadMem_41ee79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee79 = call %struct.Memory* @routine_movl_0x118e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee79)
  store %struct.Memory* %call_41ee79, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41ee7f	 Bytes: 8
  %loadMem_41ee7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee7f = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee7f)
  store %struct.Memory* %call_41ee7f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4d4(%rax), %ecx	 RIP: 41ee87	 Bytes: 6
  %loadMem_41ee87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee87 = call %struct.Memory* @routine_cmpl_0x4d4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee87)
  store %struct.Memory* %call_41ee87, %struct.Memory** %MEMORY

  ; Code: jg .L_41f332	 RIP: 41ee8d	 Bytes: 6
  %loadMem_41ee8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee8d = call %struct.Memory* @routine_jg_.L_41f332(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee8d, i8* %BRANCH_TAKEN, i64 1189, i64 6, i64 6)
  store %struct.Memory* %call_41ee8d, %struct.Memory** %MEMORY

  %loadBr_41ee8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ee8d = icmp eq i8 %loadBr_41ee8d, 1
  br i1 %cmpBr_41ee8d, label %block_.L_41f332, label %block_41ee93

block_41ee93:
  ; Code: movq 0x6cb900, %rax	 RIP: 41ee93	 Bytes: 8
  %loadMem_41ee93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee93 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee93)
  store %struct.Memory* %call_41ee93, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11b30(%rax)	 RIP: 41ee9b	 Bytes: 10
  %loadMem_41ee9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ee9b = call %struct.Memory* @routine_movl__0x0__0x11b30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ee9b)
  store %struct.Memory* %call_41ee9b, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41eea5	 Bytes: 8
  %loadMem_41eea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eea5 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eea5)
  store %struct.Memory* %call_41eea5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 41eead	 Bytes: 8
  %loadMem_41eead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eead = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eead)
  store %struct.Memory* %call_41eead, %struct.Memory** %MEMORY

  ; Code: movl 0x118e4(%rcx), %edx	 RIP: 41eeb5	 Bytes: 6
  %loadMem_41eeb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eeb5 = call %struct.Memory* @routine_movl_0x118e4__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eeb5)
  store %struct.Memory* %call_41eeb5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 41eebb	 Bytes: 3
  %loadMem_41eebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eebb = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eebb)
  store %struct.Memory* %call_41eebb, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 41eebe	 Bytes: 3
  %loadMem_41eebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eebe = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eebe)
  store %struct.Memory* %call_41eebe, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41eec1	 Bytes: 4
  %loadMem_41eec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eec1 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eec1)
  store %struct.Memory* %call_41eec1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41eec5	 Bytes: 3
  %loadMem_41eec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eec5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eec5)
  store %struct.Memory* %call_41eec5, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 41eec8	 Bytes: 2
  %loadMem_41eec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eec8 = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eec8)
  store %struct.Memory* %call_41eec8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41eeca	 Bytes: 8
  %loadMem_41eeca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eeca = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eeca)
  store %struct.Memory* %call_41eeca, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x18(%rax)	 RIP: 41eed2	 Bytes: 3
  %loadMem_41eed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eed2 = call %struct.Memory* @routine_movl__edx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eed2)
  store %struct.Memory* %call_41eed2, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41eed5	 Bytes: 8
  %loadMem_41eed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eed5 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eed5)
  store %struct.Memory* %call_41eed5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 41eedd	 Bytes: 8
  %loadMem_41eedd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eedd = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eedd)
  store %struct.Memory* %call_41eedd, %struct.Memory** %MEMORY

  ; Code: movl 0x118e4(%rcx), %edx	 RIP: 41eee5	 Bytes: 6
  %loadMem_41eee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eee5 = call %struct.Memory* @routine_movl_0x118e4__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eee5)
  store %struct.Memory* %call_41eee5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 41eeeb	 Bytes: 3
  %loadMem_41eeeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eeeb = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eeeb)
  store %struct.Memory* %call_41eeeb, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 41eeee	 Bytes: 3
  %loadMem_41eeee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eeee = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eeee)
  store %struct.Memory* %call_41eeee, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41eef1	 Bytes: 4
  %loadMem_41eef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eef1 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eef1)
  store %struct.Memory* %call_41eef1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41eef5	 Bytes: 3
  %loadMem_41eef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eef5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eef5)
  store %struct.Memory* %call_41eef5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x8(%rax)	 RIP: 41eef8	 Bytes: 4
  %loadMem_41eef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eef8 = call %struct.Memory* @routine_cmpl__0x2__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eef8)
  store %struct.Memory* %call_41eef8, %struct.Memory** %MEMORY

  ; Code: jne .L_41ef5e	 RIP: 41eefc	 Bytes: 6
  %loadMem_41eefc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eefc = call %struct.Memory* @routine_jne_.L_41ef5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eefc, i8* %BRANCH_TAKEN, i64 98, i64 6, i64 6)
  store %struct.Memory* %call_41eefc, %struct.Memory** %MEMORY

  %loadBr_41eefc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41eefc = icmp eq i8 %loadBr_41eefc, 1
  br i1 %cmpBr_41eefc, label %block_.L_41ef5e, label %block_41ef02

block_41ef02:
  ; Code: movl $0x1, %eax	 RIP: 41ef02	 Bytes: 5
  %loadMem_41ef02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef02 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef02)
  store %struct.Memory* %call_41ef02, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 41ef07	 Bytes: 8
  %loadMem_41ef07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef07 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef07)
  store %struct.Memory* %call_41ef07, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x11b30(%rcx)	 RIP: 41ef0f	 Bytes: 10
  %loadMem_41ef0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef0f = call %struct.Memory* @routine_movl__0x1__0x11b30__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef0f)
  store %struct.Memory* %call_41ef0f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 41ef19	 Bytes: 8
  %loadMem_41ef19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef19 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef19)
  store %struct.Memory* %call_41ef19, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rcx), %edx	 RIP: 41ef21	 Bytes: 6
  %loadMem_41ef21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef21 = call %struct.Memory* @routine_movl_0x11b10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef21)
  store %struct.Memory* %call_41ef21, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41ef27	 Bytes: 3
  %loadMem_41ef27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef27 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef27)
  store %struct.Memory* %call_41ef27, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x11b10(%rcx)	 RIP: 41ef2a	 Bytes: 6
  %loadMem_41ef2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef2a = call %struct.Memory* @routine_movl__edx__0x11b10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef2a)
  store %struct.Memory* %call_41ef2a, %struct.Memory** %MEMORY

  ; Code: movl 0x722c98, %edx	 RIP: 41ef30	 Bytes: 7
  %loadMem_41ef30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef30 = call %struct.Memory* @routine_movl_0x722c98___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef30)
  store %struct.Memory* %call_41ef30, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %edx	 RIP: 41ef37	 Bytes: 3
  %loadMem_41ef37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef37 = call %struct.Memory* @routine_addl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef37)
  store %struct.Memory* %call_41ef37, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 41ef3a	 Bytes: 2
  %loadMem_41ef3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef3a = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef3a)
  store %struct.Memory* %call_41ef3a, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 41ef3c	 Bytes: 2
  %loadMem_41ef3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef3c = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef3c)
  store %struct.Memory* %call_41ef3c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 41ef3e	 Bytes: 8
  %loadMem_41ef3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef3e = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef3e)
  store %struct.Memory* %call_41ef3e, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rsi), %edx	 RIP: 41ef46	 Bytes: 6
  %loadMem_41ef46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef46 = call %struct.Memory* @routine_movl_0x11b10__rsi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef46)
  store %struct.Memory* %call_41ef46, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 41ef4c	 Bytes: 3
  %loadMem_41ef4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef4c = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef4c)
  store %struct.Memory* %call_41ef4c, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 41ef4f	 Bytes: 2
  %loadMem_41ef4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef4f = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef4f)
  store %struct.Memory* %call_41ef4f, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 41ef51	 Bytes: 2
  %loadMem_41ef51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef51 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef51)
  store %struct.Memory* %call_41ef51, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 41ef53	 Bytes: 3
  %loadMem_41ef53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef53 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef53)
  store %struct.Memory* %call_41ef53, %struct.Memory** %MEMORY

  ; Code: divl %edi	 RIP: 41ef56	 Bytes: 2
  %loadMem_41ef56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef56 = call %struct.Memory* @routine_divl__edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef56)
  store %struct.Memory* %call_41ef56, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x11b10(%rsi)	 RIP: 41ef58	 Bytes: 6
  %loadMem_41ef58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef58 = call %struct.Memory* @routine_movl__edx__0x11b10__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef58)
  store %struct.Memory* %call_41ef58, %struct.Memory** %MEMORY

  ; Code: .L_41ef5e:	 RIP: 41ef5e	 Bytes: 0
  br label %block_.L_41ef5e
block_.L_41ef5e:

  ; Code: movsd 0x928fa(%rip), %xmm0	 RIP: 41ef5e	 Bytes: 8
  %loadMem_41ef5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef5e = call %struct.Memory* @routine_movsd_0x928fa__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef5e)
  store %struct.Memory* %call_41ef5e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41ef66	 Bytes: 8
  %loadMem_41ef66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef66 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef66)
  store %struct.Memory* %call_41ef66, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %ecx	 RIP: 41ef6e	 Bytes: 3
  %loadMem_41ef6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef6e = call %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef6e)
  store %struct.Memory* %call_41ef6e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41ef71	 Bytes: 3
  %loadMem_41ef71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef71 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef71)
  store %struct.Memory* %call_41ef71, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %ecx, %xmm1	 RIP: 41ef74	 Bytes: 4
  %loadMem_41ef74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef74 = call %struct.Memory* @routine_cvtsi2sdl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef74)
  store %struct.Memory* %call_41ef74, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41ef78	 Bytes: 8
  %loadMem_41ef78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef78 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef78)
  store %struct.Memory* %call_41ef78, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x4d4(%rax), %xmm2	 RIP: 41ef80	 Bytes: 8
  %loadMem_41ef80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef80 = call %struct.Memory* @routine_cvtsi2sdl_0x4d4__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef80)
  store %struct.Memory* %call_41ef80, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm2	 RIP: 41ef88	 Bytes: 4
  %loadMem_41ef88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef88 = call %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef88)
  store %struct.Memory* %call_41ef88, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 41ef8c	 Bytes: 4
  %loadMem_41ef8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef8c = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef8c)
  store %struct.Memory* %call_41ef8c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41ef90	 Bytes: 8
  %loadMem_41ef90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef90 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef90)
  store %struct.Memory* %call_41ef90, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x118d8(%rax)	 RIP: 41ef98	 Bytes: 8
  %loadMem_41ef98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ef98 = call %struct.Memory* @routine_movsd__xmm1__0x118d8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ef98)
  store %struct.Memory* %call_41ef98, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41efa0	 Bytes: 8
  %loadMem_41efa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efa0 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efa0)
  store %struct.Memory* %call_41efa0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x528(%rax)	 RIP: 41efa8	 Bytes: 7
  %loadMem_41efa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efa8 = call %struct.Memory* @routine_cmpl__0x3__0x528__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efa8)
  store %struct.Memory* %call_41efa8, %struct.Memory** %MEMORY

  ; Code: jne .L_41efcd	 RIP: 41efaf	 Bytes: 6
  %loadMem_41efaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efaf = call %struct.Memory* @routine_jne_.L_41efcd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efaf, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_41efaf, %struct.Memory** %MEMORY

  %loadBr_41efaf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41efaf = icmp eq i8 %loadBr_41efaf, 1
  br i1 %cmpBr_41efaf, label %block_.L_41efcd, label %block_41efb5

block_41efb5:
  ; Code: movsd 0x928a3(%rip), %xmm0	 RIP: 41efb5	 Bytes: 8
  %loadMem_41efb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efb5 = call %struct.Memory* @routine_movsd_0x928a3__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efb5)
  store %struct.Memory* %call_41efb5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41efbd	 Bytes: 8
  %loadMem_41efbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efbd = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efbd)
  store %struct.Memory* %call_41efbd, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x118d8(%rax)	 RIP: 41efc5	 Bytes: 8
  %loadMem_41efc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efc5 = call %struct.Memory* @routine_movsd__xmm0__0x118d8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efc5)
  store %struct.Memory* %call_41efc5, %struct.Memory** %MEMORY

  ; Code: .L_41efcd:	 RIP: 41efcd	 Bytes: 0
  br label %block_.L_41efcd
block_.L_41efcd:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41efcd	 Bytes: 8
  %loadMem_41efcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efcd = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efcd)
  store %struct.Memory* %call_41efcd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4c8(%rax)	 RIP: 41efd5	 Bytes: 7
  %loadMem_41efd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efd5 = call %struct.Memory* @routine_cmpl__0x0__0x4c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efd5)
  store %struct.Memory* %call_41efd5, %struct.Memory** %MEMORY

  ; Code: je .L_41f093	 RIP: 41efdc	 Bytes: 6
  %loadMem_41efdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efdc = call %struct.Memory* @routine_je_.L_41f093(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efdc, i8* %BRANCH_TAKEN, i64 183, i64 6, i64 6)
  store %struct.Memory* %call_41efdc, %struct.Memory** %MEMORY

  %loadBr_41efdc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41efdc = icmp eq i8 %loadBr_41efdc, 1
  br i1 %cmpBr_41efdc, label %block_.L_41f093, label %block_41efe2

block_41efe2:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 41efe2	 Bytes: 8
  %loadMem_41efe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efe2 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efe2)
  store %struct.Memory* %call_41efe2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4cc(%rax)	 RIP: 41efea	 Bytes: 7
  %loadMem_41efea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efea = call %struct.Memory* @routine_cmpl__0x0__0x4cc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efea)
  store %struct.Memory* %call_41efea, %struct.Memory** %MEMORY

  ; Code: je .L_41f093	 RIP: 41eff1	 Bytes: 6
  %loadMem_41eff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eff1 = call %struct.Memory* @routine_je_.L_41f093(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eff1, i8* %BRANCH_TAKEN, i64 162, i64 6, i64 6)
  store %struct.Memory* %call_41eff1, %struct.Memory** %MEMORY

  %loadBr_41eff1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41eff1 = icmp eq i8 %loadBr_41eff1, 1
  br i1 %cmpBr_41eff1, label %block_.L_41f093, label %block_41eff7

block_41eff7:
  ; Code: movq 0x6cb900, %rax	 RIP: 41eff7	 Bytes: 8
  %loadMem_41eff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41eff7 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41eff7)
  store %struct.Memory* %call_41eff7, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 41efff	 Bytes: 2
  %loadMem_41efff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41efff = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41efff)
  store %struct.Memory* %call_41efff, %struct.Memory** %MEMORY

  ; Code: subl 0x6cc020, %ecx	 RIP: 41f001	 Bytes: 7
  %loadMem_41f001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f001 = call %struct.Memory* @routine_subl_0x6cc020___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f001)
  store %struct.Memory* %call_41f001, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f008	 Bytes: 8
  %loadMem_41f008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f008 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f008)
  store %struct.Memory* %call_41f008, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x10(%rbp)	 RIP: 41f010	 Bytes: 4
  %loadMem_41f010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f010 = call %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f010)
  store %struct.Memory* %call_41f010, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 41f014	 Bytes: 2
  %loadMem_41f014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f014 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f014)
  store %struct.Memory* %call_41f014, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 41f016	 Bytes: 1
  %loadMem_41f016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f016 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f016)
  store %struct.Memory* %call_41f016, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 41f017	 Bytes: 4
  %loadMem_41f017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f017 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f017)
  store %struct.Memory* %call_41f017, %struct.Memory** %MEMORY

  ; Code: idivl 0x4c8(%rsi)	 RIP: 41f01b	 Bytes: 6
  %loadMem_41f01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f01b = call %struct.Memory* @routine_idivl_0x4c8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f01b)
  store %struct.Memory* %call_41f01b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 41f021	 Bytes: 3
  %loadMem_41f021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f021 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f021)
  store %struct.Memory* %call_41f021, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rdi	 RIP: 41f024	 Bytes: 8
  %loadMem_41f024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f024 = call %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f024)
  store %struct.Memory* %call_41f024, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rdi), %ecx	 RIP: 41f02c	 Bytes: 3
  %loadMem_41f02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f02c = call %struct.Memory* @routine_movl_0x14__rdi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f02c)
  store %struct.Memory* %call_41f02c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41f02f	 Bytes: 3
  %loadMem_41f02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f02f = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f02f)
  store %struct.Memory* %call_41f02f, %struct.Memory** %MEMORY

  ; Code: imull %ecx, %edx	 RIP: 41f032	 Bytes: 3
  %loadMem_41f032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f032 = call %struct.Memory* @routine_imull__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f032)
  store %struct.Memory* %call_41f032, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 41f035	 Bytes: 8
  %loadMem_41f035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f035 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f035)
  store %struct.Memory* %call_41f035, %struct.Memory** %MEMORY

  ; Code: movsd 0x118d8(%rdi), %xmm0	 RIP: 41f03d	 Bytes: 8
  %loadMem_41f03d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f03d = call %struct.Memory* @routine_movsd_0x118d8__rdi____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f03d)
  store %struct.Memory* %call_41f03d, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rdi	 RIP: 41f045	 Bytes: 8
  %loadMem_41f045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f045 = call %struct.Memory* @routine_movq_0x6d0278___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f045)
  store %struct.Memory* %call_41f045, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r8	 RIP: 41f04d	 Bytes: 8
  %loadMem_41f04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f04d = call %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f04d)
  store %struct.Memory* %call_41f04d, %struct.Memory** %MEMORY

  ; Code: movl 0x118e4(%r8), %ecx	 RIP: 41f055	 Bytes: 7
  %loadMem_41f055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f055 = call %struct.Memory* @routine_movl_0x118e4__r8____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f055)
  store %struct.Memory* %call_41f055, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 41f05c	 Bytes: 3
  %loadMem_41f05c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f05c = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f05c)
  store %struct.Memory* %call_41f05c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 41f05f	 Bytes: 3
  %loadMem_41f05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f05f = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f05f)
  store %struct.Memory* %call_41f05f, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %r8, %r8	 RIP: 41f062	 Bytes: 4
  %loadMem_41f062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f062 = call %struct.Memory* @routine_imulq__0x18___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f062)
  store %struct.Memory* %call_41f062, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rdi	 RIP: 41f066	 Bytes: 3
  %loadMem_41f066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f066 = call %struct.Memory* @routine_addq__r8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f066)
  store %struct.Memory* %call_41f066, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rdi), %ecx	 RIP: 41f069	 Bytes: 3
  %loadMem_41f069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f069 = call %struct.Memory* @routine_movl_0x4__rdi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f069)
  store %struct.Memory* %call_41f069, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41f06c	 Bytes: 3
  %loadMem_41f06c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f06c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f06c)
  store %struct.Memory* %call_41f06c, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %ecx, %xmm1	 RIP: 41f06f	 Bytes: 4
  %loadMem_41f06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f06f = call %struct.Memory* @routine_cvtsi2sdl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f06f)
  store %struct.Memory* %call_41f06f, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 41f073	 Bytes: 4
  %loadMem_41f073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f073 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f073)
  store %struct.Memory* %call_41f073, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %ecx	 RIP: 41f077	 Bytes: 4
  %loadMem_41f077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f077 = call %struct.Memory* @routine_cvttsd2si__xmm0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f077)
  store %struct.Memory* %call_41f077, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %edx	 RIP: 41f07b	 Bytes: 2
  %loadMem_41f07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f07b = call %struct.Memory* @routine_addl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f07b)
  store %struct.Memory* %call_41f07b, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 41f07d	 Bytes: 3
  %loadMem_41f07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f07d = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f07d)
  store %struct.Memory* %call_41f07d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 41f080	 Bytes: 8
  %loadMem_41f080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f080 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f080)
  store %struct.Memory* %call_41f080, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x11b00(%rdi)	 RIP: 41f088	 Bytes: 6
  %loadMem_41f088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f088 = call %struct.Memory* @routine_movl__edx__0x11b00__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f088)
  store %struct.Memory* %call_41f088, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f110	 RIP: 41f08e	 Bytes: 5
  %loadMem_41f08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f08e = call %struct.Memory* @routine_jmpq_.L_41f110(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f08e, i64 130, i64 5)
  store %struct.Memory* %call_41f08e, %struct.Memory** %MEMORY

  br label %block_.L_41f110

  ; Code: .L_41f093:	 RIP: 41f093	 Bytes: 0
block_.L_41f093:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f093	 Bytes: 8
  %loadMem_41f093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f093 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f093)
  store %struct.Memory* %call_41f093, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 41f09b	 Bytes: 2
  %loadMem_41f09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f09b = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f09b)
  store %struct.Memory* %call_41f09b, %struct.Memory** %MEMORY

  ; Code: subl 0x6cc020, %ecx	 RIP: 41f09d	 Bytes: 7
  %loadMem_41f09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f09d = call %struct.Memory* @routine_subl_0x6cc020___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f09d)
  store %struct.Memory* %call_41f09d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 41f0a4	 Bytes: 3
  %loadMem_41f0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0a4 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0a4)
  store %struct.Memory* %call_41f0a4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f0a7	 Bytes: 8
  %loadMem_41f0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0a7 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0a7)
  store %struct.Memory* %call_41f0a7, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %edx	 RIP: 41f0af	 Bytes: 3
  %loadMem_41f0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0af = call %struct.Memory* @routine_movl_0x14__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0af)
  store %struct.Memory* %call_41f0af, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41f0b2	 Bytes: 3
  %loadMem_41f0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0b2 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0b2)
  store %struct.Memory* %call_41f0b2, %struct.Memory** %MEMORY

  ; Code: imull %edx, %ecx	 RIP: 41f0b5	 Bytes: 3
  %loadMem_41f0b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0b5 = call %struct.Memory* @routine_imull__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0b5)
  store %struct.Memory* %call_41f0b5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f0b8	 Bytes: 8
  %loadMem_41f0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0b8 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0b8)
  store %struct.Memory* %call_41f0b8, %struct.Memory** %MEMORY

  ; Code: movsd 0x118d8(%rax), %xmm0	 RIP: 41f0c0	 Bytes: 8
  %loadMem_41f0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0c0 = call %struct.Memory* @routine_movsd_0x118d8__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0c0)
  store %struct.Memory* %call_41f0c0, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41f0c8	 Bytes: 8
  %loadMem_41f0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0c8 = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0c8)
  store %struct.Memory* %call_41f0c8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 41f0d0	 Bytes: 8
  %loadMem_41f0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0d0 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0d0)
  store %struct.Memory* %call_41f0d0, %struct.Memory** %MEMORY

  ; Code: movl 0x118e4(%rsi), %edx	 RIP: 41f0d8	 Bytes: 6
  %loadMem_41f0d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0d8 = call %struct.Memory* @routine_movl_0x118e4__rsi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0d8)
  store %struct.Memory* %call_41f0d8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 41f0de	 Bytes: 3
  %loadMem_41f0de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0de = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0de)
  store %struct.Memory* %call_41f0de, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 41f0e1	 Bytes: 3
  %loadMem_41f0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0e1 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0e1)
  store %struct.Memory* %call_41f0e1, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rsi, %rsi	 RIP: 41f0e4	 Bytes: 4
  %loadMem_41f0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0e4 = call %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0e4)
  store %struct.Memory* %call_41f0e4, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 41f0e8	 Bytes: 3
  %loadMem_41f0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0e8 = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0e8)
  store %struct.Memory* %call_41f0e8, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 41f0eb	 Bytes: 3
  %loadMem_41f0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0eb = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0eb)
  store %struct.Memory* %call_41f0eb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41f0ee	 Bytes: 3
  %loadMem_41f0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0ee = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0ee)
  store %struct.Memory* %call_41f0ee, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %edx, %xmm1	 RIP: 41f0f1	 Bytes: 4
  %loadMem_41f0f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0f1 = call %struct.Memory* @routine_cvtsi2sdl__edx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0f1)
  store %struct.Memory* %call_41f0f1, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 41f0f5	 Bytes: 4
  %loadMem_41f0f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0f5 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0f5)
  store %struct.Memory* %call_41f0f5, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %edx	 RIP: 41f0f9	 Bytes: 4
  %loadMem_41f0f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0f9 = call %struct.Memory* @routine_cvttsd2si__xmm0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0f9)
  store %struct.Memory* %call_41f0f9, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 41f0fd	 Bytes: 2
  %loadMem_41f0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0fd = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0fd)
  store %struct.Memory* %call_41f0fd, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 41f0ff	 Bytes: 3
  %loadMem_41f0ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f0ff = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f0ff)
  store %struct.Memory* %call_41f0ff, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f102	 Bytes: 8
  %loadMem_41f102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f102 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f102)
  store %struct.Memory* %call_41f102, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11b00(%rax)	 RIP: 41f10a	 Bytes: 6
  %loadMem_41f10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f10a = call %struct.Memory* @routine_movl__ecx__0x11b00__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f10a)
  store %struct.Memory* %call_41f10a, %struct.Memory** %MEMORY

  ; Code: .L_41f110:	 RIP: 41f110	 Bytes: 0
  br label %block_.L_41f110
block_.L_41f110:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f110	 Bytes: 8
  %loadMem_41f110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f110 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f110)
  store %struct.Memory* %call_41f110, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x118e4(%rax)	 RIP: 41f118	 Bytes: 7
  %loadMem_41f118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f118 = call %struct.Memory* @routine_cmpl__0x1__0x118e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f118)
  store %struct.Memory* %call_41f118, %struct.Memory** %MEMORY

  ; Code: jne .L_41f176	 RIP: 41f11f	 Bytes: 6
  %loadMem_41f11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f11f = call %struct.Memory* @routine_jne_.L_41f176(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f11f, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_41f11f, %struct.Memory** %MEMORY

  %loadBr_41f11f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f11f = icmp eq i8 %loadBr_41f11f, 1
  br i1 %cmpBr_41f11f, label %block_.L_41f176, label %block_41f125

block_41f125:
  ; Code: movq 0x6cb900, %rax	 RIP: 41f125	 Bytes: 8
  %loadMem_41f125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f125 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f125)
  store %struct.Memory* %call_41f125, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 41f12d	 Bytes: 6
  %loadMem_41f12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f12d = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f12d)
  store %struct.Memory* %call_41f12d, %struct.Memory** %MEMORY

  ; Code: movl 0x6cc024, %edx	 RIP: 41f133	 Bytes: 7
  %loadMem_41f133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f133 = call %struct.Memory* @routine_movl_0x6cc024___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f133)
  store %struct.Memory* %call_41f133, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f13a	 Bytes: 8
  %loadMem_41f13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f13a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f13a)
  store %struct.Memory* %call_41f13a, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 41f142	 Bytes: 2
  %loadMem_41f142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f142 = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f142)
  store %struct.Memory* %call_41f142, %struct.Memory** %MEMORY

  ; Code: subl 0x6cc020, %esi	 RIP: 41f144	 Bytes: 7
  %loadMem_41f144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f144 = call %struct.Memory* @routine_subl_0x6cc020___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f144)
  store %struct.Memory* %call_41f144, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f14b	 Bytes: 8
  %loadMem_41f14b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f14b = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f14b)
  store %struct.Memory* %call_41f14b, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %edi	 RIP: 41f153	 Bytes: 3
  %loadMem_41f153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f153 = call %struct.Memory* @routine_movl_0x14__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f153)
  store %struct.Memory* %call_41f153, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edi	 RIP: 41f156	 Bytes: 3
  %loadMem_41f156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f156 = call %struct.Memory* @routine_addl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f156)
  store %struct.Memory* %call_41f156, %struct.Memory** %MEMORY

  ; Code: imull %edi, %esi	 RIP: 41f159	 Bytes: 3
  %loadMem_41f159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f159 = call %struct.Memory* @routine_imull__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f159)
  store %struct.Memory* %call_41f159, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 41f15c	 Bytes: 2
  %loadMem_41f15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f15c = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f15c)
  store %struct.Memory* %call_41f15c, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 41f15e	 Bytes: 3
  %loadMem_41f15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f15e = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f15e)
  store %struct.Memory* %call_41f15e, %struct.Memory** %MEMORY

  ; Code: subl %edx, %ecx	 RIP: 41f161	 Bytes: 2
  %loadMem_41f161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f161 = call %struct.Memory* @routine_subl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f161)
  store %struct.Memory* %call_41f161, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f163	 Bytes: 8
  %loadMem_41f163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f163 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f163)
  store %struct.Memory* %call_41f163, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11af4(%rax)	 RIP: 41f16b	 Bytes: 6
  %loadMem_41f16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f16b = call %struct.Memory* @routine_movl__ecx__0x11af4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f16b)
  store %struct.Memory* %call_41f16b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f215	 RIP: 41f171	 Bytes: 5
  %loadMem_41f171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f171 = call %struct.Memory* @routine_jmpq_.L_41f215(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f171, i64 164, i64 5)
  store %struct.Memory* %call_41f171, %struct.Memory** %MEMORY

  br label %block_.L_41f215

  ; Code: .L_41f176:	 RIP: 41f176	 Bytes: 0
block_.L_41f176:

  ; Code: movsd 0x926ca(%rip), %xmm0	 RIP: 41f176	 Bytes: 8
  %loadMem_41f176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f176 = call %struct.Memory* @routine_movsd_0x926ca__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f176)
  store %struct.Memory* %call_41f176, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f17e	 Bytes: 8
  %loadMem_41f17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f17e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f17e)
  store %struct.Memory* %call_41f17e, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 41f186	 Bytes: 6
  %loadMem_41f186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f186 = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f186)
  store %struct.Memory* %call_41f186, %struct.Memory** %MEMORY

  ; Code: movl 0x6cc024, %edx	 RIP: 41f18c	 Bytes: 7
  %loadMem_41f18c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f18c = call %struct.Memory* @routine_movl_0x6cc024___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f18c)
  store %struct.Memory* %call_41f18c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f193	 Bytes: 8
  %loadMem_41f193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f193 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f193)
  store %struct.Memory* %call_41f193, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 41f19b	 Bytes: 2
  %loadMem_41f19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f19b = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f19b)
  store %struct.Memory* %call_41f19b, %struct.Memory** %MEMORY

  ; Code: subl 0x6cc020, %esi	 RIP: 41f19d	 Bytes: 7
  %loadMem_41f19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f19d = call %struct.Memory* @routine_subl_0x6cc020___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f19d)
  store %struct.Memory* %call_41f19d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 41f1a4	 Bytes: 3
  %loadMem_41f1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1a4 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1a4)
  store %struct.Memory* %call_41f1a4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f1a7	 Bytes: 8
  %loadMem_41f1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1a7 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1a7)
  store %struct.Memory* %call_41f1a7, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %edi	 RIP: 41f1af	 Bytes: 3
  %loadMem_41f1af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1af = call %struct.Memory* @routine_movl_0x14__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1af)
  store %struct.Memory* %call_41f1af, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edi	 RIP: 41f1b2	 Bytes: 3
  %loadMem_41f1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1b2 = call %struct.Memory* @routine_addl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1b2)
  store %struct.Memory* %call_41f1b2, %struct.Memory** %MEMORY

  ; Code: imull %edi, %esi	 RIP: 41f1b5	 Bytes: 3
  %loadMem_41f1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1b5 = call %struct.Memory* @routine_imull__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1b5)
  store %struct.Memory* %call_41f1b5, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 41f1b8	 Bytes: 2
  %loadMem_41f1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1b8 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1b8)
  store %struct.Memory* %call_41f1b8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f1ba	 Bytes: 8
  %loadMem_41f1ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1ba = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1ba)
  store %struct.Memory* %call_41f1ba, %struct.Memory** %MEMORY

  ; Code: mulsd 0x118d8(%rax), %xmm0	 RIP: 41f1c2	 Bytes: 8
  %loadMem_41f1c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1c2 = call %struct.Memory* @routine_mulsd_0x118d8__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1c2)
  store %struct.Memory* %call_41f1c2, %struct.Memory** %MEMORY

  ; Code: movq 0x6d0278, %rax	 RIP: 41f1ca	 Bytes: 8
  %loadMem_41f1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1ca = call %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1ca)
  store %struct.Memory* %call_41f1ca, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r8	 RIP: 41f1d2	 Bytes: 8
  %loadMem_41f1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1d2 = call %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1d2)
  store %struct.Memory* %call_41f1d2, %struct.Memory** %MEMORY

  ; Code: movl 0x118e4(%r8), %esi	 RIP: 41f1da	 Bytes: 7
  %loadMem_41f1da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1da = call %struct.Memory* @routine_movl_0x118e4__r8____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1da)
  store %struct.Memory* %call_41f1da, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %esi	 RIP: 41f1e1	 Bytes: 3
  %loadMem_41f1e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1e1 = call %struct.Memory* @routine_subl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1e1)
  store %struct.Memory* %call_41f1e1, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %r8	 RIP: 41f1e4	 Bytes: 3
  %loadMem_41f1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1e4 = call %struct.Memory* @routine_movslq__esi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1e4)
  store %struct.Memory* %call_41f1e4, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %r8, %r8	 RIP: 41f1e7	 Bytes: 4
  %loadMem_41f1e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1e7 = call %struct.Memory* @routine_imulq__0x18___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1e7)
  store %struct.Memory* %call_41f1e7, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rax	 RIP: 41f1eb	 Bytes: 3
  %loadMem_41f1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1eb = call %struct.Memory* @routine_addq__r8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1eb)
  store %struct.Memory* %call_41f1eb, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %esi	 RIP: 41f1ee	 Bytes: 3
  %loadMem_41f1ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1ee = call %struct.Memory* @routine_movl_0x4__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1ee)
  store %struct.Memory* %call_41f1ee, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 41f1f1	 Bytes: 3
  %loadMem_41f1f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1f1 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1f1)
  store %struct.Memory* %call_41f1f1, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %esi, %xmm1	 RIP: 41f1f4	 Bytes: 4
  %loadMem_41f1f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1f4 = call %struct.Memory* @routine_cvtsi2sdl__esi___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1f4)
  store %struct.Memory* %call_41f1f4, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 41f1f8	 Bytes: 4
  %loadMem_41f1f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1f8 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1f8)
  store %struct.Memory* %call_41f1f8, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %esi	 RIP: 41f1fc	 Bytes: 4
  %loadMem_41f1fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f1fc = call %struct.Memory* @routine_cvttsd2si__xmm0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f1fc)
  store %struct.Memory* %call_41f1fc, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 41f200	 Bytes: 2
  %loadMem_41f200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f200 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f200)
  store %struct.Memory* %call_41f200, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 41f202	 Bytes: 3
  %loadMem_41f202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f202 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f202)
  store %struct.Memory* %call_41f202, %struct.Memory** %MEMORY

  ; Code: subl %edx, %ecx	 RIP: 41f205	 Bytes: 2
  %loadMem_41f205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f205 = call %struct.Memory* @routine_subl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f205)
  store %struct.Memory* %call_41f205, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f207	 Bytes: 8
  %loadMem_41f207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f207 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f207)
  store %struct.Memory* %call_41f207, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11af4(%rax)	 RIP: 41f20f	 Bytes: 6
  %loadMem_41f20f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f20f = call %struct.Memory* @routine_movl__ecx__0x11af4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f20f)
  store %struct.Memory* %call_41f20f, %struct.Memory** %MEMORY

  ; Code: .L_41f215:	 RIP: 41f215	 Bytes: 0
  br label %block_.L_41f215
block_.L_41f215:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f215	 Bytes: 8
  %loadMem_41f215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f215 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f215)
  store %struct.Memory* %call_41f215, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb40(%rax)	 RIP: 41f21d	 Bytes: 7
  %loadMem_41f21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f21d = call %struct.Memory* @routine_cmpl__0x0__0xb40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f21d)
  store %struct.Memory* %call_41f21d, %struct.Memory** %MEMORY

  ; Code: jne .L_41f260	 RIP: 41f224	 Bytes: 6
  %loadMem_41f224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f224 = call %struct.Memory* @routine_jne_.L_41f260(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f224, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_41f224, %struct.Memory** %MEMORY

  %loadBr_41f224 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f224 = icmp eq i8 %loadBr_41f224, 1
  br i1 %cmpBr_41f224, label %block_.L_41f260, label %block_41f22a

block_41f22a:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f22a	 Bytes: 8
  %loadMem_41f22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f22a = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f22a)
  store %struct.Memory* %call_41f22a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 41f232	 Bytes: 7
  %loadMem_41f232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f232 = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f232)
  store %struct.Memory* %call_41f232, %struct.Memory** %MEMORY

  ; Code: jne .L_41f260	 RIP: 41f239	 Bytes: 6
  %loadMem_41f239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f239 = call %struct.Memory* @routine_jne_.L_41f260(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f239, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_41f239, %struct.Memory** %MEMORY

  %loadBr_41f239 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f239 = icmp eq i8 %loadBr_41f239, 1
  br i1 %cmpBr_41f239, label %block_.L_41f260, label %block_41f23f

block_41f23f:
  ; Code: movq 0x6cb900, %rax	 RIP: 41f23f	 Bytes: 8
  %loadMem_41f23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f23f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f23f)
  store %struct.Memory* %call_41f23f, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 41f247	 Bytes: 6
  %loadMem_41f247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f247 = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f247)
  store %struct.Memory* %call_41f247, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f24d	 Bytes: 8
  %loadMem_41f24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f24d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f24d)
  store %struct.Memory* %call_41f24d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11b04(%rax)	 RIP: 41f255	 Bytes: 6
  %loadMem_41f255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f255 = call %struct.Memory* @routine_movl__ecx__0x11b04__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f255)
  store %struct.Memory* %call_41f255, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f27f	 RIP: 41f25b	 Bytes: 5
  %loadMem_41f25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f25b = call %struct.Memory* @routine_jmpq_.L_41f27f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f25b, i64 36, i64 5)
  store %struct.Memory* %call_41f25b, %struct.Memory** %MEMORY

  br label %block_.L_41f27f

  ; Code: .L_41f260:	 RIP: 41f260	 Bytes: 0
block_.L_41f260:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f260	 Bytes: 8
  %loadMem_41f260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f260 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f260)
  store %struct.Memory* %call_41f260, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 41f268	 Bytes: 6
  %loadMem_41f268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f268 = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f268)
  store %struct.Memory* %call_41f268, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41f26e	 Bytes: 3
  %loadMem_41f26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f26e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f26e)
  store %struct.Memory* %call_41f26e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f271	 Bytes: 8
  %loadMem_41f271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f271 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f271)
  store %struct.Memory* %call_41f271, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11b04(%rax)	 RIP: 41f279	 Bytes: 6
  %loadMem_41f279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f279 = call %struct.Memory* @routine_movl__ecx__0x11b04__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f279)
  store %struct.Memory* %call_41f279, %struct.Memory** %MEMORY

  ; Code: .L_41f27f:	 RIP: 41f27f	 Bytes: 0
  br label %block_.L_41f27f
block_.L_41f27f:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f27f	 Bytes: 8
  %loadMem_41f27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f27f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f27f)
  store %struct.Memory* %call_41f27f, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 41f287	 Bytes: 6
  %loadMem_41f287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f287 = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f287)
  store %struct.Memory* %call_41f287, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f28d	 Bytes: 8
  %loadMem_41f28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f28d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f28d)
  store %struct.Memory* %call_41f28d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11b04(%rax), %ecx	 RIP: 41f295	 Bytes: 6
  %loadMem_41f295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f295 = call %struct.Memory* @routine_cmpl_0x11b04__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f295)
  store %struct.Memory* %call_41f295, %struct.Memory** %MEMORY

  ; Code: jge .L_41f2b7	 RIP: 41f29b	 Bytes: 6
  %loadMem_41f29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f29b = call %struct.Memory* @routine_jge_.L_41f2b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f29b, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_41f29b, %struct.Memory** %MEMORY

  %loadBr_41f29b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f29b = icmp eq i8 %loadBr_41f29b, 1
  br i1 %cmpBr_41f29b, label %block_.L_41f2b7, label %block_41f2a1

block_41f2a1:
  ; Code: movq 0x6cb900, %rax	 RIP: 41f2a1	 Bytes: 8
  %loadMem_41f2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2a1 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2a1)
  store %struct.Memory* %call_41f2a1, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 41f2a9	 Bytes: 6
  %loadMem_41f2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2a9 = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2a9)
  store %struct.Memory* %call_41f2a9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 41f2af	 Bytes: 3
  %loadMem_41f2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2af = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2af)
  store %struct.Memory* %call_41f2af, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f2c8	 RIP: 41f2b2	 Bytes: 5
  %loadMem_41f2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2b2 = call %struct.Memory* @routine_jmpq_.L_41f2c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2b2, i64 22, i64 5)
  store %struct.Memory* %call_41f2b2, %struct.Memory** %MEMORY

  br label %block_.L_41f2c8

  ; Code: .L_41f2b7:	 RIP: 41f2b7	 Bytes: 0
block_.L_41f2b7:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f2b7	 Bytes: 8
  %loadMem_41f2b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2b7 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2b7)
  store %struct.Memory* %call_41f2b7, %struct.Memory** %MEMORY

  ; Code: movl 0x11b04(%rax), %ecx	 RIP: 41f2bf	 Bytes: 6
  %loadMem_41f2bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2bf = call %struct.Memory* @routine_movl_0x11b04__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2bf)
  store %struct.Memory* %call_41f2bf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 41f2c5	 Bytes: 3
  %loadMem_41f2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2c5 = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2c5)
  store %struct.Memory* %call_41f2c5, %struct.Memory** %MEMORY

  ; Code: .L_41f2c8:	 RIP: 41f2c8	 Bytes: 0
  br label %block_.L_41f2c8
block_.L_41f2c8:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 41f2c8	 Bytes: 3
  %loadMem_41f2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2c8 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2c8)
  store %struct.Memory* %call_41f2c8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 41f2cb	 Bytes: 8
  %loadMem_41f2cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2cb = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2cb)
  store %struct.Memory* %call_41f2cb, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x11b08(%rcx)	 RIP: 41f2d3	 Bytes: 6
  %loadMem_41f2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2d3 = call %struct.Memory* @routine_movl__eax__0x11b08__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2d3)
  store %struct.Memory* %call_41f2d3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 41f2d9	 Bytes: 8
  %loadMem_41f2d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2d9 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2d9)
  store %struct.Memory* %call_41f2d9, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11af8(%rcx)	 RIP: 41f2e1	 Bytes: 10
  %loadMem_41f2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2e1 = call %struct.Memory* @routine_movl__0x0__0x11af8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2e1)
  store %struct.Memory* %call_41f2e1, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41f2eb	 Bytes: 2
  %loadMem_41f2eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2eb = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2eb)
  store %struct.Memory* %call_41f2eb, %struct.Memory** %MEMORY

  ; Code: callq .encode_one_frame	 RIP: 41f2ed	 Bytes: 5
  %loadMem1_41f2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f2ed = call %struct.Memory* @routine_callq_.encode_one_frame(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f2ed, i64 35379, i64 5, i64 5)
  store %struct.Memory* %call1_41f2ed, %struct.Memory** %MEMORY

  %loadMem2_41f2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f2ed = load i64, i64* %3
  %call2_41f2ed = call %struct.Memory* @sub_427d20.encode_one_frame(%struct.State* %0, i64  %loadPC_41f2ed, %struct.Memory* %loadMem2_41f2ed)
  store %struct.Memory* %call2_41f2ed, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 41f2f2	 Bytes: 8
  %loadMem_41f2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2f2 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2f2)
  store %struct.Memory* %call_41f2f2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc9c(%rcx)	 RIP: 41f2fa	 Bytes: 7
  %loadMem_41f2fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f2fa = call %struct.Memory* @routine_cmpl__0x0__0xc9c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f2fa)
  store %struct.Memory* %call_41f2fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 41f301	 Bytes: 3
  %loadMem_41f301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f301 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f301)
  store %struct.Memory* %call_41f301, %struct.Memory** %MEMORY

  ; Code: je .L_41f311	 RIP: 41f304	 Bytes: 6
  %loadMem_41f304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f304 = call %struct.Memory* @routine_je_.L_41f311(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f304, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_41f304, %struct.Memory** %MEMORY

  %loadBr_41f304 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f304 = icmp eq i8 %loadBr_41f304, 1
  br i1 %cmpBr_41f304, label %block_.L_41f311, label %block_41f30a

block_41f30a:
  ; Code: movb $0x0, %al	 RIP: 41f30a	 Bytes: 2
  %loadMem_41f30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f30a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f30a)
  store %struct.Memory* %call_41f30a, %struct.Memory** %MEMORY

  ; Code: callq .report_frame_statistic	 RIP: 41f30c	 Bytes: 5
  %loadMem1_41f30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f30c = call %struct.Memory* @routine_callq_.report_frame_statistic(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f30c, i64 89268, i64 5, i64 5)
  store %struct.Memory* %call1_41f30c, %struct.Memory** %MEMORY

  %loadMem2_41f30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f30c = load i64, i64* %3
  %call2_41f30c = call %struct.Memory* @sub_434fc0.report_frame_statistic(%struct.State* %0, i64  %loadPC_41f30c, %struct.Memory* %loadMem2_41f30c)
  store %struct.Memory* %call2_41f30c, %struct.Memory** %MEMORY

  ; Code: .L_41f311:	 RIP: 41f311	 Bytes: 0
  br label %block_.L_41f311
block_.L_41f311:

  ; Code: jmpq .L_41f316	 RIP: 41f311	 Bytes: 5
  %loadMem_41f311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f311 = call %struct.Memory* @routine_jmpq_.L_41f316(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f311, i64 5, i64 5)
  store %struct.Memory* %call_41f311, %struct.Memory** %MEMORY

  br label %block_.L_41f316

  ; Code: .L_41f316:	 RIP: 41f316	 Bytes: 0
block_.L_41f316:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f316	 Bytes: 8
  %loadMem_41f316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f316 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f316)
  store %struct.Memory* %call_41f316, %struct.Memory** %MEMORY

  ; Code: movl 0x118e4(%rax), %ecx	 RIP: 41f31e	 Bytes: 6
  %loadMem_41f31e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f31e = call %struct.Memory* @routine_movl_0x118e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f31e)
  store %struct.Memory* %call_41f31e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41f324	 Bytes: 3
  %loadMem_41f324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f324 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f324)
  store %struct.Memory* %call_41f324, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x118e4(%rax)	 RIP: 41f327	 Bytes: 6
  %loadMem_41f327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f327 = call %struct.Memory* @routine_movl__ecx__0x118e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f327)
  store %struct.Memory* %call_41f327, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41ee71	 RIP: 41f32d	 Bytes: 5
  %loadMem_41f32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f32d = call %struct.Memory* @routine_jmpq_.L_41ee71(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f32d, i64 -1212, i64 5)
  store %struct.Memory* %call_41f32d, %struct.Memory** %MEMORY

  br label %block_.L_41ee71

  ; Code: .L_41f332:	 RIP: 41f332	 Bytes: 0
block_.L_41f332:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f332	 Bytes: 8
  %loadMem_41f332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f332 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f332)
  store %struct.Memory* %call_41f332, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x118e4(%rax)	 RIP: 41f33a	 Bytes: 10
  %loadMem_41f33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f33a = call %struct.Memory* @routine_movl__0x0__0x118e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f33a)
  store %struct.Memory* %call_41f33a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f6e7	 RIP: 41f344	 Bytes: 5
  %loadMem_41f344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f344 = call %struct.Memory* @routine_jmpq_.L_41f6e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f344, i64 931, i64 5)
  store %struct.Memory* %call_41f344, %struct.Memory** %MEMORY

  br label %block_.L_41f6e7

  ; Code: .L_41f349:	 RIP: 41f349	 Bytes: 0
block_.L_41f349:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f349	 Bytes: 8
  %loadMem_41f349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f349 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f349)
  store %struct.Memory* %call_41f349, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x118e4(%rax)	 RIP: 41f351	 Bytes: 10
  %loadMem_41f351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f351 = call %struct.Memory* @routine_movl__0x1__0x118e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f351)
  store %struct.Memory* %call_41f351, %struct.Memory** %MEMORY

  ; Code: .L_41f35b:	 RIP: 41f35b	 Bytes: 0
  br label %block_.L_41f35b
block_.L_41f35b:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f35b	 Bytes: 8
  %loadMem_41f35b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f35b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f35b)
  store %struct.Memory* %call_41f35b, %struct.Memory** %MEMORY

  ; Code: movl 0x118e4(%rax), %ecx	 RIP: 41f363	 Bytes: 6
  %loadMem_41f363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f363 = call %struct.Memory* @routine_movl_0x118e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f363)
  store %struct.Memory* %call_41f363, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f369	 Bytes: 8
  %loadMem_41f369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f369 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f369)
  store %struct.Memory* %call_41f369, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4d4(%rax), %ecx	 RIP: 41f371	 Bytes: 6
  %loadMem_41f371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f371 = call %struct.Memory* @routine_cmpl_0x4d4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f371)
  store %struct.Memory* %call_41f371, %struct.Memory** %MEMORY

  ; Code: jg .L_41f6e2	 RIP: 41f377	 Bytes: 6
  %loadMem_41f377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f377 = call %struct.Memory* @routine_jg_.L_41f6e2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f377, i8* %BRANCH_TAKEN, i64 875, i64 6, i64 6)
  store %struct.Memory* %call_41f377, %struct.Memory** %MEMORY

  %loadBr_41f377 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f377 = icmp eq i8 %loadBr_41f377, 1
  br i1 %cmpBr_41f377, label %block_.L_41f6e2, label %block_41f37d

block_41f37d:
  ; Code: movq 0x6cb900, %rax	 RIP: 41f37d	 Bytes: 8
  %loadMem_41f37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f37d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f37d)
  store %struct.Memory* %call_41f37d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11b30(%rax)	 RIP: 41f385	 Bytes: 10
  %loadMem_41f385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f385 = call %struct.Memory* @routine_movl__0x0__0x11b30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f385)
  store %struct.Memory* %call_41f385, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f38f	 Bytes: 8
  %loadMem_41f38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f38f = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f38f)
  store %struct.Memory* %call_41f38f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x524(%rax)	 RIP: 41f397	 Bytes: 7
  %loadMem_41f397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f397 = call %struct.Memory* @routine_cmpl__0x1__0x524__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f397)
  store %struct.Memory* %call_41f397, %struct.Memory** %MEMORY

  ; Code: jne .L_41f400	 RIP: 41f39e	 Bytes: 6
  %loadMem_41f39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f39e = call %struct.Memory* @routine_jne_.L_41f400(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f39e, i8* %BRANCH_TAKEN, i64 98, i64 6, i64 6)
  store %struct.Memory* %call_41f39e, %struct.Memory** %MEMORY

  %loadBr_41f39e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f39e = icmp eq i8 %loadBr_41f39e, 1
  br i1 %cmpBr_41f39e, label %block_.L_41f400, label %block_41f3a4

block_41f3a4:
  ; Code: movl $0x1, %eax	 RIP: 41f3a4	 Bytes: 5
  %loadMem_41f3a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3a4 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3a4)
  store %struct.Memory* %call_41f3a4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 41f3a9	 Bytes: 8
  %loadMem_41f3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3a9 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3a9)
  store %struct.Memory* %call_41f3a9, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x11b30(%rcx)	 RIP: 41f3b1	 Bytes: 10
  %loadMem_41f3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3b1 = call %struct.Memory* @routine_movl__0x1__0x11b30__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3b1)
  store %struct.Memory* %call_41f3b1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 41f3bb	 Bytes: 8
  %loadMem_41f3bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3bb = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3bb)
  store %struct.Memory* %call_41f3bb, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rcx), %edx	 RIP: 41f3c3	 Bytes: 6
  %loadMem_41f3c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3c3 = call %struct.Memory* @routine_movl_0x11b10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3c3)
  store %struct.Memory* %call_41f3c3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41f3c9	 Bytes: 3
  %loadMem_41f3c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3c9 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3c9)
  store %struct.Memory* %call_41f3c9, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x11b10(%rcx)	 RIP: 41f3cc	 Bytes: 6
  %loadMem_41f3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3cc = call %struct.Memory* @routine_movl__edx__0x11b10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3cc)
  store %struct.Memory* %call_41f3cc, %struct.Memory** %MEMORY

  ; Code: movl 0x722c98, %edx	 RIP: 41f3d2	 Bytes: 7
  %loadMem_41f3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3d2 = call %struct.Memory* @routine_movl_0x722c98___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3d2)
  store %struct.Memory* %call_41f3d2, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %edx	 RIP: 41f3d9	 Bytes: 3
  %loadMem_41f3d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3d9 = call %struct.Memory* @routine_addl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3d9)
  store %struct.Memory* %call_41f3d9, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 41f3dc	 Bytes: 2
  %loadMem_41f3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3dc = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3dc)
  store %struct.Memory* %call_41f3dc, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 41f3de	 Bytes: 2
  %loadMem_41f3de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3de = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3de)
  store %struct.Memory* %call_41f3de, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 41f3e0	 Bytes: 8
  %loadMem_41f3e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3e0 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3e0)
  store %struct.Memory* %call_41f3e0, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rsi), %edx	 RIP: 41f3e8	 Bytes: 6
  %loadMem_41f3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3e8 = call %struct.Memory* @routine_movl_0x11b10__rsi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3e8)
  store %struct.Memory* %call_41f3e8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 41f3ee	 Bytes: 3
  %loadMem_41f3ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3ee = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3ee)
  store %struct.Memory* %call_41f3ee, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 41f3f1	 Bytes: 2
  %loadMem_41f3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3f1 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3f1)
  store %struct.Memory* %call_41f3f1, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 41f3f3	 Bytes: 2
  %loadMem_41f3f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3f3 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3f3)
  store %struct.Memory* %call_41f3f3, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edi	 RIP: 41f3f5	 Bytes: 3
  %loadMem_41f3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3f5 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3f5)
  store %struct.Memory* %call_41f3f5, %struct.Memory** %MEMORY

  ; Code: divl %edi	 RIP: 41f3f8	 Bytes: 2
  %loadMem_41f3f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3f8 = call %struct.Memory* @routine_divl__edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3f8)
  store %struct.Memory* %call_41f3f8, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x11b10(%rsi)	 RIP: 41f3fa	 Bytes: 6
  %loadMem_41f3fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f3fa = call %struct.Memory* @routine_movl__edx__0x11b10__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f3fa)
  store %struct.Memory* %call_41f3fa, %struct.Memory** %MEMORY

  ; Code: .L_41f400:	 RIP: 41f400	 Bytes: 0
  br label %block_.L_41f400
block_.L_41f400:

  ; Code: movsd 0x92458(%rip), %xmm0	 RIP: 41f400	 Bytes: 8
  %loadMem_41f400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f400 = call %struct.Memory* @routine_movsd_0x92458__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f400)
  store %struct.Memory* %call_41f400, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f408	 Bytes: 8
  %loadMem_41f408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f408 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f408)
  store %struct.Memory* %call_41f408, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %ecx	 RIP: 41f410	 Bytes: 3
  %loadMem_41f410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f410 = call %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f410)
  store %struct.Memory* %call_41f410, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41f413	 Bytes: 3
  %loadMem_41f413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f413 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f413)
  store %struct.Memory* %call_41f413, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %ecx, %xmm1	 RIP: 41f416	 Bytes: 4
  %loadMem_41f416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f416 = call %struct.Memory* @routine_cvtsi2sdl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f416)
  store %struct.Memory* %call_41f416, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f41a	 Bytes: 8
  %loadMem_41f41a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f41a = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f41a)
  store %struct.Memory* %call_41f41a, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x4d4(%rax), %xmm2	 RIP: 41f422	 Bytes: 8
  %loadMem_41f422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f422 = call %struct.Memory* @routine_cvtsi2sdl_0x4d4__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f422)
  store %struct.Memory* %call_41f422, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm2	 RIP: 41f42a	 Bytes: 4
  %loadMem_41f42a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f42a = call %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f42a)
  store %struct.Memory* %call_41f42a, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 41f42e	 Bytes: 4
  %loadMem_41f42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f42e = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f42e)
  store %struct.Memory* %call_41f42e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f432	 Bytes: 8
  %loadMem_41f432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f432 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f432)
  store %struct.Memory* %call_41f432, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x118d8(%rax)	 RIP: 41f43a	 Bytes: 8
  %loadMem_41f43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f43a = call %struct.Memory* @routine_movsd__xmm1__0x118d8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f43a)
  store %struct.Memory* %call_41f43a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f442	 Bytes: 8
  %loadMem_41f442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f442 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f442)
  store %struct.Memory* %call_41f442, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x528(%rax)	 RIP: 41f44a	 Bytes: 7
  %loadMem_41f44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f44a = call %struct.Memory* @routine_cmpl__0x3__0x528__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f44a)
  store %struct.Memory* %call_41f44a, %struct.Memory** %MEMORY

  ; Code: jne .L_41f46f	 RIP: 41f451	 Bytes: 6
  %loadMem_41f451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f451 = call %struct.Memory* @routine_jne_.L_41f46f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f451, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_41f451, %struct.Memory** %MEMORY

  %loadBr_41f451 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f451 = icmp eq i8 %loadBr_41f451, 1
  br i1 %cmpBr_41f451, label %block_.L_41f46f, label %block_41f457

block_41f457:
  ; Code: movsd 0x92401(%rip), %xmm0	 RIP: 41f457	 Bytes: 8
  %loadMem_41f457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f457 = call %struct.Memory* @routine_movsd_0x92401__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f457)
  store %struct.Memory* %call_41f457, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f45f	 Bytes: 8
  %loadMem_41f45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f45f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f45f)
  store %struct.Memory* %call_41f45f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x118d8(%rax)	 RIP: 41f467	 Bytes: 8
  %loadMem_41f467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f467 = call %struct.Memory* @routine_movsd__xmm0__0x118d8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f467)
  store %struct.Memory* %call_41f467, %struct.Memory** %MEMORY

  ; Code: .L_41f46f:	 RIP: 41f46f	 Bytes: 0
  br label %block_.L_41f46f
block_.L_41f46f:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f46f	 Bytes: 8
  %loadMem_41f46f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f46f = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f46f)
  store %struct.Memory* %call_41f46f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4c8(%rax)	 RIP: 41f477	 Bytes: 7
  %loadMem_41f477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f477 = call %struct.Memory* @routine_cmpl__0x0__0x4c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f477)
  store %struct.Memory* %call_41f477, %struct.Memory** %MEMORY

  ; Code: je .L_41f517	 RIP: 41f47e	 Bytes: 6
  %loadMem_41f47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f47e = call %struct.Memory* @routine_je_.L_41f517(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f47e, i8* %BRANCH_TAKEN, i64 153, i64 6, i64 6)
  store %struct.Memory* %call_41f47e, %struct.Memory** %MEMORY

  %loadBr_41f47e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f47e = icmp eq i8 %loadBr_41f47e, 1
  br i1 %cmpBr_41f47e, label %block_.L_41f517, label %block_41f484

block_41f484:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f484	 Bytes: 8
  %loadMem_41f484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f484 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f484)
  store %struct.Memory* %call_41f484, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4cc(%rax)	 RIP: 41f48c	 Bytes: 7
  %loadMem_41f48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f48c = call %struct.Memory* @routine_cmpl__0x0__0x4cc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f48c)
  store %struct.Memory* %call_41f48c, %struct.Memory** %MEMORY

  ; Code: je .L_41f517	 RIP: 41f493	 Bytes: 6
  %loadMem_41f493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f493 = call %struct.Memory* @routine_je_.L_41f517(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f493, i8* %BRANCH_TAKEN, i64 132, i64 6, i64 6)
  store %struct.Memory* %call_41f493, %struct.Memory** %MEMORY

  %loadBr_41f493 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f493 = icmp eq i8 %loadBr_41f493, 1
  br i1 %cmpBr_41f493, label %block_.L_41f517, label %block_41f499

block_41f499:
  ; Code: movq 0x6cb900, %rax	 RIP: 41f499	 Bytes: 8
  %loadMem_41f499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f499 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f499)
  store %struct.Memory* %call_41f499, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 41f4a1	 Bytes: 2
  %loadMem_41f4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4a1 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4a1)
  store %struct.Memory* %call_41f4a1, %struct.Memory** %MEMORY

  ; Code: subl 0x6cc020, %ecx	 RIP: 41f4a3	 Bytes: 7
  %loadMem_41f4a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4a3 = call %struct.Memory* @routine_subl_0x6cc020___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4a3)
  store %struct.Memory* %call_41f4a3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f4aa	 Bytes: 8
  %loadMem_41f4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4aa = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4aa)
  store %struct.Memory* %call_41f4aa, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x28(%rbp)	 RIP: 41f4b2	 Bytes: 4
  %loadMem_41f4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4b2 = call %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4b2)
  store %struct.Memory* %call_41f4b2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 41f4b6	 Bytes: 2
  %loadMem_41f4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4b6 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4b6)
  store %struct.Memory* %call_41f4b6, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 41f4b8	 Bytes: 1
  %loadMem_41f4b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4b8 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4b8)
  store %struct.Memory* %call_41f4b8, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rsi	 RIP: 41f4b9	 Bytes: 4
  %loadMem_41f4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4b9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4b9)
  store %struct.Memory* %call_41f4b9, %struct.Memory** %MEMORY

  ; Code: idivl 0x4c8(%rsi)	 RIP: 41f4bd	 Bytes: 6
  %loadMem_41f4bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4bd = call %struct.Memory* @routine_idivl_0x4c8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4bd)
  store %struct.Memory* %call_41f4bd, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 41f4c3	 Bytes: 3
  %loadMem_41f4c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4c3 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4c3)
  store %struct.Memory* %call_41f4c3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rdi	 RIP: 41f4c6	 Bytes: 8
  %loadMem_41f4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4c6 = call %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4c6)
  store %struct.Memory* %call_41f4c6, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rdi), %ecx	 RIP: 41f4ce	 Bytes: 3
  %loadMem_41f4ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4ce = call %struct.Memory* @routine_movl_0x14__rdi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4ce)
  store %struct.Memory* %call_41f4ce, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41f4d1	 Bytes: 3
  %loadMem_41f4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4d1 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4d1)
  store %struct.Memory* %call_41f4d1, %struct.Memory** %MEMORY

  ; Code: imull %ecx, %edx	 RIP: 41f4d4	 Bytes: 3
  %loadMem_41f4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4d4 = call %struct.Memory* @routine_imull__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4d4)
  store %struct.Memory* %call_41f4d4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 41f4d7	 Bytes: 8
  %loadMem_41f4d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4d7 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4d7)
  store %struct.Memory* %call_41f4d7, %struct.Memory** %MEMORY

  ; Code: movsd 0x118d8(%rdi), %xmm0	 RIP: 41f4df	 Bytes: 8
  %loadMem_41f4df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4df = call %struct.Memory* @routine_movsd_0x118d8__rdi____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4df)
  store %struct.Memory* %call_41f4df, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 41f4e7	 Bytes: 8
  %loadMem_41f4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4e7 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4e7)
  store %struct.Memory* %call_41f4e7, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x118e4(%rdi), %xmm1	 RIP: 41f4ef	 Bytes: 8
  %loadMem_41f4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4ef = call %struct.Memory* @routine_cvtsi2sdl_0x118e4__rdi____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4ef)
  store %struct.Memory* %call_41f4ef, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 41f4f7	 Bytes: 4
  %loadMem_41f4f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4f7 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4f7)
  store %struct.Memory* %call_41f4f7, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %ecx	 RIP: 41f4fb	 Bytes: 4
  %loadMem_41f4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4fb = call %struct.Memory* @routine_cvttsd2si__xmm0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4fb)
  store %struct.Memory* %call_41f4fb, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %edx	 RIP: 41f4ff	 Bytes: 2
  %loadMem_41f4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f4ff = call %struct.Memory* @routine_addl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f4ff)
  store %struct.Memory* %call_41f4ff, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 41f501	 Bytes: 3
  %loadMem_41f501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f501 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f501)
  store %struct.Memory* %call_41f501, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 41f504	 Bytes: 8
  %loadMem_41f504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f504 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f504)
  store %struct.Memory* %call_41f504, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x11b00(%rdi)	 RIP: 41f50c	 Bytes: 6
  %loadMem_41f50c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f50c = call %struct.Memory* @routine_movl__edx__0x11b00__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f50c)
  store %struct.Memory* %call_41f50c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f577	 RIP: 41f512	 Bytes: 5
  %loadMem_41f512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f512 = call %struct.Memory* @routine_jmpq_.L_41f577(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f512, i64 101, i64 5)
  store %struct.Memory* %call_41f512, %struct.Memory** %MEMORY

  br label %block_.L_41f577

  ; Code: .L_41f517:	 RIP: 41f517	 Bytes: 0
block_.L_41f517:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f517	 Bytes: 8
  %loadMem_41f517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f517 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f517)
  store %struct.Memory* %call_41f517, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 41f51f	 Bytes: 2
  %loadMem_41f51f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f51f = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f51f)
  store %struct.Memory* %call_41f51f, %struct.Memory** %MEMORY

  ; Code: subl 0x6cc020, %ecx	 RIP: 41f521	 Bytes: 7
  %loadMem_41f521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f521 = call %struct.Memory* @routine_subl_0x6cc020___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f521)
  store %struct.Memory* %call_41f521, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 41f528	 Bytes: 3
  %loadMem_41f528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f528 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f528)
  store %struct.Memory* %call_41f528, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f52b	 Bytes: 8
  %loadMem_41f52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f52b = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f52b)
  store %struct.Memory* %call_41f52b, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %edx	 RIP: 41f533	 Bytes: 3
  %loadMem_41f533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f533 = call %struct.Memory* @routine_movl_0x14__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f533)
  store %struct.Memory* %call_41f533, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41f536	 Bytes: 3
  %loadMem_41f536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f536 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f536)
  store %struct.Memory* %call_41f536, %struct.Memory** %MEMORY

  ; Code: imull %edx, %ecx	 RIP: 41f539	 Bytes: 3
  %loadMem_41f539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f539 = call %struct.Memory* @routine_imull__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f539)
  store %struct.Memory* %call_41f539, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f53c	 Bytes: 8
  %loadMem_41f53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f53c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f53c)
  store %struct.Memory* %call_41f53c, %struct.Memory** %MEMORY

  ; Code: movsd 0x118d8(%rax), %xmm0	 RIP: 41f544	 Bytes: 8
  %loadMem_41f544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f544 = call %struct.Memory* @routine_movsd_0x118d8__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f544)
  store %struct.Memory* %call_41f544, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f54c	 Bytes: 8
  %loadMem_41f54c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f54c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f54c)
  store %struct.Memory* %call_41f54c, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x118e4(%rax), %xmm1	 RIP: 41f554	 Bytes: 8
  %loadMem_41f554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f554 = call %struct.Memory* @routine_cvtsi2sdl_0x118e4__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f554)
  store %struct.Memory* %call_41f554, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 41f55c	 Bytes: 4
  %loadMem_41f55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f55c = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f55c)
  store %struct.Memory* %call_41f55c, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %edx	 RIP: 41f560	 Bytes: 4
  %loadMem_41f560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f560 = call %struct.Memory* @routine_cvttsd2si__xmm0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f560)
  store %struct.Memory* %call_41f560, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 41f564	 Bytes: 2
  %loadMem_41f564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f564 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f564)
  store %struct.Memory* %call_41f564, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 41f566	 Bytes: 3
  %loadMem_41f566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f566 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f566)
  store %struct.Memory* %call_41f566, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f569	 Bytes: 8
  %loadMem_41f569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f569 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f569)
  store %struct.Memory* %call_41f569, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11b00(%rax)	 RIP: 41f571	 Bytes: 6
  %loadMem_41f571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f571 = call %struct.Memory* @routine_movl__ecx__0x11b00__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f571)
  store %struct.Memory* %call_41f571, %struct.Memory** %MEMORY

  ; Code: .L_41f577:	 RIP: 41f577	 Bytes: 0
  br label %block_.L_41f577
block_.L_41f577:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f577	 Bytes: 8
  %loadMem_41f577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f577 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f577)
  store %struct.Memory* %call_41f577, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb40(%rax)	 RIP: 41f57f	 Bytes: 7
  %loadMem_41f57f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f57f = call %struct.Memory* @routine_cmpl__0x0__0xb40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f57f)
  store %struct.Memory* %call_41f57f, %struct.Memory** %MEMORY

  ; Code: jne .L_41f5c2	 RIP: 41f586	 Bytes: 6
  %loadMem_41f586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f586 = call %struct.Memory* @routine_jne_.L_41f5c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f586, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_41f586, %struct.Memory** %MEMORY

  %loadBr_41f586 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f586 = icmp eq i8 %loadBr_41f586, 1
  br i1 %cmpBr_41f586, label %block_.L_41f5c2, label %block_41f58c

block_41f58c:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 41f58c	 Bytes: 8
  %loadMem_41f58c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f58c = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f58c)
  store %struct.Memory* %call_41f58c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 41f594	 Bytes: 7
  %loadMem_41f594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f594 = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f594)
  store %struct.Memory* %call_41f594, %struct.Memory** %MEMORY

  ; Code: jne .L_41f5c2	 RIP: 41f59b	 Bytes: 6
  %loadMem_41f59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f59b = call %struct.Memory* @routine_jne_.L_41f5c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f59b, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_41f59b, %struct.Memory** %MEMORY

  %loadBr_41f59b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f59b = icmp eq i8 %loadBr_41f59b, 1
  br i1 %cmpBr_41f59b, label %block_.L_41f5c2, label %block_41f5a1

block_41f5a1:
  ; Code: movq 0x6cb900, %rax	 RIP: 41f5a1	 Bytes: 8
  %loadMem_41f5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5a1 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5a1)
  store %struct.Memory* %call_41f5a1, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 41f5a9	 Bytes: 6
  %loadMem_41f5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5a9 = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5a9)
  store %struct.Memory* %call_41f5a9, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f5af	 Bytes: 8
  %loadMem_41f5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5af = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5af)
  store %struct.Memory* %call_41f5af, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11b04(%rax)	 RIP: 41f5b7	 Bytes: 6
  %loadMem_41f5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5b7 = call %struct.Memory* @routine_movl__ecx__0x11b04__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5b7)
  store %struct.Memory* %call_41f5b7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f5e1	 RIP: 41f5bd	 Bytes: 5
  %loadMem_41f5bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5bd = call %struct.Memory* @routine_jmpq_.L_41f5e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5bd, i64 36, i64 5)
  store %struct.Memory* %call_41f5bd, %struct.Memory** %MEMORY

  br label %block_.L_41f5e1

  ; Code: .L_41f5c2:	 RIP: 41f5c2	 Bytes: 0
block_.L_41f5c2:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f5c2	 Bytes: 8
  %loadMem_41f5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5c2 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5c2)
  store %struct.Memory* %call_41f5c2, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 41f5ca	 Bytes: 6
  %loadMem_41f5ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5ca = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5ca)
  store %struct.Memory* %call_41f5ca, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41f5d0	 Bytes: 3
  %loadMem_41f5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5d0 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5d0)
  store %struct.Memory* %call_41f5d0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f5d3	 Bytes: 8
  %loadMem_41f5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5d3 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5d3)
  store %struct.Memory* %call_41f5d3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11b04(%rax)	 RIP: 41f5db	 Bytes: 6
  %loadMem_41f5db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5db = call %struct.Memory* @routine_movl__ecx__0x11b04__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5db)
  store %struct.Memory* %call_41f5db, %struct.Memory** %MEMORY

  ; Code: .L_41f5e1:	 RIP: 41f5e1	 Bytes: 0
  br label %block_.L_41f5e1
block_.L_41f5e1:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f5e1	 Bytes: 8
  %loadMem_41f5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5e1 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5e1)
  store %struct.Memory* %call_41f5e1, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 41f5e9	 Bytes: 6
  %loadMem_41f5e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5e9 = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5e9)
  store %struct.Memory* %call_41f5e9, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f5ef	 Bytes: 8
  %loadMem_41f5ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5ef = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5ef)
  store %struct.Memory* %call_41f5ef, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11b04(%rax), %ecx	 RIP: 41f5f7	 Bytes: 6
  %loadMem_41f5f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5f7 = call %struct.Memory* @routine_cmpl_0x11b04__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5f7)
  store %struct.Memory* %call_41f5f7, %struct.Memory** %MEMORY

  ; Code: jge .L_41f619	 RIP: 41f5fd	 Bytes: 6
  %loadMem_41f5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f5fd = call %struct.Memory* @routine_jge_.L_41f619(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f5fd, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_41f5fd, %struct.Memory** %MEMORY

  %loadBr_41f5fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f5fd = icmp eq i8 %loadBr_41f5fd, 1
  br i1 %cmpBr_41f5fd, label %block_.L_41f619, label %block_41f603

block_41f603:
  ; Code: movq 0x6cb900, %rax	 RIP: 41f603	 Bytes: 8
  %loadMem_41f603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f603 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f603)
  store %struct.Memory* %call_41f603, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 41f60b	 Bytes: 6
  %loadMem_41f60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f60b = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f60b)
  store %struct.Memory* %call_41f60b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 41f611	 Bytes: 3
  %loadMem_41f611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f611 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f611)
  store %struct.Memory* %call_41f611, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f62a	 RIP: 41f614	 Bytes: 5
  %loadMem_41f614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f614 = call %struct.Memory* @routine_jmpq_.L_41f62a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f614, i64 22, i64 5)
  store %struct.Memory* %call_41f614, %struct.Memory** %MEMORY

  br label %block_.L_41f62a

  ; Code: .L_41f619:	 RIP: 41f619	 Bytes: 0
block_.L_41f619:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f619	 Bytes: 8
  %loadMem_41f619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f619 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f619)
  store %struct.Memory* %call_41f619, %struct.Memory** %MEMORY

  ; Code: movl 0x11b04(%rax), %ecx	 RIP: 41f621	 Bytes: 6
  %loadMem_41f621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f621 = call %struct.Memory* @routine_movl_0x11b04__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f621)
  store %struct.Memory* %call_41f621, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 41f627	 Bytes: 3
  %loadMem_41f627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f627 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f627)
  store %struct.Memory* %call_41f627, %struct.Memory** %MEMORY

  ; Code: .L_41f62a:	 RIP: 41f62a	 Bytes: 0
  br label %block_.L_41f62a
block_.L_41f62a:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 41f62a	 Bytes: 3
  %loadMem_41f62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f62a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f62a)
  store %struct.Memory* %call_41f62a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 41f62d	 Bytes: 8
  %loadMem_41f62d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f62d = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f62d)
  store %struct.Memory* %call_41f62d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x11b08(%rcx)	 RIP: 41f635	 Bytes: 6
  %loadMem_41f635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f635 = call %struct.Memory* @routine_movl__eax__0x11b08__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f635)
  store %struct.Memory* %call_41f635, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 41f63b	 Bytes: 8
  %loadMem_41f63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f63b = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f63b)
  store %struct.Memory* %call_41f63b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x524(%rcx)	 RIP: 41f643	 Bytes: 7
  %loadMem_41f643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f643 = call %struct.Memory* @routine_cmpl__0x0__0x524__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f643)
  store %struct.Memory* %call_41f643, %struct.Memory** %MEMORY

  ; Code: jne .L_41f677	 RIP: 41f64a	 Bytes: 6
  %loadMem_41f64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f64a = call %struct.Memory* @routine_jne_.L_41f677(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f64a, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_41f64a, %struct.Memory** %MEMORY

  %loadBr_41f64a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f64a = icmp eq i8 %loadBr_41f64a, 1
  br i1 %cmpBr_41f64a, label %block_.L_41f677, label %block_41f650

block_41f650:
  ; Code: movq 0x6cb900, %rax	 RIP: 41f650	 Bytes: 8
  %loadMem_41f650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f650 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f650)
  store %struct.Memory* %call_41f650, %struct.Memory** %MEMORY

  ; Code: movl 0x118e4(%rax), %ecx	 RIP: 41f658	 Bytes: 6
  %loadMem_41f658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f658 = call %struct.Memory* @routine_movl_0x118e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f658)
  store %struct.Memory* %call_41f658, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 41f65e	 Bytes: 3
  %loadMem_41f65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f65e = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f65e)
  store %struct.Memory* %call_41f65e, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 41f661	 Bytes: 3
  %loadMem_41f661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f661 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f661)
  store %struct.Memory* %call_41f661, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41f664	 Bytes: 8
  %loadMem_41f664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f664 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f664)
  store %struct.Memory* %call_41f664, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11af4(%rax)	 RIP: 41f66c	 Bytes: 6
  %loadMem_41f66c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f66c = call %struct.Memory* @routine_movl__ecx__0x11af4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f66c)
  store %struct.Memory* %call_41f66c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f689	 RIP: 41f672	 Bytes: 5
  %loadMem_41f672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f672 = call %struct.Memory* @routine_jmpq_.L_41f689(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f672, i64 23, i64 5)
  store %struct.Memory* %call_41f672, %struct.Memory** %MEMORY

  br label %block_.L_41f689

  ; Code: .L_41f677:	 RIP: 41f677	 Bytes: 0
block_.L_41f677:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f677	 Bytes: 8
  %loadMem_41f677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f677 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f677)
  store %struct.Memory* %call_41f677, %struct.Memory** %MEMORY

  ; Code: movl $0xfffffffe, 0x11af4(%rax)	 RIP: 41f67f	 Bytes: 10
  %loadMem_41f67f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f67f = call %struct.Memory* @routine_movl__0xfffffffe__0x11af4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f67f)
  store %struct.Memory* %call_41f67f, %struct.Memory** %MEMORY

  ; Code: .L_41f689:	 RIP: 41f689	 Bytes: 0
  br label %block_.L_41f689
block_.L_41f689:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f689	 Bytes: 8
  %loadMem_41f689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f689 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f689)
  store %struct.Memory* %call_41f689, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11af8(%rax)	 RIP: 41f691	 Bytes: 10
  %loadMem_41f691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f691 = call %struct.Memory* @routine_movl__0x0__0x11af8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f691)
  store %struct.Memory* %call_41f691, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41f69b	 Bytes: 2
  %loadMem_41f69b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f69b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f69b)
  store %struct.Memory* %call_41f69b, %struct.Memory** %MEMORY

  ; Code: callq .encode_one_frame	 RIP: 41f69d	 Bytes: 5
  %loadMem1_41f69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f69d = call %struct.Memory* @routine_callq_.encode_one_frame(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f69d, i64 34435, i64 5, i64 5)
  store %struct.Memory* %call1_41f69d, %struct.Memory** %MEMORY

  %loadMem2_41f69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f69d = load i64, i64* %3
  %call2_41f69d = call %struct.Memory* @sub_427d20.encode_one_frame(%struct.State* %0, i64  %loadPC_41f69d, %struct.Memory* %loadMem2_41f69d)
  store %struct.Memory* %call2_41f69d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 41f6a2	 Bytes: 8
  %loadMem_41f6a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6a2 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6a2)
  store %struct.Memory* %call_41f6a2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc9c(%rcx)	 RIP: 41f6aa	 Bytes: 7
  %loadMem_41f6aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6aa = call %struct.Memory* @routine_cmpl__0x0__0xc9c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6aa)
  store %struct.Memory* %call_41f6aa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 41f6b1	 Bytes: 3
  %loadMem_41f6b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6b1 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6b1)
  store %struct.Memory* %call_41f6b1, %struct.Memory** %MEMORY

  ; Code: je .L_41f6c1	 RIP: 41f6b4	 Bytes: 6
  %loadMem_41f6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6b4 = call %struct.Memory* @routine_je_.L_41f6c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6b4, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_41f6b4, %struct.Memory** %MEMORY

  %loadBr_41f6b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f6b4 = icmp eq i8 %loadBr_41f6b4, 1
  br i1 %cmpBr_41f6b4, label %block_.L_41f6c1, label %block_41f6ba

block_41f6ba:
  ; Code: movb $0x0, %al	 RIP: 41f6ba	 Bytes: 2
  %loadMem_41f6ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6ba = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6ba)
  store %struct.Memory* %call_41f6ba, %struct.Memory** %MEMORY

  ; Code: callq .report_frame_statistic	 RIP: 41f6bc	 Bytes: 5
  %loadMem1_41f6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f6bc = call %struct.Memory* @routine_callq_.report_frame_statistic(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f6bc, i64 88324, i64 5, i64 5)
  store %struct.Memory* %call1_41f6bc, %struct.Memory** %MEMORY

  %loadMem2_41f6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f6bc = load i64, i64* %3
  %call2_41f6bc = call %struct.Memory* @sub_434fc0.report_frame_statistic(%struct.State* %0, i64  %loadPC_41f6bc, %struct.Memory* %loadMem2_41f6bc)
  store %struct.Memory* %call2_41f6bc, %struct.Memory** %MEMORY

  ; Code: .L_41f6c1:	 RIP: 41f6c1	 Bytes: 0
  br label %block_.L_41f6c1
block_.L_41f6c1:

  ; Code: jmpq .L_41f6c6	 RIP: 41f6c1	 Bytes: 5
  %loadMem_41f6c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6c1 = call %struct.Memory* @routine_jmpq_.L_41f6c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6c1, i64 5, i64 5)
  store %struct.Memory* %call_41f6c1, %struct.Memory** %MEMORY

  br label %block_.L_41f6c6

  ; Code: .L_41f6c6:	 RIP: 41f6c6	 Bytes: 0
block_.L_41f6c6:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f6c6	 Bytes: 8
  %loadMem_41f6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6c6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6c6)
  store %struct.Memory* %call_41f6c6, %struct.Memory** %MEMORY

  ; Code: movl 0x118e4(%rax), %ecx	 RIP: 41f6ce	 Bytes: 6
  %loadMem_41f6ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6ce = call %struct.Memory* @routine_movl_0x118e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6ce)
  store %struct.Memory* %call_41f6ce, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41f6d4	 Bytes: 3
  %loadMem_41f6d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6d4 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6d4)
  store %struct.Memory* %call_41f6d4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x118e4(%rax)	 RIP: 41f6d7	 Bytes: 6
  %loadMem_41f6d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6d7 = call %struct.Memory* @routine_movl__ecx__0x118e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6d7)
  store %struct.Memory* %call_41f6d7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41f35b	 RIP: 41f6dd	 Bytes: 5
  %loadMem_41f6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6dd = call %struct.Memory* @routine_jmpq_.L_41f35b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6dd, i64 -898, i64 5)
  store %struct.Memory* %call_41f6dd, %struct.Memory** %MEMORY

  br label %block_.L_41f35b

  ; Code: .L_41f6e2:	 RIP: 41f6e2	 Bytes: 0
block_.L_41f6e2:

  ; Code: jmpq .L_41f6e7	 RIP: 41f6e2	 Bytes: 5
  %loadMem_41f6e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6e2 = call %struct.Memory* @routine_jmpq_.L_41f6e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6e2, i64 5, i64 5)
  store %struct.Memory* %call_41f6e2, %struct.Memory** %MEMORY

  br label %block_.L_41f6e7

  ; Code: .L_41f6e7:	 RIP: 41f6e7	 Bytes: 0
block_.L_41f6e7:

  ; Code: jmpq .L_41f6ec	 RIP: 41f6e7	 Bytes: 5
  %loadMem_41f6e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6e7 = call %struct.Memory* @routine_jmpq_.L_41f6ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6e7, i64 5, i64 5)
  store %struct.Memory* %call_41f6e7, %struct.Memory** %MEMORY

  br label %block_.L_41f6ec

  ; Code: .L_41f6ec:	 RIP: 41f6ec	 Bytes: 0
block_.L_41f6ec:

  ; Code: movq 0x6cb900, %rax	 RIP: 41f6ec	 Bytes: 8
  %loadMem_41f6ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6ec = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6ec)
  store %struct.Memory* %call_41f6ec, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x118e4(%rax)	 RIP: 41f6f4	 Bytes: 10
  %loadMem_41f6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6f4 = call %struct.Memory* @routine_movl__0x0__0x118e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6f4)
  store %struct.Memory* %call_41f6f4, %struct.Memory** %MEMORY

  ; Code: addq $0x30, %rsp	 RIP: 41f6fe	 Bytes: 4
  %loadMem_41f6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f6fe = call %struct.Memory* @routine_addq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f6fe)
  store %struct.Memory* %call_41f6fe, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 41f702	 Bytes: 1
  %loadMem_41f702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f702 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f702)
  store %struct.Memory* %call_41f702, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 41f703	 Bytes: 1
  %loadMem_41f703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f703 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f703)
  store %struct.Memory* %call_41f703, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_41f703
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 48)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl__0x0__0x4d4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1236
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

define %struct.Memory* @routine_je_.L_41f6ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_subl_0x6cc020___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 ptrtoint( %G_0x6cc020_type* @G_0x6cc020 to i64))
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_jle_.L_41f6ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl__0x0__0xb60__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2912
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

define %struct.Memory* @routine_jne_.L_41edb2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x0__0x11ac0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72384
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_41edc4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x1__0x11ac0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72384
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl__0x0__0x524__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1316
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41ee38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x528__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl_0x11b10__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edx__0x11b10__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72464
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0x722c98___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x722c98_type* @G_0x722c98 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addl__0x4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 4)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl_0x11b10__rsi____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_divl__edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__edx__0x11b10__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 72464
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__0x0__0x11b30__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72496
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_je_.L_41f349(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x1__0x118e4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71908
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x118e4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 71908
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_cmpl_0x4d4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 1236
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = xor i1 %15, true
  %17 = and i1 %8, %16
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %2, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %3, i64 %4
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jg_.L_41f332(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
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




define %struct.Memory* @routine_movl_0x118e4__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 71908
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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




define %struct.Memory* @routine_movl__edx__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}
















define %struct.Memory* @routine_cmpl__0x2__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41ef5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x1__0x11b30__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72496
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to double*
  %6 = load double, double* %5
  %7 = bitcast i8* %2 to double*
  store double %6, double* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 8
  %9 = bitcast i8* %8 to double*
  store double 0.000000e+00, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd_0x928fa__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x928fa__rip__type* @G_0x928fa__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_addl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = trunc i64 %3 to i32
  %6 = sitofp i32 %5 to double
  %7 = bitcast i8* %2 to double*
  store double %6, double* %7, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl__ecx___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sitofp i32 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl_0x4d4__rax____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fadd double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fdiv double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm1__0x118d8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 71896
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl__0x3__0x528__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41efcd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0x928a3__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x928a3__rip__type* @G_0x928a3__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__0x118d8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 71896
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl__0x0__0x4c8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_41f093(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x4cc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1228
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}











define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_idivl_0x4c8__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6cb8f8_type* @G_0x6cb8f8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x14__rdi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_imull__ecx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movsd_0x118d8__rdi____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 71896
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x6d0278___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6d0278_type* @G_0x6d0278 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl_0x118e4__r8____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 71908
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_movslq__ecx___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x18___r8___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 24)
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


define %struct.Memory* @routine_movl_0x4__rdi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fmul double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = tail call double @llvm.trunc.f64(double %6) #22
  %8 = tail call double @llvm.fabs.f64(double %7) #22
  %9 = fcmp ogt double %8, 0x41DFFFFFFFC00000
  %10 = fptosi double %7 to i32
  %11 = zext i32 %10 to i64
  %12 = select i1 %9, i64 2147483648, i64 %11
  store i64 %12, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvttsd2si__xmm0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i8* %11)
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

define %struct.Memory* @routine_addl__ecx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
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




define %struct.Memory* @routine_movl__edx__0x11b00__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 72448
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41f110(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movl_0x14__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_imull__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movsd_0x118d8__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 71896
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_0x118e4__rsi____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 71908
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_cvtsi2sdl__edx___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvttsd2si__xmm0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i8* %11)
  ret %struct.Memory* %14
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


define %struct.Memory* @routine_shll__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__ecx__0x11b00__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72448
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x1__0x118e4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71908
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41f176(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x6cc024___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x6cc024_type* @G_0x6cc024 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_subl_0x6cc020___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 ptrtoint( %G_0x6cc020_type* @G_0x6cc020 to i64))
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl_0x14__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_imull__edi___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
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

define %struct.Memory* @routine_subl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__0x11af4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72436
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41f215(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movsd_0x926ca__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x926ca__rip__type* @G_0x926ca__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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













define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fmul double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulsd_0x118d8__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 71896
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl_0x118e4__r8____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 71908
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__0x2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__esi___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addq__r8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x4__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_cvtsi2sdl__esi___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvttsd2si__xmm0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i8* %11)
  ret %struct.Memory* %14
}














define %struct.Memory* @routine_cmpl__0x0__0xb40__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2880
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41f260(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2884
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movl__ecx__0x11b04__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72452
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41f27f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_cmpl_0x11b04__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 72452
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

define %struct.Memory* @routine_jge_.L_41f2b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41f2c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_0x11b04__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72452
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl__eax__0x11b08__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72456
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__0x0__0x11af8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72440
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_callq_.encode_one_frame(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0xc9c__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3228
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_je_.L_41f311(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.report_frame_statistic(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41f316(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__ecx__0x118e4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 71908
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41ee71(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x0__0x118e4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71908
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_41f6e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jg_.L_41f6e2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_cmpl__0x1__0x524__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1316
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41f400(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movsd_0x92458__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x92458__rip__type* @G_0x92458__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


























define %struct.Memory* @routine_jne_.L_41f46f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0x92401__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x92401__rip__type* @G_0x92401__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_je_.L_41f517(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_cvtsi2sdl_0x118e4__rdi____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 71908
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_jmpq_.L_41f577(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























define %struct.Memory* @routine_cvtsi2sdl_0x118e4__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 71908
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_jne_.L_41f5c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_41f5e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




















define %struct.Memory* @routine_jge_.L_41f619(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41f62a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_cmpl__0x0__0x524__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1316
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_41f677(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jmpq_.L_41f689(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0xfffffffe__0x11af4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72436
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -2)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__0x11af8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72440
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_je_.L_41f6c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_41f6c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jmpq_.L_41f35b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jmpq_.L_41f6ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 48)
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

