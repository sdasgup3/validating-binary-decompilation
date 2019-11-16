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

declare %struct.Memory* @sub_401100.log10_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x2a00b5__rip__type = type <{ [8 x i8] }>
@G_0x2a00b5__rip_= global %G_0x2a00b5__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb910_type = type <{ [8 x i8] }>
@G_0x6cb910= global %G_0x6cb910_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6ccf80_type = type <{ [8 x i8] }>
@G_0x6ccf80= global %G_0x6ccf80_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cee50_type = type <{ [4 x i8] }>
@G_0x6cee50= global %G_0x6cee50_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6f6f90_type = type <{ [8 x i8] }>
@G_0x6f6f90= global %G_0x6f6f90_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6f8edc_type = type <{ [4 x i8] }>
@G_0x6f8edc= global %G_0x6f8edc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6f96f0_type = type <{ [8 x i8] }>
@G_0x6f96f0= global %G_0x6f96f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x710a40_type = type <{ [8 x i8] }>
@G_0x710a40= global %G_0x710a40_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x710a50_type = type <{ [8 x i8] }>
@G_0x710a50= global %G_0x710a50_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722c90_type = type <{ [8 x i8] }>
@G_0x722c90= global %G_0x722c90_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722ca8_type = type <{ [4 x i8] }>
@G_0x722ca8= global %G_0x722ca8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x726418_type = type <{ [8 x i8] }>
@G_0x726418= global %G_0x726418_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x8600e__rip__type = type <{ [8 x i8] }>
@G_0x8600e__rip_= global %G_0x8600e__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x8604c__rip__type = type <{ [8 x i8] }>
@G_0x8604c__rip_= global %G_0x8604c__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x8609f__rip__type = type <{ [8 x i8] }>
@G_0x8609f__rip_= global %G_0x8609f__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @find_snr(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .find_snr:	 RIP: 42b2b0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 42b2b0	 Bytes: 1
  %loadMem_42b2b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2b0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2b0)
  store %struct.Memory* %call_42b2b0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 42b2b1	 Bytes: 3
  %loadMem_42b2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2b1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2b1)
  store %struct.Memory* %call_42b2b1, %struct.Memory** %MEMORY

  ; Code: subq $0x30, %rsp	 RIP: 42b2b4	 Bytes: 4
  %loadMem_42b2b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2b4 = call %struct.Memory* @routine_subq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2b4)
  store %struct.Memory* %call_42b2b4, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x10(%rbp)	 RIP: 42b2b8	 Bytes: 8
  %loadMem_42b2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2b8 = call %struct.Memory* @routine_movq__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2b8)
  store %struct.Memory* %call_42b2b8, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x18(%rbp)	 RIP: 42b2c0	 Bytes: 8
  %loadMem_42b2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2c0 = call %struct.Memory* @routine_movq__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2c0)
  store %struct.Memory* %call_42b2c0, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x20(%rbp)	 RIP: 42b2c8	 Bytes: 8
  %loadMem_42b2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2c8 = call %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2c8)
  store %struct.Memory* %call_42b2c8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42b2d0	 Bytes: 8
  %loadMem_42b2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2d0 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2d0)
  store %struct.Memory* %call_42b2d0, %struct.Memory** %MEMORY

  ; Code: movl 0x11bec(%rax), %ecx	 RIP: 42b2d8	 Bytes: 6
  %loadMem_42b2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2d8 = call %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2d8)
  store %struct.Memory* %call_42b2d8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42b2de	 Bytes: 8
  %loadMem_42b2de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2de = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2de)
  store %struct.Memory* %call_42b2de, %struct.Memory** %MEMORY

  ; Code: imull 0x11bec(%rax), %ecx	 RIP: 42b2e6	 Bytes: 7
  %loadMem_42b2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2e6 = call %struct.Memory* @routine_imull_0x11bec__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2e6)
  store %struct.Memory* %call_42b2e6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 42b2ed	 Bytes: 3
  %loadMem_42b2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2ed = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2ed)
  store %struct.Memory* %call_42b2ed, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42b2f0	 Bytes: 8
  %loadMem_42b2f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2f0 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2f0)
  store %struct.Memory* %call_42b2f0, %struct.Memory** %MEMORY

  ; Code: movl 0x11bf0(%rax), %ecx	 RIP: 42b2f8	 Bytes: 6
  %loadMem_42b2f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2f8 = call %struct.Memory* @routine_movl_0x11bf0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2f8)
  store %struct.Memory* %call_42b2f8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42b2fe	 Bytes: 8
  %loadMem_42b2fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b2fe = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b2fe)
  store %struct.Memory* %call_42b2fe, %struct.Memory** %MEMORY

  ; Code: imull 0x11bf0(%rax), %ecx	 RIP: 42b306	 Bytes: 7
  %loadMem_42b306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b306 = call %struct.Memory* @routine_imull_0x11bf0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b306)
  store %struct.Memory* %call_42b306, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x30(%rbp)	 RIP: 42b30d	 Bytes: 3
  %loadMem_42b30d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b30d = call %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b30d)
  store %struct.Memory* %call_42b30d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 42b310	 Bytes: 8
  %loadMem_42b310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b310 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b310)
  store %struct.Memory* %call_42b310, %struct.Memory** %MEMORY

  ; Code: movl 0x44(%rax), %ecx	 RIP: 42b318	 Bytes: 3
  %loadMem_42b318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b318 = call %struct.Memory* @routine_movl_0x44__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b318)
  store %struct.Memory* %call_42b318, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 42b31b	 Bytes: 8
  %loadMem_42b31b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b31b = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b31b)
  store %struct.Memory* %call_42b31b, %struct.Memory** %MEMORY

  ; Code: imull 0x40(%rax), %ecx	 RIP: 42b323	 Bytes: 4
  %loadMem_42b323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b323 = call %struct.Memory* @routine_imull_0x40__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b323)
  store %struct.Memory* %call_42b323, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 42b327	 Bytes: 3
  %loadMem_42b327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b327 = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b327)
  store %struct.Memory* %call_42b327, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 42b32a	 Bytes: 8
  %loadMem_42b32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b32a = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b32a)
  store %struct.Memory* %call_42b32a, %struct.Memory** %MEMORY

  ; Code: movl 0xce8(%rax), %ecx	 RIP: 42b332	 Bytes: 6
  %loadMem_42b332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b332 = call %struct.Memory* @routine_movl_0xce8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b332)
  store %struct.Memory* %call_42b332, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 42b338	 Bytes: 8
  %loadMem_42b338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b338 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b338)
  store %struct.Memory* %call_42b338, %struct.Memory** %MEMORY

  ; Code: imull 0xcec(%rax), %ecx	 RIP: 42b340	 Bytes: 7
  %loadMem_42b340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b340 = call %struct.Memory* @routine_imull_0xcec__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b340)
  store %struct.Memory* %call_42b340, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 42b347	 Bytes: 3
  %loadMem_42b347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b347 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b347)
  store %struct.Memory* %call_42b347, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42b34a	 Bytes: 8
  %loadMem_42b34a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b34a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b34a)
  store %struct.Memory* %call_42b34a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11878(%rax)	 RIP: 42b352	 Bytes: 7
  %loadMem_42b352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b352 = call %struct.Memory* @routine_cmpl__0x0__0x11878__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b352)
  store %struct.Memory* %call_42b352, %struct.Memory** %MEMORY

  ; Code: je .L_42b548	 RIP: 42b359	 Bytes: 6
  %loadMem_42b359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b359 = call %struct.Memory* @routine_je_.L_42b548(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b359, i8* %BRANCH_TAKEN, i64 495, i64 6, i64 6)
  store %struct.Memory* %call_42b359, %struct.Memory** %MEMORY

  %loadBr_42b359 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b359 = icmp eq i8 %loadBr_42b359, 1
  br i1 %cmpBr_42b359, label %block_.L_42b548, label %block_42b35f

block_42b35f:
  ; Code: movq $0x0, -0x10(%rbp)	 RIP: 42b35f	 Bytes: 8
  %loadMem_42b35f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b35f = call %struct.Memory* @routine_movq__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b35f)
  store %struct.Memory* %call_42b35f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 42b367	 Bytes: 7
  %loadMem_42b367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b367 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b367)
  store %struct.Memory* %call_42b367, %struct.Memory** %MEMORY

  ; Code: .L_42b36e:	 RIP: 42b36e	 Bytes: 0
  br label %block_.L_42b36e
block_.L_42b36e:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 42b36e	 Bytes: 3
  %loadMem_42b36e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b36e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b36e)
  store %struct.Memory* %call_42b36e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 42b371	 Bytes: 8
  %loadMem_42b371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b371 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b371)
  store %struct.Memory* %call_42b371, %struct.Memory** %MEMORY

  ; Code: cmpl 0x40(%rcx), %eax	 RIP: 42b379	 Bytes: 3
  %loadMem_42b379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b379 = call %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b379)
  store %struct.Memory* %call_42b379, %struct.Memory** %MEMORY

  ; Code: jge .L_42b40e	 RIP: 42b37c	 Bytes: 6
  %loadMem_42b37c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b37c = call %struct.Memory* @routine_jge_.L_42b40e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b37c, i8* %BRANCH_TAKEN, i64 146, i64 6, i64 6)
  store %struct.Memory* %call_42b37c, %struct.Memory** %MEMORY

  %loadBr_42b37c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b37c = icmp eq i8 %loadBr_42b37c, 1
  br i1 %cmpBr_42b37c, label %block_.L_42b40e, label %block_42b382

block_42b382:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 42b382	 Bytes: 7
  %loadMem_42b382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b382 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b382)
  store %struct.Memory* %call_42b382, %struct.Memory** %MEMORY

  ; Code: .L_42b389:	 RIP: 42b389	 Bytes: 0
  br label %block_.L_42b389
block_.L_42b389:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 42b389	 Bytes: 3
  %loadMem_42b389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b389 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b389)
  store %struct.Memory* %call_42b389, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 42b38c	 Bytes: 8
  %loadMem_42b38c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b38c = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b38c)
  store %struct.Memory* %call_42b38c, %struct.Memory** %MEMORY

  ; Code: cmpl 0x44(%rcx), %eax	 RIP: 42b394	 Bytes: 3
  %loadMem_42b394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b394 = call %struct.Memory* @routine_cmpl_0x44__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b394)
  store %struct.Memory* %call_42b394, %struct.Memory** %MEMORY

  ; Code: jge .L_42b3fb	 RIP: 42b397	 Bytes: 6
  %loadMem_42b397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b397 = call %struct.Memory* @routine_jge_.L_42b3fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b397, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_42b397, %struct.Memory** %MEMORY

  %loadBr_42b397 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b397 = icmp eq i8 %loadBr_42b397, 1
  br i1 %cmpBr_42b397, label %block_.L_42b3fb, label %block_42b39d

block_42b39d:
  ; Code: movq 0x6cb900, %rax	 RIP: 42b39d	 Bytes: 8
  %loadMem_42b39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b39d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b39d)
  store %struct.Memory* %call_42b39d, %struct.Memory** %MEMORY

  ; Code: movq 0x11860(%rax), %rax	 RIP: 42b3a5	 Bytes: 7
  %loadMem_42b3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3a5 = call %struct.Memory* @routine_movq_0x11860__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3a5)
  store %struct.Memory* %call_42b3a5, %struct.Memory** %MEMORY

  ; Code: movq 0x726418, %rcx	 RIP: 42b3ac	 Bytes: 8
  %loadMem_42b3ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3ac = call %struct.Memory* @routine_movq_0x726418___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3ac)
  store %struct.Memory* %call_42b3ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 42b3b4	 Bytes: 4
  %loadMem_42b3b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3b4 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3b4)
  store %struct.Memory* %call_42b3b4, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b3b8	 Bytes: 4
  %loadMem_42b3b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3b8 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3b8)
  store %struct.Memory* %call_42b3b8, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 42b3bc	 Bytes: 4
  %loadMem_42b3bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3bc = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3bc)
  store %struct.Memory* %call_42b3bc, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 42b3c0	 Bytes: 4
  %loadMem_42b3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3c0 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3c0)
  store %struct.Memory* %call_42b3c0, %struct.Memory** %MEMORY

  ; Code: movq 0x722c90, %rcx	 RIP: 42b3c4	 Bytes: 8
  %loadMem_42b3c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3c4 = call %struct.Memory* @routine_movq_0x722c90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3c4)
  store %struct.Memory* %call_42b3c4, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 42b3cc	 Bytes: 4
  %loadMem_42b3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3cc = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3cc)
  store %struct.Memory* %call_42b3cc, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b3d0	 Bytes: 4
  %loadMem_42b3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3d0 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3d0)
  store %struct.Memory* %call_42b3d0, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 42b3d4	 Bytes: 4
  %loadMem_42b3d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3d4 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3d4)
  store %struct.Memory* %call_42b3d4, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %edi	 RIP: 42b3d8	 Bytes: 4
  %loadMem_42b3d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3d8 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3d8)
  store %struct.Memory* %call_42b3d8, %struct.Memory** %MEMORY

  ; Code: subl %edi, %esi	 RIP: 42b3dc	 Bytes: 2
  %loadMem_42b3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3dc = call %struct.Memory* @routine_subl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3dc)
  store %struct.Memory* %call_42b3dc, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 42b3de	 Bytes: 3
  %loadMem_42b3de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3de = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3de)
  store %struct.Memory* %call_42b3de, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 42b3e1	 Bytes: 4
  %loadMem_42b3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3e1 = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3e1)
  store %struct.Memory* %call_42b3e1, %struct.Memory** %MEMORY

  ; Code: addq -0x10(%rbp), %rax	 RIP: 42b3e5	 Bytes: 4
  %loadMem_42b3e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3e5 = call %struct.Memory* @routine_addq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3e5)
  store %struct.Memory* %call_42b3e5, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x10(%rbp)	 RIP: 42b3e9	 Bytes: 4
  %loadMem_42b3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3e9 = call %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3e9)
  store %struct.Memory* %call_42b3e9, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 42b3ed	 Bytes: 3
  %loadMem_42b3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3ed = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3ed)
  store %struct.Memory* %call_42b3ed, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b3f0	 Bytes: 3
  %loadMem_42b3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3f0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3f0)
  store %struct.Memory* %call_42b3f0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 42b3f3	 Bytes: 3
  %loadMem_42b3f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3f3 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3f3)
  store %struct.Memory* %call_42b3f3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b389	 RIP: 42b3f6	 Bytes: 5
  %loadMem_42b3f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3f6 = call %struct.Memory* @routine_jmpq_.L_42b389(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3f6, i64 -109, i64 5)
  store %struct.Memory* %call_42b3f6, %struct.Memory** %MEMORY

  br label %block_.L_42b389

  ; Code: .L_42b3fb:	 RIP: 42b3fb	 Bytes: 0
block_.L_42b3fb:

  ; Code: jmpq .L_42b400	 RIP: 42b3fb	 Bytes: 5
  %loadMem_42b3fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b3fb = call %struct.Memory* @routine_jmpq_.L_42b400(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b3fb, i64 5, i64 5)
  store %struct.Memory* %call_42b3fb, %struct.Memory** %MEMORY

  br label %block_.L_42b400

  ; Code: .L_42b400:	 RIP: 42b400	 Bytes: 0
block_.L_42b400:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 42b400	 Bytes: 3
  %loadMem_42b400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b400 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b400)
  store %struct.Memory* %call_42b400, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b403	 Bytes: 3
  %loadMem_42b403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b403 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b403)
  store %struct.Memory* %call_42b403, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 42b406	 Bytes: 3
  %loadMem_42b406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b406 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b406)
  store %struct.Memory* %call_42b406, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b36e	 RIP: 42b409	 Bytes: 5
  %loadMem_42b409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b409 = call %struct.Memory* @routine_jmpq_.L_42b36e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b409, i64 -155, i64 5)
  store %struct.Memory* %call_42b409, %struct.Memory** %MEMORY

  br label %block_.L_42b36e

  ; Code: .L_42b40e:	 RIP: 42b40e	 Bytes: 0
block_.L_42b40e:

  ; Code: movq 0x6cb900, %rax	 RIP: 42b40e	 Bytes: 8
  %loadMem_42b40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b40e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b40e)
  store %struct.Memory* %call_42b40e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11bfc(%rax)	 RIP: 42b416	 Bytes: 7
  %loadMem_42b416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b416 = call %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b416)
  store %struct.Memory* %call_42b416, %struct.Memory** %MEMORY

  ; Code: je .L_42b543	 RIP: 42b41d	 Bytes: 6
  %loadMem_42b41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b41d = call %struct.Memory* @routine_je_.L_42b543(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b41d, i8* %BRANCH_TAKEN, i64 294, i64 6, i64 6)
  store %struct.Memory* %call_42b41d, %struct.Memory** %MEMORY

  %loadBr_42b41d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b41d = icmp eq i8 %loadBr_42b41d, 1
  br i1 %cmpBr_42b41d, label %block_.L_42b543, label %block_42b423

block_42b423:
  ; Code: movq $0x0, -0x18(%rbp)	 RIP: 42b423	 Bytes: 8
  %loadMem_42b423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b423 = call %struct.Memory* @routine_movq__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b423)
  store %struct.Memory* %call_42b423, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x20(%rbp)	 RIP: 42b42b	 Bytes: 8
  %loadMem_42b42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b42b = call %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b42b)
  store %struct.Memory* %call_42b42b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 42b433	 Bytes: 7
  %loadMem_42b433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b433 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b433)
  store %struct.Memory* %call_42b433, %struct.Memory** %MEMORY

  ; Code: .L_42b43a:	 RIP: 42b43a	 Bytes: 0
  br label %block_.L_42b43a
block_.L_42b43a:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 42b43a	 Bytes: 3
  %loadMem_42b43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b43a = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b43a)
  store %struct.Memory* %call_42b43a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 42b43d	 Bytes: 8
  %loadMem_42b43d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b43d = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b43d)
  store %struct.Memory* %call_42b43d, %struct.Memory** %MEMORY

  ; Code: cmpl 0xcec(%rcx), %eax	 RIP: 42b445	 Bytes: 6
  %loadMem_42b445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b445 = call %struct.Memory* @routine_cmpl_0xcec__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b445)
  store %struct.Memory* %call_42b445, %struct.Memory** %MEMORY

  ; Code: jge .L_42b53e	 RIP: 42b44b	 Bytes: 6
  %loadMem_42b44b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b44b = call %struct.Memory* @routine_jge_.L_42b53e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b44b, i8* %BRANCH_TAKEN, i64 243, i64 6, i64 6)
  store %struct.Memory* %call_42b44b, %struct.Memory** %MEMORY

  %loadBr_42b44b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b44b = icmp eq i8 %loadBr_42b44b, 1
  br i1 %cmpBr_42b44b, label %block_.L_42b53e, label %block_42b451

block_42b451:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 42b451	 Bytes: 7
  %loadMem_42b451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b451 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b451)
  store %struct.Memory* %call_42b451, %struct.Memory** %MEMORY

  ; Code: .L_42b458:	 RIP: 42b458	 Bytes: 0
  br label %block_.L_42b458
block_.L_42b458:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 42b458	 Bytes: 3
  %loadMem_42b458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b458 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b458)
  store %struct.Memory* %call_42b458, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 42b45b	 Bytes: 8
  %loadMem_42b45b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b45b = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b45b)
  store %struct.Memory* %call_42b45b, %struct.Memory** %MEMORY

  ; Code: cmpl 0xce8(%rcx), %eax	 RIP: 42b463	 Bytes: 6
  %loadMem_42b463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b463 = call %struct.Memory* @routine_cmpl_0xce8__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b463)
  store %struct.Memory* %call_42b463, %struct.Memory** %MEMORY

  ; Code: jge .L_42b52b	 RIP: 42b469	 Bytes: 6
  %loadMem_42b469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b469 = call %struct.Memory* @routine_jge_.L_42b52b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b469, i8* %BRANCH_TAKEN, i64 194, i64 6, i64 6)
  store %struct.Memory* %call_42b469, %struct.Memory** %MEMORY

  %loadBr_42b469 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b469 = icmp eq i8 %loadBr_42b469, 1
  br i1 %cmpBr_42b469, label %block_.L_42b52b, label %block_42b46f

block_42b46f:
  ; Code: movq 0x6cb900, %rax	 RIP: 42b46f	 Bytes: 8
  %loadMem_42b46f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b46f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b46f)
  store %struct.Memory* %call_42b46f, %struct.Memory** %MEMORY

  ; Code: movq 0x11860(%rax), %rax	 RIP: 42b477	 Bytes: 7
  %loadMem_42b477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b477 = call %struct.Memory* @routine_movq_0x11860__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b477)
  store %struct.Memory* %call_42b477, %struct.Memory** %MEMORY

  ; Code: movq 0x6f6f90, %rcx	 RIP: 42b47e	 Bytes: 8
  %loadMem_42b47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b47e = call %struct.Memory* @routine_movq_0x6f6f90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b47e)
  store %struct.Memory* %call_42b47e, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 42b486	 Bytes: 3
  %loadMem_42b486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b486 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b486)
  store %struct.Memory* %call_42b486, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 42b489	 Bytes: 4
  %loadMem_42b489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b489 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b489)
  store %struct.Memory* %call_42b489, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b48d	 Bytes: 4
  %loadMem_42b48d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b48d = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b48d)
  store %struct.Memory* %call_42b48d, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 42b491	 Bytes: 4
  %loadMem_42b491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b491 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b491)
  store %struct.Memory* %call_42b491, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 42b495	 Bytes: 4
  %loadMem_42b495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b495 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b495)
  store %struct.Memory* %call_42b495, %struct.Memory** %MEMORY

  ; Code: movq 0x6f96f0, %rcx	 RIP: 42b499	 Bytes: 8
  %loadMem_42b499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b499 = call %struct.Memory* @routine_movq_0x6f96f0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b499)
  store %struct.Memory* %call_42b499, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 42b4a1	 Bytes: 3
  %loadMem_42b4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4a1 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4a1)
  store %struct.Memory* %call_42b4a1, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 42b4a4	 Bytes: 4
  %loadMem_42b4a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4a4 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4a4)
  store %struct.Memory* %call_42b4a4, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b4a8	 Bytes: 4
  %loadMem_42b4a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4a8 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4a8)
  store %struct.Memory* %call_42b4a8, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 42b4ac	 Bytes: 4
  %loadMem_42b4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4ac = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4ac)
  store %struct.Memory* %call_42b4ac, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %edi	 RIP: 42b4b0	 Bytes: 4
  %loadMem_42b4b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4b0 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4b0)
  store %struct.Memory* %call_42b4b0, %struct.Memory** %MEMORY

  ; Code: subl %edi, %esi	 RIP: 42b4b4	 Bytes: 2
  %loadMem_42b4b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4b4 = call %struct.Memory* @routine_subl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4b4)
  store %struct.Memory* %call_42b4b4, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 42b4b6	 Bytes: 3
  %loadMem_42b4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4b6 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4b6)
  store %struct.Memory* %call_42b4b6, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 42b4b9	 Bytes: 4
  %loadMem_42b4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4b9 = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4b9)
  store %struct.Memory* %call_42b4b9, %struct.Memory** %MEMORY

  ; Code: addq -0x18(%rbp), %rax	 RIP: 42b4bd	 Bytes: 4
  %loadMem_42b4bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4bd = call %struct.Memory* @routine_addq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4bd)
  store %struct.Memory* %call_42b4bd, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x18(%rbp)	 RIP: 42b4c1	 Bytes: 4
  %loadMem_42b4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4c1 = call %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4c1)
  store %struct.Memory* %call_42b4c1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42b4c5	 Bytes: 8
  %loadMem_42b4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4c5 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4c5)
  store %struct.Memory* %call_42b4c5, %struct.Memory** %MEMORY

  ; Code: movq 0x11860(%rax), %rax	 RIP: 42b4cd	 Bytes: 7
  %loadMem_42b4cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4cd = call %struct.Memory* @routine_movq_0x11860__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4cd)
  store %struct.Memory* %call_42b4cd, %struct.Memory** %MEMORY

  ; Code: movq 0x6f6f90, %rcx	 RIP: 42b4d4	 Bytes: 8
  %loadMem_42b4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4d4 = call %struct.Memory* @routine_movq_0x6f6f90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4d4)
  store %struct.Memory* %call_42b4d4, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 42b4dc	 Bytes: 4
  %loadMem_42b4dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4dc = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4dc)
  store %struct.Memory* %call_42b4dc, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 42b4e0	 Bytes: 4
  %loadMem_42b4e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4e0 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4e0)
  store %struct.Memory* %call_42b4e0, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b4e4	 Bytes: 4
  %loadMem_42b4e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4e4 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4e4)
  store %struct.Memory* %call_42b4e4, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 42b4e8	 Bytes: 4
  %loadMem_42b4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4e8 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4e8)
  store %struct.Memory* %call_42b4e8, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 42b4ec	 Bytes: 4
  %loadMem_42b4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4ec = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4ec)
  store %struct.Memory* %call_42b4ec, %struct.Memory** %MEMORY

  ; Code: movq 0x6f96f0, %rcx	 RIP: 42b4f0	 Bytes: 8
  %loadMem_42b4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4f0 = call %struct.Memory* @routine_movq_0x6f96f0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4f0)
  store %struct.Memory* %call_42b4f0, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 42b4f8	 Bytes: 4
  %loadMem_42b4f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4f8 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4f8)
  store %struct.Memory* %call_42b4f8, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 42b4fc	 Bytes: 4
  %loadMem_42b4fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b4fc = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b4fc)
  store %struct.Memory* %call_42b4fc, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b500	 Bytes: 4
  %loadMem_42b500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b500 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b500)
  store %struct.Memory* %call_42b500, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 42b504	 Bytes: 4
  %loadMem_42b504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b504 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b504)
  store %struct.Memory* %call_42b504, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %edi	 RIP: 42b508	 Bytes: 4
  %loadMem_42b508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b508 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b508)
  store %struct.Memory* %call_42b508, %struct.Memory** %MEMORY

  ; Code: subl %edi, %esi	 RIP: 42b50c	 Bytes: 2
  %loadMem_42b50c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b50c = call %struct.Memory* @routine_subl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b50c)
  store %struct.Memory* %call_42b50c, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 42b50e	 Bytes: 3
  %loadMem_42b50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b50e = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b50e)
  store %struct.Memory* %call_42b50e, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 42b511	 Bytes: 4
  %loadMem_42b511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b511 = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b511)
  store %struct.Memory* %call_42b511, %struct.Memory** %MEMORY

  ; Code: addq -0x20(%rbp), %rax	 RIP: 42b515	 Bytes: 4
  %loadMem_42b515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b515 = call %struct.Memory* @routine_addq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b515)
  store %struct.Memory* %call_42b515, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 42b519	 Bytes: 4
  %loadMem_42b519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b519 = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b519)
  store %struct.Memory* %call_42b519, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 42b51d	 Bytes: 3
  %loadMem_42b51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b51d = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b51d)
  store %struct.Memory* %call_42b51d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b520	 Bytes: 3
  %loadMem_42b520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b520 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b520)
  store %struct.Memory* %call_42b520, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 42b523	 Bytes: 3
  %loadMem_42b523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b523 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b523)
  store %struct.Memory* %call_42b523, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b458	 RIP: 42b526	 Bytes: 5
  %loadMem_42b526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b526 = call %struct.Memory* @routine_jmpq_.L_42b458(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b526, i64 -206, i64 5)
  store %struct.Memory* %call_42b526, %struct.Memory** %MEMORY

  br label %block_.L_42b458

  ; Code: .L_42b52b:	 RIP: 42b52b	 Bytes: 0
block_.L_42b52b:

  ; Code: jmpq .L_42b530	 RIP: 42b52b	 Bytes: 5
  %loadMem_42b52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b52b = call %struct.Memory* @routine_jmpq_.L_42b530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b52b, i64 5, i64 5)
  store %struct.Memory* %call_42b52b, %struct.Memory** %MEMORY

  br label %block_.L_42b530

  ; Code: .L_42b530:	 RIP: 42b530	 Bytes: 0
block_.L_42b530:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 42b530	 Bytes: 3
  %loadMem_42b530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b530 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b530)
  store %struct.Memory* %call_42b530, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b533	 Bytes: 3
  %loadMem_42b533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b533 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b533)
  store %struct.Memory* %call_42b533, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 42b536	 Bytes: 3
  %loadMem_42b536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b536 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b536)
  store %struct.Memory* %call_42b536, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b43a	 RIP: 42b539	 Bytes: 5
  %loadMem_42b539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b539 = call %struct.Memory* @routine_jmpq_.L_42b43a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b539, i64 -255, i64 5)
  store %struct.Memory* %call_42b539, %struct.Memory** %MEMORY

  br label %block_.L_42b43a

  ; Code: .L_42b53e:	 RIP: 42b53e	 Bytes: 0
block_.L_42b53e:

  ; Code: jmpq .L_42b543	 RIP: 42b53e	 Bytes: 5
  %loadMem_42b53e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b53e = call %struct.Memory* @routine_jmpq_.L_42b543(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b53e, i64 5, i64 5)
  store %struct.Memory* %call_42b53e, %struct.Memory** %MEMORY

  br label %block_.L_42b543

  ; Code: .L_42b543:	 RIP: 42b543	 Bytes: 0
block_.L_42b543:

  ; Code: jmpq .L_42b78b	 RIP: 42b543	 Bytes: 5
  %loadMem_42b543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b543 = call %struct.Memory* @routine_jmpq_.L_42b78b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b543, i64 584, i64 5)
  store %struct.Memory* %call_42b543, %struct.Memory** %MEMORY

  br label %block_.L_42b78b

  ; Code: .L_42b548:	 RIP: 42b548	 Bytes: 0
block_.L_42b548:

  ; Code: movq 0x710a40, %rax	 RIP: 42b548	 Bytes: 8
  %loadMem_42b548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b548 = call %struct.Memory* @routine_movq_0x710a40___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b548)
  store %struct.Memory* %call_42b548, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x726418	 RIP: 42b550	 Bytes: 8
  %loadMem_42b550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b550 = call %struct.Memory* @routine_movq__rax__0x726418(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b550)
  store %struct.Memory* %call_42b550, %struct.Memory** %MEMORY

  ; Code: movq 0x6ccf80, %rax	 RIP: 42b558	 Bytes: 8
  %loadMem_42b558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b558 = call %struct.Memory* @routine_movq_0x6ccf80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b558)
  store %struct.Memory* %call_42b558, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6f6f90	 RIP: 42b560	 Bytes: 8
  %loadMem_42b560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b560 = call %struct.Memory* @routine_movq__rax__0x6f6f90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b560)
  store %struct.Memory* %call_42b560, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 42b568	 Bytes: 8
  %loadMem_42b568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b568 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b568)
  store %struct.Memory* %call_42b568, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0xb40(%rax)	 RIP: 42b570	 Bytes: 7
  %loadMem_42b570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b570 = call %struct.Memory* @routine_cmpl__0x2__0xb40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b570)
  store %struct.Memory* %call_42b570, %struct.Memory** %MEMORY

  ; Code: jne .L_42b58d	 RIP: 42b577	 Bytes: 6
  %loadMem_42b577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b577 = call %struct.Memory* @routine_jne_.L_42b58d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b577, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_42b577, %struct.Memory** %MEMORY

  %loadBr_42b577 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b577 = icmp eq i8 %loadBr_42b577, 1
  br i1 %cmpBr_42b577, label %block_.L_42b58d, label %block_42b57d

block_42b57d:
  ; Code: movq 0x710a50, %rax	 RIP: 42b57d	 Bytes: 8
  %loadMem_42b57d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b57d = call %struct.Memory* @routine_movq_0x710a50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b57d)
  store %struct.Memory* %call_42b57d, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x70fcf0	 RIP: 42b585	 Bytes: 8
  %loadMem_42b585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b585 = call %struct.Memory* @routine_movq__rax__0x70fcf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b585)
  store %struct.Memory* %call_42b585, %struct.Memory** %MEMORY

  ; Code: .L_42b58d:	 RIP: 42b58d	 Bytes: 0
  br label %block_.L_42b58d
block_.L_42b58d:

  ; Code: movq $0x0, -0x10(%rbp)	 RIP: 42b58d	 Bytes: 8
  %loadMem_42b58d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b58d = call %struct.Memory* @routine_movq__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b58d)
  store %struct.Memory* %call_42b58d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 42b595	 Bytes: 7
  %loadMem_42b595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b595 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b595)
  store %struct.Memory* %call_42b595, %struct.Memory** %MEMORY

  ; Code: .L_42b59c:	 RIP: 42b59c	 Bytes: 0
  br label %block_.L_42b59c
block_.L_42b59c:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 42b59c	 Bytes: 3
  %loadMem_42b59c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b59c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b59c)
  store %struct.Memory* %call_42b59c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 42b59f	 Bytes: 8
  %loadMem_42b59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b59f = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b59f)
  store %struct.Memory* %call_42b59f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x40(%rcx), %eax	 RIP: 42b5a7	 Bytes: 3
  %loadMem_42b5a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5a7 = call %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5a7)
  store %struct.Memory* %call_42b5a7, %struct.Memory** %MEMORY

  ; Code: jge .L_42b643	 RIP: 42b5aa	 Bytes: 6
  %loadMem_42b5aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5aa = call %struct.Memory* @routine_jge_.L_42b643(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5aa, i8* %BRANCH_TAKEN, i64 153, i64 6, i64 6)
  store %struct.Memory* %call_42b5aa, %struct.Memory** %MEMORY

  %loadBr_42b5aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b5aa = icmp eq i8 %loadBr_42b5aa, 1
  br i1 %cmpBr_42b5aa, label %block_.L_42b643, label %block_42b5b0

block_42b5b0:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 42b5b0	 Bytes: 7
  %loadMem_42b5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5b0 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5b0)
  store %struct.Memory* %call_42b5b0, %struct.Memory** %MEMORY

  ; Code: .L_42b5b7:	 RIP: 42b5b7	 Bytes: 0
  br label %block_.L_42b5b7
block_.L_42b5b7:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 42b5b7	 Bytes: 3
  %loadMem_42b5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5b7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5b7)
  store %struct.Memory* %call_42b5b7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 42b5ba	 Bytes: 8
  %loadMem_42b5ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5ba = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5ba)
  store %struct.Memory* %call_42b5ba, %struct.Memory** %MEMORY

  ; Code: cmpl 0x44(%rcx), %eax	 RIP: 42b5c2	 Bytes: 3
  %loadMem_42b5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5c2 = call %struct.Memory* @routine_cmpl_0x44__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5c2)
  store %struct.Memory* %call_42b5c2, %struct.Memory** %MEMORY

  ; Code: jge .L_42b630	 RIP: 42b5c5	 Bytes: 6
  %loadMem_42b5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5c5 = call %struct.Memory* @routine_jge_.L_42b630(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5c5, i8* %BRANCH_TAKEN, i64 107, i64 6, i64 6)
  store %struct.Memory* %call_42b5c5, %struct.Memory** %MEMORY

  %loadBr_42b5c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b5c5 = icmp eq i8 %loadBr_42b5c5, 1
  br i1 %cmpBr_42b5c5, label %block_.L_42b630, label %block_42b5cb

block_42b5cb:
  ; Code: movq 0x6cb900, %rax	 RIP: 42b5cb	 Bytes: 8
  %loadMem_42b5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5cb = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5cb)
  store %struct.Memory* %call_42b5cb, %struct.Memory** %MEMORY

  ; Code: movq 0x11860(%rax), %rax	 RIP: 42b5d3	 Bytes: 7
  %loadMem_42b5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5d3 = call %struct.Memory* @routine_movq_0x11860__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5d3)
  store %struct.Memory* %call_42b5d3, %struct.Memory** %MEMORY

  ; Code: movq 0x726418, %rcx	 RIP: 42b5da	 Bytes: 8
  %loadMem_42b5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5da = call %struct.Memory* @routine_movq_0x726418___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5da)
  store %struct.Memory* %call_42b5da, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 42b5e2	 Bytes: 4
  %loadMem_42b5e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5e2 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5e2)
  store %struct.Memory* %call_42b5e2, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b5e6	 Bytes: 4
  %loadMem_42b5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5e6 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5e6)
  store %struct.Memory* %call_42b5e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 42b5ea	 Bytes: 4
  %loadMem_42b5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5ea = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5ea)
  store %struct.Memory* %call_42b5ea, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 42b5ee	 Bytes: 4
  %loadMem_42b5ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5ee = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5ee)
  store %struct.Memory* %call_42b5ee, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 42b5f2	 Bytes: 8
  %loadMem_42b5f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5f2 = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5f2)
  store %struct.Memory* %call_42b5f2, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rcx), %rcx	 RIP: 42b5fa	 Bytes: 7
  %loadMem_42b5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b5fa = call %struct.Memory* @routine_movq_0x1918__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b5fa)
  store %struct.Memory* %call_42b5fa, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 42b601	 Bytes: 4
  %loadMem_42b601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b601 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b601)
  store %struct.Memory* %call_42b601, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b605	 Bytes: 4
  %loadMem_42b605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b605 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b605)
  store %struct.Memory* %call_42b605, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 42b609	 Bytes: 4
  %loadMem_42b609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b609 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b609)
  store %struct.Memory* %call_42b609, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %edi	 RIP: 42b60d	 Bytes: 4
  %loadMem_42b60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b60d = call %struct.Memory* @routine_movzwl___rcx__rdx_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b60d)
  store %struct.Memory* %call_42b60d, %struct.Memory** %MEMORY

  ; Code: subl %edi, %esi	 RIP: 42b611	 Bytes: 2
  %loadMem_42b611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b611 = call %struct.Memory* @routine_subl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b611)
  store %struct.Memory* %call_42b611, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 42b613	 Bytes: 3
  %loadMem_42b613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b613 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b613)
  store %struct.Memory* %call_42b613, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 42b616	 Bytes: 4
  %loadMem_42b616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b616 = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b616)
  store %struct.Memory* %call_42b616, %struct.Memory** %MEMORY

  ; Code: addq -0x10(%rbp), %rax	 RIP: 42b61a	 Bytes: 4
  %loadMem_42b61a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b61a = call %struct.Memory* @routine_addq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b61a)
  store %struct.Memory* %call_42b61a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x10(%rbp)	 RIP: 42b61e	 Bytes: 4
  %loadMem_42b61e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b61e = call %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b61e)
  store %struct.Memory* %call_42b61e, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 42b622	 Bytes: 3
  %loadMem_42b622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b622 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b622)
  store %struct.Memory* %call_42b622, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b625	 Bytes: 3
  %loadMem_42b625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b625 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b625)
  store %struct.Memory* %call_42b625, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 42b628	 Bytes: 3
  %loadMem_42b628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b628 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b628)
  store %struct.Memory* %call_42b628, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b5b7	 RIP: 42b62b	 Bytes: 5
  %loadMem_42b62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b62b = call %struct.Memory* @routine_jmpq_.L_42b5b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b62b, i64 -116, i64 5)
  store %struct.Memory* %call_42b62b, %struct.Memory** %MEMORY

  br label %block_.L_42b5b7

  ; Code: .L_42b630:	 RIP: 42b630	 Bytes: 0
block_.L_42b630:

  ; Code: jmpq .L_42b635	 RIP: 42b630	 Bytes: 5
  %loadMem_42b630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b630 = call %struct.Memory* @routine_jmpq_.L_42b635(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b630, i64 5, i64 5)
  store %struct.Memory* %call_42b630, %struct.Memory** %MEMORY

  br label %block_.L_42b635

  ; Code: .L_42b635:	 RIP: 42b635	 Bytes: 0
block_.L_42b635:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 42b635	 Bytes: 3
  %loadMem_42b635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b635 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b635)
  store %struct.Memory* %call_42b635, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b638	 Bytes: 3
  %loadMem_42b638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b638 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b638)
  store %struct.Memory* %call_42b638, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 42b63b	 Bytes: 3
  %loadMem_42b63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b63b = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b63b)
  store %struct.Memory* %call_42b63b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b59c	 RIP: 42b63e	 Bytes: 5
  %loadMem_42b63e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b63e = call %struct.Memory* @routine_jmpq_.L_42b59c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b63e, i64 -162, i64 5)
  store %struct.Memory* %call_42b63e, %struct.Memory** %MEMORY

  br label %block_.L_42b59c

  ; Code: .L_42b643:	 RIP: 42b643	 Bytes: 0
block_.L_42b643:

  ; Code: movq 0x6cb900, %rax	 RIP: 42b643	 Bytes: 8
  %loadMem_42b643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b643 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b643)
  store %struct.Memory* %call_42b643, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11bfc(%rax)	 RIP: 42b64b	 Bytes: 7
  %loadMem_42b64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b64b = call %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b64b)
  store %struct.Memory* %call_42b64b, %struct.Memory** %MEMORY

  ; Code: je .L_42b786	 RIP: 42b652	 Bytes: 6
  %loadMem_42b652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b652 = call %struct.Memory* @routine_je_.L_42b786(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b652, i8* %BRANCH_TAKEN, i64 308, i64 6, i64 6)
  store %struct.Memory* %call_42b652, %struct.Memory** %MEMORY

  %loadBr_42b652 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b652 = icmp eq i8 %loadBr_42b652, 1
  br i1 %cmpBr_42b652, label %block_.L_42b786, label %block_42b658

block_42b658:
  ; Code: movq $0x0, -0x18(%rbp)	 RIP: 42b658	 Bytes: 8
  %loadMem_42b658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b658 = call %struct.Memory* @routine_movq__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b658)
  store %struct.Memory* %call_42b658, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x20(%rbp)	 RIP: 42b660	 Bytes: 8
  %loadMem_42b660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b660 = call %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b660)
  store %struct.Memory* %call_42b660, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 42b668	 Bytes: 7
  %loadMem_42b668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b668 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b668)
  store %struct.Memory* %call_42b668, %struct.Memory** %MEMORY

  ; Code: .L_42b66f:	 RIP: 42b66f	 Bytes: 0
  br label %block_.L_42b66f
block_.L_42b66f:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 42b66f	 Bytes: 3
  %loadMem_42b66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b66f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b66f)
  store %struct.Memory* %call_42b66f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 42b672	 Bytes: 8
  %loadMem_42b672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b672 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b672)
  store %struct.Memory* %call_42b672, %struct.Memory** %MEMORY

  ; Code: cmpl 0xcec(%rcx), %eax	 RIP: 42b67a	 Bytes: 6
  %loadMem_42b67a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b67a = call %struct.Memory* @routine_cmpl_0xcec__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b67a)
  store %struct.Memory* %call_42b67a, %struct.Memory** %MEMORY

  ; Code: jge .L_42b781	 RIP: 42b680	 Bytes: 6
  %loadMem_42b680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b680 = call %struct.Memory* @routine_jge_.L_42b781(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b680, i8* %BRANCH_TAKEN, i64 257, i64 6, i64 6)
  store %struct.Memory* %call_42b680, %struct.Memory** %MEMORY

  %loadBr_42b680 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b680 = icmp eq i8 %loadBr_42b680, 1
  br i1 %cmpBr_42b680, label %block_.L_42b781, label %block_42b686

block_42b686:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 42b686	 Bytes: 7
  %loadMem_42b686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b686 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b686)
  store %struct.Memory* %call_42b686, %struct.Memory** %MEMORY

  ; Code: .L_42b68d:	 RIP: 42b68d	 Bytes: 0
  br label %block_.L_42b68d
block_.L_42b68d:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 42b68d	 Bytes: 3
  %loadMem_42b68d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b68d = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b68d)
  store %struct.Memory* %call_42b68d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 42b690	 Bytes: 8
  %loadMem_42b690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b690 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b690)
  store %struct.Memory* %call_42b690, %struct.Memory** %MEMORY

  ; Code: cmpl 0xce8(%rcx), %eax	 RIP: 42b698	 Bytes: 6
  %loadMem_42b698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b698 = call %struct.Memory* @routine_cmpl_0xce8__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b698)
  store %struct.Memory* %call_42b698, %struct.Memory** %MEMORY

  ; Code: jge .L_42b76e	 RIP: 42b69e	 Bytes: 6
  %loadMem_42b69e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b69e = call %struct.Memory* @routine_jge_.L_42b76e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b69e, i8* %BRANCH_TAKEN, i64 208, i64 6, i64 6)
  store %struct.Memory* %call_42b69e, %struct.Memory** %MEMORY

  %loadBr_42b69e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b69e = icmp eq i8 %loadBr_42b69e, 1
  br i1 %cmpBr_42b69e, label %block_.L_42b76e, label %block_42b6a4

block_42b6a4:
  ; Code: movq 0x6cb900, %rax	 RIP: 42b6a4	 Bytes: 8
  %loadMem_42b6a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6a4 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6a4)
  store %struct.Memory* %call_42b6a4, %struct.Memory** %MEMORY

  ; Code: movq 0x11860(%rax), %rax	 RIP: 42b6ac	 Bytes: 7
  %loadMem_42b6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6ac = call %struct.Memory* @routine_movq_0x11860__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6ac)
  store %struct.Memory* %call_42b6ac, %struct.Memory** %MEMORY

  ; Code: movq 0x6f6f90, %rcx	 RIP: 42b6b3	 Bytes: 8
  %loadMem_42b6b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6b3 = call %struct.Memory* @routine_movq_0x6f6f90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6b3)
  store %struct.Memory* %call_42b6b3, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 42b6bb	 Bytes: 3
  %loadMem_42b6bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6bb = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6bb)
  store %struct.Memory* %call_42b6bb, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 42b6be	 Bytes: 4
  %loadMem_42b6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6be = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6be)
  store %struct.Memory* %call_42b6be, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b6c2	 Bytes: 4
  %loadMem_42b6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6c2 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6c2)
  store %struct.Memory* %call_42b6c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 42b6c6	 Bytes: 4
  %loadMem_42b6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6c6 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6c6)
  store %struct.Memory* %call_42b6c6, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 42b6ca	 Bytes: 4
  %loadMem_42b6ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6ca = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6ca)
  store %struct.Memory* %call_42b6ca, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 42b6ce	 Bytes: 8
  %loadMem_42b6ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6ce = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6ce)
  store %struct.Memory* %call_42b6ce, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rcx), %rcx	 RIP: 42b6d6	 Bytes: 7
  %loadMem_42b6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6d6 = call %struct.Memory* @routine_movq_0x1940__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6d6)
  store %struct.Memory* %call_42b6d6, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 42b6dd	 Bytes: 3
  %loadMem_42b6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6dd = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6dd)
  store %struct.Memory* %call_42b6dd, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 42b6e0	 Bytes: 4
  %loadMem_42b6e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6e0 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6e0)
  store %struct.Memory* %call_42b6e0, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b6e4	 Bytes: 4
  %loadMem_42b6e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6e4 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6e4)
  store %struct.Memory* %call_42b6e4, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 42b6e8	 Bytes: 4
  %loadMem_42b6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6e8 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6e8)
  store %struct.Memory* %call_42b6e8, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %edi	 RIP: 42b6ec	 Bytes: 4
  %loadMem_42b6ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6ec = call %struct.Memory* @routine_movzwl___rcx__rdx_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6ec)
  store %struct.Memory* %call_42b6ec, %struct.Memory** %MEMORY

  ; Code: subl %edi, %esi	 RIP: 42b6f0	 Bytes: 2
  %loadMem_42b6f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6f0 = call %struct.Memory* @routine_subl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6f0)
  store %struct.Memory* %call_42b6f0, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 42b6f2	 Bytes: 3
  %loadMem_42b6f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6f2 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6f2)
  store %struct.Memory* %call_42b6f2, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 42b6f5	 Bytes: 4
  %loadMem_42b6f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6f5 = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6f5)
  store %struct.Memory* %call_42b6f5, %struct.Memory** %MEMORY

  ; Code: addq -0x18(%rbp), %rax	 RIP: 42b6f9	 Bytes: 4
  %loadMem_42b6f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6f9 = call %struct.Memory* @routine_addq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6f9)
  store %struct.Memory* %call_42b6f9, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x18(%rbp)	 RIP: 42b6fd	 Bytes: 4
  %loadMem_42b6fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b6fd = call %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b6fd)
  store %struct.Memory* %call_42b6fd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42b701	 Bytes: 8
  %loadMem_42b701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b701 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b701)
  store %struct.Memory* %call_42b701, %struct.Memory** %MEMORY

  ; Code: movq 0x11860(%rax), %rax	 RIP: 42b709	 Bytes: 7
  %loadMem_42b709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b709 = call %struct.Memory* @routine_movq_0x11860__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b709)
  store %struct.Memory* %call_42b709, %struct.Memory** %MEMORY

  ; Code: movq 0x6f6f90, %rcx	 RIP: 42b710	 Bytes: 8
  %loadMem_42b710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b710 = call %struct.Memory* @routine_movq_0x6f6f90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b710)
  store %struct.Memory* %call_42b710, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 42b718	 Bytes: 4
  %loadMem_42b718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b718 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b718)
  store %struct.Memory* %call_42b718, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 42b71c	 Bytes: 4
  %loadMem_42b71c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b71c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b71c)
  store %struct.Memory* %call_42b71c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b720	 Bytes: 4
  %loadMem_42b720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b720 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b720)
  store %struct.Memory* %call_42b720, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 42b724	 Bytes: 4
  %loadMem_42b724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b724 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b724)
  store %struct.Memory* %call_42b724, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 42b728	 Bytes: 4
  %loadMem_42b728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b728 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b728)
  store %struct.Memory* %call_42b728, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 42b72c	 Bytes: 8
  %loadMem_42b72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b72c = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b72c)
  store %struct.Memory* %call_42b72c, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rcx), %rcx	 RIP: 42b734	 Bytes: 7
  %loadMem_42b734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b734 = call %struct.Memory* @routine_movq_0x1940__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b734)
  store %struct.Memory* %call_42b734, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 42b73b	 Bytes: 4
  %loadMem_42b73b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b73b = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b73b)
  store %struct.Memory* %call_42b73b, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 42b73f	 Bytes: 4
  %loadMem_42b73f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b73f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b73f)
  store %struct.Memory* %call_42b73f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 42b743	 Bytes: 4
  %loadMem_42b743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b743 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b743)
  store %struct.Memory* %call_42b743, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 42b747	 Bytes: 4
  %loadMem_42b747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b747 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b747)
  store %struct.Memory* %call_42b747, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %edi	 RIP: 42b74b	 Bytes: 4
  %loadMem_42b74b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b74b = call %struct.Memory* @routine_movzwl___rcx__rdx_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b74b)
  store %struct.Memory* %call_42b74b, %struct.Memory** %MEMORY

  ; Code: subl %edi, %esi	 RIP: 42b74f	 Bytes: 2
  %loadMem_42b74f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b74f = call %struct.Memory* @routine_subl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b74f)
  store %struct.Memory* %call_42b74f, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 42b751	 Bytes: 3
  %loadMem_42b751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b751 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b751)
  store %struct.Memory* %call_42b751, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 42b754	 Bytes: 4
  %loadMem_42b754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b754 = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b754)
  store %struct.Memory* %call_42b754, %struct.Memory** %MEMORY

  ; Code: addq -0x20(%rbp), %rax	 RIP: 42b758	 Bytes: 4
  %loadMem_42b758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b758 = call %struct.Memory* @routine_addq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b758)
  store %struct.Memory* %call_42b758, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 42b75c	 Bytes: 4
  %loadMem_42b75c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b75c = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b75c)
  store %struct.Memory* %call_42b75c, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 42b760	 Bytes: 3
  %loadMem_42b760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b760 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b760)
  store %struct.Memory* %call_42b760, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b763	 Bytes: 3
  %loadMem_42b763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b763 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b763)
  store %struct.Memory* %call_42b763, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 42b766	 Bytes: 3
  %loadMem_42b766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b766 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b766)
  store %struct.Memory* %call_42b766, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b68d	 RIP: 42b769	 Bytes: 5
  %loadMem_42b769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b769 = call %struct.Memory* @routine_jmpq_.L_42b68d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b769, i64 -220, i64 5)
  store %struct.Memory* %call_42b769, %struct.Memory** %MEMORY

  br label %block_.L_42b68d

  ; Code: .L_42b76e:	 RIP: 42b76e	 Bytes: 0
block_.L_42b76e:

  ; Code: jmpq .L_42b773	 RIP: 42b76e	 Bytes: 5
  %loadMem_42b76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b76e = call %struct.Memory* @routine_jmpq_.L_42b773(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b76e, i64 5, i64 5)
  store %struct.Memory* %call_42b76e, %struct.Memory** %MEMORY

  br label %block_.L_42b773

  ; Code: .L_42b773:	 RIP: 42b773	 Bytes: 0
block_.L_42b773:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 42b773	 Bytes: 3
  %loadMem_42b773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b773 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b773)
  store %struct.Memory* %call_42b773, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42b776	 Bytes: 3
  %loadMem_42b776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b776 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b776)
  store %struct.Memory* %call_42b776, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 42b779	 Bytes: 3
  %loadMem_42b779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b779 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b779)
  store %struct.Memory* %call_42b779, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b66f	 RIP: 42b77c	 Bytes: 5
  %loadMem_42b77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b77c = call %struct.Memory* @routine_jmpq_.L_42b66f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b77c, i64 -269, i64 5)
  store %struct.Memory* %call_42b77c, %struct.Memory** %MEMORY

  br label %block_.L_42b66f

  ; Code: .L_42b781:	 RIP: 42b781	 Bytes: 0
block_.L_42b781:

  ; Code: jmpq .L_42b786	 RIP: 42b781	 Bytes: 5
  %loadMem_42b781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b781 = call %struct.Memory* @routine_jmpq_.L_42b786(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b781, i64 5, i64 5)
  store %struct.Memory* %call_42b781, %struct.Memory** %MEMORY

  br label %block_.L_42b786

  ; Code: .L_42b786:	 RIP: 42b786	 Bytes: 0
block_.L_42b786:

  ; Code: jmpq .L_42b78b	 RIP: 42b786	 Bytes: 5
  %loadMem_42b786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b786 = call %struct.Memory* @routine_jmpq_.L_42b78b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b786, i64 5, i64 5)
  store %struct.Memory* %call_42b786, %struct.Memory** %MEMORY

  br label %block_.L_42b78b

  ; Code: .L_42b78b:	 RIP: 42b78b	 Bytes: 0
block_.L_42b78b:

  ; Code: cmpq $0x0, -0x10(%rbp)	 RIP: 42b78b	 Bytes: 5
  %loadMem_42b78b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b78b = call %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b78b)
  store %struct.Memory* %call_42b78b, %struct.Memory** %MEMORY

  ; Code: jne .L_42b79e	 RIP: 42b790	 Bytes: 6
  %loadMem_42b790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b790 = call %struct.Memory* @routine_jne_.L_42b79e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b790, i8* %BRANCH_TAKEN, i64 14, i64 6, i64 6)
  store %struct.Memory* %call_42b790, %struct.Memory** %MEMORY

  %loadBr_42b790 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b790 = icmp eq i8 %loadBr_42b790, 1
  br i1 %cmpBr_42b790, label %block_.L_42b79e, label %block_42b796

block_42b796:
  ; Code: movq $0x1, -0x10(%rbp)	 RIP: 42b796	 Bytes: 8
  %loadMem_42b796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b796 = call %struct.Memory* @routine_movq__0x1__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b796)
  store %struct.Memory* %call_42b796, %struct.Memory** %MEMORY

  ; Code: .L_42b79e:	 RIP: 42b79e	 Bytes: 0
  br label %block_.L_42b79e
block_.L_42b79e:

  ; Code: cmpq $0x0, -0x18(%rbp)	 RIP: 42b79e	 Bytes: 5
  %loadMem_42b79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b79e = call %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b79e)
  store %struct.Memory* %call_42b79e, %struct.Memory** %MEMORY

  ; Code: jne .L_42b7b1	 RIP: 42b7a3	 Bytes: 6
  %loadMem_42b7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7a3 = call %struct.Memory* @routine_jne_.L_42b7b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7a3, i8* %BRANCH_TAKEN, i64 14, i64 6, i64 6)
  store %struct.Memory* %call_42b7a3, %struct.Memory** %MEMORY

  %loadBr_42b7a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b7a3 = icmp eq i8 %loadBr_42b7a3, 1
  br i1 %cmpBr_42b7a3, label %block_.L_42b7b1, label %block_42b7a9

block_42b7a9:
  ; Code: movq $0x1, -0x18(%rbp)	 RIP: 42b7a9	 Bytes: 8
  %loadMem_42b7a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7a9 = call %struct.Memory* @routine_movq__0x1__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7a9)
  store %struct.Memory* %call_42b7a9, %struct.Memory** %MEMORY

  ; Code: .L_42b7b1:	 RIP: 42b7b1	 Bytes: 0
  br label %block_.L_42b7b1
block_.L_42b7b1:

  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 42b7b1	 Bytes: 5
  %loadMem_42b7b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7b1 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7b1)
  store %struct.Memory* %call_42b7b1, %struct.Memory** %MEMORY

  ; Code: jne .L_42b7c4	 RIP: 42b7b6	 Bytes: 6
  %loadMem_42b7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7b6 = call %struct.Memory* @routine_jne_.L_42b7c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7b6, i8* %BRANCH_TAKEN, i64 14, i64 6, i64 6)
  store %struct.Memory* %call_42b7b6, %struct.Memory** %MEMORY

  %loadBr_42b7b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b7b6 = icmp eq i8 %loadBr_42b7b6, 1
  br i1 %cmpBr_42b7b6, label %block_.L_42b7c4, label %block_42b7bc

block_42b7bc:
  ; Code: movq $0x1, -0x20(%rbp)	 RIP: 42b7bc	 Bytes: 8
  %loadMem_42b7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7bc = call %struct.Memory* @routine_movq__0x1__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7bc)
  store %struct.Memory* %call_42b7bc, %struct.Memory** %MEMORY

  ; Code: .L_42b7c4:	 RIP: 42b7c4	 Bytes: 0
  br label %block_.L_42b7c4
block_.L_42b7c4:

  ; Code: cmpq $0x0, -0x10(%rbp)	 RIP: 42b7c4	 Bytes: 5
  %loadMem_42b7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7c4 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7c4)
  store %struct.Memory* %call_42b7c4, %struct.Memory** %MEMORY

  ; Code: je .L_42b8c6	 RIP: 42b7c9	 Bytes: 6
  %loadMem_42b7c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7c9 = call %struct.Memory* @routine_je_.L_42b8c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7c9, i8* %BRANCH_TAKEN, i64 253, i64 6, i64 6)
  store %struct.Memory* %call_42b7c9, %struct.Memory** %MEMORY

  %loadBr_42b7c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b7c9 = icmp eq i8 %loadBr_42b7c9, 1
  br i1 %cmpBr_42b7c9, label %block_.L_42b8c6, label %block_42b7cf

block_42b7cf:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 42b7cf	 Bytes: 3
  %loadMem_42b7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7cf = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7cf)
  store %struct.Memory* %call_42b7cf, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 42b7d2	 Bytes: 2
  %loadMem_42b7d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7d2 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7d2)
  store %struct.Memory* %call_42b7d2, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq %rcx, %xmm0	 RIP: 42b7d4	 Bytes: 5
  %loadMem_42b7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7d4 = call %struct.Memory* @routine_cvtsi2sdq__rcx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7d4)
  store %struct.Memory* %call_42b7d4, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x24(%rbp), %xmm1	 RIP: 42b7d9	 Bytes: 5
  %loadMem_42b7d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7d9 = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x24__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7d9)
  store %struct.Memory* %call_42b7d9, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq -0x10(%rbp), %xmm2	 RIP: 42b7de	 Bytes: 6
  %loadMem_42b7de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7de = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x10__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7de)
  store %struct.Memory* %call_42b7de, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 42b7e4	 Bytes: 4
  %loadMem_42b7e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7e4 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7e4)
  store %struct.Memory* %call_42b7e4, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42b7e8	 Bytes: 4
  %loadMem_42b7e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7e8 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7e8)
  store %struct.Memory* %call_42b7e8, %struct.Memory** %MEMORY

  ; Code: callq .log10_plt	 RIP: 42b7ec	 Bytes: 5
  %loadMem1_42b7ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b7ec = call %struct.Memory* @routine_callq_.log10_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b7ec, i64 -173804, i64 5, i64 5)
  store %struct.Memory* %call1_42b7ec, %struct.Memory** %MEMORY

  %loadMem2_42b7ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b7ec = load i64, i64* %3
  %call2_42b7ec = call %struct.Memory* @sub_401100.log10_plt(%struct.State* %0, i64  %loadPC_42b7ec, %struct.Memory* %loadMem2_42b7ec)
  store %struct.Memory* %call2_42b7ec, %struct.Memory** %MEMORY

  ; Code: movsd 0x8609f(%rip), %xmm1	 RIP: 42b7f1	 Bytes: 8
  %loadMem_42b7f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7f1 = call %struct.Memory* @routine_movsd_0x8609f__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7f1)
  store %struct.Memory* %call_42b7f1, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm0, %xmm1	 RIP: 42b7f9	 Bytes: 4
  %loadMem_42b7f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7f9 = call %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7f9)
  store %struct.Memory* %call_42b7f9, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm1, %xmm0	 RIP: 42b7fd	 Bytes: 4
  %loadMem_42b7fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b7fd = call %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b7fd)
  store %struct.Memory* %call_42b7fd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rcx	 RIP: 42b801	 Bytes: 8
  %loadMem_42b801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b801 = call %struct.Memory* @routine_movq_0x6cb910___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b801)
  store %struct.Memory* %call_42b801, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rcx)	 RIP: 42b809	 Bytes: 4
  %loadMem_42b809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b809 = call %struct.Memory* @routine_movss__xmm0____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b809)
  store %struct.Memory* %call_42b809, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 42b80d	 Bytes: 8
  %loadMem_42b80d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b80d = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b80d)
  store %struct.Memory* %call_42b80d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11bfc(%rcx)	 RIP: 42b815	 Bytes: 7
  %loadMem_42b815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b815 = call %struct.Memory* @routine_cmpl__0x0__0x11bfc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b815)
  store %struct.Memory* %call_42b815, %struct.Memory** %MEMORY

  ; Code: je .L_42b8a4	 RIP: 42b81c	 Bytes: 6
  %loadMem_42b81c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b81c = call %struct.Memory* @routine_je_.L_42b8a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b81c, i8* %BRANCH_TAKEN, i64 136, i64 6, i64 6)
  store %struct.Memory* %call_42b81c, %struct.Memory** %MEMORY

  %loadBr_42b81c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b81c = icmp eq i8 %loadBr_42b81c, 1
  br i1 %cmpBr_42b81c, label %block_.L_42b8a4, label %block_42b822

block_42b822:
  ; Code: movl -0x30(%rbp), %eax	 RIP: 42b822	 Bytes: 3
  %loadMem_42b822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b822 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b822)
  store %struct.Memory* %call_42b822, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 42b825	 Bytes: 2
  %loadMem_42b825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b825 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b825)
  store %struct.Memory* %call_42b825, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq %rcx, %xmm0	 RIP: 42b827	 Bytes: 5
  %loadMem_42b827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b827 = call %struct.Memory* @routine_cvtsi2sdq__rcx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b827)
  store %struct.Memory* %call_42b827, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x28(%rbp), %xmm1	 RIP: 42b82c	 Bytes: 5
  %loadMem_42b82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b82c = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b82c)
  store %struct.Memory* %call_42b82c, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq -0x18(%rbp), %xmm2	 RIP: 42b831	 Bytes: 6
  %loadMem_42b831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b831 = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x18__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b831)
  store %struct.Memory* %call_42b831, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 42b837	 Bytes: 4
  %loadMem_42b837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b837 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b837)
  store %struct.Memory* %call_42b837, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42b83b	 Bytes: 4
  %loadMem_42b83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b83b = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b83b)
  store %struct.Memory* %call_42b83b, %struct.Memory** %MEMORY

  ; Code: callq .log10_plt	 RIP: 42b83f	 Bytes: 5
  %loadMem1_42b83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b83f = call %struct.Memory* @routine_callq_.log10_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b83f, i64 -173887, i64 5, i64 5)
  store %struct.Memory* %call1_42b83f, %struct.Memory** %MEMORY

  %loadMem2_42b83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b83f = load i64, i64* %3
  %call2_42b83f = call %struct.Memory* @sub_401100.log10_plt(%struct.State* %0, i64  %loadPC_42b83f, %struct.Memory* %loadMem2_42b83f)
  store %struct.Memory* %call2_42b83f, %struct.Memory** %MEMORY

  ; Code: movsd 0x8604c(%rip), %xmm1	 RIP: 42b844	 Bytes: 8
  %loadMem_42b844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b844 = call %struct.Memory* @routine_movsd_0x8604c__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b844)
  store %struct.Memory* %call_42b844, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42b84c	 Bytes: 4
  %loadMem_42b84c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b84c = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b84c)
  store %struct.Memory* %call_42b84c, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42b850	 Bytes: 4
  %loadMem_42b850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b850 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b850)
  store %struct.Memory* %call_42b850, %struct.Memory** %MEMORY

  ; Code: movq 0x2a00b5(%rip), %rcx	 RIP: 42b854	 Bytes: 7
  %loadMem_42b854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b854 = call %struct.Memory* @routine_movq_0x2a00b5__rip____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b854)
  store %struct.Memory* %call_42b854, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x4(%rcx)	 RIP: 42b85b	 Bytes: 5
  %loadMem_42b85b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b85b = call %struct.Memory* @routine_movss__xmm0__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b85b)
  store %struct.Memory* %call_42b85b, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 42b860	 Bytes: 3
  %loadMem_42b860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b860 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b860)
  store %struct.Memory* %call_42b860, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 42b863	 Bytes: 2
  %loadMem_42b863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b863 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b863)
  store %struct.Memory* %call_42b863, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq %rcx, %xmm0	 RIP: 42b865	 Bytes: 5
  %loadMem_42b865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b865 = call %struct.Memory* @routine_cvtsi2sdq__rcx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b865)
  store %struct.Memory* %call_42b865, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x28(%rbp), %xmm1	 RIP: 42b86a	 Bytes: 5
  %loadMem_42b86a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b86a = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x28__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b86a)
  store %struct.Memory* %call_42b86a, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq -0x20(%rbp), %xmm2	 RIP: 42b86f	 Bytes: 6
  %loadMem_42b86f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b86f = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x20__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b86f)
  store %struct.Memory* %call_42b86f, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 42b875	 Bytes: 4
  %loadMem_42b875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b875 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b875)
  store %struct.Memory* %call_42b875, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 42b879	 Bytes: 4
  %loadMem_42b879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b879 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b879)
  store %struct.Memory* %call_42b879, %struct.Memory** %MEMORY

  ; Code: callq .log10_plt	 RIP: 42b87d	 Bytes: 5
  %loadMem1_42b87d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42b87d = call %struct.Memory* @routine_callq_.log10_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42b87d, i64 -173949, i64 5, i64 5)
  store %struct.Memory* %call1_42b87d, %struct.Memory** %MEMORY

  %loadMem2_42b87d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42b87d = load i64, i64* %3
  %call2_42b87d = call %struct.Memory* @sub_401100.log10_plt(%struct.State* %0, i64  %loadPC_42b87d, %struct.Memory* %loadMem2_42b87d)
  store %struct.Memory* %call2_42b87d, %struct.Memory** %MEMORY

  ; Code: movsd 0x8600e(%rip), %xmm1	 RIP: 42b882	 Bytes: 8
  %loadMem_42b882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b882 = call %struct.Memory* @routine_movsd_0x8600e__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b882)
  store %struct.Memory* %call_42b882, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm0, %xmm1	 RIP: 42b88a	 Bytes: 4
  %loadMem_42b88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b88a = call %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b88a)
  store %struct.Memory* %call_42b88a, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm1, %xmm0	 RIP: 42b88e	 Bytes: 4
  %loadMem_42b88e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b88e = call %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b88e)
  store %struct.Memory* %call_42b88e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rcx	 RIP: 42b892	 Bytes: 8
  %loadMem_42b892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b892 = call %struct.Memory* @routine_movq_0x6cb910___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b892)
  store %struct.Memory* %call_42b892, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x8(%rcx)	 RIP: 42b89a	 Bytes: 5
  %loadMem_42b89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b89a = call %struct.Memory* @routine_movss__xmm0__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b89a)
  store %struct.Memory* %call_42b89a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42b8c1	 RIP: 42b89f	 Bytes: 5
  %loadMem_42b89f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b89f = call %struct.Memory* @routine_jmpq_.L_42b8c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b89f, i64 34, i64 5)
  store %struct.Memory* %call_42b89f, %struct.Memory** %MEMORY

  br label %block_.L_42b8c1

  ; Code: .L_42b8a4:	 RIP: 42b8a4	 Bytes: 0
block_.L_42b8a4:

  ; Code: xorps %xmm0, %xmm0	 RIP: 42b8a4	 Bytes: 3
  %loadMem_42b8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8a4 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8a4)
  store %struct.Memory* %call_42b8a4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b8a7	 Bytes: 8
  %loadMem_42b8a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8a7 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8a7)
  store %struct.Memory* %call_42b8a7, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x4(%rax)	 RIP: 42b8af	 Bytes: 5
  %loadMem_42b8af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8af = call %struct.Memory* @routine_movss__xmm0__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8af)
  store %struct.Memory* %call_42b8af, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b8b4	 Bytes: 8
  %loadMem_42b8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8b4 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8b4)
  store %struct.Memory* %call_42b8b4, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x8(%rax)	 RIP: 42b8bc	 Bytes: 5
  %loadMem_42b8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8bc = call %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8bc)
  store %struct.Memory* %call_42b8bc, %struct.Memory** %MEMORY

  ; Code: .L_42b8c1:	 RIP: 42b8c1	 Bytes: 0
  br label %block_.L_42b8c1
block_.L_42b8c1:

  ; Code: jmpq .L_42b8c6	 RIP: 42b8c1	 Bytes: 5
  %loadMem_42b8c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8c1 = call %struct.Memory* @routine_jmpq_.L_42b8c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8c1, i64 5, i64 5)
  store %struct.Memory* %call_42b8c1, %struct.Memory** %MEMORY

  br label %block_.L_42b8c6

  ; Code: .L_42b8c6:	 RIP: 42b8c6	 Bytes: 0
block_.L_42b8c6:

  ; Code: movq 0x6cb900, %rax	 RIP: 42b8c6	 Bytes: 8
  %loadMem_42b8c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8c6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8c6)
  store %struct.Memory* %call_42b8c6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax)	 RIP: 42b8ce	 Bytes: 3
  %loadMem_42b8ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8ce = call %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8ce)
  store %struct.Memory* %call_42b8ce, %struct.Memory** %MEMORY

  ; Code: jne .L_42b9ef	 RIP: 42b8d1	 Bytes: 6
  %loadMem_42b8d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8d1 = call %struct.Memory* @routine_jne_.L_42b9ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8d1, i8* %BRANCH_TAKEN, i64 286, i64 6, i64 6)
  store %struct.Memory* %call_42b8d1, %struct.Memory** %MEMORY

  %loadBr_42b8d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42b8d1 = icmp eq i8 %loadBr_42b8d1, 1
  br i1 %cmpBr_42b8d1, label %block_.L_42b9ef, label %block_42b8d7

block_42b8d7:
  ; Code: xorps %xmm0, %xmm0	 RIP: 42b8d7	 Bytes: 3
  %loadMem_42b8d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8d7 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8d7)
  store %struct.Memory* %call_42b8d7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b8da	 Bytes: 8
  %loadMem_42b8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8da = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8da)
  store %struct.Memory* %call_42b8da, %struct.Memory** %MEMORY

  ; Code: movss (%rax), %xmm1	 RIP: 42b8e2	 Bytes: 4
  %loadMem_42b8e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8e2 = call %struct.Memory* @routine_movss___rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8e2)
  store %struct.Memory* %call_42b8e2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b8e6	 Bytes: 8
  %loadMem_42b8e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8e6 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8e6)
  store %struct.Memory* %call_42b8e6, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, 0xc(%rax)	 RIP: 42b8ee	 Bytes: 5
  %loadMem_42b8ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8ee = call %struct.Memory* @routine_movss__xmm1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8ee)
  store %struct.Memory* %call_42b8ee, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b8f3	 Bytes: 8
  %loadMem_42b8f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8f3 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8f3)
  store %struct.Memory* %call_42b8f3, %struct.Memory** %MEMORY

  ; Code: movss 0x4(%rax), %xmm1	 RIP: 42b8fb	 Bytes: 5
  %loadMem_42b8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b8fb = call %struct.Memory* @routine_movss_0x4__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b8fb)
  store %struct.Memory* %call_42b8fb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b900	 Bytes: 8
  %loadMem_42b900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b900 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b900)
  store %struct.Memory* %call_42b900, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, 0x10(%rax)	 RIP: 42b908	 Bytes: 5
  %loadMem_42b908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b908 = call %struct.Memory* @routine_movss__xmm1__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b908)
  store %struct.Memory* %call_42b908, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b90d	 Bytes: 8
  %loadMem_42b90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b90d = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b90d)
  store %struct.Memory* %call_42b90d, %struct.Memory** %MEMORY

  ; Code: movss 0x8(%rax), %xmm1	 RIP: 42b915	 Bytes: 5
  %loadMem_42b915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b915 = call %struct.Memory* @routine_movss_0x8__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b915)
  store %struct.Memory* %call_42b915, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b91a	 Bytes: 8
  %loadMem_42b91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b91a = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b91a)
  store %struct.Memory* %call_42b91a, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, 0x14(%rax)	 RIP: 42b922	 Bytes: 5
  %loadMem_42b922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b922 = call %struct.Memory* @routine_movss__xmm1__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b922)
  store %struct.Memory* %call_42b922, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b927	 Bytes: 8
  %loadMem_42b927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b927 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b927)
  store %struct.Memory* %call_42b927, %struct.Memory** %MEMORY

  ; Code: movss 0xc(%rax), %xmm1	 RIP: 42b92f	 Bytes: 5
  %loadMem_42b92f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b92f = call %struct.Memory* @routine_movss_0xc__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b92f)
  store %struct.Memory* %call_42b92f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b934	 Bytes: 8
  %loadMem_42b934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b934 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b934)
  store %struct.Memory* %call_42b934, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, 0x3c(%rax)	 RIP: 42b93c	 Bytes: 5
  %loadMem_42b93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b93c = call %struct.Memory* @routine_movss__xmm1__0x3c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b93c)
  store %struct.Memory* %call_42b93c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b941	 Bytes: 8
  %loadMem_42b941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b941 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b941)
  store %struct.Memory* %call_42b941, %struct.Memory** %MEMORY

  ; Code: movss 0x10(%rax), %xmm1	 RIP: 42b949	 Bytes: 5
  %loadMem_42b949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b949 = call %struct.Memory* @routine_movss_0x10__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b949)
  store %struct.Memory* %call_42b949, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b94e	 Bytes: 8
  %loadMem_42b94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b94e = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b94e)
  store %struct.Memory* %call_42b94e, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, 0x40(%rax)	 RIP: 42b956	 Bytes: 5
  %loadMem_42b956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b956 = call %struct.Memory* @routine_movss__xmm1__0x40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b956)
  store %struct.Memory* %call_42b956, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b95b	 Bytes: 8
  %loadMem_42b95b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b95b = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b95b)
  store %struct.Memory* %call_42b95b, %struct.Memory** %MEMORY

  ; Code: movss 0x14(%rax), %xmm1	 RIP: 42b963	 Bytes: 5
  %loadMem_42b963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b963 = call %struct.Memory* @routine_movss_0x14__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b963)
  store %struct.Memory* %call_42b963, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b968	 Bytes: 8
  %loadMem_42b968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b968 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b968)
  store %struct.Memory* %call_42b968, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, 0x44(%rax)	 RIP: 42b970	 Bytes: 5
  %loadMem_42b970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b970 = call %struct.Memory* @routine_movss__xmm1__0x44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b970)
  store %struct.Memory* %call_42b970, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b975	 Bytes: 8
  %loadMem_42b975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b975 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b975)
  store %struct.Memory* %call_42b975, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x20(%rax)	 RIP: 42b97d	 Bytes: 5
  %loadMem_42b97d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b97d = call %struct.Memory* @routine_movss__xmm0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b97d)
  store %struct.Memory* %call_42b97d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b982	 Bytes: 8
  %loadMem_42b982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b982 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b982)
  store %struct.Memory* %call_42b982, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x2c(%rax)	 RIP: 42b98a	 Bytes: 5
  %loadMem_42b98a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b98a = call %struct.Memory* @routine_movss__xmm0__0x2c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b98a)
  store %struct.Memory* %call_42b98a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b98f	 Bytes: 8
  %loadMem_42b98f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b98f = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b98f)
  store %struct.Memory* %call_42b98f, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x38(%rax)	 RIP: 42b997	 Bytes: 5
  %loadMem_42b997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b997 = call %struct.Memory* @routine_movss__xmm0__0x38__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b997)
  store %struct.Memory* %call_42b997, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b99c	 Bytes: 8
  %loadMem_42b99c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b99c = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b99c)
  store %struct.Memory* %call_42b99c, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x18(%rax)	 RIP: 42b9a4	 Bytes: 5
  %loadMem_42b9a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9a4 = call %struct.Memory* @routine_movss__xmm0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9a4)
  store %struct.Memory* %call_42b9a4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b9a9	 Bytes: 8
  %loadMem_42b9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9a9 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9a9)
  store %struct.Memory* %call_42b9a9, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x24(%rax)	 RIP: 42b9b1	 Bytes: 5
  %loadMem_42b9b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9b1 = call %struct.Memory* @routine_movss__xmm0__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9b1)
  store %struct.Memory* %call_42b9b1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b9b6	 Bytes: 8
  %loadMem_42b9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9b6 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9b6)
  store %struct.Memory* %call_42b9b6, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x30(%rax)	 RIP: 42b9be	 Bytes: 5
  %loadMem_42b9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9be = call %struct.Memory* @routine_movss__xmm0__0x30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9be)
  store %struct.Memory* %call_42b9be, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b9c3	 Bytes: 8
  %loadMem_42b9c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9c3 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9c3)
  store %struct.Memory* %call_42b9c3, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x1c(%rax)	 RIP: 42b9cb	 Bytes: 5
  %loadMem_42b9cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9cb = call %struct.Memory* @routine_movss__xmm0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9cb)
  store %struct.Memory* %call_42b9cb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b9d0	 Bytes: 8
  %loadMem_42b9d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9d0 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9d0)
  store %struct.Memory* %call_42b9d0, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x28(%rax)	 RIP: 42b9d8	 Bytes: 5
  %loadMem_42b9d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9d8 = call %struct.Memory* @routine_movss__xmm0__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9d8)
  store %struct.Memory* %call_42b9d8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42b9dd	 Bytes: 8
  %loadMem_42b9dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9dd = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9dd)
  store %struct.Memory* %call_42b9dd, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x34(%rax)	 RIP: 42b9e5	 Bytes: 5
  %loadMem_42b9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9e5 = call %struct.Memory* @routine_movss__xmm0__0x34__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9e5)
  store %struct.Memory* %call_42b9e5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bb02	 RIP: 42b9ea	 Bytes: 5
  %loadMem_42b9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9ea = call %struct.Memory* @routine_jmpq_.L_42bb02(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9ea, i64 280, i64 5)
  store %struct.Memory* %call_42b9ea, %struct.Memory** %MEMORY

  br label %block_.L_42bb02

  ; Code: .L_42b9ef:	 RIP: 42b9ef	 Bytes: 0
block_.L_42b9ef:

  ; Code: movq 0x6cb910, %rax	 RIP: 42b9ef	 Bytes: 8
  %loadMem_42b9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9ef = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9ef)
  store %struct.Memory* %call_42b9ef, %struct.Memory** %MEMORY

  ; Code: movss 0x3c(%rax), %xmm0	 RIP: 42b9f7	 Bytes: 5
  %loadMem_42b9f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9f7 = call %struct.Memory* @routine_movss_0x3c__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9f7)
  store %struct.Memory* %call_42b9f7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42b9fc	 Bytes: 8
  %loadMem_42b9fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42b9fc = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42b9fc)
  store %struct.Memory* %call_42b9fc, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 42ba04	 Bytes: 2
  %loadMem_42ba04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba04 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba04)
  store %struct.Memory* %call_42ba04, %struct.Memory** %MEMORY

  ; Code: addl 0x722ca8, %ecx	 RIP: 42ba06	 Bytes: 7
  %loadMem_42ba06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba06 = call %struct.Memory* @routine_addl_0x722ca8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba06)
  store %struct.Memory* %call_42ba06, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 42ba0d	 Bytes: 4
  %loadMem_42ba0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba0d = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba0d)
  store %struct.Memory* %call_42ba0d, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm0	 RIP: 42ba11	 Bytes: 4
  %loadMem_42ba11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba11 = call %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba11)
  store %struct.Memory* %call_42ba11, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42ba15	 Bytes: 8
  %loadMem_42ba15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba15 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba15)
  store %struct.Memory* %call_42ba15, %struct.Memory** %MEMORY

  ; Code: addss (%rax), %xmm0	 RIP: 42ba1d	 Bytes: 4
  %loadMem_42ba1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba1d = call %struct.Memory* @routine_addss___rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba1d)
  store %struct.Memory* %call_42ba1d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42ba21	 Bytes: 8
  %loadMem_42ba21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba21 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba21)
  store %struct.Memory* %call_42ba21, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 42ba29	 Bytes: 2
  %loadMem_42ba29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba29 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba29)
  store %struct.Memory* %call_42ba29, %struct.Memory** %MEMORY

  ; Code: addl 0x722ca8, %ecx	 RIP: 42ba2b	 Bytes: 7
  %loadMem_42ba2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba2b = call %struct.Memory* @routine_addl_0x722ca8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba2b)
  store %struct.Memory* %call_42ba2b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 42ba32	 Bytes: 3
  %loadMem_42ba32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba32 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba32)
  store %struct.Memory* %call_42ba32, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 42ba35	 Bytes: 4
  %loadMem_42ba35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba35 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba35)
  store %struct.Memory* %call_42ba35, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 42ba39	 Bytes: 4
  %loadMem_42ba39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba39 = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba39)
  store %struct.Memory* %call_42ba39, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42ba3d	 Bytes: 8
  %loadMem_42ba3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba3d = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba3d)
  store %struct.Memory* %call_42ba3d, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x3c(%rax)	 RIP: 42ba45	 Bytes: 5
  %loadMem_42ba45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba45 = call %struct.Memory* @routine_movss__xmm0__0x3c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba45)
  store %struct.Memory* %call_42ba45, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42ba4a	 Bytes: 8
  %loadMem_42ba4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba4a = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba4a)
  store %struct.Memory* %call_42ba4a, %struct.Memory** %MEMORY

  ; Code: movss 0x40(%rax), %xmm0	 RIP: 42ba52	 Bytes: 5
  %loadMem_42ba52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba52 = call %struct.Memory* @routine_movss_0x40__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba52)
  store %struct.Memory* %call_42ba52, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42ba57	 Bytes: 8
  %loadMem_42ba57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba57 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba57)
  store %struct.Memory* %call_42ba57, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 42ba5f	 Bytes: 2
  %loadMem_42ba5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba5f = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba5f)
  store %struct.Memory* %call_42ba5f, %struct.Memory** %MEMORY

  ; Code: addl 0x722ca8, %ecx	 RIP: 42ba61	 Bytes: 7
  %loadMem_42ba61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba61 = call %struct.Memory* @routine_addl_0x722ca8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba61)
  store %struct.Memory* %call_42ba61, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 42ba68	 Bytes: 4
  %loadMem_42ba68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba68 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba68)
  store %struct.Memory* %call_42ba68, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm0	 RIP: 42ba6c	 Bytes: 4
  %loadMem_42ba6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba6c = call %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba6c)
  store %struct.Memory* %call_42ba6c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42ba70	 Bytes: 8
  %loadMem_42ba70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba70 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba70)
  store %struct.Memory* %call_42ba70, %struct.Memory** %MEMORY

  ; Code: addss 0x4(%rax), %xmm0	 RIP: 42ba78	 Bytes: 5
  %loadMem_42ba78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba78 = call %struct.Memory* @routine_addss_0x4__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba78)
  store %struct.Memory* %call_42ba78, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42ba7d	 Bytes: 8
  %loadMem_42ba7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba7d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba7d)
  store %struct.Memory* %call_42ba7d, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 42ba85	 Bytes: 2
  %loadMem_42ba85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba85 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba85)
  store %struct.Memory* %call_42ba85, %struct.Memory** %MEMORY

  ; Code: addl 0x722ca8, %ecx	 RIP: 42ba87	 Bytes: 7
  %loadMem_42ba87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba87 = call %struct.Memory* @routine_addl_0x722ca8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba87)
  store %struct.Memory* %call_42ba87, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 42ba8e	 Bytes: 3
  %loadMem_42ba8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba8e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba8e)
  store %struct.Memory* %call_42ba8e, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 42ba91	 Bytes: 4
  %loadMem_42ba91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba91 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba91)
  store %struct.Memory* %call_42ba91, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 42ba95	 Bytes: 4
  %loadMem_42ba95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba95 = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba95)
  store %struct.Memory* %call_42ba95, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42ba99	 Bytes: 8
  %loadMem_42ba99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ba99 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ba99)
  store %struct.Memory* %call_42ba99, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x40(%rax)	 RIP: 42baa1	 Bytes: 5
  %loadMem_42baa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42baa1 = call %struct.Memory* @routine_movss__xmm0__0x40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42baa1)
  store %struct.Memory* %call_42baa1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42baa6	 Bytes: 8
  %loadMem_42baa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42baa6 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42baa6)
  store %struct.Memory* %call_42baa6, %struct.Memory** %MEMORY

  ; Code: movss 0x44(%rax), %xmm0	 RIP: 42baae	 Bytes: 5
  %loadMem_42baae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42baae = call %struct.Memory* @routine_movss_0x44__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42baae)
  store %struct.Memory* %call_42baae, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42bab3	 Bytes: 8
  %loadMem_42bab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bab3 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bab3)
  store %struct.Memory* %call_42bab3, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 42babb	 Bytes: 2
  %loadMem_42babb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42babb = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42babb)
  store %struct.Memory* %call_42babb, %struct.Memory** %MEMORY

  ; Code: addl 0x722ca8, %ecx	 RIP: 42babd	 Bytes: 7
  %loadMem_42babd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42babd = call %struct.Memory* @routine_addl_0x722ca8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42babd)
  store %struct.Memory* %call_42babd, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 42bac4	 Bytes: 4
  %loadMem_42bac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bac4 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bac4)
  store %struct.Memory* %call_42bac4, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm0	 RIP: 42bac8	 Bytes: 4
  %loadMem_42bac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bac8 = call %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bac8)
  store %struct.Memory* %call_42bac8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bacc	 Bytes: 8
  %loadMem_42bacc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bacc = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bacc)
  store %struct.Memory* %call_42bacc, %struct.Memory** %MEMORY

  ; Code: addss 0x8(%rax), %xmm0	 RIP: 42bad4	 Bytes: 5
  %loadMem_42bad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bad4 = call %struct.Memory* @routine_addss_0x8__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bad4)
  store %struct.Memory* %call_42bad4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42bad9	 Bytes: 8
  %loadMem_42bad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bad9 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bad9)
  store %struct.Memory* %call_42bad9, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 42bae1	 Bytes: 2
  %loadMem_42bae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bae1 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bae1)
  store %struct.Memory* %call_42bae1, %struct.Memory** %MEMORY

  ; Code: addl 0x722ca8, %ecx	 RIP: 42bae3	 Bytes: 7
  %loadMem_42bae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bae3 = call %struct.Memory* @routine_addl_0x722ca8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bae3)
  store %struct.Memory* %call_42bae3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 42baea	 Bytes: 3
  %loadMem_42baea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42baea = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42baea)
  store %struct.Memory* %call_42baea, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 42baed	 Bytes: 4
  %loadMem_42baed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42baed = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42baed)
  store %struct.Memory* %call_42baed, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 42baf1	 Bytes: 4
  %loadMem_42baf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42baf1 = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42baf1)
  store %struct.Memory* %call_42baf1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42baf5	 Bytes: 8
  %loadMem_42baf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42baf5 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42baf5)
  store %struct.Memory* %call_42baf5, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x44(%rax)	 RIP: 42bafd	 Bytes: 5
  %loadMem_42bafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bafd = call %struct.Memory* @routine_movss__xmm0__0x44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bafd)
  store %struct.Memory* %call_42bafd, %struct.Memory** %MEMORY

  ; Code: .L_42bb02:	 RIP: 42bb02	 Bytes: 0
  br label %block_.L_42bb02
block_.L_42bb02:

  ; Code: movq 0x6cb900, %rax	 RIP: 42bb02	 Bytes: 8
  %loadMem_42bb02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb02 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb02)
  store %struct.Memory* %call_42bb02, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 42bb0a	 Bytes: 4
  %loadMem_42bb0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb0a = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb0a)
  store %struct.Memory* %call_42bb0a, %struct.Memory** %MEMORY

  ; Code: jne .L_42bbea	 RIP: 42bb0e	 Bytes: 6
  %loadMem_42bb0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb0e = call %struct.Memory* @routine_jne_.L_42bbea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb0e, i8* %BRANCH_TAKEN, i64 220, i64 6, i64 6)
  store %struct.Memory* %call_42bb0e, %struct.Memory** %MEMORY

  %loadBr_42bb0e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bb0e = icmp eq i8 %loadBr_42bb0e, 1
  br i1 %cmpBr_42bb0e, label %block_.L_42bbea, label %block_42bb14

block_42bb14:
  ; Code: movq 0x6cb910, %rax	 RIP: 42bb14	 Bytes: 8
  %loadMem_42bb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb14 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb14)
  store %struct.Memory* %call_42bb14, %struct.Memory** %MEMORY

  ; Code: movss 0x20(%rax), %xmm0	 RIP: 42bb1c	 Bytes: 5
  %loadMem_42bb1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb1c = call %struct.Memory* @routine_movss_0x20__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb1c)
  store %struct.Memory* %call_42bb1c, %struct.Memory** %MEMORY

  ; Code: movl 0x6f8edc, %ecx	 RIP: 42bb21	 Bytes: 7
  %loadMem_42bb21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb21 = call %struct.Memory* @routine_movl_0x6f8edc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb21)
  store %struct.Memory* %call_42bb21, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42bb28	 Bytes: 3
  %loadMem_42bb28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb28 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb28)
  store %struct.Memory* %call_42bb28, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 42bb2b	 Bytes: 4
  %loadMem_42bb2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb2b = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb2b)
  store %struct.Memory* %call_42bb2b, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm0	 RIP: 42bb2f	 Bytes: 4
  %loadMem_42bb2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb2f = call %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb2f)
  store %struct.Memory* %call_42bb2f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bb33	 Bytes: 8
  %loadMem_42bb33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb33 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb33)
  store %struct.Memory* %call_42bb33, %struct.Memory** %MEMORY

  ; Code: addss (%rax), %xmm0	 RIP: 42bb3b	 Bytes: 4
  %loadMem_42bb3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb3b = call %struct.Memory* @routine_addss___rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb3b)
  store %struct.Memory* %call_42bb3b, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x6f8edc, %xmm1	 RIP: 42bb3f	 Bytes: 9
  %loadMem_42bb3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb3f = call %struct.Memory* @routine_cvtsi2ssl_0x6f8edc___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb3f)
  store %struct.Memory* %call_42bb3f, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 42bb48	 Bytes: 4
  %loadMem_42bb48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb48 = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb48)
  store %struct.Memory* %call_42bb48, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bb4c	 Bytes: 8
  %loadMem_42bb4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb4c = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb4c)
  store %struct.Memory* %call_42bb4c, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x20(%rax)	 RIP: 42bb54	 Bytes: 5
  %loadMem_42bb54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb54 = call %struct.Memory* @routine_movss__xmm0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb54)
  store %struct.Memory* %call_42bb54, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bb59	 Bytes: 8
  %loadMem_42bb59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb59 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb59)
  store %struct.Memory* %call_42bb59, %struct.Memory** %MEMORY

  ; Code: movss 0x2c(%rax), %xmm0	 RIP: 42bb61	 Bytes: 5
  %loadMem_42bb61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb61 = call %struct.Memory* @routine_movss_0x2c__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb61)
  store %struct.Memory* %call_42bb61, %struct.Memory** %MEMORY

  ; Code: movl 0x6f8edc, %ecx	 RIP: 42bb66	 Bytes: 7
  %loadMem_42bb66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb66 = call %struct.Memory* @routine_movl_0x6f8edc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb66)
  store %struct.Memory* %call_42bb66, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42bb6d	 Bytes: 3
  %loadMem_42bb6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb6d = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb6d)
  store %struct.Memory* %call_42bb6d, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 42bb70	 Bytes: 4
  %loadMem_42bb70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb70 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb70)
  store %struct.Memory* %call_42bb70, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm0	 RIP: 42bb74	 Bytes: 4
  %loadMem_42bb74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb74 = call %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb74)
  store %struct.Memory* %call_42bb74, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bb78	 Bytes: 8
  %loadMem_42bb78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb78 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb78)
  store %struct.Memory* %call_42bb78, %struct.Memory** %MEMORY

  ; Code: addss 0x4(%rax), %xmm0	 RIP: 42bb80	 Bytes: 5
  %loadMem_42bb80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb80 = call %struct.Memory* @routine_addss_0x4__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb80)
  store %struct.Memory* %call_42bb80, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x6f8edc, %xmm1	 RIP: 42bb85	 Bytes: 9
  %loadMem_42bb85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb85 = call %struct.Memory* @routine_cvtsi2ssl_0x6f8edc___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb85)
  store %struct.Memory* %call_42bb85, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 42bb8e	 Bytes: 4
  %loadMem_42bb8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb8e = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb8e)
  store %struct.Memory* %call_42bb8e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bb92	 Bytes: 8
  %loadMem_42bb92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb92 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb92)
  store %struct.Memory* %call_42bb92, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x2c(%rax)	 RIP: 42bb9a	 Bytes: 5
  %loadMem_42bb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb9a = call %struct.Memory* @routine_movss__xmm0__0x2c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb9a)
  store %struct.Memory* %call_42bb9a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bb9f	 Bytes: 8
  %loadMem_42bb9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bb9f = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bb9f)
  store %struct.Memory* %call_42bb9f, %struct.Memory** %MEMORY

  ; Code: movss 0x38(%rax), %xmm0	 RIP: 42bba7	 Bytes: 5
  %loadMem_42bba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bba7 = call %struct.Memory* @routine_movss_0x38__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bba7)
  store %struct.Memory* %call_42bba7, %struct.Memory** %MEMORY

  ; Code: movl 0x6f8edc, %ecx	 RIP: 42bbac	 Bytes: 7
  %loadMem_42bbac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbac = call %struct.Memory* @routine_movl_0x6f8edc___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbac)
  store %struct.Memory* %call_42bbac, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42bbb3	 Bytes: 3
  %loadMem_42bbb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbb3 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbb3)
  store %struct.Memory* %call_42bbb3, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 42bbb6	 Bytes: 4
  %loadMem_42bbb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbb6 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbb6)
  store %struct.Memory* %call_42bbb6, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm0	 RIP: 42bbba	 Bytes: 4
  %loadMem_42bbba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbba = call %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbba)
  store %struct.Memory* %call_42bbba, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bbbe	 Bytes: 8
  %loadMem_42bbbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbbe = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbbe)
  store %struct.Memory* %call_42bbbe, %struct.Memory** %MEMORY

  ; Code: addss 0x8(%rax), %xmm0	 RIP: 42bbc6	 Bytes: 5
  %loadMem_42bbc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbc6 = call %struct.Memory* @routine_addss_0x8__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbc6)
  store %struct.Memory* %call_42bbc6, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x6f8edc, %xmm1	 RIP: 42bbcb	 Bytes: 9
  %loadMem_42bbcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbcb = call %struct.Memory* @routine_cvtsi2ssl_0x6f8edc___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbcb)
  store %struct.Memory* %call_42bbcb, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 42bbd4	 Bytes: 4
  %loadMem_42bbd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbd4 = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbd4)
  store %struct.Memory* %call_42bbd4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bbd8	 Bytes: 8
  %loadMem_42bbd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbd8 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbd8)
  store %struct.Memory* %call_42bbd8, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x38(%rax)	 RIP: 42bbe0	 Bytes: 5
  %loadMem_42bbe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbe0 = call %struct.Memory* @routine_movss__xmm0__0x38__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbe0)
  store %struct.Memory* %call_42bbe0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bda8	 RIP: 42bbe5	 Bytes: 5
  %loadMem_42bbe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbe5 = call %struct.Memory* @routine_jmpq_.L_42bda8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbe5, i64 451, i64 5)
  store %struct.Memory* %call_42bbe5, %struct.Memory** %MEMORY

  br label %block_.L_42bda8

  ; Code: .L_42bbea:	 RIP: 42bbea	 Bytes: 0
block_.L_42bbea:

  ; Code: movq 0x6cb900, %rax	 RIP: 42bbea	 Bytes: 8
  %loadMem_42bbea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbea = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbea)
  store %struct.Memory* %call_42bbea, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rax)	 RIP: 42bbf2	 Bytes: 4
  %loadMem_42bbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbf2 = call %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbf2)
  store %struct.Memory* %call_42bbf2, %struct.Memory** %MEMORY

  ; Code: jne .L_42bcd2	 RIP: 42bbf6	 Bytes: 6
  %loadMem_42bbf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbf6 = call %struct.Memory* @routine_jne_.L_42bcd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbf6, i8* %BRANCH_TAKEN, i64 220, i64 6, i64 6)
  store %struct.Memory* %call_42bbf6, %struct.Memory** %MEMORY

  %loadBr_42bbf6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42bbf6 = icmp eq i8 %loadBr_42bbf6, 1
  br i1 %cmpBr_42bbf6, label %block_.L_42bcd2, label %block_42bbfc

block_42bbfc:
  ; Code: movq 0x6cb910, %rax	 RIP: 42bbfc	 Bytes: 8
  %loadMem_42bbfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bbfc = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bbfc)
  store %struct.Memory* %call_42bbfc, %struct.Memory** %MEMORY

  ; Code: movss 0x1c(%rax), %xmm0	 RIP: 42bc04	 Bytes: 5
  %loadMem_42bc04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc04 = call %struct.Memory* @routine_movss_0x1c__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc04)
  store %struct.Memory* %call_42bc04, %struct.Memory** %MEMORY

  ; Code: movl 0x722ca8, %ecx	 RIP: 42bc09	 Bytes: 7
  %loadMem_42bc09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc09 = call %struct.Memory* @routine_movl_0x722ca8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc09)
  store %struct.Memory* %call_42bc09, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42bc10	 Bytes: 3
  %loadMem_42bc10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc10 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc10)
  store %struct.Memory* %call_42bc10, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 42bc13	 Bytes: 4
  %loadMem_42bc13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc13 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc13)
  store %struct.Memory* %call_42bc13, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm0	 RIP: 42bc17	 Bytes: 4
  %loadMem_42bc17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc17 = call %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc17)
  store %struct.Memory* %call_42bc17, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bc1b	 Bytes: 8
  %loadMem_42bc1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc1b = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc1b)
  store %struct.Memory* %call_42bc1b, %struct.Memory** %MEMORY

  ; Code: addss (%rax), %xmm0	 RIP: 42bc23	 Bytes: 4
  %loadMem_42bc23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc23 = call %struct.Memory* @routine_addss___rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc23)
  store %struct.Memory* %call_42bc23, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x722ca8, %xmm1	 RIP: 42bc27	 Bytes: 9
  %loadMem_42bc27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc27 = call %struct.Memory* @routine_cvtsi2ssl_0x722ca8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc27)
  store %struct.Memory* %call_42bc27, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 42bc30	 Bytes: 4
  %loadMem_42bc30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc30 = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc30)
  store %struct.Memory* %call_42bc30, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bc34	 Bytes: 8
  %loadMem_42bc34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc34 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc34)
  store %struct.Memory* %call_42bc34, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x1c(%rax)	 RIP: 42bc3c	 Bytes: 5
  %loadMem_42bc3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc3c = call %struct.Memory* @routine_movss__xmm0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc3c)
  store %struct.Memory* %call_42bc3c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bc41	 Bytes: 8
  %loadMem_42bc41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc41 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc41)
  store %struct.Memory* %call_42bc41, %struct.Memory** %MEMORY

  ; Code: movss 0x28(%rax), %xmm0	 RIP: 42bc49	 Bytes: 5
  %loadMem_42bc49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc49 = call %struct.Memory* @routine_movss_0x28__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc49)
  store %struct.Memory* %call_42bc49, %struct.Memory** %MEMORY

  ; Code: movl 0x722ca8, %ecx	 RIP: 42bc4e	 Bytes: 7
  %loadMem_42bc4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc4e = call %struct.Memory* @routine_movl_0x722ca8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc4e)
  store %struct.Memory* %call_42bc4e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42bc55	 Bytes: 3
  %loadMem_42bc55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc55 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc55)
  store %struct.Memory* %call_42bc55, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 42bc58	 Bytes: 4
  %loadMem_42bc58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc58 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc58)
  store %struct.Memory* %call_42bc58, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm0	 RIP: 42bc5c	 Bytes: 4
  %loadMem_42bc5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc5c = call %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc5c)
  store %struct.Memory* %call_42bc5c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bc60	 Bytes: 8
  %loadMem_42bc60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc60 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc60)
  store %struct.Memory* %call_42bc60, %struct.Memory** %MEMORY

  ; Code: addss 0x4(%rax), %xmm0	 RIP: 42bc68	 Bytes: 5
  %loadMem_42bc68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc68 = call %struct.Memory* @routine_addss_0x4__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc68)
  store %struct.Memory* %call_42bc68, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x722ca8, %xmm1	 RIP: 42bc6d	 Bytes: 9
  %loadMem_42bc6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc6d = call %struct.Memory* @routine_cvtsi2ssl_0x722ca8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc6d)
  store %struct.Memory* %call_42bc6d, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 42bc76	 Bytes: 4
  %loadMem_42bc76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc76 = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc76)
  store %struct.Memory* %call_42bc76, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bc7a	 Bytes: 8
  %loadMem_42bc7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc7a = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc7a)
  store %struct.Memory* %call_42bc7a, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x28(%rax)	 RIP: 42bc82	 Bytes: 5
  %loadMem_42bc82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc82 = call %struct.Memory* @routine_movss__xmm0__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc82)
  store %struct.Memory* %call_42bc82, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bc87	 Bytes: 8
  %loadMem_42bc87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc87 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc87)
  store %struct.Memory* %call_42bc87, %struct.Memory** %MEMORY

  ; Code: movss 0x34(%rax), %xmm0	 RIP: 42bc8f	 Bytes: 5
  %loadMem_42bc8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc8f = call %struct.Memory* @routine_movss_0x34__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc8f)
  store %struct.Memory* %call_42bc8f, %struct.Memory** %MEMORY

  ; Code: movl 0x722ca8, %ecx	 RIP: 42bc94	 Bytes: 7
  %loadMem_42bc94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc94 = call %struct.Memory* @routine_movl_0x722ca8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc94)
  store %struct.Memory* %call_42bc94, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42bc9b	 Bytes: 3
  %loadMem_42bc9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc9b = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc9b)
  store %struct.Memory* %call_42bc9b, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 42bc9e	 Bytes: 4
  %loadMem_42bc9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bc9e = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bc9e)
  store %struct.Memory* %call_42bc9e, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm0	 RIP: 42bca2	 Bytes: 4
  %loadMem_42bca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bca2 = call %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bca2)
  store %struct.Memory* %call_42bca2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bca6	 Bytes: 8
  %loadMem_42bca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bca6 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bca6)
  store %struct.Memory* %call_42bca6, %struct.Memory** %MEMORY

  ; Code: addss 0x8(%rax), %xmm0	 RIP: 42bcae	 Bytes: 5
  %loadMem_42bcae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcae = call %struct.Memory* @routine_addss_0x8__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcae)
  store %struct.Memory* %call_42bcae, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x722ca8, %xmm1	 RIP: 42bcb3	 Bytes: 9
  %loadMem_42bcb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcb3 = call %struct.Memory* @routine_cvtsi2ssl_0x722ca8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcb3)
  store %struct.Memory* %call_42bcb3, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 42bcbc	 Bytes: 4
  %loadMem_42bcbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcbc = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcbc)
  store %struct.Memory* %call_42bcbc, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bcc0	 Bytes: 8
  %loadMem_42bcc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcc0 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcc0)
  store %struct.Memory* %call_42bcc0, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x34(%rax)	 RIP: 42bcc8	 Bytes: 5
  %loadMem_42bcc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcc8 = call %struct.Memory* @routine_movss__xmm0__0x34__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcc8)
  store %struct.Memory* %call_42bcc8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42bda3	 RIP: 42bccd	 Bytes: 5
  %loadMem_42bccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bccd = call %struct.Memory* @routine_jmpq_.L_42bda3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bccd, i64 214, i64 5)
  store %struct.Memory* %call_42bccd, %struct.Memory** %MEMORY

  br label %block_.L_42bda3

  ; Code: .L_42bcd2:	 RIP: 42bcd2	 Bytes: 0
block_.L_42bcd2:

  ; Code: movq 0x6cb910, %rax	 RIP: 42bcd2	 Bytes: 8
  %loadMem_42bcd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcd2 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcd2)
  store %struct.Memory* %call_42bcd2, %struct.Memory** %MEMORY

  ; Code: movss 0x18(%rax), %xmm0	 RIP: 42bcda	 Bytes: 5
  %loadMem_42bcda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcda = call %struct.Memory* @routine_movss_0x18__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcda)
  store %struct.Memory* %call_42bcda, %struct.Memory** %MEMORY

  ; Code: movl 0x6cee50, %ecx	 RIP: 42bcdf	 Bytes: 7
  %loadMem_42bcdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcdf = call %struct.Memory* @routine_movl_0x6cee50___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcdf)
  store %struct.Memory* %call_42bcdf, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42bce6	 Bytes: 3
  %loadMem_42bce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bce6 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bce6)
  store %struct.Memory* %call_42bce6, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 42bce9	 Bytes: 4
  %loadMem_42bce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bce9 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bce9)
  store %struct.Memory* %call_42bce9, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm0	 RIP: 42bced	 Bytes: 4
  %loadMem_42bced = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bced = call %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bced)
  store %struct.Memory* %call_42bced, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bcf1	 Bytes: 8
  %loadMem_42bcf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcf1 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcf1)
  store %struct.Memory* %call_42bcf1, %struct.Memory** %MEMORY

  ; Code: addss (%rax), %xmm0	 RIP: 42bcf9	 Bytes: 4
  %loadMem_42bcf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcf9 = call %struct.Memory* @routine_addss___rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcf9)
  store %struct.Memory* %call_42bcf9, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x6cee50, %xmm1	 RIP: 42bcfd	 Bytes: 9
  %loadMem_42bcfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bcfd = call %struct.Memory* @routine_cvtsi2ssl_0x6cee50___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bcfd)
  store %struct.Memory* %call_42bcfd, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 42bd06	 Bytes: 4
  %loadMem_42bd06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd06 = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd06)
  store %struct.Memory* %call_42bd06, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bd0a	 Bytes: 8
  %loadMem_42bd0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd0a = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd0a)
  store %struct.Memory* %call_42bd0a, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x18(%rax)	 RIP: 42bd12	 Bytes: 5
  %loadMem_42bd12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd12 = call %struct.Memory* @routine_movss__xmm0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd12)
  store %struct.Memory* %call_42bd12, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bd17	 Bytes: 8
  %loadMem_42bd17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd17 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd17)
  store %struct.Memory* %call_42bd17, %struct.Memory** %MEMORY

  ; Code: movss 0x24(%rax), %xmm0	 RIP: 42bd1f	 Bytes: 5
  %loadMem_42bd1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd1f = call %struct.Memory* @routine_movss_0x24__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd1f)
  store %struct.Memory* %call_42bd1f, %struct.Memory** %MEMORY

  ; Code: movl 0x6cee50, %ecx	 RIP: 42bd24	 Bytes: 7
  %loadMem_42bd24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd24 = call %struct.Memory* @routine_movl_0x6cee50___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd24)
  store %struct.Memory* %call_42bd24, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42bd2b	 Bytes: 3
  %loadMem_42bd2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd2b = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd2b)
  store %struct.Memory* %call_42bd2b, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 42bd2e	 Bytes: 4
  %loadMem_42bd2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd2e = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd2e)
  store %struct.Memory* %call_42bd2e, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm0	 RIP: 42bd32	 Bytes: 4
  %loadMem_42bd32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd32 = call %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd32)
  store %struct.Memory* %call_42bd32, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bd36	 Bytes: 8
  %loadMem_42bd36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd36 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd36)
  store %struct.Memory* %call_42bd36, %struct.Memory** %MEMORY

  ; Code: addss 0x4(%rax), %xmm0	 RIP: 42bd3e	 Bytes: 5
  %loadMem_42bd3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd3e = call %struct.Memory* @routine_addss_0x4__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd3e)
  store %struct.Memory* %call_42bd3e, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x6cee50, %xmm1	 RIP: 42bd43	 Bytes: 9
  %loadMem_42bd43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd43 = call %struct.Memory* @routine_cvtsi2ssl_0x6cee50___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd43)
  store %struct.Memory* %call_42bd43, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 42bd4c	 Bytes: 4
  %loadMem_42bd4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd4c = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd4c)
  store %struct.Memory* %call_42bd4c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bd50	 Bytes: 8
  %loadMem_42bd50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd50 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd50)
  store %struct.Memory* %call_42bd50, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x24(%rax)	 RIP: 42bd58	 Bytes: 5
  %loadMem_42bd58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd58 = call %struct.Memory* @routine_movss__xmm0__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd58)
  store %struct.Memory* %call_42bd58, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bd5d	 Bytes: 8
  %loadMem_42bd5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd5d = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd5d)
  store %struct.Memory* %call_42bd5d, %struct.Memory** %MEMORY

  ; Code: movss 0x30(%rax), %xmm0	 RIP: 42bd65	 Bytes: 5
  %loadMem_42bd65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd65 = call %struct.Memory* @routine_movss_0x30__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd65)
  store %struct.Memory* %call_42bd65, %struct.Memory** %MEMORY

  ; Code: movl 0x6cee50, %ecx	 RIP: 42bd6a	 Bytes: 7
  %loadMem_42bd6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd6a = call %struct.Memory* @routine_movl_0x6cee50___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd6a)
  store %struct.Memory* %call_42bd6a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42bd71	 Bytes: 3
  %loadMem_42bd71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd71 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd71)
  store %struct.Memory* %call_42bd71, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 42bd74	 Bytes: 4
  %loadMem_42bd74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd74 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd74)
  store %struct.Memory* %call_42bd74, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm0	 RIP: 42bd78	 Bytes: 4
  %loadMem_42bd78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd78 = call %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd78)
  store %struct.Memory* %call_42bd78, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bd7c	 Bytes: 8
  %loadMem_42bd7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd7c = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd7c)
  store %struct.Memory* %call_42bd7c, %struct.Memory** %MEMORY

  ; Code: addss 0x8(%rax), %xmm0	 RIP: 42bd84	 Bytes: 5
  %loadMem_42bd84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd84 = call %struct.Memory* @routine_addss_0x8__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd84)
  store %struct.Memory* %call_42bd84, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x6cee50, %xmm1	 RIP: 42bd89	 Bytes: 9
  %loadMem_42bd89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd89 = call %struct.Memory* @routine_cvtsi2ssl_0x6cee50___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd89)
  store %struct.Memory* %call_42bd89, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 42bd92	 Bytes: 4
  %loadMem_42bd92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd92 = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd92)
  store %struct.Memory* %call_42bd92, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42bd96	 Bytes: 8
  %loadMem_42bd96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd96 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd96)
  store %struct.Memory* %call_42bd96, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x30(%rax)	 RIP: 42bd9e	 Bytes: 5
  %loadMem_42bd9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bd9e = call %struct.Memory* @routine_movss__xmm0__0x30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bd9e)
  store %struct.Memory* %call_42bd9e, %struct.Memory** %MEMORY

  ; Code: .L_42bda3:	 RIP: 42bda3	 Bytes: 0
  br label %block_.L_42bda3
block_.L_42bda3:

  ; Code: jmpq .L_42bda8	 RIP: 42bda3	 Bytes: 5
  %loadMem_42bda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bda3 = call %struct.Memory* @routine_jmpq_.L_42bda8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bda3, i64 5, i64 5)
  store %struct.Memory* %call_42bda3, %struct.Memory** %MEMORY

  br label %block_.L_42bda8

  ; Code: .L_42bda8:	 RIP: 42bda8	 Bytes: 0
block_.L_42bda8:

  ; Code: addq $0x30, %rsp	 RIP: 42bda8	 Bytes: 4
  %loadMem_42bda8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bda8 = call %struct.Memory* @routine_addq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bda8)
  store %struct.Memory* %call_42bda8, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 42bdac	 Bytes: 1
  %loadMem_42bdac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdac = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdac)
  store %struct.Memory* %call_42bdac, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 42bdad	 Bytes: 1
  %loadMem_42bdad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42bdad = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42bdad)
  store %struct.Memory* %call_42bdad, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_42bdad
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__0x0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_imull_0x11bec__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 72684
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_imull_0x11bf0__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 72688
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl_0x44__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_imull_0x40__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0xce8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 3304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_imull_0xcec__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 3308
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_cmpl__0x0__0x11878__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71800
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

define %struct.Memory* @routine_je_.L_42b548(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_jge_.L_42b40e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl_0x44__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 68
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_42b3fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x11860__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71776
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_0x726418___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x726418_type* @G_0x726418 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = zext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq_0x722c90___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x722c90_type* @G_0x722c90 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movzwl___rcx__rdx_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
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

define %struct.Memory* @routine_subl__edi___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6
  %8 = add i64 %7, %3
  store i64 %8, i64* %2, align 8
  %9 = icmp ult i64 %8, %3
  %10 = icmp ult i64 %8, %7
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %8 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #22
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %7, %3
  %22 = xor i64 %21, %8
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %8, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %7, 63
  %35 = xor i64 %30, %33
  %36 = xor i64 %30, %34
  %37 = add   i64 %35, %36
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_42b389(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42b400(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42b36e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_je_.L_42b543(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_cmpl_0xcec__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3308
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_42b53e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl_0xce8__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3304
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_42b52b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_0x6f6f90___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6f6f90_type* @G_0x6f6f90 to i64))
  ret %struct.Memory* %11
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










define %struct.Memory* @routine_movq_0x6f96f0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6f96f0_type* @G_0x6f96f0 to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_addq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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




























define %struct.Memory* @routine_addq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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








define %struct.Memory* @routine_jmpq_.L_42b458(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42b530(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42b43a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42b543(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42b78b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq_0x710a40___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x710a40_type* @G_0x710a40 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__0x726418(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x726418_type* @G_0x726418 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_0x6ccf80___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6ccf80_type* @G_0x6ccf80 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__0x6f6f90(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6f6f90_type* @G_0x6f6f90 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_cmpl__0x2__0xb40__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
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

define %struct.Memory* @routine_jne_.L_42b58d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x710a50___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x710a50_type* @G_0x710a50 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__0x70fcf0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x70fcf0_type* @G_0x70fcf0 to i64), i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jge_.L_42b643(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_42b630(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x1918__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


























define %struct.Memory* @routine_jmpq_.L_42b5b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42b635(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42b59c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_je_.L_42b786(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jge_.L_42b781(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_42b76e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movq_0x1940__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}




































































define %struct.Memory* @routine_jmpq_.L_42b68d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42b773(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42b66f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42b786(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %2 to i64*
  %6 = load i64, i64* %5
  %7 = sub i64 %6, %3
  %8 = icmp ult i64 %6, %3
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
  %18 = xor i64 %6, %3
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
  %30 = lshr i64 %6, 63
  %31 = lshr i64 %3, 63
  %32 = xor i64 %30, %31
  %33 = xor i64 %27, %30
  %34 = add   i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42b79e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x1__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42b7b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x1__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42b7c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x1__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_je_.L_42b8c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = sitofp i64 %3 to double
  %6 = bitcast i8* %2 to double*
  store double %5, double* %6, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdq__rcx___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sitofp i32 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x24__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  %7 = sitofp i64 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdq_MINUS0x10__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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

define %struct.Memory* @routine_callq_.log10_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x8609f__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x8609f__rip__type* @G_0x8609f__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = bitcast i8* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = fptrunc double %11 to float
  %13 = bitcast i8* %2 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %6, i32 1
  %15 = getelementptr inbounds i8, i8* %2, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 0
  %18 = bitcast i8* %7 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %9, i32 1
  %20 = getelementptr inbounds i8, i8* %2, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movq_0x6cb910___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6cb910_type* @G_0x6cb910 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RCX
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i8* %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_cmpl__0x0__0x11bfc__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72700
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42b8a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cvtsi2sdl_MINUS0x28__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtsi2sdq_MINUS0x18__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd_0x8604c__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x8604c__rip__type* @G_0x8604c__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movq_0x2a00b5__rip____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x2a00b5__rip__type* @G_0x2a00b5__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movss__xmm0__0x4__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RCX
  %12 = add i64 %11, 4
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_cvtsi2sdq_MINUS0x20__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd_0x8600e__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x8600e__rip__type* @G_0x8600e__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movss__xmm0__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RCX
  %12 = add i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42b8c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cb910_type* @G_0x6cb910 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movss__xmm0__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42b8c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_42b9ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = bitcast i8* %2 to float*
  store float %6, float* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 4
  %9 = bitcast i8* %8 to float*
  store float 0.000000e+00, float* %9, align 1
  %10 = getelementptr inbounds i8, i8* %2, i64 8
  %11 = bitcast i8* %10 to float*
  store float 0.000000e+00, float* %11, align 1
  %12 = getelementptr inbounds i8, i8* %2, i64 12
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss___rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movss__xmm1__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 12
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0x4__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm1__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 16
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0x8__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm1__0x14__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 20
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0xc__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm1__0x3c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 60
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0x10__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm1__0x40__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0x14__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm1__0x44__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 68
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm0__0x20__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 32
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm0__0x2c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 44
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm0__0x38__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 56
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm0__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm0__0x24__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 36
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm0__0x30__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm0__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 28
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm0__0x28__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 40
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm0__0x34__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 52
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42bb02(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movss_0x3c__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addl_0x722ca8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 ptrtoint( %G_0x722ca8_type* @G_0x722ca8 to i64))
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = trunc i64 %3 to i32
  %11 = sitofp i32 %10 to float
  %12 = bitcast i8* %2 to float*
  store float %11, float* %12, align 1
  %13 = extractelement <2 x i32> %6, i32 1
  %14 = getelementptr inbounds i8, i8* %2, i64 4
  %15 = bitcast i8* %14 to i32*
  store i32 %13, i32* %15, align 1
  %16 = extractelement <2 x i32> %9, i32 0
  %17 = bitcast i8* %7 to i32*
  store i32 %16, i32* %17, align 1
  %18 = extractelement <2 x i32> %9, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 12
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fmul float %13, %14
  %16 = bitcast i8* %2 to float*
  store float %15, float* %16, align 1
  %17 = bitcast <2 x float> %7 to <2 x i32>
  %18 = extractelement <2 x i32> %17, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %10, i32 0
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %10, i32 1
  %25 = getelementptr inbounds i8, i8* %2, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fadd float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addss___rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %13)
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fdiv float %13, %14
  %16 = bitcast i8* %2 to float*
  store float %15, float* %16, align 1
  %17 = bitcast <2 x float> %7 to <2 x i32>
  %18 = extractelement <2 x i32> %17, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %10, i32 0
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %10, i32 1
  %25 = getelementptr inbounds i8, i8* %2, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movss__xmm0__0x3c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 60
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0x40__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_addss_0x4__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_movss__xmm0__0x40__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0x44__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_addss_0x8__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_movss__xmm0__0x44__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 68
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42bbea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movss_0x20__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x6f8edc___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6f8edc_type* @G_0x6f8edc to i64))
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









define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = inttoptr i64 %3 to i32*
  %11 = load i32, i32* %10
  %12 = sitofp i32 %11 to float
  %13 = bitcast i8* %2 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %6, i32 1
  %15 = getelementptr inbounds i8, i8* %2, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 0
  %18 = bitcast i8* %7 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %9, i32 1
  %20 = getelementptr inbounds i8, i8* %2, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2ssl_0x6f8edc___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6f8edc_type* @G_0x6f8edc to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movss_0x2c__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}
























define %struct.Memory* @routine_movss_0x38__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_jmpq_.L_42bda8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_42bcd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movss_0x1c__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x722ca8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x722ca8_type* @G_0x722ca8 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_cvtsi2ssl_0x722ca8___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x722ca8_type* @G_0x722ca8 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movss_0x28__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}
























define %struct.Memory* @routine_movss_0x34__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_jmpq_.L_42bda3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movss_0x18__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x6cee50___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6cee50_type* @G_0x6cee50 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_cvtsi2ssl_0x6cee50___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6cee50_type* @G_0x6cee50 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movss_0x24__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}
























define %struct.Memory* @routine_movss_0x30__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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

