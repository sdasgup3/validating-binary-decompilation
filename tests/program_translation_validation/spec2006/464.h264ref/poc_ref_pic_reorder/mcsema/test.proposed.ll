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
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70ea90_type = type <{ [8 x i8] }>
@G_0x70ea90= global %G_0x70ea90_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70eaa8_type = type <{ [4 x i8] }>
@G_0x70eaa8= global %G_0x70eaa8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722c98_type = type <{ [4 x i8] }>
@G_0x722c98= global %G_0x722c98_type <{ [4 x i8] c"\00\00\00\00" }>


define %struct.Memory* @poc_ref_pic_reorder(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .poc_ref_pic_reorder:	 RIP: 4a3240	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4a3240	 Bytes: 1
  %loadMem_4a3240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3240 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3240)
  store %struct.Memory* %call_4a3240, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4a3241	 Bytes: 3
  %loadMem_4a3241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3241 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3241)
  store %struct.Memory* %call_4a3241, %struct.Memory** %MEMORY

  ; Code: subq $0x300, %rsp	 RIP: 4a3244	 Bytes: 7
  %loadMem_4a3244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3244 = call %struct.Memory* @routine_subq__0x300___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3244)
  store %struct.Memory* %call_4a3244, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rbp), %eax	 RIP: 4a324b	 Bytes: 3
  %loadMem_4a324b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a324b = call %struct.Memory* @routine_movl_0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a324b)
  store %struct.Memory* %call_4a324b, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r10d	 RIP: 4a324e	 Bytes: 6
  %loadMem_4a324e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a324e = call %struct.Memory* @routine_movl__0x1___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a324e)
  store %struct.Memory* %call_4a324e, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 4a3254	 Bytes: 4
  %loadMem_4a3254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3254 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3254)
  store %struct.Memory* %call_4a3254, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 4a3258	 Bytes: 3
  %loadMem_4a3258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3258 = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3258)
  store %struct.Memory* %call_4a3258, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 4a325b	 Bytes: 4
  %loadMem_4a325b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a325b = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a325b)
  store %struct.Memory* %call_4a325b, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x20(%rbp)	 RIP: 4a325f	 Bytes: 4
  %loadMem_4a325f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a325f = call %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a325f)
  store %struct.Memory* %call_4a325f, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x28(%rbp)	 RIP: 4a3263	 Bytes: 4
  %loadMem_4a3263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3263 = call %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3263)
  store %struct.Memory* %call_4a3263, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x2c(%rbp)	 RIP: 4a3267	 Bytes: 4
  %loadMem_4a3267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3267 = call %struct.Memory* @routine_movl__r9d__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3267)
  store %struct.Memory* %call_4a3267, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 4a326b	 Bytes: 3
  %loadMem_4a326b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a326b = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a326b)
  store %struct.Memory* %call_4a326b, %struct.Memory** %MEMORY

  ; Code: movl 0x722c98, %eax	 RIP: 4a326e	 Bytes: 7
  %loadMem_4a326e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a326e = call %struct.Memory* @routine_movl_0x722c98___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a326e)
  store %struct.Memory* %call_4a326e, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 4a3275	 Bytes: 3
  %loadMem_4a3275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3275 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3275)
  store %struct.Memory* %call_4a3275, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a3278	 Bytes: 2
  %loadMem_4a3278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3278 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3278)
  store %struct.Memory* %call_4a3278, %struct.Memory** %MEMORY

  ; Code: shll %cl, %r10d	 RIP: 4a327a	 Bytes: 3
  %loadMem_4a327a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a327a = call %struct.Memory* @routine_shll__cl___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a327a)
  store %struct.Memory* %call_4a327a, %struct.Memory** %MEMORY

  ; Code: movl %r10d, -0x2f4(%rbp)	 RIP: 4a327d	 Bytes: 7
  %loadMem_4a327d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a327d = call %struct.Memory* @routine_movl__r10d__MINUS0x2f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a327d)
  store %struct.Memory* %call_4a327d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4a3284	 Bytes: 8
  %loadMem_4a3284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3284 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3284)
  store %struct.Memory* %call_4a3284, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rdx)	 RIP: 4a328c	 Bytes: 4
  %loadMem_4a328c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a328c = call %struct.Memory* @routine_cmpl__0x0__0x1c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a328c)
  store %struct.Memory* %call_4a328c, %struct.Memory** %MEMORY

  ; Code: jne .L_4a32b8	 RIP: 4a3290	 Bytes: 6
  %loadMem_4a3290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3290 = call %struct.Memory* @routine_jne_.L_4a32b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3290, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_4a3290, %struct.Memory** %MEMORY

  %loadBr_4a3290 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3290 = icmp eq i8 %loadBr_4a3290, 1
  br i1 %cmpBr_4a3290, label %block_.L_4a32b8, label %block_4a3296

block_4a3296:
  ; Code: movl -0x2f4(%rbp), %eax	 RIP: 4a3296	 Bytes: 6
  %loadMem_4a3296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3296 = call %struct.Memory* @routine_movl_MINUS0x2f4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3296)
  store %struct.Memory* %call_4a3296, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f0(%rbp)	 RIP: 4a329c	 Bytes: 6
  %loadMem_4a329c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a329c = call %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a329c)
  store %struct.Memory* %call_4a329c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4a32a2	 Bytes: 8
  %loadMem_4a32a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32a2 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32a2)
  store %struct.Memory* %call_4a32a2, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rcx), %eax	 RIP: 4a32aa	 Bytes: 6
  %loadMem_4a32aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32aa = call %struct.Memory* @routine_movl_0x11b10__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32aa)
  store %struct.Memory* %call_4a32aa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 4a32b0	 Bytes: 3
  %loadMem_4a32b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32b0 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32b0)
  store %struct.Memory* %call_4a32b0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a32de	 RIP: 4a32b3	 Bytes: 5
  %loadMem_4a32b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32b3 = call %struct.Memory* @routine_jmpq_.L_4a32de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32b3, i64 43, i64 5)
  store %struct.Memory* %call_4a32b3, %struct.Memory** %MEMORY

  br label %block_.L_4a32de

  ; Code: .L_4a32b8:	 RIP: 4a32b8	 Bytes: 0
block_.L_4a32b8:

  ; Code: movl -0x2f4(%rbp), %eax	 RIP: 4a32b8	 Bytes: 6
  %loadMem_4a32b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32b8 = call %struct.Memory* @routine_movl_MINUS0x2f4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32b8)
  store %struct.Memory* %call_4a32b8, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4a32be	 Bytes: 3
  %loadMem_4a32be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32be = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32be)
  store %struct.Memory* %call_4a32be, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f0(%rbp)	 RIP: 4a32c1	 Bytes: 6
  %loadMem_4a32c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32c1 = call %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32c1)
  store %struct.Memory* %call_4a32c1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4a32c7	 Bytes: 8
  %loadMem_4a32c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32c7 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32c7)
  store %struct.Memory* %call_4a32c7, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rcx), %eax	 RIP: 4a32cf	 Bytes: 6
  %loadMem_4a32cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32cf = call %struct.Memory* @routine_movl_0x11b10__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32cf)
  store %struct.Memory* %call_4a32cf, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4a32d5	 Bytes: 3
  %loadMem_4a32d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32d5 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32d5)
  store %struct.Memory* %call_4a32d5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a32d8	 Bytes: 3
  %loadMem_4a32d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32d8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32d8)
  store %struct.Memory* %call_4a32d8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 4a32db	 Bytes: 3
  %loadMem_4a32db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32db = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32db)
  store %struct.Memory* %call_4a32db, %struct.Memory** %MEMORY

  ; Code: .L_4a32de:	 RIP: 4a32de	 Bytes: 0
  br label %block_.L_4a32de
block_.L_4a32de:

  ; Code: movl -0x40(%rbp), %eax	 RIP: 4a32de	 Bytes: 3
  %loadMem_4a32de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32de = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32de)
  store %struct.Memory* %call_4a32de, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 4a32e1	 Bytes: 3
  %loadMem_4a32e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32e1 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32e1)
  store %struct.Memory* %call_4a32e1, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x34(%rbp)	 RIP: 4a32e4	 Bytes: 7
  %loadMem_4a32e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32e4 = call %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32e4)
  store %struct.Memory* %call_4a32e4, %struct.Memory** %MEMORY

  ; Code: .L_4a32eb:	 RIP: 4a32eb	 Bytes: 0
  br label %block_.L_4a32eb
block_.L_4a32eb:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a32eb	 Bytes: 3
  %loadMem_4a32eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32eb = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32eb)
  store %struct.Memory* %call_4a32eb, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4a32ee	 Bytes: 3
  %loadMem_4a32ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32ee = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32ee)
  store %struct.Memory* %call_4a32ee, %struct.Memory** %MEMORY

  ; Code: jae .L_4a3324	 RIP: 4a32f1	 Bytes: 6
  %loadMem_4a32f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32f1 = call %struct.Memory* @routine_jae_.L_4a3324(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32f1, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_4a32f1, %struct.Memory** %MEMORY

  %loadBr_4a32f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a32f1 = icmp eq i8 %loadBr_4a32f1, 1
  br i1 %cmpBr_4a32f1, label %block_.L_4a3324, label %block_4a32f7

block_4a32f7:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4a32f7	 Bytes: 4
  %loadMem_4a32f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32f7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32f7)
  store %struct.Memory* %call_4a32f7, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 4a32fb	 Bytes: 3
  %loadMem_4a32fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32fb = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32fb)
  store %struct.Memory* %call_4a32fb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4a32fe	 Bytes: 2
  %loadMem_4a32fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a32fe = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a32fe)
  store %struct.Memory* %call_4a32fe, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4a3300	 Bytes: 4
  %loadMem_4a3300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3300 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3300)
  store %struct.Memory* %call_4a3300, %struct.Memory** %MEMORY

  ; Code: movl 0x18dc(%rax), %ecx	 RIP: 4a3304	 Bytes: 6
  %loadMem_4a3304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3304 = call %struct.Memory* @routine_movl_0x18dc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3304)
  store %struct.Memory* %call_4a3304, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4a330a	 Bytes: 3
  %loadMem_4a330a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a330a = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a330a)
  store %struct.Memory* %call_4a330a, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 4a330d	 Bytes: 2
  %loadMem_4a330d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a330d = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a330d)
  store %struct.Memory* %call_4a330d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xd0(%rbp,%rax,4)	 RIP: 4a330f	 Bytes: 7
  %loadMem_4a330f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a330f = call %struct.Memory* @routine_movl__ecx__MINUS0xd0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a330f)
  store %struct.Memory* %call_4a330f, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a3316	 Bytes: 3
  %loadMem_4a3316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3316 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3316)
  store %struct.Memory* %call_4a3316, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a3319	 Bytes: 3
  %loadMem_4a3319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3319 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3319)
  store %struct.Memory* %call_4a3319, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 4a331c	 Bytes: 3
  %loadMem_4a331c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a331c = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a331c)
  store %struct.Memory* %call_4a331c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a32eb	 RIP: 4a331f	 Bytes: 5
  %loadMem_4a331f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a331f = call %struct.Memory* @routine_jmpq_.L_4a32eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a331f, i64 -52, i64 5)
  store %struct.Memory* %call_4a331f, %struct.Memory** %MEMORY

  br label %block_.L_4a32eb

  ; Code: .L_4a3324:	 RIP: 4a3324	 Bytes: 0
block_.L_4a3324:

  ; Code: movl $0x0, -0x34(%rbp)	 RIP: 4a3324	 Bytes: 7
  %loadMem_4a3324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3324 = call %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3324)
  store %struct.Memory* %call_4a3324, %struct.Memory** %MEMORY

  ; Code: .L_4a332b:	 RIP: 4a332b	 Bytes: 0
  br label %block_.L_4a332b
block_.L_4a332b:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a332b	 Bytes: 3
  %loadMem_4a332b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a332b = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a332b)
  store %struct.Memory* %call_4a332b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaa8, %eax	 RIP: 4a332e	 Bytes: 7
  %loadMem_4a332e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a332e = call %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a332e)
  store %struct.Memory* %call_4a332e, %struct.Memory** %MEMORY

  ; Code: jae .L_4a34ca	 RIP: 4a3335	 Bytes: 6
  %loadMem_4a3335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3335 = call %struct.Memory* @routine_jae_.L_4a34ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3335, i8* %BRANCH_TAKEN, i64 405, i64 6, i64 6)
  store %struct.Memory* %call_4a3335, %struct.Memory** %MEMORY

  %loadBr_4a3335 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3335 = icmp eq i8 %loadBr_4a3335, 1
  br i1 %cmpBr_4a3335, label %block_.L_4a34ca, label %block_4a333b

block_4a333b:
  ; Code: movq 0x70ea90, %rax	 RIP: 4a333b	 Bytes: 8
  %loadMem_4a333b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a333b = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a333b)
  store %struct.Memory* %call_4a333b, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 4a3343	 Bytes: 3
  %loadMem_4a3343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3343 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3343)
  store %struct.Memory* %call_4a3343, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4a3346	 Bytes: 2
  %loadMem_4a3346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3346 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3346)
  store %struct.Memory* %call_4a3346, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4a3348	 Bytes: 4
  %loadMem_4a3348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3348 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3348)
  store %struct.Memory* %call_4a3348, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4a334c	 Bytes: 4
  %loadMem_4a334c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a334c = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a334c)
  store %struct.Memory* %call_4a334c, %struct.Memory** %MEMORY

  ; Code: movl 0x18dc(%rax), %ecx	 RIP: 4a3350	 Bytes: 6
  %loadMem_4a3350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3350 = call %struct.Memory* @routine_movl_0x18dc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3350)
  store %struct.Memory* %call_4a3350, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4a3356	 Bytes: 3
  %loadMem_4a3356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3356 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3356)
  store %struct.Memory* %call_4a3356, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 4a3359	 Bytes: 2
  %loadMem_4a3359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3359 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3359)
  store %struct.Memory* %call_4a3359, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x150(%rbp,%rax,4)	 RIP: 4a335b	 Bytes: 7
  %loadMem_4a335b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a335b = call %struct.Memory* @routine_movl__ecx__MINUS0x150__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a335b)
  store %struct.Memory* %call_4a335b, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 4a3362	 Bytes: 8
  %loadMem_4a3362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3362 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3362)
  store %struct.Memory* %call_4a3362, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 4a336a	 Bytes: 3
  %loadMem_4a336a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a336a = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a336a)
  store %struct.Memory* %call_4a336a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4a336d	 Bytes: 2
  %loadMem_4a336d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a336d = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a336d)
  store %struct.Memory* %call_4a336d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4a336f	 Bytes: 4
  %loadMem_4a336f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a336f = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a336f)
  store %struct.Memory* %call_4a336f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, (%rax)	 RIP: 4a3373	 Bytes: 3
  %loadMem_4a3373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3373 = call %struct.Memory* @routine_cmpl__0x3____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3373)
  store %struct.Memory* %call_4a3373, %struct.Memory** %MEMORY

  ; Code: jne .L_4a34b7	 RIP: 4a3376	 Bytes: 6
  %loadMem_4a3376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3376 = call %struct.Memory* @routine_jne_.L_4a34b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3376, i8* %BRANCH_TAKEN, i64 321, i64 6, i64 6)
  store %struct.Memory* %call_4a3376, %struct.Memory** %MEMORY

  %loadBr_4a3376 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3376 = icmp eq i8 %loadBr_4a3376, 1
  br i1 %cmpBr_4a3376, label %block_.L_4a34b7, label %block_4a337c

block_4a337c:
  ; Code: movq 0x70ea90, %rax	 RIP: 4a337c	 Bytes: 8
  %loadMem_4a337c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a337c = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a337c)
  store %struct.Memory* %call_4a337c, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 4a3384	 Bytes: 3
  %loadMem_4a3384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3384 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3384)
  store %struct.Memory* %call_4a3384, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4a3387	 Bytes: 2
  %loadMem_4a3387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3387 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3387)
  store %struct.Memory* %call_4a3387, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4a3389	 Bytes: 4
  %loadMem_4a3389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3389 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3389)
  store %struct.Memory* %call_4a3389, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4a338d	 Bytes: 4
  %loadMem_4a338d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a338d = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a338d)
  store %struct.Memory* %call_4a338d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18ec(%rax)	 RIP: 4a3391	 Bytes: 7
  %loadMem_4a3391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3391 = call %struct.Memory* @routine_cmpl__0x0__0x18ec__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3391)
  store %struct.Memory* %call_4a3391, %struct.Memory** %MEMORY

  ; Code: je .L_4a34b7	 RIP: 4a3398	 Bytes: 6
  %loadMem_4a3398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3398 = call %struct.Memory* @routine_je_.L_4a34b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3398, i8* %BRANCH_TAKEN, i64 287, i64 6, i64 6)
  store %struct.Memory* %call_4a3398, %struct.Memory** %MEMORY

  %loadBr_4a3398 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3398 = icmp eq i8 %loadBr_4a3398, 1
  br i1 %cmpBr_4a3398, label %block_.L_4a34b7, label %block_4a339e

block_4a339e:
  ; Code: movq 0x70ea90, %rax	 RIP: 4a339e	 Bytes: 8
  %loadMem_4a339e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a339e = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a339e)
  store %struct.Memory* %call_4a339e, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 4a33a6	 Bytes: 3
  %loadMem_4a33a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33a6 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33a6)
  store %struct.Memory* %call_4a33a6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4a33a9	 Bytes: 2
  %loadMem_4a33a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33a9 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33a9)
  store %struct.Memory* %call_4a33a9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4a33ab	 Bytes: 4
  %loadMem_4a33ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33ab = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33ab)
  store %struct.Memory* %call_4a33ab, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4a33af	 Bytes: 4
  %loadMem_4a33af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33af = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33af)
  store %struct.Memory* %call_4a33af, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18e8(%rax)	 RIP: 4a33b3	 Bytes: 7
  %loadMem_4a33b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33b3 = call %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33b3)
  store %struct.Memory* %call_4a33b3, %struct.Memory** %MEMORY

  ; Code: jne .L_4a34b7	 RIP: 4a33ba	 Bytes: 6
  %loadMem_4a33ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33ba = call %struct.Memory* @routine_jne_.L_4a34b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33ba, i8* %BRANCH_TAKEN, i64 253, i64 6, i64 6)
  store %struct.Memory* %call_4a33ba, %struct.Memory** %MEMORY

  %loadBr_4a33ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a33ba = icmp eq i8 %loadBr_4a33ba, 1
  br i1 %cmpBr_4a33ba, label %block_.L_4a34b7, label %block_4a33c0

block_4a33c0:
  ; Code: movq 0x70ea90, %rax	 RIP: 4a33c0	 Bytes: 8
  %loadMem_4a33c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33c0 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33c0)
  store %struct.Memory* %call_4a33c0, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 4a33c8	 Bytes: 3
  %loadMem_4a33c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33c8 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33c8)
  store %struct.Memory* %call_4a33c8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4a33cb	 Bytes: 2
  %loadMem_4a33cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33cb = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33cb)
  store %struct.Memory* %call_4a33cb, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4a33cd	 Bytes: 4
  %loadMem_4a33cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33cd = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33cd)
  store %struct.Memory* %call_4a33cd, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4a33d1	 Bytes: 4
  %loadMem_4a33d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33d1 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33d1)
  store %struct.Memory* %call_4a33d1, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 4a33d5	 Bytes: 3
  %loadMem_4a33d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33d5 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33d5)
  store %struct.Memory* %call_4a33d5, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 4a33d8	 Bytes: 8
  %loadMem_4a33d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33d8 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33d8)
  store %struct.Memory* %call_4a33d8, %struct.Memory** %MEMORY

  ; Code: subl 0x4(%rax), %ecx	 RIP: 4a33e0	 Bytes: 3
  %loadMem_4a33e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33e0 = call %struct.Memory* @routine_subl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33e0)
  store %struct.Memory* %call_4a33e0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edi	 RIP: 4a33e3	 Bytes: 2
  %loadMem_4a33e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33e3 = call %struct.Memory* @routine_movl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33e3)
  store %struct.Memory* %call_4a33e3, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 4a33e5	 Bytes: 5
  %loadMem1_4a33e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a33e5 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a33e5, i64 -664549, i64 5, i64 5)
  store %struct.Memory* %call1_4a33e5, %struct.Memory** %MEMORY

  %loadMem2_4a33e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a33e5 = load i64, i64* %3
  %call2_4a33e5 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_4a33e5, %struct.Memory* %loadMem2_4a33e5)
  store %struct.Memory* %call2_4a33e5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2ec(%rbp)	 RIP: 4a33ea	 Bytes: 6
  %loadMem_4a33ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33ea = call %struct.Memory* @routine_movl__eax__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33ea)
  store %struct.Memory* %call_4a33ea, %struct.Memory** %MEMORY

  ; Code: movl -0x2ec(%rbp), %eax	 RIP: 4a33f0	 Bytes: 6
  %loadMem_4a33f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33f0 = call %struct.Memory* @routine_movl_MINUS0x2ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33f0)
  store %struct.Memory* %call_4a33f0, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 4a33f6	 Bytes: 3
  %loadMem_4a33f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33f6 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33f6)
  store %struct.Memory* %call_4a33f6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4a33f9	 Bytes: 2
  %loadMem_4a33f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33f9 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33f9)
  store %struct.Memory* %call_4a33f9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e0(%rbp,%rdx,4)	 RIP: 4a33fb	 Bytes: 7
  %loadMem_4a33fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a33fb = call %struct.Memory* @routine_movl__eax__MINUS0x2e0__rbp__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a33fb)
  store %struct.Memory* %call_4a33fb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x30(%rbp)	 RIP: 4a3402	 Bytes: 4
  %loadMem_4a3402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3402 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3402)
  store %struct.Memory* %call_4a3402, %struct.Memory** %MEMORY

  ; Code: jne .L_4a345f	 RIP: 4a3406	 Bytes: 6
  %loadMem_4a3406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3406 = call %struct.Memory* @routine_jne_.L_4a345f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3406, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_4a3406, %struct.Memory** %MEMORY

  %loadBr_4a3406 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3406 = icmp eq i8 %loadBr_4a3406, 1
  br i1 %cmpBr_4a3406, label %block_.L_4a345f, label %block_4a340c

block_4a340c:
  ; Code: movq 0x70fcf0, %rax	 RIP: 4a340c	 Bytes: 8
  %loadMem_4a340c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a340c = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a340c)
  store %struct.Memory* %call_4a340c, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 4a3414	 Bytes: 3
  %loadMem_4a3414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3414 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3414)
  store %struct.Memory* %call_4a3414, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 4a3417	 Bytes: 8
  %loadMem_4a3417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3417 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3417)
  store %struct.Memory* %call_4a3417, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 4a341f	 Bytes: 3
  %loadMem_4a341f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a341f = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a341f)
  store %struct.Memory* %call_4a341f, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 4a3422	 Bytes: 2
  %loadMem_4a3422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3422 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3422)
  store %struct.Memory* %call_4a3422, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rsi,8), %rax	 RIP: 4a3424	 Bytes: 4
  %loadMem_4a3424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3424 = call %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3424)
  store %struct.Memory* %call_4a3424, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4a3428	 Bytes: 4
  %loadMem_4a3428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3428 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3428)
  store %struct.Memory* %call_4a3428, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %ecx	 RIP: 4a342c	 Bytes: 3
  %loadMem_4a342c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a342c = call %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a342c)
  store %struct.Memory* %call_4a342c, %struct.Memory** %MEMORY

  ; Code: jge .L_4a344a	 RIP: 4a342f	 Bytes: 6
  %loadMem_4a342f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a342f = call %struct.Memory* @routine_jge_.L_4a344a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a342f, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4a342f, %struct.Memory** %MEMORY

  %loadBr_4a342f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a342f = icmp eq i8 %loadBr_4a342f, 1
  br i1 %cmpBr_4a342f, label %block_.L_4a344a, label %block_4a3435

block_4a3435:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a3435	 Bytes: 3
  %loadMem_4a3435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3435 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3435)
  store %struct.Memory* %call_4a3435, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a3438	 Bytes: 2
  %loadMem_4a3438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3438 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3438)
  store %struct.Memory* %call_4a3438, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x250(%rbp,%rcx,4)	 RIP: 4a343a	 Bytes: 11
  %loadMem_4a343a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a343a = call %struct.Memory* @routine_movl__0x1__MINUS0x250__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a343a)
  store %struct.Memory* %call_4a343a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a345a	 RIP: 4a3445	 Bytes: 5
  %loadMem_4a3445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3445 = call %struct.Memory* @routine_jmpq_.L_4a345a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3445, i64 21, i64 5)
  store %struct.Memory* %call_4a3445, %struct.Memory** %MEMORY

  br label %block_.L_4a345a

  ; Code: .L_4a344a:	 RIP: 4a344a	 Bytes: 0
block_.L_4a344a:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a344a	 Bytes: 3
  %loadMem_4a344a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a344a = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a344a)
  store %struct.Memory* %call_4a344a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a344d	 Bytes: 2
  %loadMem_4a344d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a344d = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a344d)
  store %struct.Memory* %call_4a344d, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x250(%rbp,%rcx,4)	 RIP: 4a344f	 Bytes: 11
  %loadMem_4a344f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a344f = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x250__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a344f)
  store %struct.Memory* %call_4a344f, %struct.Memory** %MEMORY

  ; Code: .L_4a345a:	 RIP: 4a345a	 Bytes: 0
  br label %block_.L_4a345a
block_.L_4a345a:

  ; Code: jmpq .L_4a34b2	 RIP: 4a345a	 Bytes: 5
  %loadMem_4a345a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a345a = call %struct.Memory* @routine_jmpq_.L_4a34b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a345a, i64 88, i64 5)
  store %struct.Memory* %call_4a345a, %struct.Memory** %MEMORY

  br label %block_.L_4a34b2

  ; Code: .L_4a345f:	 RIP: 4a345f	 Bytes: 0
block_.L_4a345f:

  ; Code: movq 0x70fcf0, %rax	 RIP: 4a345f	 Bytes: 8
  %loadMem_4a345f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a345f = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a345f)
  store %struct.Memory* %call_4a345f, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 4a3467	 Bytes: 3
  %loadMem_4a3467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3467 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3467)
  store %struct.Memory* %call_4a3467, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 4a346a	 Bytes: 8
  %loadMem_4a346a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a346a = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a346a)
  store %struct.Memory* %call_4a346a, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 4a3472	 Bytes: 3
  %loadMem_4a3472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3472 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3472)
  store %struct.Memory* %call_4a3472, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 4a3475	 Bytes: 2
  %loadMem_4a3475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3475 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3475)
  store %struct.Memory* %call_4a3475, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rsi,8), %rax	 RIP: 4a3477	 Bytes: 4
  %loadMem_4a3477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3477 = call %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3477)
  store %struct.Memory* %call_4a3477, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4a347b	 Bytes: 4
  %loadMem_4a347b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a347b = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a347b)
  store %struct.Memory* %call_4a347b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %ecx	 RIP: 4a347f	 Bytes: 3
  %loadMem_4a347f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a347f = call %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a347f)
  store %struct.Memory* %call_4a347f, %struct.Memory** %MEMORY

  ; Code: jle .L_4a349d	 RIP: 4a3482	 Bytes: 6
  %loadMem_4a3482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3482 = call %struct.Memory* @routine_jle_.L_4a349d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3482, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4a3482, %struct.Memory** %MEMORY

  %loadBr_4a3482 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3482 = icmp eq i8 %loadBr_4a3482, 1
  br i1 %cmpBr_4a3482, label %block_.L_4a349d, label %block_4a3488

block_4a3488:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a3488	 Bytes: 3
  %loadMem_4a3488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3488 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3488)
  store %struct.Memory* %call_4a3488, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a348b	 Bytes: 2
  %loadMem_4a348b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a348b = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a348b)
  store %struct.Memory* %call_4a348b, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x250(%rbp,%rcx,4)	 RIP: 4a348d	 Bytes: 11
  %loadMem_4a348d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a348d = call %struct.Memory* @routine_movl__0x1__MINUS0x250__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a348d)
  store %struct.Memory* %call_4a348d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a34ad	 RIP: 4a3498	 Bytes: 5
  %loadMem_4a3498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3498 = call %struct.Memory* @routine_jmpq_.L_4a34ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3498, i64 21, i64 5)
  store %struct.Memory* %call_4a3498, %struct.Memory** %MEMORY

  br label %block_.L_4a34ad

  ; Code: .L_4a349d:	 RIP: 4a349d	 Bytes: 0
block_.L_4a349d:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a349d	 Bytes: 3
  %loadMem_4a349d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a349d = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a349d)
  store %struct.Memory* %call_4a349d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a34a0	 Bytes: 2
  %loadMem_4a34a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34a0 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34a0)
  store %struct.Memory* %call_4a34a0, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x250(%rbp,%rcx,4)	 RIP: 4a34a2	 Bytes: 11
  %loadMem_4a34a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34a2 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x250__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34a2)
  store %struct.Memory* %call_4a34a2, %struct.Memory** %MEMORY

  ; Code: .L_4a34ad:	 RIP: 4a34ad	 Bytes: 0
  br label %block_.L_4a34ad
block_.L_4a34ad:

  ; Code: jmpq .L_4a34b2	 RIP: 4a34ad	 Bytes: 5
  %loadMem_4a34ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34ad = call %struct.Memory* @routine_jmpq_.L_4a34b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34ad, i64 5, i64 5)
  store %struct.Memory* %call_4a34ad, %struct.Memory** %MEMORY

  br label %block_.L_4a34b2

  ; Code: .L_4a34b2:	 RIP: 4a34b2	 Bytes: 0
block_.L_4a34b2:

  ; Code: jmpq .L_4a34b7	 RIP: 4a34b2	 Bytes: 5
  %loadMem_4a34b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34b2 = call %struct.Memory* @routine_jmpq_.L_4a34b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34b2, i64 5, i64 5)
  store %struct.Memory* %call_4a34b2, %struct.Memory** %MEMORY

  br label %block_.L_4a34b7

  ; Code: .L_4a34b7:	 RIP: 4a34b7	 Bytes: 0
block_.L_4a34b7:

  ; Code: jmpq .L_4a34bc	 RIP: 4a34b7	 Bytes: 5
  %loadMem_4a34b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34b7 = call %struct.Memory* @routine_jmpq_.L_4a34bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34b7, i64 5, i64 5)
  store %struct.Memory* %call_4a34b7, %struct.Memory** %MEMORY

  br label %block_.L_4a34bc

  ; Code: .L_4a34bc:	 RIP: 4a34bc	 Bytes: 0
block_.L_4a34bc:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a34bc	 Bytes: 3
  %loadMem_4a34bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34bc = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34bc)
  store %struct.Memory* %call_4a34bc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a34bf	 Bytes: 3
  %loadMem_4a34bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34bf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34bf)
  store %struct.Memory* %call_4a34bf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 4a34c2	 Bytes: 3
  %loadMem_4a34c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34c2 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34c2)
  store %struct.Memory* %call_4a34c2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a332b	 RIP: 4a34c5	 Bytes: 5
  %loadMem_4a34c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34c5 = call %struct.Memory* @routine_jmpq_.L_4a332b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34c5, i64 -410, i64 5)
  store %struct.Memory* %call_4a34c5, %struct.Memory** %MEMORY

  br label %block_.L_4a332b

  ; Code: .L_4a34ca:	 RIP: 4a34ca	 Bytes: 0
block_.L_4a34ca:

  ; Code: movl $0x0, -0x34(%rbp)	 RIP: 4a34ca	 Bytes: 7
  %loadMem_4a34ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34ca = call %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34ca)
  store %struct.Memory* %call_4a34ca, %struct.Memory** %MEMORY

  ; Code: .L_4a34d1:	 RIP: 4a34d1	 Bytes: 0
  br label %block_.L_4a34d1
block_.L_4a34d1:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a34d1	 Bytes: 3
  %loadMem_4a34d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34d1 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34d1)
  store %struct.Memory* %call_4a34d1, %struct.Memory** %MEMORY

  ; Code: movl 0x70eaa8, %ecx	 RIP: 4a34d4	 Bytes: 7
  %loadMem_4a34d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34d4 = call %struct.Memory* @routine_movl_0x70eaa8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34d4)
  store %struct.Memory* %call_4a34d4, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4a34db	 Bytes: 3
  %loadMem_4a34db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34db = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34db)
  store %struct.Memory* %call_4a34db, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4a34de	 Bytes: 2
  %loadMem_4a34de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34de = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34de)
  store %struct.Memory* %call_4a34de, %struct.Memory** %MEMORY

  ; Code: jae .L_4a3633	 RIP: 4a34e0	 Bytes: 6
  %loadMem_4a34e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34e0 = call %struct.Memory* @routine_jae_.L_4a3633(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34e0, i8* %BRANCH_TAKEN, i64 339, i64 6, i64 6)
  store %struct.Memory* %call_4a34e0, %struct.Memory** %MEMORY

  %loadBr_4a34e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a34e0 = icmp eq i8 %loadBr_4a34e0, 1
  br i1 %cmpBr_4a34e0, label %block_.L_4a3633, label %block_4a34e6

block_4a34e6:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a34e6	 Bytes: 3
  %loadMem_4a34e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34e6 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34e6)
  store %struct.Memory* %call_4a34e6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a34e9	 Bytes: 3
  %loadMem_4a34e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34e9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34e9)
  store %struct.Memory* %call_4a34e9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 4a34ec	 Bytes: 3
  %loadMem_4a34ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34ec = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34ec)
  store %struct.Memory* %call_4a34ec, %struct.Memory** %MEMORY

  ; Code: .L_4a34ef:	 RIP: 4a34ef	 Bytes: 0
  br label %block_.L_4a34ef
block_.L_4a34ef:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a34ef	 Bytes: 3
  %loadMem_4a34ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34ef = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34ef)
  store %struct.Memory* %call_4a34ef, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaa8, %eax	 RIP: 4a34f2	 Bytes: 7
  %loadMem_4a34f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34f2 = call %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34f2)
  store %struct.Memory* %call_4a34f2, %struct.Memory** %MEMORY

  ; Code: jae .L_4a3620	 RIP: 4a34f9	 Bytes: 6
  %loadMem_4a34f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34f9 = call %struct.Memory* @routine_jae_.L_4a3620(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34f9, i8* %BRANCH_TAKEN, i64 295, i64 6, i64 6)
  store %struct.Memory* %call_4a34f9, %struct.Memory** %MEMORY

  %loadBr_4a34f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a34f9 = icmp eq i8 %loadBr_4a34f9, 1
  br i1 %cmpBr_4a34f9, label %block_.L_4a3620, label %block_4a34ff

block_4a34ff:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a34ff	 Bytes: 3
  %loadMem_4a34ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a34ff = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a34ff)
  store %struct.Memory* %call_4a34ff, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a3502	 Bytes: 2
  %loadMem_4a3502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3502 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3502)
  store %struct.Memory* %call_4a3502, %struct.Memory** %MEMORY

  ; Code: movl -0x2e0(%rbp,%rcx,4), %eax	 RIP: 4a3504	 Bytes: 7
  %loadMem_4a3504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3504 = call %struct.Memory* @routine_movl_MINUS0x2e0__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3504)
  store %struct.Memory* %call_4a3504, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 4a350b	 Bytes: 3
  %loadMem_4a350b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a350b = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a350b)
  store %struct.Memory* %call_4a350b, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a350e	 Bytes: 2
  %loadMem_4a350e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a350e = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a350e)
  store %struct.Memory* %call_4a350e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2e0(%rbp,%rcx,4), %eax	 RIP: 4a3510	 Bytes: 7
  %loadMem_4a3510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3510 = call %struct.Memory* @routine_cmpl_MINUS0x2e0__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3510)
  store %struct.Memory* %call_4a3510, %struct.Memory** %MEMORY

  ; Code: jg .L_4a3559	 RIP: 4a3517	 Bytes: 6
  %loadMem_4a3517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3517 = call %struct.Memory* @routine_jg_.L_4a3559(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3517, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_4a3517, %struct.Memory** %MEMORY

  %loadBr_4a3517 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3517 = icmp eq i8 %loadBr_4a3517, 1
  br i1 %cmpBr_4a3517, label %block_.L_4a3559, label %block_4a351d

block_4a351d:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a351d	 Bytes: 3
  %loadMem_4a351d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a351d = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a351d)
  store %struct.Memory* %call_4a351d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a3520	 Bytes: 2
  %loadMem_4a3520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3520 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3520)
  store %struct.Memory* %call_4a3520, %struct.Memory** %MEMORY

  ; Code: movl -0x2e0(%rbp,%rcx,4), %eax	 RIP: 4a3522	 Bytes: 7
  %loadMem_4a3522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3522 = call %struct.Memory* @routine_movl_MINUS0x2e0__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3522)
  store %struct.Memory* %call_4a3522, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 4a3529	 Bytes: 3
  %loadMem_4a3529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3529 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3529)
  store %struct.Memory* %call_4a3529, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a352c	 Bytes: 2
  %loadMem_4a352c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a352c = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a352c)
  store %struct.Memory* %call_4a352c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2e0(%rbp,%rcx,4), %eax	 RIP: 4a352e	 Bytes: 7
  %loadMem_4a352e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a352e = call %struct.Memory* @routine_cmpl_MINUS0x2e0__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a352e)
  store %struct.Memory* %call_4a352e, %struct.Memory** %MEMORY

  ; Code: jne .L_4a360d	 RIP: 4a3535	 Bytes: 6
  %loadMem_4a3535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3535 = call %struct.Memory* @routine_jne_.L_4a360d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3535, i8* %BRANCH_TAKEN, i64 216, i64 6, i64 6)
  store %struct.Memory* %call_4a3535, %struct.Memory** %MEMORY

  %loadBr_4a3535 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3535 = icmp eq i8 %loadBr_4a3535, 1
  br i1 %cmpBr_4a3535, label %block_.L_4a360d, label %block_4a353b

block_4a353b:
  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a353b	 Bytes: 3
  %loadMem_4a353b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a353b = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a353b)
  store %struct.Memory* %call_4a353b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a353e	 Bytes: 2
  %loadMem_4a353e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a353e = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a353e)
  store %struct.Memory* %call_4a353e, %struct.Memory** %MEMORY

  ; Code: movl -0x250(%rbp,%rcx,4), %eax	 RIP: 4a3540	 Bytes: 7
  %loadMem_4a3540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3540 = call %struct.Memory* @routine_movl_MINUS0x250__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3540)
  store %struct.Memory* %call_4a3540, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 4a3547	 Bytes: 3
  %loadMem_4a3547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3547 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3547)
  store %struct.Memory* %call_4a3547, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a354a	 Bytes: 2
  %loadMem_4a354a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a354a = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a354a)
  store %struct.Memory* %call_4a354a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x250(%rbp,%rcx,4), %eax	 RIP: 4a354c	 Bytes: 7
  %loadMem_4a354c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a354c = call %struct.Memory* @routine_cmpl_MINUS0x250__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a354c)
  store %struct.Memory* %call_4a354c, %struct.Memory** %MEMORY

  ; Code: jle .L_4a360d	 RIP: 4a3553	 Bytes: 6
  %loadMem_4a3553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3553 = call %struct.Memory* @routine_jle_.L_4a360d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3553, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_4a3553, %struct.Memory** %MEMORY

  %loadBr_4a3553 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3553 = icmp eq i8 %loadBr_4a3553, 1
  br i1 %cmpBr_4a3553, label %block_.L_4a360d, label %block_.L_4a3559

  ; Code: .L_4a3559:	 RIP: 4a3559	 Bytes: 0
block_.L_4a3559:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a3559	 Bytes: 3
  %loadMem_4a3559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3559 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3559)
  store %struct.Memory* %call_4a3559, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a355c	 Bytes: 2
  %loadMem_4a355c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a355c = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a355c)
  store %struct.Memory* %call_4a355c, %struct.Memory** %MEMORY

  ; Code: movl -0x2e0(%rbp,%rcx,4), %eax	 RIP: 4a355e	 Bytes: 7
  %loadMem_4a355e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a355e = call %struct.Memory* @routine_movl_MINUS0x2e0__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a355e)
  store %struct.Memory* %call_4a355e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e4(%rbp)	 RIP: 4a3565	 Bytes: 6
  %loadMem_4a3565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3565 = call %struct.Memory* @routine_movl__eax__MINUS0x2e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3565)
  store %struct.Memory* %call_4a3565, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a356b	 Bytes: 3
  %loadMem_4a356b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a356b = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a356b)
  store %struct.Memory* %call_4a356b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a356e	 Bytes: 2
  %loadMem_4a356e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a356e = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a356e)
  store %struct.Memory* %call_4a356e, %struct.Memory** %MEMORY

  ; Code: movl -0x2e0(%rbp,%rcx,4), %eax	 RIP: 4a3570	 Bytes: 7
  %loadMem_4a3570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3570 = call %struct.Memory* @routine_movl_MINUS0x2e0__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3570)
  store %struct.Memory* %call_4a3570, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 4a3577	 Bytes: 3
  %loadMem_4a3577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3577 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3577)
  store %struct.Memory* %call_4a3577, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a357a	 Bytes: 2
  %loadMem_4a357a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a357a = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a357a)
  store %struct.Memory* %call_4a357a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e0(%rbp,%rcx,4)	 RIP: 4a357c	 Bytes: 7
  %loadMem_4a357c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a357c = call %struct.Memory* @routine_movl__eax__MINUS0x2e0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a357c)
  store %struct.Memory* %call_4a357c, %struct.Memory** %MEMORY

  ; Code: movl -0x2e4(%rbp), %eax	 RIP: 4a3583	 Bytes: 6
  %loadMem_4a3583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3583 = call %struct.Memory* @routine_movl_MINUS0x2e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3583)
  store %struct.Memory* %call_4a3583, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 4a3589	 Bytes: 3
  %loadMem_4a3589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3589 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3589)
  store %struct.Memory* %call_4a3589, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a358c	 Bytes: 2
  %loadMem_4a358c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a358c = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a358c)
  store %struct.Memory* %call_4a358c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e0(%rbp,%rcx,4)	 RIP: 4a358e	 Bytes: 7
  %loadMem_4a358e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a358e = call %struct.Memory* @routine_movl__eax__MINUS0x2e0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a358e)
  store %struct.Memory* %call_4a358e, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a3595	 Bytes: 3
  %loadMem_4a3595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3595 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3595)
  store %struct.Memory* %call_4a3595, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a3598	 Bytes: 2
  %loadMem_4a3598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3598 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3598)
  store %struct.Memory* %call_4a3598, %struct.Memory** %MEMORY

  ; Code: movl -0x150(%rbp,%rcx,4), %eax	 RIP: 4a359a	 Bytes: 7
  %loadMem_4a359a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a359a = call %struct.Memory* @routine_movl_MINUS0x150__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a359a)
  store %struct.Memory* %call_4a359a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e4(%rbp)	 RIP: 4a35a1	 Bytes: 6
  %loadMem_4a35a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35a1 = call %struct.Memory* @routine_movl__eax__MINUS0x2e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35a1)
  store %struct.Memory* %call_4a35a1, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a35a7	 Bytes: 3
  %loadMem_4a35a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35a7 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35a7)
  store %struct.Memory* %call_4a35a7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a35aa	 Bytes: 2
  %loadMem_4a35aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35aa = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35aa)
  store %struct.Memory* %call_4a35aa, %struct.Memory** %MEMORY

  ; Code: movl -0x150(%rbp,%rcx,4), %eax	 RIP: 4a35ac	 Bytes: 7
  %loadMem_4a35ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35ac = call %struct.Memory* @routine_movl_MINUS0x150__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35ac)
  store %struct.Memory* %call_4a35ac, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 4a35b3	 Bytes: 3
  %loadMem_4a35b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35b3 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35b3)
  store %struct.Memory* %call_4a35b3, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a35b6	 Bytes: 2
  %loadMem_4a35b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35b6 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35b6)
  store %struct.Memory* %call_4a35b6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x150(%rbp,%rcx,4)	 RIP: 4a35b8	 Bytes: 7
  %loadMem_4a35b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35b8 = call %struct.Memory* @routine_movl__eax__MINUS0x150__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35b8)
  store %struct.Memory* %call_4a35b8, %struct.Memory** %MEMORY

  ; Code: movl -0x2e4(%rbp), %eax	 RIP: 4a35bf	 Bytes: 6
  %loadMem_4a35bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35bf = call %struct.Memory* @routine_movl_MINUS0x2e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35bf)
  store %struct.Memory* %call_4a35bf, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 4a35c5	 Bytes: 3
  %loadMem_4a35c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35c5 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35c5)
  store %struct.Memory* %call_4a35c5, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a35c8	 Bytes: 2
  %loadMem_4a35c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35c8 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35c8)
  store %struct.Memory* %call_4a35c8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x150(%rbp,%rcx,4)	 RIP: 4a35ca	 Bytes: 7
  %loadMem_4a35ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35ca = call %struct.Memory* @routine_movl__eax__MINUS0x150__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35ca)
  store %struct.Memory* %call_4a35ca, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a35d1	 Bytes: 3
  %loadMem_4a35d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35d1 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35d1)
  store %struct.Memory* %call_4a35d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a35d4	 Bytes: 2
  %loadMem_4a35d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35d4 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35d4)
  store %struct.Memory* %call_4a35d4, %struct.Memory** %MEMORY

  ; Code: movl -0x250(%rbp,%rcx,4), %eax	 RIP: 4a35d6	 Bytes: 7
  %loadMem_4a35d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35d6 = call %struct.Memory* @routine_movl_MINUS0x250__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35d6)
  store %struct.Memory* %call_4a35d6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e4(%rbp)	 RIP: 4a35dd	 Bytes: 6
  %loadMem_4a35dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35dd = call %struct.Memory* @routine_movl__eax__MINUS0x2e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35dd)
  store %struct.Memory* %call_4a35dd, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a35e3	 Bytes: 3
  %loadMem_4a35e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35e3 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35e3)
  store %struct.Memory* %call_4a35e3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a35e6	 Bytes: 2
  %loadMem_4a35e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35e6 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35e6)
  store %struct.Memory* %call_4a35e6, %struct.Memory** %MEMORY

  ; Code: movl -0x250(%rbp,%rcx,4), %eax	 RIP: 4a35e8	 Bytes: 7
  %loadMem_4a35e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35e8 = call %struct.Memory* @routine_movl_MINUS0x250__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35e8)
  store %struct.Memory* %call_4a35e8, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 4a35ef	 Bytes: 3
  %loadMem_4a35ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35ef = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35ef)
  store %struct.Memory* %call_4a35ef, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a35f2	 Bytes: 2
  %loadMem_4a35f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35f2 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35f2)
  store %struct.Memory* %call_4a35f2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x250(%rbp,%rcx,4)	 RIP: 4a35f4	 Bytes: 7
  %loadMem_4a35f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35f4 = call %struct.Memory* @routine_movl__eax__MINUS0x250__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35f4)
  store %struct.Memory* %call_4a35f4, %struct.Memory** %MEMORY

  ; Code: movl -0x2e4(%rbp), %eax	 RIP: 4a35fb	 Bytes: 6
  %loadMem_4a35fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a35fb = call %struct.Memory* @routine_movl_MINUS0x2e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a35fb)
  store %struct.Memory* %call_4a35fb, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 4a3601	 Bytes: 3
  %loadMem_4a3601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3601 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3601)
  store %struct.Memory* %call_4a3601, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a3604	 Bytes: 2
  %loadMem_4a3604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3604 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3604)
  store %struct.Memory* %call_4a3604, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x250(%rbp,%rcx,4)	 RIP: 4a3606	 Bytes: 7
  %loadMem_4a3606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3606 = call %struct.Memory* @routine_movl__eax__MINUS0x250__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3606)
  store %struct.Memory* %call_4a3606, %struct.Memory** %MEMORY

  ; Code: .L_4a360d:	 RIP: 4a360d	 Bytes: 0
  br label %block_.L_4a360d
block_.L_4a360d:

  ; Code: jmpq .L_4a3612	 RIP: 4a360d	 Bytes: 5
  %loadMem_4a360d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a360d = call %struct.Memory* @routine_jmpq_.L_4a3612(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a360d, i64 5, i64 5)
  store %struct.Memory* %call_4a360d, %struct.Memory** %MEMORY

  br label %block_.L_4a3612

  ; Code: .L_4a3612:	 RIP: 4a3612	 Bytes: 0
block_.L_4a3612:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a3612	 Bytes: 3
  %loadMem_4a3612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3612 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3612)
  store %struct.Memory* %call_4a3612, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a3615	 Bytes: 3
  %loadMem_4a3615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3615 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3615)
  store %struct.Memory* %call_4a3615, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 4a3618	 Bytes: 3
  %loadMem_4a3618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3618 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3618)
  store %struct.Memory* %call_4a3618, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a34ef	 RIP: 4a361b	 Bytes: 5
  %loadMem_4a361b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a361b = call %struct.Memory* @routine_jmpq_.L_4a34ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a361b, i64 -300, i64 5)
  store %struct.Memory* %call_4a361b, %struct.Memory** %MEMORY

  br label %block_.L_4a34ef

  ; Code: .L_4a3620:	 RIP: 4a3620	 Bytes: 0
block_.L_4a3620:

  ; Code: jmpq .L_4a3625	 RIP: 4a3620	 Bytes: 5
  %loadMem_4a3620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3620 = call %struct.Memory* @routine_jmpq_.L_4a3625(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3620, i64 5, i64 5)
  store %struct.Memory* %call_4a3620, %struct.Memory** %MEMORY

  br label %block_.L_4a3625

  ; Code: .L_4a3625:	 RIP: 4a3625	 Bytes: 0
block_.L_4a3625:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a3625	 Bytes: 3
  %loadMem_4a3625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3625 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3625)
  store %struct.Memory* %call_4a3625, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a3628	 Bytes: 3
  %loadMem_4a3628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3628 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3628)
  store %struct.Memory* %call_4a3628, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 4a362b	 Bytes: 3
  %loadMem_4a362b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a362b = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a362b)
  store %struct.Memory* %call_4a362b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a34d1	 RIP: 4a362e	 Bytes: 5
  %loadMem_4a362e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a362e = call %struct.Memory* @routine_jmpq_.L_4a34d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a362e, i64 -349, i64 5)
  store %struct.Memory* %call_4a362e, %struct.Memory** %MEMORY

  br label %block_.L_4a34d1

  ; Code: .L_4a3633:	 RIP: 4a3633	 Bytes: 0
block_.L_4a3633:

  ; Code: movl $0x1, -0x258(%rbp)	 RIP: 4a3633	 Bytes: 10
  %loadMem_4a3633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3633 = call %struct.Memory* @routine_movl__0x1__MINUS0x258__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3633)
  store %struct.Memory* %call_4a3633, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x34(%rbp)	 RIP: 4a363d	 Bytes: 7
  %loadMem_4a363d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a363d = call %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a363d)
  store %struct.Memory* %call_4a363d, %struct.Memory** %MEMORY

  ; Code: .L_4a3644:	 RIP: 4a3644	 Bytes: 0
  br label %block_.L_4a3644
block_.L_4a3644:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a3644	 Bytes: 3
  %loadMem_4a3644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3644 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3644)
  store %struct.Memory* %call_4a3644, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4a3647	 Bytes: 3
  %loadMem_4a3647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3647 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3647)
  store %struct.Memory* %call_4a3647, %struct.Memory** %MEMORY

  ; Code: jae .L_4a368b	 RIP: 4a364a	 Bytes: 6
  %loadMem_4a364a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a364a = call %struct.Memory* @routine_jae_.L_4a368b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a364a, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_4a364a, %struct.Memory** %MEMORY

  %loadBr_4a364a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a364a = icmp eq i8 %loadBr_4a364a, 1
  br i1 %cmpBr_4a364a, label %block_.L_4a368b, label %block_4a3650

block_4a3650:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a3650	 Bytes: 3
  %loadMem_4a3650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3650 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3650)
  store %struct.Memory* %call_4a3650, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a3653	 Bytes: 2
  %loadMem_4a3653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3653 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3653)
  store %struct.Memory* %call_4a3653, %struct.Memory** %MEMORY

  ; Code: movl -0xd0(%rbp,%rcx,4), %eax	 RIP: 4a3655	 Bytes: 7
  %loadMem_4a3655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3655 = call %struct.Memory* @routine_movl_MINUS0xd0__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3655)
  store %struct.Memory* %call_4a3655, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 4a365c	 Bytes: 3
  %loadMem_4a365c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a365c = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a365c)
  store %struct.Memory* %call_4a365c, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a365f	 Bytes: 2
  %loadMem_4a365f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a365f = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a365f)
  store %struct.Memory* %call_4a365f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x150(%rbp,%rcx,4), %eax	 RIP: 4a3661	 Bytes: 7
  %loadMem_4a3661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3661 = call %struct.Memory* @routine_cmpl_MINUS0x150__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3661)
  store %struct.Memory* %call_4a3661, %struct.Memory** %MEMORY

  ; Code: je .L_4a3678	 RIP: 4a3668	 Bytes: 6
  %loadMem_4a3668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3668 = call %struct.Memory* @routine_je_.L_4a3678(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3668, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_4a3668, %struct.Memory** %MEMORY

  %loadBr_4a3668 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3668 = icmp eq i8 %loadBr_4a3668, 1
  br i1 %cmpBr_4a3668, label %block_.L_4a3678, label %block_4a366e

block_4a366e:
  ; Code: movl $0x0, -0x258(%rbp)	 RIP: 4a366e	 Bytes: 10
  %loadMem_4a366e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a366e = call %struct.Memory* @routine_movl__0x0__MINUS0x258__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a366e)
  store %struct.Memory* %call_4a366e, %struct.Memory** %MEMORY

  ; Code: .L_4a3678:	 RIP: 4a3678	 Bytes: 0
  br label %block_.L_4a3678
block_.L_4a3678:

  ; Code: jmpq .L_4a367d	 RIP: 4a3678	 Bytes: 5
  %loadMem_4a3678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3678 = call %struct.Memory* @routine_jmpq_.L_4a367d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3678, i64 5, i64 5)
  store %struct.Memory* %call_4a3678, %struct.Memory** %MEMORY

  br label %block_.L_4a367d

  ; Code: .L_4a367d:	 RIP: 4a367d	 Bytes: 0
block_.L_4a367d:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a367d	 Bytes: 3
  %loadMem_4a367d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a367d = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a367d)
  store %struct.Memory* %call_4a367d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a3680	 Bytes: 3
  %loadMem_4a3680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3680 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3680)
  store %struct.Memory* %call_4a3680, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 4a3683	 Bytes: 3
  %loadMem_4a3683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3683 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3683)
  store %struct.Memory* %call_4a3683, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a3644	 RIP: 4a3686	 Bytes: 5
  %loadMem_4a3686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3686 = call %struct.Memory* @routine_jmpq_.L_4a3644(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3686, i64 -66, i64 5)
  store %struct.Memory* %call_4a3686, %struct.Memory** %MEMORY

  br label %block_.L_4a3644

  ; Code: .L_4a368b:	 RIP: 4a368b	 Bytes: 0
block_.L_4a368b:

  ; Code: cmpl $0x0, -0x258(%rbp)	 RIP: 4a368b	 Bytes: 7
  %loadMem_4a368b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a368b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x258__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a368b)
  store %struct.Memory* %call_4a368b, %struct.Memory** %MEMORY

  ; Code: jne .L_4a392e	 RIP: 4a3692	 Bytes: 6
  %loadMem_4a3692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3692 = call %struct.Memory* @routine_jne_.L_4a392e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3692, i8* %BRANCH_TAKEN, i64 668, i64 6, i64 6)
  store %struct.Memory* %call_4a3692, %struct.Memory** %MEMORY

  %loadBr_4a3692 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3692 = icmp eq i8 %loadBr_4a3692, 1
  br i1 %cmpBr_4a3692, label %block_.L_4a392e, label %block_4a3698

block_4a3698:
  ; Code: movl $0x0, -0x34(%rbp)	 RIP: 4a3698	 Bytes: 7
  %loadMem_4a3698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3698 = call %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3698)
  store %struct.Memory* %call_4a3698, %struct.Memory** %MEMORY

  ; Code: .L_4a369f:	 RIP: 4a369f	 Bytes: 0
  br label %block_.L_4a369f
block_.L_4a369f:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a369f	 Bytes: 3
  %loadMem_4a369f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a369f = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a369f)
  store %struct.Memory* %call_4a369f, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4a36a2	 Bytes: 3
  %loadMem_4a36a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36a2 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36a2)
  store %struct.Memory* %call_4a36a2, %struct.Memory** %MEMORY

  ; Code: jae .L_4a38a5	 RIP: 4a36a5	 Bytes: 6
  %loadMem_4a36a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36a5 = call %struct.Memory* @routine_jae_.L_4a38a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36a5, i8* %BRANCH_TAKEN, i64 512, i64 6, i64 6)
  store %struct.Memory* %call_4a36a5, %struct.Memory** %MEMORY

  %loadBr_4a36a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a36a5 = icmp eq i8 %loadBr_4a36a5, 1
  br i1 %cmpBr_4a36a5, label %block_.L_4a38a5, label %block_4a36ab

block_4a36ab:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a36ab	 Bytes: 3
  %loadMem_4a36ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36ab = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36ab)
  store %struct.Memory* %call_4a36ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a36ae	 Bytes: 2
  %loadMem_4a36ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36ae = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36ae)
  store %struct.Memory* %call_4a36ae, %struct.Memory** %MEMORY

  ; Code: movl -0x150(%rbp,%rcx,4), %eax	 RIP: 4a36b0	 Bytes: 7
  %loadMem_4a36b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36b0 = call %struct.Memory* @routine_movl_MINUS0x150__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36b0)
  store %struct.Memory* %call_4a36b0, %struct.Memory** %MEMORY

  ; Code: subl -0x44(%rbp), %eax	 RIP: 4a36b7	 Bytes: 3
  %loadMem_4a36b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36b7 = call %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36b7)
  store %struct.Memory* %call_4a36b7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e8(%rbp)	 RIP: 4a36ba	 Bytes: 6
  %loadMem_4a36ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36ba = call %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36ba)
  store %struct.Memory* %call_4a36ba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x2e8(%rbp)	 RIP: 4a36c0	 Bytes: 7
  %loadMem_4a36c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36c0 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36c0)
  store %struct.Memory* %call_4a36c0, %struct.Memory** %MEMORY

  ; Code: jg .L_4a3724	 RIP: 4a36c7	 Bytes: 6
  %loadMem_4a36c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36c7 = call %struct.Memory* @routine_jg_.L_4a3724(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36c7, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_4a36c7, %struct.Memory** %MEMORY

  %loadBr_4a36c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a36c7 = icmp eq i8 %loadBr_4a36c7, 1
  br i1 %cmpBr_4a36c7, label %block_.L_4a3724, label %block_4a36cd

block_4a36cd:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 4a36cd	 Bytes: 4
  %loadMem_4a36cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36cd = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36cd)
  store %struct.Memory* %call_4a36cd, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 4a36d1	 Bytes: 3
  %loadMem_4a36d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36d1 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36d1)
  store %struct.Memory* %call_4a36d1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4a36d4	 Bytes: 2
  %loadMem_4a36d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36d4 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36d4)
  store %struct.Memory* %call_4a36d4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rdx,4)	 RIP: 4a36d6	 Bytes: 7
  %loadMem_4a36d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36d6 = call %struct.Memory* @routine_movl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36d6)
  store %struct.Memory* %call_4a36d6, %struct.Memory** %MEMORY

  ; Code: movl -0x2e8(%rbp), %edi	 RIP: 4a36dd	 Bytes: 6
  %loadMem_4a36dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36dd = call %struct.Memory* @routine_movl_MINUS0x2e8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36dd)
  store %struct.Memory* %call_4a36dd, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 4a36e3	 Bytes: 5
  %loadMem1_4a36e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a36e3 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a36e3, i64 -665315, i64 5, i64 5)
  store %struct.Memory* %call1_4a36e3, %struct.Memory** %MEMORY

  %loadMem2_4a36e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a36e3 = load i64, i64* %3
  %call2_4a36e3 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_4a36e3, %struct.Memory* %loadMem2_4a36e3)
  store %struct.Memory* %call2_4a36e3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4a36e8	 Bytes: 3
  %loadMem_4a36e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36e8 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36e8)
  store %struct.Memory* %call_4a36e8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 4a36eb	 Bytes: 4
  %loadMem_4a36eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36eb = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36eb)
  store %struct.Memory* %call_4a36eb, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 4a36ef	 Bytes: 3
  %loadMem_4a36ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36ef = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36ef)
  store %struct.Memory* %call_4a36ef, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 4a36f2	 Bytes: 2
  %loadMem_4a36f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36f2 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36f2)
  store %struct.Memory* %call_4a36f2, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx,%rsi,4)	 RIP: 4a36f4	 Bytes: 3
  %loadMem_4a36f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36f4 = call %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36f4)
  store %struct.Memory* %call_4a36f4, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 4a36f7	 Bytes: 4
  %loadMem_4a36f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36f7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36f7)
  store %struct.Memory* %call_4a36f7, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a36fb	 Bytes: 3
  %loadMem_4a36fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36fb = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36fb)
  store %struct.Memory* %call_4a36fb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4a36fe	 Bytes: 2
  %loadMem_4a36fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a36fe = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a36fe)
  store %struct.Memory* %call_4a36fe, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rdx,%rsi,4)	 RIP: 4a3700	 Bytes: 4
  %loadMem_4a3700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3700 = call %struct.Memory* @routine_cmpl__0x0____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3700)
  store %struct.Memory* %call_4a3700, %struct.Memory** %MEMORY

  ; Code: jge .L_4a371f	 RIP: 4a3704	 Bytes: 6
  %loadMem_4a3704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3704 = call %struct.Memory* @routine_jge_.L_4a371f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3704, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4a3704, %struct.Memory** %MEMORY

  %loadBr_4a3704 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3704 = icmp eq i8 %loadBr_4a3704, 1
  br i1 %cmpBr_4a3704, label %block_.L_4a371f, label %block_4a370a

block_4a370a:
  ; Code: movl -0x2f0(%rbp), %eax	 RIP: 4a370a	 Bytes: 6
  %loadMem_4a370a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a370a = call %struct.Memory* @routine_movl_MINUS0x2f0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a370a)
  store %struct.Memory* %call_4a370a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4a3710	 Bytes: 3
  %loadMem_4a3710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3710 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3710)
  store %struct.Memory* %call_4a3710, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4a3713	 Bytes: 4
  %loadMem_4a3713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3713 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3713)
  store %struct.Memory* %call_4a3713, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 4a3717	 Bytes: 3
  %loadMem_4a3717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3717 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3717)
  store %struct.Memory* %call_4a3717, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 4a371a	 Bytes: 2
  %loadMem_4a371a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a371a = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a371a)
  store %struct.Memory* %call_4a371a, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rsi,4)	 RIP: 4a371c	 Bytes: 3
  %loadMem_4a371c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a371c = call %struct.Memory* @routine_movl__eax____rcx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a371c)
  store %struct.Memory* %call_4a371c, %struct.Memory** %MEMORY

  ; Code: .L_4a371f:	 RIP: 4a371f	 Bytes: 0
  br label %block_.L_4a371f
block_.L_4a371f:

  ; Code: jmpq .L_4a374e	 RIP: 4a371f	 Bytes: 5
  %loadMem_4a371f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a371f = call %struct.Memory* @routine_jmpq_.L_4a374e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a371f, i64 47, i64 5)
  store %struct.Memory* %call_4a371f, %struct.Memory** %MEMORY

  br label %block_.L_4a374e

  ; Code: .L_4a3724:	 RIP: 4a3724	 Bytes: 0
block_.L_4a3724:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4a3724	 Bytes: 4
  %loadMem_4a3724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3724 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3724)
  store %struct.Memory* %call_4a3724, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 4a3728	 Bytes: 3
  %loadMem_4a3728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3728 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3728)
  store %struct.Memory* %call_4a3728, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4a372b	 Bytes: 2
  %loadMem_4a372b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a372b = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a372b)
  store %struct.Memory* %call_4a372b, %struct.Memory** %MEMORY

  ; Code: movl $0x1, (%rax,%rdx,4)	 RIP: 4a372d	 Bytes: 7
  %loadMem_4a372d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a372d = call %struct.Memory* @routine_movl__0x1____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a372d)
  store %struct.Memory* %call_4a372d, %struct.Memory** %MEMORY

  ; Code: movl -0x2e8(%rbp), %edi	 RIP: 4a3734	 Bytes: 6
  %loadMem_4a3734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3734 = call %struct.Memory* @routine_movl_MINUS0x2e8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3734)
  store %struct.Memory* %call_4a3734, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 4a373a	 Bytes: 5
  %loadMem1_4a373a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a373a = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a373a, i64 -665402, i64 5, i64 5)
  store %struct.Memory* %call1_4a373a, %struct.Memory** %MEMORY

  %loadMem2_4a373a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a373a = load i64, i64* %3
  %call2_4a373a = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_4a373a, %struct.Memory* %loadMem2_4a373a)
  store %struct.Memory* %call2_4a373a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4a373f	 Bytes: 3
  %loadMem_4a373f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a373f = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a373f)
  store %struct.Memory* %call_4a373f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 4a3742	 Bytes: 4
  %loadMem_4a3742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3742 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3742)
  store %struct.Memory* %call_4a3742, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 4a3746	 Bytes: 3
  %loadMem_4a3746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3746 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3746)
  store %struct.Memory* %call_4a3746, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 4a3749	 Bytes: 2
  %loadMem_4a3749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3749 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3749)
  store %struct.Memory* %call_4a3749, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx,%rsi,4)	 RIP: 4a374b	 Bytes: 3
  %loadMem_4a374b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a374b = call %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a374b)
  store %struct.Memory* %call_4a374b, %struct.Memory** %MEMORY

  ; Code: .L_4a374e:	 RIP: 4a374e	 Bytes: 0
  br label %block_.L_4a374e
block_.L_4a374e:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a374e	 Bytes: 3
  %loadMem_4a374e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a374e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a374e)
  store %struct.Memory* %call_4a374e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a3751	 Bytes: 2
  %loadMem_4a3751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3751 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3751)
  store %struct.Memory* %call_4a3751, %struct.Memory** %MEMORY

  ; Code: movl -0x150(%rbp,%rcx,4), %eax	 RIP: 4a3753	 Bytes: 7
  %loadMem_4a3753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3753 = call %struct.Memory* @routine_movl_MINUS0x150__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3753)
  store %struct.Memory* %call_4a3753, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 4a375a	 Bytes: 3
  %loadMem_4a375a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a375a = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a375a)
  store %struct.Memory* %call_4a375a, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a375d	 Bytes: 3
  %loadMem_4a375d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a375d = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a375d)
  store %struct.Memory* %call_4a375d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a3760	 Bytes: 2
  %loadMem_4a3760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3760 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3760)
  store %struct.Memory* %call_4a3760, %struct.Memory** %MEMORY

  ; Code: movl -0x150(%rbp,%rcx,4), %eax	 RIP: 4a3762	 Bytes: 7
  %loadMem_4a3762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3762 = call %struct.Memory* @routine_movl_MINUS0x150__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3762)
  store %struct.Memory* %call_4a3762, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 4a3769	 Bytes: 3
  %loadMem_4a3769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3769 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3769)
  store %struct.Memory* %call_4a3769, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a376c	 Bytes: 2
  %loadMem_4a376c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a376c = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a376c)
  store %struct.Memory* %call_4a376c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1d0(%rbp,%rcx,4)	 RIP: 4a376e	 Bytes: 7
  %loadMem_4a376e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a376e = call %struct.Memory* @routine_movl__eax__MINUS0x1d0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a376e)
  store %struct.Memory* %call_4a376e, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a3775	 Bytes: 3
  %loadMem_4a3775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3775 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3775)
  store %struct.Memory* %call_4a3775, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 4a3778	 Bytes: 3
  %loadMem_4a3778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3778 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3778)
  store %struct.Memory* %call_4a3778, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a377b	 Bytes: 3
  %loadMem_4a377b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a377b = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a377b)
  store %struct.Memory* %call_4a377b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 4a377e	 Bytes: 3
  %loadMem_4a377e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a377e = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a377e)
  store %struct.Memory* %call_4a377e, %struct.Memory** %MEMORY

  ; Code: .L_4a3781:	 RIP: 4a3781	 Bytes: 0
  br label %block_.L_4a3781
block_.L_4a3781:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a3781	 Bytes: 3
  %loadMem_4a3781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3781 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3781)
  store %struct.Memory* %call_4a3781, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4a3784	 Bytes: 3
  %loadMem_4a3784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3784 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3784)
  store %struct.Memory* %call_4a3784, %struct.Memory** %MEMORY

  ; Code: jae .L_4a37df	 RIP: 4a3787	 Bytes: 6
  %loadMem_4a3787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3787 = call %struct.Memory* @routine_jae_.L_4a37df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3787, i8* %BRANCH_TAKEN, i64 88, i64 6, i64 6)
  store %struct.Memory* %call_4a3787, %struct.Memory** %MEMORY

  %loadBr_4a3787 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3787 = icmp eq i8 %loadBr_4a3787, 1
  br i1 %cmpBr_4a3787, label %block_.L_4a37df, label %block_4a378d

block_4a378d:
  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a378d	 Bytes: 3
  %loadMem_4a378d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a378d = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a378d)
  store %struct.Memory* %call_4a378d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a3790	 Bytes: 2
  %loadMem_4a3790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3790 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3790)
  store %struct.Memory* %call_4a3790, %struct.Memory** %MEMORY

  ; Code: movl -0xd0(%rbp,%rcx,4), %eax	 RIP: 4a3792	 Bytes: 7
  %loadMem_4a3792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3792 = call %struct.Memory* @routine_movl_MINUS0xd0__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3792)
  store %struct.Memory* %call_4a3792, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 4a3799	 Bytes: 3
  %loadMem_4a3799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3799 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3799)
  store %struct.Memory* %call_4a3799, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a379c	 Bytes: 2
  %loadMem_4a379c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a379c = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a379c)
  store %struct.Memory* %call_4a379c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x150(%rbp,%rcx,4), %eax	 RIP: 4a379e	 Bytes: 7
  %loadMem_4a379e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a379e = call %struct.Memory* @routine_cmpl_MINUS0x150__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a379e)
  store %struct.Memory* %call_4a379e, %struct.Memory** %MEMORY

  ; Code: je .L_4a37cc	 RIP: 4a37a5	 Bytes: 6
  %loadMem_4a37a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37a5 = call %struct.Memory* @routine_je_.L_4a37cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37a5, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_4a37a5, %struct.Memory** %MEMORY

  %loadBr_4a37a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a37a5 = icmp eq i8 %loadBr_4a37a5, 1
  br i1 %cmpBr_4a37a5, label %block_.L_4a37cc, label %block_4a37ab

block_4a37ab:
  ; Code: movl -0x3c(%rbp), %eax	 RIP: 4a37ab	 Bytes: 3
  %loadMem_4a37ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37ab = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37ab)
  store %struct.Memory* %call_4a37ab, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a37ae	 Bytes: 3
  %loadMem_4a37ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37ae = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37ae)
  store %struct.Memory* %call_4a37ae, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 4a37b1	 Bytes: 3
  %loadMem_4a37b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37b1 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37b1)
  store %struct.Memory* %call_4a37b1, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a37b4	 Bytes: 3
  %loadMem_4a37b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37b4 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37b4)
  store %struct.Memory* %call_4a37b4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a37b7	 Bytes: 2
  %loadMem_4a37b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37b7 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37b7)
  store %struct.Memory* %call_4a37b7, %struct.Memory** %MEMORY

  ; Code: movl -0xd0(%rbp,%rcx,4), %eax	 RIP: 4a37b9	 Bytes: 7
  %loadMem_4a37b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37b9 = call %struct.Memory* @routine_movl_MINUS0xd0__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37b9)
  store %struct.Memory* %call_4a37b9, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 4a37c0	 Bytes: 3
  %loadMem_4a37c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37c0 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37c0)
  store %struct.Memory* %call_4a37c0, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a37c3	 Bytes: 2
  %loadMem_4a37c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37c3 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37c3)
  store %struct.Memory* %call_4a37c3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1d0(%rbp,%rcx,4)	 RIP: 4a37c5	 Bytes: 7
  %loadMem_4a37c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37c5 = call %struct.Memory* @routine_movl__eax__MINUS0x1d0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37c5)
  store %struct.Memory* %call_4a37c5, %struct.Memory** %MEMORY

  ; Code: .L_4a37cc:	 RIP: 4a37cc	 Bytes: 0
  br label %block_.L_4a37cc
block_.L_4a37cc:

  ; Code: jmpq .L_4a37d1	 RIP: 4a37cc	 Bytes: 5
  %loadMem_4a37cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37cc = call %struct.Memory* @routine_jmpq_.L_4a37d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37cc, i64 5, i64 5)
  store %struct.Memory* %call_4a37cc, %struct.Memory** %MEMORY

  br label %block_.L_4a37d1

  ; Code: .L_4a37d1:	 RIP: 4a37d1	 Bytes: 0
block_.L_4a37d1:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a37d1	 Bytes: 3
  %loadMem_4a37d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37d1 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37d1)
  store %struct.Memory* %call_4a37d1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a37d4	 Bytes: 3
  %loadMem_4a37d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37d4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37d4)
  store %struct.Memory* %call_4a37d4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 4a37d7	 Bytes: 3
  %loadMem_4a37d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37d7 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37d7)
  store %struct.Memory* %call_4a37d7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a3781	 RIP: 4a37da	 Bytes: 5
  %loadMem_4a37da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37da = call %struct.Memory* @routine_jmpq_.L_4a3781(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37da, i64 -89, i64 5)
  store %struct.Memory* %call_4a37da, %struct.Memory** %MEMORY

  br label %block_.L_4a3781

  ; Code: .L_4a37df:	 RIP: 4a37df	 Bytes: 0
block_.L_4a37df:

  ; Code: movl $0x1, -0x254(%rbp)	 RIP: 4a37df	 Bytes: 10
  %loadMem_4a37df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37df = call %struct.Memory* @routine_movl__0x1__MINUS0x254__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37df)
  store %struct.Memory* %call_4a37df, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a37e9	 Bytes: 3
  %loadMem_4a37e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37e9 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37e9)
  store %struct.Memory* %call_4a37e9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a37ec	 Bytes: 3
  %loadMem_4a37ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37ec = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37ec)
  store %struct.Memory* %call_4a37ec, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 4a37ef	 Bytes: 3
  %loadMem_4a37ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37ef = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37ef)
  store %struct.Memory* %call_4a37ef, %struct.Memory** %MEMORY

  ; Code: .L_4a37f2:	 RIP: 4a37f2	 Bytes: 0
  br label %block_.L_4a37f2
block_.L_4a37f2:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a37f2	 Bytes: 3
  %loadMem_4a37f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37f2 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37f2)
  store %struct.Memory* %call_4a37f2, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4a37f5	 Bytes: 3
  %loadMem_4a37f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37f5 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37f5)
  store %struct.Memory* %call_4a37f5, %struct.Memory** %MEMORY

  ; Code: jae .L_4a383e	 RIP: 4a37f8	 Bytes: 6
  %loadMem_4a37f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37f8 = call %struct.Memory* @routine_jae_.L_4a383e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37f8, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_4a37f8, %struct.Memory** %MEMORY

  %loadBr_4a37f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a37f8 = icmp eq i8 %loadBr_4a37f8, 1
  br i1 %cmpBr_4a37f8, label %block_.L_4a383e, label %block_4a37fe

block_4a37fe:
  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a37fe	 Bytes: 3
  %loadMem_4a37fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a37fe = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a37fe)
  store %struct.Memory* %call_4a37fe, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a3801	 Bytes: 2
  %loadMem_4a3801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3801 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3801)
  store %struct.Memory* %call_4a3801, %struct.Memory** %MEMORY

  ; Code: movl -0x1d0(%rbp,%rcx,4), %eax	 RIP: 4a3803	 Bytes: 7
  %loadMem_4a3803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3803 = call %struct.Memory* @routine_movl_MINUS0x1d0__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3803)
  store %struct.Memory* %call_4a3803, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 4a380a	 Bytes: 3
  %loadMem_4a380a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a380a = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a380a)
  store %struct.Memory* %call_4a380a, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a380d	 Bytes: 2
  %loadMem_4a380d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a380d = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a380d)
  store %struct.Memory* %call_4a380d, %struct.Memory** %MEMORY

  ; Code: cmpl -0x150(%rbp,%rcx,4), %eax	 RIP: 4a380f	 Bytes: 7
  %loadMem_4a380f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a380f = call %struct.Memory* @routine_cmpl_MINUS0x150__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a380f)
  store %struct.Memory* %call_4a380f, %struct.Memory** %MEMORY

  ; Code: je .L_4a382b	 RIP: 4a3816	 Bytes: 6
  %loadMem_4a3816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3816 = call %struct.Memory* @routine_je_.L_4a382b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3816, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4a3816, %struct.Memory** %MEMORY

  %loadBr_4a3816 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3816 = icmp eq i8 %loadBr_4a3816, 1
  br i1 %cmpBr_4a3816, label %block_.L_4a382b, label %block_4a381c

block_4a381c:
  ; Code: movl $0x0, -0x254(%rbp)	 RIP: 4a381c	 Bytes: 10
  %loadMem_4a381c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a381c = call %struct.Memory* @routine_movl__0x0__MINUS0x254__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a381c)
  store %struct.Memory* %call_4a381c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a383e	 RIP: 4a3826	 Bytes: 5
  %loadMem_4a3826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3826 = call %struct.Memory* @routine_jmpq_.L_4a383e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3826, i64 24, i64 5)
  store %struct.Memory* %call_4a3826, %struct.Memory** %MEMORY

  br label %block_.L_4a383e

  ; Code: .L_4a382b:	 RIP: 4a382b	 Bytes: 0
block_.L_4a382b:

  ; Code: jmpq .L_4a3830	 RIP: 4a382b	 Bytes: 5
  %loadMem_4a382b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a382b = call %struct.Memory* @routine_jmpq_.L_4a3830(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a382b, i64 5, i64 5)
  store %struct.Memory* %call_4a382b, %struct.Memory** %MEMORY

  br label %block_.L_4a3830

  ; Code: .L_4a3830:	 RIP: 4a3830	 Bytes: 0
block_.L_4a3830:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a3830	 Bytes: 3
  %loadMem_4a3830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3830 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3830)
  store %struct.Memory* %call_4a3830, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a3833	 Bytes: 3
  %loadMem_4a3833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3833 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3833)
  store %struct.Memory* %call_4a3833, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 4a3836	 Bytes: 3
  %loadMem_4a3836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3836 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3836)
  store %struct.Memory* %call_4a3836, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a37f2	 RIP: 4a3839	 Bytes: 5
  %loadMem_4a3839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3839 = call %struct.Memory* @routine_jmpq_.L_4a37f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3839, i64 -71, i64 5)
  store %struct.Memory* %call_4a3839, %struct.Memory** %MEMORY

  br label %block_.L_4a37f2

  ; Code: .L_4a383e:	 RIP: 4a383e	 Bytes: 0
block_.L_4a383e:

  ; Code: cmpl $0x1, -0x254(%rbp)	 RIP: 4a383e	 Bytes: 7
  %loadMem_4a383e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a383e = call %struct.Memory* @routine_cmpl__0x1__MINUS0x254__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a383e)
  store %struct.Memory* %call_4a383e, %struct.Memory** %MEMORY

  ; Code: jne .L_4a3859	 RIP: 4a3845	 Bytes: 6
  %loadMem_4a3845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3845 = call %struct.Memory* @routine_jne_.L_4a3859(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3845, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_4a3845, %struct.Memory** %MEMORY

  %loadBr_4a3845 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3845 = icmp eq i8 %loadBr_4a3845, 1
  br i1 %cmpBr_4a3845, label %block_.L_4a3859, label %block_4a384b

block_4a384b:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a384b	 Bytes: 3
  %loadMem_4a384b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a384b = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a384b)
  store %struct.Memory* %call_4a384b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a384e	 Bytes: 3
  %loadMem_4a384e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a384e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a384e)
  store %struct.Memory* %call_4a384e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 4a3851	 Bytes: 3
  %loadMem_4a3851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3851 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3851)
  store %struct.Memory* %call_4a3851, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a38a5	 RIP: 4a3854	 Bytes: 5
  %loadMem_4a3854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3854 = call %struct.Memory* @routine_jmpq_.L_4a38a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3854, i64 81, i64 5)
  store %struct.Memory* %call_4a3854, %struct.Memory** %MEMORY

  br label %block_.L_4a38a5

  ; Code: .L_4a3859:	 RIP: 4a3859	 Bytes: 0
block_.L_4a3859:

  ; Code: movl $0x0, -0x38(%rbp)	 RIP: 4a3859	 Bytes: 7
  %loadMem_4a3859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3859 = call %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3859)
  store %struct.Memory* %call_4a3859, %struct.Memory** %MEMORY

  ; Code: .L_4a3860:	 RIP: 4a3860	 Bytes: 0
  br label %block_.L_4a3860
block_.L_4a3860:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a3860	 Bytes: 3
  %loadMem_4a3860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3860 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3860)
  store %struct.Memory* %call_4a3860, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4a3863	 Bytes: 3
  %loadMem_4a3863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3863 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3863)
  store %struct.Memory* %call_4a3863, %struct.Memory** %MEMORY

  ; Code: jae .L_4a3892	 RIP: 4a3866	 Bytes: 6
  %loadMem_4a3866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3866 = call %struct.Memory* @routine_jae_.L_4a3892(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3866, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_4a3866, %struct.Memory** %MEMORY

  %loadBr_4a3866 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3866 = icmp eq i8 %loadBr_4a3866, 1
  br i1 %cmpBr_4a3866, label %block_.L_4a3892, label %block_4a386c

block_4a386c:
  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a386c	 Bytes: 3
  %loadMem_4a386c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a386c = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a386c)
  store %struct.Memory* %call_4a386c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a386f	 Bytes: 2
  %loadMem_4a386f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a386f = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a386f)
  store %struct.Memory* %call_4a386f, %struct.Memory** %MEMORY

  ; Code: movl -0x1d0(%rbp,%rcx,4), %eax	 RIP: 4a3871	 Bytes: 7
  %loadMem_4a3871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3871 = call %struct.Memory* @routine_movl_MINUS0x1d0__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3871)
  store %struct.Memory* %call_4a3871, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 4a3878	 Bytes: 3
  %loadMem_4a3878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3878 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3878)
  store %struct.Memory* %call_4a3878, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a387b	 Bytes: 2
  %loadMem_4a387b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a387b = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a387b)
  store %struct.Memory* %call_4a387b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd0(%rbp,%rcx,4)	 RIP: 4a387d	 Bytes: 7
  %loadMem_4a387d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a387d = call %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a387d)
  store %struct.Memory* %call_4a387d, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a3884	 Bytes: 3
  %loadMem_4a3884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3884 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3884)
  store %struct.Memory* %call_4a3884, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a3887	 Bytes: 3
  %loadMem_4a3887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3887 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3887)
  store %struct.Memory* %call_4a3887, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 4a388a	 Bytes: 3
  %loadMem_4a388a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a388a = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a388a)
  store %struct.Memory* %call_4a388a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a3860	 RIP: 4a388d	 Bytes: 5
  %loadMem_4a388d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a388d = call %struct.Memory* @routine_jmpq_.L_4a3860(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a388d, i64 -45, i64 5)
  store %struct.Memory* %call_4a388d, %struct.Memory** %MEMORY

  br label %block_.L_4a3860

  ; Code: .L_4a3892:	 RIP: 4a3892	 Bytes: 0
block_.L_4a3892:

  ; Code: jmpq .L_4a3897	 RIP: 4a3892	 Bytes: 5
  %loadMem_4a3892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3892 = call %struct.Memory* @routine_jmpq_.L_4a3897(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3892, i64 5, i64 5)
  store %struct.Memory* %call_4a3892, %struct.Memory** %MEMORY

  br label %block_.L_4a3897

  ; Code: .L_4a3897:	 RIP: 4a3897	 Bytes: 0
block_.L_4a3897:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4a3897	 Bytes: 3
  %loadMem_4a3897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3897 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3897)
  store %struct.Memory* %call_4a3897, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a389a	 Bytes: 3
  %loadMem_4a389a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a389a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a389a)
  store %struct.Memory* %call_4a389a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 4a389d	 Bytes: 3
  %loadMem_4a389d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a389d = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a389d)
  store %struct.Memory* %call_4a389d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a369f	 RIP: 4a38a0	 Bytes: 5
  %loadMem_4a38a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38a0 = call %struct.Memory* @routine_jmpq_.L_4a369f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38a0, i64 -513, i64 5)
  store %struct.Memory* %call_4a38a0, %struct.Memory** %MEMORY

  br label %block_.L_4a369f

  ; Code: .L_4a38a5:	 RIP: 4a38a5	 Bytes: 0
block_.L_4a38a5:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4a38a5	 Bytes: 4
  %loadMem_4a38a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38a5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38a5)
  store %struct.Memory* %call_4a38a5, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 4a38a9	 Bytes: 3
  %loadMem_4a38a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38a9 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38a9)
  store %struct.Memory* %call_4a38a9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4a38ac	 Bytes: 2
  %loadMem_4a38ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38ac = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38ac)
  store %struct.Memory* %call_4a38ac, %struct.Memory** %MEMORY

  ; Code: movl $0x3, (%rax,%rdx,4)	 RIP: 4a38ae	 Bytes: 7
  %loadMem_4a38ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38ae = call %struct.Memory* @routine_movl__0x3____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38ae)
  store %struct.Memory* %call_4a38ae, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x38(%rbp)	 RIP: 4a38b5	 Bytes: 7
  %loadMem_4a38b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38b5 = call %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38b5)
  store %struct.Memory* %call_4a38b5, %struct.Memory** %MEMORY

  ; Code: .L_4a38bc:	 RIP: 4a38bc	 Bytes: 0
  br label %block_.L_4a38bc
block_.L_4a38bc:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a38bc	 Bytes: 3
  %loadMem_4a38bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38bc = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38bc)
  store %struct.Memory* %call_4a38bc, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4a38bf	 Bytes: 3
  %loadMem_4a38bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38bf = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38bf)
  store %struct.Memory* %call_4a38bf, %struct.Memory** %MEMORY

  ; Code: jae .L_4a38ee	 RIP: 4a38c2	 Bytes: 6
  %loadMem_4a38c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38c2 = call %struct.Memory* @routine_jae_.L_4a38ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38c2, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_4a38c2, %struct.Memory** %MEMORY

  %loadBr_4a38c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a38c2 = icmp eq i8 %loadBr_4a38c2, 1
  br i1 %cmpBr_4a38c2, label %block_.L_4a38ee, label %block_4a38c8

block_4a38c8:
  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a38c8	 Bytes: 3
  %loadMem_4a38c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38c8 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38c8)
  store %struct.Memory* %call_4a38c8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4a38cb	 Bytes: 2
  %loadMem_4a38cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38cb = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38cb)
  store %struct.Memory* %call_4a38cb, %struct.Memory** %MEMORY

  ; Code: movl -0x1d0(%rbp,%rcx,4), %eax	 RIP: 4a38cd	 Bytes: 7
  %loadMem_4a38cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38cd = call %struct.Memory* @routine_movl_MINUS0x1d0__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38cd)
  store %struct.Memory* %call_4a38cd, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 4a38d4	 Bytes: 3
  %loadMem_4a38d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38d4 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38d4)
  store %struct.Memory* %call_4a38d4, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4a38d7	 Bytes: 2
  %loadMem_4a38d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38d7 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38d7)
  store %struct.Memory* %call_4a38d7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd0(%rbp,%rcx,4)	 RIP: 4a38d9	 Bytes: 7
  %loadMem_4a38d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38d9 = call %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38d9)
  store %struct.Memory* %call_4a38d9, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4a38e0	 Bytes: 3
  %loadMem_4a38e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38e0 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38e0)
  store %struct.Memory* %call_4a38e0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a38e3	 Bytes: 3
  %loadMem_4a38e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38e3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38e3)
  store %struct.Memory* %call_4a38e3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 4a38e6	 Bytes: 3
  %loadMem_4a38e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38e6 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38e6)
  store %struct.Memory* %call_4a38e6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a38bc	 RIP: 4a38e9	 Bytes: 5
  %loadMem_4a38e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38e9 = call %struct.Memory* @routine_jmpq_.L_4a38bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38e9, i64 -45, i64 5)
  store %struct.Memory* %call_4a38e9, %struct.Memory** %MEMORY

  br label %block_.L_4a38bc

  ; Code: .L_4a38ee:	 RIP: 4a38ee	 Bytes: 0
block_.L_4a38ee:

  ; Code: cmpl $0x0, -0x30(%rbp)	 RIP: 4a38ee	 Bytes: 4
  %loadMem_4a38ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38ee = call %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38ee)
  store %struct.Memory* %call_4a38ee, %struct.Memory** %MEMORY

  ; Code: jne .L_4a3913	 RIP: 4a38f2	 Bytes: 6
  %loadMem_4a38f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38f2 = call %struct.Memory* @routine_jne_.L_4a3913(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38f2, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_4a38f2, %struct.Memory** %MEMORY

  %loadBr_4a38f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a38f2 = icmp eq i8 %loadBr_4a38f2, 1
  br i1 %cmpBr_4a38f2, label %block_.L_4a3913, label %block_4a38f8

block_4a38f8:
  ; Code: movq 0x6cb900, %rax	 RIP: 4a38f8	 Bytes: 8
  %loadMem_4a38f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a38f8 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a38f8)
  store %struct.Memory* %call_4a38f8, %struct.Memory** %MEMORY

  ; Code: movq 0x3750(%rax), %rax	 RIP: 4a3900	 Bytes: 7
  %loadMem_4a3900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3900 = call %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3900)
  store %struct.Memory* %call_4a3900, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x38(%rax)	 RIP: 4a3907	 Bytes: 7
  %loadMem_4a3907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3907 = call %struct.Memory* @routine_movl__0x1__0x38__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3907)
  store %struct.Memory* %call_4a3907, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a3929	 RIP: 4a390e	 Bytes: 5
  %loadMem_4a390e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a390e = call %struct.Memory* @routine_jmpq_.L_4a3929(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a390e, i64 27, i64 5)
  store %struct.Memory* %call_4a390e, %struct.Memory** %MEMORY

  br label %block_.L_4a3929

  ; Code: .L_4a3913:	 RIP: 4a3913	 Bytes: 0
block_.L_4a3913:

  ; Code: movq 0x6cb900, %rax	 RIP: 4a3913	 Bytes: 8
  %loadMem_4a3913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3913 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3913)
  store %struct.Memory* %call_4a3913, %struct.Memory** %MEMORY

  ; Code: movq 0x3750(%rax), %rax	 RIP: 4a391b	 Bytes: 7
  %loadMem_4a391b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a391b = call %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a391b)
  store %struct.Memory* %call_4a391b, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x58(%rax)	 RIP: 4a3922	 Bytes: 7
  %loadMem_4a3922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3922 = call %struct.Memory* @routine_movl__0x1__0x58__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3922)
  store %struct.Memory* %call_4a3922, %struct.Memory** %MEMORY

  ; Code: .L_4a3929:	 RIP: 4a3929	 Bytes: 0
  br label %block_.L_4a3929
block_.L_4a3929:

  ; Code: jmpq .L_4a392e	 RIP: 4a3929	 Bytes: 5
  %loadMem_4a3929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3929 = call %struct.Memory* @routine_jmpq_.L_4a392e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3929, i64 5, i64 5)
  store %struct.Memory* %call_4a3929, %struct.Memory** %MEMORY

  br label %block_.L_4a392e

  ; Code: .L_4a392e:	 RIP: 4a392e	 Bytes: 0
block_.L_4a392e:

  ; Code: addq $0x300, %rsp	 RIP: 4a392e	 Bytes: 7
  %loadMem_4a392e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a392e = call %struct.Memory* @routine_addq__0x300___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a392e)
  store %struct.Memory* %call_4a392e, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4a3935	 Bytes: 1
  %loadMem_4a3935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3935 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3935)
  store %struct.Memory* %call_4a3935, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4a3936	 Bytes: 1
  %loadMem_4a3936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a3936 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a3936)
  store %struct.Memory* %call_4a3936, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4a3936
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

define %struct.Memory* @routine_subq__0x300___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 768)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x10__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x1___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 1)
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


define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r9d__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_0x722c98___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x722c98_type* @G_0x722c98 to i64))
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

define %struct.Memory* @routine_addl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_shll__cl___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 21
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %R10D = bitcast %union.anon* %12 to i32*
  %13 = bitcast i32* %R10D to i64*
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i8, i8* %CL
  %17 = zext i8 %16 to i64
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 3
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %13, i64 %15, i64 %17)
  ret %struct.Memory* %20
}


define %struct.Memory* @routine_movl__r10d__MINUS0x2f4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 756
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl__0x0__0x1c__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 28
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

define %struct.Memory* @routine_jne_.L_4a32b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x2f4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 756
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 752
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


define %struct.Memory* @routine_movl_0x11b10__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4a32de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_jae_.L_4a3324(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_0x18dc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 6364
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__ecx__MINUS0xd0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -208
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
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


define %struct.Memory* @routine_jmpq_.L_4a32eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jae_.L_4a34ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl__ecx__MINUS0x150__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -336
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
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


define %struct.Memory* @routine_jne_.L_4a34b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4a34b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_subl_0x4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_callq_.abs_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x2ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 748
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x2ec__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 748
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0x2e0__rbp__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -736
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4a345f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jge_.L_4a344a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x1__MINUS0x250__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -592
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 1)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jmpq_.L_4a345a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__0xffffffff__MINUS0x250__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -592
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 -1)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jmpq_.L_4a34b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jle_.L_4a349d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_4a34ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jmpq_.L_4a34b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4a34bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4a332b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_0x70eaa8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x70eaa8_type* @G_0x70eaa8 to i64))
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


define %struct.Memory* @routine_jae_.L_4a3633(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jae_.L_4a3620(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x2e0__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -736
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_cmpl_MINUS0x2e0__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -736
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 %21)
  ret %struct.Memory* %24
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

define %struct.Memory* @routine_jg_.L_4a3559(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_4a360d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x250__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -592
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %19)
  ret %struct.Memory* %22
}






define %struct.Memory* @routine_cmpl_MINUS0x250__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -592
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jle_.L_4a360d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl__eax__MINUS0x2e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 740
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movl__eax__MINUS0x2e0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -736
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movl_MINUS0x2e4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl_MINUS0x150__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -336
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %19)
  ret %struct.Memory* %22
}














define %struct.Memory* @routine_movl__eax__MINUS0x150__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -336
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




























define %struct.Memory* @routine_movl__eax__MINUS0x250__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -592
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}










define %struct.Memory* @routine_jmpq_.L_4a3612(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4a34ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4a3625(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4a34d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x258__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_jae_.L_4a368b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0xd0__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -208
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %19)
  ret %struct.Memory* %22
}






define %struct.Memory* @routine_cmpl_MINUS0x150__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -336
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_je_.L_4a3678(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x258__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4a367d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4a3644(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x258__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4a392e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jae_.L_4a38a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 744
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x2e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 744
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_4a3724(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x0____rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x2e8__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 744
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
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


define %struct.Memory* @routine_cmpl__0x0____rdx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4a371f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x2f0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 752
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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






define %struct.Memory* @routine_movl__eax____rcx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
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


define %struct.Memory* @routine_jmpq_.L_4a374e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__0x1____rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 1)
  ret %struct.Memory* %18
}


































define %struct.Memory* @routine_movl__eax__MINUS0x1d0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -464
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
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










define %struct.Memory* @routine_jae_.L_4a37df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_4a37cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jmpq_.L_4a37d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4a3781(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x254__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 596
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_jae_.L_4a383e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x1d0__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -464
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %19)
  ret %struct.Memory* %22
}








define %struct.Memory* @routine_je_.L_4a382b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x254__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 596
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4a383e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4a3830(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4a37f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x254__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 596
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4a3859(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_4a38a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jae_.L_4a3892(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -208
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_jmpq_.L_4a3860(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4a3897(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4a369f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__0x3____rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 3)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jae_.L_4a38ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jmpq_.L_4a38bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_4a3913(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x1__0x38__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4a3929(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__0x1__0x58__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4a392e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x300___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 768)
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

