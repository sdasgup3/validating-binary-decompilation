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


define %struct.Memory* @getAffNeighbour(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .getAffNeighbour:	 RIP: 44a6e0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 44a6e0	 Bytes: 1
  %loadMem_44a6e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a6e0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a6e0)
  store %struct.Memory* %call_44a6e0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 44a6e1	 Bytes: 3
  %loadMem_44a6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a6e1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a6e1)
  store %struct.Memory* %call_44a6e1, %struct.Memory** %MEMORY

  ; Code: subq $0x60, %rsp	 RIP: 44a6e4	 Bytes: 4
  %loadMem_44a6e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a6e4 = call %struct.Memory* @routine_subq__0x60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a6e4)
  store %struct.Memory* %call_44a6e4, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 44a6e8	 Bytes: 3
  %loadMem_44a6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a6e8 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a6e8)
  store %struct.Memory* %call_44a6e8, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 44a6eb	 Bytes: 3
  %loadMem_44a6eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a6eb = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a6eb)
  store %struct.Memory* %call_44a6eb, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xc(%rbp)	 RIP: 44a6ee	 Bytes: 3
  %loadMem_44a6ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a6ee = call %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a6ee)
  store %struct.Memory* %call_44a6ee, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x10(%rbp)	 RIP: 44a6f1	 Bytes: 3
  %loadMem_44a6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a6f1 = call %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a6f1)
  store %struct.Memory* %call_44a6f1, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x18(%rbp)	 RIP: 44a6f4	 Bytes: 4
  %loadMem_44a6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a6f4 = call %struct.Memory* @routine_movq__r8__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a6f4)
  store %struct.Memory* %call_44a6f4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r8	 RIP: 44a6f8	 Bytes: 8
  %loadMem_44a6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a6f8 = call %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a6f8)
  store %struct.Memory* %call_44a6f8, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%r8), %r8	 RIP: 44a700	 Bytes: 7
  %loadMem_44a700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a700 = call %struct.Memory* @routine_movq_0x3758__r8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a700)
  store %struct.Memory* %call_44a700, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 44a707	 Bytes: 3
  %loadMem_44a707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a707 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a707)
  store %struct.Memory* %call_44a707, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 44a70a	 Bytes: 2
  %loadMem_44a70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a70a = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a70a)
  store %struct.Memory* %call_44a70a, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rax, %rax	 RIP: 44a70c	 Bytes: 7
  %loadMem_44a70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a70c = call %struct.Memory* @routine_imulq__0x278___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a70c)
  store %struct.Memory* %call_44a70c, %struct.Memory** %MEMORY

  ; Code: addq %rax, %r8	 RIP: 44a713	 Bytes: 3
  %loadMem_44a713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a713 = call %struct.Memory* @routine_addq__rax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a713)
  store %struct.Memory* %call_44a713, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x20(%rbp)	 RIP: 44a716	 Bytes: 4
  %loadMem_44a716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a716 = call %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a716)
  store %struct.Memory* %call_44a716, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x2c(%rbp)	 RIP: 44a71a	 Bytes: 7
  %loadMem_44a71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a71a = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a71a)
  store %struct.Memory* %call_44a71a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 44a721	 Bytes: 4
  %loadMem_44a721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a721 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a721)
  store %struct.Memory* %call_44a721, %struct.Memory** %MEMORY

  ; Code: je .L_44a73e	 RIP: 44a725	 Bytes: 6
  %loadMem_44a725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a725 = call %struct.Memory* @routine_je_.L_44a73e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a725, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_44a725, %struct.Memory** %MEMORY

  %loadBr_44a725 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a725 = icmp eq i8 %loadBr_44a725, 1
  br i1 %cmpBr_44a725, label %block_.L_44a73e, label %block_44a72b

block_44a72b:
  ; Code: movl $0x10, -0x24(%rbp)	 RIP: 44a72b	 Bytes: 7
  %loadMem_44a72b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a72b = call %struct.Memory* @routine_movl__0x10__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a72b)
  store %struct.Memory* %call_44a72b, %struct.Memory** %MEMORY

  ; Code: movl $0x10, -0x28(%rbp)	 RIP: 44a732	 Bytes: 7
  %loadMem_44a732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a732 = call %struct.Memory* @routine_movl__0x10__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a732)
  store %struct.Memory* %call_44a732, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44a760	 RIP: 44a739	 Bytes: 5
  %loadMem_44a739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a739 = call %struct.Memory* @routine_jmpq_.L_44a760(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a739, i64 39, i64 5)
  store %struct.Memory* %call_44a739, %struct.Memory** %MEMORY

  br label %block_.L_44a760

  ; Code: .L_44a73e:	 RIP: 44a73e	 Bytes: 0
block_.L_44a73e:

  ; Code: movq 0x6cb900, %rax	 RIP: 44a73e	 Bytes: 8
  %loadMem_44a73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a73e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a73e)
  store %struct.Memory* %call_44a73e, %struct.Memory** %MEMORY

  ; Code: movl 0x11c04(%rax), %ecx	 RIP: 44a746	 Bytes: 6
  %loadMem_44a746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a746 = call %struct.Memory* @routine_movl_0x11c04__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a746)
  store %struct.Memory* %call_44a746, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 44a74c	 Bytes: 3
  %loadMem_44a74c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a74c = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a74c)
  store %struct.Memory* %call_44a74c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 44a74f	 Bytes: 8
  %loadMem_44a74f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a74f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a74f)
  store %struct.Memory* %call_44a74f, %struct.Memory** %MEMORY

  ; Code: movl 0x11c08(%rax), %ecx	 RIP: 44a757	 Bytes: 6
  %loadMem_44a757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a757 = call %struct.Memory* @routine_movl_0x11c08__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a757)
  store %struct.Memory* %call_44a757, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 44a75d	 Bytes: 3
  %loadMem_44a75d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a75d = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a75d)
  store %struct.Memory* %call_44a75d, %struct.Memory** %MEMORY

  ; Code: .L_44a760:	 RIP: 44a760	 Bytes: 0
  br label %block_.L_44a760
block_.L_44a760:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44a760	 Bytes: 4
  %loadMem_44a760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a760 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a760)
  store %struct.Memory* %call_44a760, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax)	 RIP: 44a764	 Bytes: 6
  %loadMem_44a764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a764 = call %struct.Memory* @routine_movl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a764)
  store %struct.Memory* %call_44a764, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44a76a	 Bytes: 3
  %loadMem_44a76a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a76a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a76a)
  store %struct.Memory* %call_44a76a, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 44a76d	 Bytes: 3
  %loadMem_44a76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a76d = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a76d)
  store %struct.Memory* %call_44a76d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 44a770	 Bytes: 3
  %loadMem_44a770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a770 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a770)
  store %struct.Memory* %call_44a770, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 44a773	 Bytes: 2
  %loadMem_44a773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a773 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a773)
  store %struct.Memory* %call_44a773, %struct.Memory** %MEMORY

  ; Code: jle .L_44a780	 RIP: 44a775	 Bytes: 6
  %loadMem_44a775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a775 = call %struct.Memory* @routine_jle_.L_44a780(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a775, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44a775, %struct.Memory** %MEMORY

  %loadBr_44a775 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a775 = icmp eq i8 %loadBr_44a775, 1
  br i1 %cmpBr_44a775, label %block_.L_44a780, label %block_44a77b

block_44a77b:
  ; Code: jmpq .L_44b1a3	 RIP: 44a77b	 Bytes: 5
  %loadMem_44a77b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a77b = call %struct.Memory* @routine_jmpq_.L_44b1a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a77b, i64 2600, i64 5)
  store %struct.Memory* %call_44a77b, %struct.Memory** %MEMORY

  br label %block_.L_44b1a3

  ; Code: .L_44a780:	 RIP: 44a780	 Bytes: 0
block_.L_44a780:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 44a780	 Bytes: 3
  %loadMem_44a780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a780 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a780)
  store %struct.Memory* %call_44a780, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44a783	 Bytes: 3
  %loadMem_44a783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a783 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a783)
  store %struct.Memory* %call_44a783, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 44a786	 Bytes: 3
  %loadMem_44a786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a786 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a786)
  store %struct.Memory* %call_44a786, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 44a789	 Bytes: 2
  %loadMem_44a789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a789 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a789)
  store %struct.Memory* %call_44a789, %struct.Memory** %MEMORY

  ; Code: jle .L_44a7ac	 RIP: 44a78b	 Bytes: 6
  %loadMem_44a78b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a78b = call %struct.Memory* @routine_jle_.L_44a7ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a78b, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_44a78b, %struct.Memory** %MEMORY

  %loadBr_44a78b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a78b = icmp eq i8 %loadBr_44a78b, 1
  br i1 %cmpBr_44a78b, label %block_.L_44a7ac, label %block_44a791

block_44a791:
  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 44a791	 Bytes: 4
  %loadMem_44a791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a791 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a791)
  store %struct.Memory* %call_44a791, %struct.Memory** %MEMORY

  ; Code: jl .L_44a7ac	 RIP: 44a795	 Bytes: 6
  %loadMem_44a795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a795 = call %struct.Memory* @routine_jl_.L_44a7ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a795, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_44a795, %struct.Memory** %MEMORY

  %loadBr_44a795 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a795 = icmp eq i8 %loadBr_44a795, 1
  br i1 %cmpBr_44a795, label %block_.L_44a7ac, label %block_44a79b

block_44a79b:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 44a79b	 Bytes: 3
  %loadMem_44a79b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a79b = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a79b)
  store %struct.Memory* %call_44a79b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %eax	 RIP: 44a79e	 Bytes: 3
  %loadMem_44a79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a79e = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a79e)
  store %struct.Memory* %call_44a79e, %struct.Memory** %MEMORY

  ; Code: jge .L_44a7ac	 RIP: 44a7a1	 Bytes: 6
  %loadMem_44a7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7a1 = call %struct.Memory* @routine_jge_.L_44a7ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7a1, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44a7a1, %struct.Memory** %MEMORY

  %loadBr_44a7a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a7a1 = icmp eq i8 %loadBr_44a7a1, 1
  br i1 %cmpBr_44a7a1, label %block_.L_44a7ac, label %block_44a7a7

block_44a7a7:
  ; Code: jmpq .L_44b1a3	 RIP: 44a7a7	 Bytes: 5
  %loadMem_44a7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7a7 = call %struct.Memory* @routine_jmpq_.L_44b1a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7a7, i64 2556, i64 5)
  store %struct.Memory* %call_44a7a7, %struct.Memory** %MEMORY

  br label %block_.L_44b1a3

  ; Code: .L_44a7ac:	 RIP: 44a7ac	 Bytes: 0
block_.L_44a7ac:

  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 44a7ac	 Bytes: 4
  %loadMem_44a7ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7ac = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7ac)
  store %struct.Memory* %call_44a7ac, %struct.Memory** %MEMORY

  ; Code: jge .L_44acee	 RIP: 44a7b0	 Bytes: 6
  %loadMem_44a7b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7b0 = call %struct.Memory* @routine_jge_.L_44acee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7b0, i8* %BRANCH_TAKEN, i64 1342, i64 6, i64 6)
  store %struct.Memory* %call_44a7b0, %struct.Memory** %MEMORY

  %loadBr_44a7b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a7b0 = icmp eq i8 %loadBr_44a7b0, 1
  br i1 %cmpBr_44a7b0, label %block_.L_44acee, label %block_44a7b6

block_44a7b6:
  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 44a7b6	 Bytes: 4
  %loadMem_44a7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7b6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7b6)
  store %struct.Memory* %call_44a7b6, %struct.Memory** %MEMORY

  ; Code: jge .L_44a976	 RIP: 44a7ba	 Bytes: 6
  %loadMem_44a7ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7ba = call %struct.Memory* @routine_jge_.L_44a976(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7ba, i8* %BRANCH_TAKEN, i64 444, i64 6, i64 6)
  store %struct.Memory* %call_44a7ba, %struct.Memory** %MEMORY

  %loadBr_44a7ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a7ba = icmp eq i8 %loadBr_44a7ba, 1
  br i1 %cmpBr_44a7ba, label %block_.L_44a976, label %block_44a7c0

block_44a7c0:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 44a7c0	 Bytes: 4
  %loadMem_44a7c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7c0 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7c0)
  store %struct.Memory* %call_44a7c0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 44a7c4	 Bytes: 7
  %loadMem_44a7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7c4 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7c4)
  store %struct.Memory* %call_44a7c4, %struct.Memory** %MEMORY

  ; Code: jne .L_44a8a5	 RIP: 44a7cb	 Bytes: 6
  %loadMem_44a7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7cb = call %struct.Memory* @routine_jne_.L_44a8a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7cb, i8* %BRANCH_TAKEN, i64 218, i64 6, i64 6)
  store %struct.Memory* %call_44a7cb, %struct.Memory** %MEMORY

  %loadBr_44a7cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a7cb = icmp eq i8 %loadBr_44a7cb, 1
  br i1 %cmpBr_44a7cb, label %block_.L_44a8a5, label %block_44a7d1

block_44a7d1:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 44a7d1	 Bytes: 3
  %loadMem_44a7d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7d1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7d1)
  store %struct.Memory* %call_44a7d1, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %eax	 RIP: 44a7d4	 Bytes: 3
  %loadMem_44a7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7d4 = call %struct.Memory* @routine_andl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7d4)
  store %struct.Memory* %call_44a7d4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44a7d7	 Bytes: 3
  %loadMem_44a7d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7d7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7d7)
  store %struct.Memory* %call_44a7d7, %struct.Memory** %MEMORY

  ; Code: jne .L_44a80f	 RIP: 44a7da	 Bytes: 6
  %loadMem_44a7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7da = call %struct.Memory* @routine_jne_.L_44a80f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7da, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_44a7da, %struct.Memory** %MEMORY

  %loadBr_44a7da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a7da = icmp eq i8 %loadBr_44a7da, 1
  br i1 %cmpBr_44a7da, label %block_.L_44a80f, label %block_44a7e0

block_44a7e0:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 44a7e0	 Bytes: 4
  %loadMem_44a7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7e0 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7e0)
  store %struct.Memory* %call_44a7e0, %struct.Memory** %MEMORY

  ; Code: movl 0x224(%rax), %ecx	 RIP: 44a7e4	 Bytes: 6
  %loadMem_44a7e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7e4 = call %struct.Memory* @routine_movl_0x224__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7e4)
  store %struct.Memory* %call_44a7e4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44a7ea	 Bytes: 3
  %loadMem_44a7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7ea = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7ea)
  store %struct.Memory* %call_44a7ea, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44a7ed	 Bytes: 4
  %loadMem_44a7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7ed = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7ed)
  store %struct.Memory* %call_44a7ed, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44a7f1	 Bytes: 3
  %loadMem_44a7f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7f1 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7f1)
  store %struct.Memory* %call_44a7f1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44a7f4	 Bytes: 4
  %loadMem_44a7f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7f4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7f4)
  store %struct.Memory* %call_44a7f4, %struct.Memory** %MEMORY

  ; Code: movl 0x234(%rax), %ecx	 RIP: 44a7f8	 Bytes: 6
  %loadMem_44a7f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7f8 = call %struct.Memory* @routine_movl_0x234__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7f8)
  store %struct.Memory* %call_44a7f8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44a7fe	 Bytes: 4
  %loadMem_44a7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a7fe = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a7fe)
  store %struct.Memory* %call_44a7fe, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 44a802	 Bytes: 2
  %loadMem_44a802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a802 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a802)
  store %struct.Memory* %call_44a802, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44a804	 Bytes: 3
  %loadMem_44a804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a804 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a804)
  store %struct.Memory* %call_44a804, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44a807	 Bytes: 3
  %loadMem_44a807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a807 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a807)
  store %struct.Memory* %call_44a807, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44a8a0	 RIP: 44a80a	 Bytes: 5
  %loadMem_44a80a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a80a = call %struct.Memory* @routine_jmpq_.L_44a8a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a80a, i64 150, i64 5)
  store %struct.Memory* %call_44a80a, %struct.Memory** %MEMORY

  br label %block_.L_44a8a0

  ; Code: .L_44a80f:	 RIP: 44a80f	 Bytes: 0
block_.L_44a80f:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44a80f	 Bytes: 4
  %loadMem_44a80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a80f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a80f)
  store %struct.Memory* %call_44a80f, %struct.Memory** %MEMORY

  ; Code: movl 0x218(%rax), %ecx	 RIP: 44a813	 Bytes: 6
  %loadMem_44a813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a813 = call %struct.Memory* @routine_movl_0x218__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a813)
  store %struct.Memory* %call_44a813, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44a819	 Bytes: 4
  %loadMem_44a819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a819 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a819)
  store %struct.Memory* %call_44a819, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44a81d	 Bytes: 3
  %loadMem_44a81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a81d = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a81d)
  store %struct.Memory* %call_44a81d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44a820	 Bytes: 4
  %loadMem_44a820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a820 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a820)
  store %struct.Memory* %call_44a820, %struct.Memory** %MEMORY

  ; Code: movl 0x228(%rax), %ecx	 RIP: 44a824	 Bytes: 6
  %loadMem_44a824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a824 = call %struct.Memory* @routine_movl_0x228__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a824)
  store %struct.Memory* %call_44a824, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44a82a	 Bytes: 4
  %loadMem_44a82a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a82a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a82a)
  store %struct.Memory* %call_44a82a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 44a82e	 Bytes: 2
  %loadMem_44a82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a82e = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a82e)
  store %struct.Memory* %call_44a82e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44a830	 Bytes: 4
  %loadMem_44a830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a830 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a830)
  store %struct.Memory* %call_44a830, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x228(%rax)	 RIP: 44a834	 Bytes: 7
  %loadMem_44a834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a834 = call %struct.Memory* @routine_cmpl__0x0__0x228__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a834)
  store %struct.Memory* %call_44a834, %struct.Memory** %MEMORY

  ; Code: je .L_44a89b	 RIP: 44a83b	 Bytes: 6
  %loadMem_44a83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a83b = call %struct.Memory* @routine_je_.L_44a89b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a83b, i8* %BRANCH_TAKEN, i64 96, i64 6, i64 6)
  store %struct.Memory* %call_44a83b, %struct.Memory** %MEMORY

  %loadBr_44a83b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a83b = icmp eq i8 %loadBr_44a83b, 1
  br i1 %cmpBr_44a83b, label %block_.L_44a89b, label %block_44a841

block_44a841:
  ; Code: movq 0x6cb900, %rax	 RIP: 44a841	 Bytes: 8
  %loadMem_44a841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a841 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a841)
  store %struct.Memory* %call_44a841, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 44a849	 Bytes: 7
  %loadMem_44a849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a849 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a849)
  store %struct.Memory* %call_44a849, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 44a850	 Bytes: 4
  %loadMem_44a850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a850 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a850)
  store %struct.Memory* %call_44a850, %struct.Memory** %MEMORY

  ; Code: movslq 0x218(%rcx), %rcx	 RIP: 44a854	 Bytes: 7
  %loadMem_44a854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a854 = call %struct.Memory* @routine_movslq_0x218__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a854)
  store %struct.Memory* %call_44a854, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 44a85b	 Bytes: 7
  %loadMem_44a85b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a85b = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a85b)
  store %struct.Memory* %call_44a85b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44a862	 Bytes: 3
  %loadMem_44a862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a862 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a862)
  store %struct.Memory* %call_44a862, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 44a865	 Bytes: 7
  %loadMem_44a865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a865 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a865)
  store %struct.Memory* %call_44a865, %struct.Memory** %MEMORY

  ; Code: jne .L_44a87d	 RIP: 44a86c	 Bytes: 6
  %loadMem_44a86c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a86c = call %struct.Memory* @routine_jne_.L_44a87d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a86c, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_44a86c, %struct.Memory** %MEMORY

  %loadBr_44a86c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a86c = icmp eq i8 %loadBr_44a86c, 1
  br i1 %cmpBr_44a86c, label %block_.L_44a87d, label %block_44a872

block_44a872:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 44a872	 Bytes: 3
  %loadMem_44a872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a872 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a872)
  store %struct.Memory* %call_44a872, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 44a875	 Bytes: 3
  %loadMem_44a875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a875 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a875)
  store %struct.Memory* %call_44a875, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44a896	 RIP: 44a878	 Bytes: 5
  %loadMem_44a878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a878 = call %struct.Memory* @routine_jmpq_.L_44a896(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a878, i64 30, i64 5)
  store %struct.Memory* %call_44a878, %struct.Memory** %MEMORY

  br label %block_.L_44a896

  ; Code: .L_44a87d:	 RIP: 44a87d	 Bytes: 0
block_.L_44a87d:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44a87d	 Bytes: 4
  %loadMem_44a87d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a87d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a87d)
  store %struct.Memory* %call_44a87d, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 44a881	 Bytes: 3
  %loadMem_44a881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a881 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a881)
  store %struct.Memory* %call_44a881, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44a884	 Bytes: 3
  %loadMem_44a884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a884 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a884)
  store %struct.Memory* %call_44a884, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44a887	 Bytes: 3
  %loadMem_44a887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a887 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a887)
  store %struct.Memory* %call_44a887, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44a88a	 Bytes: 3
  %loadMem_44a88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a88a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a88a)
  store %struct.Memory* %call_44a88a, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %ecx	 RIP: 44a88d	 Bytes: 3
  %loadMem_44a88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a88d = call %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a88d)
  store %struct.Memory* %call_44a88d, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %ecx	 RIP: 44a890	 Bytes: 3
  %loadMem_44a890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a890 = call %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a890)
  store %struct.Memory* %call_44a890, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44a893	 Bytes: 3
  %loadMem_44a893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a893 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a893)
  store %struct.Memory* %call_44a893, %struct.Memory** %MEMORY

  ; Code: .L_44a896:	 RIP: 44a896	 Bytes: 0
  br label %block_.L_44a896
block_.L_44a896:

  ; Code: jmpq .L_44a89b	 RIP: 44a896	 Bytes: 5
  %loadMem_44a896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a896 = call %struct.Memory* @routine_jmpq_.L_44a89b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a896, i64 5, i64 5)
  store %struct.Memory* %call_44a896, %struct.Memory** %MEMORY

  br label %block_.L_44a89b

  ; Code: .L_44a89b:	 RIP: 44a89b	 Bytes: 0
block_.L_44a89b:

  ; Code: jmpq .L_44a8a0	 RIP: 44a89b	 Bytes: 5
  %loadMem_44a89b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a89b = call %struct.Memory* @routine_jmpq_.L_44a8a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a89b, i64 5, i64 5)
  store %struct.Memory* %call_44a89b, %struct.Memory** %MEMORY

  br label %block_.L_44a8a0

  ; Code: .L_44a8a0:	 RIP: 44a8a0	 Bytes: 0
block_.L_44a8a0:

  ; Code: jmpq .L_44a971	 RIP: 44a8a0	 Bytes: 5
  %loadMem_44a8a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8a0 = call %struct.Memory* @routine_jmpq_.L_44a971(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8a0, i64 209, i64 5)
  store %struct.Memory* %call_44a8a0, %struct.Memory** %MEMORY

  br label %block_.L_44a971

  ; Code: .L_44a8a5:	 RIP: 44a8a5	 Bytes: 0
block_.L_44a8a5:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 44a8a5	 Bytes: 3
  %loadMem_44a8a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8a5 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8a5)
  store %struct.Memory* %call_44a8a5, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %eax	 RIP: 44a8a8	 Bytes: 3
  %loadMem_44a8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8a8 = call %struct.Memory* @routine_andl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8a8)
  store %struct.Memory* %call_44a8a8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44a8ab	 Bytes: 3
  %loadMem_44a8ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8ab = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8ab)
  store %struct.Memory* %call_44a8ab, %struct.Memory** %MEMORY

  ; Code: jne .L_44a942	 RIP: 44a8ae	 Bytes: 6
  %loadMem_44a8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8ae = call %struct.Memory* @routine_jne_.L_44a942(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8ae, i8* %BRANCH_TAKEN, i64 148, i64 6, i64 6)
  store %struct.Memory* %call_44a8ae, %struct.Memory** %MEMORY

  %loadBr_44a8ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a8ae = icmp eq i8 %loadBr_44a8ae, 1
  br i1 %cmpBr_44a8ae, label %block_.L_44a942, label %block_44a8b4

block_44a8b4:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 44a8b4	 Bytes: 4
  %loadMem_44a8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8b4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8b4)
  store %struct.Memory* %call_44a8b4, %struct.Memory** %MEMORY

  ; Code: movl 0x224(%rax), %ecx	 RIP: 44a8b8	 Bytes: 6
  %loadMem_44a8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8b8 = call %struct.Memory* @routine_movl_0x224__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8b8)
  store %struct.Memory* %call_44a8b8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44a8be	 Bytes: 4
  %loadMem_44a8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8be = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8be)
  store %struct.Memory* %call_44a8be, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44a8c2	 Bytes: 3
  %loadMem_44a8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8c2 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8c2)
  store %struct.Memory* %call_44a8c2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44a8c5	 Bytes: 4
  %loadMem_44a8c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8c5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8c5)
  store %struct.Memory* %call_44a8c5, %struct.Memory** %MEMORY

  ; Code: movl 0x234(%rax), %ecx	 RIP: 44a8c9	 Bytes: 6
  %loadMem_44a8c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8c9 = call %struct.Memory* @routine_movl_0x234__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8c9)
  store %struct.Memory* %call_44a8c9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44a8cf	 Bytes: 4
  %loadMem_44a8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8cf = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8cf)
  store %struct.Memory* %call_44a8cf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 44a8d3	 Bytes: 2
  %loadMem_44a8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8d3 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8d3)
  store %struct.Memory* %call_44a8d3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44a8d5	 Bytes: 4
  %loadMem_44a8d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8d5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8d5)
  store %struct.Memory* %call_44a8d5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x234(%rax)	 RIP: 44a8d9	 Bytes: 7
  %loadMem_44a8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8d9 = call %struct.Memory* @routine_cmpl__0x0__0x234__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8d9)
  store %struct.Memory* %call_44a8d9, %struct.Memory** %MEMORY

  ; Code: je .L_44a93d	 RIP: 44a8e0	 Bytes: 6
  %loadMem_44a8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8e0 = call %struct.Memory* @routine_je_.L_44a93d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8e0, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_44a8e0, %struct.Memory** %MEMORY

  %loadBr_44a8e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a8e0 = icmp eq i8 %loadBr_44a8e0, 1
  br i1 %cmpBr_44a8e0, label %block_.L_44a93d, label %block_44a8e6

block_44a8e6:
  ; Code: movq 0x6cb900, %rax	 RIP: 44a8e6	 Bytes: 8
  %loadMem_44a8e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8e6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8e6)
  store %struct.Memory* %call_44a8e6, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 44a8ee	 Bytes: 7
  %loadMem_44a8ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8ee = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8ee)
  store %struct.Memory* %call_44a8ee, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 44a8f5	 Bytes: 4
  %loadMem_44a8f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8f5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8f5)
  store %struct.Memory* %call_44a8f5, %struct.Memory** %MEMORY

  ; Code: movslq 0x224(%rcx), %rcx	 RIP: 44a8f9	 Bytes: 7
  %loadMem_44a8f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a8f9 = call %struct.Memory* @routine_movslq_0x224__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a8f9)
  store %struct.Memory* %call_44a8f9, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 44a900	 Bytes: 7
  %loadMem_44a900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a900 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a900)
  store %struct.Memory* %call_44a900, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44a907	 Bytes: 3
  %loadMem_44a907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a907 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a907)
  store %struct.Memory* %call_44a907, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 44a90a	 Bytes: 7
  %loadMem_44a90a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a90a = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a90a)
  store %struct.Memory* %call_44a90a, %struct.Memory** %MEMORY

  ; Code: jne .L_44a932	 RIP: 44a911	 Bytes: 6
  %loadMem_44a911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a911 = call %struct.Memory* @routine_jne_.L_44a932(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a911, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_44a911, %struct.Memory** %MEMORY

  %loadBr_44a911 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a911 = icmp eq i8 %loadBr_44a911, 1
  br i1 %cmpBr_44a911, label %block_.L_44a932, label %block_44a917

block_44a917:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 44a917	 Bytes: 4
  %loadMem_44a917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a917 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a917)
  store %struct.Memory* %call_44a917, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 44a91b	 Bytes: 3
  %loadMem_44a91b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a91b = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a91b)
  store %struct.Memory* %call_44a91b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44a91e	 Bytes: 3
  %loadMem_44a91e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a91e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a91e)
  store %struct.Memory* %call_44a91e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44a921	 Bytes: 3
  %loadMem_44a921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a921 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a921)
  store %struct.Memory* %call_44a921, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44a924	 Bytes: 3
  %loadMem_44a924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a924 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a924)
  store %struct.Memory* %call_44a924, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 44a927	 Bytes: 3
  %loadMem_44a927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a927 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a927)
  store %struct.Memory* %call_44a927, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44a92a	 Bytes: 3
  %loadMem_44a92a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a92a = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a92a)
  store %struct.Memory* %call_44a92a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44a938	 RIP: 44a92d	 Bytes: 5
  %loadMem_44a92d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a92d = call %struct.Memory* @routine_jmpq_.L_44a938(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a92d, i64 11, i64 5)
  store %struct.Memory* %call_44a92d, %struct.Memory** %MEMORY

  br label %block_.L_44a938

  ; Code: .L_44a932:	 RIP: 44a932	 Bytes: 0
block_.L_44a932:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 44a932	 Bytes: 3
  %loadMem_44a932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a932 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a932)
  store %struct.Memory* %call_44a932, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 44a935	 Bytes: 3
  %loadMem_44a935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a935 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a935)
  store %struct.Memory* %call_44a935, %struct.Memory** %MEMORY

  ; Code: .L_44a938:	 RIP: 44a938	 Bytes: 0
  br label %block_.L_44a938
block_.L_44a938:

  ; Code: jmpq .L_44a93d	 RIP: 44a938	 Bytes: 5
  %loadMem_44a938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a938 = call %struct.Memory* @routine_jmpq_.L_44a93d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a938, i64 5, i64 5)
  store %struct.Memory* %call_44a938, %struct.Memory** %MEMORY

  br label %block_.L_44a93d

  ; Code: .L_44a93d:	 RIP: 44a93d	 Bytes: 0
block_.L_44a93d:

  ; Code: jmpq .L_44a96c	 RIP: 44a93d	 Bytes: 5
  %loadMem_44a93d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a93d = call %struct.Memory* @routine_jmpq_.L_44a96c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a93d, i64 47, i64 5)
  store %struct.Memory* %call_44a93d, %struct.Memory** %MEMORY

  br label %block_.L_44a96c

  ; Code: .L_44a942:	 RIP: 44a942	 Bytes: 0
block_.L_44a942:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44a942	 Bytes: 4
  %loadMem_44a942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a942 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a942)
  store %struct.Memory* %call_44a942, %struct.Memory** %MEMORY

  ; Code: movl 0x224(%rax), %ecx	 RIP: 44a946	 Bytes: 6
  %loadMem_44a946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a946 = call %struct.Memory* @routine_movl_0x224__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a946)
  store %struct.Memory* %call_44a946, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44a94c	 Bytes: 3
  %loadMem_44a94c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a94c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a94c)
  store %struct.Memory* %call_44a94c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44a94f	 Bytes: 4
  %loadMem_44a94f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a94f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a94f)
  store %struct.Memory* %call_44a94f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44a953	 Bytes: 3
  %loadMem_44a953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a953 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a953)
  store %struct.Memory* %call_44a953, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44a956	 Bytes: 4
  %loadMem_44a956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a956 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a956)
  store %struct.Memory* %call_44a956, %struct.Memory** %MEMORY

  ; Code: movl 0x234(%rax), %ecx	 RIP: 44a95a	 Bytes: 6
  %loadMem_44a95a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a95a = call %struct.Memory* @routine_movl_0x234__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a95a)
  store %struct.Memory* %call_44a95a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44a960	 Bytes: 4
  %loadMem_44a960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a960 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a960)
  store %struct.Memory* %call_44a960, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 44a964	 Bytes: 2
  %loadMem_44a964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a964 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a964)
  store %struct.Memory* %call_44a964, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44a966	 Bytes: 3
  %loadMem_44a966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a966 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a966)
  store %struct.Memory* %call_44a966, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44a969	 Bytes: 3
  %loadMem_44a969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a969 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a969)
  store %struct.Memory* %call_44a969, %struct.Memory** %MEMORY

  ; Code: .L_44a96c:	 RIP: 44a96c	 Bytes: 0
  br label %block_.L_44a96c
block_.L_44a96c:

  ; Code: jmpq .L_44a971	 RIP: 44a96c	 Bytes: 5
  %loadMem_44a96c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a96c = call %struct.Memory* @routine_jmpq_.L_44a971(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a96c, i64 5, i64 5)
  store %struct.Memory* %call_44a96c, %struct.Memory** %MEMORY

  br label %block_.L_44a971

  ; Code: .L_44a971:	 RIP: 44a971	 Bytes: 0
block_.L_44a971:

  ; Code: jmpq .L_44ace9	 RIP: 44a971	 Bytes: 5
  %loadMem_44a971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a971 = call %struct.Memory* @routine_jmpq_.L_44ace9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a971, i64 888, i64 5)
  store %struct.Memory* %call_44a971, %struct.Memory** %MEMORY

  br label %block_.L_44ace9

  ; Code: .L_44a976:	 RIP: 44a976	 Bytes: 0
block_.L_44a976:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 44a976	 Bytes: 4
  %loadMem_44a976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a976 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a976)
  store %struct.Memory* %call_44a976, %struct.Memory** %MEMORY

  ; Code: jl .L_44ace4	 RIP: 44a97a	 Bytes: 6
  %loadMem_44a97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a97a = call %struct.Memory* @routine_jl_.L_44ace4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a97a, i8* %BRANCH_TAKEN, i64 874, i64 6, i64 6)
  store %struct.Memory* %call_44a97a, %struct.Memory** %MEMORY

  %loadBr_44a97a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a97a = icmp eq i8 %loadBr_44a97a, 1
  br i1 %cmpBr_44a97a, label %block_.L_44ace4, label %block_44a980

block_44a980:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 44a980	 Bytes: 3
  %loadMem_44a980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a980 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a980)
  store %struct.Memory* %call_44a980, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %eax	 RIP: 44a983	 Bytes: 3
  %loadMem_44a983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a983 = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a983)
  store %struct.Memory* %call_44a983, %struct.Memory** %MEMORY

  ; Code: jge .L_44ace4	 RIP: 44a986	 Bytes: 6
  %loadMem_44a986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a986 = call %struct.Memory* @routine_jge_.L_44ace4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a986, i8* %BRANCH_TAKEN, i64 862, i64 6, i64 6)
  store %struct.Memory* %call_44a986, %struct.Memory** %MEMORY

  %loadBr_44a986 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a986 = icmp eq i8 %loadBr_44a986, 1
  br i1 %cmpBr_44a986, label %block_.L_44ace4, label %block_44a98c

block_44a98c:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 44a98c	 Bytes: 4
  %loadMem_44a98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a98c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a98c)
  store %struct.Memory* %call_44a98c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 44a990	 Bytes: 7
  %loadMem_44a990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a990 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a990)
  store %struct.Memory* %call_44a990, %struct.Memory** %MEMORY

  ; Code: jne .L_44ab3e	 RIP: 44a997	 Bytes: 6
  %loadMem_44a997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a997 = call %struct.Memory* @routine_jne_.L_44ab3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a997, i8* %BRANCH_TAKEN, i64 423, i64 6, i64 6)
  store %struct.Memory* %call_44a997, %struct.Memory** %MEMORY

  %loadBr_44a997 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a997 = icmp eq i8 %loadBr_44a997, 1
  br i1 %cmpBr_44a997, label %block_.L_44ab3e, label %block_44a99d

block_44a99d:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 44a99d	 Bytes: 3
  %loadMem_44a99d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a99d = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a99d)
  store %struct.Memory* %call_44a99d, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %eax	 RIP: 44a9a0	 Bytes: 3
  %loadMem_44a9a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9a0 = call %struct.Memory* @routine_andl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9a0)
  store %struct.Memory* %call_44a9a0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44a9a3	 Bytes: 3
  %loadMem_44a9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9a3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9a3)
  store %struct.Memory* %call_44a9a3, %struct.Memory** %MEMORY

  ; Code: jne .L_44aa69	 RIP: 44a9a6	 Bytes: 6
  %loadMem_44a9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9a6 = call %struct.Memory* @routine_jne_.L_44aa69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9a6, i8* %BRANCH_TAKEN, i64 195, i64 6, i64 6)
  store %struct.Memory* %call_44a9a6, %struct.Memory** %MEMORY

  %loadBr_44a9a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a9a6 = icmp eq i8 %loadBr_44a9a6, 1
  br i1 %cmpBr_44a9a6, label %block_.L_44aa69, label %block_44a9ac

block_44a9ac:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 44a9ac	 Bytes: 4
  %loadMem_44a9ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9ac = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9ac)
  store %struct.Memory* %call_44a9ac, %struct.Memory** %MEMORY

  ; Code: movl 0x218(%rax), %ecx	 RIP: 44a9b0	 Bytes: 6
  %loadMem_44a9b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9b0 = call %struct.Memory* @routine_movl_0x218__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9b0)
  store %struct.Memory* %call_44a9b0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44a9b6	 Bytes: 4
  %loadMem_44a9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9b6 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9b6)
  store %struct.Memory* %call_44a9b6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44a9ba	 Bytes: 3
  %loadMem_44a9ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9ba = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9ba)
  store %struct.Memory* %call_44a9ba, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44a9bd	 Bytes: 4
  %loadMem_44a9bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9bd = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9bd)
  store %struct.Memory* %call_44a9bd, %struct.Memory** %MEMORY

  ; Code: movl 0x228(%rax), %ecx	 RIP: 44a9c1	 Bytes: 6
  %loadMem_44a9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9c1 = call %struct.Memory* @routine_movl_0x228__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9c1)
  store %struct.Memory* %call_44a9c1, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44a9c7	 Bytes: 4
  %loadMem_44a9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9c7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9c7)
  store %struct.Memory* %call_44a9c7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 44a9cb	 Bytes: 2
  %loadMem_44a9cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9cb = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9cb)
  store %struct.Memory* %call_44a9cb, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44a9cd	 Bytes: 4
  %loadMem_44a9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9cd = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9cd)
  store %struct.Memory* %call_44a9cd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x228(%rax)	 RIP: 44a9d1	 Bytes: 7
  %loadMem_44a9d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9d1 = call %struct.Memory* @routine_cmpl__0x0__0x228__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9d1)
  store %struct.Memory* %call_44a9d1, %struct.Memory** %MEMORY

  ; Code: je .L_44aa64	 RIP: 44a9d8	 Bytes: 6
  %loadMem_44a9d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9d8 = call %struct.Memory* @routine_je_.L_44aa64(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9d8, i8* %BRANCH_TAKEN, i64 140, i64 6, i64 6)
  store %struct.Memory* %call_44a9d8, %struct.Memory** %MEMORY

  %loadBr_44a9d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44a9d8 = icmp eq i8 %loadBr_44a9d8, 1
  br i1 %cmpBr_44a9d8, label %block_.L_44aa64, label %block_44a9de

block_44a9de:
  ; Code: movq 0x6cb900, %rax	 RIP: 44a9de	 Bytes: 8
  %loadMem_44a9de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9de = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9de)
  store %struct.Memory* %call_44a9de, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 44a9e6	 Bytes: 7
  %loadMem_44a9e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9e6 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9e6)
  store %struct.Memory* %call_44a9e6, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 44a9ed	 Bytes: 4
  %loadMem_44a9ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9ed = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9ed)
  store %struct.Memory* %call_44a9ed, %struct.Memory** %MEMORY

  ; Code: movslq 0x218(%rcx), %rcx	 RIP: 44a9f1	 Bytes: 7
  %loadMem_44a9f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9f1 = call %struct.Memory* @routine_movslq_0x218__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9f1)
  store %struct.Memory* %call_44a9f1, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 44a9f8	 Bytes: 7
  %loadMem_44a9f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9f8 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9f8)
  store %struct.Memory* %call_44a9f8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44a9ff	 Bytes: 3
  %loadMem_44a9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44a9ff = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44a9ff)
  store %struct.Memory* %call_44a9ff, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 44aa02	 Bytes: 7
  %loadMem_44aa02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa02 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa02)
  store %struct.Memory* %call_44aa02, %struct.Memory** %MEMORY

  ; Code: jne .L_44aa1a	 RIP: 44aa09	 Bytes: 6
  %loadMem_44aa09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa09 = call %struct.Memory* @routine_jne_.L_44aa1a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa09, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_44aa09, %struct.Memory** %MEMORY

  %loadBr_44aa09 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aa09 = icmp eq i8 %loadBr_44aa09, 1
  br i1 %cmpBr_44aa09, label %block_.L_44aa1a, label %block_44aa0f

block_44aa0f:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 44aa0f	 Bytes: 3
  %loadMem_44aa0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa0f = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa0f)
  store %struct.Memory* %call_44aa0f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 44aa12	 Bytes: 3
  %loadMem_44aa12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa12 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa12)
  store %struct.Memory* %call_44aa12, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44aa5f	 RIP: 44aa15	 Bytes: 5
  %loadMem_44aa15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa15 = call %struct.Memory* @routine_jmpq_.L_44aa5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa15, i64 74, i64 5)
  store %struct.Memory* %call_44aa15, %struct.Memory** %MEMORY

  br label %block_.L_44aa5f

  ; Code: .L_44aa1a:	 RIP: 44aa1a	 Bytes: 0
block_.L_44aa1a:

  ; Code: movl $0x2, %eax	 RIP: 44aa1a	 Bytes: 5
  %loadMem_44aa1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa1a = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa1a)
  store %struct.Memory* %call_44aa1a, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44aa1f	 Bytes: 3
  %loadMem_44aa1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa1f = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa1f)
  store %struct.Memory* %call_44aa1f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 44aa22	 Bytes: 3
  %loadMem_44aa22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa22 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa22)
  store %struct.Memory* %call_44aa22, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 44aa25	 Bytes: 2
  %loadMem_44aa25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa25 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa25)
  store %struct.Memory* %call_44aa25, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 44aa27	 Bytes: 1
  %loadMem_44aa27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa27 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa27)
  store %struct.Memory* %call_44aa27, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 44aa28	 Bytes: 3
  %loadMem_44aa28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa28 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa28)
  store %struct.Memory* %call_44aa28, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 44aa2b	 Bytes: 2
  %loadMem_44aa2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa2b = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa2b)
  store %struct.Memory* %call_44aa2b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44aa2d	 Bytes: 3
  %loadMem_44aa2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa2d = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa2d)
  store %struct.Memory* %call_44aa2d, %struct.Memory** %MEMORY

  ; Code: jne .L_44aa44	 RIP: 44aa30	 Bytes: 6
  %loadMem_44aa30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa30 = call %struct.Memory* @routine_jne_.L_44aa44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa30, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_44aa30, %struct.Memory** %MEMORY

  %loadBr_44aa30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aa30 = icmp eq i8 %loadBr_44aa30, 1
  br i1 %cmpBr_44aa30, label %block_.L_44aa44, label %block_44aa36

block_44aa36:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 44aa36	 Bytes: 3
  %loadMem_44aa36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa36 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa36)
  store %struct.Memory* %call_44aa36, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %eax	 RIP: 44aa39	 Bytes: 3
  %loadMem_44aa39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa39 = call %struct.Memory* @routine_sarl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa39)
  store %struct.Memory* %call_44aa39, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 44aa3c	 Bytes: 3
  %loadMem_44aa3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa3c = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa3c)
  store %struct.Memory* %call_44aa3c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44aa5a	 RIP: 44aa3f	 Bytes: 5
  %loadMem_44aa3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa3f = call %struct.Memory* @routine_jmpq_.L_44aa5a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa3f, i64 27, i64 5)
  store %struct.Memory* %call_44aa3f, %struct.Memory** %MEMORY

  br label %block_.L_44aa5a

  ; Code: .L_44aa44:	 RIP: 44aa44	 Bytes: 0
block_.L_44aa44:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44aa44	 Bytes: 4
  %loadMem_44aa44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa44 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa44)
  store %struct.Memory* %call_44aa44, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 44aa48	 Bytes: 3
  %loadMem_44aa48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa48 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa48)
  store %struct.Memory* %call_44aa48, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44aa4b	 Bytes: 3
  %loadMem_44aa4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa4b = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa4b)
  store %struct.Memory* %call_44aa4b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44aa4e	 Bytes: 3
  %loadMem_44aa4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa4e = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa4e)
  store %struct.Memory* %call_44aa4e, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44aa51	 Bytes: 3
  %loadMem_44aa51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa51 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa51)
  store %struct.Memory* %call_44aa51, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %ecx	 RIP: 44aa54	 Bytes: 3
  %loadMem_44aa54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa54 = call %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa54)
  store %struct.Memory* %call_44aa54, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44aa57	 Bytes: 3
  %loadMem_44aa57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa57 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa57)
  store %struct.Memory* %call_44aa57, %struct.Memory** %MEMORY

  ; Code: .L_44aa5a:	 RIP: 44aa5a	 Bytes: 0
  br label %block_.L_44aa5a
block_.L_44aa5a:

  ; Code: jmpq .L_44aa5f	 RIP: 44aa5a	 Bytes: 5
  %loadMem_44aa5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa5a = call %struct.Memory* @routine_jmpq_.L_44aa5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa5a, i64 5, i64 5)
  store %struct.Memory* %call_44aa5a, %struct.Memory** %MEMORY

  br label %block_.L_44aa5f

  ; Code: .L_44aa5f:	 RIP: 44aa5f	 Bytes: 0
block_.L_44aa5f:

  ; Code: jmpq .L_44aa64	 RIP: 44aa5f	 Bytes: 5
  %loadMem_44aa5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa5f = call %struct.Memory* @routine_jmpq_.L_44aa64(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa5f, i64 5, i64 5)
  store %struct.Memory* %call_44aa5f, %struct.Memory** %MEMORY

  br label %block_.L_44aa64

  ; Code: .L_44aa64:	 RIP: 44aa64	 Bytes: 0
block_.L_44aa64:

  ; Code: jmpq .L_44ab39	 RIP: 44aa64	 Bytes: 5
  %loadMem_44aa64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa64 = call %struct.Memory* @routine_jmpq_.L_44ab39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa64, i64 213, i64 5)
  store %struct.Memory* %call_44aa64, %struct.Memory** %MEMORY

  br label %block_.L_44ab39

  ; Code: .L_44aa69:	 RIP: 44aa69	 Bytes: 0
block_.L_44aa69:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44aa69	 Bytes: 4
  %loadMem_44aa69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa69 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa69)
  store %struct.Memory* %call_44aa69, %struct.Memory** %MEMORY

  ; Code: movl 0x218(%rax), %ecx	 RIP: 44aa6d	 Bytes: 6
  %loadMem_44aa6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa6d = call %struct.Memory* @routine_movl_0x218__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa6d)
  store %struct.Memory* %call_44aa6d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44aa73	 Bytes: 4
  %loadMem_44aa73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa73 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa73)
  store %struct.Memory* %call_44aa73, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44aa77	 Bytes: 3
  %loadMem_44aa77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa77 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa77)
  store %struct.Memory* %call_44aa77, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44aa7a	 Bytes: 4
  %loadMem_44aa7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa7a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa7a)
  store %struct.Memory* %call_44aa7a, %struct.Memory** %MEMORY

  ; Code: movl 0x228(%rax), %ecx	 RIP: 44aa7e	 Bytes: 6
  %loadMem_44aa7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa7e = call %struct.Memory* @routine_movl_0x228__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa7e)
  store %struct.Memory* %call_44aa7e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44aa84	 Bytes: 4
  %loadMem_44aa84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa84 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa84)
  store %struct.Memory* %call_44aa84, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 44aa88	 Bytes: 2
  %loadMem_44aa88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa88 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa88)
  store %struct.Memory* %call_44aa88, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44aa8a	 Bytes: 4
  %loadMem_44aa8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa8a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa8a)
  store %struct.Memory* %call_44aa8a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x228(%rax)	 RIP: 44aa8e	 Bytes: 7
  %loadMem_44aa8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa8e = call %struct.Memory* @routine_cmpl__0x0__0x228__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa8e)
  store %struct.Memory* %call_44aa8e, %struct.Memory** %MEMORY

  ; Code: je .L_44ab34	 RIP: 44aa95	 Bytes: 6
  %loadMem_44aa95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa95 = call %struct.Memory* @routine_je_.L_44ab34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa95, i8* %BRANCH_TAKEN, i64 159, i64 6, i64 6)
  store %struct.Memory* %call_44aa95, %struct.Memory** %MEMORY

  %loadBr_44aa95 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aa95 = icmp eq i8 %loadBr_44aa95, 1
  br i1 %cmpBr_44aa95, label %block_.L_44ab34, label %block_44aa9b

block_44aa9b:
  ; Code: movq 0x6cb900, %rax	 RIP: 44aa9b	 Bytes: 8
  %loadMem_44aa9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aa9b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aa9b)
  store %struct.Memory* %call_44aa9b, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 44aaa3	 Bytes: 7
  %loadMem_44aaa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aaa3 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aaa3)
  store %struct.Memory* %call_44aaa3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 44aaaa	 Bytes: 4
  %loadMem_44aaaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aaaa = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aaaa)
  store %struct.Memory* %call_44aaaa, %struct.Memory** %MEMORY

  ; Code: movslq 0x218(%rcx), %rcx	 RIP: 44aaae	 Bytes: 7
  %loadMem_44aaae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aaae = call %struct.Memory* @routine_movslq_0x218__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aaae)
  store %struct.Memory* %call_44aaae, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 44aab5	 Bytes: 7
  %loadMem_44aab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aab5 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aab5)
  store %struct.Memory* %call_44aab5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44aabc	 Bytes: 3
  %loadMem_44aabc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aabc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aabc)
  store %struct.Memory* %call_44aabc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 44aabf	 Bytes: 7
  %loadMem_44aabf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aabf = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aabf)
  store %struct.Memory* %call_44aabf, %struct.Memory** %MEMORY

  ; Code: jne .L_44aae4	 RIP: 44aac6	 Bytes: 6
  %loadMem_44aac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aac6 = call %struct.Memory* @routine_jne_.L_44aae4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aac6, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_44aac6, %struct.Memory** %MEMORY

  %loadBr_44aac6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aac6 = icmp eq i8 %loadBr_44aac6, 1
  br i1 %cmpBr_44aac6, label %block_.L_44aae4, label %block_44aacc

block_44aacc:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 44aacc	 Bytes: 4
  %loadMem_44aacc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aacc = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aacc)
  store %struct.Memory* %call_44aacc, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 44aad0	 Bytes: 3
  %loadMem_44aad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aad0 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aad0)
  store %struct.Memory* %call_44aad0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44aad3	 Bytes: 3
  %loadMem_44aad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aad3 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aad3)
  store %struct.Memory* %call_44aad3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44aad6	 Bytes: 3
  %loadMem_44aad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aad6 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aad6)
  store %struct.Memory* %call_44aad6, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44aad9	 Bytes: 3
  %loadMem_44aad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aad9 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aad9)
  store %struct.Memory* %call_44aad9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44aadc	 Bytes: 3
  %loadMem_44aadc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aadc = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aadc)
  store %struct.Memory* %call_44aadc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ab2f	 RIP: 44aadf	 Bytes: 5
  %loadMem_44aadf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aadf = call %struct.Memory* @routine_jmpq_.L_44ab2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aadf, i64 80, i64 5)
  store %struct.Memory* %call_44aadf, %struct.Memory** %MEMORY

  br label %block_.L_44ab2f

  ; Code: .L_44aae4:	 RIP: 44aae4	 Bytes: 0
block_.L_44aae4:

  ; Code: movl $0x2, %eax	 RIP: 44aae4	 Bytes: 5
  %loadMem_44aae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aae4 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aae4)
  store %struct.Memory* %call_44aae4, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44aae9	 Bytes: 3
  %loadMem_44aae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aae9 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aae9)
  store %struct.Memory* %call_44aae9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 44aaec	 Bytes: 3
  %loadMem_44aaec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aaec = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aaec)
  store %struct.Memory* %call_44aaec, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 44aaef	 Bytes: 2
  %loadMem_44aaef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aaef = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aaef)
  store %struct.Memory* %call_44aaef, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 44aaf1	 Bytes: 1
  %loadMem_44aaf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aaf1 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aaf1)
  store %struct.Memory* %call_44aaf1, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 44aaf2	 Bytes: 3
  %loadMem_44aaf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aaf2 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aaf2)
  store %struct.Memory* %call_44aaf2, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 44aaf5	 Bytes: 2
  %loadMem_44aaf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aaf5 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aaf5)
  store %struct.Memory* %call_44aaf5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44aaf7	 Bytes: 3
  %loadMem_44aaf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aaf7 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aaf7)
  store %struct.Memory* %call_44aaf7, %struct.Memory** %MEMORY

  ; Code: jne .L_44ab11	 RIP: 44aafa	 Bytes: 6
  %loadMem_44aafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aafa = call %struct.Memory* @routine_jne_.L_44ab11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aafa, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_44aafa, %struct.Memory** %MEMORY

  %loadBr_44aafa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aafa = icmp eq i8 %loadBr_44aafa, 1
  br i1 %cmpBr_44aafa, label %block_.L_44ab11, label %block_44ab00

block_44ab00:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 44ab00	 Bytes: 3
  %loadMem_44ab00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab00 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab00)
  store %struct.Memory* %call_44ab00, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %eax	 RIP: 44ab03	 Bytes: 3
  %loadMem_44ab03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab03 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab03)
  store %struct.Memory* %call_44ab03, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %eax	 RIP: 44ab06	 Bytes: 3
  %loadMem_44ab06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab06 = call %struct.Memory* @routine_sarl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab06)
  store %struct.Memory* %call_44ab06, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 44ab09	 Bytes: 3
  %loadMem_44ab09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab09 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab09)
  store %struct.Memory* %call_44ab09, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ab2a	 RIP: 44ab0c	 Bytes: 5
  %loadMem_44ab0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab0c = call %struct.Memory* @routine_jmpq_.L_44ab2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab0c, i64 30, i64 5)
  store %struct.Memory* %call_44ab0c, %struct.Memory** %MEMORY

  br label %block_.L_44ab2a

  ; Code: .L_44ab11:	 RIP: 44ab11	 Bytes: 0
block_.L_44ab11:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44ab11	 Bytes: 4
  %loadMem_44ab11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab11 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab11)
  store %struct.Memory* %call_44ab11, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 44ab15	 Bytes: 3
  %loadMem_44ab15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab15 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab15)
  store %struct.Memory* %call_44ab15, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44ab18	 Bytes: 3
  %loadMem_44ab18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab18 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab18)
  store %struct.Memory* %call_44ab18, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44ab1b	 Bytes: 3
  %loadMem_44ab1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab1b = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab1b)
  store %struct.Memory* %call_44ab1b, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44ab1e	 Bytes: 3
  %loadMem_44ab1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab1e = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab1e)
  store %struct.Memory* %call_44ab1e, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %ecx	 RIP: 44ab21	 Bytes: 3
  %loadMem_44ab21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab21 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab21)
  store %struct.Memory* %call_44ab21, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %ecx	 RIP: 44ab24	 Bytes: 3
  %loadMem_44ab24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab24 = call %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab24)
  store %struct.Memory* %call_44ab24, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44ab27	 Bytes: 3
  %loadMem_44ab27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab27 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab27)
  store %struct.Memory* %call_44ab27, %struct.Memory** %MEMORY

  ; Code: .L_44ab2a:	 RIP: 44ab2a	 Bytes: 0
  br label %block_.L_44ab2a
block_.L_44ab2a:

  ; Code: jmpq .L_44ab2f	 RIP: 44ab2a	 Bytes: 5
  %loadMem_44ab2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab2a = call %struct.Memory* @routine_jmpq_.L_44ab2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab2a, i64 5, i64 5)
  store %struct.Memory* %call_44ab2a, %struct.Memory** %MEMORY

  br label %block_.L_44ab2f

  ; Code: .L_44ab2f:	 RIP: 44ab2f	 Bytes: 0
block_.L_44ab2f:

  ; Code: jmpq .L_44ab34	 RIP: 44ab2f	 Bytes: 5
  %loadMem_44ab2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab2f = call %struct.Memory* @routine_jmpq_.L_44ab34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab2f, i64 5, i64 5)
  store %struct.Memory* %call_44ab2f, %struct.Memory** %MEMORY

  br label %block_.L_44ab34

  ; Code: .L_44ab34:	 RIP: 44ab34	 Bytes: 0
block_.L_44ab34:

  ; Code: jmpq .L_44ab39	 RIP: 44ab34	 Bytes: 5
  %loadMem_44ab34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab34 = call %struct.Memory* @routine_jmpq_.L_44ab39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab34, i64 5, i64 5)
  store %struct.Memory* %call_44ab34, %struct.Memory** %MEMORY

  br label %block_.L_44ab39

  ; Code: .L_44ab39:	 RIP: 44ab39	 Bytes: 0
block_.L_44ab39:

  ; Code: jmpq .L_44acdf	 RIP: 44ab39	 Bytes: 5
  %loadMem_44ab39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab39 = call %struct.Memory* @routine_jmpq_.L_44acdf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab39, i64 422, i64 5)
  store %struct.Memory* %call_44ab39, %struct.Memory** %MEMORY

  br label %block_.L_44acdf

  ; Code: .L_44ab3e:	 RIP: 44ab3e	 Bytes: 0
block_.L_44ab3e:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 44ab3e	 Bytes: 3
  %loadMem_44ab3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab3e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab3e)
  store %struct.Memory* %call_44ab3e, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %eax	 RIP: 44ab41	 Bytes: 3
  %loadMem_44ab41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab41 = call %struct.Memory* @routine_andl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab41)
  store %struct.Memory* %call_44ab41, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44ab44	 Bytes: 3
  %loadMem_44ab44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab44 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab44)
  store %struct.Memory* %call_44ab44, %struct.Memory** %MEMORY

  ; Code: jne .L_44ac0a	 RIP: 44ab47	 Bytes: 6
  %loadMem_44ab47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab47 = call %struct.Memory* @routine_jne_.L_44ac0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab47, i8* %BRANCH_TAKEN, i64 195, i64 6, i64 6)
  store %struct.Memory* %call_44ab47, %struct.Memory** %MEMORY

  %loadBr_44ab47 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ab47 = icmp eq i8 %loadBr_44ab47, 1
  br i1 %cmpBr_44ab47, label %block_.L_44ac0a, label %block_44ab4d

block_44ab4d:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 44ab4d	 Bytes: 4
  %loadMem_44ab4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab4d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab4d)
  store %struct.Memory* %call_44ab4d, %struct.Memory** %MEMORY

  ; Code: movl 0x218(%rax), %ecx	 RIP: 44ab51	 Bytes: 6
  %loadMem_44ab51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab51 = call %struct.Memory* @routine_movl_0x218__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab51)
  store %struct.Memory* %call_44ab51, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44ab57	 Bytes: 4
  %loadMem_44ab57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab57 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab57)
  store %struct.Memory* %call_44ab57, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44ab5b	 Bytes: 3
  %loadMem_44ab5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab5b = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab5b)
  store %struct.Memory* %call_44ab5b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44ab5e	 Bytes: 4
  %loadMem_44ab5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab5e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab5e)
  store %struct.Memory* %call_44ab5e, %struct.Memory** %MEMORY

  ; Code: movl 0x228(%rax), %ecx	 RIP: 44ab62	 Bytes: 6
  %loadMem_44ab62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab62 = call %struct.Memory* @routine_movl_0x228__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab62)
  store %struct.Memory* %call_44ab62, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44ab68	 Bytes: 4
  %loadMem_44ab68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab68 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab68)
  store %struct.Memory* %call_44ab68, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 44ab6c	 Bytes: 2
  %loadMem_44ab6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab6c = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab6c)
  store %struct.Memory* %call_44ab6c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44ab6e	 Bytes: 4
  %loadMem_44ab6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab6e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab6e)
  store %struct.Memory* %call_44ab6e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x228(%rax)	 RIP: 44ab72	 Bytes: 7
  %loadMem_44ab72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab72 = call %struct.Memory* @routine_cmpl__0x0__0x228__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab72)
  store %struct.Memory* %call_44ab72, %struct.Memory** %MEMORY

  ; Code: je .L_44ac05	 RIP: 44ab79	 Bytes: 6
  %loadMem_44ab79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab79 = call %struct.Memory* @routine_je_.L_44ac05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab79, i8* %BRANCH_TAKEN, i64 140, i64 6, i64 6)
  store %struct.Memory* %call_44ab79, %struct.Memory** %MEMORY

  %loadBr_44ab79 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ab79 = icmp eq i8 %loadBr_44ab79, 1
  br i1 %cmpBr_44ab79, label %block_.L_44ac05, label %block_44ab7f

block_44ab7f:
  ; Code: movq 0x6cb900, %rax	 RIP: 44ab7f	 Bytes: 8
  %loadMem_44ab7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab7f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab7f)
  store %struct.Memory* %call_44ab7f, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 44ab87	 Bytes: 7
  %loadMem_44ab87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab87 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab87)
  store %struct.Memory* %call_44ab87, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 44ab8e	 Bytes: 4
  %loadMem_44ab8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab8e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab8e)
  store %struct.Memory* %call_44ab8e, %struct.Memory** %MEMORY

  ; Code: movslq 0x218(%rcx), %rcx	 RIP: 44ab92	 Bytes: 7
  %loadMem_44ab92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab92 = call %struct.Memory* @routine_movslq_0x218__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab92)
  store %struct.Memory* %call_44ab92, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 44ab99	 Bytes: 7
  %loadMem_44ab99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ab99 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ab99)
  store %struct.Memory* %call_44ab99, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44aba0	 Bytes: 3
  %loadMem_44aba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aba0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aba0)
  store %struct.Memory* %call_44aba0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 44aba3	 Bytes: 7
  %loadMem_44aba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aba3 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aba3)
  store %struct.Memory* %call_44aba3, %struct.Memory** %MEMORY

  ; Code: jne .L_44abfa	 RIP: 44abaa	 Bytes: 6
  %loadMem_44abaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abaa = call %struct.Memory* @routine_jne_.L_44abfa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abaa, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_44abaa, %struct.Memory** %MEMORY

  %loadBr_44abaa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44abaa = icmp eq i8 %loadBr_44abaa, 1
  br i1 %cmpBr_44abaa, label %block_.L_44abfa, label %block_44abb0

block_44abb0:
  ; Code: movl $0x2, %eax	 RIP: 44abb0	 Bytes: 5
  %loadMem_44abb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abb0 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abb0)
  store %struct.Memory* %call_44abb0, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44abb5	 Bytes: 3
  %loadMem_44abb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abb5 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abb5)
  store %struct.Memory* %call_44abb5, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 44abb8	 Bytes: 3
  %loadMem_44abb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abb8 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abb8)
  store %struct.Memory* %call_44abb8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 44abbb	 Bytes: 3
  %loadMem_44abbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abbb = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abbb)
  store %struct.Memory* %call_44abbb, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 44abbe	 Bytes: 2
  %loadMem_44abbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abbe = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abbe)
  store %struct.Memory* %call_44abbe, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 44abc0	 Bytes: 1
  %loadMem_44abc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abc0 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abc0)
  store %struct.Memory* %call_44abc0, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 44abc1	 Bytes: 3
  %loadMem_44abc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abc1 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abc1)
  store %struct.Memory* %call_44abc1, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 44abc4	 Bytes: 2
  %loadMem_44abc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abc4 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abc4)
  store %struct.Memory* %call_44abc4, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 44abc6	 Bytes: 2
  %loadMem_44abc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abc6 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abc6)
  store %struct.Memory* %call_44abc6, %struct.Memory** %MEMORY

  ; Code: jge .L_44abdc	 RIP: 44abc8	 Bytes: 6
  %loadMem_44abc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abc8 = call %struct.Memory* @routine_jge_.L_44abdc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abc8, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_44abc8, %struct.Memory** %MEMORY

  %loadBr_44abc8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44abc8 = icmp eq i8 %loadBr_44abc8, 1
  br i1 %cmpBr_44abc8, label %block_.L_44abdc, label %block_44abce

block_44abce:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 44abce	 Bytes: 3
  %loadMem_44abce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abce = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abce)
  store %struct.Memory* %call_44abce, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 44abd1	 Bytes: 3
  %loadMem_44abd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abd1 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abd1)
  store %struct.Memory* %call_44abd1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 44abd4	 Bytes: 3
  %loadMem_44abd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abd4 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abd4)
  store %struct.Memory* %call_44abd4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44abf5	 RIP: 44abd7	 Bytes: 5
  %loadMem_44abd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abd7 = call %struct.Memory* @routine_jmpq_.L_44abf5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abd7, i64 30, i64 5)
  store %struct.Memory* %call_44abd7, %struct.Memory** %MEMORY

  br label %block_.L_44abf5

  ; Code: .L_44abdc:	 RIP: 44abdc	 Bytes: 0
block_.L_44abdc:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44abdc	 Bytes: 4
  %loadMem_44abdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abdc = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abdc)
  store %struct.Memory* %call_44abdc, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 44abe0	 Bytes: 3
  %loadMem_44abe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abe0 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abe0)
  store %struct.Memory* %call_44abe0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44abe3	 Bytes: 3
  %loadMem_44abe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abe3 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abe3)
  store %struct.Memory* %call_44abe3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44abe6	 Bytes: 3
  %loadMem_44abe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abe6 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abe6)
  store %struct.Memory* %call_44abe6, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44abe9	 Bytes: 3
  %loadMem_44abe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abe9 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abe9)
  store %struct.Memory* %call_44abe9, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 44abec	 Bytes: 3
  %loadMem_44abec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abec = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abec)
  store %struct.Memory* %call_44abec, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %ecx	 RIP: 44abef	 Bytes: 3
  %loadMem_44abef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abef = call %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abef)
  store %struct.Memory* %call_44abef, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44abf2	 Bytes: 3
  %loadMem_44abf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abf2 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abf2)
  store %struct.Memory* %call_44abf2, %struct.Memory** %MEMORY

  ; Code: .L_44abf5:	 RIP: 44abf5	 Bytes: 0
  br label %block_.L_44abf5
block_.L_44abf5:

  ; Code: jmpq .L_44ac00	 RIP: 44abf5	 Bytes: 5
  %loadMem_44abf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abf5 = call %struct.Memory* @routine_jmpq_.L_44ac00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abf5, i64 11, i64 5)
  store %struct.Memory* %call_44abf5, %struct.Memory** %MEMORY

  br label %block_.L_44ac00

  ; Code: .L_44abfa:	 RIP: 44abfa	 Bytes: 0
block_.L_44abfa:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 44abfa	 Bytes: 3
  %loadMem_44abfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abfa = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abfa)
  store %struct.Memory* %call_44abfa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 44abfd	 Bytes: 3
  %loadMem_44abfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44abfd = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44abfd)
  store %struct.Memory* %call_44abfd, %struct.Memory** %MEMORY

  ; Code: .L_44ac00:	 RIP: 44ac00	 Bytes: 0
  br label %block_.L_44ac00
block_.L_44ac00:

  ; Code: jmpq .L_44ac05	 RIP: 44ac00	 Bytes: 5
  %loadMem_44ac00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac00 = call %struct.Memory* @routine_jmpq_.L_44ac05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac00, i64 5, i64 5)
  store %struct.Memory* %call_44ac00, %struct.Memory** %MEMORY

  br label %block_.L_44ac05

  ; Code: .L_44ac05:	 RIP: 44ac05	 Bytes: 0
block_.L_44ac05:

  ; Code: jmpq .L_44acda	 RIP: 44ac05	 Bytes: 5
  %loadMem_44ac05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac05 = call %struct.Memory* @routine_jmpq_.L_44acda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac05, i64 213, i64 5)
  store %struct.Memory* %call_44ac05, %struct.Memory** %MEMORY

  br label %block_.L_44acda

  ; Code: .L_44ac0a:	 RIP: 44ac0a	 Bytes: 0
block_.L_44ac0a:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44ac0a	 Bytes: 4
  %loadMem_44ac0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac0a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac0a)
  store %struct.Memory* %call_44ac0a, %struct.Memory** %MEMORY

  ; Code: movl 0x218(%rax), %ecx	 RIP: 44ac0e	 Bytes: 6
  %loadMem_44ac0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac0e = call %struct.Memory* @routine_movl_0x218__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac0e)
  store %struct.Memory* %call_44ac0e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44ac14	 Bytes: 4
  %loadMem_44ac14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac14 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac14)
  store %struct.Memory* %call_44ac14, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44ac18	 Bytes: 3
  %loadMem_44ac18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac18 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac18)
  store %struct.Memory* %call_44ac18, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44ac1b	 Bytes: 4
  %loadMem_44ac1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac1b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac1b)
  store %struct.Memory* %call_44ac1b, %struct.Memory** %MEMORY

  ; Code: movl 0x228(%rax), %ecx	 RIP: 44ac1f	 Bytes: 6
  %loadMem_44ac1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac1f = call %struct.Memory* @routine_movl_0x228__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac1f)
  store %struct.Memory* %call_44ac1f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44ac25	 Bytes: 4
  %loadMem_44ac25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac25 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac25)
  store %struct.Memory* %call_44ac25, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 44ac29	 Bytes: 2
  %loadMem_44ac29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac29 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac29)
  store %struct.Memory* %call_44ac29, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44ac2b	 Bytes: 4
  %loadMem_44ac2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac2b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac2b)
  store %struct.Memory* %call_44ac2b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x228(%rax)	 RIP: 44ac2f	 Bytes: 7
  %loadMem_44ac2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac2f = call %struct.Memory* @routine_cmpl__0x0__0x228__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac2f)
  store %struct.Memory* %call_44ac2f, %struct.Memory** %MEMORY

  ; Code: je .L_44acd5	 RIP: 44ac36	 Bytes: 6
  %loadMem_44ac36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac36 = call %struct.Memory* @routine_je_.L_44acd5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac36, i8* %BRANCH_TAKEN, i64 159, i64 6, i64 6)
  store %struct.Memory* %call_44ac36, %struct.Memory** %MEMORY

  %loadBr_44ac36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ac36 = icmp eq i8 %loadBr_44ac36, 1
  br i1 %cmpBr_44ac36, label %block_.L_44acd5, label %block_44ac3c

block_44ac3c:
  ; Code: movq 0x6cb900, %rax	 RIP: 44ac3c	 Bytes: 8
  %loadMem_44ac3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac3c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac3c)
  store %struct.Memory* %call_44ac3c, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 44ac44	 Bytes: 7
  %loadMem_44ac44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac44 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac44)
  store %struct.Memory* %call_44ac44, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 44ac4b	 Bytes: 4
  %loadMem_44ac4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac4b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac4b)
  store %struct.Memory* %call_44ac4b, %struct.Memory** %MEMORY

  ; Code: movslq 0x218(%rcx), %rcx	 RIP: 44ac4f	 Bytes: 7
  %loadMem_44ac4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac4f = call %struct.Memory* @routine_movslq_0x218__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac4f)
  store %struct.Memory* %call_44ac4f, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 44ac56	 Bytes: 7
  %loadMem_44ac56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac56 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac56)
  store %struct.Memory* %call_44ac56, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44ac5d	 Bytes: 3
  %loadMem_44ac5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac5d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac5d)
  store %struct.Memory* %call_44ac5d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 44ac60	 Bytes: 7
  %loadMem_44ac60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac60 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac60)
  store %struct.Memory* %call_44ac60, %struct.Memory** %MEMORY

  ; Code: jne .L_44acbd	 RIP: 44ac67	 Bytes: 6
  %loadMem_44ac67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac67 = call %struct.Memory* @routine_jne_.L_44acbd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac67, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_44ac67, %struct.Memory** %MEMORY

  %loadBr_44ac67 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ac67 = icmp eq i8 %loadBr_44ac67, 1
  br i1 %cmpBr_44ac67, label %block_.L_44acbd, label %block_44ac6d

block_44ac6d:
  ; Code: movl $0x2, %eax	 RIP: 44ac6d	 Bytes: 5
  %loadMem_44ac6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac6d = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac6d)
  store %struct.Memory* %call_44ac6d, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44ac72	 Bytes: 3
  %loadMem_44ac72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac72 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac72)
  store %struct.Memory* %call_44ac72, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edx	 RIP: 44ac75	 Bytes: 3
  %loadMem_44ac75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac75 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac75)
  store %struct.Memory* %call_44ac75, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 44ac78	 Bytes: 3
  %loadMem_44ac78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac78 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac78)
  store %struct.Memory* %call_44ac78, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 44ac7b	 Bytes: 2
  %loadMem_44ac7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac7b = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac7b)
  store %struct.Memory* %call_44ac7b, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 44ac7d	 Bytes: 1
  %loadMem_44ac7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac7d = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac7d)
  store %struct.Memory* %call_44ac7d, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 44ac7e	 Bytes: 3
  %loadMem_44ac7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac7e = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac7e)
  store %struct.Memory* %call_44ac7e, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 44ac81	 Bytes: 2
  %loadMem_44ac81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac81 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac81)
  store %struct.Memory* %call_44ac81, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %ecx	 RIP: 44ac83	 Bytes: 2
  %loadMem_44ac83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac83 = call %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac83)
  store %struct.Memory* %call_44ac83, %struct.Memory** %MEMORY

  ; Code: jge .L_44ac9c	 RIP: 44ac85	 Bytes: 6
  %loadMem_44ac85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac85 = call %struct.Memory* @routine_jge_.L_44ac9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac85, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_44ac85, %struct.Memory** %MEMORY

  %loadBr_44ac85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ac85 = icmp eq i8 %loadBr_44ac85, 1
  br i1 %cmpBr_44ac85, label %block_.L_44ac9c, label %block_44ac8b

block_44ac8b:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 44ac8b	 Bytes: 3
  %loadMem_44ac8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac8b = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac8b)
  store %struct.Memory* %call_44ac8b, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 44ac8e	 Bytes: 3
  %loadMem_44ac8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac8e = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac8e)
  store %struct.Memory* %call_44ac8e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44ac91	 Bytes: 3
  %loadMem_44ac91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac91 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac91)
  store %struct.Memory* %call_44ac91, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 44ac94	 Bytes: 3
  %loadMem_44ac94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac94 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac94)
  store %struct.Memory* %call_44ac94, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44acb8	 RIP: 44ac97	 Bytes: 5
  %loadMem_44ac97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac97 = call %struct.Memory* @routine_jmpq_.L_44acb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac97, i64 33, i64 5)
  store %struct.Memory* %call_44ac97, %struct.Memory** %MEMORY

  br label %block_.L_44acb8

  ; Code: .L_44ac9c:	 RIP: 44ac9c	 Bytes: 0
block_.L_44ac9c:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44ac9c	 Bytes: 4
  %loadMem_44ac9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ac9c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ac9c)
  store %struct.Memory* %call_44ac9c, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 44aca0	 Bytes: 3
  %loadMem_44aca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aca0 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aca0)
  store %struct.Memory* %call_44aca0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44aca3	 Bytes: 3
  %loadMem_44aca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aca3 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aca3)
  store %struct.Memory* %call_44aca3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44aca6	 Bytes: 3
  %loadMem_44aca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aca6 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aca6)
  store %struct.Memory* %call_44aca6, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44aca9	 Bytes: 3
  %loadMem_44aca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aca9 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aca9)
  store %struct.Memory* %call_44aca9, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 44acac	 Bytes: 3
  %loadMem_44acac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acac = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acac)
  store %struct.Memory* %call_44acac, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44acaf	 Bytes: 3
  %loadMem_44acaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acaf = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acaf)
  store %struct.Memory* %call_44acaf, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %ecx	 RIP: 44acb2	 Bytes: 3
  %loadMem_44acb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acb2 = call %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acb2)
  store %struct.Memory* %call_44acb2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44acb5	 Bytes: 3
  %loadMem_44acb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acb5 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acb5)
  store %struct.Memory* %call_44acb5, %struct.Memory** %MEMORY

  ; Code: .L_44acb8:	 RIP: 44acb8	 Bytes: 0
  br label %block_.L_44acb8
block_.L_44acb8:

  ; Code: jmpq .L_44acd0	 RIP: 44acb8	 Bytes: 5
  %loadMem_44acb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acb8 = call %struct.Memory* @routine_jmpq_.L_44acd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acb8, i64 24, i64 5)
  store %struct.Memory* %call_44acb8, %struct.Memory** %MEMORY

  br label %block_.L_44acd0

  ; Code: .L_44acbd:	 RIP: 44acbd	 Bytes: 0
block_.L_44acbd:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44acbd	 Bytes: 4
  %loadMem_44acbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acbd = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acbd)
  store %struct.Memory* %call_44acbd, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 44acc1	 Bytes: 3
  %loadMem_44acc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acc1 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acc1)
  store %struct.Memory* %call_44acc1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44acc4	 Bytes: 3
  %loadMem_44acc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acc4 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acc4)
  store %struct.Memory* %call_44acc4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44acc7	 Bytes: 3
  %loadMem_44acc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acc7 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acc7)
  store %struct.Memory* %call_44acc7, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44acca	 Bytes: 3
  %loadMem_44acca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acca = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acca)
  store %struct.Memory* %call_44acca, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44accd	 Bytes: 3
  %loadMem_44accd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44accd = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44accd)
  store %struct.Memory* %call_44accd, %struct.Memory** %MEMORY

  ; Code: .L_44acd0:	 RIP: 44acd0	 Bytes: 0
  br label %block_.L_44acd0
block_.L_44acd0:

  ; Code: jmpq .L_44acd5	 RIP: 44acd0	 Bytes: 5
  %loadMem_44acd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acd0 = call %struct.Memory* @routine_jmpq_.L_44acd5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acd0, i64 5, i64 5)
  store %struct.Memory* %call_44acd0, %struct.Memory** %MEMORY

  br label %block_.L_44acd5

  ; Code: .L_44acd5:	 RIP: 44acd5	 Bytes: 0
block_.L_44acd5:

  ; Code: jmpq .L_44acda	 RIP: 44acd5	 Bytes: 5
  %loadMem_44acd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acd5 = call %struct.Memory* @routine_jmpq_.L_44acda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acd5, i64 5, i64 5)
  store %struct.Memory* %call_44acd5, %struct.Memory** %MEMORY

  br label %block_.L_44acda

  ; Code: .L_44acda:	 RIP: 44acda	 Bytes: 0
block_.L_44acda:

  ; Code: jmpq .L_44acdf	 RIP: 44acda	 Bytes: 5
  %loadMem_44acda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acda = call %struct.Memory* @routine_jmpq_.L_44acdf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acda, i64 5, i64 5)
  store %struct.Memory* %call_44acda, %struct.Memory** %MEMORY

  br label %block_.L_44acdf

  ; Code: .L_44acdf:	 RIP: 44acdf	 Bytes: 0
block_.L_44acdf:

  ; Code: jmpq .L_44ace4	 RIP: 44acdf	 Bytes: 5
  %loadMem_44acdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acdf = call %struct.Memory* @routine_jmpq_.L_44ace4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acdf, i64 5, i64 5)
  store %struct.Memory* %call_44acdf, %struct.Memory** %MEMORY

  br label %block_.L_44ace4

  ; Code: .L_44ace4:	 RIP: 44ace4	 Bytes: 0
block_.L_44ace4:

  ; Code: jmpq .L_44ace9	 RIP: 44ace4	 Bytes: 5
  %loadMem_44ace4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ace4 = call %struct.Memory* @routine_jmpq_.L_44ace9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ace4, i64 5, i64 5)
  store %struct.Memory* %call_44ace4, %struct.Memory** %MEMORY

  br label %block_.L_44ace9

  ; Code: .L_44ace9:	 RIP: 44ace9	 Bytes: 0
block_.L_44ace9:

  ; Code: jmpq .L_44b083	 RIP: 44ace9	 Bytes: 5
  %loadMem_44ace9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ace9 = call %struct.Memory* @routine_jmpq_.L_44b083(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ace9, i64 922, i64 5)
  store %struct.Memory* %call_44ace9, %struct.Memory** %MEMORY

  br label %block_.L_44b083

  ; Code: .L_44acee:	 RIP: 44acee	 Bytes: 0
block_.L_44acee:

  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 44acee	 Bytes: 4
  %loadMem_44acee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acee = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acee)
  store %struct.Memory* %call_44acee, %struct.Memory** %MEMORY

  ; Code: jl .L_44af40	 RIP: 44acf2	 Bytes: 6
  %loadMem_44acf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acf2 = call %struct.Memory* @routine_jl_.L_44af40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acf2, i8* %BRANCH_TAKEN, i64 590, i64 6, i64 6)
  store %struct.Memory* %call_44acf2, %struct.Memory** %MEMORY

  %loadBr_44acf2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44acf2 = icmp eq i8 %loadBr_44acf2, 1
  br i1 %cmpBr_44acf2, label %block_.L_44af40, label %block_44acf8

block_44acf8:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 44acf8	 Bytes: 3
  %loadMem_44acf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acf8 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acf8)
  store %struct.Memory* %call_44acf8, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %eax	 RIP: 44acfb	 Bytes: 3
  %loadMem_44acfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acfb = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acfb)
  store %struct.Memory* %call_44acfb, %struct.Memory** %MEMORY

  ; Code: jge .L_44af40	 RIP: 44acfe	 Bytes: 6
  %loadMem_44acfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44acfe = call %struct.Memory* @routine_jge_.L_44af40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44acfe, i8* %BRANCH_TAKEN, i64 578, i64 6, i64 6)
  store %struct.Memory* %call_44acfe, %struct.Memory** %MEMORY

  %loadBr_44acfe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44acfe = icmp eq i8 %loadBr_44acfe, 1
  br i1 %cmpBr_44acfe, label %block_.L_44af40, label %block_44ad04

block_44ad04:
  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 44ad04	 Bytes: 4
  %loadMem_44ad04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad04 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad04)
  store %struct.Memory* %call_44ad04, %struct.Memory** %MEMORY

  ; Code: jge .L_44aeb6	 RIP: 44ad08	 Bytes: 6
  %loadMem_44ad08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad08 = call %struct.Memory* @routine_jge_.L_44aeb6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad08, i8* %BRANCH_TAKEN, i64 430, i64 6, i64 6)
  store %struct.Memory* %call_44ad08, %struct.Memory** %MEMORY

  %loadBr_44ad08 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ad08 = icmp eq i8 %loadBr_44ad08, 1
  br i1 %cmpBr_44ad08, label %block_.L_44aeb6, label %block_44ad0e

block_44ad0e:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 44ad0e	 Bytes: 4
  %loadMem_44ad0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad0e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad0e)
  store %struct.Memory* %call_44ad0e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 44ad12	 Bytes: 7
  %loadMem_44ad12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad12 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad12)
  store %struct.Memory* %call_44ad12, %struct.Memory** %MEMORY

  ; Code: jne .L_44ade5	 RIP: 44ad19	 Bytes: 6
  %loadMem_44ad19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad19 = call %struct.Memory* @routine_jne_.L_44ade5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad19, i8* %BRANCH_TAKEN, i64 204, i64 6, i64 6)
  store %struct.Memory* %call_44ad19, %struct.Memory** %MEMORY

  %loadBr_44ad19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ad19 = icmp eq i8 %loadBr_44ad19, 1
  br i1 %cmpBr_44ad19, label %block_.L_44ade5, label %block_44ad1f

block_44ad1f:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 44ad1f	 Bytes: 3
  %loadMem_44ad1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad1f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad1f)
  store %struct.Memory* %call_44ad1f, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %eax	 RIP: 44ad22	 Bytes: 3
  %loadMem_44ad22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad22 = call %struct.Memory* @routine_andl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad22)
  store %struct.Memory* %call_44ad22, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44ad25	 Bytes: 3
  %loadMem_44ad25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad25 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad25)
  store %struct.Memory* %call_44ad25, %struct.Memory** %MEMORY

  ; Code: jne .L_44adc3	 RIP: 44ad28	 Bytes: 6
  %loadMem_44ad28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad28 = call %struct.Memory* @routine_jne_.L_44adc3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad28, i8* %BRANCH_TAKEN, i64 155, i64 6, i64 6)
  store %struct.Memory* %call_44ad28, %struct.Memory** %MEMORY

  %loadBr_44ad28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ad28 = icmp eq i8 %loadBr_44ad28, 1
  br i1 %cmpBr_44ad28, label %block_.L_44adc3, label %block_44ad2e

block_44ad2e:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 44ad2e	 Bytes: 4
  %loadMem_44ad2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad2e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad2e)
  store %struct.Memory* %call_44ad2e, %struct.Memory** %MEMORY

  ; Code: movl 0x21c(%rax), %ecx	 RIP: 44ad32	 Bytes: 6
  %loadMem_44ad32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad32 = call %struct.Memory* @routine_movl_0x21c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad32)
  store %struct.Memory* %call_44ad32, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44ad38	 Bytes: 4
  %loadMem_44ad38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad38 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad38)
  store %struct.Memory* %call_44ad38, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44ad3c	 Bytes: 3
  %loadMem_44ad3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad3c = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad3c)
  store %struct.Memory* %call_44ad3c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44ad3f	 Bytes: 4
  %loadMem_44ad3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad3f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad3f)
  store %struct.Memory* %call_44ad3f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x22c(%rax)	 RIP: 44ad43	 Bytes: 7
  %loadMem_44ad43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad43 = call %struct.Memory* @routine_cmpl__0x0__0x22c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad43)
  store %struct.Memory* %call_44ad43, %struct.Memory** %MEMORY

  ; Code: je .L_44ada8	 RIP: 44ad4a	 Bytes: 6
  %loadMem_44ad4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad4a = call %struct.Memory* @routine_je_.L_44ada8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad4a, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_44ad4a, %struct.Memory** %MEMORY

  %loadBr_44ad4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ad4a = icmp eq i8 %loadBr_44ad4a, 1
  br i1 %cmpBr_44ad4a, label %block_.L_44ada8, label %block_44ad50

block_44ad50:
  ; Code: movq 0x6cb900, %rax	 RIP: 44ad50	 Bytes: 8
  %loadMem_44ad50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad50 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad50)
  store %struct.Memory* %call_44ad50, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11bbc(%rax)	 RIP: 44ad58	 Bytes: 7
  %loadMem_44ad58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad58 = call %struct.Memory* @routine_cmpl__0x1__0x11bbc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad58)
  store %struct.Memory* %call_44ad58, %struct.Memory** %MEMORY

  ; Code: jne .L_44ad96	 RIP: 44ad5f	 Bytes: 6
  %loadMem_44ad5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad5f = call %struct.Memory* @routine_jne_.L_44ad96(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad5f, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_44ad5f, %struct.Memory** %MEMORY

  %loadBr_44ad5f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ad5f = icmp eq i8 %loadBr_44ad5f, 1
  br i1 %cmpBr_44ad5f, label %block_.L_44ad96, label %block_44ad65

block_44ad65:
  ; Code: movq 0x6cb900, %rax	 RIP: 44ad65	 Bytes: 8
  %loadMem_44ad65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad65 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad65)
  store %struct.Memory* %call_44ad65, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 44ad6d	 Bytes: 7
  %loadMem_44ad6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad6d = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad6d)
  store %struct.Memory* %call_44ad6d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 44ad74	 Bytes: 4
  %loadMem_44ad74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad74 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad74)
  store %struct.Memory* %call_44ad74, %struct.Memory** %MEMORY

  ; Code: movslq 0x21c(%rcx), %rcx	 RIP: 44ad78	 Bytes: 7
  %loadMem_44ad78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad78 = call %struct.Memory* @routine_movslq_0x21c__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad78)
  store %struct.Memory* %call_44ad78, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 44ad7f	 Bytes: 7
  %loadMem_44ad7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad7f = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad7f)
  store %struct.Memory* %call_44ad7f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44ad86	 Bytes: 3
  %loadMem_44ad86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad86 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad86)
  store %struct.Memory* %call_44ad86, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 44ad89	 Bytes: 7
  %loadMem_44ad89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad89 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad89)
  store %struct.Memory* %call_44ad89, %struct.Memory** %MEMORY

  ; Code: jne .L_44ada3	 RIP: 44ad90	 Bytes: 6
  %loadMem_44ad90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad90 = call %struct.Memory* @routine_jne_.L_44ada3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad90, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_44ad90, %struct.Memory** %MEMORY

  %loadBr_44ad90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ad90 = icmp eq i8 %loadBr_44ad90, 1
  br i1 %cmpBr_44ad90, label %block_.L_44ada3, label %block_.L_44ad96

  ; Code: .L_44ad96:	 RIP: 44ad96	 Bytes: 0
block_.L_44ad96:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44ad96	 Bytes: 4
  %loadMem_44ad96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad96 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad96)
  store %struct.Memory* %call_44ad96, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 44ad9a	 Bytes: 3
  %loadMem_44ad9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad9a = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad9a)
  store %struct.Memory* %call_44ad9a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44ad9d	 Bytes: 3
  %loadMem_44ad9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ad9d = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ad9d)
  store %struct.Memory* %call_44ad9d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44ada0	 Bytes: 3
  %loadMem_44ada0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ada0 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ada0)
  store %struct.Memory* %call_44ada0, %struct.Memory** %MEMORY

  ; Code: .L_44ada3:	 RIP: 44ada3	 Bytes: 0
  br label %block_.L_44ada3
block_.L_44ada3:

  ; Code: jmpq .L_44ada8	 RIP: 44ada3	 Bytes: 5
  %loadMem_44ada3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ada3 = call %struct.Memory* @routine_jmpq_.L_44ada8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ada3, i64 5, i64 5)
  store %struct.Memory* %call_44ada3, %struct.Memory** %MEMORY

  br label %block_.L_44ada8

  ; Code: .L_44ada8:	 RIP: 44ada8	 Bytes: 0
block_.L_44ada8:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44ada8	 Bytes: 4
  %loadMem_44ada8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ada8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ada8)
  store %struct.Memory* %call_44ada8, %struct.Memory** %MEMORY

  ; Code: movl 0x22c(%rax), %ecx	 RIP: 44adac	 Bytes: 6
  %loadMem_44adac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adac = call %struct.Memory* @routine_movl_0x22c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adac)
  store %struct.Memory* %call_44adac, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44adb2	 Bytes: 4
  %loadMem_44adb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adb2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adb2)
  store %struct.Memory* %call_44adb2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 44adb6	 Bytes: 2
  %loadMem_44adb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adb6 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adb6)
  store %struct.Memory* %call_44adb6, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44adb8	 Bytes: 3
  %loadMem_44adb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adb8 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adb8)
  store %struct.Memory* %call_44adb8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44adbb	 Bytes: 3
  %loadMem_44adbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adbb = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adbb)
  store %struct.Memory* %call_44adbb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ade0	 RIP: 44adbe	 Bytes: 5
  %loadMem_44adbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adbe = call %struct.Memory* @routine_jmpq_.L_44ade0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adbe, i64 34, i64 5)
  store %struct.Memory* %call_44adbe, %struct.Memory** %MEMORY

  br label %block_.L_44ade0

  ; Code: .L_44adc3:	 RIP: 44adc3	 Bytes: 0
block_.L_44adc3:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 44adc3	 Bytes: 3
  %loadMem_44adc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adc3 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adc3)
  store %struct.Memory* %call_44adc3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 44adc6	 Bytes: 3
  %loadMem_44adc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adc6 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adc6)
  store %struct.Memory* %call_44adc6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44adc9	 Bytes: 4
  %loadMem_44adc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adc9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adc9)
  store %struct.Memory* %call_44adc9, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rcx)	 RIP: 44adcd	 Bytes: 3
  %loadMem_44adcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adcd = call %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adcd)
  store %struct.Memory* %call_44adcd, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44add0	 Bytes: 4
  %loadMem_44add0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44add0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44add0)
  store %struct.Memory* %call_44add0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, (%rcx)	 RIP: 44add4	 Bytes: 6
  %loadMem_44add4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44add4 = call %struct.Memory* @routine_movl__0x1____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44add4)
  store %struct.Memory* %call_44add4, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 44adda	 Bytes: 3
  %loadMem_44adda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adda = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adda)
  store %struct.Memory* %call_44adda, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 44addd	 Bytes: 3
  %loadMem_44addd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44addd = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44addd)
  store %struct.Memory* %call_44addd, %struct.Memory** %MEMORY

  ; Code: .L_44ade0:	 RIP: 44ade0	 Bytes: 0
  br label %block_.L_44ade0
block_.L_44ade0:

  ; Code: jmpq .L_44aeb1	 RIP: 44ade0	 Bytes: 5
  %loadMem_44ade0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ade0 = call %struct.Memory* @routine_jmpq_.L_44aeb1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ade0, i64 209, i64 5)
  store %struct.Memory* %call_44ade0, %struct.Memory** %MEMORY

  br label %block_.L_44aeb1

  ; Code: .L_44ade5:	 RIP: 44ade5	 Bytes: 0
block_.L_44ade5:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 44ade5	 Bytes: 3
  %loadMem_44ade5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ade5 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ade5)
  store %struct.Memory* %call_44ade5, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %eax	 RIP: 44ade8	 Bytes: 3
  %loadMem_44ade8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ade8 = call %struct.Memory* @routine_andl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ade8)
  store %struct.Memory* %call_44ade8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44adeb	 Bytes: 3
  %loadMem_44adeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adeb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adeb)
  store %struct.Memory* %call_44adeb, %struct.Memory** %MEMORY

  ; Code: jne .L_44ae82	 RIP: 44adee	 Bytes: 6
  %loadMem_44adee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adee = call %struct.Memory* @routine_jne_.L_44ae82(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adee, i8* %BRANCH_TAKEN, i64 148, i64 6, i64 6)
  store %struct.Memory* %call_44adee, %struct.Memory** %MEMORY

  %loadBr_44adee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44adee = icmp eq i8 %loadBr_44adee, 1
  br i1 %cmpBr_44adee, label %block_.L_44ae82, label %block_44adf4

block_44adf4:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 44adf4	 Bytes: 4
  %loadMem_44adf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adf4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adf4)
  store %struct.Memory* %call_44adf4, %struct.Memory** %MEMORY

  ; Code: movl 0x21c(%rax), %ecx	 RIP: 44adf8	 Bytes: 6
  %loadMem_44adf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adf8 = call %struct.Memory* @routine_movl_0x21c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adf8)
  store %struct.Memory* %call_44adf8, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44adfe	 Bytes: 4
  %loadMem_44adfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44adfe = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44adfe)
  store %struct.Memory* %call_44adfe, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44ae02	 Bytes: 3
  %loadMem_44ae02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae02 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae02)
  store %struct.Memory* %call_44ae02, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44ae05	 Bytes: 4
  %loadMem_44ae05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae05 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae05)
  store %struct.Memory* %call_44ae05, %struct.Memory** %MEMORY

  ; Code: movl 0x22c(%rax), %ecx	 RIP: 44ae09	 Bytes: 6
  %loadMem_44ae09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae09 = call %struct.Memory* @routine_movl_0x22c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae09)
  store %struct.Memory* %call_44ae09, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44ae0f	 Bytes: 4
  %loadMem_44ae0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae0f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae0f)
  store %struct.Memory* %call_44ae0f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 44ae13	 Bytes: 2
  %loadMem_44ae13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae13 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae13)
  store %struct.Memory* %call_44ae13, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44ae15	 Bytes: 4
  %loadMem_44ae15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae15 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae15)
  store %struct.Memory* %call_44ae15, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x22c(%rax)	 RIP: 44ae19	 Bytes: 7
  %loadMem_44ae19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae19 = call %struct.Memory* @routine_cmpl__0x0__0x22c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae19)
  store %struct.Memory* %call_44ae19, %struct.Memory** %MEMORY

  ; Code: je .L_44ae7d	 RIP: 44ae20	 Bytes: 6
  %loadMem_44ae20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae20 = call %struct.Memory* @routine_je_.L_44ae7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae20, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_44ae20, %struct.Memory** %MEMORY

  %loadBr_44ae20 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ae20 = icmp eq i8 %loadBr_44ae20, 1
  br i1 %cmpBr_44ae20, label %block_.L_44ae7d, label %block_44ae26

block_44ae26:
  ; Code: movq 0x6cb900, %rax	 RIP: 44ae26	 Bytes: 8
  %loadMem_44ae26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae26 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae26)
  store %struct.Memory* %call_44ae26, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 44ae2e	 Bytes: 7
  %loadMem_44ae2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae2e = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae2e)
  store %struct.Memory* %call_44ae2e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 44ae35	 Bytes: 4
  %loadMem_44ae35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae35 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae35)
  store %struct.Memory* %call_44ae35, %struct.Memory** %MEMORY

  ; Code: movslq 0x21c(%rcx), %rcx	 RIP: 44ae39	 Bytes: 7
  %loadMem_44ae39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae39 = call %struct.Memory* @routine_movslq_0x21c__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae39)
  store %struct.Memory* %call_44ae39, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 44ae40	 Bytes: 7
  %loadMem_44ae40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae40 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae40)
  store %struct.Memory* %call_44ae40, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44ae47	 Bytes: 3
  %loadMem_44ae47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae47 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae47)
  store %struct.Memory* %call_44ae47, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 44ae4a	 Bytes: 7
  %loadMem_44ae4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae4a = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae4a)
  store %struct.Memory* %call_44ae4a, %struct.Memory** %MEMORY

  ; Code: jne .L_44ae72	 RIP: 44ae51	 Bytes: 6
  %loadMem_44ae51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae51 = call %struct.Memory* @routine_jne_.L_44ae72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae51, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_44ae51, %struct.Memory** %MEMORY

  %loadBr_44ae51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ae51 = icmp eq i8 %loadBr_44ae51, 1
  br i1 %cmpBr_44ae51, label %block_.L_44ae72, label %block_44ae57

block_44ae57:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 44ae57	 Bytes: 4
  %loadMem_44ae57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae57 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae57)
  store %struct.Memory* %call_44ae57, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 44ae5b	 Bytes: 3
  %loadMem_44ae5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae5b = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae5b)
  store %struct.Memory* %call_44ae5b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44ae5e	 Bytes: 3
  %loadMem_44ae5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae5e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae5e)
  store %struct.Memory* %call_44ae5e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44ae61	 Bytes: 3
  %loadMem_44ae61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae61 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae61)
  store %struct.Memory* %call_44ae61, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44ae64	 Bytes: 3
  %loadMem_44ae64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae64 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae64)
  store %struct.Memory* %call_44ae64, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 44ae67	 Bytes: 3
  %loadMem_44ae67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae67 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae67)
  store %struct.Memory* %call_44ae67, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44ae6a	 Bytes: 3
  %loadMem_44ae6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae6a = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae6a)
  store %struct.Memory* %call_44ae6a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ae78	 RIP: 44ae6d	 Bytes: 5
  %loadMem_44ae6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae6d = call %struct.Memory* @routine_jmpq_.L_44ae78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae6d, i64 11, i64 5)
  store %struct.Memory* %call_44ae6d, %struct.Memory** %MEMORY

  br label %block_.L_44ae78

  ; Code: .L_44ae72:	 RIP: 44ae72	 Bytes: 0
block_.L_44ae72:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 44ae72	 Bytes: 3
  %loadMem_44ae72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae72 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae72)
  store %struct.Memory* %call_44ae72, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 44ae75	 Bytes: 3
  %loadMem_44ae75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae75 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae75)
  store %struct.Memory* %call_44ae75, %struct.Memory** %MEMORY

  ; Code: .L_44ae78:	 RIP: 44ae78	 Bytes: 0
  br label %block_.L_44ae78
block_.L_44ae78:

  ; Code: jmpq .L_44ae7d	 RIP: 44ae78	 Bytes: 5
  %loadMem_44ae78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae78 = call %struct.Memory* @routine_jmpq_.L_44ae7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae78, i64 5, i64 5)
  store %struct.Memory* %call_44ae78, %struct.Memory** %MEMORY

  br label %block_.L_44ae7d

  ; Code: .L_44ae7d:	 RIP: 44ae7d	 Bytes: 0
block_.L_44ae7d:

  ; Code: jmpq .L_44aeac	 RIP: 44ae7d	 Bytes: 5
  %loadMem_44ae7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae7d = call %struct.Memory* @routine_jmpq_.L_44aeac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae7d, i64 47, i64 5)
  store %struct.Memory* %call_44ae7d, %struct.Memory** %MEMORY

  br label %block_.L_44aeac

  ; Code: .L_44ae82:	 RIP: 44ae82	 Bytes: 0
block_.L_44ae82:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44ae82	 Bytes: 4
  %loadMem_44ae82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae82 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae82)
  store %struct.Memory* %call_44ae82, %struct.Memory** %MEMORY

  ; Code: movl 0x21c(%rax), %ecx	 RIP: 44ae86	 Bytes: 6
  %loadMem_44ae86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae86 = call %struct.Memory* @routine_movl_0x21c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae86)
  store %struct.Memory* %call_44ae86, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44ae8c	 Bytes: 3
  %loadMem_44ae8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae8c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae8c)
  store %struct.Memory* %call_44ae8c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44ae8f	 Bytes: 4
  %loadMem_44ae8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae8f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae8f)
  store %struct.Memory* %call_44ae8f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44ae93	 Bytes: 3
  %loadMem_44ae93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae93 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae93)
  store %struct.Memory* %call_44ae93, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44ae96	 Bytes: 4
  %loadMem_44ae96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae96 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae96)
  store %struct.Memory* %call_44ae96, %struct.Memory** %MEMORY

  ; Code: movl 0x22c(%rax), %ecx	 RIP: 44ae9a	 Bytes: 6
  %loadMem_44ae9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ae9a = call %struct.Memory* @routine_movl_0x22c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ae9a)
  store %struct.Memory* %call_44ae9a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44aea0	 Bytes: 4
  %loadMem_44aea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aea0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aea0)
  store %struct.Memory* %call_44aea0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 44aea4	 Bytes: 2
  %loadMem_44aea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aea4 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aea4)
  store %struct.Memory* %call_44aea4, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44aea6	 Bytes: 3
  %loadMem_44aea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aea6 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aea6)
  store %struct.Memory* %call_44aea6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44aea9	 Bytes: 3
  %loadMem_44aea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aea9 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aea9)
  store %struct.Memory* %call_44aea9, %struct.Memory** %MEMORY

  ; Code: .L_44aeac:	 RIP: 44aeac	 Bytes: 0
  br label %block_.L_44aeac
block_.L_44aeac:

  ; Code: jmpq .L_44aeb1	 RIP: 44aeac	 Bytes: 5
  %loadMem_44aeac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aeac = call %struct.Memory* @routine_jmpq_.L_44aeb1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aeac, i64 5, i64 5)
  store %struct.Memory* %call_44aeac, %struct.Memory** %MEMORY

  br label %block_.L_44aeb1

  ; Code: .L_44aeb1:	 RIP: 44aeb1	 Bytes: 0
block_.L_44aeb1:

  ; Code: jmpq .L_44af3b	 RIP: 44aeb1	 Bytes: 5
  %loadMem_44aeb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aeb1 = call %struct.Memory* @routine_jmpq_.L_44af3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aeb1, i64 138, i64 5)
  store %struct.Memory* %call_44aeb1, %struct.Memory** %MEMORY

  br label %block_.L_44af3b

  ; Code: .L_44aeb6:	 RIP: 44aeb6	 Bytes: 0
block_.L_44aeb6:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 44aeb6	 Bytes: 4
  %loadMem_44aeb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aeb6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aeb6)
  store %struct.Memory* %call_44aeb6, %struct.Memory** %MEMORY

  ; Code: jne .L_44af01	 RIP: 44aeba	 Bytes: 6
  %loadMem_44aeba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aeba = call %struct.Memory* @routine_jne_.L_44af01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aeba, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_44aeba, %struct.Memory** %MEMORY

  %loadBr_44aeba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aeba = icmp eq i8 %loadBr_44aeba, 1
  br i1 %cmpBr_44aeba, label %block_.L_44af01, label %block_44aec0

block_44aec0:
  ; Code: movq 0x6cb900, %rax	 RIP: 44aec0	 Bytes: 8
  %loadMem_44aec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aec0 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aec0)
  store %struct.Memory* %call_44aec0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x11bbc(%rax)	 RIP: 44aec8	 Bytes: 7
  %loadMem_44aec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aec8 = call %struct.Memory* @routine_cmpl__0x2__0x11bbc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aec8)
  store %struct.Memory* %call_44aec8, %struct.Memory** %MEMORY

  ; Code: jne .L_44af01	 RIP: 44aecf	 Bytes: 6
  %loadMem_44aecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aecf = call %struct.Memory* @routine_jne_.L_44af01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aecf, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_44aecf, %struct.Memory** %MEMORY

  %loadBr_44aecf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44aecf = icmp eq i8 %loadBr_44aecf, 1
  br i1 %cmpBr_44aecf, label %block_.L_44af01, label %block_44aed5

block_44aed5:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 44aed5	 Bytes: 4
  %loadMem_44aed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aed5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aed5)
  store %struct.Memory* %call_44aed5, %struct.Memory** %MEMORY

  ; Code: movl 0x21c(%rax), %ecx	 RIP: 44aed9	 Bytes: 6
  %loadMem_44aed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aed9 = call %struct.Memory* @routine_movl_0x21c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aed9)
  store %struct.Memory* %call_44aed9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44aedf	 Bytes: 3
  %loadMem_44aedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aedf = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aedf)
  store %struct.Memory* %call_44aedf, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44aee2	 Bytes: 4
  %loadMem_44aee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aee2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aee2)
  store %struct.Memory* %call_44aee2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44aee6	 Bytes: 3
  %loadMem_44aee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aee6 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aee6)
  store %struct.Memory* %call_44aee6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44aee9	 Bytes: 4
  %loadMem_44aee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aee9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aee9)
  store %struct.Memory* %call_44aee9, %struct.Memory** %MEMORY

  ; Code: movl $0x1, (%rax)	 RIP: 44aeed	 Bytes: 6
  %loadMem_44aeed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aeed = call %struct.Memory* @routine_movl__0x1____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aeed)
  store %struct.Memory* %call_44aeed, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44aef3	 Bytes: 3
  %loadMem_44aef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aef3 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aef3)
  store %struct.Memory* %call_44aef3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 44aef6	 Bytes: 3
  %loadMem_44aef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aef6 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aef6)
  store %struct.Memory* %call_44aef6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44aef9	 Bytes: 3
  %loadMem_44aef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aef9 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aef9)
  store %struct.Memory* %call_44aef9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44af36	 RIP: 44aefc	 Bytes: 5
  %loadMem_44aefc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aefc = call %struct.Memory* @routine_jmpq_.L_44af36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aefc, i64 58, i64 5)
  store %struct.Memory* %call_44aefc, %struct.Memory** %MEMORY

  br label %block_.L_44af36

  ; Code: .L_44af01:	 RIP: 44af01	 Bytes: 0
block_.L_44af01:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 44af01	 Bytes: 4
  %loadMem_44af01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af01 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af01)
  store %struct.Memory* %call_44af01, %struct.Memory** %MEMORY

  ; Code: jl .L_44af31	 RIP: 44af05	 Bytes: 6
  %loadMem_44af05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af05 = call %struct.Memory* @routine_jl_.L_44af31(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af05, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_44af05, %struct.Memory** %MEMORY

  %loadBr_44af05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44af05 = icmp eq i8 %loadBr_44af05, 1
  br i1 %cmpBr_44af05, label %block_.L_44af31, label %block_44af0b

block_44af0b:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 44af0b	 Bytes: 3
  %loadMem_44af0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af0b = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af0b)
  store %struct.Memory* %call_44af0b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %eax	 RIP: 44af0e	 Bytes: 3
  %loadMem_44af0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af0e = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af0e)
  store %struct.Memory* %call_44af0e, %struct.Memory** %MEMORY

  ; Code: jge .L_44af31	 RIP: 44af11	 Bytes: 6
  %loadMem_44af11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af11 = call %struct.Memory* @routine_jge_.L_44af31(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af11, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_44af11, %struct.Memory** %MEMORY

  %loadBr_44af11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44af11 = icmp eq i8 %loadBr_44af11, 1
  br i1 %cmpBr_44af11, label %block_.L_44af31, label %block_44af17

block_44af17:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 44af17	 Bytes: 3
  %loadMem_44af17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af17 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af17)
  store %struct.Memory* %call_44af17, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44af1a	 Bytes: 4
  %loadMem_44af1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af1a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af1a)
  store %struct.Memory* %call_44af1a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rcx)	 RIP: 44af1e	 Bytes: 3
  %loadMem_44af1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af1e = call %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af1e)
  store %struct.Memory* %call_44af1e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44af21	 Bytes: 4
  %loadMem_44af21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af21 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af21)
  store %struct.Memory* %call_44af21, %struct.Memory** %MEMORY

  ; Code: movl $0x1, (%rcx)	 RIP: 44af25	 Bytes: 6
  %loadMem_44af25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af25 = call %struct.Memory* @routine_movl__0x1____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af25)
  store %struct.Memory* %call_44af25, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 44af2b	 Bytes: 3
  %loadMem_44af2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af2b = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af2b)
  store %struct.Memory* %call_44af2b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 44af2e	 Bytes: 3
  %loadMem_44af2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af2e = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af2e)
  store %struct.Memory* %call_44af2e, %struct.Memory** %MEMORY

  ; Code: .L_44af31:	 RIP: 44af31	 Bytes: 0
  br label %block_.L_44af31
block_.L_44af31:

  ; Code: jmpq .L_44af36	 RIP: 44af31	 Bytes: 5
  %loadMem_44af31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af31 = call %struct.Memory* @routine_jmpq_.L_44af36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af31, i64 5, i64 5)
  store %struct.Memory* %call_44af31, %struct.Memory** %MEMORY

  br label %block_.L_44af36

  ; Code: .L_44af36:	 RIP: 44af36	 Bytes: 0
block_.L_44af36:

  ; Code: jmpq .L_44af3b	 RIP: 44af36	 Bytes: 5
  %loadMem_44af36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af36 = call %struct.Memory* @routine_jmpq_.L_44af3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af36, i64 5, i64 5)
  store %struct.Memory* %call_44af36, %struct.Memory** %MEMORY

  br label %block_.L_44af3b

  ; Code: .L_44af3b:	 RIP: 44af3b	 Bytes: 0
block_.L_44af3b:

  ; Code: jmpq .L_44b07e	 RIP: 44af3b	 Bytes: 5
  %loadMem_44af3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af3b = call %struct.Memory* @routine_jmpq_.L_44b07e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af3b, i64 323, i64 5)
  store %struct.Memory* %call_44af3b, %struct.Memory** %MEMORY

  br label %block_.L_44b07e

  ; Code: .L_44af40:	 RIP: 44af40	 Bytes: 0
block_.L_44af40:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 44af40	 Bytes: 4
  %loadMem_44af40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af40 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af40)
  store %struct.Memory* %call_44af40, %struct.Memory** %MEMORY

  ; Code: jge .L_44b079	 RIP: 44af44	 Bytes: 6
  %loadMem_44af44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af44 = call %struct.Memory* @routine_jge_.L_44b079(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af44, i8* %BRANCH_TAKEN, i64 309, i64 6, i64 6)
  store %struct.Memory* %call_44af44, %struct.Memory** %MEMORY

  %loadBr_44af44 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44af44 = icmp eq i8 %loadBr_44af44, 1
  br i1 %cmpBr_44af44, label %block_.L_44b079, label %block_44af4a

block_44af4a:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 44af4a	 Bytes: 4
  %loadMem_44af4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af4a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af4a)
  store %struct.Memory* %call_44af4a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 44af4e	 Bytes: 7
  %loadMem_44af4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af4e = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af4e)
  store %struct.Memory* %call_44af4e, %struct.Memory** %MEMORY

  ; Code: jne .L_44afa8	 RIP: 44af55	 Bytes: 6
  %loadMem_44af55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af55 = call %struct.Memory* @routine_jne_.L_44afa8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af55, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_44af55, %struct.Memory** %MEMORY

  %loadBr_44af55 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44af55 = icmp eq i8 %loadBr_44af55, 1
  br i1 %cmpBr_44af55, label %block_.L_44afa8, label %block_44af5b

block_44af5b:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 44af5b	 Bytes: 3
  %loadMem_44af5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af5b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af5b)
  store %struct.Memory* %call_44af5b, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %eax	 RIP: 44af5e	 Bytes: 3
  %loadMem_44af5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af5e = call %struct.Memory* @routine_andl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af5e)
  store %struct.Memory* %call_44af5e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44af61	 Bytes: 3
  %loadMem_44af61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af61 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af61)
  store %struct.Memory* %call_44af61, %struct.Memory** %MEMORY

  ; Code: jne .L_44af99	 RIP: 44af64	 Bytes: 6
  %loadMem_44af64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af64 = call %struct.Memory* @routine_jne_.L_44af99(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af64, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_44af64, %struct.Memory** %MEMORY

  %loadBr_44af64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44af64 = icmp eq i8 %loadBr_44af64, 1
  br i1 %cmpBr_44af64, label %block_.L_44af99, label %block_44af6a

block_44af6a:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 44af6a	 Bytes: 4
  %loadMem_44af6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af6a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af6a)
  store %struct.Memory* %call_44af6a, %struct.Memory** %MEMORY

  ; Code: movl 0x220(%rax), %ecx	 RIP: 44af6e	 Bytes: 6
  %loadMem_44af6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af6e = call %struct.Memory* @routine_movl_0x220__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af6e)
  store %struct.Memory* %call_44af6e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44af74	 Bytes: 3
  %loadMem_44af74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af74 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af74)
  store %struct.Memory* %call_44af74, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44af77	 Bytes: 4
  %loadMem_44af77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af77 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af77)
  store %struct.Memory* %call_44af77, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44af7b	 Bytes: 3
  %loadMem_44af7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af7b = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af7b)
  store %struct.Memory* %call_44af7b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44af7e	 Bytes: 4
  %loadMem_44af7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af7e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af7e)
  store %struct.Memory* %call_44af7e, %struct.Memory** %MEMORY

  ; Code: movl 0x230(%rax), %ecx	 RIP: 44af82	 Bytes: 6
  %loadMem_44af82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af82 = call %struct.Memory* @routine_movl_0x230__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af82)
  store %struct.Memory* %call_44af82, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44af88	 Bytes: 4
  %loadMem_44af88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af88 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af88)
  store %struct.Memory* %call_44af88, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 44af8c	 Bytes: 2
  %loadMem_44af8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af8c = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af8c)
  store %struct.Memory* %call_44af8c, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44af8e	 Bytes: 3
  %loadMem_44af8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af8e = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af8e)
  store %struct.Memory* %call_44af8e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44af91	 Bytes: 3
  %loadMem_44af91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af91 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af91)
  store %struct.Memory* %call_44af91, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44afa3	 RIP: 44af94	 Bytes: 5
  %loadMem_44af94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af94 = call %struct.Memory* @routine_jmpq_.L_44afa3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af94, i64 15, i64 5)
  store %struct.Memory* %call_44af94, %struct.Memory** %MEMORY

  br label %block_.L_44afa3

  ; Code: .L_44af99:	 RIP: 44af99	 Bytes: 0
block_.L_44af99:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44af99	 Bytes: 4
  %loadMem_44af99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af99 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af99)
  store %struct.Memory* %call_44af99, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax)	 RIP: 44af9d	 Bytes: 6
  %loadMem_44af9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44af9d = call %struct.Memory* @routine_movl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44af9d)
  store %struct.Memory* %call_44af9d, %struct.Memory** %MEMORY

  ; Code: .L_44afa3:	 RIP: 44afa3	 Bytes: 0
  br label %block_.L_44afa3
block_.L_44afa3:

  ; Code: jmpq .L_44b074	 RIP: 44afa3	 Bytes: 5
  %loadMem_44afa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afa3 = call %struct.Memory* @routine_jmpq_.L_44b074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afa3, i64 209, i64 5)
  store %struct.Memory* %call_44afa3, %struct.Memory** %MEMORY

  br label %block_.L_44b074

  ; Code: .L_44afa8:	 RIP: 44afa8	 Bytes: 0
block_.L_44afa8:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 44afa8	 Bytes: 3
  %loadMem_44afa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afa8 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afa8)
  store %struct.Memory* %call_44afa8, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %eax	 RIP: 44afab	 Bytes: 3
  %loadMem_44afab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afab = call %struct.Memory* @routine_andl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afab)
  store %struct.Memory* %call_44afab, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44afae	 Bytes: 3
  %loadMem_44afae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afae = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afae)
  store %struct.Memory* %call_44afae, %struct.Memory** %MEMORY

  ; Code: jne .L_44b045	 RIP: 44afb1	 Bytes: 6
  %loadMem_44afb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afb1 = call %struct.Memory* @routine_jne_.L_44b045(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afb1, i8* %BRANCH_TAKEN, i64 148, i64 6, i64 6)
  store %struct.Memory* %call_44afb1, %struct.Memory** %MEMORY

  %loadBr_44afb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44afb1 = icmp eq i8 %loadBr_44afb1, 1
  br i1 %cmpBr_44afb1, label %block_.L_44b045, label %block_44afb7

block_44afb7:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 44afb7	 Bytes: 4
  %loadMem_44afb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afb7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afb7)
  store %struct.Memory* %call_44afb7, %struct.Memory** %MEMORY

  ; Code: movl 0x220(%rax), %ecx	 RIP: 44afbb	 Bytes: 6
  %loadMem_44afbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afbb = call %struct.Memory* @routine_movl_0x220__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afbb)
  store %struct.Memory* %call_44afbb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44afc1	 Bytes: 4
  %loadMem_44afc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afc1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afc1)
  store %struct.Memory* %call_44afc1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44afc5	 Bytes: 3
  %loadMem_44afc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afc5 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afc5)
  store %struct.Memory* %call_44afc5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44afc8	 Bytes: 4
  %loadMem_44afc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afc8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afc8)
  store %struct.Memory* %call_44afc8, %struct.Memory** %MEMORY

  ; Code: movl 0x230(%rax), %ecx	 RIP: 44afcc	 Bytes: 6
  %loadMem_44afcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afcc = call %struct.Memory* @routine_movl_0x230__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afcc)
  store %struct.Memory* %call_44afcc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44afd2	 Bytes: 4
  %loadMem_44afd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afd2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afd2)
  store %struct.Memory* %call_44afd2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 44afd6	 Bytes: 2
  %loadMem_44afd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afd6 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afd6)
  store %struct.Memory* %call_44afd6, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44afd8	 Bytes: 4
  %loadMem_44afd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afd8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afd8)
  store %struct.Memory* %call_44afd8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x230(%rax)	 RIP: 44afdc	 Bytes: 7
  %loadMem_44afdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afdc = call %struct.Memory* @routine_cmpl__0x0__0x230__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afdc)
  store %struct.Memory* %call_44afdc, %struct.Memory** %MEMORY

  ; Code: je .L_44b040	 RIP: 44afe3	 Bytes: 6
  %loadMem_44afe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afe3 = call %struct.Memory* @routine_je_.L_44b040(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afe3, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_44afe3, %struct.Memory** %MEMORY

  %loadBr_44afe3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44afe3 = icmp eq i8 %loadBr_44afe3, 1
  br i1 %cmpBr_44afe3, label %block_.L_44b040, label %block_44afe9

block_44afe9:
  ; Code: movq 0x6cb900, %rax	 RIP: 44afe9	 Bytes: 8
  %loadMem_44afe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44afe9 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44afe9)
  store %struct.Memory* %call_44afe9, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 44aff1	 Bytes: 7
  %loadMem_44aff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aff1 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aff1)
  store %struct.Memory* %call_44aff1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 44aff8	 Bytes: 4
  %loadMem_44aff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44aff8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44aff8)
  store %struct.Memory* %call_44aff8, %struct.Memory** %MEMORY

  ; Code: movslq 0x220(%rcx), %rcx	 RIP: 44affc	 Bytes: 7
  %loadMem_44affc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44affc = call %struct.Memory* @routine_movslq_0x220__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44affc)
  store %struct.Memory* %call_44affc, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 44b003	 Bytes: 7
  %loadMem_44b003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b003 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b003)
  store %struct.Memory* %call_44b003, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b00a	 Bytes: 3
  %loadMem_44b00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b00a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b00a)
  store %struct.Memory* %call_44b00a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 44b00d	 Bytes: 7
  %loadMem_44b00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b00d = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b00d)
  store %struct.Memory* %call_44b00d, %struct.Memory** %MEMORY

  ; Code: jne .L_44b035	 RIP: 44b014	 Bytes: 6
  %loadMem_44b014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b014 = call %struct.Memory* @routine_jne_.L_44b035(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b014, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_44b014, %struct.Memory** %MEMORY

  %loadBr_44b014 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b014 = icmp eq i8 %loadBr_44b014, 1
  br i1 %cmpBr_44b014, label %block_.L_44b035, label %block_44b01a

block_44b01a:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 44b01a	 Bytes: 4
  %loadMem_44b01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b01a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b01a)
  store %struct.Memory* %call_44b01a, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 44b01e	 Bytes: 3
  %loadMem_44b01e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b01e = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b01e)
  store %struct.Memory* %call_44b01e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44b021	 Bytes: 3
  %loadMem_44b021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b021 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b021)
  store %struct.Memory* %call_44b021, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44b024	 Bytes: 3
  %loadMem_44b024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b024 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b024)
  store %struct.Memory* %call_44b024, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44b027	 Bytes: 3
  %loadMem_44b027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b027 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b027)
  store %struct.Memory* %call_44b027, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 44b02a	 Bytes: 3
  %loadMem_44b02a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b02a = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b02a)
  store %struct.Memory* %call_44b02a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44b02d	 Bytes: 3
  %loadMem_44b02d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b02d = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b02d)
  store %struct.Memory* %call_44b02d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44b03b	 RIP: 44b030	 Bytes: 5
  %loadMem_44b030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b030 = call %struct.Memory* @routine_jmpq_.L_44b03b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b030, i64 11, i64 5)
  store %struct.Memory* %call_44b030, %struct.Memory** %MEMORY

  br label %block_.L_44b03b

  ; Code: .L_44b035:	 RIP: 44b035	 Bytes: 0
block_.L_44b035:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 44b035	 Bytes: 3
  %loadMem_44b035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b035 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b035)
  store %struct.Memory* %call_44b035, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 44b038	 Bytes: 3
  %loadMem_44b038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b038 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b038)
  store %struct.Memory* %call_44b038, %struct.Memory** %MEMORY

  ; Code: .L_44b03b:	 RIP: 44b03b	 Bytes: 0
  br label %block_.L_44b03b
block_.L_44b03b:

  ; Code: jmpq .L_44b040	 RIP: 44b03b	 Bytes: 5
  %loadMem_44b03b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b03b = call %struct.Memory* @routine_jmpq_.L_44b040(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b03b, i64 5, i64 5)
  store %struct.Memory* %call_44b03b, %struct.Memory** %MEMORY

  br label %block_.L_44b040

  ; Code: .L_44b040:	 RIP: 44b040	 Bytes: 0
block_.L_44b040:

  ; Code: jmpq .L_44b06f	 RIP: 44b040	 Bytes: 5
  %loadMem_44b040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b040 = call %struct.Memory* @routine_jmpq_.L_44b06f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b040, i64 47, i64 5)
  store %struct.Memory* %call_44b040, %struct.Memory** %MEMORY

  br label %block_.L_44b06f

  ; Code: .L_44b045:	 RIP: 44b045	 Bytes: 0
block_.L_44b045:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44b045	 Bytes: 4
  %loadMem_44b045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b045 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b045)
  store %struct.Memory* %call_44b045, %struct.Memory** %MEMORY

  ; Code: movl 0x220(%rax), %ecx	 RIP: 44b049	 Bytes: 6
  %loadMem_44b049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b049 = call %struct.Memory* @routine_movl_0x220__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b049)
  store %struct.Memory* %call_44b049, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 44b04f	 Bytes: 3
  %loadMem_44b04f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b04f = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b04f)
  store %struct.Memory* %call_44b04f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44b052	 Bytes: 4
  %loadMem_44b052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b052 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b052)
  store %struct.Memory* %call_44b052, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 44b056	 Bytes: 3
  %loadMem_44b056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b056 = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b056)
  store %struct.Memory* %call_44b056, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 44b059	 Bytes: 4
  %loadMem_44b059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b059 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b059)
  store %struct.Memory* %call_44b059, %struct.Memory** %MEMORY

  ; Code: movl 0x230(%rax), %ecx	 RIP: 44b05d	 Bytes: 6
  %loadMem_44b05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b05d = call %struct.Memory* @routine_movl_0x230__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b05d)
  store %struct.Memory* %call_44b05d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44b063	 Bytes: 4
  %loadMem_44b063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b063 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b063)
  store %struct.Memory* %call_44b063, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 44b067	 Bytes: 2
  %loadMem_44b067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b067 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b067)
  store %struct.Memory* %call_44b067, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 44b069	 Bytes: 3
  %loadMem_44b069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b069 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b069)
  store %struct.Memory* %call_44b069, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 44b06c	 Bytes: 3
  %loadMem_44b06c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b06c = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b06c)
  store %struct.Memory* %call_44b06c, %struct.Memory** %MEMORY

  ; Code: .L_44b06f:	 RIP: 44b06f	 Bytes: 0
  br label %block_.L_44b06f
block_.L_44b06f:

  ; Code: jmpq .L_44b074	 RIP: 44b06f	 Bytes: 5
  %loadMem_44b06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b06f = call %struct.Memory* @routine_jmpq_.L_44b074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b06f, i64 5, i64 5)
  store %struct.Memory* %call_44b06f, %struct.Memory** %MEMORY

  br label %block_.L_44b074

  ; Code: .L_44b074:	 RIP: 44b074	 Bytes: 0
block_.L_44b074:

  ; Code: jmpq .L_44b079	 RIP: 44b074	 Bytes: 5
  %loadMem_44b074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b074 = call %struct.Memory* @routine_jmpq_.L_44b079(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b074, i64 5, i64 5)
  store %struct.Memory* %call_44b074, %struct.Memory** %MEMORY

  br label %block_.L_44b079

  ; Code: .L_44b079:	 RIP: 44b079	 Bytes: 0
block_.L_44b079:

  ; Code: jmpq .L_44b07e	 RIP: 44b079	 Bytes: 5
  %loadMem_44b079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b079 = call %struct.Memory* @routine_jmpq_.L_44b07e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b079, i64 5, i64 5)
  store %struct.Memory* %call_44b079, %struct.Memory** %MEMORY

  br label %block_.L_44b07e

  ; Code: .L_44b07e:	 RIP: 44b07e	 Bytes: 0
block_.L_44b07e:

  ; Code: jmpq .L_44b083	 RIP: 44b07e	 Bytes: 5
  %loadMem_44b07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b07e = call %struct.Memory* @routine_jmpq_.L_44b083(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b07e, i64 5, i64 5)
  store %struct.Memory* %call_44b07e, %struct.Memory** %MEMORY

  br label %block_.L_44b083

  ; Code: .L_44b083:	 RIP: 44b083	 Bytes: 0
block_.L_44b083:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44b083	 Bytes: 4
  %loadMem_44b083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b083 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b083)
  store %struct.Memory* %call_44b083, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax)	 RIP: 44b087	 Bytes: 3
  %loadMem_44b087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b087 = call %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b087)
  store %struct.Memory* %call_44b087, %struct.Memory** %MEMORY

  ; Code: jne .L_44b0a5	 RIP: 44b08a	 Bytes: 6
  %loadMem_44b08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b08a = call %struct.Memory* @routine_jne_.L_44b0a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b08a, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_44b08a, %struct.Memory** %MEMORY

  %loadBr_44b08a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b08a = icmp eq i8 %loadBr_44b08a, 1
  br i1 %cmpBr_44b08a, label %block_.L_44b0a5, label %block_44b090

block_44b090:
  ; Code: movq 0x6cb900, %rax	 RIP: 44b090	 Bytes: 8
  %loadMem_44b090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b090 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b090)
  store %struct.Memory* %call_44b090, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11bbc(%rax)	 RIP: 44b098	 Bytes: 7
  %loadMem_44b098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b098 = call %struct.Memory* @routine_cmpl__0x0__0x11bbc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b098)
  store %struct.Memory* %call_44b098, %struct.Memory** %MEMORY

  ; Code: je .L_44b1a3	 RIP: 44b09f	 Bytes: 6
  %loadMem_44b09f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b09f = call %struct.Memory* @routine_je_.L_44b1a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b09f, i8* %BRANCH_TAKEN, i64 260, i64 6, i64 6)
  store %struct.Memory* %call_44b09f, %struct.Memory** %MEMORY

  %loadBr_44b09f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b09f = icmp eq i8 %loadBr_44b09f, 1
  br i1 %cmpBr_44b09f, label %block_.L_44b1a3, label %block_.L_44b0a5

  ; Code: .L_44b0a5:	 RIP: 44b0a5	 Bytes: 0
block_.L_44b0a5:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 44b0a5	 Bytes: 3
  %loadMem_44b0a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0a5 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0a5)
  store %struct.Memory* %call_44b0a5, %struct.Memory** %MEMORY

  ; Code: addl -0x24(%rbp), %eax	 RIP: 44b0a8	 Bytes: 3
  %loadMem_44b0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0a8 = call %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0a8)
  store %struct.Memory* %call_44b0a8, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 44b0ab	 Bytes: 1
  %loadMem_44b0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0ab = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0ab)
  store %struct.Memory* %call_44b0ab, %struct.Memory** %MEMORY

  ; Code: idivl -0x24(%rbp)	 RIP: 44b0ac	 Bytes: 3
  %loadMem_44b0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0ac = call %struct.Memory* @routine_idivl_MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0ac)
  store %struct.Memory* %call_44b0ac, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44b0af	 Bytes: 4
  %loadMem_44b0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0af = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0af)
  store %struct.Memory* %call_44b0af, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8(%rcx)	 RIP: 44b0b3	 Bytes: 3
  %loadMem_44b0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0b3 = call %struct.Memory* @routine_movl__edx__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0b3)
  store %struct.Memory* %call_44b0b3, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 44b0b6	 Bytes: 3
  %loadMem_44b0b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0b6 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0b6)
  store %struct.Memory* %call_44b0b6, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %edx	 RIP: 44b0b9	 Bytes: 3
  %loadMem_44b0b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0b9 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0b9)
  store %struct.Memory* %call_44b0b9, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 44b0bc	 Bytes: 2
  %loadMem_44b0bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0bc = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0bc)
  store %struct.Memory* %call_44b0bc, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 44b0be	 Bytes: 1
  %loadMem_44b0be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0be = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0be)
  store %struct.Memory* %call_44b0be, %struct.Memory** %MEMORY

  ; Code: idivl -0x28(%rbp)	 RIP: 44b0bf	 Bytes: 3
  %loadMem_44b0bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0bf = call %struct.Memory* @routine_idivl_MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0bf)
  store %struct.Memory* %call_44b0bf, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44b0c2	 Bytes: 4
  %loadMem_44b0c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0c2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0c2)
  store %struct.Memory* %call_44b0c2, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rcx)	 RIP: 44b0c6	 Bytes: 3
  %loadMem_44b0c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0c6 = call %struct.Memory* @routine_movl__edx__0xc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0c6)
  store %struct.Memory* %call_44b0c6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44b0c9	 Bytes: 4
  %loadMem_44b0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0c9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0c9)
  store %struct.Memory* %call_44b0c9, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rcx), %edi	 RIP: 44b0cd	 Bytes: 3
  %loadMem_44b0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0cd = call %struct.Memory* @routine_movl_0x4__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0cd)
  store %struct.Memory* %call_44b0cd, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44b0d0	 Bytes: 4
  %loadMem_44b0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0d0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0d0)
  store %struct.Memory* %call_44b0d0, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rcx	 RIP: 44b0d4	 Bytes: 4
  %loadMem_44b0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0d4 = call %struct.Memory* @routine_addq__0x10___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0d4)
  store %struct.Memory* %call_44b0d4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rsi	 RIP: 44b0d8	 Bytes: 4
  %loadMem_44b0d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0d8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0d8)
  store %struct.Memory* %call_44b0d8, %struct.Memory** %MEMORY

  ; Code: addq $0x14, %rsi	 RIP: 44b0dc	 Bytes: 4
  %loadMem_44b0dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0dc = call %struct.Memory* @routine_addq__0x14___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0dc)
  store %struct.Memory* %call_44b0dc, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x48(%rbp)	 RIP: 44b0e0	 Bytes: 4
  %loadMem_44b0e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0e0 = call %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0e0)
  store %struct.Memory* %call_44b0e0, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 44b0e4	 Bytes: 3
  %loadMem_44b0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0e4 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0e4)
  store %struct.Memory* %call_44b0e4, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdx	 RIP: 44b0e7	 Bytes: 4
  %loadMem_44b0e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0e7 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0e7)
  store %struct.Memory* %call_44b0e7, %struct.Memory** %MEMORY

  ; Code: callq .get_mb_pos	 RIP: 44b0eb	 Bytes: 5
  %loadMem1_44b0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b0eb = call %struct.Memory* @routine_callq_.get_mb_pos(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b0eb, i64 -3419, i64 5, i64 5)
  store %struct.Memory* %call1_44b0eb, %struct.Memory** %MEMORY

  %loadMem2_44b0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b0eb = load i64, i64* %3
  %call2_44b0eb = call %struct.Memory* @sub_44a390.get_mb_pos(%struct.State* %0, i64  %loadPC_44b0eb, %struct.Memory* %loadMem2_44b0eb)
  store %struct.Memory* %call2_44b0eb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 44b0f0	 Bytes: 4
  %loadMem_44b0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0f0 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0f0)
  store %struct.Memory* %call_44b0f0, %struct.Memory** %MEMORY

  ; Code: je .L_44b121	 RIP: 44b0f4	 Bytes: 6
  %loadMem_44b0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0f4 = call %struct.Memory* @routine_je_.L_44b121(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0f4, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_44b0f4, %struct.Memory** %MEMORY

  %loadBr_44b0f4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b0f4 = icmp eq i8 %loadBr_44b0f4, 1
  br i1 %cmpBr_44b0f4, label %block_.L_44b121, label %block_44b0fa

block_44b0fa:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 44b0fa	 Bytes: 4
  %loadMem_44b0fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0fa = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0fa)
  store %struct.Memory* %call_44b0fa, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 44b0fe	 Bytes: 3
  %loadMem_44b0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b0fe = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b0fe)
  store %struct.Memory* %call_44b0fe, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44b101	 Bytes: 4
  %loadMem_44b101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b101 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b101)
  store %struct.Memory* %call_44b101, %struct.Memory** %MEMORY

  ; Code: addl 0x10(%rax), %ecx	 RIP: 44b105	 Bytes: 3
  %loadMem_44b105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b105 = call %struct.Memory* @routine_addl_0x10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b105)
  store %struct.Memory* %call_44b105, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rax)	 RIP: 44b108	 Bytes: 3
  %loadMem_44b108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b108 = call %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b108)
  store %struct.Memory* %call_44b108, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44b10b	 Bytes: 4
  %loadMem_44b10b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b10b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b10b)
  store %struct.Memory* %call_44b10b, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 44b10f	 Bytes: 3
  %loadMem_44b10f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b10f = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b10f)
  store %struct.Memory* %call_44b10f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 44b112	 Bytes: 4
  %loadMem_44b112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b112 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b112)
  store %struct.Memory* %call_44b112, %struct.Memory** %MEMORY

  ; Code: addl 0x14(%rax), %ecx	 RIP: 44b116	 Bytes: 3
  %loadMem_44b116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b116 = call %struct.Memory* @routine_addl_0x14__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b116)
  store %struct.Memory* %call_44b116, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x14(%rax)	 RIP: 44b119	 Bytes: 3
  %loadMem_44b119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b119 = call %struct.Memory* @routine_movl__ecx__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b119)
  store %struct.Memory* %call_44b119, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44b19e	 RIP: 44b11c	 Bytes: 5
  %loadMem_44b11c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b11c = call %struct.Memory* @routine_jmpq_.L_44b19e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b11c, i64 130, i64 5)
  store %struct.Memory* %call_44b11c, %struct.Memory** %MEMORY

  br label %block_.L_44b19e

  ; Code: .L_44b121:	 RIP: 44b121	 Bytes: 0
block_.L_44b121:

  ; Code: movl $0x10, %eax	 RIP: 44b121	 Bytes: 5
  %loadMem_44b121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b121 = call %struct.Memory* @routine_movl__0x10___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b121)
  store %struct.Memory* %call_44b121, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44b126	 Bytes: 4
  %loadMem_44b126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b126 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b126)
  store %struct.Memory* %call_44b126, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rcx), %edx	 RIP: 44b12a	 Bytes: 3
  %loadMem_44b12a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b12a = call %struct.Memory* @routine_movl_0x10__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b12a)
  store %struct.Memory* %call_44b12a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 44b12d	 Bytes: 8
  %loadMem_44b12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b12d = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b12d)
  store %struct.Memory* %call_44b12d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 44b135	 Bytes: 3
  %loadMem_44b135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b135 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b135)
  store %struct.Memory* %call_44b135, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x50(%rbp)	 RIP: 44b138	 Bytes: 3
  %loadMem_44b138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b138 = call %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b138)
  store %struct.Memory* %call_44b138, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 44b13b	 Bytes: 1
  %loadMem_44b13b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b13b = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b13b)
  store %struct.Memory* %call_44b13b, %struct.Memory** %MEMORY

  ; Code: idivl 0x11c04(%rcx)	 RIP: 44b13c	 Bytes: 6
  %loadMem_44b13c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b13c = call %struct.Memory* @routine_idivl_0x11c04__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b13c)
  store %struct.Memory* %call_44b13c, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 44b142	 Bytes: 3
  %loadMem_44b142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b142 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b142)
  store %struct.Memory* %call_44b142, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 44b145	 Bytes: 3
  %loadMem_44b145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b145 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b145)
  store %struct.Memory* %call_44b145, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 44b148	 Bytes: 2
  %loadMem_44b148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b148 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b148)
  store %struct.Memory* %call_44b148, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 44b14a	 Bytes: 1
  %loadMem_44b14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b14a = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b14a)
  store %struct.Memory* %call_44b14a, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %edi	 RIP: 44b14b	 Bytes: 3
  %loadMem_44b14b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b14b = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b14b)
  store %struct.Memory* %call_44b14b, %struct.Memory** %MEMORY

  ; Code: idivl %edi	 RIP: 44b14e	 Bytes: 2
  %loadMem_44b14e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b14e = call %struct.Memory* @routine_idivl__edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b14e)
  store %struct.Memory* %call_44b14e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44b150	 Bytes: 4
  %loadMem_44b150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b150 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b150)
  store %struct.Memory* %call_44b150, %struct.Memory** %MEMORY

  ; Code: addl 0x8(%rcx), %eax	 RIP: 44b154	 Bytes: 3
  %loadMem_44b154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b154 = call %struct.Memory* @routine_addl_0x8__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b154)
  store %struct.Memory* %call_44b154, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44b157	 Bytes: 4
  %loadMem_44b157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b157 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b157)
  store %struct.Memory* %call_44b157, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x10(%rcx)	 RIP: 44b15b	 Bytes: 3
  %loadMem_44b15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b15b = call %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b15b)
  store %struct.Memory* %call_44b15b, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44b15e	 Bytes: 4
  %loadMem_44b15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b15e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b15e)
  store %struct.Memory* %call_44b15e, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rcx), %eax	 RIP: 44b162	 Bytes: 3
  %loadMem_44b162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b162 = call %struct.Memory* @routine_movl_0x14__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b162)
  store %struct.Memory* %call_44b162, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 44b165	 Bytes: 8
  %loadMem_44b165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b165 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b165)
  store %struct.Memory* %call_44b165, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %r8d	 RIP: 44b16d	 Bytes: 4
  %loadMem_44b16d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b16d = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b16d)
  store %struct.Memory* %call_44b16d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 44b171	 Bytes: 3
  %loadMem_44b171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b171 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b171)
  store %struct.Memory* %call_44b171, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 44b174	 Bytes: 3
  %loadMem_44b174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b174 = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b174)
  store %struct.Memory* %call_44b174, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 44b177	 Bytes: 1
  %loadMem_44b177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b177 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b177)
  store %struct.Memory* %call_44b177, %struct.Memory** %MEMORY

  ; Code: idivl 0x11c08(%rcx)	 RIP: 44b178	 Bytes: 6
  %loadMem_44b178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b178 = call %struct.Memory* @routine_idivl_0x11c08__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b178)
  store %struct.Memory* %call_44b178, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %r9d	 RIP: 44b17e	 Bytes: 4
  %loadMem_44b17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b17e = call %struct.Memory* @routine_movl_MINUS0x58__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b17e)
  store %struct.Memory* %call_44b17e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 44b182	 Bytes: 3
  %loadMem_44b182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b182 = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b182)
  store %struct.Memory* %call_44b182, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %eax	 RIP: 44b185	 Bytes: 3
  %loadMem_44b185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b185 = call %struct.Memory* @routine_movl__r9d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b185)
  store %struct.Memory* %call_44b185, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 44b188	 Bytes: 1
  %loadMem_44b188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b188 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b188)
  store %struct.Memory* %call_44b188, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %r10d	 RIP: 44b189	 Bytes: 4
  %loadMem_44b189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b189 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b189)
  store %struct.Memory* %call_44b189, %struct.Memory** %MEMORY

  ; Code: idivl %r10d	 RIP: 44b18d	 Bytes: 3
  %loadMem_44b18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b18d = call %struct.Memory* @routine_idivl__r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b18d)
  store %struct.Memory* %call_44b18d, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44b190	 Bytes: 4
  %loadMem_44b190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b190 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b190)
  store %struct.Memory* %call_44b190, %struct.Memory** %MEMORY

  ; Code: addl 0xc(%rcx), %eax	 RIP: 44b194	 Bytes: 3
  %loadMem_44b194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b194 = call %struct.Memory* @routine_addl_0xc__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b194)
  store %struct.Memory* %call_44b194, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 44b197	 Bytes: 4
  %loadMem_44b197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b197 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b197)
  store %struct.Memory* %call_44b197, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x14(%rcx)	 RIP: 44b19b	 Bytes: 3
  %loadMem_44b19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b19b = call %struct.Memory* @routine_movl__eax__0x14__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b19b)
  store %struct.Memory* %call_44b19b, %struct.Memory** %MEMORY

  ; Code: .L_44b19e:	 RIP: 44b19e	 Bytes: 0
  br label %block_.L_44b19e
block_.L_44b19e:

  ; Code: jmpq .L_44b1a3	 RIP: 44b19e	 Bytes: 5
  %loadMem_44b19e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b19e = call %struct.Memory* @routine_jmpq_.L_44b1a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b19e, i64 5, i64 5)
  store %struct.Memory* %call_44b19e, %struct.Memory** %MEMORY

  br label %block_.L_44b1a3

  ; Code: .L_44b1a3:	 RIP: 44b1a3	 Bytes: 0
block_.L_44b1a3:

  ; Code: addq $0x60, %rsp	 RIP: 44b1a3	 Bytes: 4
  %loadMem_44b1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b1a3 = call %struct.Memory* @routine_addq__0x60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b1a3)
  store %struct.Memory* %call_44b1a3, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 44b1a7	 Bytes: 1
  %loadMem_44b1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b1a7 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b1a7)
  store %struct.Memory* %call_44b1a7, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 44b1a8	 Bytes: 1
  %loadMem_44b1a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b1a8 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b1a8)
  store %struct.Memory* %call_44b1a8, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_44b1a8
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 96)
  ret %struct.Memory* %12
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__r8__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %R8
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_imulq__0x278___rax___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 632)
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

define %struct.Memory* @routine_addq__rax___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
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

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_je_.L_44a73e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x10__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x10__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_44a760(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x11c04__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72708
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl_0x11c08__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72712
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
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

define %struct.Memory* @routine_jle_.L_44a780(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_44b1a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_jle_.L_44a7ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_44a7ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 40
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

define %struct.Memory* @routine_jge_.L_44a7ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jge_.L_44acee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jge_.L_44a976(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_jne_.L_44a8a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_andl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
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


define %struct.Memory* @routine_jne_.L_44a80f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_0x224__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 548
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




define %struct.Memory* @routine_movl_0x234__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 564
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_jmpq_.L_44a8a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_0x218__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl_0x228__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cmpl__0x0__0x228__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 552
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44a89b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0x218__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 536
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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




define %struct.Memory* @routine_jne_.L_44a87d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_44a896(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
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

define %struct.Memory* @routine_sarl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_44a89b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jmpq_.L_44a971(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_44a942(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




















define %struct.Memory* @routine_cmpl__0x0__0x234__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 564
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44a93d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_movslq_0x224__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 548
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_jne_.L_44a932(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jmpq_.L_44a938(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jmpq_.L_44a93d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44a96c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


























define %struct.Memory* @routine_jmpq_.L_44ace9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jl_.L_44ace4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jge_.L_44ace4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jne_.L_44ab3e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jne_.L_44aa69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






















define %struct.Memory* @routine_je_.L_44aa64(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_jne_.L_44aa1a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jmpq_.L_44aa5f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
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


define %struct.Memory* @routine_jne_.L_44aa44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_sarl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_44aa5a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_jmpq_.L_44aa64(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44ab39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_je_.L_44ab34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_jne_.L_44aae4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jmpq_.L_44ab2f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jne_.L_44ab11(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jmpq_.L_44ab2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




















define %struct.Memory* @routine_jmpq_.L_44ab34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jmpq_.L_44acdf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_44ac0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






















define %struct.Memory* @routine_je_.L_44ac05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_jne_.L_44abfa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jge_.L_44abdc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jmpq_.L_44abf5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jmpq_.L_44ac00(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jmpq_.L_44ac05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44acda(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_je_.L_44acd5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_jne_.L_44acbd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jge_.L_44ac9c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jmpq_.L_44acb8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




















define %struct.Memory* @routine_jmpq_.L_44acd0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jmpq_.L_44acd5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jmpq_.L_44ace4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jmpq_.L_44b083(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jl_.L_44af40(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 36
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_44af40(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jge_.L_44aeb6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jne_.L_44ade5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jne_.L_44adc3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_0x21c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 540
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cmpl__0x0__0x22c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 556
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44ada8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_cmpl__0x1__0x11bbc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_44ad96(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_movslq_0x21c__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 540
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_jne_.L_44ada3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_jmpq_.L_44ada8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_0x22c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 556
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jmpq_.L_44ade0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__0x1____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 1)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jmpq_.L_44aeb1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_44ae82(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






















define %struct.Memory* @routine_je_.L_44ae7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_jne_.L_44ae72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_jmpq_.L_44ae78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jmpq_.L_44ae7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44aeac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


























define %struct.Memory* @routine_jmpq_.L_44af3b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_44af01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_cmpl__0x2__0x11bbc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
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








define %struct.Memory* @routine_jmpq_.L_44af36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jl_.L_44af31(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jge_.L_44af31(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




















define %struct.Memory* @routine_jmpq_.L_44b07e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jge_.L_44b079(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jne_.L_44afa8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jne_.L_44af99(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_0x220__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl_0x230__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jmpq_.L_44afa3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jmpq_.L_44b074(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_44b045(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




















define %struct.Memory* @routine_cmpl__0x0__0x230__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 560
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44b040(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_movslq_0x220__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 544
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_jne_.L_44b035(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_jmpq_.L_44b03b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jmpq_.L_44b040(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44b06f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


























define %struct.Memory* @routine_jmpq_.L_44b079(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_44b0a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_cmpl__0x0__0x11bbc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44b1a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_idivl_MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__edx__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
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


define %struct.Memory* @routine_addl_MINUS0x28__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_idivl_MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__edx__0xc__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x4__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_addq__0x10___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 16)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0x14___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 20)
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


define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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




define %struct.Memory* @routine_je_.L_44b121(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_addl_0x10__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_addl_0x14__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jmpq_.L_44b19e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_0x10__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_idivl_0x11c04__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72708
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_idivl__edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_addl_0x8__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x14__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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




define %struct.Memory* @routine_idivl_0x11c08__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72712
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x58__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
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




define %struct.Memory* @routine_movl_MINUS0x5c__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 92
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
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




define %struct.Memory* @routine_addl_0xc__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__eax__0x14__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 20
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_addq__0x60___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 96)
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

