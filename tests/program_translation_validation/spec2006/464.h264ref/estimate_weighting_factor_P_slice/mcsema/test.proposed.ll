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
%G_0x278672__rip__type = type <{ [8 x i8] }>
@G_0x278672__rip_= global %G_0x278672__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x3857__rip__type = type <{ [8 x i8] }>
@G_0x3857__rip_= global %G_0x3857__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x395e__rip__type = type <{ [8 x i8] }>
@G_0x395e__rip_= global %G_0x395e__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6d4740_type = type <{ [8 x i8] }>
@G_0x6d4740= global %G_0x6d4740_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6f9728_type = type <{ [8 x i8] }>
@G_0x6f9728= global %G_0x6f9728_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70f6d0_type = type <{ [4 x i8] }>
@G_0x70f6d0= global %G_0x70f6d0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x710790_type = type <{ [4 x i8] }>
@G_0x710790= global %G_0x710790_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7107a0_type = type <{ [4 x i8] }>
@G_0x7107a0= global %G_0x7107a0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x722b20_type = type <{ [8 x i8] }>
@G_0x722b20= global %G_0x722b20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x7242a0_type = type <{ [4 x i8] }>
@G_0x7242a0= global %G_0x7242a0_type <{ [4 x i8] c"\00\00\00\00" }>


define %struct.Memory* @estimate_weighting_factor_P_slice(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .estimate_weighting_factor_P_slice:	 RIP: 4adb10	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4adb10	 Bytes: 1
  %loadMem_4adb10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb10 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb10)
  store %struct.Memory* %call_4adb10, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4adb11	 Bytes: 3
  %loadMem_4adb11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb11 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb11)
  store %struct.Memory* %call_4adb11, %struct.Memory** %MEMORY

  ; Code: subq $0x350, %rsp	 RIP: 4adb14	 Bytes: 7
  %loadMem_4adb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb14 = call %struct.Memory* @routine_subq__0x350___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb14)
  store %struct.Memory* %call_4adb14, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 4adb1b	 Bytes: 3
  %loadMem_4adb1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb1b = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb1b)
  store %struct.Memory* %call_4adb1b, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 4adb1e	 Bytes: 3
  %loadMem_4adb1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb1e = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb1e)
  store %struct.Memory* %call_4adb1e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x18(%rbp)	 RIP: 4adb21	 Bytes: 5
  %loadMem_4adb21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb21 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb21)
  store %struct.Memory* %call_4adb21, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4adb26	 Bytes: 8
  %loadMem_4adb26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb26 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb26)
  store %struct.Memory* %call_4adb26, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ad0(%rax)	 RIP: 4adb2e	 Bytes: 7
  %loadMem_4adb2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb2e = call %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb2e)
  store %struct.Memory* %call_4adb2e, %struct.Memory** %MEMORY

  ; Code: je .L_4adba4	 RIP: 4adb35	 Bytes: 6
  %loadMem_4adb35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb35 = call %struct.Memory* @routine_je_.L_4adba4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb35, i8* %BRANCH_TAKEN, i64 111, i64 6, i64 6)
  store %struct.Memory* %call_4adb35, %struct.Memory** %MEMORY

  %loadBr_4adb35 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4adb35 = icmp eq i8 %loadBr_4adb35, 1
  br i1 %cmpBr_4adb35, label %block_.L_4adba4, label %block_4adb3b

block_4adb3b:
  ; Code: movq 0x6cb900, %rax	 RIP: 4adb3b	 Bytes: 8
  %loadMem_4adb3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb3b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb3b)
  store %struct.Memory* %call_4adb3b, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 4adb43	 Bytes: 7
  %loadMem_4adb43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb43 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb43)
  store %struct.Memory* %call_4adb43, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4adb4a	 Bytes: 8
  %loadMem_4adb4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb4a = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb4a)
  store %struct.Memory* %call_4adb4a, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rcx), %rcx	 RIP: 4adb52	 Bytes: 4
  %loadMem_4adb52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb52 = call %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb52)
  store %struct.Memory* %call_4adb52, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 4adb56	 Bytes: 7
  %loadMem_4adb56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb56 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb56)
  store %struct.Memory* %call_4adb56, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4adb5d	 Bytes: 3
  %loadMem_4adb5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb5d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb5d)
  store %struct.Memory* %call_4adb5d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 4adb60	 Bytes: 7
  %loadMem_4adb60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb60 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb60)
  store %struct.Memory* %call_4adb60, %struct.Memory** %MEMORY

  ; Code: je .L_4adba4	 RIP: 4adb67	 Bytes: 6
  %loadMem_4adb67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb67 = call %struct.Memory* @routine_je_.L_4adba4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb67, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_4adb67, %struct.Memory** %MEMORY

  %loadBr_4adb67 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4adb67 = icmp eq i8 %loadBr_4adb67, 1
  br i1 %cmpBr_4adb67, label %block_.L_4adba4, label %block_4adb6d

block_4adb6d:
  ; Code: movl $0x2, %eax	 RIP: 4adb6d	 Bytes: 5
  %loadMem_4adb6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb6d = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb6d)
  store %struct.Memory* %call_4adb6d, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %ecx	 RIP: 4adb72	 Bytes: 5
  %loadMem_4adb72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb72 = call %struct.Memory* @routine_movl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb72)
  store %struct.Memory* %call_4adb72, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4adb77	 Bytes: 8
  %loadMem_4adb77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb77 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb77)
  store %struct.Memory* %call_4adb77, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rdx), %esi	 RIP: 4adb7f	 Bytes: 3
  %loadMem_4adb7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb7f = call %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb7f)
  store %struct.Memory* %call_4adb7f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3a8(%rbp)	 RIP: 4adb82	 Bytes: 6
  %loadMem_4adb82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb82 = call %struct.Memory* @routine_movl__eax__MINUS0x3a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb82)
  store %struct.Memory* %call_4adb82, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 4adb88	 Bytes: 2
  %loadMem_4adb88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb88 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb88)
  store %struct.Memory* %call_4adb88, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4adb8a	 Bytes: 1
  %loadMem_4adb8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb8a = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb8a)
  store %struct.Memory* %call_4adb8a, %struct.Memory** %MEMORY

  ; Code: movl -0x3a8(%rbp), %esi	 RIP: 4adb8b	 Bytes: 6
  %loadMem_4adb8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb8b = call %struct.Memory* @routine_movl_MINUS0x3a8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb8b)
  store %struct.Memory* %call_4adb8b, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 4adb91	 Bytes: 2
  %loadMem_4adb91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb91 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb91)
  store %struct.Memory* %call_4adb91, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 4adb93	 Bytes: 3
  %loadMem_4adb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb93 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb93)
  store %struct.Memory* %call_4adb93, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %esi	 RIP: 4adb96	 Bytes: 3
  %loadMem_4adb96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb96 = call %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb96)
  store %struct.Memory* %call_4adb96, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x3ac(%rbp)	 RIP: 4adb99	 Bytes: 6
  %loadMem_4adb99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb99 = call %struct.Memory* @routine_movl__esi__MINUS0x3ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb99)
  store %struct.Memory* %call_4adb99, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4adbb1	 RIP: 4adb9f	 Bytes: 5
  %loadMem_4adb9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adb9f = call %struct.Memory* @routine_jmpq_.L_4adbb1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adb9f, i64 18, i64 5)
  store %struct.Memory* %call_4adb9f, %struct.Memory** %MEMORY

  br label %block_.L_4adbb1

  ; Code: .L_4adba4:	 RIP: 4adba4	 Bytes: 0
block_.L_4adba4:

  ; Code: xorl %eax, %eax	 RIP: 4adba4	 Bytes: 2
  %loadMem_4adba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adba4 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adba4)
  store %struct.Memory* %call_4adba4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3ac(%rbp)	 RIP: 4adba6	 Bytes: 6
  %loadMem_4adba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adba6 = call %struct.Memory* @routine_movl__eax__MINUS0x3ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adba6)
  store %struct.Memory* %call_4adba6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4adbb1	 RIP: 4adbac	 Bytes: 5
  %loadMem_4adbac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adbac = call %struct.Memory* @routine_jmpq_.L_4adbb1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adbac, i64 5, i64 5)
  store %struct.Memory* %call_4adbac, %struct.Memory** %MEMORY

  br label %block_.L_4adbb1

  ; Code: .L_4adbb1:	 RIP: 4adbb1	 Bytes: 0
block_.L_4adbb1:

  ; Code: movl -0x3ac(%rbp), %eax	 RIP: 4adbb1	 Bytes: 6
  %loadMem_4adbb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adbb1 = call %struct.Memory* @routine_movl_MINUS0x3ac__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adbb1)
  store %struct.Memory* %call_4adbb1, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 4adbb7	 Bytes: 5
  %loadMem_4adbb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adbb7 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adbb7)
  store %struct.Memory* %call_4adbb7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc0(%rbp)	 RIP: 4adbbc	 Bytes: 6
  %loadMem_4adbbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adbbc = call %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adbbc)
  store %struct.Memory* %call_4adbbc, %struct.Memory** %MEMORY

  ; Code: movl $0x5, 0x70f6d0	 RIP: 4adbc2	 Bytes: 11
  %loadMem_4adbc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adbc2 = call %struct.Memory* @routine_movl__0x5__0x70f6d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adbc2)
  store %struct.Memory* %call_4adbc2, %struct.Memory** %MEMORY

  ; Code: movl $0x5, 0x7242a0	 RIP: 4adbcd	 Bytes: 11
  %loadMem_4adbcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adbcd = call %struct.Memory* @routine_movl__0x5__0x7242a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adbcd)
  store %struct.Memory* %call_4adbcd, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %eax	 RIP: 4adbd8	 Bytes: 7
  %loadMem_4adbd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adbd8 = call %struct.Memory* @routine_movl_0x70f6d0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adbd8)
  store %struct.Memory* %call_4adbd8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4adbdf	 Bytes: 3
  %loadMem_4adbdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adbdf = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adbdf)
  store %struct.Memory* %call_4adbdf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3b0(%rbp)	 RIP: 4adbe2	 Bytes: 6
  %loadMem_4adbe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adbe2 = call %struct.Memory* @routine_movl__ecx__MINUS0x3b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adbe2)
  store %struct.Memory* %call_4adbe2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4adbe8	 Bytes: 2
  %loadMem_4adbe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adbe8 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adbe8)
  store %struct.Memory* %call_4adbe8, %struct.Memory** %MEMORY

  ; Code: movl -0x3b0(%rbp), %eax	 RIP: 4adbea	 Bytes: 6
  %loadMem_4adbea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adbea = call %struct.Memory* @routine_movl_MINUS0x3b0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adbea)
  store %struct.Memory* %call_4adbea, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 4adbf0	 Bytes: 2
  %loadMem_4adbf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adbf0 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adbf0)
  store %struct.Memory* %call_4adbf0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x7107a0	 RIP: 4adbf2	 Bytes: 7
  %loadMem_4adbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adbf2 = call %struct.Memory* @routine_movl__eax__0x7107a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adbf2)
  store %struct.Memory* %call_4adbf2, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %eax	 RIP: 4adbf9	 Bytes: 7
  %loadMem_4adbf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adbf9 = call %struct.Memory* @routine_movl_0x7242a0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adbf9)
  store %struct.Memory* %call_4adbf9, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4adc00	 Bytes: 3
  %loadMem_4adc00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc00 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc00)
  store %struct.Memory* %call_4adc00, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4adc03	 Bytes: 2
  %loadMem_4adc03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc03 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc03)
  store %struct.Memory* %call_4adc03, %struct.Memory** %MEMORY

  ; Code: movl -0x3b0(%rbp), %eax	 RIP: 4adc05	 Bytes: 6
  %loadMem_4adc05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc05 = call %struct.Memory* @routine_movl_MINUS0x3b0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc05)
  store %struct.Memory* %call_4adc05, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 4adc0b	 Bytes: 2
  %loadMem_4adc0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc0b = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc0b)
  store %struct.Memory* %call_4adc0b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x710790	 RIP: 4adc0d	 Bytes: 7
  %loadMem_4adc0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc0d = call %struct.Memory* @routine_movl__eax__0x710790(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc0d)
  store %struct.Memory* %call_4adc0d, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4adc14	 Bytes: 7
  %loadMem_4adc14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc14 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc14)
  store %struct.Memory* %call_4adc14, %struct.Memory** %MEMORY

  ; Code: movl -0x3b0(%rbp), %eax	 RIP: 4adc1b	 Bytes: 6
  %loadMem_4adc1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc1b = call %struct.Memory* @routine_movl_MINUS0x3b0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc1b)
  store %struct.Memory* %call_4adc1b, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 4adc21	 Bytes: 2
  %loadMem_4adc21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc21 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc21)
  store %struct.Memory* %call_4adc21, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xbc(%rbp)	 RIP: 4adc23	 Bytes: 6
  %loadMem_4adc23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc23 = call %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc23)
  store %struct.Memory* %call_4adc23, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %ecx	 RIP: 4adc29	 Bytes: 7
  %loadMem_4adc29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc29 = call %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc29)
  store %struct.Memory* %call_4adc29, %struct.Memory** %MEMORY

  ; Code: movl -0x3b0(%rbp), %eax	 RIP: 4adc30	 Bytes: 6
  %loadMem_4adc30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc30 = call %struct.Memory* @routine_movl_MINUS0x3b0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc30)
  store %struct.Memory* %call_4adc30, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 4adc36	 Bytes: 2
  %loadMem_4adc36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc36 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc36)
  store %struct.Memory* %call_4adc36, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb4(%rbp)	 RIP: 4adc38	 Bytes: 6
  %loadMem_4adc38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc38 = call %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc38)
  store %struct.Memory* %call_4adc38, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb8(%rbp)	 RIP: 4adc3e	 Bytes: 6
  %loadMem_4adc3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc3e = call %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc3e)
  store %struct.Memory* %call_4adc3e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4adc44	 Bytes: 7
  %loadMem_4adc44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc44 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc44)
  store %struct.Memory* %call_4adc44, %struct.Memory** %MEMORY

  ; Code: .L_4adc4b:	 RIP: 4adc4b	 Bytes: 0
  br label %block_.L_4adc4b
block_.L_4adc4b:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4adc4b	 Bytes: 3
  %loadMem_4adc4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc4b = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc4b)
  store %struct.Memory* %call_4adc4b, %struct.Memory** %MEMORY

  ; Code: movl -0xc0(%rbp), %ecx	 RIP: 4adc4e	 Bytes: 6
  %loadMem_4adc4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc4e = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc4e)
  store %struct.Memory* %call_4adc4e, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 4adc54	 Bytes: 3
  %loadMem_4adc54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc54 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc54)
  store %struct.Memory* %call_4adc54, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4adc57	 Bytes: 2
  %loadMem_4adc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc57 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc57)
  store %struct.Memory* %call_4adc57, %struct.Memory** %MEMORY

  ; Code: jge .L_4add69	 RIP: 4adc59	 Bytes: 6
  %loadMem_4adc59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc59 = call %struct.Memory* @routine_jge_.L_4add69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc59, i8* %BRANCH_TAKEN, i64 272, i64 6, i64 6)
  store %struct.Memory* %call_4adc59, %struct.Memory** %MEMORY

  %loadBr_4adc59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4adc59 = icmp eq i8 %loadBr_4adc59, 1
  br i1 %cmpBr_4adc59, label %block_.L_4add69, label %block_4adc5f

block_4adc5f:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4adc5f	 Bytes: 7
  %loadMem_4adc5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc5f = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc5f)
  store %struct.Memory* %call_4adc5f, %struct.Memory** %MEMORY

  ; Code: .L_4adc66:	 RIP: 4adc66	 Bytes: 0
  br label %block_.L_4adc66
block_.L_4adc66:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4adc66	 Bytes: 3
  %loadMem_4adc66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc66 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc66)
  store %struct.Memory* %call_4adc66, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4adc69	 Bytes: 4
  %loadMem_4adc69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc69 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc69)
  store %struct.Memory* %call_4adc69, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0(,%rcx,4), %eax	 RIP: 4adc6d	 Bytes: 7
  %loadMem_4adc6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc6d = call %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc6d)
  store %struct.Memory* %call_4adc6d, %struct.Memory** %MEMORY

  ; Code: jge .L_4add56	 RIP: 4adc74	 Bytes: 6
  %loadMem_4adc74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc74 = call %struct.Memory* @routine_jge_.L_4add56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc74, i8* %BRANCH_TAKEN, i64 226, i64 6, i64 6)
  store %struct.Memory* %call_4adc74, %struct.Memory** %MEMORY

  %loadBr_4adc74 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4adc74 = icmp eq i8 %loadBr_4adc74, 1
  br i1 %cmpBr_4adc74, label %block_.L_4add56, label %block_4adc7a

block_4adc7a:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 4adc7a	 Bytes: 7
  %loadMem_4adc7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc7a = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc7a)
  store %struct.Memory* %call_4adc7a, %struct.Memory** %MEMORY

  ; Code: .L_4adc81:	 RIP: 4adc81	 Bytes: 0
  br label %block_.L_4adc81
block_.L_4adc81:

  ; Code: cmpl $0x3, -0x10(%rbp)	 RIP: 4adc81	 Bytes: 4
  %loadMem_4adc81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc81 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc81)
  store %struct.Memory* %call_4adc81, %struct.Memory** %MEMORY

  ; Code: jge .L_4add43	 RIP: 4adc85	 Bytes: 6
  %loadMem_4adc85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc85 = call %struct.Memory* @routine_jge_.L_4add43(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc85, i8* %BRANCH_TAKEN, i64 190, i64 6, i64 6)
  store %struct.Memory* %call_4adc85, %struct.Memory** %MEMORY

  %loadBr_4adc85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4adc85 = icmp eq i8 %loadBr_4adc85, 1
  br i1 %cmpBr_4adc85, label %block_.L_4add43, label %block_4adc8b

block_4adc8b:
  ; Code: leaq -0x3a0(%rbp), %rax	 RIP: 4adc8b	 Bytes: 7
  %loadMem_4adc8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc8b = call %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc8b)
  store %struct.Memory* %call_4adc8b, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rcx	 RIP: 4adc92	 Bytes: 7
  %loadMem_4adc92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc92 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc92)
  store %struct.Memory* %call_4adc92, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4adc99	 Bytes: 4
  %loadMem_4adc99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc99 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc99)
  store %struct.Memory* %call_4adc99, %struct.Memory** %MEMORY

  ; Code: movl -0xbc(%rbp,%rdx,4), %esi	 RIP: 4adc9d	 Bytes: 7
  %loadMem_4adc9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adc9d = call %struct.Memory* @routine_movl_MINUS0xbc__rbp__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adc9d)
  store %struct.Memory* %call_4adc9d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4adca4	 Bytes: 4
  %loadMem_4adca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adca4 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adca4)
  store %struct.Memory* %call_4adca4, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4adca8	 Bytes: 7
  %loadMem_4adca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adca8 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adca8)
  store %struct.Memory* %call_4adca8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4adcaf	 Bytes: 3
  %loadMem_4adcaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adcaf = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adcaf)
  store %struct.Memory* %call_4adcaf, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4adcb2	 Bytes: 4
  %loadMem_4adcb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adcb2 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adcb2)
  store %struct.Memory* %call_4adcb2, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4adcb6	 Bytes: 4
  %loadMem_4adcb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adcb6 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adcb6)
  store %struct.Memory* %call_4adcb6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4adcba	 Bytes: 3
  %loadMem_4adcba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adcba = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adcba)
  store %struct.Memory* %call_4adcba, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4adcbd	 Bytes: 4
  %loadMem_4adcbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adcbd = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adcbd)
  store %struct.Memory* %call_4adcbd, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rcx,%rdx,4)	 RIP: 4adcc1	 Bytes: 3
  %loadMem_4adcc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adcc1 = call %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adcc1)
  store %struct.Memory* %call_4adcc1, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4adcc4	 Bytes: 4
  %loadMem_4adcc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adcc4 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adcc4)
  store %struct.Memory* %call_4adcc4, %struct.Memory** %MEMORY

  ; Code: movl -0xbc(%rbp,%rcx,4), %esi	 RIP: 4adcc8	 Bytes: 7
  %loadMem_4adcc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adcc8 = call %struct.Memory* @routine_movl_MINUS0xbc__rbp__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adcc8)
  store %struct.Memory* %call_4adcc8, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 4adccf	 Bytes: 8
  %loadMem_4adccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adccf = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adccf)
  store %struct.Memory* %call_4adccf, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4adcd7	 Bytes: 4
  %loadMem_4adcd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adcd7 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adcd7)
  store %struct.Memory* %call_4adcd7, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4adcdb	 Bytes: 4
  %loadMem_4adcdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adcdb = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adcdb)
  store %struct.Memory* %call_4adcdb, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4adcdf	 Bytes: 4
  %loadMem_4adcdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adcdf = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adcdf)
  store %struct.Memory* %call_4adcdf, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4adce3	 Bytes: 4
  %loadMem_4adce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adce3 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adce3)
  store %struct.Memory* %call_4adce3, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4adce7	 Bytes: 4
  %loadMem_4adce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adce7 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adce7)
  store %struct.Memory* %call_4adce7, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rcx,%rdx,4)	 RIP: 4adceb	 Bytes: 3
  %loadMem_4adceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adceb = call %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adceb)
  store %struct.Memory* %call_4adceb, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rcx	 RIP: 4adcee	 Bytes: 8
  %loadMem_4adcee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adcee = call %struct.Memory* @routine_movq_0x6f9728___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adcee)
  store %struct.Memory* %call_4adcee, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4adcf6	 Bytes: 4
  %loadMem_4adcf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adcf6 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adcf6)
  store %struct.Memory* %call_4adcf6, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4adcfa	 Bytes: 4
  %loadMem_4adcfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adcfa = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adcfa)
  store %struct.Memory* %call_4adcfa, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4adcfe	 Bytes: 4
  %loadMem_4adcfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adcfe = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adcfe)
  store %struct.Memory* %call_4adcfe, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4add02	 Bytes: 4
  %loadMem_4add02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add02 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add02)
  store %struct.Memory* %call_4add02, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4add06	 Bytes: 4
  %loadMem_4add06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add06 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add06)
  store %struct.Memory* %call_4add06, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx,%rdx,4)	 RIP: 4add0a	 Bytes: 7
  %loadMem_4add0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add0a = call %struct.Memory* @routine_movl__0x0____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add0a)
  store %struct.Memory* %call_4add0a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4add11	 Bytes: 4
  %loadMem_4add11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add11 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add11)
  store %struct.Memory* %call_4add11, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4add15	 Bytes: 7
  %loadMem_4add15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add15 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add15)
  store %struct.Memory* %call_4add15, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4add1c	 Bytes: 3
  %loadMem_4add1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add1c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add1c)
  store %struct.Memory* %call_4add1c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4add1f	 Bytes: 4
  %loadMem_4add1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add1f = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add1f)
  store %struct.Memory* %call_4add1f, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4add23	 Bytes: 4
  %loadMem_4add23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add23 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add23)
  store %struct.Memory* %call_4add23, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4add27	 Bytes: 3
  %loadMem_4add27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add27 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add27)
  store %struct.Memory* %call_4add27, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4add2a	 Bytes: 4
  %loadMem_4add2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add2a = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add2a)
  store %struct.Memory* %call_4add2a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 4add2e	 Bytes: 7
  %loadMem_4add2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add2e = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add2e)
  store %struct.Memory* %call_4add2e, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 4add35	 Bytes: 3
  %loadMem_4add35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add35 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add35)
  store %struct.Memory* %call_4add35, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4add38	 Bytes: 3
  %loadMem_4add38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add38 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add38)
  store %struct.Memory* %call_4add38, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 4add3b	 Bytes: 3
  %loadMem_4add3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add3b = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add3b)
  store %struct.Memory* %call_4add3b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4adc81	 RIP: 4add3e	 Bytes: 5
  %loadMem_4add3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add3e = call %struct.Memory* @routine_jmpq_.L_4adc81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add3e, i64 -189, i64 5)
  store %struct.Memory* %call_4add3e, %struct.Memory** %MEMORY

  br label %block_.L_4adc81

  ; Code: .L_4add43:	 RIP: 4add43	 Bytes: 0
block_.L_4add43:

  ; Code: jmpq .L_4add48	 RIP: 4add43	 Bytes: 5
  %loadMem_4add43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add43 = call %struct.Memory* @routine_jmpq_.L_4add48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add43, i64 5, i64 5)
  store %struct.Memory* %call_4add43, %struct.Memory** %MEMORY

  br label %block_.L_4add48

  ; Code: .L_4add48:	 RIP: 4add48	 Bytes: 0
block_.L_4add48:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4add48	 Bytes: 3
  %loadMem_4add48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add48 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add48)
  store %struct.Memory* %call_4add48, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4add4b	 Bytes: 3
  %loadMem_4add4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add4b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add4b)
  store %struct.Memory* %call_4add4b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4add4e	 Bytes: 3
  %loadMem_4add4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add4e = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add4e)
  store %struct.Memory* %call_4add4e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4adc66	 RIP: 4add51	 Bytes: 5
  %loadMem_4add51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add51 = call %struct.Memory* @routine_jmpq_.L_4adc66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add51, i64 -235, i64 5)
  store %struct.Memory* %call_4add51, %struct.Memory** %MEMORY

  br label %block_.L_4adc66

  ; Code: .L_4add56:	 RIP: 4add56	 Bytes: 0
block_.L_4add56:

  ; Code: jmpq .L_4add5b	 RIP: 4add56	 Bytes: 5
  %loadMem_4add56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add56 = call %struct.Memory* @routine_jmpq_.L_4add5b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add56, i64 5, i64 5)
  store %struct.Memory* %call_4add56, %struct.Memory** %MEMORY

  br label %block_.L_4add5b

  ; Code: .L_4add5b:	 RIP: 4add5b	 Bytes: 0
block_.L_4add5b:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4add5b	 Bytes: 3
  %loadMem_4add5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add5b = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add5b)
  store %struct.Memory* %call_4add5b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4add5e	 Bytes: 3
  %loadMem_4add5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add5e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add5e)
  store %struct.Memory* %call_4add5e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4add61	 Bytes: 3
  %loadMem_4add61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add61 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add61)
  store %struct.Memory* %call_4add61, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4adc4b	 RIP: 4add64	 Bytes: 5
  %loadMem_4add64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add64 = call %struct.Memory* @routine_jmpq_.L_4adc4b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add64, i64 -281, i64 5)
  store %struct.Memory* %call_4add64, %struct.Memory** %MEMORY

  br label %block_.L_4adc4b

  ; Code: .L_4add69:	 RIP: 4add69	 Bytes: 0
block_.L_4add69:

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4add69	 Bytes: 7
  %loadMem_4add69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add69 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add69)
  store %struct.Memory* %call_4add69, %struct.Memory** %MEMORY

  ; Code: .L_4add70:	 RIP: 4add70	 Bytes: 0
  br label %block_.L_4add70
block_.L_4add70:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4add70	 Bytes: 3
  %loadMem_4add70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add70 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add70)
  store %struct.Memory* %call_4add70, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4add73	 Bytes: 8
  %loadMem_4add73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add73 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add73)
  store %struct.Memory* %call_4add73, %struct.Memory** %MEMORY

  ; Code: cmpl 0x3c(%rcx), %eax	 RIP: 4add7b	 Bytes: 3
  %loadMem_4add7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add7b = call %struct.Memory* @routine_cmpl_0x3c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add7b)
  store %struct.Memory* %call_4add7b, %struct.Memory** %MEMORY

  ; Code: jge .L_4adde5	 RIP: 4add7e	 Bytes: 6
  %loadMem_4add7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add7e = call %struct.Memory* @routine_jge_.L_4adde5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add7e, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_4add7e, %struct.Memory** %MEMORY

  %loadBr_4add7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4add7e = icmp eq i8 %loadBr_4add7e, 1
  br i1 %cmpBr_4add7e, label %block_.L_4adde5, label %block_4add84

block_4add84:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4add84	 Bytes: 7
  %loadMem_4add84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add84 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add84)
  store %struct.Memory* %call_4add84, %struct.Memory** %MEMORY

  ; Code: .L_4add8b:	 RIP: 4add8b	 Bytes: 0
  br label %block_.L_4add8b
block_.L_4add8b:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4add8b	 Bytes: 3
  %loadMem_4add8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add8b = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add8b)
  store %struct.Memory* %call_4add8b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4add8e	 Bytes: 8
  %loadMem_4add8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add8e = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add8e)
  store %struct.Memory* %call_4add8e, %struct.Memory** %MEMORY

  ; Code: cmpl 0x34(%rcx), %eax	 RIP: 4add96	 Bytes: 3
  %loadMem_4add96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add96 = call %struct.Memory* @routine_cmpl_0x34__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add96)
  store %struct.Memory* %call_4add96, %struct.Memory** %MEMORY

  ; Code: jge .L_4addd2	 RIP: 4add99	 Bytes: 6
  %loadMem_4add99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add99 = call %struct.Memory* @routine_jge_.L_4addd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add99, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_4add99, %struct.Memory** %MEMORY

  %loadBr_4add99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4add99 = icmp eq i8 %loadBr_4add99, 1
  br i1 %cmpBr_4add99, label %block_.L_4addd2, label %block_4add9f

block_4add9f:
  ; Code: movq 0x278672(%rip), %rax	 RIP: 4add9f	 Bytes: 7
  %loadMem_4add9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4add9f = call %struct.Memory* @routine_movq_0x278672__rip____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4add9f)
  store %struct.Memory* %call_4add9f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4adda6	 Bytes: 4
  %loadMem_4adda6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adda6 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adda6)
  store %struct.Memory* %call_4adda6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4addaa	 Bytes: 4
  %loadMem_4addaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addaa = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addaa)
  store %struct.Memory* %call_4addaa, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4addae	 Bytes: 4
  %loadMem_4addae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addae = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addae)
  store %struct.Memory* %call_4addae, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 4addb2	 Bytes: 4
  %loadMem_4addb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addb2 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addb2)
  store %struct.Memory* %call_4addb2, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %edx, %xmm0	 RIP: 4addb6	 Bytes: 4
  %loadMem_4addb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addb6 = call %struct.Memory* @routine_cvtsi2sdl__edx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addb6)
  store %struct.Memory* %call_4addb6, %struct.Memory** %MEMORY

  ; Code: addsd -0x18(%rbp), %xmm0	 RIP: 4addba	 Bytes: 5
  %loadMem_4addba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addba = call %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addba)
  store %struct.Memory* %call_4addba, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x18(%rbp)	 RIP: 4addbf	 Bytes: 5
  %loadMem_4addbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addbf = call %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addbf)
  store %struct.Memory* %call_4addbf, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4addc4	 Bytes: 3
  %loadMem_4addc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addc4 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addc4)
  store %struct.Memory* %call_4addc4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4addc7	 Bytes: 3
  %loadMem_4addc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addc7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addc7)
  store %struct.Memory* %call_4addc7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4addca	 Bytes: 3
  %loadMem_4addca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addca = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addca)
  store %struct.Memory* %call_4addca, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4add8b	 RIP: 4addcd	 Bytes: 5
  %loadMem_4addcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addcd = call %struct.Memory* @routine_jmpq_.L_4add8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addcd, i64 -66, i64 5)
  store %struct.Memory* %call_4addcd, %struct.Memory** %MEMORY

  br label %block_.L_4add8b

  ; Code: .L_4addd2:	 RIP: 4addd2	 Bytes: 0
block_.L_4addd2:

  ; Code: jmpq .L_4addd7	 RIP: 4addd2	 Bytes: 5
  %loadMem_4addd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addd2 = call %struct.Memory* @routine_jmpq_.L_4addd7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addd2, i64 5, i64 5)
  store %struct.Memory* %call_4addd2, %struct.Memory** %MEMORY

  br label %block_.L_4addd7

  ; Code: .L_4addd7:	 RIP: 4addd7	 Bytes: 0
block_.L_4addd7:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4addd7	 Bytes: 3
  %loadMem_4addd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addd7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addd7)
  store %struct.Memory* %call_4addd7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4addda	 Bytes: 3
  %loadMem_4addda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addda = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addda)
  store %struct.Memory* %call_4addda, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4adddd	 Bytes: 3
  %loadMem_4adddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adddd = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adddd)
  store %struct.Memory* %call_4adddd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4add70	 RIP: 4adde0	 Bytes: 5
  %loadMem_4adde0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adde0 = call %struct.Memory* @routine_jmpq_.L_4add70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adde0, i64 -112, i64 5)
  store %struct.Memory* %call_4adde0, %struct.Memory** %MEMORY

  br label %block_.L_4add70

  ; Code: .L_4adde5:	 RIP: 4adde5	 Bytes: 0
block_.L_4adde5:

  ; Code: movl $0x0, -0x3a4(%rbp)	 RIP: 4adde5	 Bytes: 10
  %loadMem_4adde5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adde5 = call %struct.Memory* @routine_movl__0x0__MINUS0x3a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adde5)
  store %struct.Memory* %call_4adde5, %struct.Memory** %MEMORY

  ; Code: .L_4addef:	 RIP: 4addef	 Bytes: 0
  br label %block_.L_4addef
block_.L_4addef:

  ; Code: movl -0x3a4(%rbp), %eax	 RIP: 4addef	 Bytes: 6
  %loadMem_4addef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addef = call %struct.Memory* @routine_movl_MINUS0x3a4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addef)
  store %struct.Memory* %call_4addef, %struct.Memory** %MEMORY

  ; Code: movl -0xc0(%rbp), %ecx	 RIP: 4addf5	 Bytes: 6
  %loadMem_4addf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addf5 = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addf5)
  store %struct.Memory* %call_4addf5, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 4addfb	 Bytes: 3
  %loadMem_4addfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addfb = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addfb)
  store %struct.Memory* %call_4addfb, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4addfe	 Bytes: 2
  %loadMem_4addfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4addfe = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4addfe)
  store %struct.Memory* %call_4addfe, %struct.Memory** %MEMORY

  ; Code: jge .L_4ae65d	 RIP: 4ade00	 Bytes: 6
  %loadMem_4ade00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade00 = call %struct.Memory* @routine_jge_.L_4ae65d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade00, i8* %BRANCH_TAKEN, i64 2141, i64 6, i64 6)
  store %struct.Memory* %call_4ade00, %struct.Memory** %MEMORY

  %loadBr_4ade00 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ade00 = icmp eq i8 %loadBr_4ade00, 1
  br i1 %cmpBr_4ade00, label %block_.L_4ae65d, label %block_4ade06

block_4ade06:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 4ade06	 Bytes: 7
  %loadMem_4ade06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade06 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade06)
  store %struct.Memory* %call_4ade06, %struct.Memory** %MEMORY

  ; Code: .L_4ade0d:	 RIP: 4ade0d	 Bytes: 0
  br label %block_.L_4ade0d
block_.L_4ade0d:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 4ade0d	 Bytes: 3
  %loadMem_4ade0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade0d = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade0d)
  store %struct.Memory* %call_4ade0d, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rcx	 RIP: 4ade10	 Bytes: 7
  %loadMem_4ade10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade10 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade10)
  store %struct.Memory* %call_4ade10, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0(,%rcx,4), %eax	 RIP: 4ade17	 Bytes: 7
  %loadMem_4ade17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade17 = call %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade17)
  store %struct.Memory* %call_4ade17, %struct.Memory** %MEMORY

  ; Code: jge .L_4ae644	 RIP: 4ade1e	 Bytes: 6
  %loadMem_4ade1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade1e = call %struct.Memory* @routine_jge_.L_4ae644(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade1e, i8* %BRANCH_TAKEN, i64 2086, i64 6, i64 6)
  store %struct.Memory* %call_4ade1e, %struct.Memory** %MEMORY

  %loadBr_4ade1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ade1e = icmp eq i8 %loadBr_4ade1e, 1
  br i1 %cmpBr_4ade1e, label %block_.L_4ae644, label %block_4ade24

block_4ade24:
  ; Code: xorps %xmm0, %xmm0	 RIP: 4ade24	 Bytes: 3
  %loadMem_4ade24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade24 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade24)
  store %struct.Memory* %call_4ade24, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 4ade27	 Bytes: 4
  %loadMem_4ade27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade27 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade27)
  store %struct.Memory* %call_4ade27, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp,%rax,8)	 RIP: 4ade2b	 Bytes: 9
  %loadMem_4ade2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade2b = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade2b)
  store %struct.Memory* %call_4ade2b, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rax	 RIP: 4ade34	 Bytes: 7
  %loadMem_4ade34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade34 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade34)
  store %struct.Memory* %call_4ade34, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20(,%rax,8), %rax	 RIP: 4ade3b	 Bytes: 8
  %loadMem_4ade3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade3b = call %struct.Memory* @routine_movq_0x722b20___rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade3b)
  store %struct.Memory* %call_4ade3b, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4ade43	 Bytes: 4
  %loadMem_4ade43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade43 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade43)
  store %struct.Memory* %call_4ade43, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4ade47	 Bytes: 4
  %loadMem_4ade47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade47 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade47)
  store %struct.Memory* %call_4ade47, %struct.Memory** %MEMORY

  ; Code: movq 0x1920(%rax), %rax	 RIP: 4ade4b	 Bytes: 7
  %loadMem_4ade4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade4b = call %struct.Memory* @routine_movq_0x1920__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade4b)
  store %struct.Memory* %call_4ade4b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xa8(%rbp)	 RIP: 4ade52	 Bytes: 7
  %loadMem_4ade52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade52 = call %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade52)
  store %struct.Memory* %call_4ade52, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rax	 RIP: 4ade59	 Bytes: 7
  %loadMem_4ade59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade59 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade59)
  store %struct.Memory* %call_4ade59, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20(,%rax,8), %rax	 RIP: 4ade60	 Bytes: 8
  %loadMem_4ade60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade60 = call %struct.Memory* @routine_movq_0x722b20___rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade60)
  store %struct.Memory* %call_4ade60, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4ade68	 Bytes: 4
  %loadMem_4ade68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade68 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade68)
  store %struct.Memory* %call_4ade68, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4ade6c	 Bytes: 4
  %loadMem_4ade6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade6c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade6c)
  store %struct.Memory* %call_4ade6c, %struct.Memory** %MEMORY

  ; Code: movq 0x1928(%rax), %rax	 RIP: 4ade70	 Bytes: 7
  %loadMem_4ade70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade70 = call %struct.Memory* @routine_movq_0x1928__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade70)
  store %struct.Memory* %call_4ade70, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xb0(%rbp)	 RIP: 4ade77	 Bytes: 7
  %loadMem_4ade77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade77 = call %struct.Memory* @routine_movq__rax__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade77)
  store %struct.Memory* %call_4ade77, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4ade7e	 Bytes: 7
  %loadMem_4ade7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade7e = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade7e)
  store %struct.Memory* %call_4ade7e, %struct.Memory** %MEMORY

  ; Code: .L_4ade85:	 RIP: 4ade85	 Bytes: 0
  br label %block_.L_4ade85
block_.L_4ade85:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4ade85	 Bytes: 3
  %loadMem_4ade85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade85 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade85)
  store %struct.Memory* %call_4ade85, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4ade88	 Bytes: 8
  %loadMem_4ade88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade88 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade88)
  store %struct.Memory* %call_4ade88, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rcx), %edx	 RIP: 4ade90	 Bytes: 3
  %loadMem_4ade90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade90 = call %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade90)
  store %struct.Memory* %call_4ade90, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4ade93	 Bytes: 8
  %loadMem_4ade93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade93 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade93)
  store %struct.Memory* %call_4ade93, %struct.Memory** %MEMORY

  ; Code: imull 0x34(%rcx), %edx	 RIP: 4ade9b	 Bytes: 4
  %loadMem_4ade9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade9b = call %struct.Memory* @routine_imull_0x34__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade9b)
  store %struct.Memory* %call_4ade9b, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4ade9f	 Bytes: 2
  %loadMem_4ade9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ade9f = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ade9f)
  store %struct.Memory* %call_4ade9f, %struct.Memory** %MEMORY

  ; Code: jge .L_4adede	 RIP: 4adea1	 Bytes: 6
  %loadMem_4adea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adea1 = call %struct.Memory* @routine_jge_.L_4adede(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adea1, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_4adea1, %struct.Memory** %MEMORY

  %loadBr_4adea1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4adea1 = icmp eq i8 %loadBr_4adea1, 1
  br i1 %cmpBr_4adea1, label %block_.L_4adede, label %block_4adea7

block_4adea7:
  ; Code: movq -0xa8(%rbp), %rax	 RIP: 4adea7	 Bytes: 7
  %loadMem_4adea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adea7 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adea7)
  store %struct.Memory* %call_4adea7, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4adeae	 Bytes: 4
  %loadMem_4adeae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adeae = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adeae)
  store %struct.Memory* %call_4adeae, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 4adeb2	 Bytes: 4
  %loadMem_4adeb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adeb2 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adeb2)
  store %struct.Memory* %call_4adeb2, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %edx, %xmm0	 RIP: 4adeb6	 Bytes: 4
  %loadMem_4adeb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adeb6 = call %struct.Memory* @routine_cvtsi2sdl__edx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adeb6)
  store %struct.Memory* %call_4adeb6, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 4adeba	 Bytes: 4
  %loadMem_4adeba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adeba = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adeba)
  store %struct.Memory* %call_4adeba, %struct.Memory** %MEMORY

  ; Code: addsd -0xa0(%rbp,%rax,8), %xmm0	 RIP: 4adebe	 Bytes: 9
  %loadMem_4adebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adebe = call %struct.Memory* @routine_addsd_MINUS0xa0__rbp__rax_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adebe)
  store %struct.Memory* %call_4adebe, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa0(%rbp,%rax,8)	 RIP: 4adec7	 Bytes: 9
  %loadMem_4adec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adec7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adec7)
  store %struct.Memory* %call_4adec7, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4aded0	 Bytes: 3
  %loadMem_4aded0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aded0 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aded0)
  store %struct.Memory* %call_4aded0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4aded3	 Bytes: 3
  %loadMem_4aded3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aded3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aded3)
  store %struct.Memory* %call_4aded3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4aded6	 Bytes: 3
  %loadMem_4aded6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aded6 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aded6)
  store %struct.Memory* %call_4aded6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ade85	 RIP: 4aded9	 Bytes: 5
  %loadMem_4aded9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aded9 = call %struct.Memory* @routine_jmpq_.L_4ade85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aded9, i64 -84, i64 5)
  store %struct.Memory* %call_4aded9, %struct.Memory** %MEMORY

  br label %block_.L_4ade85

  ; Code: .L_4adede:	 RIP: 4adede	 Bytes: 0
block_.L_4adede:

  ; Code: xorps %xmm0, %xmm0	 RIP: 4adede	 Bytes: 3
  %loadMem_4adede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adede = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adede)
  store %struct.Memory* %call_4adede, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x4(%rbp), %xmm1	 RIP: 4adee1	 Bytes: 5
  %loadMem_4adee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adee1 = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x4__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adee1)
  store %struct.Memory* %call_4adee1, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4adee6	 Bytes: 4
  %loadMem_4adee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adee6 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adee6)
  store %struct.Memory* %call_4adee6, %struct.Memory** %MEMORY

  ; Code: jne .L_4ae022	 RIP: 4adeea	 Bytes: 6
  %loadMem_4adeea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adeea = call %struct.Memory* @routine_jne_.L_4ae022(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adeea, i8* %BRANCH_TAKEN, i64 312, i64 6, i64 6)
  store %struct.Memory* %call_4adeea, %struct.Memory** %MEMORY

  %loadBr_4adeea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4adeea = icmp eq i8 %loadBr_4adeea, 1
  br i1 %cmpBr_4adeea, label %block_.L_4ae022, label %block_4adef0

block_4adef0:
  ; Code: jp .L_4ae022	 RIP: 4adef0	 Bytes: 6
  %loadMem_4adef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adef0 = call %struct.Memory* @routine_jp_.L_4ae022(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adef0, i8* %BRANCH_TAKEN, i64 306, i64 6, i64 6)
  store %struct.Memory* %call_4adef0, %struct.Memory** %MEMORY

  %loadBr_4adef0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4adef0 = icmp eq i8 %loadBr_4adef0, 1
  br i1 %cmpBr_4adef0, label %block_.L_4ae022, label %block_4adef6

block_4adef6:
  ; Code: xorps %xmm0, %xmm0	 RIP: 4adef6	 Bytes: 3
  %loadMem_4adef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adef6 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adef6)
  store %struct.Memory* %call_4adef6, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 4adef9	 Bytes: 4
  %loadMem_4adef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adef9 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adef9)
  store %struct.Memory* %call_4adef9, %struct.Memory** %MEMORY

  ; Code: movsd -0xa0(%rbp,%rax,8), %xmm1	 RIP: 4adefd	 Bytes: 9
  %loadMem_4adefd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adefd = call %struct.Memory* @routine_movsd_MINUS0xa0__rbp__rax_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adefd)
  store %struct.Memory* %call_4adefd, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4adf06	 Bytes: 4
  %loadMem_4adf06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf06 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf06)
  store %struct.Memory* %call_4adf06, %struct.Memory** %MEMORY

  ; Code: jne .L_4adf1b	 RIP: 4adf0a	 Bytes: 6
  %loadMem_4adf0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf0a = call %struct.Memory* @routine_jne_.L_4adf1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf0a, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_4adf0a, %struct.Memory** %MEMORY

  %loadBr_4adf0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4adf0a = icmp eq i8 %loadBr_4adf0a, 1
  br i1 %cmpBr_4adf0a, label %block_.L_4adf1b, label %block_4adf10

block_4adf10:
  ; Code: jp .L_4adf1b	 RIP: 4adf10	 Bytes: 6
  %loadMem_4adf10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf10 = call %struct.Memory* @routine_jp_.L_4adf1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf10, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4adf10, %struct.Memory** %MEMORY

  %loadBr_4adf10 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4adf10 = icmp eq i8 %loadBr_4adf10, 1
  br i1 %cmpBr_4adf10, label %block_.L_4adf1b, label %block_4adf16

block_4adf16:
  ; Code: jmpq .L_4adf6f	 RIP: 4adf16	 Bytes: 5
  %loadMem_4adf16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf16 = call %struct.Memory* @routine_jmpq_.L_4adf6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf16, i64 89, i64 5)
  store %struct.Memory* %call_4adf16, %struct.Memory** %MEMORY

  br label %block_.L_4adf6f

  ; Code: .L_4adf1b:	 RIP: 4adf1b	 Bytes: 0
block_.L_4adf1b:

  ; Code: leaq -0x230(%rbp), %rax	 RIP: 4adf1b	 Bytes: 7
  %loadMem_4adf1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf1b = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf1b)
  store %struct.Memory* %call_4adf1b, %struct.Memory** %MEMORY

  ; Code: movsd 0x395e(%rip), %xmm0	 RIP: 4adf22	 Bytes: 8
  %loadMem_4adf22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf22 = call %struct.Memory* @routine_movsd_0x395e__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf22)
  store %struct.Memory* %call_4adf22, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0xbc(%rbp), %xmm1	 RIP: 4adf2a	 Bytes: 8
  %loadMem_4adf2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf2a = call %struct.Memory* @routine_cvtsi2sdl_MINUS0xbc__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf2a)
  store %struct.Memory* %call_4adf2a, %struct.Memory** %MEMORY

  ; Code: mulsd -0x18(%rbp), %xmm1	 RIP: 4adf32	 Bytes: 5
  %loadMem_4adf32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf32 = call %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf32)
  store %struct.Memory* %call_4adf32, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4adf37	 Bytes: 4
  %loadMem_4adf37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf37 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf37)
  store %struct.Memory* %call_4adf37, %struct.Memory** %MEMORY

  ; Code: divsd -0xa0(%rbp,%rcx,8), %xmm1	 RIP: 4adf3b	 Bytes: 9
  %loadMem_4adf3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf3b = call %struct.Memory* @routine_divsd_MINUS0xa0__rbp__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf3b)
  store %struct.Memory* %call_4adf3b, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 4adf44	 Bytes: 4
  %loadMem_4adf44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf44 = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf44)
  store %struct.Memory* %call_4adf44, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm1, %edx	 RIP: 4adf48	 Bytes: 4
  %loadMem_4adf48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf48 = call %struct.Memory* @routine_cvttsd2si__xmm1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf48)
  store %struct.Memory* %call_4adf48, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rcx	 RIP: 4adf4c	 Bytes: 7
  %loadMem_4adf4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf4c = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf4c)
  store %struct.Memory* %call_4adf4c, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4adf53	 Bytes: 7
  %loadMem_4adf53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf53 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf53)
  store %struct.Memory* %call_4adf53, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4adf5a	 Bytes: 3
  %loadMem_4adf5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf5a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf5a)
  store %struct.Memory* %call_4adf5a, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4adf5d	 Bytes: 4
  %loadMem_4adf5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf5d = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf5d)
  store %struct.Memory* %call_4adf5d, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4adf61	 Bytes: 4
  %loadMem_4adf61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf61 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf61)
  store %struct.Memory* %call_4adf61, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4adf65	 Bytes: 3
  %loadMem_4adf65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf65 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf65)
  store %struct.Memory* %call_4adf65, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax)	 RIP: 4adf68	 Bytes: 2
  %loadMem_4adf68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf68 = call %struct.Memory* @routine_movl__edx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf68)
  store %struct.Memory* %call_4adf68, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4adf9a	 RIP: 4adf6a	 Bytes: 5
  %loadMem_4adf6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf6a = call %struct.Memory* @routine_jmpq_.L_4adf9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf6a, i64 48, i64 5)
  store %struct.Memory* %call_4adf6a, %struct.Memory** %MEMORY

  br label %block_.L_4adf9a

  ; Code: .L_4adf6f:	 RIP: 4adf6f	 Bytes: 0
block_.L_4adf6f:

  ; Code: leaq -0x230(%rbp), %rax	 RIP: 4adf6f	 Bytes: 7
  %loadMem_4adf6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf6f = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf6f)
  store %struct.Memory* %call_4adf6f, %struct.Memory** %MEMORY

  ; Code: movl -0xbc(%rbp), %ecx	 RIP: 4adf76	 Bytes: 6
  %loadMem_4adf76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf76 = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf76)
  store %struct.Memory* %call_4adf76, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4adf7c	 Bytes: 7
  %loadMem_4adf7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf7c = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf7c)
  store %struct.Memory* %call_4adf7c, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4adf83	 Bytes: 7
  %loadMem_4adf83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf83 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf83)
  store %struct.Memory* %call_4adf83, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4adf8a	 Bytes: 3
  %loadMem_4adf8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf8a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf8a)
  store %struct.Memory* %call_4adf8a, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4adf8d	 Bytes: 4
  %loadMem_4adf8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf8d = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf8d)
  store %struct.Memory* %call_4adf8d, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4adf91	 Bytes: 4
  %loadMem_4adf91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf91 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf91)
  store %struct.Memory* %call_4adf91, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4adf95	 Bytes: 3
  %loadMem_4adf95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf95 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf95)
  store %struct.Memory* %call_4adf95, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 4adf98	 Bytes: 2
  %loadMem_4adf98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf98 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf98)
  store %struct.Memory* %call_4adf98, %struct.Memory** %MEMORY

  ; Code: .L_4adf9a:	 RIP: 4adf9a	 Bytes: 0
  br label %block_.L_4adf9a
block_.L_4adf9a:

  ; Code: leaq -0x230(%rbp), %rax	 RIP: 4adf9a	 Bytes: 7
  %loadMem_4adf9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adf9a = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adf9a)
  store %struct.Memory* %call_4adf9a, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rcx	 RIP: 4adfa1	 Bytes: 7
  %loadMem_4adfa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfa1 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfa1)
  store %struct.Memory* %call_4adfa1, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4adfa8	 Bytes: 7
  %loadMem_4adfa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfa8 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfa8)
  store %struct.Memory* %call_4adfa8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4adfaf	 Bytes: 3
  %loadMem_4adfaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfaf = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfaf)
  store %struct.Memory* %call_4adfaf, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4adfb2	 Bytes: 4
  %loadMem_4adfb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfb2 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfb2)
  store %struct.Memory* %call_4adfb2, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4adfb6	 Bytes: 4
  %loadMem_4adfb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfb6 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfb6)
  store %struct.Memory* %call_4adfb6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4adfba	 Bytes: 3
  %loadMem_4adfba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfba = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfba)
  store %struct.Memory* %call_4adfba, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffc0, (%rax)	 RIP: 4adfbd	 Bytes: 3
  %loadMem_4adfbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfbd = call %struct.Memory* @routine_cmpl__0xffffffc0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfbd)
  store %struct.Memory* %call_4adfbd, %struct.Memory** %MEMORY

  ; Code: jl .L_4adff2	 RIP: 4adfc0	 Bytes: 6
  %loadMem_4adfc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfc0 = call %struct.Memory* @routine_jl_.L_4adff2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfc0, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_4adfc0, %struct.Memory** %MEMORY

  %loadBr_4adfc0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4adfc0 = icmp eq i8 %loadBr_4adfc0, 1
  br i1 %cmpBr_4adfc0, label %block_.L_4adff2, label %block_4adfc6

block_4adfc6:
  ; Code: leaq -0x230(%rbp), %rax	 RIP: 4adfc6	 Bytes: 7
  %loadMem_4adfc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfc6 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfc6)
  store %struct.Memory* %call_4adfc6, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rcx	 RIP: 4adfcd	 Bytes: 7
  %loadMem_4adfcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfcd = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfcd)
  store %struct.Memory* %call_4adfcd, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4adfd4	 Bytes: 7
  %loadMem_4adfd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfd4 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfd4)
  store %struct.Memory* %call_4adfd4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4adfdb	 Bytes: 3
  %loadMem_4adfdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfdb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfdb)
  store %struct.Memory* %call_4adfdb, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4adfde	 Bytes: 4
  %loadMem_4adfde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfde = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfde)
  store %struct.Memory* %call_4adfde, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4adfe2	 Bytes: 4
  %loadMem_4adfe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfe2 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfe2)
  store %struct.Memory* %call_4adfe2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4adfe6	 Bytes: 3
  %loadMem_4adfe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfe6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfe6)
  store %struct.Memory* %call_4adfe6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7f, (%rax)	 RIP: 4adfe9	 Bytes: 3
  %loadMem_4adfe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfe9 = call %struct.Memory* @routine_cmpl__0x7f____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfe9)
  store %struct.Memory* %call_4adfe9, %struct.Memory** %MEMORY

  ; Code: jle .L_4ae01d	 RIP: 4adfec	 Bytes: 6
  %loadMem_4adfec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfec = call %struct.Memory* @routine_jle_.L_4ae01d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfec, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_4adfec, %struct.Memory** %MEMORY

  %loadBr_4adfec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4adfec = icmp eq i8 %loadBr_4adfec, 1
  br i1 %cmpBr_4adfec, label %block_.L_4ae01d, label %block_.L_4adff2

  ; Code: .L_4adff2:	 RIP: 4adff2	 Bytes: 0
block_.L_4adff2:

  ; Code: leaq -0x230(%rbp), %rax	 RIP: 4adff2	 Bytes: 7
  %loadMem_4adff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adff2 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adff2)
  store %struct.Memory* %call_4adff2, %struct.Memory** %MEMORY

  ; Code: movl -0xbc(%rbp), %ecx	 RIP: 4adff9	 Bytes: 6
  %loadMem_4adff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adff9 = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adff9)
  store %struct.Memory* %call_4adff9, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4adfff	 Bytes: 7
  %loadMem_4adfff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4adfff = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4adfff)
  store %struct.Memory* %call_4adfff, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae006	 Bytes: 7
  %loadMem_4ae006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae006 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae006)
  store %struct.Memory* %call_4ae006, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae00d	 Bytes: 3
  %loadMem_4ae00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae00d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae00d)
  store %struct.Memory* %call_4ae00d, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae010	 Bytes: 4
  %loadMem_4ae010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae010 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae010)
  store %struct.Memory* %call_4ae010, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae014	 Bytes: 4
  %loadMem_4ae014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae014 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae014)
  store %struct.Memory* %call_4ae014, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae018	 Bytes: 3
  %loadMem_4ae018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae018 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae018)
  store %struct.Memory* %call_4ae018, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 4ae01b	 Bytes: 2
  %loadMem_4ae01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae01b = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae01b)
  store %struct.Memory* %call_4ae01b, %struct.Memory** %MEMORY

  ; Code: .L_4ae01d:	 RIP: 4ae01d	 Bytes: 0
  br label %block_.L_4ae01d
block_.L_4ae01d:

  ; Code: jmpq .L_4ae189	 RIP: 4ae01d	 Bytes: 5
  %loadMem_4ae01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae01d = call %struct.Memory* @routine_jmpq_.L_4ae189(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae01d, i64 364, i64 5)
  store %struct.Memory* %call_4ae01d, %struct.Memory** %MEMORY

  br label %block_.L_4ae189

  ; Code: .L_4ae022:	 RIP: 4ae022	 Bytes: 0
block_.L_4ae022:

  ; Code: leaq -0x3a0(%rbp), %rax	 RIP: 4ae022	 Bytes: 7
  %loadMem_4ae022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae022 = call %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae022)
  store %struct.Memory* %call_4ae022, %struct.Memory** %MEMORY

  ; Code: movsd 0x3857(%rip), %xmm0	 RIP: 4ae029	 Bytes: 8
  %loadMem_4ae029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae029 = call %struct.Memory* @routine_movsd_0x3857__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae029)
  store %struct.Memory* %call_4ae029, %struct.Memory** %MEMORY

  ; Code: movsd -0x18(%rbp), %xmm1	 RIP: 4ae031	 Bytes: 5
  %loadMem_4ae031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae031 = call %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae031)
  store %struct.Memory* %call_4ae031, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4ae036	 Bytes: 4
  %loadMem_4ae036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae036 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae036)
  store %struct.Memory* %call_4ae036, %struct.Memory** %MEMORY

  ; Code: subsd -0xa0(%rbp,%rcx,8), %xmm1	 RIP: 4ae03a	 Bytes: 9
  %loadMem_4ae03a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae03a = call %struct.Memory* @routine_subsd_MINUS0xa0__rbp__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae03a)
  store %struct.Memory* %call_4ae03a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4ae043	 Bytes: 8
  %loadMem_4ae043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae043 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae043)
  store %struct.Memory* %call_4ae043, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rcx), %edx	 RIP: 4ae04b	 Bytes: 3
  %loadMem_4ae04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae04b = call %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae04b)
  store %struct.Memory* %call_4ae04b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4ae04e	 Bytes: 8
  %loadMem_4ae04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae04e = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae04e)
  store %struct.Memory* %call_4ae04e, %struct.Memory** %MEMORY

  ; Code: imull 0x34(%rcx), %edx	 RIP: 4ae056	 Bytes: 4
  %loadMem_4ae056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae056 = call %struct.Memory* @routine_imull_0x34__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae056)
  store %struct.Memory* %call_4ae056, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %edx, %xmm2	 RIP: 4ae05a	 Bytes: 4
  %loadMem_4ae05a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae05a = call %struct.Memory* @routine_cvtsi2sdl__edx___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae05a)
  store %struct.Memory* %call_4ae05a, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 4ae05e	 Bytes: 4
  %loadMem_4ae05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae05e = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae05e)
  store %struct.Memory* %call_4ae05e, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 4ae062	 Bytes: 4
  %loadMem_4ae062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae062 = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae062)
  store %struct.Memory* %call_4ae062, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm1, %edx	 RIP: 4ae066	 Bytes: 4
  %loadMem_4ae066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae066 = call %struct.Memory* @routine_cvttsd2si__xmm1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae066)
  store %struct.Memory* %call_4ae066, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rcx	 RIP: 4ae06a	 Bytes: 7
  %loadMem_4ae06a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae06a = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae06a)
  store %struct.Memory* %call_4ae06a, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4ae071	 Bytes: 7
  %loadMem_4ae071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae071 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae071)
  store %struct.Memory* %call_4ae071, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4ae078	 Bytes: 3
  %loadMem_4ae078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae078 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae078)
  store %struct.Memory* %call_4ae078, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 4ae07b	 Bytes: 3
  %loadMem_4ae07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae07b = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae07b)
  store %struct.Memory* %call_4ae07b, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4ae07e	 Bytes: 4
  %loadMem_4ae07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae07e = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae07e)
  store %struct.Memory* %call_4ae07e, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4ae082	 Bytes: 4
  %loadMem_4ae082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae082 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae082)
  store %struct.Memory* %call_4ae082, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 4ae086	 Bytes: 3
  %loadMem_4ae086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae086 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae086)
  store %struct.Memory* %call_4ae086, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rsi)	 RIP: 4ae089	 Bytes: 2
  %loadMem_4ae089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae089 = call %struct.Memory* @routine_movl__edx____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae089)
  store %struct.Memory* %call_4ae089, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rcx	 RIP: 4ae08b	 Bytes: 7
  %loadMem_4ae08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae08b = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae08b)
  store %struct.Memory* %call_4ae08b, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4ae092	 Bytes: 7
  %loadMem_4ae092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae092 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae092)
  store %struct.Memory* %call_4ae092, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4ae099	 Bytes: 3
  %loadMem_4ae099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae099 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae099)
  store %struct.Memory* %call_4ae099, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4ae09c	 Bytes: 4
  %loadMem_4ae09c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae09c = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae09c)
  store %struct.Memory* %call_4ae09c, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4ae0a0	 Bytes: 4
  %loadMem_4ae0a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0a0 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0a0)
  store %struct.Memory* %call_4ae0a0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4ae0a4	 Bytes: 3
  %loadMem_4ae0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0a4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0a4)
  store %struct.Memory* %call_4ae0a4, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffff80, (%rax)	 RIP: 4ae0a7	 Bytes: 3
  %loadMem_4ae0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0a7 = call %struct.Memory* @routine_cmpl__0xffffff80____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0a7)
  store %struct.Memory* %call_4ae0a7, %struct.Memory** %MEMORY

  ; Code: jge .L_4ae0c0	 RIP: 4ae0aa	 Bytes: 6
  %loadMem_4ae0aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0aa = call %struct.Memory* @routine_jge_.L_4ae0c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0aa, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4ae0aa, %struct.Memory** %MEMORY

  %loadBr_4ae0aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae0aa = icmp eq i8 %loadBr_4ae0aa, 1
  br i1 %cmpBr_4ae0aa, label %block_.L_4ae0c0, label %block_4ae0b0

block_4ae0b0:
  ; Code: movl $0xffffff80, %eax	 RIP: 4ae0b0	 Bytes: 5
  %loadMem_4ae0b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0b0 = call %struct.Memory* @routine_movl__0xffffff80___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0b0)
  store %struct.Memory* %call_4ae0b0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3b4(%rbp)	 RIP: 4ae0b5	 Bytes: 6
  %loadMem_4ae0b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0b5 = call %struct.Memory* @routine_movl__eax__MINUS0x3b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0b5)
  store %struct.Memory* %call_4ae0b5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae133	 RIP: 4ae0bb	 Bytes: 5
  %loadMem_4ae0bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0bb = call %struct.Memory* @routine_jmpq_.L_4ae133(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0bb, i64 120, i64 5)
  store %struct.Memory* %call_4ae0bb, %struct.Memory** %MEMORY

  br label %block_.L_4ae133

  ; Code: .L_4ae0c0:	 RIP: 4ae0c0	 Bytes: 0
block_.L_4ae0c0:

  ; Code: leaq -0x3a0(%rbp), %rax	 RIP: 4ae0c0	 Bytes: 7
  %loadMem_4ae0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0c0 = call %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0c0)
  store %struct.Memory* %call_4ae0c0, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rcx	 RIP: 4ae0c7	 Bytes: 7
  %loadMem_4ae0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0c7 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0c7)
  store %struct.Memory* %call_4ae0c7, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4ae0ce	 Bytes: 7
  %loadMem_4ae0ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0ce = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0ce)
  store %struct.Memory* %call_4ae0ce, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4ae0d5	 Bytes: 3
  %loadMem_4ae0d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0d5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0d5)
  store %struct.Memory* %call_4ae0d5, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4ae0d8	 Bytes: 4
  %loadMem_4ae0d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0d8 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0d8)
  store %struct.Memory* %call_4ae0d8, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4ae0dc	 Bytes: 4
  %loadMem_4ae0dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0dc = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0dc)
  store %struct.Memory* %call_4ae0dc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4ae0e0	 Bytes: 3
  %loadMem_4ae0e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0e0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0e0)
  store %struct.Memory* %call_4ae0e0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7f, (%rax)	 RIP: 4ae0e3	 Bytes: 3
  %loadMem_4ae0e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0e3 = call %struct.Memory* @routine_cmpl__0x7f____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0e3)
  store %struct.Memory* %call_4ae0e3, %struct.Memory** %MEMORY

  ; Code: jle .L_4ae0fc	 RIP: 4ae0e6	 Bytes: 6
  %loadMem_4ae0e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0e6 = call %struct.Memory* @routine_jle_.L_4ae0fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0e6, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4ae0e6, %struct.Memory** %MEMORY

  %loadBr_4ae0e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae0e6 = icmp eq i8 %loadBr_4ae0e6, 1
  br i1 %cmpBr_4ae0e6, label %block_.L_4ae0fc, label %block_4ae0ec

block_4ae0ec:
  ; Code: movl $0x7f, %eax	 RIP: 4ae0ec	 Bytes: 5
  %loadMem_4ae0ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0ec = call %struct.Memory* @routine_movl__0x7f___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0ec)
  store %struct.Memory* %call_4ae0ec, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3b8(%rbp)	 RIP: 4ae0f1	 Bytes: 6
  %loadMem_4ae0f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0f1 = call %struct.Memory* @routine_movl__eax__MINUS0x3b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0f1)
  store %struct.Memory* %call_4ae0f1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae127	 RIP: 4ae0f7	 Bytes: 5
  %loadMem_4ae0f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0f7 = call %struct.Memory* @routine_jmpq_.L_4ae127(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0f7, i64 48, i64 5)
  store %struct.Memory* %call_4ae0f7, %struct.Memory** %MEMORY

  br label %block_.L_4ae127

  ; Code: .L_4ae0fc:	 RIP: 4ae0fc	 Bytes: 0
block_.L_4ae0fc:

  ; Code: leaq -0x3a0(%rbp), %rax	 RIP: 4ae0fc	 Bytes: 7
  %loadMem_4ae0fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae0fc = call %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae0fc)
  store %struct.Memory* %call_4ae0fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rcx	 RIP: 4ae103	 Bytes: 7
  %loadMem_4ae103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae103 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae103)
  store %struct.Memory* %call_4ae103, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4ae10a	 Bytes: 7
  %loadMem_4ae10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae10a = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae10a)
  store %struct.Memory* %call_4ae10a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4ae111	 Bytes: 3
  %loadMem_4ae111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae111 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae111)
  store %struct.Memory* %call_4ae111, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4ae114	 Bytes: 4
  %loadMem_4ae114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae114 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae114)
  store %struct.Memory* %call_4ae114, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4ae118	 Bytes: 4
  %loadMem_4ae118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae118 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae118)
  store %struct.Memory* %call_4ae118, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4ae11c	 Bytes: 3
  %loadMem_4ae11c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae11c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae11c)
  store %struct.Memory* %call_4ae11c, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 4ae11f	 Bytes: 2
  %loadMem_4ae11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae11f = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae11f)
  store %struct.Memory* %call_4ae11f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3b8(%rbp)	 RIP: 4ae121	 Bytes: 6
  %loadMem_4ae121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae121 = call %struct.Memory* @routine_movl__edx__MINUS0x3b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae121)
  store %struct.Memory* %call_4ae121, %struct.Memory** %MEMORY

  ; Code: .L_4ae127:	 RIP: 4ae127	 Bytes: 0
  br label %block_.L_4ae127
block_.L_4ae127:

  ; Code: movl -0x3b8(%rbp), %eax	 RIP: 4ae127	 Bytes: 6
  %loadMem_4ae127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae127 = call %struct.Memory* @routine_movl_MINUS0x3b8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae127)
  store %struct.Memory* %call_4ae127, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3b4(%rbp)	 RIP: 4ae12d	 Bytes: 6
  %loadMem_4ae12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae12d = call %struct.Memory* @routine_movl__eax__MINUS0x3b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae12d)
  store %struct.Memory* %call_4ae12d, %struct.Memory** %MEMORY

  ; Code: .L_4ae133:	 RIP: 4ae133	 Bytes: 0
  br label %block_.L_4ae133
block_.L_4ae133:

  ; Code: movl -0x3b4(%rbp), %eax	 RIP: 4ae133	 Bytes: 6
  %loadMem_4ae133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae133 = call %struct.Memory* @routine_movl_MINUS0x3b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae133)
  store %struct.Memory* %call_4ae133, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rcx	 RIP: 4ae139	 Bytes: 7
  %loadMem_4ae139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae139 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae139)
  store %struct.Memory* %call_4ae139, %struct.Memory** %MEMORY

  ; Code: leaq -0x3a0(%rbp), %rdx	 RIP: 4ae140	 Bytes: 7
  %loadMem_4ae140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae140 = call %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae140)
  store %struct.Memory* %call_4ae140, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rsi	 RIP: 4ae147	 Bytes: 7
  %loadMem_4ae147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae147 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae147)
  store %struct.Memory* %call_4ae147, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4ae14e	 Bytes: 7
  %loadMem_4ae14e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae14e = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae14e)
  store %struct.Memory* %call_4ae14e, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4ae155	 Bytes: 3
  %loadMem_4ae155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae155 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae155)
  store %struct.Memory* %call_4ae155, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 4ae158	 Bytes: 4
  %loadMem_4ae158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae158 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae158)
  store %struct.Memory* %call_4ae158, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4ae15c	 Bytes: 4
  %loadMem_4ae15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae15c = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae15c)
  store %struct.Memory* %call_4ae15c, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4ae160	 Bytes: 3
  %loadMem_4ae160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae160 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae160)
  store %struct.Memory* %call_4ae160, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx)	 RIP: 4ae163	 Bytes: 2
  %loadMem_4ae163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae163 = call %struct.Memory* @routine_movl__eax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae163)
  store %struct.Memory* %call_4ae163, %struct.Memory** %MEMORY

  ; Code: movl -0xbc(%rbp), %eax	 RIP: 4ae165	 Bytes: 6
  %loadMem_4ae165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae165 = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae165)
  store %struct.Memory* %call_4ae165, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae16b	 Bytes: 7
  %loadMem_4ae16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae16b = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae16b)
  store %struct.Memory* %call_4ae16b, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae172	 Bytes: 7
  %loadMem_4ae172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae172 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae172)
  store %struct.Memory* %call_4ae172, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae179	 Bytes: 3
  %loadMem_4ae179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae179 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae179)
  store %struct.Memory* %call_4ae179, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae17c	 Bytes: 4
  %loadMem_4ae17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae17c = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae17c)
  store %struct.Memory* %call_4ae17c, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae180	 Bytes: 4
  %loadMem_4ae180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae180 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae180)
  store %struct.Memory* %call_4ae180, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae184	 Bytes: 3
  %loadMem_4ae184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae184 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae184)
  store %struct.Memory* %call_4ae184, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 4ae187	 Bytes: 2
  %loadMem_4ae187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae187 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae187)
  store %struct.Memory* %call_4ae187, %struct.Memory** %MEMORY

  ; Code: .L_4ae189:	 RIP: 4ae189	 Bytes: 0
  br label %block_.L_4ae189
block_.L_4ae189:

  ; Code: leaq -0x230(%rbp), %rax	 RIP: 4ae189	 Bytes: 7
  %loadMem_4ae189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae189 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae189)
  store %struct.Memory* %call_4ae189, %struct.Memory** %MEMORY

  ; Code: movl -0xb8(%rbp), %ecx	 RIP: 4ae190	 Bytes: 6
  %loadMem_4ae190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae190 = call %struct.Memory* @routine_movl_MINUS0xb8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae190)
  store %struct.Memory* %call_4ae190, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae196	 Bytes: 7
  %loadMem_4ae196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae196 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae196)
  store %struct.Memory* %call_4ae196, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae19d	 Bytes: 7
  %loadMem_4ae19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae19d = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae19d)
  store %struct.Memory* %call_4ae19d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4ae1a4	 Bytes: 3
  %loadMem_4ae1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1a4 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1a4)
  store %struct.Memory* %call_4ae1a4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 4ae1a7	 Bytes: 3
  %loadMem_4ae1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1a7 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1a7)
  store %struct.Memory* %call_4ae1a7, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae1aa	 Bytes: 4
  %loadMem_4ae1aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1aa = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1aa)
  store %struct.Memory* %call_4ae1aa, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae1ae	 Bytes: 4
  %loadMem_4ae1ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1ae = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1ae)
  store %struct.Memory* %call_4ae1ae, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 4ae1b2	 Bytes: 3
  %loadMem_4ae1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1b2 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1b2)
  store %struct.Memory* %call_4ae1b2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rsi)	 RIP: 4ae1b5	 Bytes: 3
  %loadMem_4ae1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1b5 = call %struct.Memory* @routine_movl__ecx__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1b5)
  store %struct.Memory* %call_4ae1b5, %struct.Memory** %MEMORY

  ; Code: movl -0xb4(%rbp), %ecx	 RIP: 4ae1b8	 Bytes: 6
  %loadMem_4ae1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1b8 = call %struct.Memory* @routine_movl_MINUS0xb4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1b8)
  store %struct.Memory* %call_4ae1b8, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae1be	 Bytes: 7
  %loadMem_4ae1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1be = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1be)
  store %struct.Memory* %call_4ae1be, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae1c5	 Bytes: 7
  %loadMem_4ae1c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1c5 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1c5)
  store %struct.Memory* %call_4ae1c5, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae1cc	 Bytes: 3
  %loadMem_4ae1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1cc = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1cc)
  store %struct.Memory* %call_4ae1cc, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae1cf	 Bytes: 4
  %loadMem_4ae1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1cf = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1cf)
  store %struct.Memory* %call_4ae1cf, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae1d3	 Bytes: 4
  %loadMem_4ae1d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1d3 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1d3)
  store %struct.Memory* %call_4ae1d3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae1d7	 Bytes: 3
  %loadMem_4ae1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1d7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1d7)
  store %struct.Memory* %call_4ae1d7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rax)	 RIP: 4ae1da	 Bytes: 3
  %loadMem_4ae1da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1da = call %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1da)
  store %struct.Memory* %call_4ae1da, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4ae1dd	 Bytes: 7
  %loadMem_4ae1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1dd = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1dd)
  store %struct.Memory* %call_4ae1dd, %struct.Memory** %MEMORY

  ; Code: .L_4ae1e4:	 RIP: 4ae1e4	 Bytes: 0
  br label %block_.L_4ae1e4
block_.L_4ae1e4:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4ae1e4	 Bytes: 3
  %loadMem_4ae1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1e4 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1e4)
  store %struct.Memory* %call_4ae1e4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4ae1e7	 Bytes: 8
  %loadMem_4ae1e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1e7 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1e7)
  store %struct.Memory* %call_4ae1e7, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rcx), %edx	 RIP: 4ae1ef	 Bytes: 3
  %loadMem_4ae1ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1ef = call %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1ef)
  store %struct.Memory* %call_4ae1ef, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4ae1f2	 Bytes: 8
  %loadMem_4ae1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1f2 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1f2)
  store %struct.Memory* %call_4ae1f2, %struct.Memory** %MEMORY

  ; Code: imull 0x34(%rcx), %edx	 RIP: 4ae1fa	 Bytes: 4
  %loadMem_4ae1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1fa = call %struct.Memory* @routine_imull_0x34__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1fa)
  store %struct.Memory* %call_4ae1fa, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4ae1fe	 Bytes: 2
  %loadMem_4ae1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae1fe = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae1fe)
  store %struct.Memory* %call_4ae1fe, %struct.Memory** %MEMORY

  ; Code: jge .L_4ae3bf	 RIP: 4ae200	 Bytes: 6
  %loadMem_4ae200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae200 = call %struct.Memory* @routine_jge_.L_4ae3bf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae200, i8* %BRANCH_TAKEN, i64 447, i64 6, i64 6)
  store %struct.Memory* %call_4ae200, %struct.Memory** %MEMORY

  %loadBr_4ae200 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae200 = icmp eq i8 %loadBr_4ae200, 1
  br i1 %cmpBr_4ae200, label %block_.L_4ae3bf, label %block_4ae206

block_4ae206:
  ; Code: leaq -0x3a0(%rbp), %rax	 RIP: 4ae206	 Bytes: 7
  %loadMem_4ae206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae206 = call %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae206)
  store %struct.Memory* %call_4ae206, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rcx	 RIP: 4ae20d	 Bytes: 7
  %loadMem_4ae20d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae20d = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae20d)
  store %struct.Memory* %call_4ae20d, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rdx	 RIP: 4ae214	 Bytes: 7
  %loadMem_4ae214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae214 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae214)
  store %struct.Memory* %call_4ae214, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4ae21b	 Bytes: 4
  %loadMem_4ae21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae21b = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae21b)
  store %struct.Memory* %call_4ae21b, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %edi	 RIP: 4ae21f	 Bytes: 4
  %loadMem_4ae21f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae21f = call %struct.Memory* @routine_movzwl___rdx__rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae21f)
  store %struct.Memory* %call_4ae21f, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae223	 Bytes: 7
  %loadMem_4ae223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae223 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae223)
  store %struct.Memory* %call_4ae223, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae22a	 Bytes: 7
  %loadMem_4ae22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae22a = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae22a)
  store %struct.Memory* %call_4ae22a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae231	 Bytes: 3
  %loadMem_4ae231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae231 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae231)
  store %struct.Memory* %call_4ae231, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae234	 Bytes: 4
  %loadMem_4ae234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae234 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae234)
  store %struct.Memory* %call_4ae234, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae238	 Bytes: 4
  %loadMem_4ae238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae238 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae238)
  store %struct.Memory* %call_4ae238, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae23c	 Bytes: 3
  %loadMem_4ae23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae23c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae23c)
  store %struct.Memory* %call_4ae23c, %struct.Memory** %MEMORY

  ; Code: imull (%rcx), %edi	 RIP: 4ae23f	 Bytes: 3
  %loadMem_4ae23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae23f = call %struct.Memory* @routine_imull___rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae23f)
  store %struct.Memory* %call_4ae23f, %struct.Memory** %MEMORY

  ; Code: addl 0x7107a0, %edi	 RIP: 4ae242	 Bytes: 7
  %loadMem_4ae242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae242 = call %struct.Memory* @routine_addl_0x7107a0___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae242)
  store %struct.Memory* %call_4ae242, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4ae249	 Bytes: 7
  %loadMem_4ae249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae249 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae249)
  store %struct.Memory* %call_4ae249, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %edi	 RIP: 4ae250	 Bytes: 2
  %loadMem_4ae250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae250 = call %struct.Memory* @routine_sarl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae250)
  store %struct.Memory* %call_4ae250, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae252	 Bytes: 7
  %loadMem_4ae252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae252 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae252)
  store %struct.Memory* %call_4ae252, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae259	 Bytes: 7
  %loadMem_4ae259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae259 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae259)
  store %struct.Memory* %call_4ae259, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae260	 Bytes: 3
  %loadMem_4ae260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae260 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae260)
  store %struct.Memory* %call_4ae260, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae263	 Bytes: 4
  %loadMem_4ae263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae263 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae263)
  store %struct.Memory* %call_4ae263, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae267	 Bytes: 4
  %loadMem_4ae267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae267 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae267)
  store %struct.Memory* %call_4ae267, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae26b	 Bytes: 3
  %loadMem_4ae26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae26b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae26b)
  store %struct.Memory* %call_4ae26b, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %edi	 RIP: 4ae26e	 Bytes: 2
  %loadMem_4ae26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae26e = call %struct.Memory* @routine_addl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae26e)
  store %struct.Memory* %call_4ae26e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edi	 RIP: 4ae270	 Bytes: 3
  %loadMem_4ae270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae270 = call %struct.Memory* @routine_cmpl__0x0___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae270)
  store %struct.Memory* %call_4ae270, %struct.Memory** %MEMORY

  ; Code: jge .L_4ae286	 RIP: 4ae273	 Bytes: 6
  %loadMem_4ae273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae273 = call %struct.Memory* @routine_jge_.L_4ae286(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae273, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4ae273, %struct.Memory** %MEMORY

  %loadBr_4ae273 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae273 = icmp eq i8 %loadBr_4ae273, 1
  br i1 %cmpBr_4ae273, label %block_.L_4ae286, label %block_4ae279

block_4ae279:
  ; Code: xorl %eax, %eax	 RIP: 4ae279	 Bytes: 2
  %loadMem_4ae279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae279 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae279)
  store %struct.Memory* %call_4ae279, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3bc(%rbp)	 RIP: 4ae27b	 Bytes: 6
  %loadMem_4ae27b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae27b = call %struct.Memory* @routine_movl__eax__MINUS0x3bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae27b)
  store %struct.Memory* %call_4ae27b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae399	 RIP: 4ae281	 Bytes: 5
  %loadMem_4ae281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae281 = call %struct.Memory* @routine_jmpq_.L_4ae399(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae281, i64 280, i64 5)
  store %struct.Memory* %call_4ae281, %struct.Memory** %MEMORY

  br label %block_.L_4ae399

  ; Code: .L_4ae286:	 RIP: 4ae286	 Bytes: 0
block_.L_4ae286:

  ; Code: leaq -0x3a0(%rbp), %rax	 RIP: 4ae286	 Bytes: 7
  %loadMem_4ae286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae286 = call %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae286)
  store %struct.Memory* %call_4ae286, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rcx	 RIP: 4ae28d	 Bytes: 7
  %loadMem_4ae28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae28d = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae28d)
  store %struct.Memory* %call_4ae28d, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rdx	 RIP: 4ae294	 Bytes: 7
  %loadMem_4ae294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae294 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae294)
  store %struct.Memory* %call_4ae294, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4ae29b	 Bytes: 4
  %loadMem_4ae29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae29b = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae29b)
  store %struct.Memory* %call_4ae29b, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %edi	 RIP: 4ae29f	 Bytes: 4
  %loadMem_4ae29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae29f = call %struct.Memory* @routine_movzwl___rdx__rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae29f)
  store %struct.Memory* %call_4ae29f, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae2a3	 Bytes: 7
  %loadMem_4ae2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2a3 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2a3)
  store %struct.Memory* %call_4ae2a3, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae2aa	 Bytes: 7
  %loadMem_4ae2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2aa = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2aa)
  store %struct.Memory* %call_4ae2aa, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae2b1	 Bytes: 3
  %loadMem_4ae2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2b1 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2b1)
  store %struct.Memory* %call_4ae2b1, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae2b4	 Bytes: 4
  %loadMem_4ae2b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2b4 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2b4)
  store %struct.Memory* %call_4ae2b4, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae2b8	 Bytes: 4
  %loadMem_4ae2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2b8 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2b8)
  store %struct.Memory* %call_4ae2b8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae2bc	 Bytes: 3
  %loadMem_4ae2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2bc = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2bc)
  store %struct.Memory* %call_4ae2bc, %struct.Memory** %MEMORY

  ; Code: imull (%rcx), %edi	 RIP: 4ae2bf	 Bytes: 3
  %loadMem_4ae2bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2bf = call %struct.Memory* @routine_imull___rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2bf)
  store %struct.Memory* %call_4ae2bf, %struct.Memory** %MEMORY

  ; Code: addl 0x7107a0, %edi	 RIP: 4ae2c2	 Bytes: 7
  %loadMem_4ae2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2c2 = call %struct.Memory* @routine_addl_0x7107a0___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2c2)
  store %struct.Memory* %call_4ae2c2, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4ae2c9	 Bytes: 7
  %loadMem_4ae2c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2c9 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2c9)
  store %struct.Memory* %call_4ae2c9, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %edi	 RIP: 4ae2d0	 Bytes: 2
  %loadMem_4ae2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2d0 = call %struct.Memory* @routine_sarl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2d0)
  store %struct.Memory* %call_4ae2d0, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae2d2	 Bytes: 7
  %loadMem_4ae2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2d2 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2d2)
  store %struct.Memory* %call_4ae2d2, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae2d9	 Bytes: 7
  %loadMem_4ae2d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2d9 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2d9)
  store %struct.Memory* %call_4ae2d9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae2e0	 Bytes: 3
  %loadMem_4ae2e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2e0 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2e0)
  store %struct.Memory* %call_4ae2e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae2e3	 Bytes: 4
  %loadMem_4ae2e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2e3 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2e3)
  store %struct.Memory* %call_4ae2e3, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae2e7	 Bytes: 4
  %loadMem_4ae2e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2e7 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2e7)
  store %struct.Memory* %call_4ae2e7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae2eb	 Bytes: 3
  %loadMem_4ae2eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2eb = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2eb)
  store %struct.Memory* %call_4ae2eb, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %edi	 RIP: 4ae2ee	 Bytes: 2
  %loadMem_4ae2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2ee = call %struct.Memory* @routine_addl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2ee)
  store %struct.Memory* %call_4ae2ee, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4ae2f0	 Bytes: 8
  %loadMem_4ae2f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2f0 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2f0)
  store %struct.Memory* %call_4ae2f0, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11bec(%rax), %edi	 RIP: 4ae2f8	 Bytes: 6
  %loadMem_4ae2f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2f8 = call %struct.Memory* @routine_cmpl_0x11bec__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2f8)
  store %struct.Memory* %call_4ae2f8, %struct.Memory** %MEMORY

  ; Code: jle .L_4ae31d	 RIP: 4ae2fe	 Bytes: 6
  %loadMem_4ae2fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae2fe = call %struct.Memory* @routine_jle_.L_4ae31d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae2fe, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_4ae2fe, %struct.Memory** %MEMORY

  %loadBr_4ae2fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae2fe = icmp eq i8 %loadBr_4ae2fe, 1
  br i1 %cmpBr_4ae2fe, label %block_.L_4ae31d, label %block_4ae304

block_4ae304:
  ; Code: movq 0x6cb900, %rax	 RIP: 4ae304	 Bytes: 8
  %loadMem_4ae304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae304 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae304)
  store %struct.Memory* %call_4ae304, %struct.Memory** %MEMORY

  ; Code: movl 0x11bec(%rax), %ecx	 RIP: 4ae30c	 Bytes: 6
  %loadMem_4ae30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae30c = call %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae30c)
  store %struct.Memory* %call_4ae30c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3c0(%rbp)	 RIP: 4ae312	 Bytes: 6
  %loadMem_4ae312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae312 = call %struct.Memory* @routine_movl__ecx__MINUS0x3c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae312)
  store %struct.Memory* %call_4ae312, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae38d	 RIP: 4ae318	 Bytes: 5
  %loadMem_4ae318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae318 = call %struct.Memory* @routine_jmpq_.L_4ae38d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae318, i64 117, i64 5)
  store %struct.Memory* %call_4ae318, %struct.Memory** %MEMORY

  br label %block_.L_4ae38d

  ; Code: .L_4ae31d:	 RIP: 4ae31d	 Bytes: 0
block_.L_4ae31d:

  ; Code: leaq -0x3a0(%rbp), %rax	 RIP: 4ae31d	 Bytes: 7
  %loadMem_4ae31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae31d = call %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae31d)
  store %struct.Memory* %call_4ae31d, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rcx	 RIP: 4ae324	 Bytes: 7
  %loadMem_4ae324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae324 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae324)
  store %struct.Memory* %call_4ae324, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rdx	 RIP: 4ae32b	 Bytes: 7
  %loadMem_4ae32b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae32b = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae32b)
  store %struct.Memory* %call_4ae32b, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4ae332	 Bytes: 4
  %loadMem_4ae332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae332 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae332)
  store %struct.Memory* %call_4ae332, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %edi	 RIP: 4ae336	 Bytes: 4
  %loadMem_4ae336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae336 = call %struct.Memory* @routine_movzwl___rdx__rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae336)
  store %struct.Memory* %call_4ae336, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae33a	 Bytes: 7
  %loadMem_4ae33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae33a = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae33a)
  store %struct.Memory* %call_4ae33a, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae341	 Bytes: 7
  %loadMem_4ae341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae341 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae341)
  store %struct.Memory* %call_4ae341, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae348	 Bytes: 3
  %loadMem_4ae348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae348 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae348)
  store %struct.Memory* %call_4ae348, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae34b	 Bytes: 4
  %loadMem_4ae34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae34b = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae34b)
  store %struct.Memory* %call_4ae34b, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae34f	 Bytes: 4
  %loadMem_4ae34f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae34f = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae34f)
  store %struct.Memory* %call_4ae34f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae353	 Bytes: 3
  %loadMem_4ae353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae353 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae353)
  store %struct.Memory* %call_4ae353, %struct.Memory** %MEMORY

  ; Code: imull (%rcx), %edi	 RIP: 4ae356	 Bytes: 3
  %loadMem_4ae356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae356 = call %struct.Memory* @routine_imull___rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae356)
  store %struct.Memory* %call_4ae356, %struct.Memory** %MEMORY

  ; Code: addl 0x7107a0, %edi	 RIP: 4ae359	 Bytes: 7
  %loadMem_4ae359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae359 = call %struct.Memory* @routine_addl_0x7107a0___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae359)
  store %struct.Memory* %call_4ae359, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4ae360	 Bytes: 7
  %loadMem_4ae360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae360 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae360)
  store %struct.Memory* %call_4ae360, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %edi	 RIP: 4ae367	 Bytes: 2
  %loadMem_4ae367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae367 = call %struct.Memory* @routine_sarl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae367)
  store %struct.Memory* %call_4ae367, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae369	 Bytes: 7
  %loadMem_4ae369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae369 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae369)
  store %struct.Memory* %call_4ae369, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae370	 Bytes: 7
  %loadMem_4ae370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae370 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae370)
  store %struct.Memory* %call_4ae370, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae377	 Bytes: 3
  %loadMem_4ae377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae377 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae377)
  store %struct.Memory* %call_4ae377, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae37a	 Bytes: 4
  %loadMem_4ae37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae37a = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae37a)
  store %struct.Memory* %call_4ae37a, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae37e	 Bytes: 4
  %loadMem_4ae37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae37e = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae37e)
  store %struct.Memory* %call_4ae37e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae382	 Bytes: 3
  %loadMem_4ae382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae382 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae382)
  store %struct.Memory* %call_4ae382, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %edi	 RIP: 4ae385	 Bytes: 2
  %loadMem_4ae385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae385 = call %struct.Memory* @routine_addl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae385)
  store %struct.Memory* %call_4ae385, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x3c0(%rbp)	 RIP: 4ae387	 Bytes: 6
  %loadMem_4ae387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae387 = call %struct.Memory* @routine_movl__edi__MINUS0x3c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae387)
  store %struct.Memory* %call_4ae387, %struct.Memory** %MEMORY

  ; Code: .L_4ae38d:	 RIP: 4ae38d	 Bytes: 0
  br label %block_.L_4ae38d
block_.L_4ae38d:

  ; Code: movl -0x3c0(%rbp), %eax	 RIP: 4ae38d	 Bytes: 6
  %loadMem_4ae38d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae38d = call %struct.Memory* @routine_movl_MINUS0x3c0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae38d)
  store %struct.Memory* %call_4ae38d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3bc(%rbp)	 RIP: 4ae393	 Bytes: 6
  %loadMem_4ae393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae393 = call %struct.Memory* @routine_movl__eax__MINUS0x3bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae393)
  store %struct.Memory* %call_4ae393, %struct.Memory** %MEMORY

  ; Code: .L_4ae399:	 RIP: 4ae399	 Bytes: 0
  br label %block_.L_4ae399
block_.L_4ae399:

  ; Code: movl -0x3bc(%rbp), %eax	 RIP: 4ae399	 Bytes: 6
  %loadMem_4ae399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae399 = call %struct.Memory* @routine_movl_MINUS0x3bc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae399)
  store %struct.Memory* %call_4ae399, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 4ae39f	 Bytes: 3
  %loadMem_4ae39f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae39f = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae39f)
  store %struct.Memory* %call_4ae39f, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rdx	 RIP: 4ae3a2	 Bytes: 7
  %loadMem_4ae3a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3a2 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3a2)
  store %struct.Memory* %call_4ae3a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4ae3a9	 Bytes: 4
  %loadMem_4ae3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3a9 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3a9)
  store %struct.Memory* %call_4ae3a9, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx,%rsi,2)	 RIP: 4ae3ad	 Bytes: 4
  %loadMem_4ae3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3ad = call %struct.Memory* @routine_movw__cx____rdx__rsi_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3ad)
  store %struct.Memory* %call_4ae3ad, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4ae3b1	 Bytes: 3
  %loadMem_4ae3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3b1 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3b1)
  store %struct.Memory* %call_4ae3b1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4ae3b4	 Bytes: 3
  %loadMem_4ae3b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3b4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3b4)
  store %struct.Memory* %call_4ae3b4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4ae3b7	 Bytes: 3
  %loadMem_4ae3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3b7 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3b7)
  store %struct.Memory* %call_4ae3b7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae1e4	 RIP: 4ae3ba	 Bytes: 5
  %loadMem_4ae3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3ba = call %struct.Memory* @routine_jmpq_.L_4ae1e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3ba, i64 -470, i64 5)
  store %struct.Memory* %call_4ae3ba, %struct.Memory** %MEMORY

  br label %block_.L_4ae1e4

  ; Code: .L_4ae3bf:	 RIP: 4ae3bf	 Bytes: 0
block_.L_4ae3bf:

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4ae3bf	 Bytes: 7
  %loadMem_4ae3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3bf = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3bf)
  store %struct.Memory* %call_4ae3bf, %struct.Memory** %MEMORY

  ; Code: .L_4ae3c6:	 RIP: 4ae3c6	 Bytes: 0
  br label %block_.L_4ae3c6
block_.L_4ae3c6:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4ae3c6	 Bytes: 3
  %loadMem_4ae3c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3c6 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3c6)
  store %struct.Memory* %call_4ae3c6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4ae3c9	 Bytes: 8
  %loadMem_4ae3c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3c9 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3c9)
  store %struct.Memory* %call_4ae3c9, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rcx), %edx	 RIP: 4ae3d1	 Bytes: 3
  %loadMem_4ae3d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3d1 = call %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3d1)
  store %struct.Memory* %call_4ae3d1, %struct.Memory** %MEMORY

  ; Code: addl $0x8, %edx	 RIP: 4ae3d4	 Bytes: 3
  %loadMem_4ae3d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3d4 = call %struct.Memory* @routine_addl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3d4)
  store %struct.Memory* %call_4ae3d4, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %edx	 RIP: 4ae3d7	 Bytes: 3
  %loadMem_4ae3d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3d7 = call %struct.Memory* @routine_shll__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3d7)
  store %struct.Memory* %call_4ae3d7, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4ae3da	 Bytes: 2
  %loadMem_4ae3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3da = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3da)
  store %struct.Memory* %call_4ae3da, %struct.Memory** %MEMORY

  ; Code: jge .L_4ae631	 RIP: 4ae3dc	 Bytes: 6
  %loadMem_4ae3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3dc = call %struct.Memory* @routine_jge_.L_4ae631(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3dc, i8* %BRANCH_TAKEN, i64 597, i64 6, i64 6)
  store %struct.Memory* %call_4ae3dc, %struct.Memory** %MEMORY

  %loadBr_4ae3dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae3dc = icmp eq i8 %loadBr_4ae3dc, 1
  br i1 %cmpBr_4ae3dc, label %block_.L_4ae631, label %block_4ae3e2

block_4ae3e2:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4ae3e2	 Bytes: 7
  %loadMem_4ae3e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3e2 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3e2)
  store %struct.Memory* %call_4ae3e2, %struct.Memory** %MEMORY

  ; Code: .L_4ae3e9:	 RIP: 4ae3e9	 Bytes: 0
  br label %block_.L_4ae3e9
block_.L_4ae3e9:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4ae3e9	 Bytes: 3
  %loadMem_4ae3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3e9 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3e9)
  store %struct.Memory* %call_4ae3e9, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4ae3ec	 Bytes: 8
  %loadMem_4ae3ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3ec = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3ec)
  store %struct.Memory* %call_4ae3ec, %struct.Memory** %MEMORY

  ; Code: movl 0x34(%rcx), %edx	 RIP: 4ae3f4	 Bytes: 3
  %loadMem_4ae3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3f4 = call %struct.Memory* @routine_movl_0x34__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3f4)
  store %struct.Memory* %call_4ae3f4, %struct.Memory** %MEMORY

  ; Code: addl $0x8, %edx	 RIP: 4ae3f7	 Bytes: 3
  %loadMem_4ae3f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3f7 = call %struct.Memory* @routine_addl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3f7)
  store %struct.Memory* %call_4ae3f7, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %edx	 RIP: 4ae3fa	 Bytes: 3
  %loadMem_4ae3fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3fa = call %struct.Memory* @routine_shll__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3fa)
  store %struct.Memory* %call_4ae3fa, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4ae3fd	 Bytes: 2
  %loadMem_4ae3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3fd = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3fd)
  store %struct.Memory* %call_4ae3fd, %struct.Memory** %MEMORY

  ; Code: jge .L_4ae61e	 RIP: 4ae3ff	 Bytes: 6
  %loadMem_4ae3ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae3ff = call %struct.Memory* @routine_jge_.L_4ae61e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae3ff, i8* %BRANCH_TAKEN, i64 543, i64 6, i64 6)
  store %struct.Memory* %call_4ae3ff, %struct.Memory** %MEMORY

  %loadBr_4ae3ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae3ff = icmp eq i8 %loadBr_4ae3ff, 1
  br i1 %cmpBr_4ae3ff, label %block_.L_4ae61e, label %block_4ae405

block_4ae405:
  ; Code: leaq -0x3a0(%rbp), %rax	 RIP: 4ae405	 Bytes: 7
  %loadMem_4ae405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae405 = call %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae405)
  store %struct.Memory* %call_4ae405, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rcx	 RIP: 4ae40c	 Bytes: 7
  %loadMem_4ae40c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae40c = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae40c)
  store %struct.Memory* %call_4ae40c, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rdx	 RIP: 4ae413	 Bytes: 8
  %loadMem_4ae413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae413 = call %struct.Memory* @routine_movq_0x722b20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae413)
  store %struct.Memory* %call_4ae413, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 4ae41b	 Bytes: 4
  %loadMem_4ae41b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae41b = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae41b)
  store %struct.Memory* %call_4ae41b, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4ae41f	 Bytes: 4
  %loadMem_4ae41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae41f = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae41f)
  store %struct.Memory* %call_4ae41f, %struct.Memory** %MEMORY

  ; Code: movq 0x1930(%rdx), %rdx	 RIP: 4ae423	 Bytes: 7
  %loadMem_4ae423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae423 = call %struct.Memory* @routine_movq_0x1930__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae423)
  store %struct.Memory* %call_4ae423, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4ae42a	 Bytes: 4
  %loadMem_4ae42a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae42a = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae42a)
  store %struct.Memory* %call_4ae42a, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4ae42e	 Bytes: 4
  %loadMem_4ae42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae42e = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae42e)
  store %struct.Memory* %call_4ae42e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4ae432	 Bytes: 4
  %loadMem_4ae432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae432 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae432)
  store %struct.Memory* %call_4ae432, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %edi	 RIP: 4ae436	 Bytes: 4
  %loadMem_4ae436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae436 = call %struct.Memory* @routine_movzwl___rdx__rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae436)
  store %struct.Memory* %call_4ae436, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae43a	 Bytes: 7
  %loadMem_4ae43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae43a = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae43a)
  store %struct.Memory* %call_4ae43a, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae441	 Bytes: 7
  %loadMem_4ae441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae441 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae441)
  store %struct.Memory* %call_4ae441, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae448	 Bytes: 3
  %loadMem_4ae448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae448 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae448)
  store %struct.Memory* %call_4ae448, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae44b	 Bytes: 4
  %loadMem_4ae44b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae44b = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae44b)
  store %struct.Memory* %call_4ae44b, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae44f	 Bytes: 4
  %loadMem_4ae44f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae44f = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae44f)
  store %struct.Memory* %call_4ae44f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae453	 Bytes: 3
  %loadMem_4ae453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae453 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae453)
  store %struct.Memory* %call_4ae453, %struct.Memory** %MEMORY

  ; Code: imull (%rcx), %edi	 RIP: 4ae456	 Bytes: 3
  %loadMem_4ae456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae456 = call %struct.Memory* @routine_imull___rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae456)
  store %struct.Memory* %call_4ae456, %struct.Memory** %MEMORY

  ; Code: addl 0x7107a0, %edi	 RIP: 4ae459	 Bytes: 7
  %loadMem_4ae459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae459 = call %struct.Memory* @routine_addl_0x7107a0___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae459)
  store %struct.Memory* %call_4ae459, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4ae460	 Bytes: 7
  %loadMem_4ae460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae460 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae460)
  store %struct.Memory* %call_4ae460, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %edi	 RIP: 4ae467	 Bytes: 2
  %loadMem_4ae467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae467 = call %struct.Memory* @routine_sarl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae467)
  store %struct.Memory* %call_4ae467, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae469	 Bytes: 7
  %loadMem_4ae469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae469 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae469)
  store %struct.Memory* %call_4ae469, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae470	 Bytes: 7
  %loadMem_4ae470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae470 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae470)
  store %struct.Memory* %call_4ae470, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae477	 Bytes: 3
  %loadMem_4ae477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae477 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae477)
  store %struct.Memory* %call_4ae477, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae47a	 Bytes: 4
  %loadMem_4ae47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae47a = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae47a)
  store %struct.Memory* %call_4ae47a, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae47e	 Bytes: 4
  %loadMem_4ae47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae47e = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae47e)
  store %struct.Memory* %call_4ae47e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae482	 Bytes: 3
  %loadMem_4ae482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae482 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae482)
  store %struct.Memory* %call_4ae482, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %edi	 RIP: 4ae485	 Bytes: 2
  %loadMem_4ae485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae485 = call %struct.Memory* @routine_addl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae485)
  store %struct.Memory* %call_4ae485, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edi	 RIP: 4ae487	 Bytes: 3
  %loadMem_4ae487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae487 = call %struct.Memory* @routine_cmpl__0x0___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae487)
  store %struct.Memory* %call_4ae487, %struct.Memory** %MEMORY

  ; Code: jge .L_4ae49d	 RIP: 4ae48a	 Bytes: 6
  %loadMem_4ae48a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae48a = call %struct.Memory* @routine_jge_.L_4ae49d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae48a, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4ae48a, %struct.Memory** %MEMORY

  %loadBr_4ae48a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae48a = icmp eq i8 %loadBr_4ae48a, 1
  br i1 %cmpBr_4ae48a, label %block_.L_4ae49d, label %block_4ae490

block_4ae490:
  ; Code: xorl %eax, %eax	 RIP: 4ae490	 Bytes: 2
  %loadMem_4ae490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae490 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae490)
  store %struct.Memory* %call_4ae490, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c4(%rbp)	 RIP: 4ae492	 Bytes: 6
  %loadMem_4ae492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae492 = call %struct.Memory* @routine_movl__eax__MINUS0x3c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae492)
  store %struct.Memory* %call_4ae492, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae5e0	 RIP: 4ae498	 Bytes: 5
  %loadMem_4ae498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae498 = call %struct.Memory* @routine_jmpq_.L_4ae5e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae498, i64 328, i64 5)
  store %struct.Memory* %call_4ae498, %struct.Memory** %MEMORY

  br label %block_.L_4ae5e0

  ; Code: .L_4ae49d:	 RIP: 4ae49d	 Bytes: 0
block_.L_4ae49d:

  ; Code: leaq -0x3a0(%rbp), %rax	 RIP: 4ae49d	 Bytes: 7
  %loadMem_4ae49d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae49d = call %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae49d)
  store %struct.Memory* %call_4ae49d, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rcx	 RIP: 4ae4a4	 Bytes: 7
  %loadMem_4ae4a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4a4 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4a4)
  store %struct.Memory* %call_4ae4a4, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rdx	 RIP: 4ae4ab	 Bytes: 8
  %loadMem_4ae4ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4ab = call %struct.Memory* @routine_movq_0x722b20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4ab)
  store %struct.Memory* %call_4ae4ab, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 4ae4b3	 Bytes: 4
  %loadMem_4ae4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4b3 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4b3)
  store %struct.Memory* %call_4ae4b3, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4ae4b7	 Bytes: 4
  %loadMem_4ae4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4b7 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4b7)
  store %struct.Memory* %call_4ae4b7, %struct.Memory** %MEMORY

  ; Code: movq 0x1930(%rdx), %rdx	 RIP: 4ae4bb	 Bytes: 7
  %loadMem_4ae4bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4bb = call %struct.Memory* @routine_movq_0x1930__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4bb)
  store %struct.Memory* %call_4ae4bb, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4ae4c2	 Bytes: 4
  %loadMem_4ae4c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4c2 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4c2)
  store %struct.Memory* %call_4ae4c2, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4ae4c6	 Bytes: 4
  %loadMem_4ae4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4c6 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4c6)
  store %struct.Memory* %call_4ae4c6, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4ae4ca	 Bytes: 4
  %loadMem_4ae4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4ca = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4ca)
  store %struct.Memory* %call_4ae4ca, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %edi	 RIP: 4ae4ce	 Bytes: 4
  %loadMem_4ae4ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4ce = call %struct.Memory* @routine_movzwl___rdx__rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4ce)
  store %struct.Memory* %call_4ae4ce, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae4d2	 Bytes: 7
  %loadMem_4ae4d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4d2 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4d2)
  store %struct.Memory* %call_4ae4d2, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae4d9	 Bytes: 7
  %loadMem_4ae4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4d9 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4d9)
  store %struct.Memory* %call_4ae4d9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae4e0	 Bytes: 3
  %loadMem_4ae4e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4e0 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4e0)
  store %struct.Memory* %call_4ae4e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae4e3	 Bytes: 4
  %loadMem_4ae4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4e3 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4e3)
  store %struct.Memory* %call_4ae4e3, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae4e7	 Bytes: 4
  %loadMem_4ae4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4e7 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4e7)
  store %struct.Memory* %call_4ae4e7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae4eb	 Bytes: 3
  %loadMem_4ae4eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4eb = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4eb)
  store %struct.Memory* %call_4ae4eb, %struct.Memory** %MEMORY

  ; Code: imull (%rcx), %edi	 RIP: 4ae4ee	 Bytes: 3
  %loadMem_4ae4ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4ee = call %struct.Memory* @routine_imull___rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4ee)
  store %struct.Memory* %call_4ae4ee, %struct.Memory** %MEMORY

  ; Code: addl 0x7107a0, %edi	 RIP: 4ae4f1	 Bytes: 7
  %loadMem_4ae4f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4f1 = call %struct.Memory* @routine_addl_0x7107a0___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4f1)
  store %struct.Memory* %call_4ae4f1, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4ae4f8	 Bytes: 7
  %loadMem_4ae4f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4f8 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4f8)
  store %struct.Memory* %call_4ae4f8, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %edi	 RIP: 4ae4ff	 Bytes: 2
  %loadMem_4ae4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae4ff = call %struct.Memory* @routine_sarl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae4ff)
  store %struct.Memory* %call_4ae4ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae501	 Bytes: 7
  %loadMem_4ae501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae501 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae501)
  store %struct.Memory* %call_4ae501, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae508	 Bytes: 7
  %loadMem_4ae508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae508 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae508)
  store %struct.Memory* %call_4ae508, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae50f	 Bytes: 3
  %loadMem_4ae50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae50f = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae50f)
  store %struct.Memory* %call_4ae50f, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae512	 Bytes: 4
  %loadMem_4ae512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae512 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae512)
  store %struct.Memory* %call_4ae512, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae516	 Bytes: 4
  %loadMem_4ae516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae516 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae516)
  store %struct.Memory* %call_4ae516, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae51a	 Bytes: 3
  %loadMem_4ae51a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae51a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae51a)
  store %struct.Memory* %call_4ae51a, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %edi	 RIP: 4ae51d	 Bytes: 2
  %loadMem_4ae51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae51d = call %struct.Memory* @routine_addl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae51d)
  store %struct.Memory* %call_4ae51d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4ae51f	 Bytes: 8
  %loadMem_4ae51f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae51f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae51f)
  store %struct.Memory* %call_4ae51f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11bec(%rax), %edi	 RIP: 4ae527	 Bytes: 6
  %loadMem_4ae527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae527 = call %struct.Memory* @routine_cmpl_0x11bec__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae527)
  store %struct.Memory* %call_4ae527, %struct.Memory** %MEMORY

  ; Code: jle .L_4ae54c	 RIP: 4ae52d	 Bytes: 6
  %loadMem_4ae52d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae52d = call %struct.Memory* @routine_jle_.L_4ae54c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae52d, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_4ae52d, %struct.Memory** %MEMORY

  %loadBr_4ae52d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae52d = icmp eq i8 %loadBr_4ae52d, 1
  br i1 %cmpBr_4ae52d, label %block_.L_4ae54c, label %block_4ae533

block_4ae533:
  ; Code: movq 0x6cb900, %rax	 RIP: 4ae533	 Bytes: 8
  %loadMem_4ae533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae533 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae533)
  store %struct.Memory* %call_4ae533, %struct.Memory** %MEMORY

  ; Code: movl 0x11bec(%rax), %ecx	 RIP: 4ae53b	 Bytes: 6
  %loadMem_4ae53b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae53b = call %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae53b)
  store %struct.Memory* %call_4ae53b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3c8(%rbp)	 RIP: 4ae541	 Bytes: 6
  %loadMem_4ae541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae541 = call %struct.Memory* @routine_movl__ecx__MINUS0x3c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae541)
  store %struct.Memory* %call_4ae541, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae5d4	 RIP: 4ae547	 Bytes: 5
  %loadMem_4ae547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae547 = call %struct.Memory* @routine_jmpq_.L_4ae5d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae547, i64 141, i64 5)
  store %struct.Memory* %call_4ae547, %struct.Memory** %MEMORY

  br label %block_.L_4ae5d4

  ; Code: .L_4ae54c:	 RIP: 4ae54c	 Bytes: 0
block_.L_4ae54c:

  ; Code: leaq -0x3a0(%rbp), %rax	 RIP: 4ae54c	 Bytes: 7
  %loadMem_4ae54c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae54c = call %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae54c)
  store %struct.Memory* %call_4ae54c, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rcx	 RIP: 4ae553	 Bytes: 7
  %loadMem_4ae553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae553 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae553)
  store %struct.Memory* %call_4ae553, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rdx	 RIP: 4ae55a	 Bytes: 8
  %loadMem_4ae55a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae55a = call %struct.Memory* @routine_movq_0x722b20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae55a)
  store %struct.Memory* %call_4ae55a, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 4ae562	 Bytes: 4
  %loadMem_4ae562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae562 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae562)
  store %struct.Memory* %call_4ae562, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4ae566	 Bytes: 4
  %loadMem_4ae566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae566 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae566)
  store %struct.Memory* %call_4ae566, %struct.Memory** %MEMORY

  ; Code: movq 0x1930(%rdx), %rdx	 RIP: 4ae56a	 Bytes: 7
  %loadMem_4ae56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae56a = call %struct.Memory* @routine_movq_0x1930__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae56a)
  store %struct.Memory* %call_4ae56a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4ae571	 Bytes: 4
  %loadMem_4ae571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae571 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae571)
  store %struct.Memory* %call_4ae571, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4ae575	 Bytes: 4
  %loadMem_4ae575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae575 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae575)
  store %struct.Memory* %call_4ae575, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4ae579	 Bytes: 4
  %loadMem_4ae579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae579 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae579)
  store %struct.Memory* %call_4ae579, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %edi	 RIP: 4ae57d	 Bytes: 4
  %loadMem_4ae57d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae57d = call %struct.Memory* @routine_movzwl___rdx__rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae57d)
  store %struct.Memory* %call_4ae57d, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae581	 Bytes: 7
  %loadMem_4ae581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae581 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae581)
  store %struct.Memory* %call_4ae581, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae588	 Bytes: 7
  %loadMem_4ae588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae588 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae588)
  store %struct.Memory* %call_4ae588, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae58f	 Bytes: 3
  %loadMem_4ae58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae58f = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae58f)
  store %struct.Memory* %call_4ae58f, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae592	 Bytes: 4
  %loadMem_4ae592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae592 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae592)
  store %struct.Memory* %call_4ae592, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae596	 Bytes: 4
  %loadMem_4ae596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae596 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae596)
  store %struct.Memory* %call_4ae596, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae59a	 Bytes: 3
  %loadMem_4ae59a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae59a = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae59a)
  store %struct.Memory* %call_4ae59a, %struct.Memory** %MEMORY

  ; Code: imull (%rcx), %edi	 RIP: 4ae59d	 Bytes: 3
  %loadMem_4ae59d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae59d = call %struct.Memory* @routine_imull___rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae59d)
  store %struct.Memory* %call_4ae59d, %struct.Memory** %MEMORY

  ; Code: addl 0x7107a0, %edi	 RIP: 4ae5a0	 Bytes: 7
  %loadMem_4ae5a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5a0 = call %struct.Memory* @routine_addl_0x7107a0___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5a0)
  store %struct.Memory* %call_4ae5a0, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4ae5a7	 Bytes: 7
  %loadMem_4ae5a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5a7 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5a7)
  store %struct.Memory* %call_4ae5a7, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %edi	 RIP: 4ae5ae	 Bytes: 2
  %loadMem_4ae5ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5ae = call %struct.Memory* @routine_sarl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5ae)
  store %struct.Memory* %call_4ae5ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae5b0	 Bytes: 7
  %loadMem_4ae5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5b0 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5b0)
  store %struct.Memory* %call_4ae5b0, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae5b7	 Bytes: 7
  %loadMem_4ae5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5b7 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5b7)
  store %struct.Memory* %call_4ae5b7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae5be	 Bytes: 3
  %loadMem_4ae5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5be = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5be)
  store %struct.Memory* %call_4ae5be, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 4ae5c1	 Bytes: 4
  %loadMem_4ae5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5c1 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5c1)
  store %struct.Memory* %call_4ae5c1, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae5c5	 Bytes: 4
  %loadMem_4ae5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5c5 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5c5)
  store %struct.Memory* %call_4ae5c5, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4ae5c9	 Bytes: 3
  %loadMem_4ae5c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5c9 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5c9)
  store %struct.Memory* %call_4ae5c9, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %edi	 RIP: 4ae5cc	 Bytes: 2
  %loadMem_4ae5cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5cc = call %struct.Memory* @routine_addl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5cc)
  store %struct.Memory* %call_4ae5cc, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x3c8(%rbp)	 RIP: 4ae5ce	 Bytes: 6
  %loadMem_4ae5ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5ce = call %struct.Memory* @routine_movl__edi__MINUS0x3c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5ce)
  store %struct.Memory* %call_4ae5ce, %struct.Memory** %MEMORY

  ; Code: .L_4ae5d4:	 RIP: 4ae5d4	 Bytes: 0
  br label %block_.L_4ae5d4
block_.L_4ae5d4:

  ; Code: movl -0x3c8(%rbp), %eax	 RIP: 4ae5d4	 Bytes: 6
  %loadMem_4ae5d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5d4 = call %struct.Memory* @routine_movl_MINUS0x3c8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5d4)
  store %struct.Memory* %call_4ae5d4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c4(%rbp)	 RIP: 4ae5da	 Bytes: 6
  %loadMem_4ae5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5da = call %struct.Memory* @routine_movl__eax__MINUS0x3c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5da)
  store %struct.Memory* %call_4ae5da, %struct.Memory** %MEMORY

  ; Code: .L_4ae5e0:	 RIP: 4ae5e0	 Bytes: 0
  br label %block_.L_4ae5e0
block_.L_4ae5e0:

  ; Code: movl -0x3c4(%rbp), %eax	 RIP: 4ae5e0	 Bytes: 6
  %loadMem_4ae5e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5e0 = call %struct.Memory* @routine_movl_MINUS0x3c4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5e0)
  store %struct.Memory* %call_4ae5e0, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 4ae5e6	 Bytes: 3
  %loadMem_4ae5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5e6 = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5e6)
  store %struct.Memory* %call_4ae5e6, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rdx	 RIP: 4ae5e9	 Bytes: 8
  %loadMem_4ae5e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5e9 = call %struct.Memory* @routine_movq_0x722b20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5e9)
  store %struct.Memory* %call_4ae5e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 4ae5f1	 Bytes: 4
  %loadMem_4ae5f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5f1 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5f1)
  store %struct.Memory* %call_4ae5f1, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4ae5f5	 Bytes: 4
  %loadMem_4ae5f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5f5 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5f5)
  store %struct.Memory* %call_4ae5f5, %struct.Memory** %MEMORY

  ; Code: movq 0x1938(%rdx), %rdx	 RIP: 4ae5f9	 Bytes: 7
  %loadMem_4ae5f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae5f9 = call %struct.Memory* @routine_movq_0x1938__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae5f9)
  store %struct.Memory* %call_4ae5f9, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4ae600	 Bytes: 4
  %loadMem_4ae600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae600 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae600)
  store %struct.Memory* %call_4ae600, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4ae604	 Bytes: 4
  %loadMem_4ae604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae604 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae604)
  store %struct.Memory* %call_4ae604, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4ae608	 Bytes: 4
  %loadMem_4ae608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae608 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae608)
  store %struct.Memory* %call_4ae608, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx,%rsi,2)	 RIP: 4ae60c	 Bytes: 4
  %loadMem_4ae60c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae60c = call %struct.Memory* @routine_movw__cx____rdx__rsi_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae60c)
  store %struct.Memory* %call_4ae60c, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4ae610	 Bytes: 3
  %loadMem_4ae610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae610 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae610)
  store %struct.Memory* %call_4ae610, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4ae613	 Bytes: 3
  %loadMem_4ae613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae613 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae613)
  store %struct.Memory* %call_4ae613, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4ae616	 Bytes: 3
  %loadMem_4ae616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae616 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae616)
  store %struct.Memory* %call_4ae616, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae3e9	 RIP: 4ae619	 Bytes: 5
  %loadMem_4ae619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae619 = call %struct.Memory* @routine_jmpq_.L_4ae3e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae619, i64 -560, i64 5)
  store %struct.Memory* %call_4ae619, %struct.Memory** %MEMORY

  br label %block_.L_4ae3e9

  ; Code: .L_4ae61e:	 RIP: 4ae61e	 Bytes: 0
block_.L_4ae61e:

  ; Code: jmpq .L_4ae623	 RIP: 4ae61e	 Bytes: 5
  %loadMem_4ae61e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae61e = call %struct.Memory* @routine_jmpq_.L_4ae623(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae61e, i64 5, i64 5)
  store %struct.Memory* %call_4ae61e, %struct.Memory** %MEMORY

  br label %block_.L_4ae623

  ; Code: .L_4ae623:	 RIP: 4ae623	 Bytes: 0
block_.L_4ae623:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4ae623	 Bytes: 3
  %loadMem_4ae623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae623 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae623)
  store %struct.Memory* %call_4ae623, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4ae626	 Bytes: 3
  %loadMem_4ae626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae626 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae626)
  store %struct.Memory* %call_4ae626, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4ae629	 Bytes: 3
  %loadMem_4ae629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae629 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae629)
  store %struct.Memory* %call_4ae629, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae3c6	 RIP: 4ae62c	 Bytes: 5
  %loadMem_4ae62c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae62c = call %struct.Memory* @routine_jmpq_.L_4ae3c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae62c, i64 -614, i64 5)
  store %struct.Memory* %call_4ae62c, %struct.Memory** %MEMORY

  br label %block_.L_4ae3c6

  ; Code: .L_4ae631:	 RIP: 4ae631	 Bytes: 0
block_.L_4ae631:

  ; Code: jmpq .L_4ae636	 RIP: 4ae631	 Bytes: 5
  %loadMem_4ae631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae631 = call %struct.Memory* @routine_jmpq_.L_4ae636(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae631, i64 5, i64 5)
  store %struct.Memory* %call_4ae631, %struct.Memory** %MEMORY

  br label %block_.L_4ae636

  ; Code: .L_4ae636:	 RIP: 4ae636	 Bytes: 0
block_.L_4ae636:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 4ae636	 Bytes: 3
  %loadMem_4ae636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae636 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae636)
  store %struct.Memory* %call_4ae636, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4ae639	 Bytes: 3
  %loadMem_4ae639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae639 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae639)
  store %struct.Memory* %call_4ae639, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 4ae63c	 Bytes: 3
  %loadMem_4ae63c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae63c = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae63c)
  store %struct.Memory* %call_4ae63c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ade0d	 RIP: 4ae63f	 Bytes: 5
  %loadMem_4ae63f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae63f = call %struct.Memory* @routine_jmpq_.L_4ade0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae63f, i64 -2098, i64 5)
  store %struct.Memory* %call_4ae63f, %struct.Memory** %MEMORY

  br label %block_.L_4ade0d

  ; Code: .L_4ae644:	 RIP: 4ae644	 Bytes: 0
block_.L_4ae644:

  ; Code: jmpq .L_4ae649	 RIP: 4ae644	 Bytes: 5
  %loadMem_4ae644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae644 = call %struct.Memory* @routine_jmpq_.L_4ae649(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae644, i64 5, i64 5)
  store %struct.Memory* %call_4ae644, %struct.Memory** %MEMORY

  br label %block_.L_4ae649

  ; Code: .L_4ae649:	 RIP: 4ae649	 Bytes: 0
block_.L_4ae649:

  ; Code: movl -0x3a4(%rbp), %eax	 RIP: 4ae649	 Bytes: 6
  %loadMem_4ae649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae649 = call %struct.Memory* @routine_movl_MINUS0x3a4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae649)
  store %struct.Memory* %call_4ae649, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4ae64f	 Bytes: 3
  %loadMem_4ae64f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae64f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae64f)
  store %struct.Memory* %call_4ae64f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3a4(%rbp)	 RIP: 4ae652	 Bytes: 6
  %loadMem_4ae652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae652 = call %struct.Memory* @routine_movl__eax__MINUS0x3a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae652)
  store %struct.Memory* %call_4ae652, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4addef	 RIP: 4ae658	 Bytes: 5
  %loadMem_4ae658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae658 = call %struct.Memory* @routine_jmpq_.L_4addef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae658, i64 -2153, i64 5)
  store %struct.Memory* %call_4ae658, %struct.Memory** %MEMORY

  br label %block_.L_4addef

  ; Code: .L_4ae65d:	 RIP: 4ae65d	 Bytes: 0
block_.L_4ae65d:

  ; Code: movl $0x0, -0x3a4(%rbp)	 RIP: 4ae65d	 Bytes: 10
  %loadMem_4ae65d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae65d = call %struct.Memory* @routine_movl__0x0__MINUS0x3a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae65d)
  store %struct.Memory* %call_4ae65d, %struct.Memory** %MEMORY

  ; Code: .L_4ae667:	 RIP: 4ae667	 Bytes: 0
  br label %block_.L_4ae667
block_.L_4ae667:

  ; Code: movl -0x3a4(%rbp), %eax	 RIP: 4ae667	 Bytes: 6
  %loadMem_4ae667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae667 = call %struct.Memory* @routine_movl_MINUS0x3a4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae667)
  store %struct.Memory* %call_4ae667, %struct.Memory** %MEMORY

  ; Code: movl -0xc0(%rbp), %ecx	 RIP: 4ae66d	 Bytes: 6
  %loadMem_4ae66d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae66d = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae66d)
  store %struct.Memory* %call_4ae66d, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 4ae673	 Bytes: 3
  %loadMem_4ae673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae673 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae673)
  store %struct.Memory* %call_4ae673, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4ae676	 Bytes: 2
  %loadMem_4ae676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae676 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae676)
  store %struct.Memory* %call_4ae676, %struct.Memory** %MEMORY

  ; Code: jge .L_4ae77f	 RIP: 4ae678	 Bytes: 6
  %loadMem_4ae678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae678 = call %struct.Memory* @routine_jge_.L_4ae77f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae678, i8* %BRANCH_TAKEN, i64 263, i64 6, i64 6)
  store %struct.Memory* %call_4ae678, %struct.Memory** %MEMORY

  %loadBr_4ae678 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae678 = icmp eq i8 %loadBr_4ae678, 1
  br i1 %cmpBr_4ae678, label %block_.L_4ae77f, label %block_4ae67e

block_4ae67e:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 4ae67e	 Bytes: 7
  %loadMem_4ae67e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae67e = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae67e)
  store %struct.Memory* %call_4ae67e, %struct.Memory** %MEMORY

  ; Code: .L_4ae685:	 RIP: 4ae685	 Bytes: 0
  br label %block_.L_4ae685
block_.L_4ae685:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4ae685	 Bytes: 3
  %loadMem_4ae685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae685 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae685)
  store %struct.Memory* %call_4ae685, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rcx	 RIP: 4ae688	 Bytes: 7
  %loadMem_4ae688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae688 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae688)
  store %struct.Memory* %call_4ae688, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0(,%rcx,4), %eax	 RIP: 4ae68f	 Bytes: 7
  %loadMem_4ae68f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae68f = call %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae68f)
  store %struct.Memory* %call_4ae68f, %struct.Memory** %MEMORY

  ; Code: jge .L_4ae766	 RIP: 4ae696	 Bytes: 6
  %loadMem_4ae696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae696 = call %struct.Memory* @routine_jge_.L_4ae766(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae696, i8* %BRANCH_TAKEN, i64 208, i64 6, i64 6)
  store %struct.Memory* %call_4ae696, %struct.Memory** %MEMORY

  %loadBr_4ae696 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae696 = icmp eq i8 %loadBr_4ae696, 1
  br i1 %cmpBr_4ae696, label %block_.L_4ae766, label %block_4ae69c

block_4ae69c:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 4ae69c	 Bytes: 7
  %loadMem_4ae69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae69c = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae69c)
  store %struct.Memory* %call_4ae69c, %struct.Memory** %MEMORY

  ; Code: .L_4ae6a3:	 RIP: 4ae6a3	 Bytes: 0
  br label %block_.L_4ae6a3
block_.L_4ae6a3:

  ; Code: cmpl $0x3, -0x20(%rbp)	 RIP: 4ae6a3	 Bytes: 4
  %loadMem_4ae6a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6a3 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6a3)
  store %struct.Memory* %call_4ae6a3, %struct.Memory** %MEMORY

  ; Code: jge .L_4ae753	 RIP: 4ae6a7	 Bytes: 6
  %loadMem_4ae6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6a7 = call %struct.Memory* @routine_jge_.L_4ae753(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6a7, i8* %BRANCH_TAKEN, i64 172, i64 6, i64 6)
  store %struct.Memory* %call_4ae6a7, %struct.Memory** %MEMORY

  %loadBr_4ae6a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae6a7 = icmp eq i8 %loadBr_4ae6a7, 1
  br i1 %cmpBr_4ae6a7, label %block_.L_4ae753, label %block_4ae6ad

block_4ae6ad:
  ; Code: leaq -0x3a0(%rbp), %rax	 RIP: 4ae6ad	 Bytes: 7
  %loadMem_4ae6ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6ad = call %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6ad)
  store %struct.Memory* %call_4ae6ad, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rcx	 RIP: 4ae6b4	 Bytes: 7
  %loadMem_4ae6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6b4 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6b4)
  store %struct.Memory* %call_4ae6b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae6bb	 Bytes: 7
  %loadMem_4ae6bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6bb = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6bb)
  store %struct.Memory* %call_4ae6bb, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae6c2	 Bytes: 7
  %loadMem_4ae6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6c2 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6c2)
  store %struct.Memory* %call_4ae6c2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae6c9	 Bytes: 3
  %loadMem_4ae6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6c9 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6c9)
  store %struct.Memory* %call_4ae6c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4ae6cc	 Bytes: 4
  %loadMem_4ae6cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6cc = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6cc)
  store %struct.Memory* %call_4ae6cc, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae6d0	 Bytes: 4
  %loadMem_4ae6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6d0 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6d0)
  store %struct.Memory* %call_4ae6d0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae6d4	 Bytes: 3
  %loadMem_4ae6d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6d4 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6d4)
  store %struct.Memory* %call_4ae6d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4ae6d7	 Bytes: 4
  %loadMem_4ae6d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6d7 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6d7)
  store %struct.Memory* %call_4ae6d7, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 4ae6db	 Bytes: 3
  %loadMem_4ae6db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6db = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6db)
  store %struct.Memory* %call_4ae6db, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 4ae6de	 Bytes: 8
  %loadMem_4ae6de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6de = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6de)
  store %struct.Memory* %call_4ae6de, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rdx	 RIP: 4ae6e6	 Bytes: 7
  %loadMem_4ae6e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6e6 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6e6)
  store %struct.Memory* %call_4ae6e6, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4ae6ed	 Bytes: 4
  %loadMem_4ae6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6ed = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6ed)
  store %struct.Memory* %call_4ae6ed, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4ae6f1	 Bytes: 4
  %loadMem_4ae6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6f1 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6f1)
  store %struct.Memory* %call_4ae6f1, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4ae6f5	 Bytes: 4
  %loadMem_4ae6f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6f5 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6f5)
  store %struct.Memory* %call_4ae6f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4ae6f9	 Bytes: 4
  %loadMem_4ae6f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6f9 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6f9)
  store %struct.Memory* %call_4ae6f9, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rcx,%rdx,4)	 RIP: 4ae6fd	 Bytes: 3
  %loadMem_4ae6fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae6fd = call %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae6fd)
  store %struct.Memory* %call_4ae6fd, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rcx	 RIP: 4ae700	 Bytes: 7
  %loadMem_4ae700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae700 = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae700)
  store %struct.Memory* %call_4ae700, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4ae707	 Bytes: 7
  %loadMem_4ae707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae707 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae707)
  store %struct.Memory* %call_4ae707, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4ae70e	 Bytes: 3
  %loadMem_4ae70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae70e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae70e)
  store %struct.Memory* %call_4ae70e, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4ae711	 Bytes: 4
  %loadMem_4ae711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae711 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae711)
  store %struct.Memory* %call_4ae711, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4ae715	 Bytes: 4
  %loadMem_4ae715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae715 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae715)
  store %struct.Memory* %call_4ae715, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4ae719	 Bytes: 3
  %loadMem_4ae719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae719 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae719)
  store %struct.Memory* %call_4ae719, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 4ae71c	 Bytes: 4
  %loadMem_4ae71c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae71c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae71c)
  store %struct.Memory* %call_4ae71c, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 4ae720	 Bytes: 3
  %loadMem_4ae720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae720 = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae720)
  store %struct.Memory* %call_4ae720, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rax	 RIP: 4ae723	 Bytes: 8
  %loadMem_4ae723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae723 = call %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae723)
  store %struct.Memory* %call_4ae723, %struct.Memory** %MEMORY

  ; Code: movslq -0x3a4(%rbp), %rcx	 RIP: 4ae72b	 Bytes: 7
  %loadMem_4ae72b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae72b = call %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae72b)
  store %struct.Memory* %call_4ae72b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4ae732	 Bytes: 4
  %loadMem_4ae732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae732 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae732)
  store %struct.Memory* %call_4ae732, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4ae736	 Bytes: 4
  %loadMem_4ae736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae736 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae736)
  store %struct.Memory* %call_4ae736, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4ae73a	 Bytes: 4
  %loadMem_4ae73a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae73a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae73a)
  store %struct.Memory* %call_4ae73a, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 4ae73e	 Bytes: 4
  %loadMem_4ae73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae73e = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae73e)
  store %struct.Memory* %call_4ae73e, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 4ae742	 Bytes: 3
  %loadMem_4ae742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae742 = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae742)
  store %struct.Memory* %call_4ae742, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4ae745	 Bytes: 3
  %loadMem_4ae745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae745 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae745)
  store %struct.Memory* %call_4ae745, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4ae748	 Bytes: 3
  %loadMem_4ae748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae748 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae748)
  store %struct.Memory* %call_4ae748, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4ae74b	 Bytes: 3
  %loadMem_4ae74b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae74b = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae74b)
  store %struct.Memory* %call_4ae74b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae6a3	 RIP: 4ae74e	 Bytes: 5
  %loadMem_4ae74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae74e = call %struct.Memory* @routine_jmpq_.L_4ae6a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae74e, i64 -171, i64 5)
  store %struct.Memory* %call_4ae74e, %struct.Memory** %MEMORY

  br label %block_.L_4ae6a3

  ; Code: .L_4ae753:	 RIP: 4ae753	 Bytes: 0
block_.L_4ae753:

  ; Code: jmpq .L_4ae758	 RIP: 4ae753	 Bytes: 5
  %loadMem_4ae753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae753 = call %struct.Memory* @routine_jmpq_.L_4ae758(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae753, i64 5, i64 5)
  store %struct.Memory* %call_4ae753, %struct.Memory** %MEMORY

  br label %block_.L_4ae758

  ; Code: .L_4ae758:	 RIP: 4ae758	 Bytes: 0
block_.L_4ae758:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4ae758	 Bytes: 3
  %loadMem_4ae758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae758 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae758)
  store %struct.Memory* %call_4ae758, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4ae75b	 Bytes: 3
  %loadMem_4ae75b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae75b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae75b)
  store %struct.Memory* %call_4ae75b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4ae75e	 Bytes: 3
  %loadMem_4ae75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae75e = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae75e)
  store %struct.Memory* %call_4ae75e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae685	 RIP: 4ae761	 Bytes: 5
  %loadMem_4ae761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae761 = call %struct.Memory* @routine_jmpq_.L_4ae685(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae761, i64 -220, i64 5)
  store %struct.Memory* %call_4ae761, %struct.Memory** %MEMORY

  br label %block_.L_4ae685

  ; Code: .L_4ae766:	 RIP: 4ae766	 Bytes: 0
block_.L_4ae766:

  ; Code: jmpq .L_4ae76b	 RIP: 4ae766	 Bytes: 5
  %loadMem_4ae766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae766 = call %struct.Memory* @routine_jmpq_.L_4ae76b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae766, i64 5, i64 5)
  store %struct.Memory* %call_4ae766, %struct.Memory** %MEMORY

  br label %block_.L_4ae76b

  ; Code: .L_4ae76b:	 RIP: 4ae76b	 Bytes: 0
block_.L_4ae76b:

  ; Code: movl -0x3a4(%rbp), %eax	 RIP: 4ae76b	 Bytes: 6
  %loadMem_4ae76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae76b = call %struct.Memory* @routine_movl_MINUS0x3a4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae76b)
  store %struct.Memory* %call_4ae76b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4ae771	 Bytes: 3
  %loadMem_4ae771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae771 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae771)
  store %struct.Memory* %call_4ae771, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3a4(%rbp)	 RIP: 4ae774	 Bytes: 6
  %loadMem_4ae774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae774 = call %struct.Memory* @routine_movl__eax__MINUS0x3a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae774)
  store %struct.Memory* %call_4ae774, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae667	 RIP: 4ae77a	 Bytes: 5
  %loadMem_4ae77a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae77a = call %struct.Memory* @routine_jmpq_.L_4ae667(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae77a, i64 -275, i64 5)
  store %struct.Memory* %call_4ae77a, %struct.Memory** %MEMORY

  br label %block_.L_4ae667

  ; Code: .L_4ae77f:	 RIP: 4ae77f	 Bytes: 0
block_.L_4ae77f:

  ; Code: addq $0x350, %rsp	 RIP: 4ae77f	 Bytes: 7
  %loadMem_4ae77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae77f = call %struct.Memory* @routine_addq__0x350___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae77f)
  store %struct.Memory* %call_4ae77f, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4ae786	 Bytes: 1
  %loadMem_4ae786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae786 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae786)
  store %struct.Memory* %call_4ae786, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4ae787	 Bytes: 1
  %loadMem_4ae787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae787 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae787)
  store %struct.Memory* %call_4ae787, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4ae787
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

define %struct.Memory* @routine_subq__0x350___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 848)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to i64*
  %7 = load i64, i64* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to i64*
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 8
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = xor i64 %12, %7
  %17 = xor i64 %15, %10
  %18 = trunc i64 %16 to i32
  %19 = lshr i64 %16, 32
  %20 = trunc i64 %19 to i32
  %21 = bitcast i8* %2 to i32*
  store i32 %18, i32* %21, align 1
  %22 = getelementptr inbounds i8, i8* %2, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %20, i32* %23, align 1
  %24 = trunc i64 %17 to i32
  %25 = getelementptr inbounds i8, i8* %2, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = lshr i64 %17, 32
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds i8, i8* %2, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_je_.L_4adba4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__eax__MINUS0x3a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 936
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


define %struct.Memory* @routine_movl_MINUS0x3a8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 936
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl__esi__MINUS0x3ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 940
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_jmpq_.L_4adbb1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__eax__MINUS0x3ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 940
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x3ac__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 940
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


define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movl__0x5__0x70f6d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x70f6d0_type* @G_0x70f6d0 to i64), i64 5)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x5__0x7242a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7242a0_type* @G_0x7242a0 to i64), i64 5)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_0x70f6d0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x70f6d0_type* @G_0x70f6d0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__ecx__MINUS0x3b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 944
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x3b0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 944
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_movl__eax__0x7107a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7107a0_type* @G_0x7107a0 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x7242a0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x7242a0_type* @G_0x7242a0 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__0x710790(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x710790_type* @G_0x710790 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x70f6d0_type* @G_0x70f6d0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x7242a0_type* @G_0x7242a0 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_MINUS0xc0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_addl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
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

define %struct.Memory* @routine_jge_.L_4add69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = mul i64 %14, 4
  %16 = add i64 %15, 7489456
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_4add56(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4add43(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 928
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 560
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


define %struct.Memory* @routine_movl_MINUS0xbc__rbp__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -188
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 180)
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


define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 12)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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


define %struct.Memory* @routine_movl_MINUS0xbc__rbp__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -188
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6d4740_type* @G_0x6d4740 to i64))
  ret %struct.Memory* %11
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










define %struct.Memory* @routine_movq_0x6f9728___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6f9728_type* @G_0x6f9728 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl__0x0____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 180)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 12)
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


define %struct.Memory* @routine_jmpq_.L_4adc81(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4add48(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4adc66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4add5b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4adc4b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_cmpl_0x3c__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 60
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4adde5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl_0x34__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 52
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4addd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x278672__rip____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x278672__rip__type* @G_0x278672__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = trunc i64 %3 to i32
  %6 = sitofp i32 %5 to double
  %7 = bitcast i8* %2 to double*
  store double %6, double* %7, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl__edx___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fadd double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_jmpq_.L_4add8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4addd7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4add70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x3a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 932
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x3a4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 932
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jge_.L_4ae65d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 932
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_4ae644(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp__rax_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RBP
  %15 = load i64, i64* %RAX
  %16 = mul i64 %15, 8
  %17 = add i64 %14, -160
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM0 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i8* %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 932
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x722b20___rax_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 8
  %11 = add i64 %10, 7482144
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %11)
  ret %struct.Memory* %14
}






define %struct.Memory* @routine_movq_0x1920__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6432
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

define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq_0x1928__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6440
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_imull_0x34__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jge_.L_4adede(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addsd_MINUS0xa0__rbp__rax_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 8
  %19 = add i64 %16, -160
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %20)
  ret %struct.Memory* %23
}










define %struct.Memory* @routine_jmpq_.L_4ade85(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sitofp i32 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x4__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to double*
  %6 = load double, double* %5, align 1
  %7 = bitcast i8* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = fcmp uno double %6, %8
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %4
  %11 = fadd double %6, %8
  %12 = bitcast double %11 to i64
  %13 = and i64 %12, 9221120237041090560
  %14 = icmp eq i64 %13, 9218868437227405312
  %15 = and i64 %12, 2251799813685247
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %20, %struct.Memory* %0) #21
  br label %39

; <label>:22:                                     ; preds = %4
  %23 = fcmp ogt double %6, %8
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %6, %8
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %6, %8
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %10
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %10 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %10 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %10 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %39

; <label>:39:                                     ; preds = %35, %18
  %40 = phi %struct.Memory* [ %21, %18 ], [ %0, %35 ]
  ret %struct.Memory* %40
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_jne_.L_4ae022(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JPEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = icmp ne i8 %7, 0
  %10 = select i1 %9, i64 %3, i64 %4
  store i64 %10, i64* %8, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jp_.L_4ae022(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JPEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_movsd_MINUS0xa0__rbp__rax_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, -160
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_jne_.L_4adf1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jp_.L_4adf1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JPEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_4adf6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_0x395e__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x395e__rip__type* @G_0x395e__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cvtsi2sdl_MINUS0xbc__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fdiv double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divsd_MINUS0xa0__rbp__rcx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %16, -160
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %20)
  ret %struct.Memory* %23
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

define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
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

define %struct.Memory* @routine_cvttsd2si__xmm1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i8* %11)
  ret %struct.Memory* %14
}














define %struct.Memory* @routine_movl__edx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_4adf9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0xbc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 932
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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
















define %struct.Memory* @routine_cmpl__0xffffffc0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 -64)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %2, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = select i1 %12, i64 %3, i64 %4
  store i64 %15, i64* %14, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jl_.L_4adff2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_cmpl__0x7f____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 127)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_jle_.L_4ae01d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jmpq_.L_4ae189(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movsd_0x3857__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x3857__rip__type* @G_0x3857__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fsub double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subsd_MINUS0xa0__rbp__rcx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %16, -160
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %20)
  ret %struct.Memory* %23
}










define %struct.Memory* @routine_cvtsi2sdl__edx___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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










define %struct.Memory* @routine_movq__rax___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
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








define %struct.Memory* @routine_movl__edx____rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_cmpl__0xffffff80____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 -128)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jge_.L_4ae0c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xffffff80___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4294967168)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x3b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 948
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4ae133(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_jle_.L_4ae0fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x7f___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 127)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x3b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 952
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4ae127(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__edx__MINUS0x3b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 952
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x3b8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 952
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x3b4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 948
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 928
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 932
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 180)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 12)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__eax____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl_MINUS0xb8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_movl__ecx__0x4__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0xb4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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
















define %struct.Memory* @routine_jge_.L_4ae3bf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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














define %struct.Memory* @routine_imull___rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
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

define %struct.Memory* @routine_addl_0x7107a0___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 ptrtoint( %G_0x7107a0_type* @G_0x7107a0 to i64))
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_sarl__cl___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDI = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RDI
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_addl___rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4ae286(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x3bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 956
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4ae399(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















































define %struct.Memory* @routine_cmpl_0x11bec__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 72684
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_4ae31d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__ecx__MINUS0x3c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 960
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4ae38d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














































define %struct.Memory* @routine_movl__edi__MINUS0x3c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 960
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x3c0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 960
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x3bc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 956
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i16
  store i16 %5, i16* %2, align 2
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
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








define %struct.Memory* @routine_jmpq_.L_4ae1e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_addl__0x8___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 8)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_shll__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jge_.L_4ae631(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_0x34__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jge_.L_4ae61e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_0x722b20___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x722b20_type* @G_0x722b20 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq_0x1930__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6448
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}








































define %struct.Memory* @routine_jge_.L_4ae49d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x3c4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 964
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4ae5e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




























































define %struct.Memory* @routine_jle_.L_4ae54c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x3c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 968
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4ae5d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
























































define %struct.Memory* @routine_movl__edi__MINUS0x3c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 968
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x3c8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 968
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x3c4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 964
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq_0x1938__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6456
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_jmpq_.L_4ae3e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4ae623(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4ae3c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4ae636(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4ade0d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4ae649(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x3a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 932
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4addef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jge_.L_4ae77f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4ae766(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4ae753(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6f9728_type* @G_0x6f9728 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_4ae6a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4ae758(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4ae685(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4ae76b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4ae667(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x350___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 848)
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

