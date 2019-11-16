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

declare %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44d770.gen_pic_list_from_frame_list(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70ea90_type = type <{ [8 x i8] }>
@G_0x70ea90= global %G_0x70ea90_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70ea98_type = type <{ [8 x i8] }>
@G_0x70ea98= global %G_0x70ea98_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70eaa0_type = type <{ [4 x i8] }>
@G_0x70eaa0= global %G_0x70eaa0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x70eaa8_type = type <{ [4 x i8] }>
@G_0x70eaa8= global %G_0x70eaa8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x70eaac_type = type <{ [4 x i8] }>
@G_0x70eaac= global %G_0x70eaac_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x722b20_type = type <{ [8 x i8] }>
@G_0x722b20= global %G_0x722b20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722b28_type = type <{ [8 x i8] }>
@G_0x722b28= global %G_0x722b28_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722c98_type = type <{ [4 x i8] }>
@G_0x722c98= global %G_0x722c98_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7247b0_type = type <{ [4 x i8] }>
@G_0x7247b0= global %G_0x7247b0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7247b4_type = type <{ [4 x i8] }>
@G_0x7247b4= global %G_0x7247b4_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x44d620_type = type <{ [8 x i8] }>
@G__0x44d620= global %G__0x44d620_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x44d690_type = type <{ [8 x i8] }>
@G__0x44d690= global %G__0x44d690_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x44d700_type = type <{ [8 x i8] }>
@G__0x44d700= global %G__0x44d700_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x44dad0_type = type <{ [8 x i8] }>
@G__0x44dad0= global %G__0x44dad0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x44db40_type = type <{ [8 x i8] }>
@G__0x44db40= global %G__0x44db40_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x44dbb0_type = type <{ [8 x i8] }>
@G__0x44dbb0= global %G__0x44dbb0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x44dc20_type = type <{ [8 x i8] }>
@G__0x44dc20= global %G__0x44dc20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x44dc90_type = type <{ [8 x i8] }>
@G__0x44dc90= global %G__0x44dc90_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c1921_type = type <{ [8 x i8] }>
@G__0x4c1921= global %G__0x4c1921_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c1936_type = type <{ [8 x i8] }>
@G__0x4c1936= global %G__0x4c1936_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c194c_type = type <{ [8 x i8] }>
@G__0x4c194c= global %G__0x4c194c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x7247b0_type = type <{ [8 x i8] }>
@G__0x7247b0= global %G__0x7247b0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @init_lists(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .init_lists:	 RIP: 44c1c0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 44c1c0	 Bytes: 1
  %loadMem_44c1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1c0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1c0)
  store %struct.Memory* %call_44c1c0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 44c1c1	 Bytes: 3
  %loadMem_44c1c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1c1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1c1)
  store %struct.Memory* %call_44c1c1, %struct.Memory** %MEMORY

  ; Code: subq $0xc0, %rsp	 RIP: 44c1c4	 Bytes: 7
  %loadMem_44c1c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1c4 = call %struct.Memory* @routine_subq__0xc0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1c4)
  store %struct.Memory* %call_44c1c4, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 44c1cb	 Bytes: 5
  %loadMem_44c1cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1cb = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1cb)
  store %struct.Memory* %call_44c1cb, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 44c1d0	 Bytes: 3
  %loadMem_44c1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1d0 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1d0)
  store %struct.Memory* %call_44c1d0, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 44c1d3	 Bytes: 3
  %loadMem_44c1d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1d3 = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1d3)
  store %struct.Memory* %call_44c1d3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 44c1d6	 Bytes: 7
  %loadMem_44c1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1d6 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1d6)
  store %struct.Memory* %call_44c1d6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 44c1dd	 Bytes: 7
  %loadMem_44c1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1dd = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1dd)
  store %struct.Memory* %call_44c1dd, %struct.Memory** %MEMORY

  ; Code: movl 0x722c98, %esi	 RIP: 44c1e4	 Bytes: 7
  %loadMem_44c1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1e4 = call %struct.Memory* @routine_movl_0x722c98___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1e4)
  store %struct.Memory* %call_44c1e4, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %esi	 RIP: 44c1eb	 Bytes: 3
  %loadMem_44c1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1eb = call %struct.Memory* @routine_addl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1eb)
  store %struct.Memory* %call_44c1eb, %struct.Memory** %MEMORY

  ; Code: movl %esi, %ecx	 RIP: 44c1ee	 Bytes: 2
  %loadMem_44c1ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1ee = call %struct.Memory* @routine_movl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1ee)
  store %struct.Memory* %call_44c1ee, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 44c1f0	 Bytes: 2
  %loadMem_44c1f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1f0 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1f0)
  store %struct.Memory* %call_44c1f0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 44c1f2	 Bytes: 3
  %loadMem_44c1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1f2 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1f2)
  store %struct.Memory* %call_44c1f2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 44c1f5	 Bytes: 7
  %loadMem_44c1f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1f5 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1f5)
  store %struct.Memory* %call_44c1f5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 44c1fc	 Bytes: 7
  %loadMem_44c1fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1fc = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1fc)
  store %struct.Memory* %call_44c1fc, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 44c203	 Bytes: 7
  %loadMem_44c203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c203 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c203)
  store %struct.Memory* %call_44c203, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 44c20a	 Bytes: 4
  %loadMem_44c20a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c20a = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c20a)
  store %struct.Memory* %call_44c20a, %struct.Memory** %MEMORY

  ; Code: jne .L_44c370	 RIP: 44c20e	 Bytes: 6
  %loadMem_44c20e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c20e = call %struct.Memory* @routine_jne_.L_44c370(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c20e, i8* %BRANCH_TAKEN, i64 354, i64 6, i64 6)
  store %struct.Memory* %call_44c20e, %struct.Memory** %MEMORY

  %loadBr_44c20e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c20e = icmp eq i8 %loadBr_44c20e, 1
  br i1 %cmpBr_44c20e, label %block_.L_44c370, label %block_44c214

block_44c214:
  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 44c214	 Bytes: 7
  %loadMem_44c214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c214 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c214)
  store %struct.Memory* %call_44c214, %struct.Memory** %MEMORY

  ; Code: .L_44c21b:	 RIP: 44c21b	 Bytes: 0
  br label %block_.L_44c21b
block_.L_44c21b:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44c21b	 Bytes: 3
  %loadMem_44c21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c21b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c21b)
  store %struct.Memory* %call_44c21b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaa8, %eax	 RIP: 44c21e	 Bytes: 7
  %loadMem_44c21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c21e = call %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c21e)
  store %struct.Memory* %call_44c21e, %struct.Memory** %MEMORY

  ; Code: jae .L_44c36b	 RIP: 44c225	 Bytes: 6
  %loadMem_44c225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c225 = call %struct.Memory* @routine_jae_.L_44c36b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c225, i8* %BRANCH_TAKEN, i64 326, i64 6, i64 6)
  store %struct.Memory* %call_44c225, %struct.Memory** %MEMORY

  %loadBr_44c225 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c225 = icmp eq i8 %loadBr_44c225, 1
  br i1 %cmpBr_44c225, label %block_.L_44c36b, label %block_44c22b

block_44c22b:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c22b	 Bytes: 8
  %loadMem_44c22b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c22b = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c22b)
  store %struct.Memory* %call_44c22b, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c233	 Bytes: 3
  %loadMem_44c233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c233 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c233)
  store %struct.Memory* %call_44c233, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c236	 Bytes: 2
  %loadMem_44c236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c236 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c236)
  store %struct.Memory* %call_44c236, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c238	 Bytes: 4
  %loadMem_44c238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c238 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c238)
  store %struct.Memory* %call_44c238, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, (%rax)	 RIP: 44c23c	 Bytes: 3
  %loadMem_44c23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c23c = call %struct.Memory* @routine_cmpl__0x3____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c23c)
  store %struct.Memory* %call_44c23c, %struct.Memory** %MEMORY

  ; Code: jne .L_44c358	 RIP: 44c23f	 Bytes: 6
  %loadMem_44c23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c23f = call %struct.Memory* @routine_jne_.L_44c358(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c23f, i8* %BRANCH_TAKEN, i64 281, i64 6, i64 6)
  store %struct.Memory* %call_44c23f, %struct.Memory** %MEMORY

  %loadBr_44c23f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c23f = icmp eq i8 %loadBr_44c23f, 1
  br i1 %cmpBr_44c23f, label %block_.L_44c358, label %block_44c245

block_44c245:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c245	 Bytes: 8
  %loadMem_44c245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c245 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c245)
  store %struct.Memory* %call_44c245, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c24d	 Bytes: 3
  %loadMem_44c24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c24d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c24d)
  store %struct.Memory* %call_44c24d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c250	 Bytes: 2
  %loadMem_44c250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c250 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c250)
  store %struct.Memory* %call_44c250, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c252	 Bytes: 4
  %loadMem_44c252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c252 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c252)
  store %struct.Memory* %call_44c252, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44c256	 Bytes: 4
  %loadMem_44c256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c256 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c256)
  store %struct.Memory* %call_44c256, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18ec(%rax)	 RIP: 44c25a	 Bytes: 7
  %loadMem_44c25a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c25a = call %struct.Memory* @routine_cmpl__0x0__0x18ec__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c25a)
  store %struct.Memory* %call_44c25a, %struct.Memory** %MEMORY

  ; Code: je .L_44c353	 RIP: 44c261	 Bytes: 6
  %loadMem_44c261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c261 = call %struct.Memory* @routine_je_.L_44c353(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c261, i8* %BRANCH_TAKEN, i64 242, i64 6, i64 6)
  store %struct.Memory* %call_44c261, %struct.Memory** %MEMORY

  %loadBr_44c261 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c261 = icmp eq i8 %loadBr_44c261, 1
  br i1 %cmpBr_44c261, label %block_.L_44c353, label %block_44c267

block_44c267:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c267	 Bytes: 8
  %loadMem_44c267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c267 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c267)
  store %struct.Memory* %call_44c267, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c26f	 Bytes: 3
  %loadMem_44c26f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c26f = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c26f)
  store %struct.Memory* %call_44c26f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c272	 Bytes: 2
  %loadMem_44c272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c272 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c272)
  store %struct.Memory* %call_44c272, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c274	 Bytes: 4
  %loadMem_44c274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c274 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c274)
  store %struct.Memory* %call_44c274, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44c278	 Bytes: 4
  %loadMem_44c278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c278 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c278)
  store %struct.Memory* %call_44c278, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18e8(%rax)	 RIP: 44c27c	 Bytes: 7
  %loadMem_44c27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c27c = call %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c27c)
  store %struct.Memory* %call_44c27c, %struct.Memory** %MEMORY

  ; Code: jne .L_44c353	 RIP: 44c283	 Bytes: 6
  %loadMem_44c283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c283 = call %struct.Memory* @routine_jne_.L_44c353(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c283, i8* %BRANCH_TAKEN, i64 208, i64 6, i64 6)
  store %struct.Memory* %call_44c283, %struct.Memory** %MEMORY

  %loadBr_44c283 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c283 = icmp eq i8 %loadBr_44c283, 1
  br i1 %cmpBr_44c283, label %block_.L_44c353, label %block_44c289

block_44c289:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c289	 Bytes: 8
  %loadMem_44c289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c289 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c289)
  store %struct.Memory* %call_44c289, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c291	 Bytes: 3
  %loadMem_44c291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c291 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c291)
  store %struct.Memory* %call_44c291, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c294	 Bytes: 2
  %loadMem_44c294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c294 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c294)
  store %struct.Memory* %call_44c294, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c296	 Bytes: 4
  %loadMem_44c296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c296 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c296)
  store %struct.Memory* %call_44c296, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %ecx	 RIP: 44c29a	 Bytes: 3
  %loadMem_44c29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c29a = call %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c29a)
  store %struct.Memory* %call_44c29a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 44c29d	 Bytes: 8
  %loadMem_44c29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c29d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c29d)
  store %struct.Memory* %call_44c29d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11b10(%rax), %ecx	 RIP: 44c2a5	 Bytes: 6
  %loadMem_44c2a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2a5 = call %struct.Memory* @routine_cmpl_0x11b10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2a5)
  store %struct.Memory* %call_44c2a5, %struct.Memory** %MEMORY

  ; Code: jbe .L_44c2e1	 RIP: 44c2ab	 Bytes: 6
  %loadMem_44c2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2ab = call %struct.Memory* @routine_jbe_.L_44c2e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2ab, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_44c2ab, %struct.Memory** %MEMORY

  %loadBr_44c2ab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c2ab = icmp eq i8 %loadBr_44c2ab, 1
  br i1 %cmpBr_44c2ab, label %block_.L_44c2e1, label %block_44c2b1

block_44c2b1:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c2b1	 Bytes: 8
  %loadMem_44c2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2b1 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2b1)
  store %struct.Memory* %call_44c2b1, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c2b9	 Bytes: 3
  %loadMem_44c2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2b9 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2b9)
  store %struct.Memory* %call_44c2b9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c2bc	 Bytes: 2
  %loadMem_44c2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2bc = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2bc)
  store %struct.Memory* %call_44c2bc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c2be	 Bytes: 4
  %loadMem_44c2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2be = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2be)
  store %struct.Memory* %call_44c2be, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %ecx	 RIP: 44c2c2	 Bytes: 3
  %loadMem_44c2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2c2 = call %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2c2)
  store %struct.Memory* %call_44c2c2, %struct.Memory** %MEMORY

  ; Code: subl -0x1c(%rbp), %ecx	 RIP: 44c2c5	 Bytes: 3
  %loadMem_44c2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2c5 = call %struct.Memory* @routine_subl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2c5)
  store %struct.Memory* %call_44c2c5, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 44c2c8	 Bytes: 8
  %loadMem_44c2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2c8 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2c8)
  store %struct.Memory* %call_44c2c8, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44c2d0	 Bytes: 3
  %loadMem_44c2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2d0 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2d0)
  store %struct.Memory* %call_44c2d0, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44c2d3	 Bytes: 2
  %loadMem_44c2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2d3 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2d3)
  store %struct.Memory* %call_44c2d3, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c2d5	 Bytes: 4
  %loadMem_44c2d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2d5 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2d5)
  store %struct.Memory* %call_44c2d5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rax)	 RIP: 44c2d9	 Bytes: 3
  %loadMem_44c2d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2d9 = call %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2d9)
  store %struct.Memory* %call_44c2d9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44c309	 RIP: 44c2dc	 Bytes: 5
  %loadMem_44c2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2dc = call %struct.Memory* @routine_jmpq_.L_44c309(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2dc, i64 45, i64 5)
  store %struct.Memory* %call_44c2dc, %struct.Memory** %MEMORY

  br label %block_.L_44c309

  ; Code: .L_44c2e1:	 RIP: 44c2e1	 Bytes: 0
block_.L_44c2e1:

  ; Code: movq 0x70ea90, %rax	 RIP: 44c2e1	 Bytes: 8
  %loadMem_44c2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2e1 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2e1)
  store %struct.Memory* %call_44c2e1, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c2e9	 Bytes: 3
  %loadMem_44c2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2e9 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2e9)
  store %struct.Memory* %call_44c2e9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c2ec	 Bytes: 2
  %loadMem_44c2ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2ec = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2ec)
  store %struct.Memory* %call_44c2ec, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c2ee	 Bytes: 4
  %loadMem_44c2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2ee = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2ee)
  store %struct.Memory* %call_44c2ee, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %ecx	 RIP: 44c2f2	 Bytes: 3
  %loadMem_44c2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2f2 = call %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2f2)
  store %struct.Memory* %call_44c2f2, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 44c2f5	 Bytes: 8
  %loadMem_44c2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2f5 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2f5)
  store %struct.Memory* %call_44c2f5, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44c2fd	 Bytes: 3
  %loadMem_44c2fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2fd = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2fd)
  store %struct.Memory* %call_44c2fd, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44c300	 Bytes: 2
  %loadMem_44c300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c300 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c300)
  store %struct.Memory* %call_44c300, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c302	 Bytes: 4
  %loadMem_44c302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c302 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c302)
  store %struct.Memory* %call_44c302, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rax)	 RIP: 44c306	 Bytes: 3
  %loadMem_44c306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c306 = call %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c306)
  store %struct.Memory* %call_44c306, %struct.Memory** %MEMORY

  ; Code: .L_44c309:	 RIP: 44c309	 Bytes: 0
  br label %block_.L_44c309
block_.L_44c309:

  ; Code: movq 0x70ea90, %rax	 RIP: 44c309	 Bytes: 8
  %loadMem_44c309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c309 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c309)
  store %struct.Memory* %call_44c309, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c311	 Bytes: 3
  %loadMem_44c311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c311 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c311)
  store %struct.Memory* %call_44c311, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c314	 Bytes: 2
  %loadMem_44c314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c314 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c314)
  store %struct.Memory* %call_44c314, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c316	 Bytes: 4
  %loadMem_44c316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c316 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c316)
  store %struct.Memory* %call_44c316, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %ecx	 RIP: 44c31a	 Bytes: 3
  %loadMem_44c31a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c31a = call %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c31a)
  store %struct.Memory* %call_44c31a, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 44c31d	 Bytes: 8
  %loadMem_44c31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c31d = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c31d)
  store %struct.Memory* %call_44c31d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44c325	 Bytes: 3
  %loadMem_44c325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c325 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c325)
  store %struct.Memory* %call_44c325, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44c328	 Bytes: 2
  %loadMem_44c328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c328 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c328)
  store %struct.Memory* %call_44c328, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c32a	 Bytes: 4
  %loadMem_44c32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c32a = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c32a)
  store %struct.Memory* %call_44c32a, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44c32e	 Bytes: 4
  %loadMem_44c32e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c32e = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c32e)
  store %struct.Memory* %call_44c32e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18dc(%rax)	 RIP: 44c332	 Bytes: 6
  %loadMem_44c332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c332 = call %struct.Memory* @routine_movl__ecx__0x18dc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c332)
  store %struct.Memory* %call_44c332, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44c338	 Bytes: 3
  %loadMem_44c338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c338 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c338)
  store %struct.Memory* %call_44c338, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 44c33b	 Bytes: 8
  %loadMem_44c33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c33b = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c33b)
  store %struct.Memory* %call_44c33b, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44c343	 Bytes: 3
  %loadMem_44c343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c343 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c343)
  store %struct.Memory* %call_44c343, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44c346	 Bytes: 2
  %loadMem_44c346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c346 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c346)
  store %struct.Memory* %call_44c346, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c348	 Bytes: 4
  %loadMem_44c348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c348 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c348)
  store %struct.Memory* %call_44c348, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44c34c	 Bytes: 4
  %loadMem_44c34c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c34c = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c34c)
  store %struct.Memory* %call_44c34c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x14(%rax)	 RIP: 44c350	 Bytes: 3
  %loadMem_44c350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c350 = call %struct.Memory* @routine_movl__ecx__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c350)
  store %struct.Memory* %call_44c350, %struct.Memory** %MEMORY

  ; Code: .L_44c353:	 RIP: 44c353	 Bytes: 0
  br label %block_.L_44c353
block_.L_44c353:

  ; Code: jmpq .L_44c358	 RIP: 44c353	 Bytes: 5
  %loadMem_44c353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c353 = call %struct.Memory* @routine_jmpq_.L_44c358(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c353, i64 5, i64 5)
  store %struct.Memory* %call_44c353, %struct.Memory** %MEMORY

  br label %block_.L_44c358

  ; Code: .L_44c358:	 RIP: 44c358	 Bytes: 0
block_.L_44c358:

  ; Code: jmpq .L_44c35d	 RIP: 44c358	 Bytes: 5
  %loadMem_44c358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c358 = call %struct.Memory* @routine_jmpq_.L_44c35d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c358, i64 5, i64 5)
  store %struct.Memory* %call_44c358, %struct.Memory** %MEMORY

  br label %block_.L_44c35d

  ; Code: .L_44c35d:	 RIP: 44c35d	 Bytes: 0
block_.L_44c35d:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44c35d	 Bytes: 3
  %loadMem_44c35d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c35d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c35d)
  store %struct.Memory* %call_44c35d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44c360	 Bytes: 3
  %loadMem_44c360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c360 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c360)
  store %struct.Memory* %call_44c360, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44c363	 Bytes: 3
  %loadMem_44c363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c363 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c363)
  store %struct.Memory* %call_44c363, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44c21b	 RIP: 44c366	 Bytes: 5
  %loadMem_44c366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c366 = call %struct.Memory* @routine_jmpq_.L_44c21b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c366, i64 -331, i64 5)
  store %struct.Memory* %call_44c366, %struct.Memory** %MEMORY

  br label %block_.L_44c21b

  ; Code: .L_44c36b:	 RIP: 44c36b	 Bytes: 0
block_.L_44c36b:

  ; Code: jmpq .L_44c514	 RIP: 44c36b	 Bytes: 5
  %loadMem_44c36b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c36b = call %struct.Memory* @routine_jmpq_.L_44c514(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c36b, i64 425, i64 5)
  store %struct.Memory* %call_44c36b, %struct.Memory** %MEMORY

  br label %block_.L_44c514

  ; Code: .L_44c370:	 RIP: 44c370	 Bytes: 0
block_.L_44c370:

  ; Code: cmpl $0x1, -0x8(%rbp)	 RIP: 44c370	 Bytes: 4
  %loadMem_44c370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c370 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c370)
  store %struct.Memory* %call_44c370, %struct.Memory** %MEMORY

  ; Code: jne .L_44c38d	 RIP: 44c374	 Bytes: 6
  %loadMem_44c374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c374 = call %struct.Memory* @routine_jne_.L_44c38d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c374, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_44c374, %struct.Memory** %MEMORY

  %loadBr_44c374 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c374 = icmp eq i8 %loadBr_44c374, 1
  br i1 %cmpBr_44c374, label %block_.L_44c38d, label %block_44c37a

block_44c37a:
  ; Code: movl $0x1, -0xc(%rbp)	 RIP: 44c37a	 Bytes: 7
  %loadMem_44c37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c37a = call %struct.Memory* @routine_movl__0x1__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c37a)
  store %struct.Memory* %call_44c37a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 44c381	 Bytes: 7
  %loadMem_44c381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c381 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c381)
  store %struct.Memory* %call_44c381, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44c39b	 RIP: 44c388	 Bytes: 5
  %loadMem_44c388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c388 = call %struct.Memory* @routine_jmpq_.L_44c39b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c388, i64 19, i64 5)
  store %struct.Memory* %call_44c388, %struct.Memory** %MEMORY

  br label %block_.L_44c39b

  ; Code: .L_44c38d:	 RIP: 44c38d	 Bytes: 0
block_.L_44c38d:

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 44c38d	 Bytes: 7
  %loadMem_44c38d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c38d = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c38d)
  store %struct.Memory* %call_44c38d, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x10(%rbp)	 RIP: 44c394	 Bytes: 7
  %loadMem_44c394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c394 = call %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c394)
  store %struct.Memory* %call_44c394, %struct.Memory** %MEMORY

  ; Code: .L_44c39b:	 RIP: 44c39b	 Bytes: 0
  br label %block_.L_44c39b
block_.L_44c39b:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 44c39b	 Bytes: 7
  %loadMem_44c39b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c39b = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c39b)
  store %struct.Memory* %call_44c39b, %struct.Memory** %MEMORY

  ; Code: .L_44c3a2:	 RIP: 44c3a2	 Bytes: 0
  br label %block_.L_44c3a2
block_.L_44c3a2:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44c3a2	 Bytes: 3
  %loadMem_44c3a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3a2 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3a2)
  store %struct.Memory* %call_44c3a2, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaa8, %eax	 RIP: 44c3a5	 Bytes: 7
  %loadMem_44c3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3a5 = call %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3a5)
  store %struct.Memory* %call_44c3a5, %struct.Memory** %MEMORY

  ; Code: jae .L_44c50f	 RIP: 44c3ac	 Bytes: 6
  %loadMem_44c3ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3ac = call %struct.Memory* @routine_jae_.L_44c50f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3ac, i8* %BRANCH_TAKEN, i64 355, i64 6, i64 6)
  store %struct.Memory* %call_44c3ac, %struct.Memory** %MEMORY

  %loadBr_44c3ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c3ac = icmp eq i8 %loadBr_44c3ac, 1
  br i1 %cmpBr_44c3ac, label %block_.L_44c50f, label %block_44c3b2

block_44c3b2:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c3b2	 Bytes: 8
  %loadMem_44c3b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3b2 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3b2)
  store %struct.Memory* %call_44c3b2, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c3ba	 Bytes: 3
  %loadMem_44c3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3ba = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3ba)
  store %struct.Memory* %call_44c3ba, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c3bd	 Bytes: 2
  %loadMem_44c3bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3bd = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3bd)
  store %struct.Memory* %call_44c3bd, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c3bf	 Bytes: 4
  %loadMem_44c3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3bf = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3bf)
  store %struct.Memory* %call_44c3bf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4(%rax)	 RIP: 44c3c3	 Bytes: 4
  %loadMem_44c3c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3c3 = call %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3c3)
  store %struct.Memory* %call_44c3c3, %struct.Memory** %MEMORY

  ; Code: je .L_44c4fc	 RIP: 44c3c7	 Bytes: 6
  %loadMem_44c3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3c7 = call %struct.Memory* @routine_je_.L_44c4fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3c7, i8* %BRANCH_TAKEN, i64 309, i64 6, i64 6)
  store %struct.Memory* %call_44c3c7, %struct.Memory** %MEMORY

  %loadBr_44c3c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c3c7 = icmp eq i8 %loadBr_44c3c7, 1
  br i1 %cmpBr_44c3c7, label %block_.L_44c4fc, label %block_44c3cd

block_44c3cd:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c3cd	 Bytes: 8
  %loadMem_44c3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3cd = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3cd)
  store %struct.Memory* %call_44c3cd, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c3d5	 Bytes: 3
  %loadMem_44c3d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3d5 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3d5)
  store %struct.Memory* %call_44c3d5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c3d8	 Bytes: 2
  %loadMem_44c3d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3d8 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3d8)
  store %struct.Memory* %call_44c3d8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c3da	 Bytes: 4
  %loadMem_44c3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3da = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3da)
  store %struct.Memory* %call_44c3da, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %ecx	 RIP: 44c3de	 Bytes: 3
  %loadMem_44c3de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3de = call %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3de)
  store %struct.Memory* %call_44c3de, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 44c3e1	 Bytes: 8
  %loadMem_44c3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3e1 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3e1)
  store %struct.Memory* %call_44c3e1, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11b10(%rax), %ecx	 RIP: 44c3e9	 Bytes: 6
  %loadMem_44c3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3e9 = call %struct.Memory* @routine_cmpl_0x11b10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3e9)
  store %struct.Memory* %call_44c3e9, %struct.Memory** %MEMORY

  ; Code: jbe .L_44c425	 RIP: 44c3ef	 Bytes: 6
  %loadMem_44c3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3ef = call %struct.Memory* @routine_jbe_.L_44c425(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3ef, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_44c3ef, %struct.Memory** %MEMORY

  %loadBr_44c3ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c3ef = icmp eq i8 %loadBr_44c3ef, 1
  br i1 %cmpBr_44c3ef, label %block_.L_44c425, label %block_44c3f5

block_44c3f5:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c3f5	 Bytes: 8
  %loadMem_44c3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3f5 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3f5)
  store %struct.Memory* %call_44c3f5, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c3fd	 Bytes: 3
  %loadMem_44c3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3fd = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3fd)
  store %struct.Memory* %call_44c3fd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c400	 Bytes: 2
  %loadMem_44c400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c400 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c400)
  store %struct.Memory* %call_44c400, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c402	 Bytes: 4
  %loadMem_44c402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c402 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c402)
  store %struct.Memory* %call_44c402, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %ecx	 RIP: 44c406	 Bytes: 3
  %loadMem_44c406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c406 = call %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c406)
  store %struct.Memory* %call_44c406, %struct.Memory** %MEMORY

  ; Code: subl -0x1c(%rbp), %ecx	 RIP: 44c409	 Bytes: 3
  %loadMem_44c409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c409 = call %struct.Memory* @routine_subl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c409)
  store %struct.Memory* %call_44c409, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 44c40c	 Bytes: 8
  %loadMem_44c40c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c40c = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c40c)
  store %struct.Memory* %call_44c40c, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44c414	 Bytes: 3
  %loadMem_44c414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c414 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c414)
  store %struct.Memory* %call_44c414, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44c417	 Bytes: 2
  %loadMem_44c417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c417 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c417)
  store %struct.Memory* %call_44c417, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c419	 Bytes: 4
  %loadMem_44c419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c419 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c419)
  store %struct.Memory* %call_44c419, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rax)	 RIP: 44c41d	 Bytes: 3
  %loadMem_44c41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c41d = call %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c41d)
  store %struct.Memory* %call_44c41d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44c44d	 RIP: 44c420	 Bytes: 5
  %loadMem_44c420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c420 = call %struct.Memory* @routine_jmpq_.L_44c44d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c420, i64 45, i64 5)
  store %struct.Memory* %call_44c420, %struct.Memory** %MEMORY

  br label %block_.L_44c44d

  ; Code: .L_44c425:	 RIP: 44c425	 Bytes: 0
block_.L_44c425:

  ; Code: movq 0x70ea90, %rax	 RIP: 44c425	 Bytes: 8
  %loadMem_44c425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c425 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c425)
  store %struct.Memory* %call_44c425, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c42d	 Bytes: 3
  %loadMem_44c42d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c42d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c42d)
  store %struct.Memory* %call_44c42d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c430	 Bytes: 2
  %loadMem_44c430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c430 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c430)
  store %struct.Memory* %call_44c430, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c432	 Bytes: 4
  %loadMem_44c432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c432 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c432)
  store %struct.Memory* %call_44c432, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %ecx	 RIP: 44c436	 Bytes: 3
  %loadMem_44c436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c436 = call %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c436)
  store %struct.Memory* %call_44c436, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 44c439	 Bytes: 8
  %loadMem_44c439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c439 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c439)
  store %struct.Memory* %call_44c439, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44c441	 Bytes: 3
  %loadMem_44c441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c441 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c441)
  store %struct.Memory* %call_44c441, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44c444	 Bytes: 2
  %loadMem_44c444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c444 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c444)
  store %struct.Memory* %call_44c444, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c446	 Bytes: 4
  %loadMem_44c446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c446 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c446)
  store %struct.Memory* %call_44c446, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rax)	 RIP: 44c44a	 Bytes: 3
  %loadMem_44c44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c44a = call %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c44a)
  store %struct.Memory* %call_44c44a, %struct.Memory** %MEMORY

  ; Code: .L_44c44d:	 RIP: 44c44d	 Bytes: 0
  br label %block_.L_44c44d
block_.L_44c44d:

  ; Code: movq 0x70ea90, %rax	 RIP: 44c44d	 Bytes: 8
  %loadMem_44c44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c44d = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c44d)
  store %struct.Memory* %call_44c44d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c455	 Bytes: 3
  %loadMem_44c455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c455 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c455)
  store %struct.Memory* %call_44c455, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c458	 Bytes: 2
  %loadMem_44c458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c458 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c458)
  store %struct.Memory* %call_44c458, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c45a	 Bytes: 4
  %loadMem_44c45a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c45a = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c45a)
  store %struct.Memory* %call_44c45a, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 44c45e	 Bytes: 3
  %loadMem_44c45e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c45e = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c45e)
  store %struct.Memory* %call_44c45e, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %ecx	 RIP: 44c461	 Bytes: 3
  %loadMem_44c461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c461 = call %struct.Memory* @routine_andl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c461)
  store %struct.Memory* %call_44c461, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 44c464	 Bytes: 3
  %loadMem_44c464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c464 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c464)
  store %struct.Memory* %call_44c464, %struct.Memory** %MEMORY

  ; Code: je .L_44c4a2	 RIP: 44c467	 Bytes: 6
  %loadMem_44c467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c467 = call %struct.Memory* @routine_je_.L_44c4a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c467, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_44c467, %struct.Memory** %MEMORY

  %loadBr_44c467 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c467 = icmp eq i8 %loadBr_44c467, 1
  br i1 %cmpBr_44c467, label %block_.L_44c4a2, label %block_44c46d

block_44c46d:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c46d	 Bytes: 8
  %loadMem_44c46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c46d = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c46d)
  store %struct.Memory* %call_44c46d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c475	 Bytes: 3
  %loadMem_44c475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c475 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c475)
  store %struct.Memory* %call_44c475, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c478	 Bytes: 2
  %loadMem_44c478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c478 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c478)
  store %struct.Memory* %call_44c478, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c47a	 Bytes: 4
  %loadMem_44c47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c47a = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c47a)
  store %struct.Memory* %call_44c47a, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %ecx	 RIP: 44c47e	 Bytes: 3
  %loadMem_44c47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c47e = call %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c47e)
  store %struct.Memory* %call_44c47e, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 44c481	 Bytes: 3
  %loadMem_44c481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c481 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c481)
  store %struct.Memory* %call_44c481, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %ecx	 RIP: 44c484	 Bytes: 3
  %loadMem_44c484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c484 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c484)
  store %struct.Memory* %call_44c484, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 44c487	 Bytes: 8
  %loadMem_44c487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c487 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c487)
  store %struct.Memory* %call_44c487, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44c48f	 Bytes: 3
  %loadMem_44c48f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c48f = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c48f)
  store %struct.Memory* %call_44c48f, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44c492	 Bytes: 2
  %loadMem_44c492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c492 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c492)
  store %struct.Memory* %call_44c492, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c494	 Bytes: 4
  %loadMem_44c494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c494 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c494)
  store %struct.Memory* %call_44c494, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 44c498	 Bytes: 4
  %loadMem_44c498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c498 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c498)
  store %struct.Memory* %call_44c498, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18dc(%rax)	 RIP: 44c49c	 Bytes: 6
  %loadMem_44c49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c49c = call %struct.Memory* @routine_movl__ecx__0x18dc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c49c)
  store %struct.Memory* %call_44c49c, %struct.Memory** %MEMORY

  ; Code: .L_44c4a2:	 RIP: 44c4a2	 Bytes: 0
  br label %block_.L_44c4a2
block_.L_44c4a2:

  ; Code: movq 0x70ea90, %rax	 RIP: 44c4a2	 Bytes: 8
  %loadMem_44c4a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4a2 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4a2)
  store %struct.Memory* %call_44c4a2, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c4aa	 Bytes: 3
  %loadMem_44c4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4aa = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4aa)
  store %struct.Memory* %call_44c4aa, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c4ad	 Bytes: 2
  %loadMem_44c4ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4ad = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4ad)
  store %struct.Memory* %call_44c4ad, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c4af	 Bytes: 4
  %loadMem_44c4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4af = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4af)
  store %struct.Memory* %call_44c4af, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 44c4b3	 Bytes: 3
  %loadMem_44c4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4b3 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4b3)
  store %struct.Memory* %call_44c4b3, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %ecx	 RIP: 44c4b6	 Bytes: 3
  %loadMem_44c4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4b6 = call %struct.Memory* @routine_andl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4b6)
  store %struct.Memory* %call_44c4b6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 44c4b9	 Bytes: 3
  %loadMem_44c4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4b9 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4b9)
  store %struct.Memory* %call_44c4b9, %struct.Memory** %MEMORY

  ; Code: je .L_44c4f7	 RIP: 44c4bc	 Bytes: 6
  %loadMem_44c4bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4bc = call %struct.Memory* @routine_je_.L_44c4f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4bc, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_44c4bc, %struct.Memory** %MEMORY

  %loadBr_44c4bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c4bc = icmp eq i8 %loadBr_44c4bc, 1
  br i1 %cmpBr_44c4bc, label %block_.L_44c4f7, label %block_44c4c2

block_44c4c2:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c4c2	 Bytes: 8
  %loadMem_44c4c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4c2 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4c2)
  store %struct.Memory* %call_44c4c2, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c4ca	 Bytes: 3
  %loadMem_44c4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4ca = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4ca)
  store %struct.Memory* %call_44c4ca, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c4cd	 Bytes: 2
  %loadMem_44c4cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4cd = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4cd)
  store %struct.Memory* %call_44c4cd, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c4cf	 Bytes: 4
  %loadMem_44c4cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4cf = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4cf)
  store %struct.Memory* %call_44c4cf, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %ecx	 RIP: 44c4d3	 Bytes: 3
  %loadMem_44c4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4d3 = call %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4d3)
  store %struct.Memory* %call_44c4d3, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 44c4d6	 Bytes: 3
  %loadMem_44c4d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4d6 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4d6)
  store %struct.Memory* %call_44c4d6, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %ecx	 RIP: 44c4d9	 Bytes: 3
  %loadMem_44c4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4d9 = call %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4d9)
  store %struct.Memory* %call_44c4d9, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 44c4dc	 Bytes: 8
  %loadMem_44c4dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4dc = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4dc)
  store %struct.Memory* %call_44c4dc, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44c4e4	 Bytes: 3
  %loadMem_44c4e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4e4 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4e4)
  store %struct.Memory* %call_44c4e4, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44c4e7	 Bytes: 2
  %loadMem_44c4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4e7 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4e7)
  store %struct.Memory* %call_44c4e7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c4e9	 Bytes: 4
  %loadMem_44c4e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4e9 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4e9)
  store %struct.Memory* %call_44c4e9, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 44c4ed	 Bytes: 4
  %loadMem_44c4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4ed = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4ed)
  store %struct.Memory* %call_44c4ed, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18dc(%rax)	 RIP: 44c4f1	 Bytes: 6
  %loadMem_44c4f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4f1 = call %struct.Memory* @routine_movl__ecx__0x18dc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4f1)
  store %struct.Memory* %call_44c4f1, %struct.Memory** %MEMORY

  ; Code: .L_44c4f7:	 RIP: 44c4f7	 Bytes: 0
  br label %block_.L_44c4f7
block_.L_44c4f7:

  ; Code: jmpq .L_44c4fc	 RIP: 44c4f7	 Bytes: 5
  %loadMem_44c4f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4f7 = call %struct.Memory* @routine_jmpq_.L_44c4fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4f7, i64 5, i64 5)
  store %struct.Memory* %call_44c4f7, %struct.Memory** %MEMORY

  br label %block_.L_44c4fc

  ; Code: .L_44c4fc:	 RIP: 44c4fc	 Bytes: 0
block_.L_44c4fc:

  ; Code: jmpq .L_44c501	 RIP: 44c4fc	 Bytes: 5
  %loadMem_44c4fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c4fc = call %struct.Memory* @routine_jmpq_.L_44c501(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c4fc, i64 5, i64 5)
  store %struct.Memory* %call_44c4fc, %struct.Memory** %MEMORY

  br label %block_.L_44c501

  ; Code: .L_44c501:	 RIP: 44c501	 Bytes: 0
block_.L_44c501:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44c501	 Bytes: 3
  %loadMem_44c501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c501 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c501)
  store %struct.Memory* %call_44c501, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44c504	 Bytes: 3
  %loadMem_44c504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c504 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c504)
  store %struct.Memory* %call_44c504, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44c507	 Bytes: 3
  %loadMem_44c507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c507 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c507)
  store %struct.Memory* %call_44c507, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44c3a2	 RIP: 44c50a	 Bytes: 5
  %loadMem_44c50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c50a = call %struct.Memory* @routine_jmpq_.L_44c3a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c50a, i64 -360, i64 5)
  store %struct.Memory* %call_44c50a, %struct.Memory** %MEMORY

  br label %block_.L_44c3a2

  ; Code: .L_44c50f:	 RIP: 44c50f	 Bytes: 0
block_.L_44c50f:

  ; Code: jmpq .L_44c514	 RIP: 44c50f	 Bytes: 5
  %loadMem_44c50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c50f = call %struct.Memory* @routine_jmpq_.L_44c514(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c50f, i64 5, i64 5)
  store %struct.Memory* %call_44c50f, %struct.Memory** %MEMORY

  br label %block_.L_44c514

  ; Code: .L_44c514:	 RIP: 44c514	 Bytes: 0
block_.L_44c514:

  ; Code: cmpl $0x2, -0x4(%rbp)	 RIP: 44c514	 Bytes: 4
  %loadMem_44c514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c514 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c514)
  store %struct.Memory* %call_44c514, %struct.Memory** %MEMORY

  ; Code: je .L_44c528	 RIP: 44c518	 Bytes: 6
  %loadMem_44c518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c518 = call %struct.Memory* @routine_je_.L_44c528(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c518, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_44c518, %struct.Memory** %MEMORY

  %loadBr_44c518 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c518 = icmp eq i8 %loadBr_44c518, 1
  br i1 %cmpBr_44c518, label %block_.L_44c528, label %block_44c51e

block_44c51e:
  ; Code: cmpl $0x4, -0x4(%rbp)	 RIP: 44c51e	 Bytes: 4
  %loadMem_44c51e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c51e = call %struct.Memory* @routine_cmpl__0x4__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c51e)
  store %struct.Memory* %call_44c51e, %struct.Memory** %MEMORY

  ; Code: jne .L_44c543	 RIP: 44c522	 Bytes: 6
  %loadMem_44c522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c522 = call %struct.Memory* @routine_jne_.L_44c543(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c522, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_44c522, %struct.Memory** %MEMORY

  %loadBr_44c522 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c522 = icmp eq i8 %loadBr_44c522, 1
  br i1 %cmpBr_44c522, label %block_.L_44c543, label %block_.L_44c528

  ; Code: .L_44c528:	 RIP: 44c528	 Bytes: 0
block_.L_44c528:

  ; Code: movl $0x0, 0x7247b0	 RIP: 44c528	 Bytes: 11
  %loadMem_44c528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c528 = call %struct.Memory* @routine_movl__0x0__0x7247b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c528)
  store %struct.Memory* %call_44c528, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x7247b4	 RIP: 44c533	 Bytes: 11
  %loadMem_44c533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c533 = call %struct.Memory* @routine_movl__0x0__0x7247b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c533)
  store %struct.Memory* %call_44c533, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44d609	 RIP: 44c53e	 Bytes: 5
  %loadMem_44c53e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c53e = call %struct.Memory* @routine_jmpq_.L_44d609(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c53e, i64 4299, i64 5)
  store %struct.Memory* %call_44c53e, %struct.Memory** %MEMORY

  br label %block_.L_44d609

  ; Code: .L_44c543:	 RIP: 44c543	 Bytes: 0
block_.L_44c543:

  ; Code: cmpl $0x0, -0x4(%rbp)	 RIP: 44c543	 Bytes: 4
  %loadMem_44c543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c543 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c543)
  store %struct.Memory* %call_44c543, %struct.Memory** %MEMORY

  ; Code: je .L_44c557	 RIP: 44c547	 Bytes: 6
  %loadMem_44c547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c547 = call %struct.Memory* @routine_je_.L_44c557(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c547, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_44c547, %struct.Memory** %MEMORY

  %loadBr_44c547 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c547 = icmp eq i8 %loadBr_44c547, 1
  br i1 %cmpBr_44c547, label %block_.L_44c557, label %block_44c54d

block_44c54d:
  ; Code: cmpl $0x3, -0x4(%rbp)	 RIP: 44c54d	 Bytes: 4
  %loadMem_44c54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c54d = call %struct.Memory* @routine_cmpl__0x3__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c54d)
  store %struct.Memory* %call_44c54d, %struct.Memory** %MEMORY

  ; Code: jne .L_44ca44	 RIP: 44c551	 Bytes: 6
  %loadMem_44c551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c551 = call %struct.Memory* @routine_jne_.L_44ca44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c551, i8* %BRANCH_TAKEN, i64 1267, i64 6, i64 6)
  store %struct.Memory* %call_44c551, %struct.Memory** %MEMORY

  %loadBr_44c551 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c551 = icmp eq i8 %loadBr_44c551, 1
  br i1 %cmpBr_44c551, label %block_.L_44ca44, label %block_.L_44c557

  ; Code: .L_44c557:	 RIP: 44c557	 Bytes: 0
block_.L_44c557:

  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 44c557	 Bytes: 4
  %loadMem_44c557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c557 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c557)
  store %struct.Memory* %call_44c557, %struct.Memory** %MEMORY

  ; Code: jne .L_44c793	 RIP: 44c55b	 Bytes: 6
  %loadMem_44c55b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c55b = call %struct.Memory* @routine_jne_.L_44c793(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c55b, i8* %BRANCH_TAKEN, i64 568, i64 6, i64 6)
  store %struct.Memory* %call_44c55b, %struct.Memory** %MEMORY

  %loadBr_44c55b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c55b = icmp eq i8 %loadBr_44c55b, 1
  br i1 %cmpBr_44c55b, label %block_.L_44c793, label %block_44c561

block_44c561:
  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 44c561	 Bytes: 7
  %loadMem_44c561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c561 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c561)
  store %struct.Memory* %call_44c561, %struct.Memory** %MEMORY

  ; Code: .L_44c568:	 RIP: 44c568	 Bytes: 0
  br label %block_.L_44c568
block_.L_44c568:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44c568	 Bytes: 3
  %loadMem_44c568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c568 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c568)
  store %struct.Memory* %call_44c568, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaa8, %eax	 RIP: 44c56b	 Bytes: 7
  %loadMem_44c56b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c56b = call %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c56b)
  store %struct.Memory* %call_44c56b, %struct.Memory** %MEMORY

  ; Code: jae .L_44c61d	 RIP: 44c572	 Bytes: 6
  %loadMem_44c572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c572 = call %struct.Memory* @routine_jae_.L_44c61d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c572, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_44c572, %struct.Memory** %MEMORY

  %loadBr_44c572 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c572 = icmp eq i8 %loadBr_44c572, 1
  br i1 %cmpBr_44c572, label %block_.L_44c61d, label %block_44c578

block_44c578:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c578	 Bytes: 8
  %loadMem_44c578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c578 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c578)
  store %struct.Memory* %call_44c578, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c580	 Bytes: 3
  %loadMem_44c580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c580 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c580)
  store %struct.Memory* %call_44c580, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c583	 Bytes: 2
  %loadMem_44c583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c583 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c583)
  store %struct.Memory* %call_44c583, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c585	 Bytes: 4
  %loadMem_44c585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c585 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c585)
  store %struct.Memory* %call_44c585, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, (%rax)	 RIP: 44c589	 Bytes: 3
  %loadMem_44c589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c589 = call %struct.Memory* @routine_cmpl__0x3____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c589)
  store %struct.Memory* %call_44c589, %struct.Memory** %MEMORY

  ; Code: jne .L_44c60a	 RIP: 44c58c	 Bytes: 6
  %loadMem_44c58c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c58c = call %struct.Memory* @routine_jne_.L_44c60a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c58c, i8* %BRANCH_TAKEN, i64 126, i64 6, i64 6)
  store %struct.Memory* %call_44c58c, %struct.Memory** %MEMORY

  %loadBr_44c58c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c58c = icmp eq i8 %loadBr_44c58c, 1
  br i1 %cmpBr_44c58c, label %block_.L_44c60a, label %block_44c592

block_44c592:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c592	 Bytes: 8
  %loadMem_44c592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c592 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c592)
  store %struct.Memory* %call_44c592, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c59a	 Bytes: 3
  %loadMem_44c59a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c59a = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c59a)
  store %struct.Memory* %call_44c59a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c59d	 Bytes: 2
  %loadMem_44c59d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c59d = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c59d)
  store %struct.Memory* %call_44c59d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c59f	 Bytes: 4
  %loadMem_44c59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c59f = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c59f)
  store %struct.Memory* %call_44c59f, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44c5a3	 Bytes: 4
  %loadMem_44c5a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5a3 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5a3)
  store %struct.Memory* %call_44c5a3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18ec(%rax)	 RIP: 44c5a7	 Bytes: 7
  %loadMem_44c5a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5a7 = call %struct.Memory* @routine_cmpl__0x0__0x18ec__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5a7)
  store %struct.Memory* %call_44c5a7, %struct.Memory** %MEMORY

  ; Code: je .L_44c605	 RIP: 44c5ae	 Bytes: 6
  %loadMem_44c5ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5ae = call %struct.Memory* @routine_je_.L_44c605(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5ae, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_44c5ae, %struct.Memory** %MEMORY

  %loadBr_44c5ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c5ae = icmp eq i8 %loadBr_44c5ae, 1
  br i1 %cmpBr_44c5ae, label %block_.L_44c605, label %block_44c5b4

block_44c5b4:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c5b4	 Bytes: 8
  %loadMem_44c5b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5b4 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5b4)
  store %struct.Memory* %call_44c5b4, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c5bc	 Bytes: 3
  %loadMem_44c5bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5bc = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5bc)
  store %struct.Memory* %call_44c5bc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c5bf	 Bytes: 2
  %loadMem_44c5bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5bf = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5bf)
  store %struct.Memory* %call_44c5bf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c5c1	 Bytes: 4
  %loadMem_44c5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5c1 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5c1)
  store %struct.Memory* %call_44c5c1, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44c5c5	 Bytes: 4
  %loadMem_44c5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5c5 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5c5)
  store %struct.Memory* %call_44c5c5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18e8(%rax)	 RIP: 44c5c9	 Bytes: 7
  %loadMem_44c5c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5c9 = call %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5c9)
  store %struct.Memory* %call_44c5c9, %struct.Memory** %MEMORY

  ; Code: jne .L_44c605	 RIP: 44c5d0	 Bytes: 6
  %loadMem_44c5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5d0 = call %struct.Memory* @routine_jne_.L_44c605(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5d0, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_44c5d0, %struct.Memory** %MEMORY

  %loadBr_44c5d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c5d0 = icmp eq i8 %loadBr_44c5d0, 1
  br i1 %cmpBr_44c5d0, label %block_.L_44c605, label %block_44c5d6

block_44c5d6:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c5d6	 Bytes: 8
  %loadMem_44c5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5d6 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5d6)
  store %struct.Memory* %call_44c5d6, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c5de	 Bytes: 3
  %loadMem_44c5de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5de = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5de)
  store %struct.Memory* %call_44c5de, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c5e1	 Bytes: 2
  %loadMem_44c5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5e1 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5e1)
  store %struct.Memory* %call_44c5e1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c5e3	 Bytes: 4
  %loadMem_44c5e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5e3 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5e3)
  store %struct.Memory* %call_44c5e3, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44c5e7	 Bytes: 4
  %loadMem_44c5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5e7 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5e7)
  store %struct.Memory* %call_44c5e7, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rdx	 RIP: 44c5eb	 Bytes: 8
  %loadMem_44c5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5eb = call %struct.Memory* @routine_movq_0x722b20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5eb)
  store %struct.Memory* %call_44c5eb, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44c5f3	 Bytes: 3
  %loadMem_44c5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5f3 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5f3)
  store %struct.Memory* %call_44c5f3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 44c5f6	 Bytes: 2
  %loadMem_44c5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5f6 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5f6)
  store %struct.Memory* %call_44c5f6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 44c5f8	 Bytes: 3
  %loadMem_44c5f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5f8 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5f8)
  store %struct.Memory* %call_44c5f8, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x24(%rbp)	 RIP: 44c5fb	 Bytes: 3
  %loadMem_44c5fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5fb = call %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5fb)
  store %struct.Memory* %call_44c5fb, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdi	 RIP: 44c5fe	 Bytes: 3
  %loadMem_44c5fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c5fe = call %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c5fe)
  store %struct.Memory* %call_44c5fe, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx,%rdi,8)	 RIP: 44c601	 Bytes: 4
  %loadMem_44c601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c601 = call %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c601)
  store %struct.Memory* %call_44c601, %struct.Memory** %MEMORY

  ; Code: .L_44c605:	 RIP: 44c605	 Bytes: 0
  br label %block_.L_44c605
block_.L_44c605:

  ; Code: jmpq .L_44c60a	 RIP: 44c605	 Bytes: 5
  %loadMem_44c605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c605 = call %struct.Memory* @routine_jmpq_.L_44c60a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c605, i64 5, i64 5)
  store %struct.Memory* %call_44c605, %struct.Memory** %MEMORY

  br label %block_.L_44c60a

  ; Code: .L_44c60a:	 RIP: 44c60a	 Bytes: 0
block_.L_44c60a:

  ; Code: jmpq .L_44c60f	 RIP: 44c60a	 Bytes: 5
  %loadMem_44c60a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c60a = call %struct.Memory* @routine_jmpq_.L_44c60f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c60a, i64 5, i64 5)
  store %struct.Memory* %call_44c60a, %struct.Memory** %MEMORY

  br label %block_.L_44c60f

  ; Code: .L_44c60f:	 RIP: 44c60f	 Bytes: 0
block_.L_44c60f:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44c60f	 Bytes: 3
  %loadMem_44c60f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c60f = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c60f)
  store %struct.Memory* %call_44c60f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44c612	 Bytes: 3
  %loadMem_44c612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c612 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c612)
  store %struct.Memory* %call_44c612, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44c615	 Bytes: 3
  %loadMem_44c615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c615 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c615)
  store %struct.Memory* %call_44c615, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44c568	 RIP: 44c618	 Bytes: 5
  %loadMem_44c618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c618 = call %struct.Memory* @routine_jmpq_.L_44c568(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c618, i64 -176, i64 5)
  store %struct.Memory* %call_44c618, %struct.Memory** %MEMORY

  br label %block_.L_44c568

  ; Code: .L_44c61d:	 RIP: 44c61d	 Bytes: 0
block_.L_44c61d:

  ; Code: movl $0x8, %eax	 RIP: 44c61d	 Bytes: 5
  %loadMem_44c61d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c61d = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c61d)
  store %struct.Memory* %call_44c61d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44c622	 Bytes: 2
  %loadMem_44c622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c622 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c622)
  store %struct.Memory* %call_44c622, %struct.Memory** %MEMORY

  ; Code: movq $0x44d620, %rcx	 RIP: 44c624	 Bytes: 10
  %loadMem_44c624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c624 = call %struct.Memory* @routine_movq__0x44d620___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c624)
  store %struct.Memory* %call_44c624, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rsi	 RIP: 44c62e	 Bytes: 8
  %loadMem_44c62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c62e = call %struct.Memory* @routine_movq_0x722b20___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c62e)
  store %struct.Memory* %call_44c62e, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 44c636	 Bytes: 4
  %loadMem_44c636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c636 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c636)
  store %struct.Memory* %call_44c636, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x58(%rbp)	 RIP: 44c63a	 Bytes: 4
  %loadMem_44c63a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c63a = call %struct.Memory* @routine_movq__rdi__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c63a)
  store %struct.Memory* %call_44c63a, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 44c63e	 Bytes: 3
  %loadMem_44c63e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c63e = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c63e)
  store %struct.Memory* %call_44c63e, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rsi	 RIP: 44c641	 Bytes: 4
  %loadMem_44c641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c641 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c641)
  store %struct.Memory* %call_44c641, %struct.Memory** %MEMORY

  ; Code: callq .qsort_plt	 RIP: 44c645	 Bytes: 5
  %loadMem1_44c645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c645 = call %struct.Memory* @routine_callq_.qsort_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c645, i64 -308837, i64 5, i64 5)
  store %struct.Memory* %call1_44c645, %struct.Memory** %MEMORY

  %loadMem2_44c645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c645 = load i64, i64* %3
  %call2_44c645 = call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* %0, i64  %loadPC_44c645, %struct.Memory* %loadMem2_44c645)
  store %struct.Memory* %call2_44c645, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 44c64a	 Bytes: 3
  %loadMem_44c64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c64a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c64a)
  store %struct.Memory* %call_44c64a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x7247b0	 RIP: 44c64d	 Bytes: 7
  %loadMem_44c64d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c64d = call %struct.Memory* @routine_movl__eax__0x7247b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c64d)
  store %struct.Memory* %call_44c64d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 44c654	 Bytes: 7
  %loadMem_44c654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c654 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c654)
  store %struct.Memory* %call_44c654, %struct.Memory** %MEMORY

  ; Code: .L_44c65b:	 RIP: 44c65b	 Bytes: 0
  br label %block_.L_44c65b
block_.L_44c65b:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44c65b	 Bytes: 3
  %loadMem_44c65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c65b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c65b)
  store %struct.Memory* %call_44c65b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaac, %eax	 RIP: 44c65e	 Bytes: 7
  %loadMem_44c65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c65e = call %struct.Memory* @routine_cmpl_0x70eaac___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c65e)
  store %struct.Memory* %call_44c65e, %struct.Memory** %MEMORY

  ; Code: jae .L_44c73f	 RIP: 44c665	 Bytes: 6
  %loadMem_44c665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c665 = call %struct.Memory* @routine_jae_.L_44c73f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c665, i8* %BRANCH_TAKEN, i64 218, i64 6, i64 6)
  store %struct.Memory* %call_44c665, %struct.Memory** %MEMORY

  %loadBr_44c665 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c665 = icmp eq i8 %loadBr_44c665, 1
  br i1 %cmpBr_44c665, label %block_.L_44c73f, label %block_44c66b

block_44c66b:
  ; Code: movq 0x70ea98, %rax	 RIP: 44c66b	 Bytes: 8
  %loadMem_44c66b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c66b = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c66b)
  store %struct.Memory* %call_44c66b, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c673	 Bytes: 3
  %loadMem_44c673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c673 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c673)
  store %struct.Memory* %call_44c673, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c676	 Bytes: 2
  %loadMem_44c676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c676 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c676)
  store %struct.Memory* %call_44c676, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c678	 Bytes: 4
  %loadMem_44c678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c678 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c678)
  store %struct.Memory* %call_44c678, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, (%rax)	 RIP: 44c67c	 Bytes: 3
  %loadMem_44c67c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c67c = call %struct.Memory* @routine_cmpl__0x3____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c67c)
  store %struct.Memory* %call_44c67c, %struct.Memory** %MEMORY

  ; Code: jne .L_44c72c	 RIP: 44c67f	 Bytes: 6
  %loadMem_44c67f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c67f = call %struct.Memory* @routine_jne_.L_44c72c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c67f, i8* %BRANCH_TAKEN, i64 173, i64 6, i64 6)
  store %struct.Memory* %call_44c67f, %struct.Memory** %MEMORY

  %loadBr_44c67f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c67f = icmp eq i8 %loadBr_44c67f, 1
  br i1 %cmpBr_44c67f, label %block_.L_44c72c, label %block_44c685

block_44c685:
  ; Code: movq 0x70ea98, %rax	 RIP: 44c685	 Bytes: 8
  %loadMem_44c685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c685 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c685)
  store %struct.Memory* %call_44c685, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c68d	 Bytes: 3
  %loadMem_44c68d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c68d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c68d)
  store %struct.Memory* %call_44c68d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c690	 Bytes: 2
  %loadMem_44c690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c690 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c690)
  store %struct.Memory* %call_44c690, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c692	 Bytes: 4
  %loadMem_44c692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c692 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c692)
  store %struct.Memory* %call_44c692, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44c696	 Bytes: 4
  %loadMem_44c696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c696 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c696)
  store %struct.Memory* %call_44c696, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18e8(%rax)	 RIP: 44c69a	 Bytes: 7
  %loadMem_44c69a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c69a = call %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c69a)
  store %struct.Memory* %call_44c69a, %struct.Memory** %MEMORY

  ; Code: je .L_44c727	 RIP: 44c6a1	 Bytes: 6
  %loadMem_44c6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6a1 = call %struct.Memory* @routine_je_.L_44c727(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6a1, i8* %BRANCH_TAKEN, i64 134, i64 6, i64 6)
  store %struct.Memory* %call_44c6a1, %struct.Memory** %MEMORY

  %loadBr_44c6a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c6a1 = icmp eq i8 %loadBr_44c6a1, 1
  br i1 %cmpBr_44c6a1, label %block_.L_44c727, label %block_44c6a7

block_44c6a7:
  ; Code: movq 0x70ea98, %rax	 RIP: 44c6a7	 Bytes: 8
  %loadMem_44c6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6a7 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6a7)
  store %struct.Memory* %call_44c6a7, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c6af	 Bytes: 3
  %loadMem_44c6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6af = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6af)
  store %struct.Memory* %call_44c6af, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c6b2	 Bytes: 2
  %loadMem_44c6b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6b2 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6b2)
  store %struct.Memory* %call_44c6b2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c6b4	 Bytes: 4
  %loadMem_44c6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6b4 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6b4)
  store %struct.Memory* %call_44c6b4, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44c6b8	 Bytes: 4
  %loadMem_44c6b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6b8 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6b8)
  store %struct.Memory* %call_44c6b8, %struct.Memory** %MEMORY

  ; Code: movl 0x18e4(%rax), %ecx	 RIP: 44c6bc	 Bytes: 6
  %loadMem_44c6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6bc = call %struct.Memory* @routine_movl_0x18e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6bc)
  store %struct.Memory* %call_44c6bc, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea98, %rax	 RIP: 44c6c2	 Bytes: 8
  %loadMem_44c6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6c2 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6c2)
  store %struct.Memory* %call_44c6c2, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44c6ca	 Bytes: 3
  %loadMem_44c6ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6ca = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6ca)
  store %struct.Memory* %call_44c6ca, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44c6cd	 Bytes: 2
  %loadMem_44c6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6cd = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6cd)
  store %struct.Memory* %call_44c6cd, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c6cf	 Bytes: 4
  %loadMem_44c6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6cf = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6cf)
  store %struct.Memory* %call_44c6cf, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44c6d3	 Bytes: 4
  %loadMem_44c6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6d3 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6d3)
  store %struct.Memory* %call_44c6d3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18e0(%rax)	 RIP: 44c6d7	 Bytes: 6
  %loadMem_44c6d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6d7 = call %struct.Memory* @routine_movl__ecx__0x18e0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6d7)
  store %struct.Memory* %call_44c6d7, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44c6dd	 Bytes: 3
  %loadMem_44c6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6dd = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6dd)
  store %struct.Memory* %call_44c6dd, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea98, %rax	 RIP: 44c6e0	 Bytes: 8
  %loadMem_44c6e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6e0 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6e0)
  store %struct.Memory* %call_44c6e0, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44c6e8	 Bytes: 3
  %loadMem_44c6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6e8 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6e8)
  store %struct.Memory* %call_44c6e8, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44c6eb	 Bytes: 2
  %loadMem_44c6eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6eb = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6eb)
  store %struct.Memory* %call_44c6eb, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c6ed	 Bytes: 4
  %loadMem_44c6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6ed = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6ed)
  store %struct.Memory* %call_44c6ed, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44c6f1	 Bytes: 4
  %loadMem_44c6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6f1 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6f1)
  store %struct.Memory* %call_44c6f1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x14(%rax)	 RIP: 44c6f5	 Bytes: 3
  %loadMem_44c6f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6f5 = call %struct.Memory* @routine_movl__ecx__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6f5)
  store %struct.Memory* %call_44c6f5, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea98, %rax	 RIP: 44c6f8	 Bytes: 8
  %loadMem_44c6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c6f8 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c6f8)
  store %struct.Memory* %call_44c6f8, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c700	 Bytes: 3
  %loadMem_44c700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c700 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c700)
  store %struct.Memory* %call_44c700, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c703	 Bytes: 2
  %loadMem_44c703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c703 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c703)
  store %struct.Memory* %call_44c703, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c705	 Bytes: 4
  %loadMem_44c705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c705 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c705)
  store %struct.Memory* %call_44c705, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44c709	 Bytes: 4
  %loadMem_44c709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c709 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c709)
  store %struct.Memory* %call_44c709, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rdx	 RIP: 44c70d	 Bytes: 8
  %loadMem_44c70d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c70d = call %struct.Memory* @routine_movq_0x722b20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c70d)
  store %struct.Memory* %call_44c70d, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44c715	 Bytes: 3
  %loadMem_44c715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c715 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c715)
  store %struct.Memory* %call_44c715, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 44c718	 Bytes: 2
  %loadMem_44c718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c718 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c718)
  store %struct.Memory* %call_44c718, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 44c71a	 Bytes: 3
  %loadMem_44c71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c71a = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c71a)
  store %struct.Memory* %call_44c71a, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x24(%rbp)	 RIP: 44c71d	 Bytes: 3
  %loadMem_44c71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c71d = call %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c71d)
  store %struct.Memory* %call_44c71d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdi	 RIP: 44c720	 Bytes: 3
  %loadMem_44c720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c720 = call %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c720)
  store %struct.Memory* %call_44c720, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx,%rdi,8)	 RIP: 44c723	 Bytes: 4
  %loadMem_44c723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c723 = call %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c723)
  store %struct.Memory* %call_44c723, %struct.Memory** %MEMORY

  ; Code: .L_44c727:	 RIP: 44c727	 Bytes: 0
  br label %block_.L_44c727
block_.L_44c727:

  ; Code: jmpq .L_44c72c	 RIP: 44c727	 Bytes: 5
  %loadMem_44c727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c727 = call %struct.Memory* @routine_jmpq_.L_44c72c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c727, i64 5, i64 5)
  store %struct.Memory* %call_44c727, %struct.Memory** %MEMORY

  br label %block_.L_44c72c

  ; Code: .L_44c72c:	 RIP: 44c72c	 Bytes: 0
block_.L_44c72c:

  ; Code: jmpq .L_44c731	 RIP: 44c72c	 Bytes: 5
  %loadMem_44c72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c72c = call %struct.Memory* @routine_jmpq_.L_44c731(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c72c, i64 5, i64 5)
  store %struct.Memory* %call_44c72c, %struct.Memory** %MEMORY

  br label %block_.L_44c731

  ; Code: .L_44c731:	 RIP: 44c731	 Bytes: 0
block_.L_44c731:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44c731	 Bytes: 3
  %loadMem_44c731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c731 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c731)
  store %struct.Memory* %call_44c731, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44c734	 Bytes: 3
  %loadMem_44c734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c734 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c734)
  store %struct.Memory* %call_44c734, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44c737	 Bytes: 3
  %loadMem_44c737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c737 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c737)
  store %struct.Memory* %call_44c737, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44c65b	 RIP: 44c73a	 Bytes: 5
  %loadMem_44c73a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c73a = call %struct.Memory* @routine_jmpq_.L_44c65b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c73a, i64 -223, i64 5)
  store %struct.Memory* %call_44c73a, %struct.Memory** %MEMORY

  br label %block_.L_44c65b

  ; Code: .L_44c73f:	 RIP: 44c73f	 Bytes: 0
block_.L_44c73f:

  ; Code: movl $0x8, %eax	 RIP: 44c73f	 Bytes: 5
  %loadMem_44c73f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c73f = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c73f)
  store %struct.Memory* %call_44c73f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44c744	 Bytes: 2
  %loadMem_44c744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c744 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c744)
  store %struct.Memory* %call_44c744, %struct.Memory** %MEMORY

  ; Code: movq $0x44d690, %rcx	 RIP: 44c746	 Bytes: 10
  %loadMem_44c746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c746 = call %struct.Memory* @routine_movq__0x44d690___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c746)
  store %struct.Memory* %call_44c746, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rsi	 RIP: 44c750	 Bytes: 8
  %loadMem_44c750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c750 = call %struct.Memory* @routine_movq_0x722b20___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c750)
  store %struct.Memory* %call_44c750, %struct.Memory** %MEMORY

  ; Code: movslq 0x7247b0, %rdi	 RIP: 44c758	 Bytes: 8
  %loadMem_44c758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c758 = call %struct.Memory* @routine_movslq_0x7247b0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c758)
  store %struct.Memory* %call_44c758, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdi	 RIP: 44c760	 Bytes: 4
  %loadMem_44c760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c760 = call %struct.Memory* @routine_shlq__0x3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c760)
  store %struct.Memory* %call_44c760, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 44c764	 Bytes: 3
  %loadMem_44c764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c764 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c764)
  store %struct.Memory* %call_44c764, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 44c767	 Bytes: 3
  %loadMem_44c767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c767 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c767)
  store %struct.Memory* %call_44c767, %struct.Memory** %MEMORY

  ; Code: subl 0x7247b0, %eax	 RIP: 44c76a	 Bytes: 7
  %loadMem_44c76a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c76a = call %struct.Memory* @routine_subl_0x7247b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c76a)
  store %struct.Memory* %call_44c76a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 44c771	 Bytes: 3
  %loadMem_44c771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c771 = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c771)
  store %struct.Memory* %call_44c771, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x60(%rbp)	 RIP: 44c774	 Bytes: 4
  %loadMem_44c774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c774 = call %struct.Memory* @routine_movq__rdi__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c774)
  store %struct.Memory* %call_44c774, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 44c778	 Bytes: 3
  %loadMem_44c778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c778 = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c778)
  store %struct.Memory* %call_44c778, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rsi	 RIP: 44c77b	 Bytes: 4
  %loadMem_44c77b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c77b = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c77b)
  store %struct.Memory* %call_44c77b, %struct.Memory** %MEMORY

  ; Code: callq .qsort_plt	 RIP: 44c77f	 Bytes: 5
  %loadMem1_44c77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c77f = call %struct.Memory* @routine_callq_.qsort_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c77f, i64 -309151, i64 5, i64 5)
  store %struct.Memory* %call1_44c77f, %struct.Memory** %MEMORY

  %loadMem2_44c77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c77f = load i64, i64* %3
  %call2_44c77f = call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* %0, i64  %loadPC_44c77f, %struct.Memory* %loadMem2_44c77f)
  store %struct.Memory* %call2_44c77f, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 44c784	 Bytes: 3
  %loadMem_44c784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c784 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c784)
  store %struct.Memory* %call_44c784, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x7247b0	 RIP: 44c787	 Bytes: 7
  %loadMem_44c787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c787 = call %struct.Memory* @routine_movl__eax__0x7247b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c787)
  store %struct.Memory* %call_44c787, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ca34	 RIP: 44c78e	 Bytes: 5
  %loadMem_44c78e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c78e = call %struct.Memory* @routine_jmpq_.L_44ca34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c78e, i64 678, i64 5)
  store %struct.Memory* %call_44c78e, %struct.Memory** %MEMORY

  br label %block_.L_44ca34

  ; Code: .L_44c793:	 RIP: 44c793	 Bytes: 0
block_.L_44c793:

  ; Code: movl $0x8, %eax	 RIP: 44c793	 Bytes: 5
  %loadMem_44c793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c793 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c793)
  store %struct.Memory* %call_44c793, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44c798	 Bytes: 2
  %loadMem_44c798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c798 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c798)
  store %struct.Memory* %call_44c798, %struct.Memory** %MEMORY

  ; Code: movl 0x70eaa0, %eax	 RIP: 44c79a	 Bytes: 7
  %loadMem_44c79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c79a = call %struct.Memory* @routine_movl_0x70eaa0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c79a)
  store %struct.Memory* %call_44c79a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 44c7a1	 Bytes: 2
  %loadMem_44c7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7a1 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7a1)
  store %struct.Memory* %call_44c7a1, %struct.Memory** %MEMORY

  ; Code: callq .calloc_plt	 RIP: 44c7a3	 Bytes: 5
  %loadMem1_44c7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c7a3 = call %struct.Memory* @routine_callq_.calloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c7a3, i64 -308931, i64 5, i64 5)
  store %struct.Memory* %call1_44c7a3, %struct.Memory** %MEMORY

  %loadMem2_44c7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c7a3 = load i64, i64* %3
  %call2_44c7a3 = call %struct.Memory* @ext_calloc(%struct.State* %0, i64  %loadPC_44c7a3, %struct.Memory* %loadMem2_44c7a3)
  store %struct.Memory* %call2_44c7a3, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 44c7a8	 Bytes: 2
  %loadMem_44c7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7a8 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7a8)
  store %struct.Memory* %call_44c7a8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 44c7aa	 Bytes: 2
  %loadMem_44c7aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7aa = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7aa)
  store %struct.Memory* %call_44c7aa, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 44c7ac	 Bytes: 4
  %loadMem_44c7ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7ac = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7ac)
  store %struct.Memory* %call_44c7ac, %struct.Memory** %MEMORY

  ; Code: cmpq -0x38(%rbp), %rsi	 RIP: 44c7b0	 Bytes: 4
  %loadMem_44c7b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7b0 = call %struct.Memory* @routine_cmpq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7b0)
  store %struct.Memory* %call_44c7b0, %struct.Memory** %MEMORY

  ; Code: jne .L_44c7c9	 RIP: 44c7b4	 Bytes: 6
  %loadMem_44c7b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7b4 = call %struct.Memory* @routine_jne_.L_44c7c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7b4, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_44c7b4, %struct.Memory** %MEMORY

  %loadBr_44c7b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c7b4 = icmp eq i8 %loadBr_44c7b4, 1
  br i1 %cmpBr_44c7b4, label %block_.L_44c7c9, label %block_44c7ba

block_44c7ba:
  ; Code: movq $0x4c1921, %rdi	 RIP: 44c7ba	 Bytes: 10
  %loadMem_44c7ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7ba = call %struct.Memory* @routine_movq__0x4c1921___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7ba)
  store %struct.Memory* %call_44c7ba, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 44c7c4	 Bytes: 5
  %loadMem1_44c7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c7c4 = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c7c4, i64 52268, i64 5, i64 5)
  store %struct.Memory* %call1_44c7c4, %struct.Memory** %MEMORY

  %loadMem2_44c7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c7c4 = load i64, i64* %3
  %call2_44c7c4 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_44c7c4, %struct.Memory* %loadMem2_44c7c4)
  store %struct.Memory* %call2_44c7c4, %struct.Memory** %MEMORY

  ; Code: .L_44c7c9:	 RIP: 44c7c9	 Bytes: 0
  br label %block_.L_44c7c9
block_.L_44c7c9:

  ; Code: movl $0x8, %eax	 RIP: 44c7c9	 Bytes: 5
  %loadMem_44c7c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7c9 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7c9)
  store %struct.Memory* %call_44c7c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44c7ce	 Bytes: 2
  %loadMem_44c7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7ce = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7ce)
  store %struct.Memory* %call_44c7ce, %struct.Memory** %MEMORY

  ; Code: movl 0x70eaa0, %eax	 RIP: 44c7d0	 Bytes: 7
  %loadMem_44c7d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7d0 = call %struct.Memory* @routine_movl_0x70eaa0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7d0)
  store %struct.Memory* %call_44c7d0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 44c7d7	 Bytes: 2
  %loadMem_44c7d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7d7 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7d7)
  store %struct.Memory* %call_44c7d7, %struct.Memory** %MEMORY

  ; Code: callq .calloc_plt	 RIP: 44c7d9	 Bytes: 5
  %loadMem1_44c7d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c7d9 = call %struct.Memory* @routine_callq_.calloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c7d9, i64 -308985, i64 5, i64 5)
  store %struct.Memory* %call1_44c7d9, %struct.Memory** %MEMORY

  %loadMem2_44c7d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c7d9 = load i64, i64* %3
  %call2_44c7d9 = call %struct.Memory* @ext_calloc(%struct.State* %0, i64  %loadPC_44c7d9, %struct.Memory* %loadMem2_44c7d9)
  store %struct.Memory* %call2_44c7d9, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 44c7de	 Bytes: 2
  %loadMem_44c7de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7de = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7de)
  store %struct.Memory* %call_44c7de, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 44c7e0	 Bytes: 2
  %loadMem_44c7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7e0 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7e0)
  store %struct.Memory* %call_44c7e0, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 44c7e2	 Bytes: 4
  %loadMem_44c7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7e2 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7e2)
  store %struct.Memory* %call_44c7e2, %struct.Memory** %MEMORY

  ; Code: cmpq -0x48(%rbp), %rsi	 RIP: 44c7e6	 Bytes: 4
  %loadMem_44c7e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7e6 = call %struct.Memory* @routine_cmpq_MINUS0x48__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7e6)
  store %struct.Memory* %call_44c7e6, %struct.Memory** %MEMORY

  ; Code: jne .L_44c7ff	 RIP: 44c7ea	 Bytes: 6
  %loadMem_44c7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7ea = call %struct.Memory* @routine_jne_.L_44c7ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7ea, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_44c7ea, %struct.Memory** %MEMORY

  %loadBr_44c7ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c7ea = icmp eq i8 %loadBr_44c7ea, 1
  br i1 %cmpBr_44c7ea, label %block_.L_44c7ff, label %block_44c7f0

block_44c7f0:
  ; Code: movq $0x4c1936, %rdi	 RIP: 44c7f0	 Bytes: 10
  %loadMem_44c7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7f0 = call %struct.Memory* @routine_movq__0x4c1936___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7f0)
  store %struct.Memory* %call_44c7f0, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 44c7fa	 Bytes: 5
  %loadMem1_44c7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c7fa = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c7fa, i64 52214, i64 5, i64 5)
  store %struct.Memory* %call1_44c7fa, %struct.Memory** %MEMORY

  %loadMem2_44c7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c7fa = load i64, i64* %3
  %call2_44c7fa = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_44c7fa, %struct.Memory* %loadMem2_44c7fa)
  store %struct.Memory* %call2_44c7fa, %struct.Memory** %MEMORY

  ; Code: .L_44c7ff:	 RIP: 44c7ff	 Bytes: 0
  br label %block_.L_44c7ff
block_.L_44c7ff:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 44c7ff	 Bytes: 7
  %loadMem_44c7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c7ff = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c7ff)
  store %struct.Memory* %call_44c7ff, %struct.Memory** %MEMORY

  ; Code: .L_44c806:	 RIP: 44c806	 Bytes: 0
  br label %block_.L_44c806
block_.L_44c806:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44c806	 Bytes: 3
  %loadMem_44c806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c806 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c806)
  store %struct.Memory* %call_44c806, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaa8, %eax	 RIP: 44c809	 Bytes: 7
  %loadMem_44c809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c809 = call %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c809)
  store %struct.Memory* %call_44c809, %struct.Memory** %MEMORY

  ; Code: jae .L_44c86b	 RIP: 44c810	 Bytes: 6
  %loadMem_44c810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c810 = call %struct.Memory* @routine_jae_.L_44c86b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c810, i8* %BRANCH_TAKEN, i64 91, i64 6, i64 6)
  store %struct.Memory* %call_44c810, %struct.Memory** %MEMORY

  %loadBr_44c810 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c810 = icmp eq i8 %loadBr_44c810, 1
  br i1 %cmpBr_44c810, label %block_.L_44c86b, label %block_44c816

block_44c816:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c816	 Bytes: 8
  %loadMem_44c816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c816 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c816)
  store %struct.Memory* %call_44c816, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c81e	 Bytes: 3
  %loadMem_44c81e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c81e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c81e)
  store %struct.Memory* %call_44c81e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c821	 Bytes: 2
  %loadMem_44c821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c821 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c821)
  store %struct.Memory* %call_44c821, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c823	 Bytes: 4
  %loadMem_44c823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c823 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c823)
  store %struct.Memory* %call_44c823, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4(%rax)	 RIP: 44c827	 Bytes: 4
  %loadMem_44c827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c827 = call %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c827)
  store %struct.Memory* %call_44c827, %struct.Memory** %MEMORY

  ; Code: je .L_44c858	 RIP: 44c82b	 Bytes: 6
  %loadMem_44c82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c82b = call %struct.Memory* @routine_je_.L_44c858(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c82b, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_44c82b, %struct.Memory** %MEMORY

  %loadBr_44c82b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c82b = icmp eq i8 %loadBr_44c82b, 1
  br i1 %cmpBr_44c82b, label %block_.L_44c858, label %block_44c831

block_44c831:
  ; Code: movq 0x70ea90, %rax	 RIP: 44c831	 Bytes: 8
  %loadMem_44c831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c831 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c831)
  store %struct.Memory* %call_44c831, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c839	 Bytes: 3
  %loadMem_44c839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c839 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c839)
  store %struct.Memory* %call_44c839, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c83c	 Bytes: 2
  %loadMem_44c83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c83c = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c83c)
  store %struct.Memory* %call_44c83c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c83e	 Bytes: 4
  %loadMem_44c83e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c83e = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c83e)
  store %struct.Memory* %call_44c83e, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 44c842	 Bytes: 4
  %loadMem_44c842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c842 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c842)
  store %struct.Memory* %call_44c842, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44c846	 Bytes: 3
  %loadMem_44c846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c846 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c846)
  store %struct.Memory* %call_44c846, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 44c849	 Bytes: 2
  %loadMem_44c849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c849 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c849)
  store %struct.Memory* %call_44c849, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 44c84b	 Bytes: 3
  %loadMem_44c84b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c84b = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c84b)
  store %struct.Memory* %call_44c84b, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x24(%rbp)	 RIP: 44c84e	 Bytes: 3
  %loadMem_44c84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c84e = call %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c84e)
  store %struct.Memory* %call_44c84e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdi	 RIP: 44c851	 Bytes: 3
  %loadMem_44c851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c851 = call %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c851)
  store %struct.Memory* %call_44c851, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx,%rdi,8)	 RIP: 44c854	 Bytes: 4
  %loadMem_44c854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c854 = call %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c854)
  store %struct.Memory* %call_44c854, %struct.Memory** %MEMORY

  ; Code: .L_44c858:	 RIP: 44c858	 Bytes: 0
  br label %block_.L_44c858
block_.L_44c858:

  ; Code: jmpq .L_44c85d	 RIP: 44c858	 Bytes: 5
  %loadMem_44c858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c858 = call %struct.Memory* @routine_jmpq_.L_44c85d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c858, i64 5, i64 5)
  store %struct.Memory* %call_44c858, %struct.Memory** %MEMORY

  br label %block_.L_44c85d

  ; Code: .L_44c85d:	 RIP: 44c85d	 Bytes: 0
block_.L_44c85d:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44c85d	 Bytes: 3
  %loadMem_44c85d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c85d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c85d)
  store %struct.Memory* %call_44c85d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44c860	 Bytes: 3
  %loadMem_44c860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c860 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c860)
  store %struct.Memory* %call_44c860, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44c863	 Bytes: 3
  %loadMem_44c863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c863 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c863)
  store %struct.Memory* %call_44c863, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44c806	 RIP: 44c866	 Bytes: 5
  %loadMem_44c866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c866 = call %struct.Memory* @routine_jmpq_.L_44c806(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c866, i64 -96, i64 5)
  store %struct.Memory* %call_44c866, %struct.Memory** %MEMORY

  br label %block_.L_44c806

  ; Code: .L_44c86b:	 RIP: 44c86b	 Bytes: 0
block_.L_44c86b:

  ; Code: movl $0x8, %eax	 RIP: 44c86b	 Bytes: 5
  %loadMem_44c86b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c86b = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c86b)
  store %struct.Memory* %call_44c86b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44c870	 Bytes: 2
  %loadMem_44c870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c870 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c870)
  store %struct.Memory* %call_44c870, %struct.Memory** %MEMORY

  ; Code: movq $0x44d700, %rcx	 RIP: 44c872	 Bytes: 10
  %loadMem_44c872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c872 = call %struct.Memory* @routine_movq__0x44d700___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c872)
  store %struct.Memory* %call_44c872, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rsi	 RIP: 44c87c	 Bytes: 4
  %loadMem_44c87c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c87c = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c87c)
  store %struct.Memory* %call_44c87c, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 44c880	 Bytes: 4
  %loadMem_44c880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c880 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c880)
  store %struct.Memory* %call_44c880, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x68(%rbp)	 RIP: 44c884	 Bytes: 4
  %loadMem_44c884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c884 = call %struct.Memory* @routine_movq__rdi__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c884)
  store %struct.Memory* %call_44c884, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 44c888	 Bytes: 3
  %loadMem_44c888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c888 = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c888)
  store %struct.Memory* %call_44c888, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rsi	 RIP: 44c88b	 Bytes: 4
  %loadMem_44c88b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c88b = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c88b)
  store %struct.Memory* %call_44c88b, %struct.Memory** %MEMORY

  ; Code: callq .qsort_plt	 RIP: 44c88f	 Bytes: 5
  %loadMem1_44c88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c88f = call %struct.Memory* @routine_callq_.qsort_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c88f, i64 -309423, i64 5, i64 5)
  store %struct.Memory* %call1_44c88f, %struct.Memory** %MEMORY

  %loadMem2_44c88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c88f = load i64, i64* %3
  %call2_44c88f = call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* %0, i64  %loadPC_44c88f, %struct.Memory* %loadMem2_44c88f)
  store %struct.Memory* %call2_44c88f, %struct.Memory** %MEMORY

  ; Code: movq $0x7247b0, %r8	 RIP: 44c894	 Bytes: 10
  %loadMem_44c894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c894 = call %struct.Memory* @routine_movq__0x7247b0___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c894)
  store %struct.Memory* %call_44c894, %struct.Memory** %MEMORY

  ; Code: xorl %r9d, %r9d	 RIP: 44c89e	 Bytes: 3
  %loadMem_44c89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c89e = call %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c89e)
  store %struct.Memory* %call_44c89e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x7247b0	 RIP: 44c8a1	 Bytes: 11
  %loadMem_44c8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8a1 = call %struct.Memory* @routine_movl__0x0__0x7247b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8a1)
  store %struct.Memory* %call_44c8a1, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 44c8ac	 Bytes: 3
  %loadMem_44c8ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8ac = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8ac)
  store %struct.Memory* %call_44c8ac, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rsi	 RIP: 44c8af	 Bytes: 4
  %loadMem_44c8af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8af = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8af)
  store %struct.Memory* %call_44c8af, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 44c8b3	 Bytes: 3
  %loadMem_44c8b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8b3 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8b3)
  store %struct.Memory* %call_44c8b3, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rcx	 RIP: 44c8b6	 Bytes: 8
  %loadMem_44c8b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8b6 = call %struct.Memory* @routine_movq_0x722b20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8b6)
  store %struct.Memory* %call_44c8b6, %struct.Memory** %MEMORY

  ; Code: callq .gen_pic_list_from_frame_list	 RIP: 44c8be	 Bytes: 5
  %loadMem1_44c8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c8be = call %struct.Memory* @routine_callq_.gen_pic_list_from_frame_list(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c8be, i64 3762, i64 5, i64 5)
  store %struct.Memory* %call1_44c8be, %struct.Memory** %MEMORY

  %loadMem2_44c8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c8be = load i64, i64* %3
  %call2_44c8be = call %struct.Memory* @sub_44d770.gen_pic_list_from_frame_list(%struct.State* %0, i64  %loadPC_44c8be, %struct.Memory* %loadMem2_44c8be)
  store %struct.Memory* %call2_44c8be, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 44c8c3	 Bytes: 7
  %loadMem_44c8c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8c3 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8c3)
  store %struct.Memory* %call_44c8c3, %struct.Memory** %MEMORY

  ; Code: .L_44c8ca:	 RIP: 44c8ca	 Bytes: 0
  br label %block_.L_44c8ca
block_.L_44c8ca:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44c8ca	 Bytes: 3
  %loadMem_44c8ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8ca = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8ca)
  store %struct.Memory* %call_44c8ca, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaac, %eax	 RIP: 44c8cd	 Bytes: 7
  %loadMem_44c8cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8cd = call %struct.Memory* @routine_cmpl_0x70eaac___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8cd)
  store %struct.Memory* %call_44c8cd, %struct.Memory** %MEMORY

  ; Code: jae .L_44c9cc	 RIP: 44c8d4	 Bytes: 6
  %loadMem_44c8d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8d4 = call %struct.Memory* @routine_jae_.L_44c9cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8d4, i8* %BRANCH_TAKEN, i64 248, i64 6, i64 6)
  store %struct.Memory* %call_44c8d4, %struct.Memory** %MEMORY

  %loadBr_44c8d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c8d4 = icmp eq i8 %loadBr_44c8d4, 1
  br i1 %cmpBr_44c8d4, label %block_.L_44c9cc, label %block_44c8da

block_44c8da:
  ; Code: movq 0x70ea98, %rax	 RIP: 44c8da	 Bytes: 8
  %loadMem_44c8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8da = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8da)
  store %struct.Memory* %call_44c8da, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c8e2	 Bytes: 3
  %loadMem_44c8e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8e2 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8e2)
  store %struct.Memory* %call_44c8e2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c8e5	 Bytes: 2
  %loadMem_44c8e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8e5 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8e5)
  store %struct.Memory* %call_44c8e5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c8e7	 Bytes: 4
  %loadMem_44c8e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8e7 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8e7)
  store %struct.Memory* %call_44c8e7, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdx	 RIP: 44c8eb	 Bytes: 4
  %loadMem_44c8eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8eb = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8eb)
  store %struct.Memory* %call_44c8eb, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %ecx	 RIP: 44c8ef	 Bytes: 3
  %loadMem_44c8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8ef = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8ef)
  store %struct.Memory* %call_44c8ef, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 44c8f2	 Bytes: 2
  %loadMem_44c8f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8f2 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8f2)
  store %struct.Memory* %call_44c8f2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 44c8f4	 Bytes: 3
  %loadMem_44c8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8f4 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8f4)
  store %struct.Memory* %call_44c8f4, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x2c(%rbp)	 RIP: 44c8f7	 Bytes: 3
  %loadMem_44c8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8f7 = call %struct.Memory* @routine_movl__esi__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8f7)
  store %struct.Memory* %call_44c8f7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdi	 RIP: 44c8fa	 Bytes: 3
  %loadMem_44c8fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8fa = call %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8fa)
  store %struct.Memory* %call_44c8fa, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx,%rdi,8)	 RIP: 44c8fd	 Bytes: 4
  %loadMem_44c8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c8fd = call %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c8fd)
  store %struct.Memory* %call_44c8fd, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea98, %rax	 RIP: 44c901	 Bytes: 8
  %loadMem_44c901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c901 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c901)
  store %struct.Memory* %call_44c901, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c909	 Bytes: 3
  %loadMem_44c909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c909 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c909)
  store %struct.Memory* %call_44c909, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c90c	 Bytes: 2
  %loadMem_44c90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c90c = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c90c)
  store %struct.Memory* %call_44c90c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c90e	 Bytes: 4
  %loadMem_44c90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c90e = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c90e)
  store %struct.Memory* %call_44c90e, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 44c912	 Bytes: 3
  %loadMem_44c912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c912 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c912)
  store %struct.Memory* %call_44c912, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %ecx	 RIP: 44c915	 Bytes: 3
  %loadMem_44c915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c915 = call %struct.Memory* @routine_andl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c915)
  store %struct.Memory* %call_44c915, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 44c918	 Bytes: 3
  %loadMem_44c918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c918 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c918)
  store %struct.Memory* %call_44c918, %struct.Memory** %MEMORY

  ; Code: je .L_44c95d	 RIP: 44c91b	 Bytes: 6
  %loadMem_44c91b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c91b = call %struct.Memory* @routine_je_.L_44c95d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c91b, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_44c91b, %struct.Memory** %MEMORY

  %loadBr_44c91b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c91b = icmp eq i8 %loadBr_44c91b, 1
  br i1 %cmpBr_44c91b, label %block_.L_44c95d, label %block_44c921

block_44c921:
  ; Code: movq 0x70ea98, %rax	 RIP: 44c921	 Bytes: 8
  %loadMem_44c921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c921 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c921)
  store %struct.Memory* %call_44c921, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c929	 Bytes: 3
  %loadMem_44c929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c929 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c929)
  store %struct.Memory* %call_44c929, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c92c	 Bytes: 2
  %loadMem_44c92c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c92c = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c92c)
  store %struct.Memory* %call_44c92c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c92e	 Bytes: 4
  %loadMem_44c92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c92e = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c92e)
  store %struct.Memory* %call_44c92e, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 44c932	 Bytes: 4
  %loadMem_44c932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c932 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c932)
  store %struct.Memory* %call_44c932, %struct.Memory** %MEMORY

  ; Code: movl 0x18e4(%rax), %ecx	 RIP: 44c936	 Bytes: 6
  %loadMem_44c936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c936 = call %struct.Memory* @routine_movl_0x18e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c936)
  store %struct.Memory* %call_44c936, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 44c93c	 Bytes: 3
  %loadMem_44c93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c93c = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c93c)
  store %struct.Memory* %call_44c93c, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %ecx	 RIP: 44c93f	 Bytes: 3
  %loadMem_44c93f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c93f = call %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c93f)
  store %struct.Memory* %call_44c93f, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea98, %rax	 RIP: 44c942	 Bytes: 8
  %loadMem_44c942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c942 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c942)
  store %struct.Memory* %call_44c942, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44c94a	 Bytes: 3
  %loadMem_44c94a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c94a = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c94a)
  store %struct.Memory* %call_44c94a, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44c94d	 Bytes: 2
  %loadMem_44c94d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c94d = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c94d)
  store %struct.Memory* %call_44c94d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c94f	 Bytes: 4
  %loadMem_44c94f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c94f = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c94f)
  store %struct.Memory* %call_44c94f, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 44c953	 Bytes: 4
  %loadMem_44c953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c953 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c953)
  store %struct.Memory* %call_44c953, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18e0(%rax)	 RIP: 44c957	 Bytes: 6
  %loadMem_44c957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c957 = call %struct.Memory* @routine_movl__ecx__0x18e0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c957)
  store %struct.Memory* %call_44c957, %struct.Memory** %MEMORY

  ; Code: .L_44c95d:	 RIP: 44c95d	 Bytes: 0
  br label %block_.L_44c95d
block_.L_44c95d:

  ; Code: movq 0x70ea98, %rax	 RIP: 44c95d	 Bytes: 8
  %loadMem_44c95d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c95d = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c95d)
  store %struct.Memory* %call_44c95d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c965	 Bytes: 3
  %loadMem_44c965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c965 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c965)
  store %struct.Memory* %call_44c965, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c968	 Bytes: 2
  %loadMem_44c968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c968 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c968)
  store %struct.Memory* %call_44c968, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c96a	 Bytes: 4
  %loadMem_44c96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c96a = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c96a)
  store %struct.Memory* %call_44c96a, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 44c96e	 Bytes: 3
  %loadMem_44c96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c96e = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c96e)
  store %struct.Memory* %call_44c96e, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %ecx	 RIP: 44c971	 Bytes: 3
  %loadMem_44c971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c971 = call %struct.Memory* @routine_andl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c971)
  store %struct.Memory* %call_44c971, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 44c974	 Bytes: 3
  %loadMem_44c974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c974 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c974)
  store %struct.Memory* %call_44c974, %struct.Memory** %MEMORY

  ; Code: je .L_44c9b9	 RIP: 44c977	 Bytes: 6
  %loadMem_44c977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c977 = call %struct.Memory* @routine_je_.L_44c9b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c977, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_44c977, %struct.Memory** %MEMORY

  %loadBr_44c977 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c977 = icmp eq i8 %loadBr_44c977, 1
  br i1 %cmpBr_44c977, label %block_.L_44c9b9, label %block_44c97d

block_44c97d:
  ; Code: movq 0x70ea98, %rax	 RIP: 44c97d	 Bytes: 8
  %loadMem_44c97d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c97d = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c97d)
  store %struct.Memory* %call_44c97d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44c985	 Bytes: 3
  %loadMem_44c985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c985 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c985)
  store %struct.Memory* %call_44c985, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44c988	 Bytes: 2
  %loadMem_44c988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c988 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c988)
  store %struct.Memory* %call_44c988, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c98a	 Bytes: 4
  %loadMem_44c98a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c98a = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c98a)
  store %struct.Memory* %call_44c98a, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 44c98e	 Bytes: 4
  %loadMem_44c98e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c98e = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c98e)
  store %struct.Memory* %call_44c98e, %struct.Memory** %MEMORY

  ; Code: movl 0x18e4(%rax), %ecx	 RIP: 44c992	 Bytes: 6
  %loadMem_44c992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c992 = call %struct.Memory* @routine_movl_0x18e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c992)
  store %struct.Memory* %call_44c992, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 44c998	 Bytes: 3
  %loadMem_44c998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c998 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c998)
  store %struct.Memory* %call_44c998, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %ecx	 RIP: 44c99b	 Bytes: 3
  %loadMem_44c99b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c99b = call %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c99b)
  store %struct.Memory* %call_44c99b, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea98, %rax	 RIP: 44c99e	 Bytes: 8
  %loadMem_44c99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c99e = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c99e)
  store %struct.Memory* %call_44c99e, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44c9a6	 Bytes: 3
  %loadMem_44c9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9a6 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9a6)
  store %struct.Memory* %call_44c9a6, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44c9a9	 Bytes: 2
  %loadMem_44c9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9a9 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9a9)
  store %struct.Memory* %call_44c9a9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44c9ab	 Bytes: 4
  %loadMem_44c9ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9ab = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9ab)
  store %struct.Memory* %call_44c9ab, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 44c9af	 Bytes: 4
  %loadMem_44c9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9af = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9af)
  store %struct.Memory* %call_44c9af, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18e0(%rax)	 RIP: 44c9b3	 Bytes: 6
  %loadMem_44c9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9b3 = call %struct.Memory* @routine_movl__ecx__0x18e0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9b3)
  store %struct.Memory* %call_44c9b3, %struct.Memory** %MEMORY

  ; Code: .L_44c9b9:	 RIP: 44c9b9	 Bytes: 0
  br label %block_.L_44c9b9
block_.L_44c9b9:

  ; Code: jmpq .L_44c9be	 RIP: 44c9b9	 Bytes: 5
  %loadMem_44c9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9b9 = call %struct.Memory* @routine_jmpq_.L_44c9be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9b9, i64 5, i64 5)
  store %struct.Memory* %call_44c9b9, %struct.Memory** %MEMORY

  br label %block_.L_44c9be

  ; Code: .L_44c9be:	 RIP: 44c9be	 Bytes: 0
block_.L_44c9be:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44c9be	 Bytes: 3
  %loadMem_44c9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9be = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9be)
  store %struct.Memory* %call_44c9be, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44c9c1	 Bytes: 3
  %loadMem_44c9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9c1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9c1)
  store %struct.Memory* %call_44c9c1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44c9c4	 Bytes: 3
  %loadMem_44c9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9c4 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9c4)
  store %struct.Memory* %call_44c9c4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44c8ca	 RIP: 44c9c7	 Bytes: 5
  %loadMem_44c9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9c7 = call %struct.Memory* @routine_jmpq_.L_44c8ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9c7, i64 -253, i64 5)
  store %struct.Memory* %call_44c9c7, %struct.Memory** %MEMORY

  br label %block_.L_44c8ca

  ; Code: .L_44c9cc:	 RIP: 44c9cc	 Bytes: 0
block_.L_44c9cc:

  ; Code: movl $0x8, %eax	 RIP: 44c9cc	 Bytes: 5
  %loadMem_44c9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9cc = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9cc)
  store %struct.Memory* %call_44c9cc, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44c9d1	 Bytes: 2
  %loadMem_44c9d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9d1 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9d1)
  store %struct.Memory* %call_44c9d1, %struct.Memory** %MEMORY

  ; Code: movq $0x44dad0, %rcx	 RIP: 44c9d3	 Bytes: 10
  %loadMem_44c9d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9d3 = call %struct.Memory* @routine_movq__0x44dad0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9d3)
  store %struct.Memory* %call_44c9d3, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rsi	 RIP: 44c9dd	 Bytes: 4
  %loadMem_44c9dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9dd = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9dd)
  store %struct.Memory* %call_44c9dd, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 44c9e1	 Bytes: 4
  %loadMem_44c9e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9e1 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9e1)
  store %struct.Memory* %call_44c9e1, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x70(%rbp)	 RIP: 44c9e5	 Bytes: 4
  %loadMem_44c9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9e5 = call %struct.Memory* @routine_movq__rdi__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9e5)
  store %struct.Memory* %call_44c9e5, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 44c9e9	 Bytes: 3
  %loadMem_44c9e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9e9 = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9e9)
  store %struct.Memory* %call_44c9e9, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rsi	 RIP: 44c9ec	 Bytes: 4
  %loadMem_44c9ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9ec = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9ec)
  store %struct.Memory* %call_44c9ec, %struct.Memory** %MEMORY

  ; Code: callq .qsort_plt	 RIP: 44c9f0	 Bytes: 5
  %loadMem1_44c9f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c9f0 = call %struct.Memory* @routine_callq_.qsort_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c9f0, i64 -309776, i64 5, i64 5)
  store %struct.Memory* %call1_44c9f0, %struct.Memory** %MEMORY

  %loadMem2_44c9f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c9f0 = load i64, i64* %3
  %call2_44c9f0 = call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* %0, i64  %loadPC_44c9f0, %struct.Memory* %loadMem2_44c9f0)
  store %struct.Memory* %call2_44c9f0, %struct.Memory** %MEMORY

  ; Code: movq $0x7247b0, %r8	 RIP: 44c9f5	 Bytes: 10
  %loadMem_44c9f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9f5 = call %struct.Memory* @routine_movq__0x7247b0___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9f5)
  store %struct.Memory* %call_44c9f5, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r9d	 RIP: 44c9ff	 Bytes: 6
  %loadMem_44c9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c9ff = call %struct.Memory* @routine_movl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c9ff)
  store %struct.Memory* %call_44c9ff, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 44ca05	 Bytes: 3
  %loadMem_44ca05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca05 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca05)
  store %struct.Memory* %call_44ca05, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rsi	 RIP: 44ca08	 Bytes: 4
  %loadMem_44ca08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca08 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca08)
  store %struct.Memory* %call_44ca08, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 44ca0c	 Bytes: 3
  %loadMem_44ca0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca0c = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca0c)
  store %struct.Memory* %call_44ca0c, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rcx	 RIP: 44ca0f	 Bytes: 8
  %loadMem_44ca0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca0f = call %struct.Memory* @routine_movq_0x722b20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca0f)
  store %struct.Memory* %call_44ca0f, %struct.Memory** %MEMORY

  ; Code: callq .gen_pic_list_from_frame_list	 RIP: 44ca17	 Bytes: 5
  %loadMem1_44ca17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ca17 = call %struct.Memory* @routine_callq_.gen_pic_list_from_frame_list(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ca17, i64 3417, i64 5, i64 5)
  store %struct.Memory* %call1_44ca17, %struct.Memory** %MEMORY

  %loadMem2_44ca17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ca17 = load i64, i64* %3
  %call2_44ca17 = call %struct.Memory* @sub_44d770.gen_pic_list_from_frame_list(%struct.State* %0, i64  %loadPC_44ca17, %struct.Memory* %loadMem2_44ca17)
  store %struct.Memory* %call2_44ca17, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 44ca1c	 Bytes: 4
  %loadMem_44ca1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca1c = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca1c)
  store %struct.Memory* %call_44ca1c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 44ca20	 Bytes: 3
  %loadMem_44ca20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca20 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca20)
  store %struct.Memory* %call_44ca20, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 44ca23	 Bytes: 5
  %loadMem1_44ca23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ca23 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ca23, i64 -309923, i64 5, i64 5)
  store %struct.Memory* %call1_44ca23, %struct.Memory** %MEMORY

  %loadMem2_44ca23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ca23 = load i64, i64* %3
  %call2_44ca23 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_44ca23, %struct.Memory* %loadMem2_44ca23)
  store %struct.Memory* %call2_44ca23, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 44ca28	 Bytes: 4
  %loadMem_44ca28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca28 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca28)
  store %struct.Memory* %call_44ca28, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 44ca2c	 Bytes: 3
  %loadMem_44ca2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca2c = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca2c)
  store %struct.Memory* %call_44ca2c, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 44ca2f	 Bytes: 5
  %loadMem1_44ca2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ca2f = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ca2f, i64 -309935, i64 5, i64 5)
  store %struct.Memory* %call1_44ca2f, %struct.Memory** %MEMORY

  %loadMem2_44ca2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ca2f = load i64, i64* %3
  %call2_44ca2f = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_44ca2f, %struct.Memory* %loadMem2_44ca2f)
  store %struct.Memory* %call2_44ca2f, %struct.Memory** %MEMORY

  ; Code: .L_44ca34:	 RIP: 44ca34	 Bytes: 0
  br label %block_.L_44ca34
block_.L_44ca34:

  ; Code: movl $0x0, 0x7247b4	 RIP: 44ca34	 Bytes: 11
  %loadMem_44ca34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca34 = call %struct.Memory* @routine_movl__0x0__0x7247b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca34)
  store %struct.Memory* %call_44ca34, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44d43a	 RIP: 44ca3f	 Bytes: 5
  %loadMem_44ca3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca3f = call %struct.Memory* @routine_jmpq_.L_44d43a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca3f, i64 2555, i64 5)
  store %struct.Memory* %call_44ca3f, %struct.Memory** %MEMORY

  br label %block_.L_44d43a

  ; Code: .L_44ca44:	 RIP: 44ca44	 Bytes: 0
block_.L_44ca44:

  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 44ca44	 Bytes: 4
  %loadMem_44ca44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca44 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca44)
  store %struct.Memory* %call_44ca44, %struct.Memory** %MEMORY

  ; Code: jne .L_44cf29	 RIP: 44ca48	 Bytes: 6
  %loadMem_44ca48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca48 = call %struct.Memory* @routine_jne_.L_44cf29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca48, i8* %BRANCH_TAKEN, i64 1249, i64 6, i64 6)
  store %struct.Memory* %call_44ca48, %struct.Memory** %MEMORY

  %loadBr_44ca48 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ca48 = icmp eq i8 %loadBr_44ca48, 1
  br i1 %cmpBr_44ca48, label %block_.L_44cf29, label %block_44ca4e

block_44ca4e:
  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 44ca4e	 Bytes: 7
  %loadMem_44ca4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca4e = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca4e)
  store %struct.Memory* %call_44ca4e, %struct.Memory** %MEMORY

  ; Code: .L_44ca55:	 RIP: 44ca55	 Bytes: 0
  br label %block_.L_44ca55
block_.L_44ca55:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44ca55	 Bytes: 3
  %loadMem_44ca55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca55 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca55)
  store %struct.Memory* %call_44ca55, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaa8, %eax	 RIP: 44ca58	 Bytes: 7
  %loadMem_44ca58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca58 = call %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca58)
  store %struct.Memory* %call_44ca58, %struct.Memory** %MEMORY

  ; Code: jae .L_44cb56	 RIP: 44ca5f	 Bytes: 6
  %loadMem_44ca5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca5f = call %struct.Memory* @routine_jae_.L_44cb56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca5f, i8* %BRANCH_TAKEN, i64 247, i64 6, i64 6)
  store %struct.Memory* %call_44ca5f, %struct.Memory** %MEMORY

  %loadBr_44ca5f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ca5f = icmp eq i8 %loadBr_44ca5f, 1
  br i1 %cmpBr_44ca5f, label %block_.L_44cb56, label %block_44ca65

block_44ca65:
  ; Code: movq 0x70ea90, %rax	 RIP: 44ca65	 Bytes: 8
  %loadMem_44ca65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca65 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca65)
  store %struct.Memory* %call_44ca65, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44ca6d	 Bytes: 3
  %loadMem_44ca6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca6d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca6d)
  store %struct.Memory* %call_44ca6d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44ca70	 Bytes: 2
  %loadMem_44ca70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca70 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca70)
  store %struct.Memory* %call_44ca70, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44ca72	 Bytes: 4
  %loadMem_44ca72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca72 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca72)
  store %struct.Memory* %call_44ca72, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, (%rax)	 RIP: 44ca76	 Bytes: 3
  %loadMem_44ca76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca76 = call %struct.Memory* @routine_cmpl__0x3____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca76)
  store %struct.Memory* %call_44ca76, %struct.Memory** %MEMORY

  ; Code: jne .L_44cb43	 RIP: 44ca79	 Bytes: 6
  %loadMem_44ca79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca79 = call %struct.Memory* @routine_jne_.L_44cb43(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca79, i8* %BRANCH_TAKEN, i64 202, i64 6, i64 6)
  store %struct.Memory* %call_44ca79, %struct.Memory** %MEMORY

  %loadBr_44ca79 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ca79 = icmp eq i8 %loadBr_44ca79, 1
  br i1 %cmpBr_44ca79, label %block_.L_44cb43, label %block_44ca7f

block_44ca7f:
  ; Code: movq 0x70ea90, %rax	 RIP: 44ca7f	 Bytes: 8
  %loadMem_44ca7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca7f = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca7f)
  store %struct.Memory* %call_44ca7f, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44ca87	 Bytes: 3
  %loadMem_44ca87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca87 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca87)
  store %struct.Memory* %call_44ca87, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44ca8a	 Bytes: 2
  %loadMem_44ca8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca8a = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca8a)
  store %struct.Memory* %call_44ca8a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44ca8c	 Bytes: 4
  %loadMem_44ca8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca8c = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca8c)
  store %struct.Memory* %call_44ca8c, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44ca90	 Bytes: 4
  %loadMem_44ca90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca90 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca90)
  store %struct.Memory* %call_44ca90, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18ec(%rax)	 RIP: 44ca94	 Bytes: 7
  %loadMem_44ca94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca94 = call %struct.Memory* @routine_cmpl__0x0__0x18ec__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca94)
  store %struct.Memory* %call_44ca94, %struct.Memory** %MEMORY

  ; Code: je .L_44cb3e	 RIP: 44ca9b	 Bytes: 6
  %loadMem_44ca9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ca9b = call %struct.Memory* @routine_je_.L_44cb3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ca9b, i8* %BRANCH_TAKEN, i64 163, i64 6, i64 6)
  store %struct.Memory* %call_44ca9b, %struct.Memory** %MEMORY

  %loadBr_44ca9b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ca9b = icmp eq i8 %loadBr_44ca9b, 1
  br i1 %cmpBr_44ca9b, label %block_.L_44cb3e, label %block_44caa1

block_44caa1:
  ; Code: movq 0x70ea90, %rax	 RIP: 44caa1	 Bytes: 8
  %loadMem_44caa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44caa1 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44caa1)
  store %struct.Memory* %call_44caa1, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44caa9	 Bytes: 3
  %loadMem_44caa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44caa9 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44caa9)
  store %struct.Memory* %call_44caa9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44caac	 Bytes: 2
  %loadMem_44caac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44caac = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44caac)
  store %struct.Memory* %call_44caac, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44caae	 Bytes: 4
  %loadMem_44caae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44caae = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44caae)
  store %struct.Memory* %call_44caae, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44cab2	 Bytes: 4
  %loadMem_44cab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cab2 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cab2)
  store %struct.Memory* %call_44cab2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18e8(%rax)	 RIP: 44cab6	 Bytes: 7
  %loadMem_44cab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cab6 = call %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cab6)
  store %struct.Memory* %call_44cab6, %struct.Memory** %MEMORY

  ; Code: jne .L_44cb3e	 RIP: 44cabd	 Bytes: 6
  %loadMem_44cabd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cabd = call %struct.Memory* @routine_jne_.L_44cb3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cabd, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_44cabd, %struct.Memory** %MEMORY

  %loadBr_44cabd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44cabd = icmp eq i8 %loadBr_44cabd, 1
  br i1 %cmpBr_44cabd, label %block_.L_44cb3e, label %block_44cac3

block_44cac3:
  ; Code: movq 0x6cb900, %rax	 RIP: 44cac3	 Bytes: 8
  %loadMem_44cac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cac3 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cac3)
  store %struct.Memory* %call_44cac3, %struct.Memory** %MEMORY

  ; Code: movl 0x11b08(%rax), %ecx	 RIP: 44cacb	 Bytes: 6
  %loadMem_44cacb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cacb = call %struct.Memory* @routine_movl_0x11b08__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cacb)
  store %struct.Memory* %call_44cacb, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 44cad1	 Bytes: 8
  %loadMem_44cad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cad1 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cad1)
  store %struct.Memory* %call_44cad1, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 44cad9	 Bytes: 3
  %loadMem_44cad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cad9 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cad9)
  store %struct.Memory* %call_44cad9, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 44cadc	 Bytes: 2
  %loadMem_44cadc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cadc = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cadc)
  store %struct.Memory* %call_44cadc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rsi,8), %rax	 RIP: 44cade	 Bytes: 4
  %loadMem_44cade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cade = call %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cade)
  store %struct.Memory* %call_44cade, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44cae2	 Bytes: 4
  %loadMem_44cae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cae2 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cae2)
  store %struct.Memory* %call_44cae2, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %ecx	 RIP: 44cae6	 Bytes: 3
  %loadMem_44cae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cae6 = call %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cae6)
  store %struct.Memory* %call_44cae6, %struct.Memory** %MEMORY

  ; Code: jle .L_44cb39	 RIP: 44cae9	 Bytes: 6
  %loadMem_44cae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cae9 = call %struct.Memory* @routine_jle_.L_44cb39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cae9, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_44cae9, %struct.Memory** %MEMORY

  %loadBr_44cae9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44cae9 = icmp eq i8 %loadBr_44cae9, 1
  br i1 %cmpBr_44cae9, label %block_.L_44cb39, label %block_44caef

block_44caef:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 44caef	 Bytes: 3
  %loadMem_44caef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44caef = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44caef)
  store %struct.Memory* %call_44caef, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 44caf2	 Bytes: 8
  %loadMem_44caf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44caf2 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44caf2)
  store %struct.Memory* %call_44caf2, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 44cafa	 Bytes: 3
  %loadMem_44cafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cafa = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cafa)
  store %struct.Memory* %call_44cafa, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 44cafd	 Bytes: 2
  %loadMem_44cafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cafd = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cafd)
  store %struct.Memory* %call_44cafd, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 44caff	 Bytes: 4
  %loadMem_44caff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44caff = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44caff)
  store %struct.Memory* %call_44caff, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 44cb03	 Bytes: 4
  %loadMem_44cb03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb03 = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb03)
  store %struct.Memory* %call_44cb03, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x14(%rcx)	 RIP: 44cb07	 Bytes: 3
  %loadMem_44cb07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb07 = call %struct.Memory* @routine_movl__eax__0x14__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb07)
  store %struct.Memory* %call_44cb07, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 44cb0a	 Bytes: 8
  %loadMem_44cb0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb0a = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb0a)
  store %struct.Memory* %call_44cb0a, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44cb12	 Bytes: 3
  %loadMem_44cb12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb12 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb12)
  store %struct.Memory* %call_44cb12, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44cb15	 Bytes: 2
  %loadMem_44cb15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb15 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb15)
  store %struct.Memory* %call_44cb15, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 44cb17	 Bytes: 4
  %loadMem_44cb17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb17 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb17)
  store %struct.Memory* %call_44cb17, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 44cb1b	 Bytes: 4
  %loadMem_44cb1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb1b = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb1b)
  store %struct.Memory* %call_44cb1b, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rsi	 RIP: 44cb1f	 Bytes: 8
  %loadMem_44cb1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb1f = call %struct.Memory* @routine_movq_0x722b20___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb1f)
  store %struct.Memory* %call_44cb1f, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 44cb27	 Bytes: 3
  %loadMem_44cb27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb27 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb27)
  store %struct.Memory* %call_44cb27, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44cb2a	 Bytes: 2
  %loadMem_44cb2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb2a = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb2a)
  store %struct.Memory* %call_44cb2a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 44cb2c	 Bytes: 3
  %loadMem_44cb2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb2c = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb2c)
  store %struct.Memory* %call_44cb2c, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x24(%rbp)	 RIP: 44cb2f	 Bytes: 3
  %loadMem_44cb2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb2f = call %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb2f)
  store %struct.Memory* %call_44cb2f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 44cb32	 Bytes: 3
  %loadMem_44cb32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb32 = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb32)
  store %struct.Memory* %call_44cb32, %struct.Memory** %MEMORY

  ; Code: movq %rcx, (%rsi,%rdi,8)	 RIP: 44cb35	 Bytes: 4
  %loadMem_44cb35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb35 = call %struct.Memory* @routine_movq__rcx____rsi__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb35)
  store %struct.Memory* %call_44cb35, %struct.Memory** %MEMORY

  ; Code: .L_44cb39:	 RIP: 44cb39	 Bytes: 0
  br label %block_.L_44cb39
block_.L_44cb39:

  ; Code: jmpq .L_44cb3e	 RIP: 44cb39	 Bytes: 5
  %loadMem_44cb39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb39 = call %struct.Memory* @routine_jmpq_.L_44cb3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb39, i64 5, i64 5)
  store %struct.Memory* %call_44cb39, %struct.Memory** %MEMORY

  br label %block_.L_44cb3e

  ; Code: .L_44cb3e:	 RIP: 44cb3e	 Bytes: 0
block_.L_44cb3e:

  ; Code: jmpq .L_44cb43	 RIP: 44cb3e	 Bytes: 5
  %loadMem_44cb3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb3e = call %struct.Memory* @routine_jmpq_.L_44cb43(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb3e, i64 5, i64 5)
  store %struct.Memory* %call_44cb3e, %struct.Memory** %MEMORY

  br label %block_.L_44cb43

  ; Code: .L_44cb43:	 RIP: 44cb43	 Bytes: 0
block_.L_44cb43:

  ; Code: jmpq .L_44cb48	 RIP: 44cb43	 Bytes: 5
  %loadMem_44cb43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb43 = call %struct.Memory* @routine_jmpq_.L_44cb48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb43, i64 5, i64 5)
  store %struct.Memory* %call_44cb43, %struct.Memory** %MEMORY

  br label %block_.L_44cb48

  ; Code: .L_44cb48:	 RIP: 44cb48	 Bytes: 0
block_.L_44cb48:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44cb48	 Bytes: 3
  %loadMem_44cb48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb48 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb48)
  store %struct.Memory* %call_44cb48, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44cb4b	 Bytes: 3
  %loadMem_44cb4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb4b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb4b)
  store %struct.Memory* %call_44cb4b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44cb4e	 Bytes: 3
  %loadMem_44cb4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb4e = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb4e)
  store %struct.Memory* %call_44cb4e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ca55	 RIP: 44cb51	 Bytes: 5
  %loadMem_44cb51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb51 = call %struct.Memory* @routine_jmpq_.L_44ca55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb51, i64 -252, i64 5)
  store %struct.Memory* %call_44cb51, %struct.Memory** %MEMORY

  br label %block_.L_44ca55

  ; Code: .L_44cb56:	 RIP: 44cb56	 Bytes: 0
block_.L_44cb56:

  ; Code: movl $0x8, %eax	 RIP: 44cb56	 Bytes: 5
  %loadMem_44cb56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb56 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb56)
  store %struct.Memory* %call_44cb56, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44cb5b	 Bytes: 2
  %loadMem_44cb5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb5b = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb5b)
  store %struct.Memory* %call_44cb5b, %struct.Memory** %MEMORY

  ; Code: movq $0x44db40, %rcx	 RIP: 44cb5d	 Bytes: 10
  %loadMem_44cb5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb5d = call %struct.Memory* @routine_movq__0x44db40___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb5d)
  store %struct.Memory* %call_44cb5d, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rsi	 RIP: 44cb67	 Bytes: 8
  %loadMem_44cb67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb67 = call %struct.Memory* @routine_movq_0x722b20___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb67)
  store %struct.Memory* %call_44cb67, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 44cb6f	 Bytes: 4
  %loadMem_44cb6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb6f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb6f)
  store %struct.Memory* %call_44cb6f, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x78(%rbp)	 RIP: 44cb73	 Bytes: 4
  %loadMem_44cb73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb73 = call %struct.Memory* @routine_movq__rdi__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb73)
  store %struct.Memory* %call_44cb73, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 44cb77	 Bytes: 3
  %loadMem_44cb77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb77 = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb77)
  store %struct.Memory* %call_44cb77, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rsi	 RIP: 44cb7a	 Bytes: 4
  %loadMem_44cb7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb7a = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb7a)
  store %struct.Memory* %call_44cb7a, %struct.Memory** %MEMORY

  ; Code: callq .qsort_plt	 RIP: 44cb7e	 Bytes: 5
  %loadMem1_44cb7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44cb7e = call %struct.Memory* @routine_callq_.qsort_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44cb7e, i64 -310174, i64 5, i64 5)
  store %struct.Memory* %call1_44cb7e, %struct.Memory** %MEMORY

  %loadMem2_44cb7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44cb7e = load i64, i64* %3
  %call2_44cb7e = call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* %0, i64  %loadPC_44cb7e, %struct.Memory* %loadMem2_44cb7e)
  store %struct.Memory* %call2_44cb7e, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 44cb83	 Bytes: 3
  %loadMem_44cb83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb83 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb83)
  store %struct.Memory* %call_44cb83, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 44cb86	 Bytes: 3
  %loadMem_44cb86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb86 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb86)
  store %struct.Memory* %call_44cb86, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 44cb89	 Bytes: 7
  %loadMem_44cb89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb89 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb89)
  store %struct.Memory* %call_44cb89, %struct.Memory** %MEMORY

  ; Code: .L_44cb90:	 RIP: 44cb90	 Bytes: 0
  br label %block_.L_44cb90
block_.L_44cb90:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44cb90	 Bytes: 3
  %loadMem_44cb90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb90 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb90)
  store %struct.Memory* %call_44cb90, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaa8, %eax	 RIP: 44cb93	 Bytes: 7
  %loadMem_44cb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb93 = call %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb93)
  store %struct.Memory* %call_44cb93, %struct.Memory** %MEMORY

  ; Code: jae .L_44cc91	 RIP: 44cb9a	 Bytes: 6
  %loadMem_44cb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cb9a = call %struct.Memory* @routine_jae_.L_44cc91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cb9a, i8* %BRANCH_TAKEN, i64 247, i64 6, i64 6)
  store %struct.Memory* %call_44cb9a, %struct.Memory** %MEMORY

  %loadBr_44cb9a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44cb9a = icmp eq i8 %loadBr_44cb9a, 1
  br i1 %cmpBr_44cb9a, label %block_.L_44cc91, label %block_44cba0

block_44cba0:
  ; Code: movq 0x70ea90, %rax	 RIP: 44cba0	 Bytes: 8
  %loadMem_44cba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cba0 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cba0)
  store %struct.Memory* %call_44cba0, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44cba8	 Bytes: 3
  %loadMem_44cba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cba8 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cba8)
  store %struct.Memory* %call_44cba8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44cbab	 Bytes: 2
  %loadMem_44cbab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbab = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbab)
  store %struct.Memory* %call_44cbab, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44cbad	 Bytes: 4
  %loadMem_44cbad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbad = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbad)
  store %struct.Memory* %call_44cbad, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, (%rax)	 RIP: 44cbb1	 Bytes: 3
  %loadMem_44cbb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbb1 = call %struct.Memory* @routine_cmpl__0x3____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbb1)
  store %struct.Memory* %call_44cbb1, %struct.Memory** %MEMORY

  ; Code: jne .L_44cc7e	 RIP: 44cbb4	 Bytes: 6
  %loadMem_44cbb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbb4 = call %struct.Memory* @routine_jne_.L_44cc7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbb4, i8* %BRANCH_TAKEN, i64 202, i64 6, i64 6)
  store %struct.Memory* %call_44cbb4, %struct.Memory** %MEMORY

  %loadBr_44cbb4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44cbb4 = icmp eq i8 %loadBr_44cbb4, 1
  br i1 %cmpBr_44cbb4, label %block_.L_44cc7e, label %block_44cbba

block_44cbba:
  ; Code: movq 0x70ea90, %rax	 RIP: 44cbba	 Bytes: 8
  %loadMem_44cbba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbba = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbba)
  store %struct.Memory* %call_44cbba, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44cbc2	 Bytes: 3
  %loadMem_44cbc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbc2 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbc2)
  store %struct.Memory* %call_44cbc2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44cbc5	 Bytes: 2
  %loadMem_44cbc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbc5 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbc5)
  store %struct.Memory* %call_44cbc5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44cbc7	 Bytes: 4
  %loadMem_44cbc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbc7 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbc7)
  store %struct.Memory* %call_44cbc7, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44cbcb	 Bytes: 4
  %loadMem_44cbcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbcb = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbcb)
  store %struct.Memory* %call_44cbcb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18ec(%rax)	 RIP: 44cbcf	 Bytes: 7
  %loadMem_44cbcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbcf = call %struct.Memory* @routine_cmpl__0x0__0x18ec__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbcf)
  store %struct.Memory* %call_44cbcf, %struct.Memory** %MEMORY

  ; Code: je .L_44cc79	 RIP: 44cbd6	 Bytes: 6
  %loadMem_44cbd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbd6 = call %struct.Memory* @routine_je_.L_44cc79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbd6, i8* %BRANCH_TAKEN, i64 163, i64 6, i64 6)
  store %struct.Memory* %call_44cbd6, %struct.Memory** %MEMORY

  %loadBr_44cbd6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44cbd6 = icmp eq i8 %loadBr_44cbd6, 1
  br i1 %cmpBr_44cbd6, label %block_.L_44cc79, label %block_44cbdc

block_44cbdc:
  ; Code: movq 0x70ea90, %rax	 RIP: 44cbdc	 Bytes: 8
  %loadMem_44cbdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbdc = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbdc)
  store %struct.Memory* %call_44cbdc, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44cbe4	 Bytes: 3
  %loadMem_44cbe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbe4 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbe4)
  store %struct.Memory* %call_44cbe4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44cbe7	 Bytes: 2
  %loadMem_44cbe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbe7 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbe7)
  store %struct.Memory* %call_44cbe7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44cbe9	 Bytes: 4
  %loadMem_44cbe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbe9 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbe9)
  store %struct.Memory* %call_44cbe9, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44cbed	 Bytes: 4
  %loadMem_44cbed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbed = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbed)
  store %struct.Memory* %call_44cbed, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18e8(%rax)	 RIP: 44cbf1	 Bytes: 7
  %loadMem_44cbf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbf1 = call %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbf1)
  store %struct.Memory* %call_44cbf1, %struct.Memory** %MEMORY

  ; Code: jne .L_44cc79	 RIP: 44cbf8	 Bytes: 6
  %loadMem_44cbf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbf8 = call %struct.Memory* @routine_jne_.L_44cc79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbf8, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_44cbf8, %struct.Memory** %MEMORY

  %loadBr_44cbf8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44cbf8 = icmp eq i8 %loadBr_44cbf8, 1
  br i1 %cmpBr_44cbf8, label %block_.L_44cc79, label %block_44cbfe

block_44cbfe:
  ; Code: movq 0x6cb900, %rax	 RIP: 44cbfe	 Bytes: 8
  %loadMem_44cbfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cbfe = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cbfe)
  store %struct.Memory* %call_44cbfe, %struct.Memory** %MEMORY

  ; Code: movl 0x11b08(%rax), %ecx	 RIP: 44cc06	 Bytes: 6
  %loadMem_44cc06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc06 = call %struct.Memory* @routine_movl_0x11b08__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc06)
  store %struct.Memory* %call_44cc06, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 44cc0c	 Bytes: 8
  %loadMem_44cc0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc0c = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc0c)
  store %struct.Memory* %call_44cc0c, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 44cc14	 Bytes: 3
  %loadMem_44cc14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc14 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc14)
  store %struct.Memory* %call_44cc14, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 44cc17	 Bytes: 2
  %loadMem_44cc17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc17 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc17)
  store %struct.Memory* %call_44cc17, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rsi,8), %rax	 RIP: 44cc19	 Bytes: 4
  %loadMem_44cc19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc19 = call %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc19)
  store %struct.Memory* %call_44cc19, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44cc1d	 Bytes: 4
  %loadMem_44cc1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc1d = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc1d)
  store %struct.Memory* %call_44cc1d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %ecx	 RIP: 44cc21	 Bytes: 3
  %loadMem_44cc21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc21 = call %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc21)
  store %struct.Memory* %call_44cc21, %struct.Memory** %MEMORY

  ; Code: jge .L_44cc74	 RIP: 44cc24	 Bytes: 6
  %loadMem_44cc24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc24 = call %struct.Memory* @routine_jge_.L_44cc74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc24, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_44cc24, %struct.Memory** %MEMORY

  %loadBr_44cc24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44cc24 = icmp eq i8 %loadBr_44cc24, 1
  br i1 %cmpBr_44cc24, label %block_.L_44cc74, label %block_44cc2a

block_44cc2a:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 44cc2a	 Bytes: 3
  %loadMem_44cc2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc2a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc2a)
  store %struct.Memory* %call_44cc2a, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 44cc2d	 Bytes: 8
  %loadMem_44cc2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc2d = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc2d)
  store %struct.Memory* %call_44cc2d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 44cc35	 Bytes: 3
  %loadMem_44cc35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc35 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc35)
  store %struct.Memory* %call_44cc35, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 44cc38	 Bytes: 2
  %loadMem_44cc38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc38 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc38)
  store %struct.Memory* %call_44cc38, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 44cc3a	 Bytes: 4
  %loadMem_44cc3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc3a = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc3a)
  store %struct.Memory* %call_44cc3a, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 44cc3e	 Bytes: 4
  %loadMem_44cc3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc3e = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc3e)
  store %struct.Memory* %call_44cc3e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x14(%rcx)	 RIP: 44cc42	 Bytes: 3
  %loadMem_44cc42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc42 = call %struct.Memory* @routine_movl__eax__0x14__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc42)
  store %struct.Memory* %call_44cc42, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 44cc45	 Bytes: 8
  %loadMem_44cc45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc45 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc45)
  store %struct.Memory* %call_44cc45, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44cc4d	 Bytes: 3
  %loadMem_44cc4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc4d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc4d)
  store %struct.Memory* %call_44cc4d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44cc50	 Bytes: 2
  %loadMem_44cc50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc50 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc50)
  store %struct.Memory* %call_44cc50, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 44cc52	 Bytes: 4
  %loadMem_44cc52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc52 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc52)
  store %struct.Memory* %call_44cc52, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 44cc56	 Bytes: 4
  %loadMem_44cc56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc56 = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc56)
  store %struct.Memory* %call_44cc56, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rsi	 RIP: 44cc5a	 Bytes: 8
  %loadMem_44cc5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc5a = call %struct.Memory* @routine_movq_0x722b20___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc5a)
  store %struct.Memory* %call_44cc5a, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 44cc62	 Bytes: 3
  %loadMem_44cc62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc62 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc62)
  store %struct.Memory* %call_44cc62, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44cc65	 Bytes: 2
  %loadMem_44cc65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc65 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc65)
  store %struct.Memory* %call_44cc65, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 44cc67	 Bytes: 3
  %loadMem_44cc67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc67 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc67)
  store %struct.Memory* %call_44cc67, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x24(%rbp)	 RIP: 44cc6a	 Bytes: 3
  %loadMem_44cc6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc6a = call %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc6a)
  store %struct.Memory* %call_44cc6a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 44cc6d	 Bytes: 3
  %loadMem_44cc6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc6d = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc6d)
  store %struct.Memory* %call_44cc6d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, (%rsi,%rdi,8)	 RIP: 44cc70	 Bytes: 4
  %loadMem_44cc70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc70 = call %struct.Memory* @routine_movq__rcx____rsi__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc70)
  store %struct.Memory* %call_44cc70, %struct.Memory** %MEMORY

  ; Code: .L_44cc74:	 RIP: 44cc74	 Bytes: 0
  br label %block_.L_44cc74
block_.L_44cc74:

  ; Code: jmpq .L_44cc79	 RIP: 44cc74	 Bytes: 5
  %loadMem_44cc74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc74 = call %struct.Memory* @routine_jmpq_.L_44cc79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc74, i64 5, i64 5)
  store %struct.Memory* %call_44cc74, %struct.Memory** %MEMORY

  br label %block_.L_44cc79

  ; Code: .L_44cc79:	 RIP: 44cc79	 Bytes: 0
block_.L_44cc79:

  ; Code: jmpq .L_44cc7e	 RIP: 44cc79	 Bytes: 5
  %loadMem_44cc79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc79 = call %struct.Memory* @routine_jmpq_.L_44cc7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc79, i64 5, i64 5)
  store %struct.Memory* %call_44cc79, %struct.Memory** %MEMORY

  br label %block_.L_44cc7e

  ; Code: .L_44cc7e:	 RIP: 44cc7e	 Bytes: 0
block_.L_44cc7e:

  ; Code: jmpq .L_44cc83	 RIP: 44cc7e	 Bytes: 5
  %loadMem_44cc7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc7e = call %struct.Memory* @routine_jmpq_.L_44cc83(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc7e, i64 5, i64 5)
  store %struct.Memory* %call_44cc7e, %struct.Memory** %MEMORY

  br label %block_.L_44cc83

  ; Code: .L_44cc83:	 RIP: 44cc83	 Bytes: 0
block_.L_44cc83:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44cc83	 Bytes: 3
  %loadMem_44cc83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc83 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc83)
  store %struct.Memory* %call_44cc83, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44cc86	 Bytes: 3
  %loadMem_44cc86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc86 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc86)
  store %struct.Memory* %call_44cc86, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44cc89	 Bytes: 3
  %loadMem_44cc89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc89 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc89)
  store %struct.Memory* %call_44cc89, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44cb90	 RIP: 44cc8c	 Bytes: 5
  %loadMem_44cc8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc8c = call %struct.Memory* @routine_jmpq_.L_44cb90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc8c, i64 -252, i64 5)
  store %struct.Memory* %call_44cc8c, %struct.Memory** %MEMORY

  br label %block_.L_44cb90

  ; Code: .L_44cc91:	 RIP: 44cc91	 Bytes: 0
block_.L_44cc91:

  ; Code: movl $0x8, %eax	 RIP: 44cc91	 Bytes: 5
  %loadMem_44cc91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc91 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc91)
  store %struct.Memory* %call_44cc91, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44cc96	 Bytes: 2
  %loadMem_44cc96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc96 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc96)
  store %struct.Memory* %call_44cc96, %struct.Memory** %MEMORY

  ; Code: movq $0x44dbb0, %rcx	 RIP: 44cc98	 Bytes: 10
  %loadMem_44cc98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cc98 = call %struct.Memory* @routine_movq__0x44dbb0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cc98)
  store %struct.Memory* %call_44cc98, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rsi	 RIP: 44cca2	 Bytes: 8
  %loadMem_44cca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cca2 = call %struct.Memory* @routine_movq_0x722b20___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cca2)
  store %struct.Memory* %call_44cca2, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 44ccaa	 Bytes: 4
  %loadMem_44ccaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccaa = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccaa)
  store %struct.Memory* %call_44ccaa, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdi	 RIP: 44ccae	 Bytes: 4
  %loadMem_44ccae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccae = call %struct.Memory* @routine_shlq__0x3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccae)
  store %struct.Memory* %call_44ccae, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 44ccb2	 Bytes: 3
  %loadMem_44ccb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccb2 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccb2)
  store %struct.Memory* %call_44ccb2, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 44ccb5	 Bytes: 3
  %loadMem_44ccb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccb5 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccb5)
  store %struct.Memory* %call_44ccb5, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %eax	 RIP: 44ccb8	 Bytes: 3
  %loadMem_44ccb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccb8 = call %struct.Memory* @routine_subl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccb8)
  store %struct.Memory* %call_44ccb8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 44ccbb	 Bytes: 3
  %loadMem_44ccbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccbb = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccbb)
  store %struct.Memory* %call_44ccbb, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x80(%rbp)	 RIP: 44ccbe	 Bytes: 4
  %loadMem_44ccbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccbe = call %struct.Memory* @routine_movq__rdi__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccbe)
  store %struct.Memory* %call_44ccbe, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 44ccc2	 Bytes: 3
  %loadMem_44ccc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccc2 = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccc2)
  store %struct.Memory* %call_44ccc2, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rsi	 RIP: 44ccc5	 Bytes: 4
  %loadMem_44ccc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccc5 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccc5)
  store %struct.Memory* %call_44ccc5, %struct.Memory** %MEMORY

  ; Code: callq .qsort_plt	 RIP: 44ccc9	 Bytes: 5
  %loadMem1_44ccc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ccc9 = call %struct.Memory* @routine_callq_.qsort_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ccc9, i64 -310505, i64 5, i64 5)
  store %struct.Memory* %call1_44ccc9, %struct.Memory** %MEMORY

  %loadMem2_44ccc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ccc9 = load i64, i64* %3
  %call2_44ccc9 = call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* %0, i64  %loadPC_44ccc9, %struct.Memory* %loadMem2_44ccc9)
  store %struct.Memory* %call2_44ccc9, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 44ccce	 Bytes: 7
  %loadMem_44ccce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccce = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccce)
  store %struct.Memory* %call_44ccce, %struct.Memory** %MEMORY

  ; Code: .L_44ccd5:	 RIP: 44ccd5	 Bytes: 0
  br label %block_.L_44ccd5
block_.L_44ccd5:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44ccd5	 Bytes: 3
  %loadMem_44ccd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccd5 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccd5)
  store %struct.Memory* %call_44ccd5, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %eax	 RIP: 44ccd8	 Bytes: 3
  %loadMem_44ccd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccd8 = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccd8)
  store %struct.Memory* %call_44ccd8, %struct.Memory** %MEMORY

  ; Code: jge .L_44cd17	 RIP: 44ccdb	 Bytes: 6
  %loadMem_44ccdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccdb = call %struct.Memory* @routine_jge_.L_44cd17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccdb, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_44ccdb, %struct.Memory** %MEMORY

  %loadBr_44ccdb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ccdb = icmp eq i8 %loadBr_44ccdb, 1
  br i1 %cmpBr_44ccdb, label %block_.L_44cd17, label %block_44cce1

block_44cce1:
  ; Code: movq 0x722b20, %rax	 RIP: 44cce1	 Bytes: 8
  %loadMem_44cce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cce1 = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cce1)
  store %struct.Memory* %call_44cce1, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44cce9	 Bytes: 4
  %loadMem_44cce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cce9 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cce9)
  store %struct.Memory* %call_44cce9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44cced	 Bytes: 4
  %loadMem_44cced = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cced = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cced)
  store %struct.Memory* %call_44cced, %struct.Memory** %MEMORY

  ; Code: movq 0x722b28, %rcx	 RIP: 44ccf1	 Bytes: 8
  %loadMem_44ccf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccf1 = call %struct.Memory* @routine_movq_0x722b28___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccf1)
  store %struct.Memory* %call_44ccf1, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 44ccf9	 Bytes: 3
  %loadMem_44ccf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccf9 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccf9)
  store %struct.Memory* %call_44ccf9, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %edx	 RIP: 44ccfc	 Bytes: 3
  %loadMem_44ccfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccfc = call %struct.Memory* @routine_subl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccfc)
  store %struct.Memory* %call_44ccfc, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 44ccff	 Bytes: 3
  %loadMem_44ccff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ccff = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ccff)
  store %struct.Memory* %call_44ccff, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 44cd02	 Bytes: 3
  %loadMem_44cd02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd02 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd02)
  store %struct.Memory* %call_44cd02, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rsi,8)	 RIP: 44cd05	 Bytes: 4
  %loadMem_44cd05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd05 = call %struct.Memory* @routine_movq__rax____rcx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd05)
  store %struct.Memory* %call_44cd05, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44cd09	 Bytes: 3
  %loadMem_44cd09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd09 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd09)
  store %struct.Memory* %call_44cd09, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44cd0c	 Bytes: 3
  %loadMem_44cd0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd0c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd0c)
  store %struct.Memory* %call_44cd0c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44cd0f	 Bytes: 3
  %loadMem_44cd0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd0f = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd0f)
  store %struct.Memory* %call_44cd0f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44ccd5	 RIP: 44cd12	 Bytes: 5
  %loadMem_44cd12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd12 = call %struct.Memory* @routine_jmpq_.L_44ccd5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd12, i64 -61, i64 5)
  store %struct.Memory* %call_44cd12, %struct.Memory** %MEMORY

  br label %block_.L_44ccd5

  ; Code: .L_44cd17:	 RIP: 44cd17	 Bytes: 0
block_.L_44cd17:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 44cd17	 Bytes: 3
  %loadMem_44cd17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd17 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd17)
  store %struct.Memory* %call_44cd17, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44cd1a	 Bytes: 3
  %loadMem_44cd1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd1a = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd1a)
  store %struct.Memory* %call_44cd1a, %struct.Memory** %MEMORY

  ; Code: .L_44cd1d:	 RIP: 44cd1d	 Bytes: 0
  br label %block_.L_44cd1d
block_.L_44cd1d:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44cd1d	 Bytes: 3
  %loadMem_44cd1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd1d = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd1d)
  store %struct.Memory* %call_44cd1d, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %eax	 RIP: 44cd20	 Bytes: 3
  %loadMem_44cd20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd20 = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd20)
  store %struct.Memory* %call_44cd20, %struct.Memory** %MEMORY

  ; Code: jge .L_44cd5c	 RIP: 44cd23	 Bytes: 6
  %loadMem_44cd23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd23 = call %struct.Memory* @routine_jge_.L_44cd5c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd23, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_44cd23, %struct.Memory** %MEMORY

  %loadBr_44cd23 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44cd23 = icmp eq i8 %loadBr_44cd23, 1
  br i1 %cmpBr_44cd23, label %block_.L_44cd5c, label %block_44cd29

block_44cd29:
  ; Code: movq 0x722b20, %rax	 RIP: 44cd29	 Bytes: 8
  %loadMem_44cd29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd29 = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd29)
  store %struct.Memory* %call_44cd29, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44cd31	 Bytes: 4
  %loadMem_44cd31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd31 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd31)
  store %struct.Memory* %call_44cd31, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44cd35	 Bytes: 4
  %loadMem_44cd35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd35 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd35)
  store %struct.Memory* %call_44cd35, %struct.Memory** %MEMORY

  ; Code: movq 0x722b28, %rcx	 RIP: 44cd39	 Bytes: 8
  %loadMem_44cd39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd39 = call %struct.Memory* @routine_movq_0x722b28___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd39)
  store %struct.Memory* %call_44cd39, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 44cd41	 Bytes: 3
  %loadMem_44cd41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd41 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd41)
  store %struct.Memory* %call_44cd41, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %edx	 RIP: 44cd44	 Bytes: 3
  %loadMem_44cd44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd44 = call %struct.Memory* @routine_subl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd44)
  store %struct.Memory* %call_44cd44, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 44cd47	 Bytes: 3
  %loadMem_44cd47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd47 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd47)
  store %struct.Memory* %call_44cd47, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rsi,8)	 RIP: 44cd4a	 Bytes: 4
  %loadMem_44cd4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd4a = call %struct.Memory* @routine_movq__rax____rcx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd4a)
  store %struct.Memory* %call_44cd4a, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44cd4e	 Bytes: 3
  %loadMem_44cd4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd4e = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd4e)
  store %struct.Memory* %call_44cd4e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44cd51	 Bytes: 3
  %loadMem_44cd51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd51 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd51)
  store %struct.Memory* %call_44cd51, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44cd54	 Bytes: 3
  %loadMem_44cd54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd54 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd54)
  store %struct.Memory* %call_44cd54, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44cd1d	 RIP: 44cd57	 Bytes: 5
  %loadMem_44cd57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd57 = call %struct.Memory* @routine_jmpq_.L_44cd1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd57, i64 -58, i64 5)
  store %struct.Memory* %call_44cd57, %struct.Memory** %MEMORY

  br label %block_.L_44cd1d

  ; Code: .L_44cd5c:	 RIP: 44cd5c	 Bytes: 0
block_.L_44cd5c:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 44cd5c	 Bytes: 3
  %loadMem_44cd5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd5c = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd5c)
  store %struct.Memory* %call_44cd5c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x7247b4	 RIP: 44cd5f	 Bytes: 7
  %loadMem_44cd5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd5f = call %struct.Memory* @routine_movl__eax__0x7247b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd5f)
  store %struct.Memory* %call_44cd5f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x7247b0	 RIP: 44cd66	 Bytes: 7
  %loadMem_44cd66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd66 = call %struct.Memory* @routine_movl__eax__0x7247b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd66)
  store %struct.Memory* %call_44cd66, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 44cd6d	 Bytes: 7
  %loadMem_44cd6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd6d = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd6d)
  store %struct.Memory* %call_44cd6d, %struct.Memory** %MEMORY

  ; Code: .L_44cd74:	 RIP: 44cd74	 Bytes: 0
  br label %block_.L_44cd74
block_.L_44cd74:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44cd74	 Bytes: 3
  %loadMem_44cd74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd74 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd74)
  store %struct.Memory* %call_44cd74, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaac, %eax	 RIP: 44cd77	 Bytes: 7
  %loadMem_44cd77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd77 = call %struct.Memory* @routine_cmpl_0x70eaac___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd77)
  store %struct.Memory* %call_44cd77, %struct.Memory** %MEMORY

  ; Code: jae .L_44ce7d	 RIP: 44cd7e	 Bytes: 6
  %loadMem_44cd7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd7e = call %struct.Memory* @routine_jae_.L_44ce7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd7e, i8* %BRANCH_TAKEN, i64 255, i64 6, i64 6)
  store %struct.Memory* %call_44cd7e, %struct.Memory** %MEMORY

  %loadBr_44cd7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44cd7e = icmp eq i8 %loadBr_44cd7e, 1
  br i1 %cmpBr_44cd7e, label %block_.L_44ce7d, label %block_44cd84

block_44cd84:
  ; Code: movq 0x70ea98, %rax	 RIP: 44cd84	 Bytes: 8
  %loadMem_44cd84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd84 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd84)
  store %struct.Memory* %call_44cd84, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44cd8c	 Bytes: 3
  %loadMem_44cd8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd8c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd8c)
  store %struct.Memory* %call_44cd8c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44cd8f	 Bytes: 2
  %loadMem_44cd8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd8f = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd8f)
  store %struct.Memory* %call_44cd8f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44cd91	 Bytes: 4
  %loadMem_44cd91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd91 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd91)
  store %struct.Memory* %call_44cd91, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, (%rax)	 RIP: 44cd95	 Bytes: 3
  %loadMem_44cd95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd95 = call %struct.Memory* @routine_cmpl__0x3____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd95)
  store %struct.Memory* %call_44cd95, %struct.Memory** %MEMORY

  ; Code: jne .L_44ce6a	 RIP: 44cd98	 Bytes: 6
  %loadMem_44cd98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd98 = call %struct.Memory* @routine_jne_.L_44ce6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd98, i8* %BRANCH_TAKEN, i64 210, i64 6, i64 6)
  store %struct.Memory* %call_44cd98, %struct.Memory** %MEMORY

  %loadBr_44cd98 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44cd98 = icmp eq i8 %loadBr_44cd98, 1
  br i1 %cmpBr_44cd98, label %block_.L_44ce6a, label %block_44cd9e

block_44cd9e:
  ; Code: movq 0x70ea98, %rax	 RIP: 44cd9e	 Bytes: 8
  %loadMem_44cd9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cd9e = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cd9e)
  store %struct.Memory* %call_44cd9e, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44cda6	 Bytes: 3
  %loadMem_44cda6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cda6 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cda6)
  store %struct.Memory* %call_44cda6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44cda9	 Bytes: 2
  %loadMem_44cda9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cda9 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cda9)
  store %struct.Memory* %call_44cda9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44cdab	 Bytes: 4
  %loadMem_44cdab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cdab = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cdab)
  store %struct.Memory* %call_44cdab, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44cdaf	 Bytes: 4
  %loadMem_44cdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cdaf = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cdaf)
  store %struct.Memory* %call_44cdaf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18e8(%rax)	 RIP: 44cdb3	 Bytes: 7
  %loadMem_44cdb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cdb3 = call %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cdb3)
  store %struct.Memory* %call_44cdb3, %struct.Memory** %MEMORY

  ; Code: je .L_44ce65	 RIP: 44cdba	 Bytes: 6
  %loadMem_44cdba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cdba = call %struct.Memory* @routine_je_.L_44ce65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cdba, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_44cdba, %struct.Memory** %MEMORY

  %loadBr_44cdba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44cdba = icmp eq i8 %loadBr_44cdba, 1
  br i1 %cmpBr_44cdba, label %block_.L_44ce65, label %block_44cdc0

block_44cdc0:
  ; Code: movq 0x70ea98, %rax	 RIP: 44cdc0	 Bytes: 8
  %loadMem_44cdc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cdc0 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cdc0)
  store %struct.Memory* %call_44cdc0, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44cdc8	 Bytes: 3
  %loadMem_44cdc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cdc8 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cdc8)
  store %struct.Memory* %call_44cdc8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44cdcb	 Bytes: 2
  %loadMem_44cdcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cdcb = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cdcb)
  store %struct.Memory* %call_44cdcb, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44cdcd	 Bytes: 4
  %loadMem_44cdcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cdcd = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cdcd)
  store %struct.Memory* %call_44cdcd, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44cdd1	 Bytes: 4
  %loadMem_44cdd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cdd1 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cdd1)
  store %struct.Memory* %call_44cdd1, %struct.Memory** %MEMORY

  ; Code: movl 0x18e4(%rax), %ecx	 RIP: 44cdd5	 Bytes: 6
  %loadMem_44cdd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cdd5 = call %struct.Memory* @routine_movl_0x18e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cdd5)
  store %struct.Memory* %call_44cdd5, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea98, %rax	 RIP: 44cddb	 Bytes: 8
  %loadMem_44cddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cddb = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cddb)
  store %struct.Memory* %call_44cddb, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44cde3	 Bytes: 3
  %loadMem_44cde3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cde3 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cde3)
  store %struct.Memory* %call_44cde3, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44cde6	 Bytes: 2
  %loadMem_44cde6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cde6 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cde6)
  store %struct.Memory* %call_44cde6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44cde8	 Bytes: 4
  %loadMem_44cde8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cde8 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cde8)
  store %struct.Memory* %call_44cde8, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44cdec	 Bytes: 4
  %loadMem_44cdec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cdec = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cdec)
  store %struct.Memory* %call_44cdec, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18e0(%rax)	 RIP: 44cdf0	 Bytes: 6
  %loadMem_44cdf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cdf0 = call %struct.Memory* @routine_movl__ecx__0x18e0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cdf0)
  store %struct.Memory* %call_44cdf0, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44cdf6	 Bytes: 3
  %loadMem_44cdf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cdf6 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cdf6)
  store %struct.Memory* %call_44cdf6, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea98, %rax	 RIP: 44cdf9	 Bytes: 8
  %loadMem_44cdf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cdf9 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cdf9)
  store %struct.Memory* %call_44cdf9, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44ce01	 Bytes: 3
  %loadMem_44ce01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce01 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce01)
  store %struct.Memory* %call_44ce01, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44ce04	 Bytes: 2
  %loadMem_44ce04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce04 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce04)
  store %struct.Memory* %call_44ce04, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44ce06	 Bytes: 4
  %loadMem_44ce06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce06 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce06)
  store %struct.Memory* %call_44ce06, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44ce0a	 Bytes: 4
  %loadMem_44ce0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce0a = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce0a)
  store %struct.Memory* %call_44ce0a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x14(%rax)	 RIP: 44ce0e	 Bytes: 3
  %loadMem_44ce0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce0e = call %struct.Memory* @routine_movl__ecx__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce0e)
  store %struct.Memory* %call_44ce0e, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea98, %rax	 RIP: 44ce11	 Bytes: 8
  %loadMem_44ce11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce11 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce11)
  store %struct.Memory* %call_44ce11, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44ce19	 Bytes: 3
  %loadMem_44ce19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce19 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce19)
  store %struct.Memory* %call_44ce19, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44ce1c	 Bytes: 2
  %loadMem_44ce1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce1c = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce1c)
  store %struct.Memory* %call_44ce1c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44ce1e	 Bytes: 4
  %loadMem_44ce1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce1e = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce1e)
  store %struct.Memory* %call_44ce1e, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44ce22	 Bytes: 4
  %loadMem_44ce22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce22 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce22)
  store %struct.Memory* %call_44ce22, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rdx	 RIP: 44ce26	 Bytes: 8
  %loadMem_44ce26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce26 = call %struct.Memory* @routine_movq_0x722b20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce26)
  store %struct.Memory* %call_44ce26, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 44ce2e	 Bytes: 4
  %loadMem_44ce2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce2e = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce2e)
  store %struct.Memory* %call_44ce2e, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx,%rdi,8)	 RIP: 44ce32	 Bytes: 4
  %loadMem_44ce32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce32 = call %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce32)
  store %struct.Memory* %call_44ce32, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea98, %rax	 RIP: 44ce36	 Bytes: 8
  %loadMem_44ce36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce36 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce36)
  store %struct.Memory* %call_44ce36, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44ce3e	 Bytes: 3
  %loadMem_44ce3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce3e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce3e)
  store %struct.Memory* %call_44ce3e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44ce41	 Bytes: 2
  %loadMem_44ce41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce41 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce41)
  store %struct.Memory* %call_44ce41, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44ce43	 Bytes: 4
  %loadMem_44ce43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce43 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce43)
  store %struct.Memory* %call_44ce43, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 44ce47	 Bytes: 4
  %loadMem_44ce47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce47 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce47)
  store %struct.Memory* %call_44ce47, %struct.Memory** %MEMORY

  ; Code: movq 0x722b28, %rdx	 RIP: 44ce4b	 Bytes: 8
  %loadMem_44ce4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce4b = call %struct.Memory* @routine_movq_0x722b28___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce4b)
  store %struct.Memory* %call_44ce4b, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44ce53	 Bytes: 3
  %loadMem_44ce53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce53 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce53)
  store %struct.Memory* %call_44ce53, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 44ce56	 Bytes: 2
  %loadMem_44ce56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce56 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce56)
  store %struct.Memory* %call_44ce56, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 44ce58	 Bytes: 3
  %loadMem_44ce58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce58 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce58)
  store %struct.Memory* %call_44ce58, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x24(%rbp)	 RIP: 44ce5b	 Bytes: 3
  %loadMem_44ce5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce5b = call %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce5b)
  store %struct.Memory* %call_44ce5b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdi	 RIP: 44ce5e	 Bytes: 3
  %loadMem_44ce5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce5e = call %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce5e)
  store %struct.Memory* %call_44ce5e, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx,%rdi,8)	 RIP: 44ce61	 Bytes: 4
  %loadMem_44ce61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce61 = call %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce61)
  store %struct.Memory* %call_44ce61, %struct.Memory** %MEMORY

  ; Code: .L_44ce65:	 RIP: 44ce65	 Bytes: 0
  br label %block_.L_44ce65
block_.L_44ce65:

  ; Code: jmpq .L_44ce6a	 RIP: 44ce65	 Bytes: 5
  %loadMem_44ce65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce65 = call %struct.Memory* @routine_jmpq_.L_44ce6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce65, i64 5, i64 5)
  store %struct.Memory* %call_44ce65, %struct.Memory** %MEMORY

  br label %block_.L_44ce6a

  ; Code: .L_44ce6a:	 RIP: 44ce6a	 Bytes: 0
block_.L_44ce6a:

  ; Code: jmpq .L_44ce6f	 RIP: 44ce6a	 Bytes: 5
  %loadMem_44ce6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce6a = call %struct.Memory* @routine_jmpq_.L_44ce6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce6a, i64 5, i64 5)
  store %struct.Memory* %call_44ce6a, %struct.Memory** %MEMORY

  br label %block_.L_44ce6f

  ; Code: .L_44ce6f:	 RIP: 44ce6f	 Bytes: 0
block_.L_44ce6f:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44ce6f	 Bytes: 3
  %loadMem_44ce6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce6f = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce6f)
  store %struct.Memory* %call_44ce6f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44ce72	 Bytes: 3
  %loadMem_44ce72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce72 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce72)
  store %struct.Memory* %call_44ce72, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44ce75	 Bytes: 3
  %loadMem_44ce75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce75 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce75)
  store %struct.Memory* %call_44ce75, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44cd74	 RIP: 44ce78	 Bytes: 5
  %loadMem_44ce78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce78 = call %struct.Memory* @routine_jmpq_.L_44cd74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce78, i64 -260, i64 5)
  store %struct.Memory* %call_44ce78, %struct.Memory** %MEMORY

  br label %block_.L_44cd74

  ; Code: .L_44ce7d:	 RIP: 44ce7d	 Bytes: 0
block_.L_44ce7d:

  ; Code: movl $0x8, %eax	 RIP: 44ce7d	 Bytes: 5
  %loadMem_44ce7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce7d = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce7d)
  store %struct.Memory* %call_44ce7d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44ce82	 Bytes: 2
  %loadMem_44ce82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce82 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce82)
  store %struct.Memory* %call_44ce82, %struct.Memory** %MEMORY

  ; Code: movq $0x44d690, %rcx	 RIP: 44ce84	 Bytes: 10
  %loadMem_44ce84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce84 = call %struct.Memory* @routine_movq__0x44d690___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce84)
  store %struct.Memory* %call_44ce84, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rsi	 RIP: 44ce8e	 Bytes: 8
  %loadMem_44ce8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce8e = call %struct.Memory* @routine_movq_0x722b20___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce8e)
  store %struct.Memory* %call_44ce8e, %struct.Memory** %MEMORY

  ; Code: movslq 0x7247b0, %rdi	 RIP: 44ce96	 Bytes: 8
  %loadMem_44ce96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce96 = call %struct.Memory* @routine_movslq_0x7247b0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce96)
  store %struct.Memory* %call_44ce96, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdi	 RIP: 44ce9e	 Bytes: 4
  %loadMem_44ce9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ce9e = call %struct.Memory* @routine_shlq__0x3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ce9e)
  store %struct.Memory* %call_44ce9e, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 44cea2	 Bytes: 3
  %loadMem_44cea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cea2 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cea2)
  store %struct.Memory* %call_44cea2, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 44cea5	 Bytes: 3
  %loadMem_44cea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cea5 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cea5)
  store %struct.Memory* %call_44cea5, %struct.Memory** %MEMORY

  ; Code: subl 0x7247b0, %eax	 RIP: 44cea8	 Bytes: 7
  %loadMem_44cea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cea8 = call %struct.Memory* @routine_subl_0x7247b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cea8)
  store %struct.Memory* %call_44cea8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 44ceaf	 Bytes: 3
  %loadMem_44ceaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ceaf = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ceaf)
  store %struct.Memory* %call_44ceaf, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x88(%rbp)	 RIP: 44ceb2	 Bytes: 7
  %loadMem_44ceb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ceb2 = call %struct.Memory* @routine_movq__rdi__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ceb2)
  store %struct.Memory* %call_44ceb2, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 44ceb9	 Bytes: 3
  %loadMem_44ceb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ceb9 = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ceb9)
  store %struct.Memory* %call_44ceb9, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rsi	 RIP: 44cebc	 Bytes: 7
  %loadMem_44cebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cebc = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cebc)
  store %struct.Memory* %call_44cebc, %struct.Memory** %MEMORY

  ; Code: callq .qsort_plt	 RIP: 44cec3	 Bytes: 5
  %loadMem1_44cec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44cec3 = call %struct.Memory* @routine_callq_.qsort_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44cec3, i64 -311011, i64 5, i64 5)
  store %struct.Memory* %call1_44cec3, %struct.Memory** %MEMORY

  %loadMem2_44cec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44cec3 = load i64, i64* %3
  %call2_44cec3 = call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* %0, i64  %loadPC_44cec3, %struct.Memory* %loadMem2_44cec3)
  store %struct.Memory* %call2_44cec3, %struct.Memory** %MEMORY

  ; Code: movl $0x8, %eax	 RIP: 44cec8	 Bytes: 5
  %loadMem_44cec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cec8 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cec8)
  store %struct.Memory* %call_44cec8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44cecd	 Bytes: 2
  %loadMem_44cecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cecd = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cecd)
  store %struct.Memory* %call_44cecd, %struct.Memory** %MEMORY

  ; Code: movq $0x44d690, %rcx	 RIP: 44cecf	 Bytes: 10
  %loadMem_44cecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cecf = call %struct.Memory* @routine_movq__0x44d690___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cecf)
  store %struct.Memory* %call_44cecf, %struct.Memory** %MEMORY

  ; Code: movq 0x722b28, %rsi	 RIP: 44ced9	 Bytes: 8
  %loadMem_44ced9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ced9 = call %struct.Memory* @routine_movq_0x722b28___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ced9)
  store %struct.Memory* %call_44ced9, %struct.Memory** %MEMORY

  ; Code: movslq 0x7247b0, %rdi	 RIP: 44cee1	 Bytes: 8
  %loadMem_44cee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cee1 = call %struct.Memory* @routine_movslq_0x7247b0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cee1)
  store %struct.Memory* %call_44cee1, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdi	 RIP: 44cee9	 Bytes: 4
  %loadMem_44cee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cee9 = call %struct.Memory* @routine_shlq__0x3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cee9)
  store %struct.Memory* %call_44cee9, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 44ceed	 Bytes: 3
  %loadMem_44ceed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ceed = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ceed)
  store %struct.Memory* %call_44ceed, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 44cef0	 Bytes: 3
  %loadMem_44cef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cef0 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cef0)
  store %struct.Memory* %call_44cef0, %struct.Memory** %MEMORY

  ; Code: subl 0x7247b0, %eax	 RIP: 44cef3	 Bytes: 7
  %loadMem_44cef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cef3 = call %struct.Memory* @routine_subl_0x7247b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cef3)
  store %struct.Memory* %call_44cef3, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 44cefa	 Bytes: 3
  %loadMem_44cefa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cefa = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cefa)
  store %struct.Memory* %call_44cefa, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x90(%rbp)	 RIP: 44cefd	 Bytes: 7
  %loadMem_44cefd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cefd = call %struct.Memory* @routine_movq__rdi__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cefd)
  store %struct.Memory* %call_44cefd, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 44cf04	 Bytes: 3
  %loadMem_44cf04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf04 = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf04)
  store %struct.Memory* %call_44cf04, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rsi	 RIP: 44cf07	 Bytes: 7
  %loadMem_44cf07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf07 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf07)
  store %struct.Memory* %call_44cf07, %struct.Memory** %MEMORY

  ; Code: callq .qsort_plt	 RIP: 44cf0e	 Bytes: 5
  %loadMem1_44cf0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44cf0e = call %struct.Memory* @routine_callq_.qsort_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44cf0e, i64 -311086, i64 5, i64 5)
  store %struct.Memory* %call1_44cf0e, %struct.Memory** %MEMORY

  %loadMem2_44cf0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44cf0e = load i64, i64* %3
  %call2_44cf0e = call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* %0, i64  %loadPC_44cf0e, %struct.Memory* %loadMem2_44cf0e)
  store %struct.Memory* %call2_44cf0e, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 44cf13	 Bytes: 3
  %loadMem_44cf13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf13 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf13)
  store %struct.Memory* %call_44cf13, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x7247b4	 RIP: 44cf16	 Bytes: 7
  %loadMem_44cf16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf16 = call %struct.Memory* @routine_movl__eax__0x7247b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf16)
  store %struct.Memory* %call_44cf16, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x7247b0	 RIP: 44cf1d	 Bytes: 7
  %loadMem_44cf1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf1d = call %struct.Memory* @routine_movl__eax__0x7247b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf1d)
  store %struct.Memory* %call_44cf1d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44d435	 RIP: 44cf24	 Bytes: 5
  %loadMem_44cf24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf24 = call %struct.Memory* @routine_jmpq_.L_44d435(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf24, i64 1297, i64 5)
  store %struct.Memory* %call_44cf24, %struct.Memory** %MEMORY

  br label %block_.L_44d435

  ; Code: .L_44cf29:	 RIP: 44cf29	 Bytes: 0
block_.L_44cf29:

  ; Code: movl $0x8, %eax	 RIP: 44cf29	 Bytes: 5
  %loadMem_44cf29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf29 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf29)
  store %struct.Memory* %call_44cf29, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44cf2e	 Bytes: 2
  %loadMem_44cf2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf2e = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf2e)
  store %struct.Memory* %call_44cf2e, %struct.Memory** %MEMORY

  ; Code: movl 0x70eaa0, %eax	 RIP: 44cf30	 Bytes: 7
  %loadMem_44cf30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf30 = call %struct.Memory* @routine_movl_0x70eaa0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf30)
  store %struct.Memory* %call_44cf30, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 44cf37	 Bytes: 2
  %loadMem_44cf37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf37 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf37)
  store %struct.Memory* %call_44cf37, %struct.Memory** %MEMORY

  ; Code: callq .calloc_plt	 RIP: 44cf39	 Bytes: 5
  %loadMem1_44cf39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44cf39 = call %struct.Memory* @routine_callq_.calloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44cf39, i64 -310873, i64 5, i64 5)
  store %struct.Memory* %call1_44cf39, %struct.Memory** %MEMORY

  %loadMem2_44cf39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44cf39 = load i64, i64* %3
  %call2_44cf39 = call %struct.Memory* @ext_calloc(%struct.State* %0, i64  %loadPC_44cf39, %struct.Memory* %loadMem2_44cf39)
  store %struct.Memory* %call2_44cf39, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 44cf3e	 Bytes: 2
  %loadMem_44cf3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf3e = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf3e)
  store %struct.Memory* %call_44cf3e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 44cf40	 Bytes: 2
  %loadMem_44cf40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf40 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf40)
  store %struct.Memory* %call_44cf40, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 44cf42	 Bytes: 4
  %loadMem_44cf42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf42 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf42)
  store %struct.Memory* %call_44cf42, %struct.Memory** %MEMORY

  ; Code: cmpq -0x38(%rbp), %rsi	 RIP: 44cf46	 Bytes: 4
  %loadMem_44cf46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf46 = call %struct.Memory* @routine_cmpq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf46)
  store %struct.Memory* %call_44cf46, %struct.Memory** %MEMORY

  ; Code: jne .L_44cf5f	 RIP: 44cf4a	 Bytes: 6
  %loadMem_44cf4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf4a = call %struct.Memory* @routine_jne_.L_44cf5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf4a, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_44cf4a, %struct.Memory** %MEMORY

  %loadBr_44cf4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44cf4a = icmp eq i8 %loadBr_44cf4a, 1
  br i1 %cmpBr_44cf4a, label %block_.L_44cf5f, label %block_44cf50

block_44cf50:
  ; Code: movq $0x4c1921, %rdi	 RIP: 44cf50	 Bytes: 10
  %loadMem_44cf50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf50 = call %struct.Memory* @routine_movq__0x4c1921___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf50)
  store %struct.Memory* %call_44cf50, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 44cf5a	 Bytes: 5
  %loadMem1_44cf5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44cf5a = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44cf5a, i64 50326, i64 5, i64 5)
  store %struct.Memory* %call1_44cf5a, %struct.Memory** %MEMORY

  %loadMem2_44cf5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44cf5a = load i64, i64* %3
  %call2_44cf5a = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_44cf5a, %struct.Memory* %loadMem2_44cf5a)
  store %struct.Memory* %call2_44cf5a, %struct.Memory** %MEMORY

  ; Code: .L_44cf5f:	 RIP: 44cf5f	 Bytes: 0
  br label %block_.L_44cf5f
block_.L_44cf5f:

  ; Code: movl $0x8, %eax	 RIP: 44cf5f	 Bytes: 5
  %loadMem_44cf5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf5f = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf5f)
  store %struct.Memory* %call_44cf5f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44cf64	 Bytes: 2
  %loadMem_44cf64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf64 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf64)
  store %struct.Memory* %call_44cf64, %struct.Memory** %MEMORY

  ; Code: movl 0x70eaa0, %eax	 RIP: 44cf66	 Bytes: 7
  %loadMem_44cf66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf66 = call %struct.Memory* @routine_movl_0x70eaa0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf66)
  store %struct.Memory* %call_44cf66, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 44cf6d	 Bytes: 2
  %loadMem_44cf6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf6d = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf6d)
  store %struct.Memory* %call_44cf6d, %struct.Memory** %MEMORY

  ; Code: callq .calloc_plt	 RIP: 44cf6f	 Bytes: 5
  %loadMem1_44cf6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44cf6f = call %struct.Memory* @routine_callq_.calloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44cf6f, i64 -310927, i64 5, i64 5)
  store %struct.Memory* %call1_44cf6f, %struct.Memory** %MEMORY

  %loadMem2_44cf6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44cf6f = load i64, i64* %3
  %call2_44cf6f = call %struct.Memory* @ext_calloc(%struct.State* %0, i64  %loadPC_44cf6f, %struct.Memory* %loadMem2_44cf6f)
  store %struct.Memory* %call2_44cf6f, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 44cf74	 Bytes: 2
  %loadMem_44cf74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf74 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf74)
  store %struct.Memory* %call_44cf74, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 44cf76	 Bytes: 2
  %loadMem_44cf76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf76 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf76)
  store %struct.Memory* %call_44cf76, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 44cf78	 Bytes: 4
  %loadMem_44cf78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf78 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf78)
  store %struct.Memory* %call_44cf78, %struct.Memory** %MEMORY

  ; Code: cmpq -0x40(%rbp), %rsi	 RIP: 44cf7c	 Bytes: 4
  %loadMem_44cf7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf7c = call %struct.Memory* @routine_cmpq_MINUS0x40__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf7c)
  store %struct.Memory* %call_44cf7c, %struct.Memory** %MEMORY

  ; Code: jne .L_44cf95	 RIP: 44cf80	 Bytes: 6
  %loadMem_44cf80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf80 = call %struct.Memory* @routine_jne_.L_44cf95(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf80, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_44cf80, %struct.Memory** %MEMORY

  %loadBr_44cf80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44cf80 = icmp eq i8 %loadBr_44cf80, 1
  br i1 %cmpBr_44cf80, label %block_.L_44cf95, label %block_44cf86

block_44cf86:
  ; Code: movq $0x4c194c, %rdi	 RIP: 44cf86	 Bytes: 10
  %loadMem_44cf86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf86 = call %struct.Memory* @routine_movq__0x4c194c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf86)
  store %struct.Memory* %call_44cf86, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 44cf90	 Bytes: 5
  %loadMem1_44cf90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44cf90 = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44cf90, i64 50272, i64 5, i64 5)
  store %struct.Memory* %call1_44cf90, %struct.Memory** %MEMORY

  %loadMem2_44cf90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44cf90 = load i64, i64* %3
  %call2_44cf90 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_44cf90, %struct.Memory* %loadMem2_44cf90)
  store %struct.Memory* %call2_44cf90, %struct.Memory** %MEMORY

  ; Code: .L_44cf95:	 RIP: 44cf95	 Bytes: 0
  br label %block_.L_44cf95
block_.L_44cf95:

  ; Code: movl $0x8, %eax	 RIP: 44cf95	 Bytes: 5
  %loadMem_44cf95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf95 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf95)
  store %struct.Memory* %call_44cf95, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 44cf9a	 Bytes: 2
  %loadMem_44cf9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf9a = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf9a)
  store %struct.Memory* %call_44cf9a, %struct.Memory** %MEMORY

  ; Code: movl 0x70eaa0, %eax	 RIP: 44cf9c	 Bytes: 7
  %loadMem_44cf9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cf9c = call %struct.Memory* @routine_movl_0x70eaa0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cf9c)
  store %struct.Memory* %call_44cf9c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 44cfa3	 Bytes: 2
  %loadMem_44cfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cfa3 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cfa3)
  store %struct.Memory* %call_44cfa3, %struct.Memory** %MEMORY

  ; Code: callq .calloc_plt	 RIP: 44cfa5	 Bytes: 5
  %loadMem1_44cfa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44cfa5 = call %struct.Memory* @routine_callq_.calloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44cfa5, i64 -310981, i64 5, i64 5)
  store %struct.Memory* %call1_44cfa5, %struct.Memory** %MEMORY

  %loadMem2_44cfa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44cfa5 = load i64, i64* %3
  %call2_44cfa5 = call %struct.Memory* @ext_calloc(%struct.State* %0, i64  %loadPC_44cfa5, %struct.Memory* %loadMem2_44cfa5)
  store %struct.Memory* %call2_44cfa5, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 44cfaa	 Bytes: 2
  %loadMem_44cfaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cfaa = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cfaa)
  store %struct.Memory* %call_44cfaa, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 44cfac	 Bytes: 2
  %loadMem_44cfac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cfac = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cfac)
  store %struct.Memory* %call_44cfac, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 44cfae	 Bytes: 4
  %loadMem_44cfae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cfae = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cfae)
  store %struct.Memory* %call_44cfae, %struct.Memory** %MEMORY

  ; Code: cmpq -0x48(%rbp), %rsi	 RIP: 44cfb2	 Bytes: 4
  %loadMem_44cfb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cfb2 = call %struct.Memory* @routine_cmpq_MINUS0x48__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cfb2)
  store %struct.Memory* %call_44cfb2, %struct.Memory** %MEMORY

  ; Code: jne .L_44cfcb	 RIP: 44cfb6	 Bytes: 6
  %loadMem_44cfb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cfb6 = call %struct.Memory* @routine_jne_.L_44cfcb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cfb6, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_44cfb6, %struct.Memory** %MEMORY

  %loadBr_44cfb6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44cfb6 = icmp eq i8 %loadBr_44cfb6, 1
  br i1 %cmpBr_44cfb6, label %block_.L_44cfcb, label %block_44cfbc

block_44cfbc:
  ; Code: movq $0x4c1936, %rdi	 RIP: 44cfbc	 Bytes: 10
  %loadMem_44cfbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cfbc = call %struct.Memory* @routine_movq__0x4c1936___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cfbc)
  store %struct.Memory* %call_44cfbc, %struct.Memory** %MEMORY

  ; Code: callq .no_mem_exit	 RIP: 44cfc6	 Bytes: 5
  %loadMem1_44cfc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44cfc6 = call %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44cfc6, i64 50218, i64 5, i64 5)
  store %struct.Memory* %call1_44cfc6, %struct.Memory** %MEMORY

  %loadMem2_44cfc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44cfc6 = load i64, i64* %3
  %call2_44cfc6 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64  %loadPC_44cfc6, %struct.Memory* %loadMem2_44cfc6)
  store %struct.Memory* %call2_44cfc6, %struct.Memory** %MEMORY

  ; Code: .L_44cfcb:	 RIP: 44cfcb	 Bytes: 0
  br label %block_.L_44cfcb
block_.L_44cfcb:

  ; Code: movl $0x0, 0x7247b0	 RIP: 44cfcb	 Bytes: 11
  %loadMem_44cfcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cfcb = call %struct.Memory* @routine_movl__0x0__0x7247b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cfcb)
  store %struct.Memory* %call_44cfcb, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x7247b4	 RIP: 44cfd6	 Bytes: 11
  %loadMem_44cfd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cfd6 = call %struct.Memory* @routine_movl__0x1__0x7247b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cfd6)
  store %struct.Memory* %call_44cfd6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 44cfe1	 Bytes: 7
  %loadMem_44cfe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cfe1 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cfe1)
  store %struct.Memory* %call_44cfe1, %struct.Memory** %MEMORY

  ; Code: .L_44cfe8:	 RIP: 44cfe8	 Bytes: 0
  br label %block_.L_44cfe8
block_.L_44cfe8:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44cfe8	 Bytes: 3
  %loadMem_44cfe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cfe8 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cfe8)
  store %struct.Memory* %call_44cfe8, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaa8, %eax	 RIP: 44cfeb	 Bytes: 7
  %loadMem_44cfeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cfeb = call %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cfeb)
  store %struct.Memory* %call_44cfeb, %struct.Memory** %MEMORY

  ; Code: jae .L_44d079	 RIP: 44cff2	 Bytes: 6
  %loadMem_44cff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cff2 = call %struct.Memory* @routine_jae_.L_44d079(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cff2, i8* %BRANCH_TAKEN, i64 135, i64 6, i64 6)
  store %struct.Memory* %call_44cff2, %struct.Memory** %MEMORY

  %loadBr_44cff2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44cff2 = icmp eq i8 %loadBr_44cff2, 1
  br i1 %cmpBr_44cff2, label %block_.L_44d079, label %block_44cff8

block_44cff8:
  ; Code: movq 0x70ea90, %rax	 RIP: 44cff8	 Bytes: 8
  %loadMem_44cff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44cff8 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44cff8)
  store %struct.Memory* %call_44cff8, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44d000	 Bytes: 3
  %loadMem_44d000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d000 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d000)
  store %struct.Memory* %call_44d000, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44d003	 Bytes: 2
  %loadMem_44d003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d003 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d003)
  store %struct.Memory* %call_44d003, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44d005	 Bytes: 4
  %loadMem_44d005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d005 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d005)
  store %struct.Memory* %call_44d005, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax)	 RIP: 44d009	 Bytes: 3
  %loadMem_44d009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d009 = call %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d009)
  store %struct.Memory* %call_44d009, %struct.Memory** %MEMORY

  ; Code: je .L_44d066	 RIP: 44d00c	 Bytes: 6
  %loadMem_44d00c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d00c = call %struct.Memory* @routine_je_.L_44d066(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d00c, i8* %BRANCH_TAKEN, i64 90, i64 6, i64 6)
  store %struct.Memory* %call_44d00c, %struct.Memory** %MEMORY

  %loadBr_44d00c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d00c = icmp eq i8 %loadBr_44d00c, 1
  br i1 %cmpBr_44d00c, label %block_.L_44d066, label %block_44d012

block_44d012:
  ; Code: movq 0x6cb900, %rax	 RIP: 44d012	 Bytes: 8
  %loadMem_44d012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d012 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d012)
  store %struct.Memory* %call_44d012, %struct.Memory** %MEMORY

  ; Code: movl 0x11b0c(%rax), %ecx	 RIP: 44d01a	 Bytes: 6
  %loadMem_44d01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d01a = call %struct.Memory* @routine_movl_0x11b0c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d01a)
  store %struct.Memory* %call_44d01a, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 44d020	 Bytes: 8
  %loadMem_44d020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d020 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d020)
  store %struct.Memory* %call_44d020, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 44d028	 Bytes: 3
  %loadMem_44d028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d028 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d028)
  store %struct.Memory* %call_44d028, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 44d02b	 Bytes: 2
  %loadMem_44d02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d02b = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d02b)
  store %struct.Memory* %call_44d02b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rsi,8), %rax	 RIP: 44d02d	 Bytes: 4
  %loadMem_44d02d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d02d = call %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d02d)
  store %struct.Memory* %call_44d02d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x24(%rax), %ecx	 RIP: 44d031	 Bytes: 3
  %loadMem_44d031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d031 = call %struct.Memory* @routine_cmpl_0x24__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d031)
  store %struct.Memory* %call_44d031, %struct.Memory** %MEMORY

  ; Code: jl .L_44d061	 RIP: 44d034	 Bytes: 6
  %loadMem_44d034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d034 = call %struct.Memory* @routine_jl_.L_44d061(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d034, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_44d034, %struct.Memory** %MEMORY

  %loadBr_44d034 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d034 = icmp eq i8 %loadBr_44d034, 1
  br i1 %cmpBr_44d034, label %block_.L_44d061, label %block_44d03a

block_44d03a:
  ; Code: movq 0x70ea90, %rax	 RIP: 44d03a	 Bytes: 8
  %loadMem_44d03a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d03a = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d03a)
  store %struct.Memory* %call_44d03a, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44d042	 Bytes: 3
  %loadMem_44d042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d042 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d042)
  store %struct.Memory* %call_44d042, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44d045	 Bytes: 2
  %loadMem_44d045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d045 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d045)
  store %struct.Memory* %call_44d045, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44d047	 Bytes: 4
  %loadMem_44d047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d047 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d047)
  store %struct.Memory* %call_44d047, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 44d04b	 Bytes: 4
  %loadMem_44d04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d04b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d04b)
  store %struct.Memory* %call_44d04b, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44d04f	 Bytes: 3
  %loadMem_44d04f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d04f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d04f)
  store %struct.Memory* %call_44d04f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 44d052	 Bytes: 2
  %loadMem_44d052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d052 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d052)
  store %struct.Memory* %call_44d052, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 44d054	 Bytes: 3
  %loadMem_44d054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d054 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d054)
  store %struct.Memory* %call_44d054, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x24(%rbp)	 RIP: 44d057	 Bytes: 3
  %loadMem_44d057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d057 = call %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d057)
  store %struct.Memory* %call_44d057, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdi	 RIP: 44d05a	 Bytes: 3
  %loadMem_44d05a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d05a = call %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d05a)
  store %struct.Memory* %call_44d05a, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx,%rdi,8)	 RIP: 44d05d	 Bytes: 4
  %loadMem_44d05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d05d = call %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d05d)
  store %struct.Memory* %call_44d05d, %struct.Memory** %MEMORY

  ; Code: .L_44d061:	 RIP: 44d061	 Bytes: 0
  br label %block_.L_44d061
block_.L_44d061:

  ; Code: jmpq .L_44d066	 RIP: 44d061	 Bytes: 5
  %loadMem_44d061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d061 = call %struct.Memory* @routine_jmpq_.L_44d066(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d061, i64 5, i64 5)
  store %struct.Memory* %call_44d061, %struct.Memory** %MEMORY

  br label %block_.L_44d066

  ; Code: .L_44d066:	 RIP: 44d066	 Bytes: 0
block_.L_44d066:

  ; Code: jmpq .L_44d06b	 RIP: 44d066	 Bytes: 5
  %loadMem_44d066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d066 = call %struct.Memory* @routine_jmpq_.L_44d06b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d066, i64 5, i64 5)
  store %struct.Memory* %call_44d066, %struct.Memory** %MEMORY

  br label %block_.L_44d06b

  ; Code: .L_44d06b:	 RIP: 44d06b	 Bytes: 0
block_.L_44d06b:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44d06b	 Bytes: 3
  %loadMem_44d06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d06b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d06b)
  store %struct.Memory* %call_44d06b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44d06e	 Bytes: 3
  %loadMem_44d06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d06e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d06e)
  store %struct.Memory* %call_44d06e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44d071	 Bytes: 3
  %loadMem_44d071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d071 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d071)
  store %struct.Memory* %call_44d071, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44cfe8	 RIP: 44d074	 Bytes: 5
  %loadMem_44d074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d074 = call %struct.Memory* @routine_jmpq_.L_44cfe8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d074, i64 -140, i64 5)
  store %struct.Memory* %call_44d074, %struct.Memory** %MEMORY

  br label %block_.L_44cfe8

  ; Code: .L_44d079:	 RIP: 44d079	 Bytes: 0
block_.L_44d079:

  ; Code: movl $0x8, %eax	 RIP: 44d079	 Bytes: 5
  %loadMem_44d079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d079 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d079)
  store %struct.Memory* %call_44d079, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44d07e	 Bytes: 2
  %loadMem_44d07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d07e = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d07e)
  store %struct.Memory* %call_44d07e, %struct.Memory** %MEMORY

  ; Code: movq $0x44dc20, %rcx	 RIP: 44d080	 Bytes: 10
  %loadMem_44d080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d080 = call %struct.Memory* @routine_movq__0x44dc20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d080)
  store %struct.Memory* %call_44d080, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rsi	 RIP: 44d08a	 Bytes: 4
  %loadMem_44d08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d08a = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d08a)
  store %struct.Memory* %call_44d08a, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 44d08e	 Bytes: 4
  %loadMem_44d08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d08e = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d08e)
  store %struct.Memory* %call_44d08e, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x98(%rbp)	 RIP: 44d092	 Bytes: 7
  %loadMem_44d092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d092 = call %struct.Memory* @routine_movq__rdi__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d092)
  store %struct.Memory* %call_44d092, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 44d099	 Bytes: 3
  %loadMem_44d099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d099 = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d099)
  store %struct.Memory* %call_44d099, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rsi	 RIP: 44d09c	 Bytes: 7
  %loadMem_44d09c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d09c = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d09c)
  store %struct.Memory* %call_44d09c, %struct.Memory** %MEMORY

  ; Code: callq .qsort_plt	 RIP: 44d0a3	 Bytes: 5
  %loadMem1_44d0a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44d0a3 = call %struct.Memory* @routine_callq_.qsort_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44d0a3, i64 -311491, i64 5, i64 5)
  store %struct.Memory* %call1_44d0a3, %struct.Memory** %MEMORY

  %loadMem2_44d0a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d0a3 = load i64, i64* %3
  %call2_44d0a3 = call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* %0, i64  %loadPC_44d0a3, %struct.Memory* %loadMem2_44d0a3)
  store %struct.Memory* %call2_44d0a3, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 44d0a8	 Bytes: 3
  %loadMem_44d0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0a8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0a8)
  store %struct.Memory* %call_44d0a8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 44d0ab	 Bytes: 3
  %loadMem_44d0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0ab = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0ab)
  store %struct.Memory* %call_44d0ab, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 44d0ae	 Bytes: 7
  %loadMem_44d0ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0ae = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0ae)
  store %struct.Memory* %call_44d0ae, %struct.Memory** %MEMORY

  ; Code: .L_44d0b5:	 RIP: 44d0b5	 Bytes: 0
  br label %block_.L_44d0b5
block_.L_44d0b5:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44d0b5	 Bytes: 3
  %loadMem_44d0b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0b5 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0b5)
  store %struct.Memory* %call_44d0b5, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaa8, %eax	 RIP: 44d0b8	 Bytes: 7
  %loadMem_44d0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0b8 = call %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0b8)
  store %struct.Memory* %call_44d0b8, %struct.Memory** %MEMORY

  ; Code: jae .L_44d146	 RIP: 44d0bf	 Bytes: 6
  %loadMem_44d0bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0bf = call %struct.Memory* @routine_jae_.L_44d146(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0bf, i8* %BRANCH_TAKEN, i64 135, i64 6, i64 6)
  store %struct.Memory* %call_44d0bf, %struct.Memory** %MEMORY

  %loadBr_44d0bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d0bf = icmp eq i8 %loadBr_44d0bf, 1
  br i1 %cmpBr_44d0bf, label %block_.L_44d146, label %block_44d0c5

block_44d0c5:
  ; Code: movq 0x70ea90, %rax	 RIP: 44d0c5	 Bytes: 8
  %loadMem_44d0c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0c5 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0c5)
  store %struct.Memory* %call_44d0c5, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44d0cd	 Bytes: 3
  %loadMem_44d0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0cd = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0cd)
  store %struct.Memory* %call_44d0cd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44d0d0	 Bytes: 2
  %loadMem_44d0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0d0 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0d0)
  store %struct.Memory* %call_44d0d0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44d0d2	 Bytes: 4
  %loadMem_44d0d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0d2 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0d2)
  store %struct.Memory* %call_44d0d2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax)	 RIP: 44d0d6	 Bytes: 3
  %loadMem_44d0d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0d6 = call %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0d6)
  store %struct.Memory* %call_44d0d6, %struct.Memory** %MEMORY

  ; Code: je .L_44d133	 RIP: 44d0d9	 Bytes: 6
  %loadMem_44d0d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0d9 = call %struct.Memory* @routine_je_.L_44d133(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0d9, i8* %BRANCH_TAKEN, i64 90, i64 6, i64 6)
  store %struct.Memory* %call_44d0d9, %struct.Memory** %MEMORY

  %loadBr_44d0d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d0d9 = icmp eq i8 %loadBr_44d0d9, 1
  br i1 %cmpBr_44d0d9, label %block_.L_44d133, label %block_44d0df

block_44d0df:
  ; Code: movq 0x6cb900, %rax	 RIP: 44d0df	 Bytes: 8
  %loadMem_44d0df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0df = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0df)
  store %struct.Memory* %call_44d0df, %struct.Memory** %MEMORY

  ; Code: movl 0x11b0c(%rax), %ecx	 RIP: 44d0e7	 Bytes: 6
  %loadMem_44d0e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0e7 = call %struct.Memory* @routine_movl_0x11b0c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0e7)
  store %struct.Memory* %call_44d0e7, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 44d0ed	 Bytes: 8
  %loadMem_44d0ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0ed = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0ed)
  store %struct.Memory* %call_44d0ed, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 44d0f5	 Bytes: 3
  %loadMem_44d0f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0f5 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0f5)
  store %struct.Memory* %call_44d0f5, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 44d0f8	 Bytes: 2
  %loadMem_44d0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0f8 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0f8)
  store %struct.Memory* %call_44d0f8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rsi,8), %rax	 RIP: 44d0fa	 Bytes: 4
  %loadMem_44d0fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0fa = call %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0fa)
  store %struct.Memory* %call_44d0fa, %struct.Memory** %MEMORY

  ; Code: cmpl 0x24(%rax), %ecx	 RIP: 44d0fe	 Bytes: 3
  %loadMem_44d0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d0fe = call %struct.Memory* @routine_cmpl_0x24__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d0fe)
  store %struct.Memory* %call_44d0fe, %struct.Memory** %MEMORY

  ; Code: jge .L_44d12e	 RIP: 44d101	 Bytes: 6
  %loadMem_44d101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d101 = call %struct.Memory* @routine_jge_.L_44d12e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d101, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_44d101, %struct.Memory** %MEMORY

  %loadBr_44d101 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d101 = icmp eq i8 %loadBr_44d101, 1
  br i1 %cmpBr_44d101, label %block_.L_44d12e, label %block_44d107

block_44d107:
  ; Code: movq 0x70ea90, %rax	 RIP: 44d107	 Bytes: 8
  %loadMem_44d107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d107 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d107)
  store %struct.Memory* %call_44d107, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44d10f	 Bytes: 3
  %loadMem_44d10f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d10f = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d10f)
  store %struct.Memory* %call_44d10f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44d112	 Bytes: 2
  %loadMem_44d112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d112 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d112)
  store %struct.Memory* %call_44d112, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44d114	 Bytes: 4
  %loadMem_44d114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d114 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d114)
  store %struct.Memory* %call_44d114, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 44d118	 Bytes: 4
  %loadMem_44d118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d118 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d118)
  store %struct.Memory* %call_44d118, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 44d11c	 Bytes: 3
  %loadMem_44d11c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d11c = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d11c)
  store %struct.Memory* %call_44d11c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 44d11f	 Bytes: 2
  %loadMem_44d11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d11f = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d11f)
  store %struct.Memory* %call_44d11f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 44d121	 Bytes: 3
  %loadMem_44d121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d121 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d121)
  store %struct.Memory* %call_44d121, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x24(%rbp)	 RIP: 44d124	 Bytes: 3
  %loadMem_44d124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d124 = call %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d124)
  store %struct.Memory* %call_44d124, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdi	 RIP: 44d127	 Bytes: 3
  %loadMem_44d127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d127 = call %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d127)
  store %struct.Memory* %call_44d127, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx,%rdi,8)	 RIP: 44d12a	 Bytes: 4
  %loadMem_44d12a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d12a = call %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d12a)
  store %struct.Memory* %call_44d12a, %struct.Memory** %MEMORY

  ; Code: .L_44d12e:	 RIP: 44d12e	 Bytes: 0
  br label %block_.L_44d12e
block_.L_44d12e:

  ; Code: jmpq .L_44d133	 RIP: 44d12e	 Bytes: 5
  %loadMem_44d12e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d12e = call %struct.Memory* @routine_jmpq_.L_44d133(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d12e, i64 5, i64 5)
  store %struct.Memory* %call_44d12e, %struct.Memory** %MEMORY

  br label %block_.L_44d133

  ; Code: .L_44d133:	 RIP: 44d133	 Bytes: 0
block_.L_44d133:

  ; Code: jmpq .L_44d138	 RIP: 44d133	 Bytes: 5
  %loadMem_44d133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d133 = call %struct.Memory* @routine_jmpq_.L_44d138(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d133, i64 5, i64 5)
  store %struct.Memory* %call_44d133, %struct.Memory** %MEMORY

  br label %block_.L_44d138

  ; Code: .L_44d138:	 RIP: 44d138	 Bytes: 0
block_.L_44d138:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44d138	 Bytes: 3
  %loadMem_44d138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d138 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d138)
  store %struct.Memory* %call_44d138, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44d13b	 Bytes: 3
  %loadMem_44d13b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d13b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d13b)
  store %struct.Memory* %call_44d13b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44d13e	 Bytes: 3
  %loadMem_44d13e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d13e = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d13e)
  store %struct.Memory* %call_44d13e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44d0b5	 RIP: 44d141	 Bytes: 5
  %loadMem_44d141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d141 = call %struct.Memory* @routine_jmpq_.L_44d0b5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d141, i64 -140, i64 5)
  store %struct.Memory* %call_44d141, %struct.Memory** %MEMORY

  br label %block_.L_44d0b5

  ; Code: .L_44d146:	 RIP: 44d146	 Bytes: 0
block_.L_44d146:

  ; Code: movl $0x8, %eax	 RIP: 44d146	 Bytes: 5
  %loadMem_44d146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d146 = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d146)
  store %struct.Memory* %call_44d146, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44d14b	 Bytes: 2
  %loadMem_44d14b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d14b = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d14b)
  store %struct.Memory* %call_44d14b, %struct.Memory** %MEMORY

  ; Code: movq $0x44dc90, %rcx	 RIP: 44d14d	 Bytes: 10
  %loadMem_44d14d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d14d = call %struct.Memory* @routine_movq__0x44dc90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d14d)
  store %struct.Memory* %call_44d14d, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rsi	 RIP: 44d157	 Bytes: 4
  %loadMem_44d157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d157 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d157)
  store %struct.Memory* %call_44d157, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 44d15b	 Bytes: 4
  %loadMem_44d15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d15b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d15b)
  store %struct.Memory* %call_44d15b, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdi	 RIP: 44d15f	 Bytes: 4
  %loadMem_44d15f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d15f = call %struct.Memory* @routine_shlq__0x3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d15f)
  store %struct.Memory* %call_44d15f, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 44d163	 Bytes: 3
  %loadMem_44d163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d163 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d163)
  store %struct.Memory* %call_44d163, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 44d166	 Bytes: 3
  %loadMem_44d166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d166 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d166)
  store %struct.Memory* %call_44d166, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %eax	 RIP: 44d169	 Bytes: 3
  %loadMem_44d169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d169 = call %struct.Memory* @routine_subl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d169)
  store %struct.Memory* %call_44d169, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 44d16c	 Bytes: 3
  %loadMem_44d16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d16c = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d16c)
  store %struct.Memory* %call_44d16c, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xa0(%rbp)	 RIP: 44d16f	 Bytes: 7
  %loadMem_44d16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d16f = call %struct.Memory* @routine_movq__rdi__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d16f)
  store %struct.Memory* %call_44d16f, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 44d176	 Bytes: 3
  %loadMem_44d176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d176 = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d176)
  store %struct.Memory* %call_44d176, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rsi	 RIP: 44d179	 Bytes: 7
  %loadMem_44d179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d179 = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d179)
  store %struct.Memory* %call_44d179, %struct.Memory** %MEMORY

  ; Code: callq .qsort_plt	 RIP: 44d180	 Bytes: 5
  %loadMem1_44d180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44d180 = call %struct.Memory* @routine_callq_.qsort_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44d180, i64 -311712, i64 5, i64 5)
  store %struct.Memory* %call1_44d180, %struct.Memory** %MEMORY

  %loadMem2_44d180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d180 = load i64, i64* %3
  %call2_44d180 = call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* %0, i64  %loadPC_44d180, %struct.Memory* %loadMem2_44d180)
  store %struct.Memory* %call2_44d180, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 44d185	 Bytes: 7
  %loadMem_44d185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d185 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d185)
  store %struct.Memory* %call_44d185, %struct.Memory** %MEMORY

  ; Code: .L_44d18c:	 RIP: 44d18c	 Bytes: 0
  br label %block_.L_44d18c
block_.L_44d18c:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44d18c	 Bytes: 3
  %loadMem_44d18c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d18c = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d18c)
  store %struct.Memory* %call_44d18c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %eax	 RIP: 44d18f	 Bytes: 3
  %loadMem_44d18f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d18f = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d18f)
  store %struct.Memory* %call_44d18f, %struct.Memory** %MEMORY

  ; Code: jge .L_44d1c6	 RIP: 44d192	 Bytes: 6
  %loadMem_44d192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d192 = call %struct.Memory* @routine_jge_.L_44d1c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d192, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_44d192, %struct.Memory** %MEMORY

  %loadBr_44d192 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d192 = icmp eq i8 %loadBr_44d192, 1
  br i1 %cmpBr_44d192, label %block_.L_44d1c6, label %block_44d198

block_44d198:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 44d198	 Bytes: 4
  %loadMem_44d198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d198 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d198)
  store %struct.Memory* %call_44d198, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44d19c	 Bytes: 4
  %loadMem_44d19c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d19c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d19c)
  store %struct.Memory* %call_44d19c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44d1a0	 Bytes: 4
  %loadMem_44d1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1a0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1a0)
  store %struct.Memory* %call_44d1a0, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 44d1a4	 Bytes: 4
  %loadMem_44d1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1a4 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1a4)
  store %struct.Memory* %call_44d1a4, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 44d1a8	 Bytes: 3
  %loadMem_44d1a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1a8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1a8)
  store %struct.Memory* %call_44d1a8, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %edx	 RIP: 44d1ab	 Bytes: 3
  %loadMem_44d1ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1ab = call %struct.Memory* @routine_subl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1ab)
  store %struct.Memory* %call_44d1ab, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 44d1ae	 Bytes: 3
  %loadMem_44d1ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1ae = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1ae)
  store %struct.Memory* %call_44d1ae, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 44d1b1	 Bytes: 3
  %loadMem_44d1b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1b1 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1b1)
  store %struct.Memory* %call_44d1b1, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rsi,8)	 RIP: 44d1b4	 Bytes: 4
  %loadMem_44d1b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1b4 = call %struct.Memory* @routine_movq__rax____rcx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1b4)
  store %struct.Memory* %call_44d1b4, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44d1b8	 Bytes: 3
  %loadMem_44d1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1b8 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1b8)
  store %struct.Memory* %call_44d1b8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44d1bb	 Bytes: 3
  %loadMem_44d1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1bb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1bb)
  store %struct.Memory* %call_44d1bb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44d1be	 Bytes: 3
  %loadMem_44d1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1be = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1be)
  store %struct.Memory* %call_44d1be, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44d18c	 RIP: 44d1c1	 Bytes: 5
  %loadMem_44d1c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1c1 = call %struct.Memory* @routine_jmpq_.L_44d18c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1c1, i64 -53, i64 5)
  store %struct.Memory* %call_44d1c1, %struct.Memory** %MEMORY

  br label %block_.L_44d18c

  ; Code: .L_44d1c6:	 RIP: 44d1c6	 Bytes: 0
block_.L_44d1c6:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 44d1c6	 Bytes: 3
  %loadMem_44d1c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1c6 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1c6)
  store %struct.Memory* %call_44d1c6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44d1c9	 Bytes: 3
  %loadMem_44d1c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1c9 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1c9)
  store %struct.Memory* %call_44d1c9, %struct.Memory** %MEMORY

  ; Code: .L_44d1cc:	 RIP: 44d1cc	 Bytes: 0
  br label %block_.L_44d1cc
block_.L_44d1cc:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44d1cc	 Bytes: 3
  %loadMem_44d1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1cc = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1cc)
  store %struct.Memory* %call_44d1cc, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %eax	 RIP: 44d1cf	 Bytes: 3
  %loadMem_44d1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1cf = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1cf)
  store %struct.Memory* %call_44d1cf, %struct.Memory** %MEMORY

  ; Code: jge .L_44d203	 RIP: 44d1d2	 Bytes: 6
  %loadMem_44d1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1d2 = call %struct.Memory* @routine_jge_.L_44d203(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1d2, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_44d1d2, %struct.Memory** %MEMORY

  %loadBr_44d1d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d1d2 = icmp eq i8 %loadBr_44d1d2, 1
  br i1 %cmpBr_44d1d2, label %block_.L_44d203, label %block_44d1d8

block_44d1d8:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 44d1d8	 Bytes: 4
  %loadMem_44d1d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1d8 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1d8)
  store %struct.Memory* %call_44d1d8, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44d1dc	 Bytes: 4
  %loadMem_44d1dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1dc = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1dc)
  store %struct.Memory* %call_44d1dc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44d1e0	 Bytes: 4
  %loadMem_44d1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1e0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1e0)
  store %struct.Memory* %call_44d1e0, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 44d1e4	 Bytes: 4
  %loadMem_44d1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1e4 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1e4)
  store %struct.Memory* %call_44d1e4, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 44d1e8	 Bytes: 3
  %loadMem_44d1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1e8 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1e8)
  store %struct.Memory* %call_44d1e8, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %edx	 RIP: 44d1eb	 Bytes: 3
  %loadMem_44d1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1eb = call %struct.Memory* @routine_subl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1eb)
  store %struct.Memory* %call_44d1eb, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 44d1ee	 Bytes: 3
  %loadMem_44d1ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1ee = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1ee)
  store %struct.Memory* %call_44d1ee, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rsi,8)	 RIP: 44d1f1	 Bytes: 4
  %loadMem_44d1f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1f1 = call %struct.Memory* @routine_movq__rax____rcx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1f1)
  store %struct.Memory* %call_44d1f1, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44d1f5	 Bytes: 3
  %loadMem_44d1f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1f5 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1f5)
  store %struct.Memory* %call_44d1f5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44d1f8	 Bytes: 3
  %loadMem_44d1f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1f8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1f8)
  store %struct.Memory* %call_44d1f8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44d1fb	 Bytes: 3
  %loadMem_44d1fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1fb = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1fb)
  store %struct.Memory* %call_44d1fb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44d1cc	 RIP: 44d1fe	 Bytes: 5
  %loadMem_44d1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d1fe = call %struct.Memory* @routine_jmpq_.L_44d1cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d1fe, i64 -50, i64 5)
  store %struct.Memory* %call_44d1fe, %struct.Memory** %MEMORY

  br label %block_.L_44d1cc

  ; Code: .L_44d203:	 RIP: 44d203	 Bytes: 0
block_.L_44d203:

  ; Code: movq $0x7247b0, %r8	 RIP: 44d203	 Bytes: 10
  %loadMem_44d203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d203 = call %struct.Memory* @routine_movq__0x7247b0___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d203)
  store %struct.Memory* %call_44d203, %struct.Memory** %MEMORY

  ; Code: xorl %r9d, %r9d	 RIP: 44d20d	 Bytes: 3
  %loadMem_44d20d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d20d = call %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d20d)
  store %struct.Memory* %call_44d20d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x7247b0	 RIP: 44d210	 Bytes: 11
  %loadMem_44d210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d210 = call %struct.Memory* @routine_movl__0x0__0x7247b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d210)
  store %struct.Memory* %call_44d210, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x7247b4	 RIP: 44d21b	 Bytes: 11
  %loadMem_44d21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d21b = call %struct.Memory* @routine_movl__0x0__0x7247b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d21b)
  store %struct.Memory* %call_44d21b, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 44d226	 Bytes: 3
  %loadMem_44d226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d226 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d226)
  store %struct.Memory* %call_44d226, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rsi	 RIP: 44d229	 Bytes: 4
  %loadMem_44d229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d229 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d229)
  store %struct.Memory* %call_44d229, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 44d22d	 Bytes: 3
  %loadMem_44d22d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d22d = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d22d)
  store %struct.Memory* %call_44d22d, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rcx	 RIP: 44d230	 Bytes: 8
  %loadMem_44d230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d230 = call %struct.Memory* @routine_movq_0x722b20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d230)
  store %struct.Memory* %call_44d230, %struct.Memory** %MEMORY

  ; Code: callq .gen_pic_list_from_frame_list	 RIP: 44d238	 Bytes: 5
  %loadMem1_44d238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44d238 = call %struct.Memory* @routine_callq_.gen_pic_list_from_frame_list(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44d238, i64 1336, i64 5, i64 5)
  store %struct.Memory* %call1_44d238, %struct.Memory** %MEMORY

  %loadMem2_44d238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d238 = load i64, i64* %3
  %call2_44d238 = call %struct.Memory* @sub_44d770.gen_pic_list_from_frame_list(%struct.State* %0, i64  %loadPC_44d238, %struct.Memory* %loadMem2_44d238)
  store %struct.Memory* %call2_44d238, %struct.Memory** %MEMORY

  ; Code: movq $0x7247b0, %rcx	 RIP: 44d23d	 Bytes: 10
  %loadMem_44d23d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d23d = call %struct.Memory* @routine_movq__0x7247b0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d23d)
  store %struct.Memory* %call_44d23d, %struct.Memory** %MEMORY

  ; Code: addq $0x4, %rcx	 RIP: 44d247	 Bytes: 4
  %loadMem_44d247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d247 = call %struct.Memory* @routine_addq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d247)
  store %struct.Memory* %call_44d247, %struct.Memory** %MEMORY

  ; Code: xorl %r9d, %r9d	 RIP: 44d24b	 Bytes: 3
  %loadMem_44d24b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d24b = call %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d24b)
  store %struct.Memory* %call_44d24b, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 44d24e	 Bytes: 3
  %loadMem_44d24e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d24e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d24e)
  store %struct.Memory* %call_44d24e, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rsi	 RIP: 44d251	 Bytes: 4
  %loadMem_44d251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d251 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d251)
  store %struct.Memory* %call_44d251, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 44d255	 Bytes: 3
  %loadMem_44d255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d255 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d255)
  store %struct.Memory* %call_44d255, %struct.Memory** %MEMORY

  ; Code: movq 0x722b28, %r8	 RIP: 44d258	 Bytes: 8
  %loadMem_44d258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d258 = call %struct.Memory* @routine_movq_0x722b28___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d258)
  store %struct.Memory* %call_44d258, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xa8(%rbp)	 RIP: 44d260	 Bytes: 7
  %loadMem_44d260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d260 = call %struct.Memory* @routine_movq__rcx__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d260)
  store %struct.Memory* %call_44d260, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rcx	 RIP: 44d267	 Bytes: 3
  %loadMem_44d267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d267 = call %struct.Memory* @routine_movq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d267)
  store %struct.Memory* %call_44d267, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %r8	 RIP: 44d26a	 Bytes: 7
  %loadMem_44d26a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d26a = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d26a)
  store %struct.Memory* %call_44d26a, %struct.Memory** %MEMORY

  ; Code: callq .gen_pic_list_from_frame_list	 RIP: 44d271	 Bytes: 5
  %loadMem1_44d271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44d271 = call %struct.Memory* @routine_callq_.gen_pic_list_from_frame_list(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44d271, i64 1279, i64 5, i64 5)
  store %struct.Memory* %call1_44d271, %struct.Memory** %MEMORY

  %loadMem2_44d271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d271 = load i64, i64* %3
  %call2_44d271 = call %struct.Memory* @sub_44d770.gen_pic_list_from_frame_list(%struct.State* %0, i64  %loadPC_44d271, %struct.Memory* %loadMem2_44d271)
  store %struct.Memory* %call2_44d271, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 44d276	 Bytes: 7
  %loadMem_44d276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d276 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d276)
  store %struct.Memory* %call_44d276, %struct.Memory** %MEMORY

  ; Code: .L_44d27d:	 RIP: 44d27d	 Bytes: 0
  br label %block_.L_44d27d
block_.L_44d27d:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44d27d	 Bytes: 3
  %loadMem_44d27d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d27d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d27d)
  store %struct.Memory* %call_44d27d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaac, %eax	 RIP: 44d280	 Bytes: 7
  %loadMem_44d280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d280 = call %struct.Memory* @routine_cmpl_0x70eaac___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d280)
  store %struct.Memory* %call_44d280, %struct.Memory** %MEMORY

  ; Code: jae .L_44d37f	 RIP: 44d287	 Bytes: 6
  %loadMem_44d287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d287 = call %struct.Memory* @routine_jae_.L_44d37f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d287, i8* %BRANCH_TAKEN, i64 248, i64 6, i64 6)
  store %struct.Memory* %call_44d287, %struct.Memory** %MEMORY

  %loadBr_44d287 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d287 = icmp eq i8 %loadBr_44d287, 1
  br i1 %cmpBr_44d287, label %block_.L_44d37f, label %block_44d28d

block_44d28d:
  ; Code: movq 0x70ea98, %rax	 RIP: 44d28d	 Bytes: 8
  %loadMem_44d28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d28d = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d28d)
  store %struct.Memory* %call_44d28d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44d295	 Bytes: 3
  %loadMem_44d295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d295 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d295)
  store %struct.Memory* %call_44d295, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44d298	 Bytes: 2
  %loadMem_44d298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d298 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d298)
  store %struct.Memory* %call_44d298, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44d29a	 Bytes: 4
  %loadMem_44d29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d29a = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d29a)
  store %struct.Memory* %call_44d29a, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdx	 RIP: 44d29e	 Bytes: 4
  %loadMem_44d29e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d29e = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d29e)
  store %struct.Memory* %call_44d29e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %ecx	 RIP: 44d2a2	 Bytes: 3
  %loadMem_44d2a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2a2 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2a2)
  store %struct.Memory* %call_44d2a2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 44d2a5	 Bytes: 2
  %loadMem_44d2a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2a5 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2a5)
  store %struct.Memory* %call_44d2a5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 44d2a7	 Bytes: 3
  %loadMem_44d2a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2a7 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2a7)
  store %struct.Memory* %call_44d2a7, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x2c(%rbp)	 RIP: 44d2aa	 Bytes: 3
  %loadMem_44d2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2aa = call %struct.Memory* @routine_movl__esi__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2aa)
  store %struct.Memory* %call_44d2aa, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdi	 RIP: 44d2ad	 Bytes: 3
  %loadMem_44d2ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2ad = call %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2ad)
  store %struct.Memory* %call_44d2ad, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx,%rdi,8)	 RIP: 44d2b0	 Bytes: 4
  %loadMem_44d2b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2b0 = call %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2b0)
  store %struct.Memory* %call_44d2b0, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea98, %rax	 RIP: 44d2b4	 Bytes: 8
  %loadMem_44d2b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2b4 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2b4)
  store %struct.Memory* %call_44d2b4, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44d2bc	 Bytes: 3
  %loadMem_44d2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2bc = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2bc)
  store %struct.Memory* %call_44d2bc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44d2bf	 Bytes: 2
  %loadMem_44d2bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2bf = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2bf)
  store %struct.Memory* %call_44d2bf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44d2c1	 Bytes: 4
  %loadMem_44d2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2c1 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2c1)
  store %struct.Memory* %call_44d2c1, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 44d2c5	 Bytes: 3
  %loadMem_44d2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2c5 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2c5)
  store %struct.Memory* %call_44d2c5, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %ecx	 RIP: 44d2c8	 Bytes: 3
  %loadMem_44d2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2c8 = call %struct.Memory* @routine_andl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2c8)
  store %struct.Memory* %call_44d2c8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 44d2cb	 Bytes: 3
  %loadMem_44d2cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2cb = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2cb)
  store %struct.Memory* %call_44d2cb, %struct.Memory** %MEMORY

  ; Code: je .L_44d310	 RIP: 44d2ce	 Bytes: 6
  %loadMem_44d2ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2ce = call %struct.Memory* @routine_je_.L_44d310(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2ce, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_44d2ce, %struct.Memory** %MEMORY

  %loadBr_44d2ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d2ce = icmp eq i8 %loadBr_44d2ce, 1
  br i1 %cmpBr_44d2ce, label %block_.L_44d310, label %block_44d2d4

block_44d2d4:
  ; Code: movq 0x70ea98, %rax	 RIP: 44d2d4	 Bytes: 8
  %loadMem_44d2d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2d4 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2d4)
  store %struct.Memory* %call_44d2d4, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44d2dc	 Bytes: 3
  %loadMem_44d2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2dc = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2dc)
  store %struct.Memory* %call_44d2dc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44d2df	 Bytes: 2
  %loadMem_44d2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2df = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2df)
  store %struct.Memory* %call_44d2df, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44d2e1	 Bytes: 4
  %loadMem_44d2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2e1 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2e1)
  store %struct.Memory* %call_44d2e1, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 44d2e5	 Bytes: 4
  %loadMem_44d2e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2e5 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2e5)
  store %struct.Memory* %call_44d2e5, %struct.Memory** %MEMORY

  ; Code: movl 0x18e4(%rax), %ecx	 RIP: 44d2e9	 Bytes: 6
  %loadMem_44d2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2e9 = call %struct.Memory* @routine_movl_0x18e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2e9)
  store %struct.Memory* %call_44d2e9, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 44d2ef	 Bytes: 3
  %loadMem_44d2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2ef = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2ef)
  store %struct.Memory* %call_44d2ef, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %ecx	 RIP: 44d2f2	 Bytes: 3
  %loadMem_44d2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2f2 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2f2)
  store %struct.Memory* %call_44d2f2, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea98, %rax	 RIP: 44d2f5	 Bytes: 8
  %loadMem_44d2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2f5 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2f5)
  store %struct.Memory* %call_44d2f5, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44d2fd	 Bytes: 3
  %loadMem_44d2fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d2fd = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d2fd)
  store %struct.Memory* %call_44d2fd, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44d300	 Bytes: 2
  %loadMem_44d300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d300 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d300)
  store %struct.Memory* %call_44d300, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44d302	 Bytes: 4
  %loadMem_44d302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d302 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d302)
  store %struct.Memory* %call_44d302, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 44d306	 Bytes: 4
  %loadMem_44d306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d306 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d306)
  store %struct.Memory* %call_44d306, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18e0(%rax)	 RIP: 44d30a	 Bytes: 6
  %loadMem_44d30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d30a = call %struct.Memory* @routine_movl__ecx__0x18e0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d30a)
  store %struct.Memory* %call_44d30a, %struct.Memory** %MEMORY

  ; Code: .L_44d310:	 RIP: 44d310	 Bytes: 0
  br label %block_.L_44d310
block_.L_44d310:

  ; Code: movq 0x70ea98, %rax	 RIP: 44d310	 Bytes: 8
  %loadMem_44d310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d310 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d310)
  store %struct.Memory* %call_44d310, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44d318	 Bytes: 3
  %loadMem_44d318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d318 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d318)
  store %struct.Memory* %call_44d318, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44d31b	 Bytes: 2
  %loadMem_44d31b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d31b = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d31b)
  store %struct.Memory* %call_44d31b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44d31d	 Bytes: 4
  %loadMem_44d31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d31d = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d31d)
  store %struct.Memory* %call_44d31d, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 44d321	 Bytes: 3
  %loadMem_44d321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d321 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d321)
  store %struct.Memory* %call_44d321, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %ecx	 RIP: 44d324	 Bytes: 3
  %loadMem_44d324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d324 = call %struct.Memory* @routine_andl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d324)
  store %struct.Memory* %call_44d324, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 44d327	 Bytes: 3
  %loadMem_44d327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d327 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d327)
  store %struct.Memory* %call_44d327, %struct.Memory** %MEMORY

  ; Code: je .L_44d36c	 RIP: 44d32a	 Bytes: 6
  %loadMem_44d32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d32a = call %struct.Memory* @routine_je_.L_44d36c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d32a, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_44d32a, %struct.Memory** %MEMORY

  %loadBr_44d32a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d32a = icmp eq i8 %loadBr_44d32a, 1
  br i1 %cmpBr_44d32a, label %block_.L_44d36c, label %block_44d330

block_44d330:
  ; Code: movq 0x70ea98, %rax	 RIP: 44d330	 Bytes: 8
  %loadMem_44d330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d330 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d330)
  store %struct.Memory* %call_44d330, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44d338	 Bytes: 3
  %loadMem_44d338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d338 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d338)
  store %struct.Memory* %call_44d338, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44d33b	 Bytes: 2
  %loadMem_44d33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d33b = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d33b)
  store %struct.Memory* %call_44d33b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44d33d	 Bytes: 4
  %loadMem_44d33d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d33d = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d33d)
  store %struct.Memory* %call_44d33d, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 44d341	 Bytes: 4
  %loadMem_44d341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d341 = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d341)
  store %struct.Memory* %call_44d341, %struct.Memory** %MEMORY

  ; Code: movl 0x18e4(%rax), %ecx	 RIP: 44d345	 Bytes: 6
  %loadMem_44d345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d345 = call %struct.Memory* @routine_movl_0x18e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d345)
  store %struct.Memory* %call_44d345, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 44d34b	 Bytes: 3
  %loadMem_44d34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d34b = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d34b)
  store %struct.Memory* %call_44d34b, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %ecx	 RIP: 44d34e	 Bytes: 3
  %loadMem_44d34e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d34e = call %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d34e)
  store %struct.Memory* %call_44d34e, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea98, %rax	 RIP: 44d351	 Bytes: 8
  %loadMem_44d351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d351 = call %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d351)
  store %struct.Memory* %call_44d351, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 44d359	 Bytes: 3
  %loadMem_44d359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d359 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d359)
  store %struct.Memory* %call_44d359, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 44d35c	 Bytes: 2
  %loadMem_44d35c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d35c = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d35c)
  store %struct.Memory* %call_44d35c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 44d35e	 Bytes: 4
  %loadMem_44d35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d35e = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d35e)
  store %struct.Memory* %call_44d35e, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 44d362	 Bytes: 4
  %loadMem_44d362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d362 = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d362)
  store %struct.Memory* %call_44d362, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18e0(%rax)	 RIP: 44d366	 Bytes: 6
  %loadMem_44d366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d366 = call %struct.Memory* @routine_movl__ecx__0x18e0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d366)
  store %struct.Memory* %call_44d366, %struct.Memory** %MEMORY

  ; Code: .L_44d36c:	 RIP: 44d36c	 Bytes: 0
  br label %block_.L_44d36c
block_.L_44d36c:

  ; Code: jmpq .L_44d371	 RIP: 44d36c	 Bytes: 5
  %loadMem_44d36c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d36c = call %struct.Memory* @routine_jmpq_.L_44d371(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d36c, i64 5, i64 5)
  store %struct.Memory* %call_44d36c, %struct.Memory** %MEMORY

  br label %block_.L_44d371

  ; Code: .L_44d371:	 RIP: 44d371	 Bytes: 0
block_.L_44d371:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44d371	 Bytes: 3
  %loadMem_44d371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d371 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d371)
  store %struct.Memory* %call_44d371, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44d374	 Bytes: 3
  %loadMem_44d374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d374 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d374)
  store %struct.Memory* %call_44d374, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44d377	 Bytes: 3
  %loadMem_44d377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d377 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d377)
  store %struct.Memory* %call_44d377, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44d27d	 RIP: 44d37a	 Bytes: 5
  %loadMem_44d37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d37a = call %struct.Memory* @routine_jmpq_.L_44d27d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d37a, i64 -253, i64 5)
  store %struct.Memory* %call_44d37a, %struct.Memory** %MEMORY

  br label %block_.L_44d27d

  ; Code: .L_44d37f:	 RIP: 44d37f	 Bytes: 0
block_.L_44d37f:

  ; Code: movl $0x8, %eax	 RIP: 44d37f	 Bytes: 5
  %loadMem_44d37f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d37f = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d37f)
  store %struct.Memory* %call_44d37f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 44d384	 Bytes: 2
  %loadMem_44d384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d384 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d384)
  store %struct.Memory* %call_44d384, %struct.Memory** %MEMORY

  ; Code: movq $0x44dad0, %rcx	 RIP: 44d386	 Bytes: 10
  %loadMem_44d386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d386 = call %struct.Memory* @routine_movq__0x44dad0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d386)
  store %struct.Memory* %call_44d386, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rsi	 RIP: 44d390	 Bytes: 4
  %loadMem_44d390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d390 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d390)
  store %struct.Memory* %call_44d390, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 44d394	 Bytes: 4
  %loadMem_44d394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d394 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d394)
  store %struct.Memory* %call_44d394, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xb0(%rbp)	 RIP: 44d398	 Bytes: 7
  %loadMem_44d398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d398 = call %struct.Memory* @routine_movq__rdi__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d398)
  store %struct.Memory* %call_44d398, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 44d39f	 Bytes: 3
  %loadMem_44d39f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d39f = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d39f)
  store %struct.Memory* %call_44d39f, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rsi	 RIP: 44d3a2	 Bytes: 7
  %loadMem_44d3a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d3a2 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d3a2)
  store %struct.Memory* %call_44d3a2, %struct.Memory** %MEMORY

  ; Code: callq .qsort_plt	 RIP: 44d3a9	 Bytes: 5
  %loadMem1_44d3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44d3a9 = call %struct.Memory* @routine_callq_.qsort_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44d3a9, i64 -312265, i64 5, i64 5)
  store %struct.Memory* %call1_44d3a9, %struct.Memory** %MEMORY

  %loadMem2_44d3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d3a9 = load i64, i64* %3
  %call2_44d3a9 = call %struct.Memory* @sub_400fe0.qsort_plt(%struct.State* %0, i64  %loadPC_44d3a9, %struct.Memory* %loadMem2_44d3a9)
  store %struct.Memory* %call2_44d3a9, %struct.Memory** %MEMORY

  ; Code: movq $0x7247b0, %r8	 RIP: 44d3ae	 Bytes: 10
  %loadMem_44d3ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d3ae = call %struct.Memory* @routine_movq__0x7247b0___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d3ae)
  store %struct.Memory* %call_44d3ae, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r9d	 RIP: 44d3b8	 Bytes: 6
  %loadMem_44d3b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d3b8 = call %struct.Memory* @routine_movl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d3b8)
  store %struct.Memory* %call_44d3b8, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 44d3be	 Bytes: 3
  %loadMem_44d3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d3be = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d3be)
  store %struct.Memory* %call_44d3be, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rsi	 RIP: 44d3c1	 Bytes: 4
  %loadMem_44d3c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d3c1 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d3c1)
  store %struct.Memory* %call_44d3c1, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 44d3c5	 Bytes: 3
  %loadMem_44d3c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d3c5 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d3c5)
  store %struct.Memory* %call_44d3c5, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rcx	 RIP: 44d3c8	 Bytes: 8
  %loadMem_44d3c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d3c8 = call %struct.Memory* @routine_movq_0x722b20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d3c8)
  store %struct.Memory* %call_44d3c8, %struct.Memory** %MEMORY

  ; Code: callq .gen_pic_list_from_frame_list	 RIP: 44d3d0	 Bytes: 5
  %loadMem1_44d3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44d3d0 = call %struct.Memory* @routine_callq_.gen_pic_list_from_frame_list(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44d3d0, i64 928, i64 5, i64 5)
  store %struct.Memory* %call1_44d3d0, %struct.Memory** %MEMORY

  %loadMem2_44d3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d3d0 = load i64, i64* %3
  %call2_44d3d0 = call %struct.Memory* @sub_44d770.gen_pic_list_from_frame_list(%struct.State* %0, i64  %loadPC_44d3d0, %struct.Memory* %loadMem2_44d3d0)
  store %struct.Memory* %call2_44d3d0, %struct.Memory** %MEMORY

  ; Code: movq $0x7247b0, %rcx	 RIP: 44d3d5	 Bytes: 10
  %loadMem_44d3d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d3d5 = call %struct.Memory* @routine_movq__0x7247b0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d3d5)
  store %struct.Memory* %call_44d3d5, %struct.Memory** %MEMORY

  ; Code: addq $0x4, %rcx	 RIP: 44d3df	 Bytes: 4
  %loadMem_44d3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d3df = call %struct.Memory* @routine_addq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d3df)
  store %struct.Memory* %call_44d3df, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r9d	 RIP: 44d3e3	 Bytes: 6
  %loadMem_44d3e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d3e3 = call %struct.Memory* @routine_movl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d3e3)
  store %struct.Memory* %call_44d3e3, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 44d3e9	 Bytes: 3
  %loadMem_44d3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d3e9 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d3e9)
  store %struct.Memory* %call_44d3e9, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rsi	 RIP: 44d3ec	 Bytes: 4
  %loadMem_44d3ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d3ec = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d3ec)
  store %struct.Memory* %call_44d3ec, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 44d3f0	 Bytes: 3
  %loadMem_44d3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d3f0 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d3f0)
  store %struct.Memory* %call_44d3f0, %struct.Memory** %MEMORY

  ; Code: movq 0x722b28, %r8	 RIP: 44d3f3	 Bytes: 8
  %loadMem_44d3f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d3f3 = call %struct.Memory* @routine_movq_0x722b28___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d3f3)
  store %struct.Memory* %call_44d3f3, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xb8(%rbp)	 RIP: 44d3fb	 Bytes: 7
  %loadMem_44d3fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d3fb = call %struct.Memory* @routine_movq__rcx__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d3fb)
  store %struct.Memory* %call_44d3fb, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rcx	 RIP: 44d402	 Bytes: 3
  %loadMem_44d402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d402 = call %struct.Memory* @routine_movq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d402)
  store %struct.Memory* %call_44d402, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %r8	 RIP: 44d405	 Bytes: 7
  %loadMem_44d405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d405 = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d405)
  store %struct.Memory* %call_44d405, %struct.Memory** %MEMORY

  ; Code: callq .gen_pic_list_from_frame_list	 RIP: 44d40c	 Bytes: 5
  %loadMem1_44d40c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44d40c = call %struct.Memory* @routine_callq_.gen_pic_list_from_frame_list(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44d40c, i64 868, i64 5, i64 5)
  store %struct.Memory* %call1_44d40c, %struct.Memory** %MEMORY

  %loadMem2_44d40c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d40c = load i64, i64* %3
  %call2_44d40c = call %struct.Memory* @sub_44d770.gen_pic_list_from_frame_list(%struct.State* %0, i64  %loadPC_44d40c, %struct.Memory* %loadMem2_44d40c)
  store %struct.Memory* %call2_44d40c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 44d411	 Bytes: 4
  %loadMem_44d411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d411 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d411)
  store %struct.Memory* %call_44d411, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 44d415	 Bytes: 3
  %loadMem_44d415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d415 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d415)
  store %struct.Memory* %call_44d415, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 44d418	 Bytes: 5
  %loadMem1_44d418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44d418 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44d418, i64 -312472, i64 5, i64 5)
  store %struct.Memory* %call1_44d418, %struct.Memory** %MEMORY

  %loadMem2_44d418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d418 = load i64, i64* %3
  %call2_44d418 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_44d418, %struct.Memory* %loadMem2_44d418)
  store %struct.Memory* %call2_44d418, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 44d41d	 Bytes: 4
  %loadMem_44d41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d41d = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d41d)
  store %struct.Memory* %call_44d41d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 44d421	 Bytes: 3
  %loadMem_44d421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d421 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d421)
  store %struct.Memory* %call_44d421, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 44d424	 Bytes: 5
  %loadMem1_44d424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44d424 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44d424, i64 -312484, i64 5, i64 5)
  store %struct.Memory* %call1_44d424, %struct.Memory** %MEMORY

  %loadMem2_44d424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d424 = load i64, i64* %3
  %call2_44d424 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_44d424, %struct.Memory* %loadMem2_44d424)
  store %struct.Memory* %call2_44d424, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 44d429	 Bytes: 4
  %loadMem_44d429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d429 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d429)
  store %struct.Memory* %call_44d429, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 44d42d	 Bytes: 3
  %loadMem_44d42d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d42d = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d42d)
  store %struct.Memory* %call_44d42d, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 44d430	 Bytes: 5
  %loadMem1_44d430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44d430 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44d430, i64 -312496, i64 5, i64 5)
  store %struct.Memory* %call1_44d430, %struct.Memory** %MEMORY

  %loadMem2_44d430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d430 = load i64, i64* %3
  %call2_44d430 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_44d430, %struct.Memory* %loadMem2_44d430)
  store %struct.Memory* %call2_44d430, %struct.Memory** %MEMORY

  ; Code: .L_44d435:	 RIP: 44d435	 Bytes: 0
  br label %block_.L_44d435
block_.L_44d435:

  ; Code: jmpq .L_44d43a	 RIP: 44d435	 Bytes: 5
  %loadMem_44d435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d435 = call %struct.Memory* @routine_jmpq_.L_44d43a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d435, i64 5, i64 5)
  store %struct.Memory* %call_44d435, %struct.Memory** %MEMORY

  br label %block_.L_44d43a

  ; Code: .L_44d43a:	 RIP: 44d43a	 Bytes: 0
block_.L_44d43a:

  ; Code: movl 0x7247b0, %eax	 RIP: 44d43a	 Bytes: 7
  %loadMem_44d43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d43a = call %struct.Memory* @routine_movl_0x7247b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d43a)
  store %struct.Memory* %call_44d43a, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b4, %eax	 RIP: 44d441	 Bytes: 7
  %loadMem_44d441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d441 = call %struct.Memory* @routine_cmpl_0x7247b4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d441)
  store %struct.Memory* %call_44d441, %struct.Memory** %MEMORY

  ; Code: jne .L_44d4ff	 RIP: 44d448	 Bytes: 6
  %loadMem_44d448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d448 = call %struct.Memory* @routine_jne_.L_44d4ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d448, i8* %BRANCH_TAKEN, i64 183, i64 6, i64 6)
  store %struct.Memory* %call_44d448, %struct.Memory** %MEMORY

  %loadBr_44d448 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d448 = icmp eq i8 %loadBr_44d448, 1
  br i1 %cmpBr_44d448, label %block_.L_44d4ff, label %block_44d44e

block_44d44e:
  ; Code: cmpl $0x1, 0x7247b0	 RIP: 44d44e	 Bytes: 8
  %loadMem_44d44e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d44e = call %struct.Memory* @routine_cmpl__0x1__0x7247b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d44e)
  store %struct.Memory* %call_44d44e, %struct.Memory** %MEMORY

  ; Code: jle .L_44d4ff	 RIP: 44d456	 Bytes: 6
  %loadMem_44d456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d456 = call %struct.Memory* @routine_jle_.L_44d4ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d456, i8* %BRANCH_TAKEN, i64 169, i64 6, i64 6)
  store %struct.Memory* %call_44d456, %struct.Memory** %MEMORY

  %loadBr_44d456 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d456 = icmp eq i8 %loadBr_44d456, 1
  br i1 %cmpBr_44d456, label %block_.L_44d4ff, label %block_44d45c

block_44d45c:
  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 44d45c	 Bytes: 7
  %loadMem_44d45c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d45c = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d45c)
  store %struct.Memory* %call_44d45c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 44d463	 Bytes: 7
  %loadMem_44d463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d463 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d463)
  store %struct.Memory* %call_44d463, %struct.Memory** %MEMORY

  ; Code: .L_44d46a:	 RIP: 44d46a	 Bytes: 0
  br label %block_.L_44d46a
block_.L_44d46a:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44d46a	 Bytes: 3
  %loadMem_44d46a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d46a = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d46a)
  store %struct.Memory* %call_44d46a, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0, %eax	 RIP: 44d46d	 Bytes: 7
  %loadMem_44d46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d46d = call %struct.Memory* @routine_cmpl_0x7247b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d46d)
  store %struct.Memory* %call_44d46d, %struct.Memory** %MEMORY

  ; Code: jge .L_44d4ba	 RIP: 44d474	 Bytes: 6
  %loadMem_44d474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d474 = call %struct.Memory* @routine_jge_.L_44d4ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d474, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_44d474, %struct.Memory** %MEMORY

  %loadBr_44d474 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d474 = icmp eq i8 %loadBr_44d474, 1
  br i1 %cmpBr_44d474, label %block_.L_44d4ba, label %block_44d47a

block_44d47a:
  ; Code: movq 0x722b20, %rax	 RIP: 44d47a	 Bytes: 8
  %loadMem_44d47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d47a = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d47a)
  store %struct.Memory* %call_44d47a, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 44d482	 Bytes: 4
  %loadMem_44d482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d482 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d482)
  store %struct.Memory* %call_44d482, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 44d486	 Bytes: 4
  %loadMem_44d486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d486 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d486)
  store %struct.Memory* %call_44d486, %struct.Memory** %MEMORY

  ; Code: movq 0x722b28, %rcx	 RIP: 44d48a	 Bytes: 8
  %loadMem_44d48a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d48a = call %struct.Memory* @routine_movq_0x722b28___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d48a)
  store %struct.Memory* %call_44d48a, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 44d492	 Bytes: 4
  %loadMem_44d492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d492 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d492)
  store %struct.Memory* %call_44d492, %struct.Memory** %MEMORY

  ; Code: cmpq (%rcx,%rdx,8), %rax	 RIP: 44d496	 Bytes: 4
  %loadMem_44d496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d496 = call %struct.Memory* @routine_cmpq___rcx__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d496)
  store %struct.Memory* %call_44d496, %struct.Memory** %MEMORY

  ; Code: je .L_44d4a7	 RIP: 44d49a	 Bytes: 6
  %loadMem_44d49a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d49a = call %struct.Memory* @routine_je_.L_44d4a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d49a, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_44d49a, %struct.Memory** %MEMORY

  %loadBr_44d49a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d49a = icmp eq i8 %loadBr_44d49a, 1
  br i1 %cmpBr_44d49a, label %block_.L_44d4a7, label %block_44d4a0

block_44d4a0:
  ; Code: movl $0x1, -0x20(%rbp)	 RIP: 44d4a0	 Bytes: 7
  %loadMem_44d4a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4a0 = call %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4a0)
  store %struct.Memory* %call_44d4a0, %struct.Memory** %MEMORY

  ; Code: .L_44d4a7:	 RIP: 44d4a7	 Bytes: 0
  br label %block_.L_44d4a7
block_.L_44d4a7:

  ; Code: jmpq .L_44d4ac	 RIP: 44d4a7	 Bytes: 5
  %loadMem_44d4a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4a7 = call %struct.Memory* @routine_jmpq_.L_44d4ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4a7, i64 5, i64 5)
  store %struct.Memory* %call_44d4a7, %struct.Memory** %MEMORY

  br label %block_.L_44d4ac

  ; Code: .L_44d4ac:	 RIP: 44d4ac	 Bytes: 0
block_.L_44d4ac:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 44d4ac	 Bytes: 3
  %loadMem_44d4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4ac = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4ac)
  store %struct.Memory* %call_44d4ac, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44d4af	 Bytes: 3
  %loadMem_44d4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4af = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4af)
  store %struct.Memory* %call_44d4af, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 44d4b2	 Bytes: 3
  %loadMem_44d4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4b2 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4b2)
  store %struct.Memory* %call_44d4b2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44d46a	 RIP: 44d4b5	 Bytes: 5
  %loadMem_44d4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4b5 = call %struct.Memory* @routine_jmpq_.L_44d46a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4b5, i64 -75, i64 5)
  store %struct.Memory* %call_44d4b5, %struct.Memory** %MEMORY

  br label %block_.L_44d46a

  ; Code: .L_44d4ba:	 RIP: 44d4ba	 Bytes: 0
block_.L_44d4ba:

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 44d4ba	 Bytes: 4
  %loadMem_44d4ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4ba = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4ba)
  store %struct.Memory* %call_44d4ba, %struct.Memory** %MEMORY

  ; Code: jne .L_44d4fa	 RIP: 44d4be	 Bytes: 6
  %loadMem_44d4be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4be = call %struct.Memory* @routine_jne_.L_44d4fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4be, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_44d4be, %struct.Memory** %MEMORY

  %loadBr_44d4be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d4be = icmp eq i8 %loadBr_44d4be, 1
  br i1 %cmpBr_44d4be, label %block_.L_44d4fa, label %block_44d4c4

block_44d4c4:
  ; Code: movq 0x722b28, %rax	 RIP: 44d4c4	 Bytes: 8
  %loadMem_44d4c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4c4 = call %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4c4)
  store %struct.Memory* %call_44d4c4, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 44d4cc	 Bytes: 3
  %loadMem_44d4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4cc = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4cc)
  store %struct.Memory* %call_44d4cc, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x50(%rbp)	 RIP: 44d4cf	 Bytes: 4
  %loadMem_44d4cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4cf = call %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4cf)
  store %struct.Memory* %call_44d4cf, %struct.Memory** %MEMORY

  ; Code: movq 0x722b28, %rax	 RIP: 44d4d3	 Bytes: 8
  %loadMem_44d4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4d3 = call %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4d3)
  store %struct.Memory* %call_44d4d3, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 44d4db	 Bytes: 4
  %loadMem_44d4db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4db = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4db)
  store %struct.Memory* %call_44d4db, %struct.Memory** %MEMORY

  ; Code: movq 0x722b28, %rcx	 RIP: 44d4df	 Bytes: 8
  %loadMem_44d4df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4df = call %struct.Memory* @routine_movq_0x722b28___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4df)
  store %struct.Memory* %call_44d4df, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 44d4e7	 Bytes: 3
  %loadMem_44d4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4e7 = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4e7)
  store %struct.Memory* %call_44d4e7, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rax	 RIP: 44d4ea	 Bytes: 4
  %loadMem_44d4ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4ea = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4ea)
  store %struct.Memory* %call_44d4ea, %struct.Memory** %MEMORY

  ; Code: movq 0x722b28, %rcx	 RIP: 44d4ee	 Bytes: 8
  %loadMem_44d4ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4ee = call %struct.Memory* @routine_movq_0x722b28___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4ee)
  store %struct.Memory* %call_44d4ee, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8(%rcx)	 RIP: 44d4f6	 Bytes: 4
  %loadMem_44d4f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4f6 = call %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4f6)
  store %struct.Memory* %call_44d4f6, %struct.Memory** %MEMORY

  ; Code: .L_44d4fa:	 RIP: 44d4fa	 Bytes: 0
  br label %block_.L_44d4fa
block_.L_44d4fa:

  ; Code: jmpq .L_44d4ff	 RIP: 44d4fa	 Bytes: 5
  %loadMem_44d4fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4fa = call %struct.Memory* @routine_jmpq_.L_44d4ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4fa, i64 5, i64 5)
  store %struct.Memory* %call_44d4fa, %struct.Memory** %MEMORY

  br label %block_.L_44d4ff

  ; Code: .L_44d4ff:	 RIP: 44d4ff	 Bytes: 0
block_.L_44d4ff:

  ; Code: movl 0x7247b0, %eax	 RIP: 44d4ff	 Bytes: 7
  %loadMem_44d4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d4ff = call %struct.Memory* @routine_movl_0x7247b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d4ff)
  store %struct.Memory* %call_44d4ff, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 44d506	 Bytes: 8
  %loadMem_44d506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d506 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d506)
  store %struct.Memory* %call_44d506, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11940(%rcx), %eax	 RIP: 44d50e	 Bytes: 6
  %loadMem_44d50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d50e = call %struct.Memory* @routine_cmpl_0x11940__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d50e)
  store %struct.Memory* %call_44d50e, %struct.Memory** %MEMORY

  ; Code: jge .L_44d52c	 RIP: 44d514	 Bytes: 6
  %loadMem_44d514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d514 = call %struct.Memory* @routine_jge_.L_44d52c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d514, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_44d514, %struct.Memory** %MEMORY

  %loadBr_44d514 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d514 = icmp eq i8 %loadBr_44d514, 1
  br i1 %cmpBr_44d514, label %block_.L_44d52c, label %block_44d51a

block_44d51a:
  ; Code: movl 0x7247b0, %eax	 RIP: 44d51a	 Bytes: 7
  %loadMem_44d51a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d51a = call %struct.Memory* @routine_movl_0x7247b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d51a)
  store %struct.Memory* %call_44d51a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xbc(%rbp)	 RIP: 44d521	 Bytes: 6
  %loadMem_44d521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d521 = call %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d521)
  store %struct.Memory* %call_44d521, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44d540	 RIP: 44d527	 Bytes: 5
  %loadMem_44d527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d527 = call %struct.Memory* @routine_jmpq_.L_44d540(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d527, i64 25, i64 5)
  store %struct.Memory* %call_44d527, %struct.Memory** %MEMORY

  br label %block_.L_44d540

  ; Code: .L_44d52c:	 RIP: 44d52c	 Bytes: 0
block_.L_44d52c:

  ; Code: movq 0x6cb900, %rax	 RIP: 44d52c	 Bytes: 8
  %loadMem_44d52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d52c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d52c)
  store %struct.Memory* %call_44d52c, %struct.Memory** %MEMORY

  ; Code: movl 0x11940(%rax), %ecx	 RIP: 44d534	 Bytes: 6
  %loadMem_44d534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d534 = call %struct.Memory* @routine_movl_0x11940__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d534)
  store %struct.Memory* %call_44d534, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xbc(%rbp)	 RIP: 44d53a	 Bytes: 6
  %loadMem_44d53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d53a = call %struct.Memory* @routine_movl__ecx__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d53a)
  store %struct.Memory* %call_44d53a, %struct.Memory** %MEMORY

  ; Code: .L_44d540:	 RIP: 44d540	 Bytes: 0
  br label %block_.L_44d540
block_.L_44d540:

  ; Code: movl -0xbc(%rbp), %eax	 RIP: 44d540	 Bytes: 6
  %loadMem_44d540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d540 = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d540)
  store %struct.Memory* %call_44d540, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x7247b0	 RIP: 44d546	 Bytes: 7
  %loadMem_44d546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d546 = call %struct.Memory* @routine_movl__eax__0x7247b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d546)
  store %struct.Memory* %call_44d546, %struct.Memory** %MEMORY

  ; Code: movl 0x7247b4, %eax	 RIP: 44d54d	 Bytes: 7
  %loadMem_44d54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d54d = call %struct.Memory* @routine_movl_0x7247b4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d54d)
  store %struct.Memory* %call_44d54d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 44d554	 Bytes: 8
  %loadMem_44d554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d554 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d554)
  store %struct.Memory* %call_44d554, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11944(%rcx), %eax	 RIP: 44d55c	 Bytes: 6
  %loadMem_44d55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d55c = call %struct.Memory* @routine_cmpl_0x11944__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d55c)
  store %struct.Memory* %call_44d55c, %struct.Memory** %MEMORY

  ; Code: jge .L_44d57a	 RIP: 44d562	 Bytes: 6
  %loadMem_44d562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d562 = call %struct.Memory* @routine_jge_.L_44d57a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d562, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_44d562, %struct.Memory** %MEMORY

  %loadBr_44d562 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d562 = icmp eq i8 %loadBr_44d562, 1
  br i1 %cmpBr_44d562, label %block_.L_44d57a, label %block_44d568

block_44d568:
  ; Code: movl 0x7247b4, %eax	 RIP: 44d568	 Bytes: 7
  %loadMem_44d568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d568 = call %struct.Memory* @routine_movl_0x7247b4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d568)
  store %struct.Memory* %call_44d568, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc0(%rbp)	 RIP: 44d56f	 Bytes: 6
  %loadMem_44d56f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d56f = call %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d56f)
  store %struct.Memory* %call_44d56f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44d58e	 RIP: 44d575	 Bytes: 5
  %loadMem_44d575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d575 = call %struct.Memory* @routine_jmpq_.L_44d58e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d575, i64 25, i64 5)
  store %struct.Memory* %call_44d575, %struct.Memory** %MEMORY

  br label %block_.L_44d58e

  ; Code: .L_44d57a:	 RIP: 44d57a	 Bytes: 0
block_.L_44d57a:

  ; Code: movq 0x6cb900, %rax	 RIP: 44d57a	 Bytes: 8
  %loadMem_44d57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d57a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d57a)
  store %struct.Memory* %call_44d57a, %struct.Memory** %MEMORY

  ; Code: movl 0x11944(%rax), %ecx	 RIP: 44d582	 Bytes: 6
  %loadMem_44d582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d582 = call %struct.Memory* @routine_movl_0x11944__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d582)
  store %struct.Memory* %call_44d582, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xc0(%rbp)	 RIP: 44d588	 Bytes: 6
  %loadMem_44d588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d588 = call %struct.Memory* @routine_movl__ecx__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d588)
  store %struct.Memory* %call_44d588, %struct.Memory** %MEMORY

  ; Code: .L_44d58e:	 RIP: 44d58e	 Bytes: 0
  br label %block_.L_44d58e
block_.L_44d58e:

  ; Code: movl -0xc0(%rbp), %eax	 RIP: 44d58e	 Bytes: 6
  %loadMem_44d58e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d58e = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d58e)
  store %struct.Memory* %call_44d58e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x7247b4	 RIP: 44d594	 Bytes: 7
  %loadMem_44d594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d594 = call %struct.Memory* @routine_movl__eax__0x7247b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d594)
  store %struct.Memory* %call_44d594, %struct.Memory** %MEMORY

  ; Code: movl 0x7247b0, %eax	 RIP: 44d59b	 Bytes: 7
  %loadMem_44d59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d59b = call %struct.Memory* @routine_movl_0x7247b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d59b)
  store %struct.Memory* %call_44d59b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44d5a2	 Bytes: 3
  %loadMem_44d5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5a2 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5a2)
  store %struct.Memory* %call_44d5a2, %struct.Memory** %MEMORY

  ; Code: .L_44d5a5:	 RIP: 44d5a5	 Bytes: 0
  br label %block_.L_44d5a5
block_.L_44d5a5:

  ; Code: cmpl $0x21, -0x14(%rbp)	 RIP: 44d5a5	 Bytes: 4
  %loadMem_44d5a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5a5 = call %struct.Memory* @routine_cmpl__0x21__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5a5)
  store %struct.Memory* %call_44d5a5, %struct.Memory** %MEMORY

  ; Code: jae .L_44d5d2	 RIP: 44d5a9	 Bytes: 6
  %loadMem_44d5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5a9 = call %struct.Memory* @routine_jae_.L_44d5d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5a9, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_44d5a9, %struct.Memory** %MEMORY

  %loadBr_44d5a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d5a9 = icmp eq i8 %loadBr_44d5a9, 1
  br i1 %cmpBr_44d5a9, label %block_.L_44d5d2, label %block_44d5af

block_44d5af:
  ; Code: movq 0x722b20, %rax	 RIP: 44d5af	 Bytes: 8
  %loadMem_44d5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5af = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5af)
  store %struct.Memory* %call_44d5af, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44d5b7	 Bytes: 3
  %loadMem_44d5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5b7 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5b7)
  store %struct.Memory* %call_44d5b7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44d5ba	 Bytes: 2
  %loadMem_44d5ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5ba = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5ba)
  store %struct.Memory* %call_44d5ba, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax,%rdx,8)	 RIP: 44d5bc	 Bytes: 8
  %loadMem_44d5bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5bc = call %struct.Memory* @routine_movq__0x0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5bc)
  store %struct.Memory* %call_44d5bc, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44d5c4	 Bytes: 3
  %loadMem_44d5c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5c4 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5c4)
  store %struct.Memory* %call_44d5c4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44d5c7	 Bytes: 3
  %loadMem_44d5c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5c7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5c7)
  store %struct.Memory* %call_44d5c7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44d5ca	 Bytes: 3
  %loadMem_44d5ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5ca = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5ca)
  store %struct.Memory* %call_44d5ca, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44d5a5	 RIP: 44d5cd	 Bytes: 5
  %loadMem_44d5cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5cd = call %struct.Memory* @routine_jmpq_.L_44d5a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5cd, i64 -40, i64 5)
  store %struct.Memory* %call_44d5cd, %struct.Memory** %MEMORY

  br label %block_.L_44d5a5

  ; Code: .L_44d5d2:	 RIP: 44d5d2	 Bytes: 0
block_.L_44d5d2:

  ; Code: movl 0x7247b4, %eax	 RIP: 44d5d2	 Bytes: 7
  %loadMem_44d5d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5d2 = call %struct.Memory* @routine_movl_0x7247b4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5d2)
  store %struct.Memory* %call_44d5d2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44d5d9	 Bytes: 3
  %loadMem_44d5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5d9 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5d9)
  store %struct.Memory* %call_44d5d9, %struct.Memory** %MEMORY

  ; Code: .L_44d5dc:	 RIP: 44d5dc	 Bytes: 0
  br label %block_.L_44d5dc
block_.L_44d5dc:

  ; Code: cmpl $0x21, -0x14(%rbp)	 RIP: 44d5dc	 Bytes: 4
  %loadMem_44d5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5dc = call %struct.Memory* @routine_cmpl__0x21__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5dc)
  store %struct.Memory* %call_44d5dc, %struct.Memory** %MEMORY

  ; Code: jae .L_44d609	 RIP: 44d5e0	 Bytes: 6
  %loadMem_44d5e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5e0 = call %struct.Memory* @routine_jae_.L_44d609(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5e0, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_44d5e0, %struct.Memory** %MEMORY

  %loadBr_44d5e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d5e0 = icmp eq i8 %loadBr_44d5e0, 1
  br i1 %cmpBr_44d5e0, label %block_.L_44d609, label %block_44d5e6

block_44d5e6:
  ; Code: movq 0x722b28, %rax	 RIP: 44d5e6	 Bytes: 8
  %loadMem_44d5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5e6 = call %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5e6)
  store %struct.Memory* %call_44d5e6, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44d5ee	 Bytes: 3
  %loadMem_44d5ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5ee = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5ee)
  store %struct.Memory* %call_44d5ee, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 44d5f1	 Bytes: 2
  %loadMem_44d5f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5f1 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5f1)
  store %struct.Memory* %call_44d5f1, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax,%rdx,8)	 RIP: 44d5f3	 Bytes: 8
  %loadMem_44d5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5f3 = call %struct.Memory* @routine_movq__0x0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5f3)
  store %struct.Memory* %call_44d5f3, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44d5fb	 Bytes: 3
  %loadMem_44d5fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5fb = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5fb)
  store %struct.Memory* %call_44d5fb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44d5fe	 Bytes: 3
  %loadMem_44d5fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d5fe = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d5fe)
  store %struct.Memory* %call_44d5fe, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44d601	 Bytes: 3
  %loadMem_44d601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d601 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d601)
  store %struct.Memory* %call_44d601, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44d5dc	 RIP: 44d604	 Bytes: 5
  %loadMem_44d604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d604 = call %struct.Memory* @routine_jmpq_.L_44d5dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d604, i64 -40, i64 5)
  store %struct.Memory* %call_44d604, %struct.Memory** %MEMORY

  br label %block_.L_44d5dc

  ; Code: .L_44d609:	 RIP: 44d609	 Bytes: 0
block_.L_44d609:

  ; Code: addq $0xc0, %rsp	 RIP: 44d609	 Bytes: 7
  %loadMem_44d609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d609 = call %struct.Memory* @routine_addq__0xc0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d609)
  store %struct.Memory* %call_44d609, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 44d610	 Bytes: 1
  %loadMem_44d610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d610 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d610)
  store %struct.Memory* %call_44d610, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 44d611	 Bytes: 1
  %loadMem_44d611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44d611 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44d611)
  store %struct.Memory* %call_44d611, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_44d611
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

define %struct.Memory* @routine_subq__0xc0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 192)
  ret %struct.Memory* %12
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x722c98___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x722c98_type* @G_0x722c98 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addl__0x4___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 4)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jne_.L_44c370(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x70eaa8_type* @G_0x70eaa8 to i64))
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %2, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %11 = select i1 %8, i64 %3, i64 %4
  store i64 %11, i64* %10, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jae_.L_44c36b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x70ea90_type* @G_0x70ea90 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x3____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 3)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_44c358(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x0__0x18ec__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6380
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

define %struct.Memory* @routine_je_.L_44c353(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_44c353(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl_0x11b10__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 72464
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %2, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %14 = select i1 %11, i64 %3, i64 %4
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jbe_.L_44c2e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_subl_MINUS0x1c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_jmpq_.L_44c309(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






























define %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl__ecx__0x18dc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6364
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jmpq_.L_44c358(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44c35d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44c21b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44c514(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_44c38d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_44c39b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_jae_.L_44c50f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44c4fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_jbe_.L_44c425(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
























define %struct.Memory* @routine_jmpq_.L_44c44d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_andl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
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


define %struct.Memory* @routine_je_.L_44c4a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_andl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_44c4f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_44c4fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44c501(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44c3a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x2__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44c528(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x4__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_44c543(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x0__0x7247b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7247b0_type* @G_0x7247b0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x7247b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7247b4_type* @G_0x7247b4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_44d609(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44c557(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_44ca44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jne_.L_44c793(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jae_.L_44c61d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jne_.L_44c60a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_je_.L_44c605(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jne_.L_44c605(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl__ecx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_movslq__ecx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
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


define %struct.Memory* @routine_jmpq_.L_44c60a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44c60f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44c568(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x44d620___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x44d620_type* @G__0x44d620 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x722b20___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x722b20_type* @G_0x722b20 to i64))
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


define %struct.Memory* @routine_movq__rdi__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_callq_.qsort_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__eax__0x7247b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7247b0_type* @G_0x7247b0 to i64), i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_cmpl_0x70eaac___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x70eaac_type* @G_0x70eaac to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jae_.L_44c73f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_0x70ea98___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x70ea98_type* @G_0x70ea98 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jne_.L_44c72c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_je_.L_44c727(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl_0x18e4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 6372
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl__ecx__0x18e0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6368
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








































define %struct.Memory* @routine_jmpq_.L_44c72c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44c731(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44c65b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movq__0x44d690___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x44d690_type* @G__0x44d690 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movslq_0x7247b0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x7247b0_type* @G_0x7247b0 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_shlq__0x3___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 3)
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




define %struct.Memory* @routine_subl_0x7247b0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 ptrtoint( %G_0x7247b0_type* @G_0x7247b0 to i64))
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movq__rdi__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x60__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jmpq_.L_44ca34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x70eaa0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x70eaa0_type* @G_0x70eaa0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_callq_.calloc_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_cmpq_MINUS0x38__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jne_.L_44c7c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x4c1921___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c1921_type* @G__0x4c1921 to i64))
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


define %struct.Memory* @routine_cmpq_MINUS0x48__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jne_.L_44c7ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x4c1936___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c1936_type* @G__0x4c1936 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jae_.L_44c86b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_je_.L_44c858(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_jmpq_.L_44c85d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44c806(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movq__0x44d700___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x44d700_type* @G__0x44d700 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rdi__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__0x7247b0___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x7247b0_type* @G__0x7247b0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_xorl__r9d___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_0x722b20___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x722b20_type* @G_0x722b20 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.gen_pic_list_from_frame_list(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jae_.L_44c9cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_movl__esi__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ESI
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






define %struct.Memory* @routine_je_.L_44c95d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












































define %struct.Memory* @routine_je_.L_44c9b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






























define %struct.Memory* @routine_jmpq_.L_44c9be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44c8ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movq__0x44dad0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x44dad0_type* @G__0x44dad0 to i64))
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


define %struct.Memory* @routine_movq__rdi__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x70__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__0x1___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 1)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.free_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jmpq_.L_44d43a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_44cf29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jae_.L_44cb56(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jne_.L_44cb43(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_je_.L_44cb3e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jne_.L_44cb3e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_0x11b08__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
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

define %struct.Memory* @routine_jle_.L_44cb39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x70ea90_type* @G_0x70ea90 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__rcx____rsi__rdi_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RCX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_jmpq_.L_44cb3e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44cb43(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44cb48(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44ca55(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movq__0x44db40___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x44db40_type* @G__0x44db40 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__rdi__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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








define %struct.Memory* @routine_jae_.L_44cc91(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jne_.L_44cc7e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_je_.L_44cc79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jne_.L_44cc79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_44cc74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








































define %struct.Memory* @routine_jmpq_.L_44cc79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44cc7e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44cc83(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44cb90(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movq__0x44dbb0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x44dbb0_type* @G__0x44dbb0 to i64))
  ret %struct.Memory* %11
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








define %struct.Memory* @routine_subl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rdi__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x80__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jge_.L_44cd17(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_0x722b20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x722b20_type* @G_0x722b20 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq_0x722b28___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x722b28_type* @G_0x722b28 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_subl_MINUS0x28__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq__rax____rcx__rsi_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_jmpq_.L_44ccd5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jge_.L_44cd5c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_jmpq_.L_44cd1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__eax__0x7247b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7247b4_type* @G_0x7247b4 to i64), i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_jae_.L_44ce7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jne_.L_44ce6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_je_.L_44ce65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


































































define %struct.Memory* @routine_movq_0x722b28___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x722b28_type* @G_0x722b28 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_jmpq_.L_44ce6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44ce6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44cd74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_movq__rdi__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x88__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq_0x722b28___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x722b28_type* @G_0x722b28 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__rdi__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x90__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jmpq_.L_44d435(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




















define %struct.Memory* @routine_jne_.L_44cf5f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




















define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpq_MINUS0x40__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jne_.L_44cf95(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0x4c194c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c194c_type* @G__0x4c194c to i64))
  ret %struct.Memory* %11
}






















define %struct.Memory* @routine_jne_.L_44cfcb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_movl__0x1__0x7247b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7247b4_type* @G_0x7247b4 to i64), i64 1)
  ret %struct.Memory* %8
}








define %struct.Memory* @routine_jae_.L_44d079(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_je_.L_44d066(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_0x11b0c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72460
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_cmpl_0x24__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 36
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jl_.L_44d061(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jmpq_.L_44d066(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44d06b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44cfe8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movq__0x44dc20___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x44dc20_type* @G__0x44dc20 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__rdi__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
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














define %struct.Memory* @routine_jae_.L_44d146(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_je_.L_44d133(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_jge_.L_44d12e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jmpq_.L_44d133(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_44d138(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44d0b5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movq__0x44dc90___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x44dc90_type* @G__0x44dc90 to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_movq__rdi__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jge_.L_44d1c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_jmpq_.L_44d18c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jge_.L_44d203(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jmpq_.L_44d1cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




















define %struct.Memory* @routine_movq__0x7247b0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x7247b0_type* @G__0x7247b0 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addq__0x4___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
  ret %struct.Memory* %12
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




define %struct.Memory* @routine_movq_0x722b28___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G_0x722b28_type* @G_0x722b28 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rcx__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq_MINUS0xa8__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jae_.L_44d37f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






































define %struct.Memory* @routine_je_.L_44d310(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












































define %struct.Memory* @routine_je_.L_44d36c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






























define %struct.Memory* @routine_jmpq_.L_44d371(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44d27d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movq__rdi__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}
































define %struct.Memory* @routine_movq__rcx__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xb8__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}
























define %struct.Memory* @routine_movl_0x7247b0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x7247b0_type* @G_0x7247b0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl_0x7247b4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x7247b4_type* @G_0x7247b4 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_44d4ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x1__0x7247b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7247b0_type* @G_0x7247b0 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jle_.L_44d4ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_cmpl_0x7247b0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x7247b0_type* @G_0x7247b0 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_44d4ba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpq___rcx__rdx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_je_.L_44d4a7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_44d4ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_44d46a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_44d4fa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_0x722b28___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x722b28_type* @G_0x722b28 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movq__rax____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_44d4ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl_0x11940__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 72000
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_44d52c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_44d540(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_0x11940__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72000
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0xbc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_movl_0x7247b4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x7247b4_type* @G_0x7247b4 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_cmpl_0x11944__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 72004
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_44d57a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_44d58e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_0x11944__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72004
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cmpl__0x21__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 33)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jae_.L_44d5d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0____rax__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_44d5a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jae_.L_44d609(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_jmpq_.L_44d5dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_addq__0xc0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 192)
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

