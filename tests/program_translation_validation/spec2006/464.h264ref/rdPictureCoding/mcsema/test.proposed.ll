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

declare %struct.Memory* @sub_4afd90.test_wp_P_slice(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42a450.frame_picture(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_49dfd0.picture_coding_decision(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4b05b0.test_wp_B_slice(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6ccae8_type = type <{ [4 x i8] }>
@G_0x6ccae8= global %G_0x6ccae8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6d11c8_type = type <{ [8 x i8] }>
@G_0x6d11c8= global %G_0x6d11c8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6d12b0_type = type <{ [8 x i8] }>
@G_0x6d12b0= global %G_0x6d12b0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6d4690_type = type <{ [8 x i8] }>
@G_0x6d4690= global %G_0x6d4690_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x710a50_type = type <{ [8 x i8] }>
@G_0x710a50= global %G_0x710a50_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x711c40_type = type <{ [8 x i8] }>
@G_0x711c40= global %G_0x711c40_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x721df0_type = type <{ [8 x i8] }>
@G_0x721df0= global %G_0x721df0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722b50_type = type <{ [4 x i8] }>
@G_0x722b50= global %G_0x722b50_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x711c60_type = type <{ [8 x i8] }>
@G__0x711c60= global %G__0x711c60_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @rdPictureCoding(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .rdPictureCoding:	 RIP: 42a970	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 42a970	 Bytes: 1
  %loadMem_42a970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a970 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a970)
  store %struct.Memory* %call_42a970, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 42a971	 Bytes: 3
  %loadMem_42a971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a971 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a971)
  store %struct.Memory* %call_42a971, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 42a974	 Bytes: 4
  %loadMem_42a974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a974 = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a974)
  store %struct.Memory* %call_42a974, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a978	 Bytes: 8
  %loadMem_42a978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a978 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a978)
  store %struct.Memory* %call_42a978, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 42a980	 Bytes: 3
  %loadMem_42a980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a980 = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a980)
  store %struct.Memory* %call_42a980, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4(%rbp)	 RIP: 42a983	 Bytes: 3
  %loadMem_42a983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a983 = call %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a983)
  store %struct.Memory* %call_42a983, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a986	 Bytes: 8
  %loadMem_42a986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a986 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a986)
  store %struct.Memory* %call_42a986, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 42a98e	 Bytes: 3
  %loadMem_42a98e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a98e = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a98e)
  store %struct.Memory* %call_42a98e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x8(%rbp)	 RIP: 42a991	 Bytes: 3
  %loadMem_42a991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a991 = call %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a991)
  store %struct.Memory* %call_42a991, %struct.Memory** %MEMORY

  ; Code: movl 0x6ccae8, %ecx	 RIP: 42a994	 Bytes: 7
  %loadMem_42a994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a994 = call %struct.Memory* @routine_movl_0x6ccae8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a994)
  store %struct.Memory* %call_42a994, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xc(%rbp)	 RIP: 42a99b	 Bytes: 3
  %loadMem_42a99b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a99b = call %struct.Memory* @routine_movl__ecx__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a99b)
  store %struct.Memory* %call_42a99b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a99e	 Bytes: 8
  %loadMem_42a99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a99e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a99e)
  store %struct.Memory* %call_42a99e, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %ecx	 RIP: 42a9a6	 Bytes: 3
  %loadMem_42a9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9a6 = call %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9a6)
  store %struct.Memory* %call_42a9a6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x10(%rbp)	 RIP: 42a9a9	 Bytes: 3
  %loadMem_42a9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9a9 = call %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9a9)
  store %struct.Memory* %call_42a9a9, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 42a9ac	 Bytes: 7
  %loadMem_42a9ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9ac = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9ac)
  store %struct.Memory* %call_42a9ac, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a9b3	 Bytes: 8
  %loadMem_42a9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9b3 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9b3)
  store %struct.Memory* %call_42a9b3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 42a9bb	 Bytes: 4
  %loadMem_42a9bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9bb = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9bb)
  store %struct.Memory* %call_42a9bb, %struct.Memory** %MEMORY

  ; Code: je .L_42aa6c	 RIP: 42a9bf	 Bytes: 6
  %loadMem_42a9bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9bf = call %struct.Memory* @routine_je_.L_42aa6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9bf, i8* %BRANCH_TAKEN, i64 173, i64 6, i64 6)
  store %struct.Memory* %call_42a9bf, %struct.Memory** %MEMORY

  %loadBr_42a9bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a9bf = icmp eq i8 %loadBr_42a9bf, 1
  br i1 %cmpBr_42a9bf, label %block_.L_42aa6c, label %block_42a9c5

block_42a9c5:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 42a9c5	 Bytes: 8
  %loadMem_42a9c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9c5 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9c5)
  store %struct.Memory* %call_42a9c5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x3c(%rax)	 RIP: 42a9cd	 Bytes: 4
  %loadMem_42a9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9cd = call %struct.Memory* @routine_cmpl__0x0__0x3c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9cd)
  store %struct.Memory* %call_42a9cd, %struct.Memory** %MEMORY

  ; Code: je .L_42aa6c	 RIP: 42a9d1	 Bytes: 6
  %loadMem_42a9d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9d1 = call %struct.Memory* @routine_je_.L_42aa6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9d1, i8* %BRANCH_TAKEN, i64 155, i64 6, i64 6)
  store %struct.Memory* %call_42a9d1, %struct.Memory** %MEMORY

  %loadBr_42a9d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a9d1 = icmp eq i8 %loadBr_42a9d1, 1
  br i1 %cmpBr_42a9d1, label %block_.L_42aa6c, label %block_42a9d7

block_42a9d7:
  ; Code: movq 0x6cb900, %rax	 RIP: 42a9d7	 Bytes: 8
  %loadMem_42a9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9d7 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9d7)
  store %struct.Memory* %call_42a9d7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rax)	 RIP: 42a9df	 Bytes: 4
  %loadMem_42a9df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9df = call %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9df)
  store %struct.Memory* %call_42a9df, %struct.Memory** %MEMORY

  ; Code: jne .L_42aa4f	 RIP: 42a9e3	 Bytes: 6
  %loadMem_42a9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9e3 = call %struct.Memory* @routine_jne_.L_42aa4f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9e3, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_42a9e3, %struct.Memory** %MEMORY

  %loadBr_42a9e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a9e3 = icmp eq i8 %loadBr_42a9e3, 1
  br i1 %cmpBr_42a9e3, label %block_.L_42aa4f, label %block_42a9e9

block_42a9e9:
  ; Code: xorl %edi, %edi	 RIP: 42a9e9	 Bytes: 2
  %loadMem_42a9e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9e9 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9e9)
  store %struct.Memory* %call_42a9e9, %struct.Memory** %MEMORY

  ; Code: callq .test_wp_P_slice	 RIP: 42a9eb	 Bytes: 5
  %loadMem1_42a9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a9eb = call %struct.Memory* @routine_callq_.test_wp_P_slice(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a9eb, i64 545701, i64 5, i64 5)
  store %struct.Memory* %call1_42a9eb, %struct.Memory** %MEMORY

  %loadMem2_42a9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a9eb = load i64, i64* %3
  %call2_42a9eb = call %struct.Memory* @sub_4afd90.test_wp_P_slice(%struct.State* %0, i64  %loadPC_42a9eb, %struct.Memory* %loadMem2_42a9eb)
  store %struct.Memory* %call2_42a9eb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 42a9f0	 Bytes: 3
  %loadMem_42a9f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9f0 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9f0)
  store %struct.Memory* %call_42a9f0, %struct.Memory** %MEMORY

  ; Code: jne .L_42aa16	 RIP: 42a9f3	 Bytes: 6
  %loadMem_42a9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9f3 = call %struct.Memory* @routine_jne_.L_42aa16(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9f3, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_42a9f3, %struct.Memory** %MEMORY

  %loadBr_42a9f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a9f3 = icmp eq i8 %loadBr_42a9f3, 1
  br i1 %cmpBr_42a9f3, label %block_.L_42aa16, label %block_42a9f9

block_42a9f9:
  ; Code: movq $0x711c60, %rax	 RIP: 42a9f9	 Bytes: 10
  %loadMem_42a9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a9f9 = call %struct.Memory* @routine_movq__0x711c60___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a9f9)
  store %struct.Memory* %call_42a9f9, %struct.Memory** %MEMORY

  ; Code: addq $0xf0, %rax	 RIP: 42aa03	 Bytes: 6
  %loadMem_42aa03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa03 = call %struct.Memory* @routine_addq__0xf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa03)
  store %struct.Memory* %call_42aa03, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d4690	 RIP: 42aa09	 Bytes: 8
  %loadMem_42aa09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa09 = call %struct.Memory* @routine_movq__rax__0x6d4690(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa09)
  store %struct.Memory* %call_42aa09, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42aa4a	 RIP: 42aa11	 Bytes: 5
  %loadMem_42aa11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa11 = call %struct.Memory* @routine_jmpq_.L_42aa4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa11, i64 57, i64 5)
  store %struct.Memory* %call_42aa11, %struct.Memory** %MEMORY

  br label %block_.L_42aa4a

  ; Code: .L_42aa16:	 RIP: 42aa16	 Bytes: 0
block_.L_42aa16:

  ; Code: movq $0x711c60, %rax	 RIP: 42aa16	 Bytes: 10
  %loadMem_42aa16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa16 = call %struct.Memory* @routine_movq__0x711c60___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa16)
  store %struct.Memory* %call_42aa16, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 42aa20	 Bytes: 8
  %loadMem_42aa20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa20 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa20)
  store %struct.Memory* %call_42aa20, %struct.Memory** %MEMORY

  ; Code: movl 0x518(%rcx), %edx	 RIP: 42aa28	 Bytes: 6
  %loadMem_42aa28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa28 = call %struct.Memory* @routine_movl_0x518__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa28)
  store %struct.Memory* %call_42aa28, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x14(%rbp)	 RIP: 42aa2e	 Bytes: 3
  %loadMem_42aa2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa2e = call %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa2e)
  store %struct.Memory* %call_42aa2e, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d4690	 RIP: 42aa31	 Bytes: 8
  %loadMem_42aa31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa31 = call %struct.Memory* @routine_movq__rax__0x6d4690(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa31)
  store %struct.Memory* %call_42aa31, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42aa39	 Bytes: 8
  %loadMem_42aa39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa39 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa39)
  store %struct.Memory* %call_42aa39, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %edx	 RIP: 42aa41	 Bytes: 3
  %loadMem_42aa41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa41 = call %struct.Memory* @routine_movl_0x28__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa41)
  store %struct.Memory* %call_42aa41, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 42aa44	 Bytes: 3
  %loadMem_42aa44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa44 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa44)
  store %struct.Memory* %call_42aa44, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x28(%rax)	 RIP: 42aa47	 Bytes: 3
  %loadMem_42aa47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa47 = call %struct.Memory* @routine_movl__edx__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa47)
  store %struct.Memory* %call_42aa47, %struct.Memory** %MEMORY

  ; Code: .L_42aa4a:	 RIP: 42aa4a	 Bytes: 0
  br label %block_.L_42aa4a
block_.L_42aa4a:

  ; Code: jmpq .L_42aa67	 RIP: 42aa4a	 Bytes: 5
  %loadMem_42aa4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa4a = call %struct.Memory* @routine_jmpq_.L_42aa67(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa4a, i64 29, i64 5)
  store %struct.Memory* %call_42aa4a, %struct.Memory** %MEMORY

  br label %block_.L_42aa67

  ; Code: .L_42aa4f:	 RIP: 42aa4f	 Bytes: 0
block_.L_42aa4f:

  ; Code: movq $0x711c60, %rax	 RIP: 42aa4f	 Bytes: 10
  %loadMem_42aa4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa4f = call %struct.Memory* @routine_movq__0x711c60___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa4f)
  store %struct.Memory* %call_42aa4f, %struct.Memory** %MEMORY

  ; Code: addq $0x1e0, %rax	 RIP: 42aa59	 Bytes: 6
  %loadMem_42aa59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa59 = call %struct.Memory* @routine_addq__0x1e0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa59)
  store %struct.Memory* %call_42aa59, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d4690	 RIP: 42aa5f	 Bytes: 8
  %loadMem_42aa5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa5f = call %struct.Memory* @routine_movq__rax__0x6d4690(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa5f)
  store %struct.Memory* %call_42aa5f, %struct.Memory** %MEMORY

  ; Code: .L_42aa67:	 RIP: 42aa67	 Bytes: 0
  br label %block_.L_42aa67
block_.L_42aa67:

  ; Code: jmpq .L_42aa7d	 RIP: 42aa67	 Bytes: 5
  %loadMem_42aa67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa67 = call %struct.Memory* @routine_jmpq_.L_42aa7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa67, i64 22, i64 5)
  store %struct.Memory* %call_42aa67, %struct.Memory** %MEMORY

  br label %block_.L_42aa7d

  ; Code: .L_42aa6c:	 RIP: 42aa6c	 Bytes: 0
block_.L_42aa6c:

  ; Code: movq 0x6cb900, %rax	 RIP: 42aa6c	 Bytes: 8
  %loadMem_42aa6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa6c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa6c)
  store %struct.Memory* %call_42aa6c, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 42aa74	 Bytes: 3
  %loadMem_42aa74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa74 = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa74)
  store %struct.Memory* %call_42aa74, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 42aa77	 Bytes: 3
  %loadMem_42aa77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa77 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa77)
  store %struct.Memory* %call_42aa77, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x28(%rax)	 RIP: 42aa7a	 Bytes: 3
  %loadMem_42aa7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa7a = call %struct.Memory* @routine_movl__ecx__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa7a)
  store %struct.Memory* %call_42aa7a, %struct.Memory** %MEMORY

  ; Code: .L_42aa7d:	 RIP: 42aa7d	 Bytes: 0
  br label %block_.L_42aa7d
block_.L_42aa7d:

  ; Code: movq 0x6d4690, %rax	 RIP: 42aa7d	 Bytes: 8
  %loadMem_42aa7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa7d = call %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa7d)
  store %struct.Memory* %call_42aa7d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 42aa85	 Bytes: 4
  %loadMem_42aa85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa85 = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa85)
  store %struct.Memory* %call_42aa85, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42aa89	 Bytes: 8
  %loadMem_42aa89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa89 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa89)
  store %struct.Memory* %call_42aa89, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 42aa91	 Bytes: 3
  %loadMem_42aa91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa91 = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa91)
  store %struct.Memory* %call_42aa91, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4(%rbp)	 RIP: 42aa94	 Bytes: 3
  %loadMem_42aa94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa94 = call %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa94)
  store %struct.Memory* %call_42aa94, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42aa97	 Bytes: 8
  %loadMem_42aa97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa97 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa97)
  store %struct.Memory* %call_42aa97, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11bb0(%rax)	 RIP: 42aa9f	 Bytes: 10
  %loadMem_42aa9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aa9f = call %struct.Memory* @routine_movl__0x0__0x11bb0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aa9f)
  store %struct.Memory* %call_42aa9f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 42aaa9	 Bytes: 4
  %loadMem_42aaa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaa9 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaa9)
  store %struct.Memory* %call_42aaa9, %struct.Memory** %MEMORY

  ; Code: je .L_42aad6	 RIP: 42aaad	 Bytes: 6
  %loadMem_42aaad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaad = call %struct.Memory* @routine_je_.L_42aad6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaad, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_42aaad, %struct.Memory** %MEMORY

  %loadBr_42aaad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42aaad = icmp eq i8 %loadBr_42aaad, 1
  br i1 %cmpBr_42aaad, label %block_.L_42aad6, label %block_42aab3

block_42aab3:
  ; Code: movq 0x6cb900, %rax	 RIP: 42aab3	 Bytes: 8
  %loadMem_42aab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aab3 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aab3)
  store %struct.Memory* %call_42aab3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1187c(%rax)	 RIP: 42aabb	 Bytes: 10
  %loadMem_42aabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aabb = call %struct.Memory* @routine_movl__0x0__0x1187c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aabb)
  store %struct.Memory* %call_42aabb, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x6d12b0	 RIP: 42aac5	 Bytes: 12
  %loadMem_42aac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aac5 = call %struct.Memory* @routine_movq__0x0__0x6d12b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aac5)
  store %struct.Memory* %call_42aac5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42ab0e	 RIP: 42aad1	 Bytes: 5
  %loadMem_42aad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aad1 = call %struct.Memory* @routine_jmpq_.L_42ab0e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aad1, i64 61, i64 5)
  store %struct.Memory* %call_42aad1, %struct.Memory** %MEMORY

  br label %block_.L_42ab0e

  ; Code: .L_42aad6:	 RIP: 42aad6	 Bytes: 0
block_.L_42aad6:

  ; Code: movl $0x1, %esi	 RIP: 42aad6	 Bytes: 5
  %loadMem_42aad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aad6 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aad6)
  store %struct.Memory* %call_42aad6, %struct.Memory** %MEMORY

  ; Code: movq 0x6d11c8, %rdi	 RIP: 42aadb	 Bytes: 8
  %loadMem_42aadb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aadb = call %struct.Memory* @routine_movq_0x6d11c8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aadb)
  store %struct.Memory* %call_42aadb, %struct.Memory** %MEMORY

  ; Code: callq .frame_picture	 RIP: 42aae3	 Bytes: 5
  %loadMem1_42aae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42aae3 = call %struct.Memory* @routine_callq_.frame_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42aae3, i64 -1683, i64 5, i64 5)
  store %struct.Memory* %call1_42aae3, %struct.Memory** %MEMORY

  %loadMem2_42aae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42aae3 = load i64, i64* %3
  %call2_42aae3 = call %struct.Memory* @sub_42a450.frame_picture(%struct.State* %0, i64  %loadPC_42aae3, %struct.Memory* %loadMem2_42aae3)
  store %struct.Memory* %call2_42aae3, %struct.Memory** %MEMORY

  ; Code: movq 0x711c40, %rdi	 RIP: 42aae8	 Bytes: 8
  %loadMem_42aae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aae8 = call %struct.Memory* @routine_movq_0x711c40___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aae8)
  store %struct.Memory* %call_42aae8, %struct.Memory** %MEMORY

  ; Code: movq 0x6d11c8, %rsi	 RIP: 42aaf0	 Bytes: 8
  %loadMem_42aaf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaf0 = call %struct.Memory* @routine_movq_0x6d11c8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaf0)
  store %struct.Memory* %call_42aaf0, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 42aaf8	 Bytes: 3
  %loadMem_42aaf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aaf8 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aaf8)
  store %struct.Memory* %call_42aaf8, %struct.Memory** %MEMORY

  ; Code: callq .picture_coding_decision	 RIP: 42aafb	 Bytes: 5
  %loadMem1_42aafb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42aafb = call %struct.Memory* @routine_callq_.picture_coding_decision(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42aafb, i64 472277, i64 5, i64 5)
  store %struct.Memory* %call1_42aafb, %struct.Memory** %MEMORY

  %loadMem2_42aafb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42aafb = load i64, i64* %3
  %call2_42aafb = call %struct.Memory* @sub_49dfd0.picture_coding_decision(%struct.State* %0, i64  %loadPC_42aafb, %struct.Memory* %loadMem2_42aafb)
  store %struct.Memory* %call2_42aafb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 42ab00	 Bytes: 8
  %loadMem_42ab00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab00 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab00)
  store %struct.Memory* %call_42ab00, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1187c(%rsi)	 RIP: 42ab08	 Bytes: 6
  %loadMem_42ab08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab08 = call %struct.Memory* @routine_movl__eax__0x1187c__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab08)
  store %struct.Memory* %call_42ab08, %struct.Memory** %MEMORY

  ; Code: .L_42ab0e:	 RIP: 42ab0e	 Bytes: 0
  br label %block_.L_42ab0e
block_.L_42ab0e:

  ; Code: movq 0x6cb900, %rax	 RIP: 42ab0e	 Bytes: 8
  %loadMem_42ab0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab0e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab0e)
  store %struct.Memory* %call_42ab0e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1187c(%rax)	 RIP: 42ab16	 Bytes: 7
  %loadMem_42ab16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab16 = call %struct.Memory* @routine_cmpl__0x0__0x1187c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab16)
  store %struct.Memory* %call_42ab16, %struct.Memory** %MEMORY

  ; Code: jne .L_42ab99	 RIP: 42ab1d	 Bytes: 6
  %loadMem_42ab1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab1d = call %struct.Memory* @routine_jne_.L_42ab99(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab1d, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_42ab1d, %struct.Memory** %MEMORY

  %loadBr_42ab1d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ab1d = icmp eq i8 %loadBr_42ab1d, 1
  br i1 %cmpBr_42ab1d, label %block_.L_42ab99, label %block_42ab23

block_42ab23:
  ; Code: movq 0x710a50, %rax	 RIP: 42ab23	 Bytes: 8
  %loadMem_42ab23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab23 = call %struct.Memory* @routine_movq_0x710a50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab23)
  store %struct.Memory* %call_42ab23, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x70fcf0	 RIP: 42ab2b	 Bytes: 8
  %loadMem_42ab2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab2b = call %struct.Memory* @routine_movq__rax__0x70fcf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab2b)
  store %struct.Memory* %call_42ab2b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42ab33	 Bytes: 8
  %loadMem_42ab33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab33 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab33)
  store %struct.Memory* %call_42ab33, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 42ab3b	 Bytes: 4
  %loadMem_42ab3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab3b = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab3b)
  store %struct.Memory* %call_42ab3b, %struct.Memory** %MEMORY

  ; Code: je .L_42ab7c	 RIP: 42ab3f	 Bytes: 6
  %loadMem_42ab3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab3f = call %struct.Memory* @routine_je_.L_42ab7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab3f, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_42ab3f, %struct.Memory** %MEMORY

  %loadBr_42ab3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ab3f = icmp eq i8 %loadBr_42ab3f, 1
  br i1 %cmpBr_42ab3f, label %block_.L_42ab7c, label %block_42ab45

block_42ab45:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 42ab45	 Bytes: 8
  %loadMem_42ab45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab45 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab45)
  store %struct.Memory* %call_42ab45, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x3c(%rax)	 RIP: 42ab4d	 Bytes: 4
  %loadMem_42ab4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab4d = call %struct.Memory* @routine_cmpl__0x0__0x3c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab4d)
  store %struct.Memory* %call_42ab4d, %struct.Memory** %MEMORY

  ; Code: je .L_42ab7c	 RIP: 42ab51	 Bytes: 6
  %loadMem_42ab51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab51 = call %struct.Memory* @routine_je_.L_42ab7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab51, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_42ab51, %struct.Memory** %MEMORY

  %loadBr_42ab51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ab51 = icmp eq i8 %loadBr_42ab51, 1
  br i1 %cmpBr_42ab51, label %block_.L_42ab7c, label %block_42ab57

block_42ab57:
  ; Code: movq $0x711c60, %rax	 RIP: 42ab57	 Bytes: 10
  %loadMem_42ab57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab57 = call %struct.Memory* @routine_movq__0x711c60___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab57)
  store %struct.Memory* %call_42ab57, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 42ab61	 Bytes: 3
  %loadMem_42ab61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab61 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab61)
  store %struct.Memory* %call_42ab61, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 42ab64	 Bytes: 8
  %loadMem_42ab64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab64 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab64)
  store %struct.Memory* %call_42ab64, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x28(%rdx)	 RIP: 42ab6c	 Bytes: 3
  %loadMem_42ab6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab6c = call %struct.Memory* @routine_movl__ecx__0x28__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab6c)
  store %struct.Memory* %call_42ab6c, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d4690	 RIP: 42ab6f	 Bytes: 8
  %loadMem_42ab6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab6f = call %struct.Memory* @routine_movq__rax__0x6d4690(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab6f)
  store %struct.Memory* %call_42ab6f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42ab8a	 RIP: 42ab77	 Bytes: 5
  %loadMem_42ab77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab77 = call %struct.Memory* @routine_jmpq_.L_42ab8a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab77, i64 19, i64 5)
  store %struct.Memory* %call_42ab77, %struct.Memory** %MEMORY

  br label %block_.L_42ab8a

  ; Code: .L_42ab7c:	 RIP: 42ab7c	 Bytes: 0
block_.L_42ab7c:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 42ab7c	 Bytes: 3
  %loadMem_42ab7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab7c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab7c)
  store %struct.Memory* %call_42ab7c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 42ab7f	 Bytes: 8
  %loadMem_42ab7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab7f = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab7f)
  store %struct.Memory* %call_42ab7f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x28(%rcx)	 RIP: 42ab87	 Bytes: 3
  %loadMem_42ab87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab87 = call %struct.Memory* @routine_movl__eax__0x28__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab87)
  store %struct.Memory* %call_42ab87, %struct.Memory** %MEMORY

  ; Code: .L_42ab8a:	 RIP: 42ab8a	 Bytes: 0
  br label %block_.L_42ab8a
block_.L_42ab8a:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 42ab8a	 Bytes: 3
  %loadMem_42ab8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab8a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab8a)
  store %struct.Memory* %call_42ab8a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x6ccae8	 RIP: 42ab8d	 Bytes: 7
  %loadMem_42ab8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab8d = call %struct.Memory* @routine_movl__eax__0x6ccae8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab8d)
  store %struct.Memory* %call_42ab8d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42aba3	 RIP: 42ab94	 Bytes: 5
  %loadMem_42ab94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab94 = call %struct.Memory* @routine_jmpq_.L_42aba3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab94, i64 15, i64 5)
  store %struct.Memory* %call_42ab94, %struct.Memory** %MEMORY

  br label %block_.L_42aba3

  ; Code: .L_42ab99:	 RIP: 42ab99	 Bytes: 0
block_.L_42ab99:

  ; Code: movl 0x6ccae8, %eax	 RIP: 42ab99	 Bytes: 7
  %loadMem_42ab99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ab99 = call %struct.Memory* @routine_movl_0x6ccae8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ab99)
  store %struct.Memory* %call_42ab99, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 42aba0	 Bytes: 3
  %loadMem_42aba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aba0 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aba0)
  store %struct.Memory* %call_42aba0, %struct.Memory** %MEMORY

  ; Code: .L_42aba3:	 RIP: 42aba3	 Bytes: 0
  br label %block_.L_42aba3
block_.L_42aba3:

  ; Code: movq 0x6cb900, %rax	 RIP: 42aba3	 Bytes: 8
  %loadMem_42aba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aba3 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aba3)
  store %struct.Memory* %call_42aba3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 42abab	 Bytes: 4
  %loadMem_42abab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abab = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abab)
  store %struct.Memory* %call_42abab, %struct.Memory** %MEMORY

  ; Code: je .L_42ace0	 RIP: 42abaf	 Bytes: 6
  %loadMem_42abaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abaf = call %struct.Memory* @routine_je_.L_42ace0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abaf, i8* %BRANCH_TAKEN, i64 305, i64 6, i64 6)
  store %struct.Memory* %call_42abaf, %struct.Memory** %MEMORY

  %loadBr_42abaf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42abaf = icmp eq i8 %loadBr_42abaf, 1
  br i1 %cmpBr_42abaf, label %block_.L_42ace0, label %block_42abb5

block_42abb5:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 42abb5	 Bytes: 8
  %loadMem_42abb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abb5 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abb5)
  store %struct.Memory* %call_42abb5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x3c(%rax)	 RIP: 42abbd	 Bytes: 4
  %loadMem_42abbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abbd = call %struct.Memory* @routine_cmpl__0x0__0x3c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abbd)
  store %struct.Memory* %call_42abbd, %struct.Memory** %MEMORY

  ; Code: je .L_42ace0	 RIP: 42abc1	 Bytes: 6
  %loadMem_42abc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abc1 = call %struct.Memory* @routine_je_.L_42ace0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abc1, i8* %BRANCH_TAKEN, i64 287, i64 6, i64 6)
  store %struct.Memory* %call_42abc1, %struct.Memory** %MEMORY

  %loadBr_42abc1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42abc1 = icmp eq i8 %loadBr_42abc1, 1
  br i1 %cmpBr_42abc1, label %block_.L_42ace0, label %block_42abc7

block_42abc7:
  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 42abc7	 Bytes: 7
  %loadMem_42abc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abc7 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abc7)
  store %struct.Memory* %call_42abc7, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 42abce	 Bytes: 3
  %loadMem_42abce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abce = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abce)
  store %struct.Memory* %call_42abce, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 42abd1	 Bytes: 8
  %loadMem_42abd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abd1 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abd1)
  store %struct.Memory* %call_42abd1, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x28(%rcx)	 RIP: 42abd9	 Bytes: 3
  %loadMem_42abd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abd9 = call %struct.Memory* @routine_movl__eax__0x28__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abd9)
  store %struct.Memory* %call_42abd9, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 42abdc	 Bytes: 8
  %loadMem_42abdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abdc = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abdc)
  store %struct.Memory* %call_42abdc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rcx)	 RIP: 42abe4	 Bytes: 4
  %loadMem_42abe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abe4 = call %struct.Memory* @routine_cmpl__0x0__0x18__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abe4)
  store %struct.Memory* %call_42abe4, %struct.Memory** %MEMORY

  ; Code: jne .L_42ac57	 RIP: 42abe8	 Bytes: 6
  %loadMem_42abe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abe8 = call %struct.Memory* @routine_jne_.L_42ac57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abe8, i8* %BRANCH_TAKEN, i64 111, i64 6, i64 6)
  store %struct.Memory* %call_42abe8, %struct.Memory** %MEMORY

  %loadBr_42abe8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42abe8 = icmp eq i8 %loadBr_42abe8, 1
  br i1 %cmpBr_42abe8, label %block_.L_42ac57, label %block_42abee

block_42abee:
  ; Code: movl $0x1, %edi	 RIP: 42abee	 Bytes: 5
  %loadMem_42abee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abee = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abee)
  store %struct.Memory* %call_42abee, %struct.Memory** %MEMORY

  ; Code: callq .test_wp_P_slice	 RIP: 42abf3	 Bytes: 5
  %loadMem1_42abf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42abf3 = call %struct.Memory* @routine_callq_.test_wp_P_slice(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42abf3, i64 545181, i64 5, i64 5)
  store %struct.Memory* %call1_42abf3, %struct.Memory** %MEMORY

  %loadMem2_42abf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42abf3 = load i64, i64* %3
  %call2_42abf3 = call %struct.Memory* @sub_4afd90.test_wp_P_slice(%struct.State* %0, i64  %loadPC_42abf3, %struct.Memory* %loadMem2_42abf3)
  store %struct.Memory* %call2_42abf3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 42abf8	 Bytes: 3
  %loadMem_42abf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abf8 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abf8)
  store %struct.Memory* %call_42abf8, %struct.Memory** %MEMORY

  ; Code: jne .L_42ac1e	 RIP: 42abfb	 Bytes: 6
  %loadMem_42abfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42abfb = call %struct.Memory* @routine_jne_.L_42ac1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42abfb, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_42abfb, %struct.Memory** %MEMORY

  %loadBr_42abfb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42abfb = icmp eq i8 %loadBr_42abfb, 1
  br i1 %cmpBr_42abfb, label %block_.L_42ac1e, label %block_42ac01

block_42ac01:
  ; Code: movq $0x711c60, %rax	 RIP: 42ac01	 Bytes: 10
  %loadMem_42ac01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac01 = call %struct.Memory* @routine_movq__0x711c60___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac01)
  store %struct.Memory* %call_42ac01, %struct.Memory** %MEMORY

  ; Code: addq $0xf0, %rax	 RIP: 42ac0b	 Bytes: 6
  %loadMem_42ac0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac0b = call %struct.Memory* @routine_addq__0xf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac0b)
  store %struct.Memory* %call_42ac0b, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d4690	 RIP: 42ac11	 Bytes: 8
  %loadMem_42ac11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac11 = call %struct.Memory* @routine_movq__rax__0x6d4690(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac11)
  store %struct.Memory* %call_42ac11, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42ac52	 RIP: 42ac19	 Bytes: 5
  %loadMem_42ac19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac19 = call %struct.Memory* @routine_jmpq_.L_42ac52(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac19, i64 57, i64 5)
  store %struct.Memory* %call_42ac19, %struct.Memory** %MEMORY

  br label %block_.L_42ac52

  ; Code: .L_42ac1e:	 RIP: 42ac1e	 Bytes: 0
block_.L_42ac1e:

  ; Code: movq $0x711c60, %rax	 RIP: 42ac1e	 Bytes: 10
  %loadMem_42ac1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac1e = call %struct.Memory* @routine_movq__0x711c60___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac1e)
  store %struct.Memory* %call_42ac1e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 42ac28	 Bytes: 8
  %loadMem_42ac28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac28 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac28)
  store %struct.Memory* %call_42ac28, %struct.Memory** %MEMORY

  ; Code: movl 0x518(%rcx), %edx	 RIP: 42ac30	 Bytes: 6
  %loadMem_42ac30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac30 = call %struct.Memory* @routine_movl_0x518__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac30)
  store %struct.Memory* %call_42ac30, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x14(%rbp)	 RIP: 42ac36	 Bytes: 3
  %loadMem_42ac36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac36 = call %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac36)
  store %struct.Memory* %call_42ac36, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d4690	 RIP: 42ac39	 Bytes: 8
  %loadMem_42ac39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac39 = call %struct.Memory* @routine_movq__rax__0x6d4690(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac39)
  store %struct.Memory* %call_42ac39, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42ac41	 Bytes: 8
  %loadMem_42ac41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac41 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac41)
  store %struct.Memory* %call_42ac41, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %edx	 RIP: 42ac49	 Bytes: 3
  %loadMem_42ac49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac49 = call %struct.Memory* @routine_movl_0x28__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac49)
  store %struct.Memory* %call_42ac49, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42ac4c	 Bytes: 3
  %loadMem_42ac4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac4c = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac4c)
  store %struct.Memory* %call_42ac4c, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x28(%rax)	 RIP: 42ac4f	 Bytes: 3
  %loadMem_42ac4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac4f = call %struct.Memory* @routine_movl__edx__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac4f)
  store %struct.Memory* %call_42ac4f, %struct.Memory** %MEMORY

  ; Code: .L_42ac52:	 RIP: 42ac52	 Bytes: 0
  br label %block_.L_42ac52
block_.L_42ac52:

  ; Code: jmpq .L_42acdb	 RIP: 42ac52	 Bytes: 5
  %loadMem_42ac52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac52 = call %struct.Memory* @routine_jmpq_.L_42acdb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac52, i64 137, i64 5)
  store %struct.Memory* %call_42ac52, %struct.Memory** %MEMORY

  br label %block_.L_42acdb

  ; Code: .L_42ac57:	 RIP: 42ac57	 Bytes: 0
block_.L_42ac57:

  ; Code: xorl %edi, %edi	 RIP: 42ac57	 Bytes: 2
  %loadMem_42ac57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac57 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac57)
  store %struct.Memory* %call_42ac57, %struct.Memory** %MEMORY

  ; Code: callq .test_wp_B_slice	 RIP: 42ac59	 Bytes: 5
  %loadMem1_42ac59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42ac59 = call %struct.Memory* @routine_callq_.test_wp_B_slice(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42ac59, i64 547159, i64 5, i64 5)
  store %struct.Memory* %call1_42ac59, %struct.Memory** %MEMORY

  %loadMem2_42ac59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ac59 = load i64, i64* %3
  %call2_42ac59 = call %struct.Memory* @sub_4b05b0.test_wp_B_slice(%struct.State* %0, i64  %loadPC_42ac59, %struct.Memory* %loadMem2_42ac59)
  store %struct.Memory* %call2_42ac59, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 42ac5e	 Bytes: 3
  %loadMem_42ac5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac5e = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac5e)
  store %struct.Memory* %call_42ac5e, %struct.Memory** %MEMORY

  ; Code: jne .L_42ac84	 RIP: 42ac61	 Bytes: 6
  %loadMem_42ac61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac61 = call %struct.Memory* @routine_jne_.L_42ac84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac61, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_42ac61, %struct.Memory** %MEMORY

  %loadBr_42ac61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ac61 = icmp eq i8 %loadBr_42ac61, 1
  br i1 %cmpBr_42ac61, label %block_.L_42ac84, label %block_42ac67

block_42ac67:
  ; Code: movq $0x711c60, %rax	 RIP: 42ac67	 Bytes: 10
  %loadMem_42ac67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac67 = call %struct.Memory* @routine_movq__0x711c60___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac67)
  store %struct.Memory* %call_42ac67, %struct.Memory** %MEMORY

  ; Code: addq $0xf0, %rax	 RIP: 42ac71	 Bytes: 6
  %loadMem_42ac71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac71 = call %struct.Memory* @routine_addq__0xf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac71)
  store %struct.Memory* %call_42ac71, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d4690	 RIP: 42ac77	 Bytes: 8
  %loadMem_42ac77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac77 = call %struct.Memory* @routine_movq__rax__0x6d4690(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac77)
  store %struct.Memory* %call_42ac77, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42acd6	 RIP: 42ac7f	 Bytes: 5
  %loadMem_42ac7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac7f = call %struct.Memory* @routine_jmpq_.L_42acd6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac7f, i64 87, i64 5)
  store %struct.Memory* %call_42ac7f, %struct.Memory** %MEMORY

  br label %block_.L_42acd6

  ; Code: .L_42ac84:	 RIP: 42ac84	 Bytes: 0
block_.L_42ac84:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 42ac84	 Bytes: 8
  %loadMem_42ac84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac84 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac84)
  store %struct.Memory* %call_42ac84, %struct.Memory** %MEMORY

  ; Code: movl 0x51c(%rax), %ecx	 RIP: 42ac8c	 Bytes: 6
  %loadMem_42ac8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac8c = call %struct.Memory* @routine_movl_0x51c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac8c)
  store %struct.Memory* %call_42ac8c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 42ac92	 Bytes: 3
  %loadMem_42ac92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac92 = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac92)
  store %struct.Memory* %call_42ac92, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42ac95	 Bytes: 8
  %loadMem_42ac95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac95 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac95)
  store %struct.Memory* %call_42ac95, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11b30(%rax)	 RIP: 42ac9d	 Bytes: 7
  %loadMem_42ac9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ac9d = call %struct.Memory* @routine_cmpl__0x0__0x11b30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ac9d)
  store %struct.Memory* %call_42ac9d, %struct.Memory** %MEMORY

  ; Code: je .L_42acc0	 RIP: 42aca4	 Bytes: 6
  %loadMem_42aca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aca4 = call %struct.Memory* @routine_je_.L_42acc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aca4, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_42aca4, %struct.Memory** %MEMORY

  %loadBr_42aca4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42aca4 = icmp eq i8 %loadBr_42aca4, 1
  br i1 %cmpBr_42aca4, label %block_.L_42acc0, label %block_42acaa

block_42acaa:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 42acaa	 Bytes: 3
  %loadMem_42acaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acaa = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acaa)
  store %struct.Memory* %call_42acaa, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 42acad	 Bytes: 3
  %loadMem_42acad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acad = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acad)
  store %struct.Memory* %call_42acad, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 42acb0	 Bytes: 8
  %loadMem_42acb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acb0 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acb0)
  store %struct.Memory* %call_42acb0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x28(%rcx)	 RIP: 42acb8	 Bytes: 3
  %loadMem_42acb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acb8 = call %struct.Memory* @routine_movl__eax__0x28__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acb8)
  store %struct.Memory* %call_42acb8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42acd1	 RIP: 42acbb	 Bytes: 5
  %loadMem_42acbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acbb = call %struct.Memory* @routine_jmpq_.L_42acd1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acbb, i64 22, i64 5)
  store %struct.Memory* %call_42acbb, %struct.Memory** %MEMORY

  br label %block_.L_42acd1

  ; Code: .L_42acc0:	 RIP: 42acc0	 Bytes: 0
block_.L_42acc0:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 42acc0	 Bytes: 3
  %loadMem_42acc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acc0 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acc0)
  store %struct.Memory* %call_42acc0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42acc3	 Bytes: 3
  %loadMem_42acc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acc3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acc3)
  store %struct.Memory* %call_42acc3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 42acc6	 Bytes: 8
  %loadMem_42acc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acc6 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acc6)
  store %struct.Memory* %call_42acc6, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x28(%rcx)	 RIP: 42acce	 Bytes: 3
  %loadMem_42acce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acce = call %struct.Memory* @routine_movl__eax__0x28__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acce)
  store %struct.Memory* %call_42acce, %struct.Memory** %MEMORY

  ; Code: .L_42acd1:	 RIP: 42acd1	 Bytes: 0
  br label %block_.L_42acd1
block_.L_42acd1:

  ; Code: jmpq .L_42acd6	 RIP: 42acd1	 Bytes: 5
  %loadMem_42acd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acd1 = call %struct.Memory* @routine_jmpq_.L_42acd6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acd1, i64 5, i64 5)
  store %struct.Memory* %call_42acd1, %struct.Memory** %MEMORY

  br label %block_.L_42acd6

  ; Code: .L_42acd6:	 RIP: 42acd6	 Bytes: 0
block_.L_42acd6:

  ; Code: jmpq .L_42acdb	 RIP: 42acd6	 Bytes: 5
  %loadMem_42acd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acd6 = call %struct.Memory* @routine_jmpq_.L_42acdb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acd6, i64 5, i64 5)
  store %struct.Memory* %call_42acd6, %struct.Memory** %MEMORY

  br label %block_.L_42acdb

  ; Code: .L_42acdb:	 RIP: 42acdb	 Bytes: 0
block_.L_42acdb:

  ; Code: jmpq .L_42ad03	 RIP: 42acdb	 Bytes: 5
  %loadMem_42acdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acdb = call %struct.Memory* @routine_jmpq_.L_42ad03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acdb, i64 40, i64 5)
  store %struct.Memory* %call_42acdb, %struct.Memory** %MEMORY

  br label %block_.L_42ad03

  ; Code: .L_42ace0:	 RIP: 42ace0	 Bytes: 0
block_.L_42ace0:

  ; Code: movq $0x711c60, %rax	 RIP: 42ace0	 Bytes: 10
  %loadMem_42ace0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ace0 = call %struct.Memory* @routine_movq__0x711c60___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ace0)
  store %struct.Memory* %call_42ace0, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d4690	 RIP: 42acea	 Bytes: 8
  %loadMem_42acea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acea = call %struct.Memory* @routine_movq__rax__0x6d4690(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acea)
  store %struct.Memory* %call_42acea, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 42acf2	 Bytes: 3
  %loadMem_42acf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acf2 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acf2)
  store %struct.Memory* %call_42acf2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 42acf5	 Bytes: 3
  %loadMem_42acf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acf5 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acf5)
  store %struct.Memory* %call_42acf5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42acf8	 Bytes: 8
  %loadMem_42acf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42acf8 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42acf8)
  store %struct.Memory* %call_42acf8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x28(%rax)	 RIP: 42ad00	 Bytes: 3
  %loadMem_42ad00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad00 = call %struct.Memory* @routine_movl__ecx__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad00)
  store %struct.Memory* %call_42ad00, %struct.Memory** %MEMORY

  ; Code: .L_42ad03:	 RIP: 42ad03	 Bytes: 0
  br label %block_.L_42ad03
block_.L_42ad03:

  ; Code: movq 0x6cb900, %rax	 RIP: 42ad03	 Bytes: 8
  %loadMem_42ad03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad03 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad03)
  store %struct.Memory* %call_42ad03, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rax)	 RIP: 42ad0b	 Bytes: 4
  %loadMem_42ad0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad0b = call %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad0b)
  store %struct.Memory* %call_42ad0b, %struct.Memory** %MEMORY

  ; Code: jne .L_42ad69	 RIP: 42ad0f	 Bytes: 6
  %loadMem_42ad0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad0f = call %struct.Memory* @routine_jne_.L_42ad69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad0f, i8* %BRANCH_TAKEN, i64 90, i64 6, i64 6)
  store %struct.Memory* %call_42ad0f, %struct.Memory** %MEMORY

  %loadBr_42ad0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ad0f = icmp eq i8 %loadBr_42ad0f, 1
  br i1 %cmpBr_42ad0f, label %block_.L_42ad69, label %block_42ad15

block_42ad15:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 42ad15	 Bytes: 8
  %loadMem_42ad15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad15 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad15)
  store %struct.Memory* %call_42ad15, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x3c(%rax)	 RIP: 42ad1d	 Bytes: 4
  %loadMem_42ad1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad1d = call %struct.Memory* @routine_cmpl__0x0__0x3c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad1d)
  store %struct.Memory* %call_42ad1d, %struct.Memory** %MEMORY

  ; Code: je .L_42ad69	 RIP: 42ad21	 Bytes: 6
  %loadMem_42ad21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad21 = call %struct.Memory* @routine_je_.L_42ad69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad21, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_42ad21, %struct.Memory** %MEMORY

  %loadBr_42ad21 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ad21 = icmp eq i8 %loadBr_42ad21, 1
  br i1 %cmpBr_42ad21, label %block_.L_42ad69, label %block_42ad27

block_42ad27:
  ; Code: imull $0x64, 0x6ccae8, %eax	 RIP: 42ad27	 Bytes: 8
  %loadMem_42ad27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad27 = call %struct.Memory* @routine_imull__0x64__0x6ccae8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad27)
  store %struct.Memory* %call_42ad27, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 42ad2f	 Bytes: 8
  %loadMem_42ad2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad2f = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad2f)
  store %struct.Memory* %call_42ad2f, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 42ad37	 Bytes: 2
  %loadMem_42ad37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad37 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad37)
  store %struct.Memory* %call_42ad37, %struct.Memory** %MEMORY

  ; Code: divl 0x11b28(%rcx)	 RIP: 42ad39	 Bytes: 6
  %loadMem_42ad39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad39 = call %struct.Memory* @routine_divl_0x11b28__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad39)
  store %struct.Memory* %call_42ad39, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4b, %eax	 RIP: 42ad3f	 Bytes: 3
  %loadMem_42ad3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad3f = call %struct.Memory* @routine_cmpl__0x4b___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad3f)
  store %struct.Memory* %call_42ad3f, %struct.Memory** %MEMORY

  ; Code: jb .L_42ad69	 RIP: 42ad42	 Bytes: 6
  %loadMem_42ad42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad42 = call %struct.Memory* @routine_jb_.L_42ad69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad42, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_42ad42, %struct.Memory** %MEMORY

  %loadBr_42ad42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ad42 = icmp eq i8 %loadBr_42ad42, 1
  br i1 %cmpBr_42ad42, label %block_.L_42ad69, label %block_42ad48

block_42ad48:
  ; Code: movq $0x711c60, %rax	 RIP: 42ad48	 Bytes: 10
  %loadMem_42ad48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad48 = call %struct.Memory* @routine_movq__0x711c60___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad48)
  store %struct.Memory* %call_42ad48, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 42ad52	 Bytes: 8
  %loadMem_42ad52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad52 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad52)
  store %struct.Memory* %call_42ad52, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x18(%rcx)	 RIP: 42ad5a	 Bytes: 7
  %loadMem_42ad5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad5a = call %struct.Memory* @routine_movl__0x2__0x18__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad5a)
  store %struct.Memory* %call_42ad5a, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d4690	 RIP: 42ad61	 Bytes: 8
  %loadMem_42ad61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad61 = call %struct.Memory* @routine_movq__rax__0x6d4690(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad61)
  store %struct.Memory* %call_42ad61, %struct.Memory** %MEMORY

  ; Code: .L_42ad69:	 RIP: 42ad69	 Bytes: 0
  br label %block_.L_42ad69
block_.L_42ad69:

  ; Code: movq 0x6cb900, %rax	 RIP: 42ad69	 Bytes: 8
  %loadMem_42ad69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad69 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad69)
  store %struct.Memory* %call_42ad69, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11bb0(%rax)	 RIP: 42ad71	 Bytes: 10
  %loadMem_42ad71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad71 = call %struct.Memory* @routine_movl__0x0__0x11bb0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad71)
  store %struct.Memory* %call_42ad71, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 42ad7b	 Bytes: 4
  %loadMem_42ad7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad7b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad7b)
  store %struct.Memory* %call_42ad7b, %struct.Memory** %MEMORY

  ; Code: je .L_42ada4	 RIP: 42ad7f	 Bytes: 6
  %loadMem_42ad7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad7f = call %struct.Memory* @routine_je_.L_42ada4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad7f, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_42ad7f, %struct.Memory** %MEMORY

  %loadBr_42ad7f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ad7f = icmp eq i8 %loadBr_42ad7f, 1
  br i1 %cmpBr_42ad7f, label %block_.L_42ada4, label %block_42ad85

block_42ad85:
  ; Code: movq $0x0, 0x722b50	 RIP: 42ad85	 Bytes: 12
  %loadMem_42ad85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad85 = call %struct.Memory* @routine_movq__0x0__0x722b50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad85)
  store %struct.Memory* %call_42ad85, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 42ad91	 Bytes: 3
  %loadMem_42ad91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad91 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad91)
  store %struct.Memory* %call_42ad91, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 42ad94	 Bytes: 8
  %loadMem_42ad94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad94 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad94)
  store %struct.Memory* %call_42ad94, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x28(%rcx)	 RIP: 42ad9c	 Bytes: 3
  %loadMem_42ad9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad9c = call %struct.Memory* @routine_movl__eax__0x28__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad9c)
  store %struct.Memory* %call_42ad9c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42ae2a	 RIP: 42ad9f	 Bytes: 5
  %loadMem_42ad9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ad9f = call %struct.Memory* @routine_jmpq_.L_42ae2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ad9f, i64 139, i64 5)
  store %struct.Memory* %call_42ad9f, %struct.Memory** %MEMORY

  br label %block_.L_42ae2a

  ; Code: .L_42ada4:	 RIP: 42ada4	 Bytes: 0
block_.L_42ada4:

  ; Code: movl $0x2, %esi	 RIP: 42ada4	 Bytes: 5
  %loadMem_42ada4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ada4 = call %struct.Memory* @routine_movl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ada4)
  store %struct.Memory* %call_42ada4, %struct.Memory** %MEMORY

  ; Code: movq 0x721df0, %rdi	 RIP: 42ada9	 Bytes: 8
  %loadMem_42ada9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ada9 = call %struct.Memory* @routine_movq_0x721df0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ada9)
  store %struct.Memory* %call_42ada9, %struct.Memory** %MEMORY

  ; Code: callq .frame_picture	 RIP: 42adb1	 Bytes: 5
  %loadMem1_42adb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42adb1 = call %struct.Memory* @routine_callq_.frame_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42adb1, i64 -2401, i64 5, i64 5)
  store %struct.Memory* %call1_42adb1, %struct.Memory** %MEMORY

  %loadMem2_42adb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42adb1 = load i64, i64* %3
  %call2_42adb1 = call %struct.Memory* @sub_42a450.frame_picture(%struct.State* %0, i64  %loadPC_42adb1, %struct.Memory* %loadMem2_42adb1)
  store %struct.Memory* %call2_42adb1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 42adb6	 Bytes: 8
  %loadMem_42adb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42adb6 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42adb6)
  store %struct.Memory* %call_42adb6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1187c(%rdi)	 RIP: 42adbe	 Bytes: 7
  %loadMem_42adbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42adbe = call %struct.Memory* @routine_cmpl__0x0__0x1187c__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42adbe)
  store %struct.Memory* %call_42adbe, %struct.Memory** %MEMORY

  ; Code: jne .L_42adf9	 RIP: 42adc5	 Bytes: 6
  %loadMem_42adc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42adc5 = call %struct.Memory* @routine_jne_.L_42adf9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42adc5, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_42adc5, %struct.Memory** %MEMORY

  %loadBr_42adc5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42adc5 = icmp eq i8 %loadBr_42adc5, 1
  br i1 %cmpBr_42adc5, label %block_.L_42adf9, label %block_42adcb

block_42adcb:
  ; Code: movq 0x711c40, %rdi	 RIP: 42adcb	 Bytes: 8
  %loadMem_42adcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42adcb = call %struct.Memory* @routine_movq_0x711c40___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42adcb)
  store %struct.Memory* %call_42adcb, %struct.Memory** %MEMORY

  ; Code: movq 0x721df0, %rsi	 RIP: 42add3	 Bytes: 8
  %loadMem_42add3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42add3 = call %struct.Memory* @routine_movq_0x721df0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42add3)
  store %struct.Memory* %call_42add3, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 42addb	 Bytes: 3
  %loadMem_42addb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42addb = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42addb)
  store %struct.Memory* %call_42addb, %struct.Memory** %MEMORY

  ; Code: callq .picture_coding_decision	 RIP: 42adde	 Bytes: 5
  %loadMem1_42adde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42adde = call %struct.Memory* @routine_callq_.picture_coding_decision(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42adde, i64 471538, i64 5, i64 5)
  store %struct.Memory* %call1_42adde, %struct.Memory** %MEMORY

  %loadMem2_42adde = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42adde = load i64, i64* %3
  %call2_42adde = call %struct.Memory* @sub_49dfd0.picture_coding_decision(%struct.State* %0, i64  %loadPC_42adde, %struct.Memory* %loadMem2_42adde)
  store %struct.Memory* %call2_42adde, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 42ade3	 Bytes: 3
  %loadMem_42ade3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ade3 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ade3)
  store %struct.Memory* %call_42ade3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 42ade6	 Bytes: 8
  %loadMem_42ade6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ade6 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ade6)
  store %struct.Memory* %call_42ade6, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1187c(%rsi)	 RIP: 42adee	 Bytes: 6
  %loadMem_42adee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42adee = call %struct.Memory* @routine_movl__eax__0x1187c__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42adee)
  store %struct.Memory* %call_42adee, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42ae25	 RIP: 42adf4	 Bytes: 5
  %loadMem_42adf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42adf4 = call %struct.Memory* @routine_jmpq_.L_42ae25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42adf4, i64 49, i64 5)
  store %struct.Memory* %call_42adf4, %struct.Memory** %MEMORY

  br label %block_.L_42ae25

  ; Code: .L_42adf9:	 RIP: 42adf9	 Bytes: 0
block_.L_42adf9:

  ; Code: movq 0x6d11c8, %rdi	 RIP: 42adf9	 Bytes: 8
  %loadMem_42adf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42adf9 = call %struct.Memory* @routine_movq_0x6d11c8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42adf9)
  store %struct.Memory* %call_42adf9, %struct.Memory** %MEMORY

  ; Code: movq 0x721df0, %rsi	 RIP: 42ae01	 Bytes: 8
  %loadMem_42ae01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae01 = call %struct.Memory* @routine_movq_0x721df0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae01)
  store %struct.Memory* %call_42ae01, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 42ae09	 Bytes: 3
  %loadMem_42ae09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae09 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae09)
  store %struct.Memory* %call_42ae09, %struct.Memory** %MEMORY

  ; Code: callq .picture_coding_decision	 RIP: 42ae0c	 Bytes: 5
  %loadMem1_42ae0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42ae0c = call %struct.Memory* @routine_callq_.picture_coding_decision(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42ae0c, i64 471492, i64 5, i64 5)
  store %struct.Memory* %call1_42ae0c, %struct.Memory** %MEMORY

  %loadMem2_42ae0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42ae0c = load i64, i64* %3
  %call2_42ae0c = call %struct.Memory* @sub_49dfd0.picture_coding_decision(%struct.State* %0, i64  %loadPC_42ae0c, %struct.Memory* %loadMem2_42ae0c)
  store %struct.Memory* %call2_42ae0c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 42ae11	 Bytes: 8
  %loadMem_42ae11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae11 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae11)
  store %struct.Memory* %call_42ae11, %struct.Memory** %MEMORY

  ; Code: addl 0x1187c(%rsi), %eax	 RIP: 42ae19	 Bytes: 6
  %loadMem_42ae19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae19 = call %struct.Memory* @routine_addl_0x1187c__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae19)
  store %struct.Memory* %call_42ae19, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1187c(%rsi)	 RIP: 42ae1f	 Bytes: 6
  %loadMem_42ae1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae1f = call %struct.Memory* @routine_movl__eax__0x1187c__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae1f)
  store %struct.Memory* %call_42ae1f, %struct.Memory** %MEMORY

  ; Code: .L_42ae25:	 RIP: 42ae25	 Bytes: 0
  br label %block_.L_42ae25
block_.L_42ae25:

  ; Code: jmpq .L_42ae2a	 RIP: 42ae25	 Bytes: 5
  %loadMem_42ae25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae25 = call %struct.Memory* @routine_jmpq_.L_42ae2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae25, i64 5, i64 5)
  store %struct.Memory* %call_42ae25, %struct.Memory** %MEMORY

  br label %block_.L_42ae2a

  ; Code: .L_42ae2a:	 RIP: 42ae2a	 Bytes: 0
block_.L_42ae2a:

  ; Code: movq 0x6cb900, %rax	 RIP: 42ae2a	 Bytes: 8
  %loadMem_42ae2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae2a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae2a)
  store %struct.Memory* %call_42ae2a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1187c(%rax)	 RIP: 42ae32	 Bytes: 7
  %loadMem_42ae32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae32 = call %struct.Memory* @routine_cmpl__0x0__0x1187c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae32)
  store %struct.Memory* %call_42ae32, %struct.Memory** %MEMORY

  ; Code: jne .L_42ae8c	 RIP: 42ae39	 Bytes: 6
  %loadMem_42ae39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae39 = call %struct.Memory* @routine_jne_.L_42ae8c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae39, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_42ae39, %struct.Memory** %MEMORY

  %loadBr_42ae39 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ae39 = icmp eq i8 %loadBr_42ae39, 1
  br i1 %cmpBr_42ae39, label %block_.L_42ae8c, label %block_42ae3f

block_42ae3f:
  ; Code: movq $0x711c60, %rax	 RIP: 42ae3f	 Bytes: 10
  %loadMem_42ae3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae3f = call %struct.Memory* @routine_movq__0x711c60___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae3f)
  store %struct.Memory* %call_42ae3f, %struct.Memory** %MEMORY

  ; Code: movq 0x710a50, %rcx	 RIP: 42ae49	 Bytes: 8
  %loadMem_42ae49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae49 = call %struct.Memory* @routine_movq_0x710a50___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae49)
  store %struct.Memory* %call_42ae49, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x70fcf0	 RIP: 42ae51	 Bytes: 8
  %loadMem_42ae51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae51 = call %struct.Memory* @routine_movq__rcx__0x70fcf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae51)
  store %struct.Memory* %call_42ae51, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 42ae59	 Bytes: 3
  %loadMem_42ae59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae59 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae59)
  store %struct.Memory* %call_42ae59, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 42ae5c	 Bytes: 8
  %loadMem_42ae5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae5c = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae5c)
  store %struct.Memory* %call_42ae5c, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x18(%rcx)	 RIP: 42ae64	 Bytes: 3
  %loadMem_42ae64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae64 = call %struct.Memory* @routine_movl__edx__0x18__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae64)
  store %struct.Memory* %call_42ae64, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d4690	 RIP: 42ae67	 Bytes: 8
  %loadMem_42ae67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae67 = call %struct.Memory* @routine_movq__rax__0x6d4690(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae67)
  store %struct.Memory* %call_42ae67, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 42ae6f	 Bytes: 3
  %loadMem_42ae6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae6f = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae6f)
  store %struct.Memory* %call_42ae6f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42ae72	 Bytes: 8
  %loadMem_42ae72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae72 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae72)
  store %struct.Memory* %call_42ae72, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x28(%rax)	 RIP: 42ae7a	 Bytes: 3
  %loadMem_42ae7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae7a = call %struct.Memory* @routine_movl__edx__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae7a)
  store %struct.Memory* %call_42ae7a, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 42ae7d	 Bytes: 3
  %loadMem_42ae7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae7d = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae7d)
  store %struct.Memory* %call_42ae7d, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x6ccae8	 RIP: 42ae80	 Bytes: 7
  %loadMem_42ae80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae80 = call %struct.Memory* @routine_movl__edx__0x6ccae8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae80)
  store %struct.Memory* %call_42ae80, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42aee8	 RIP: 42ae87	 Bytes: 5
  %loadMem_42ae87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae87 = call %struct.Memory* @routine_jmpq_.L_42aee8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae87, i64 97, i64 5)
  store %struct.Memory* %call_42ae87, %struct.Memory** %MEMORY

  br label %block_.L_42aee8

  ; Code: .L_42ae8c:	 RIP: 42ae8c	 Bytes: 0
block_.L_42ae8c:

  ; Code: movq 0x6cb900, %rax	 RIP: 42ae8c	 Bytes: 8
  %loadMem_42ae8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae8c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae8c)
  store %struct.Memory* %call_42ae8c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x1187c(%rax)	 RIP: 42ae94	 Bytes: 7
  %loadMem_42ae94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae94 = call %struct.Memory* @routine_cmpl__0x1__0x1187c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae94)
  store %struct.Memory* %call_42ae94, %struct.Memory** %MEMORY

  ; Code: jne .L_42aee3	 RIP: 42ae9b	 Bytes: 6
  %loadMem_42ae9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42ae9b = call %struct.Memory* @routine_jne_.L_42aee3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42ae9b, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_42ae9b, %struct.Memory** %MEMORY

  %loadBr_42ae9b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42ae9b = icmp eq i8 %loadBr_42ae9b, 1
  br i1 %cmpBr_42ae9b, label %block_.L_42aee3, label %block_42aea1

block_42aea1:
  ; Code: movq 0x6d12b0, %rax	 RIP: 42aea1	 Bytes: 8
  %loadMem_42aea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aea1 = call %struct.Memory* @routine_movq_0x6d12b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aea1)
  store %struct.Memory* %call_42aea1, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x70fcf0	 RIP: 42aea9	 Bytes: 8
  %loadMem_42aea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aea9 = call %struct.Memory* @routine_movq__rax__0x70fcf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aea9)
  store %struct.Memory* %call_42aea9, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 42aeb1	 Bytes: 3
  %loadMem_42aeb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aeb1 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aeb1)
  store %struct.Memory* %call_42aeb1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42aeb4	 Bytes: 8
  %loadMem_42aeb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aeb4 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aeb4)
  store %struct.Memory* %call_42aeb4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rax)	 RIP: 42aebc	 Bytes: 3
  %loadMem_42aebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aebc = call %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aebc)
  store %struct.Memory* %call_42aebc, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 42aebf	 Bytes: 4
  %loadMem_42aebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aebf = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aebf)
  store %struct.Memory* %call_42aebf, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d4690	 RIP: 42aec3	 Bytes: 8
  %loadMem_42aec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aec3 = call %struct.Memory* @routine_movq__rax__0x6d4690(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aec3)
  store %struct.Memory* %call_42aec3, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 42aecb	 Bytes: 3
  %loadMem_42aecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aecb = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aecb)
  store %struct.Memory* %call_42aecb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42aece	 Bytes: 8
  %loadMem_42aece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aece = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aece)
  store %struct.Memory* %call_42aece, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x28(%rax)	 RIP: 42aed6	 Bytes: 3
  %loadMem_42aed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aed6 = call %struct.Memory* @routine_movl__ecx__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aed6)
  store %struct.Memory* %call_42aed6, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 42aed9	 Bytes: 3
  %loadMem_42aed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aed9 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aed9)
  store %struct.Memory* %call_42aed9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x6ccae8	 RIP: 42aedc	 Bytes: 7
  %loadMem_42aedc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aedc = call %struct.Memory* @routine_movl__ecx__0x6ccae8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aedc)
  store %struct.Memory* %call_42aedc, %struct.Memory** %MEMORY

  ; Code: .L_42aee3:	 RIP: 42aee3	 Bytes: 0
  br label %block_.L_42aee3
block_.L_42aee3:

  ; Code: jmpq .L_42aee8	 RIP: 42aee3	 Bytes: 5
  %loadMem_42aee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aee3 = call %struct.Memory* @routine_jmpq_.L_42aee8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aee3, i64 5, i64 5)
  store %struct.Memory* %call_42aee3, %struct.Memory** %MEMORY

  br label %block_.L_42aee8

  ; Code: .L_42aee8:	 RIP: 42aee8	 Bytes: 0
block_.L_42aee8:

  ; Code: addq $0x20, %rsp	 RIP: 42aee8	 Bytes: 4
  %loadMem_42aee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aee8 = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aee8)
  store %struct.Memory* %call_42aee8, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 42aeec	 Bytes: 1
  %loadMem_42aeec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aeec = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aeec)
  store %struct.Memory* %call_42aeec, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 42aeed	 Bytes: 1
  %loadMem_42aeed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42aeed = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42aeed)
  store %struct.Memory* %call_42aeed, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_42aeed
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

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 32)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_0x6ccae8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6ccae8_type* @G_0x6ccae8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__ecx__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_je_.L_42aa6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x3c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jne_.L_42aa4f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_xorl__edi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_callq_.test_wp_P_slice(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42aa16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x711c60___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x711c60_type* @G__0x711c60 to i64))
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

define %struct.Memory* @routine_addq__0xf0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 240)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax__0x6d4690(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6d4690_type* @G_0x6d4690 to i64), i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_42aa4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movl_0x518__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_movl_0x28__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 40
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


define %struct.Memory* @routine_movl__edx__0x28__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 40
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_42aa67(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_addq__0x1e0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 480)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_42aa7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movl__ecx__0x28__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6d4690_type* @G_0x6d4690 to i64))
  ret %struct.Memory* %11
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










define %struct.Memory* @routine_movl__0x0__0x11bb0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72624
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42aad6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x0__0x1187c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71804
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__0x6d12b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6d12b0_type* @G_0x6d12b0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_42ab0e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_movl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x6d11c8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6d11c8_type* @G_0x6d11c8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.frame_picture(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x711c40___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x711c40_type* @G_0x711c40 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x6d11c8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6d11c8_type* @G_0x6d11c8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.picture_coding_decision(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__0x1187c__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 71804
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x0__0x1187c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71804
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42ab99(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_42ab7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
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


define %struct.Memory* @routine_movl__ecx__0x28__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_42ab8a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl__eax__0x28__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 40
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__eax__0x6ccae8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6ccae8_type* @G_0x6ccae8 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_42aba3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_0x6ccae8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6ccae8_type* @G_0x6ccae8 to i64))
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_je_.L_42ace0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_cmpl__0x0__0x18__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42ac57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 1)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_jne_.L_42ac1e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_42ac52(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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




define %struct.Memory* @routine_jmpq_.L_42acdb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_callq_.test_wp_B_slice(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_42ac84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_42acd6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl_0x51c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1308
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




define %struct.Memory* @routine_cmpl__0x0__0x11b30__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42acc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_42acd1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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










define %struct.Memory* @routine_jmpq_.L_42ad03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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










define %struct.Memory* @routine_jne_.L_42ad69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_42ad69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %3 to i32*
  %7 = load i32, i32* %6
  %8 = sext i32 %7 to i64
  %9 = shl i64 %4, 32
  %10 = ashr exact i64 %9, 32
  %11 = mul  i64 %8, %10
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

define %struct.Memory* @routine_imull__0x64__0x6ccae8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6ccae8_type* @G_0x6ccae8 to i64), i64 100)
  ret %struct.Memory* %11
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9DIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* dereferenceable(3376), i64) #0 {
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
  %14 = zext i32 %13 to i64
  %15 = shl  i64 %11, 32
  %16 = or i64 %15, %7
  %17 = udiv i64 %16, %14
  %18 = and i64 %17, 4294967295
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %22, %struct.Memory* %0) #21
  br label %34

; <label>:24:                                     ; preds = %3
  %25 = urem i64 %16, %14
  %26 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  store i64 %17, i64* %26, align 8
  %27 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %33, align 1
  br label %34

; <label>:34:                                     ; preds = %24, %20
  %35 = phi %struct.Memory* [ %23, %20 ], [ %0, %24 ]
  ret %struct.Memory* %35
}

define %struct.Memory* @routine_divl_0x11b28__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72488
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9DIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x4b___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 75)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = icmp ne i8 %7, 0
  %10 = select i1 %9, i64 %3, i64 %4
  store i64 %10, i64* %8, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jb_.L_42ad69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movl__0x2__0x18__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_je_.L_42ada4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x0__0x722b50(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x722b50_type* @G_0x722b50 to i64), i64 0)
  ret %struct.Memory* %8
}








define %struct.Memory* @routine_jmpq_.L_42ae2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 2)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x721df0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x721df0_type* @G_0x721df0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_cmpl__0x0__0x1187c__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71804
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42adf9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x721df0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x721df0_type* @G_0x721df0 to i64))
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_jmpq_.L_42ae25(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_addl_0x1187c__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 71804
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_jne_.L_42ae8c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x710a50___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x710a50_type* @G_0x710a50 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rcx__0x70fcf0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x70fcf0_type* @G_0x70fcf0 to i64), i64 %9)
  ret %struct.Memory* %12
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




define %struct.Memory* @routine_movl__edx__0x18__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__0x6ccae8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6ccae8_type* @G_0x6ccae8 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_42aee8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x1__0x1187c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71804
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42aee3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6d12b0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6d12b0_type* @G_0x6d12b0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__ecx__0x6ccae8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6ccae8_type* @G_0x6ccae8 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_addq__0x20___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 32)
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

