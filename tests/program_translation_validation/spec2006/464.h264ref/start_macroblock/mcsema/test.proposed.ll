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

declare %struct.Memory* @sub_43b350.set_MB_parameters(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_425aa0.FmoGetPreviousMBNr(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4808f0.updateRCModel(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_47e160.updateQuantizationParameter(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_449e80.CheckAvailabilityOfNeighbors(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40fe80.CheckAvailabilityOfNeighborsCABAC(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_45abd0.ResetFastFullIntegerSearch(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cd470_type = type <{ [4 x i8] }>
@G_0x6cd470= global %G_0x6cd470_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6cd4e4_type = type <{ [4 x i8] }>
@G_0x6cd4e4= global %G_0x6cd4e4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6d45e8_type = type <{ [4 x i8] }>
@G_0x6d45e8= global %G_0x6d45e8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6d4690_type = type <{ [8 x i8] }>
@G_0x6d4690= global %G_0x6d4690_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70e8d0_type = type <{ [4 x i8] }>
@G_0x70e8d0= global %G_0x70e8d0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722cb0_type = type <{ [8 x i8] }>
@G_0x722cb0= global %G_0x722cb0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x7242f0_type = type <{ [4 x i8] }>
@G_0x7242f0= global %G_0x7242f0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x724740_type = type <{ [4 x i8] }>
@G_0x724740= global %G_0x724740_type <{ [4 x i8] c"\00\00\00\00" }>


define %struct.Memory* @start_macroblock(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .start_macroblock:	 RIP: 43bc50	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 43bc50	 Bytes: 1
  %loadMem_43bc50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc50 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc50)
  store %struct.Memory* %call_43bc50, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 43bc51	 Bytes: 3
  %loadMem_43bc51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc51 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc51)
  store %struct.Memory* %call_43bc51, %struct.Memory** %MEMORY

  ; Code: subq $0x70, %rsp	 RIP: 43bc54	 Bytes: 4
  %loadMem_43bc54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc54 = call %struct.Memory* @routine_subq__0x70___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc54)
  store %struct.Memory* %call_43bc54, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 43bc58	 Bytes: 2
  %loadMem_43bc58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc58 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc58)
  store %struct.Memory* %call_43bc58, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 43bc5a	 Bytes: 3
  %loadMem_43bc5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc5a = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc5a)
  store %struct.Memory* %call_43bc5a, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 43bc5d	 Bytes: 3
  %loadMem_43bc5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc5d = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc5d)
  store %struct.Memory* %call_43bc5d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 43bc60	 Bytes: 8
  %loadMem_43bc60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc60 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc60)
  store %struct.Memory* %call_43bc60, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0xd0(%rcx)	 RIP: 43bc68	 Bytes: 7
  %loadMem_43bc68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc68 = call %struct.Memory* @routine_cmpl__0x2__0xd0__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc68)
  store %struct.Memory* %call_43bc68, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x65(%rbp)	 RIP: 43bc6f	 Bytes: 3
  %loadMem_43bc6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc6f = call %struct.Memory* @routine_movb__al__MINUS0x65__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc6f)
  store %struct.Memory* %call_43bc6f, %struct.Memory** %MEMORY

  ; Code: je .L_43bc8d	 RIP: 43bc72	 Bytes: 6
  %loadMem_43bc72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc72 = call %struct.Memory* @routine_je_.L_43bc8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc72, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43bc72, %struct.Memory** %MEMORY

  %loadBr_43bc72 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bc72 = icmp eq i8 %loadBr_43bc72, 1
  br i1 %cmpBr_43bc72, label %block_.L_43bc8d, label %block_43bc78

block_43bc78:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 43bc78	 Bytes: 8
  %loadMem_43bc78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc78 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc78)
  store %struct.Memory* %call_43bc78, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0xd0(%rax)	 RIP: 43bc80	 Bytes: 7
  %loadMem_43bc80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc80 = call %struct.Memory* @routine_cmpl__0x3__0xd0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc80)
  store %struct.Memory* %call_43bc80, %struct.Memory** %MEMORY

  ; Code: sete %cl	 RIP: 43bc87	 Bytes: 3
  %loadMem_43bc87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc87 = call %struct.Memory* @routine_sete__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc87)
  store %struct.Memory* %call_43bc87, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x65(%rbp)	 RIP: 43bc8a	 Bytes: 3
  %loadMem_43bc8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc8a = call %struct.Memory* @routine_movb__cl__MINUS0x65__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc8a)
  store %struct.Memory* %call_43bc8a, %struct.Memory** %MEMORY

  ; Code: .L_43bc8d:	 RIP: 43bc8d	 Bytes: 0
  br label %block_.L_43bc8d
block_.L_43bc8d:

  ; Code: movb -0x65(%rbp), %al	 RIP: 43bc8d	 Bytes: 3
  %loadMem_43bc8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc8d = call %struct.Memory* @routine_movb_MINUS0x65__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc8d)
  store %struct.Memory* %call_43bc8d, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %ecx	 RIP: 43bc90	 Bytes: 5
  %loadMem_43bc90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc90 = call %struct.Memory* @routine_movl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc90)
  store %struct.Memory* %call_43bc90, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 43bc95	 Bytes: 2
  %loadMem_43bc95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc95 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc95)
  store %struct.Memory* %call_43bc95, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %edx	 RIP: 43bc97	 Bytes: 3
  %loadMem_43bc97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc97 = call %struct.Memory* @routine_movzbl__al___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc97)
  store %struct.Memory* %call_43bc97, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1c(%rbp)	 RIP: 43bc9a	 Bytes: 3
  %loadMem_43bc9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc9a = call %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc9a)
  store %struct.Memory* %call_43bc9a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 43bc9d	 Bytes: 8
  %loadMem_43bc9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bc9d = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bc9d)
  store %struct.Memory* %call_43bc9d, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rsi), %rsi	 RIP: 43bca5	 Bytes: 7
  %loadMem_43bca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bca5 = call %struct.Memory* @routine_movq_0x3758__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bca5)
  store %struct.Memory* %call_43bca5, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdi	 RIP: 43bcac	 Bytes: 4
  %loadMem_43bcac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bcac = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bcac)
  store %struct.Memory* %call_43bcac, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rdi, %rdi	 RIP: 43bcb0	 Bytes: 7
  %loadMem_43bcb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bcb0 = call %struct.Memory* @routine_imulq__0x278___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bcb0)
  store %struct.Memory* %call_43bcb0, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 43bcb7	 Bytes: 3
  %loadMem_43bcb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bcb7 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bcb7)
  store %struct.Memory* %call_43bcb7, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x28(%rbp)	 RIP: 43bcba	 Bytes: 4
  %loadMem_43bcba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bcba = call %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bcba)
  store %struct.Memory* %call_43bcba, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 43bcbe	 Bytes: 8
  %loadMem_43bcbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bcbe = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bcbe)
  store %struct.Memory* %call_43bcbe, %struct.Memory** %MEMORY

  ; Code: movq 0x3750(%rsi), %rsi	 RIP: 43bcc6	 Bytes: 7
  %loadMem_43bcc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bcc6 = call %struct.Memory* @routine_movq_0x3750__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bcc6)
  store %struct.Memory* %call_43bcc6, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x30(%rbp)	 RIP: 43bccd	 Bytes: 4
  %loadMem_43bccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bccd = call %struct.Memory* @routine_movq__rsi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bccd)
  store %struct.Memory* %call_43bccd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 43bcd1	 Bytes: 8
  %loadMem_43bcd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bcd1 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bcd1)
  store %struct.Memory* %call_43bcd1, %struct.Memory** %MEMORY

  ; Code: movl 0x11bdc(%rsi), %eax	 RIP: 43bcd9	 Bytes: 6
  %loadMem_43bcd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bcd9 = call %struct.Memory* @routine_movl_0x11bdc__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bcd9)
  store %struct.Memory* %call_43bcd9, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 43bcdf	 Bytes: 1
  %loadMem_43bcdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bcdf = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bcdf)
  store %struct.Memory* %call_43bcdf, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 43bce0	 Bytes: 2
  %loadMem_43bce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bce0 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bce0)
  store %struct.Memory* %call_43bce0, %struct.Memory** %MEMORY

  ; Code: addl $0x19, %eax	 RIP: 43bce2	 Bytes: 3
  %loadMem_43bce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bce2 = call %struct.Memory* @routine_addl__0x19___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bce2)
  store %struct.Memory* %call_43bce2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43bce5	 Bytes: 3
  %loadMem_43bce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bce5 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bce5)
  store %struct.Memory* %call_43bce5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 43bce8	 Bytes: 8
  %loadMem_43bce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bce8 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bce8)
  store %struct.Memory* %call_43bce8, %struct.Memory** %MEMORY

  ; Code: movl 0x11bdc(%rsi), %eax	 RIP: 43bcf0	 Bytes: 6
  %loadMem_43bcf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bcf0 = call %struct.Memory* @routine_movl_0x11bdc__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bcf0)
  store %struct.Memory* %call_43bcf0, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 43bcf6	 Bytes: 1
  %loadMem_43bcf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bcf6 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bcf6)
  store %struct.Memory* %call_43bcf6, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 43bcf7	 Bytes: 2
  %loadMem_43bcf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bcf7 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bcf7)
  store %struct.Memory* %call_43bcf7, %struct.Memory** %MEMORY

  ; Code: addl $0x1a, %eax	 RIP: 43bcf9	 Bytes: 3
  %loadMem_43bcf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bcf9 = call %struct.Memory* @routine_addl__0x1a___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bcf9)
  store %struct.Memory* %call_43bcf9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 43bcfc	 Bytes: 3
  %loadMem_43bcfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bcfc = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bcfc)
  store %struct.Memory* %call_43bcfc, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 43bcff	 Bytes: 3
  %loadMem_43bcff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bcff = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bcff)
  store %struct.Memory* %call_43bcff, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rsi	 RIP: 43bd02	 Bytes: 4
  %loadMem_43bd02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd02 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd02)
  store %struct.Memory* %call_43bd02, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x214(%rsi)	 RIP: 43bd06	 Bytes: 6
  %loadMem_43bd06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd06 = call %struct.Memory* @routine_movl__eax__0x214__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd06)
  store %struct.Memory* %call_43bd06, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 43bd0c	 Bytes: 3
  %loadMem_43bd0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd0c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd0c)
  store %struct.Memory* %call_43bd0c, %struct.Memory** %MEMORY

  ; Code: movb %al, %r8b	 RIP: 43bd0f	 Bytes: 3
  %loadMem_43bd0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd0f = call %struct.Memory* @routine_movb__al___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd0f)
  store %struct.Memory* %call_43bd0f, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rsi	 RIP: 43bd12	 Bytes: 8
  %loadMem_43bd12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd12 = call %struct.Memory* @routine_movq_0x70fcf0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd12)
  store %struct.Memory* %call_43bd12, %struct.Memory** %MEMORY

  ; Code: movq 0x1948(%rsi), %rsi	 RIP: 43bd1a	 Bytes: 7
  %loadMem_43bd1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd1a = call %struct.Memory* @routine_movq_0x1948__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd1a)
  store %struct.Memory* %call_43bd1a, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdi	 RIP: 43bd21	 Bytes: 4
  %loadMem_43bd21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd21 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd21)
  store %struct.Memory* %call_43bd21, %struct.Memory** %MEMORY

  ; Code: movb %r8b, (%rsi,%rdi,1)	 RIP: 43bd25	 Bytes: 4
  %loadMem_43bd25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd25 = call %struct.Memory* @routine_movb__r8b____rsi__rdi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd25)
  store %struct.Memory* %call_43bd25, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 43bd29	 Bytes: 3
  %loadMem_43bd29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd29 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd29)
  store %struct.Memory* %call_43bd29, %struct.Memory** %MEMORY

  ; Code: callq .set_MB_parameters	 RIP: 43bd2c	 Bytes: 5
  %loadMem1_43bd2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43bd2c = call %struct.Memory* @routine_callq_.set_MB_parameters(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43bd2c, i64 -2524, i64 5, i64 5)
  store %struct.Memory* %call1_43bd2c, %struct.Memory** %MEMORY

  %loadMem2_43bd2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43bd2c = load i64, i64* %3
  %call2_43bd2c = call %struct.Memory* @sub_43b350.set_MB_parameters(%struct.State* %0, i64  %loadPC_43bd2c, %struct.Memory* %loadMem2_43bd2c)
  store %struct.Memory* %call2_43bd2c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 43bd31	 Bytes: 4
  %loadMem_43bd31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd31 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd31)
  store %struct.Memory* %call_43bd31, %struct.Memory** %MEMORY

  ; Code: je .L_43be7e	 RIP: 43bd35	 Bytes: 6
  %loadMem_43bd35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd35 = call %struct.Memory* @routine_je_.L_43be7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd35, i8* %BRANCH_TAKEN, i64 329, i64 6, i64 6)
  store %struct.Memory* %call_43bd35, %struct.Memory** %MEMORY

  %loadBr_43bd35 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bd35 = icmp eq i8 %loadBr_43bd35, 1
  br i1 %cmpBr_43bd35, label %block_.L_43be7e, label %block_43bd3b

block_43bd3b:
  ; Code: movq 0x6cb900, %rax	 RIP: 43bd3b	 Bytes: 8
  %loadMem_43bd3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd3b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd3b)
  store %struct.Memory* %call_43bd3b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x78(%rax)	 RIP: 43bd43	 Bytes: 4
  %loadMem_43bd43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd43 = call %struct.Memory* @routine_cmpl__0x0__0x78__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd43)
  store %struct.Memory* %call_43bd43, %struct.Memory** %MEMORY

  ; Code: jne .L_43be79	 RIP: 43bd47	 Bytes: 6
  %loadMem_43bd47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd47 = call %struct.Memory* @routine_jne_.L_43be79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd47, i8* %BRANCH_TAKEN, i64 306, i64 6, i64 6)
  store %struct.Memory* %call_43bd47, %struct.Memory** %MEMORY

  %loadBr_43bd47 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bd47 = icmp eq i8 %loadBr_43bd47, 1
  br i1 %cmpBr_43bd47, label %block_.L_43be79, label %block_43bd4d

block_43bd4d:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 43bd4d	 Bytes: 7
  %loadMem_43bd4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd4d = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd4d)
  store %struct.Memory* %call_43bd4d, %struct.Memory** %MEMORY

  ; Code: .L_43bd54:	 RIP: 43bd54	 Bytes: 0
  br label %block_.L_43bd54
block_.L_43bd54:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 43bd54	 Bytes: 3
  %loadMem_43bd54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd54 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd54)
  store %struct.Memory* %call_43bd54, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rcx	 RIP: 43bd57	 Bytes: 4
  %loadMem_43bd57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd57 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd57)
  store %struct.Memory* %call_43bd57, %struct.Memory** %MEMORY

  ; Code: cmpl 0x10(%rcx), %eax	 RIP: 43bd5b	 Bytes: 3
  %loadMem_43bd5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd5b = call %struct.Memory* @routine_cmpl_0x10__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd5b)
  store %struct.Memory* %call_43bd5b, %struct.Memory** %MEMORY

  ; Code: jge .L_43be74	 RIP: 43bd5e	 Bytes: 6
  %loadMem_43bd5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd5e = call %struct.Memory* @routine_jge_.L_43be74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd5e, i8* %BRANCH_TAKEN, i64 278, i64 6, i64 6)
  store %struct.Memory* %call_43bd5e, %struct.Memory** %MEMORY

  %loadBr_43bd5e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bd5e = icmp eq i8 %loadBr_43bd5e, 1
  br i1 %cmpBr_43bd5e, label %block_.L_43be74, label %block_43bd64

block_43bd64:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 43bd64	 Bytes: 4
  %loadMem_43bd64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd64 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd64)
  store %struct.Memory* %call_43bd64, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 43bd68	 Bytes: 4
  %loadMem_43bd68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd68 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd68)
  store %struct.Memory* %call_43bd68, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 43bd6c	 Bytes: 4
  %loadMem_43bd6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd6c = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd6c)
  store %struct.Memory* %call_43bd6c, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rcx, %rcx	 RIP: 43bd70	 Bytes: 4
  %loadMem_43bd70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd70 = call %struct.Memory* @routine_imulq__0x78___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd70)
  store %struct.Memory* %call_43bd70, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43bd74	 Bytes: 3
  %loadMem_43bd74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd74 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd74)
  store %struct.Memory* %call_43bd74, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 43bd77	 Bytes: 4
  %loadMem_43bd77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd77 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd77)
  store %struct.Memory* %call_43bd77, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 43bd7b	 Bytes: 4
  %loadMem_43bd7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd7b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd7b)
  store %struct.Memory* %call_43bd7b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 43bd7f	 Bytes: 3
  %loadMem_43bd7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd7f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd7f)
  store %struct.Memory* %call_43bd7f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 43bd82	 Bytes: 4
  %loadMem_43bd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd82 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd82)
  store %struct.Memory* %call_43bd82, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 43bd86	 Bytes: 4
  %loadMem_43bd86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd86 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd86)
  store %struct.Memory* %call_43bd86, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 43bd8a	 Bytes: 3
  %loadMem_43bd8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd8a = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd8a)
  store %struct.Memory* %call_43bd8a, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 43bd8d	 Bytes: 4
  %loadMem_43bd8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd8d = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd8d)
  store %struct.Memory* %call_43bd8d, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x10(%rax)	 RIP: 43bd91	 Bytes: 3
  %loadMem_43bd91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd91 = call %struct.Memory* @routine_movl__edx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd91)
  store %struct.Memory* %call_43bd91, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 43bd94	 Bytes: 4
  %loadMem_43bd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd94 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd94)
  store %struct.Memory* %call_43bd94, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 43bd98	 Bytes: 2
  %loadMem_43bd98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd98 = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd98)
  store %struct.Memory* %call_43bd98, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 43bd9a	 Bytes: 4
  %loadMem_43bd9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd9a = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd9a)
  store %struct.Memory* %call_43bd9a, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 43bd9e	 Bytes: 3
  %loadMem_43bd9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bd9e = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bd9e)
  store %struct.Memory* %call_43bd9e, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 43bda1	 Bytes: 4
  %loadMem_43bda1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bda1 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bda1)
  store %struct.Memory* %call_43bda1, %struct.Memory** %MEMORY

  ; Code: movb 0x8(%rax), %sil	 RIP: 43bda5	 Bytes: 4
  %loadMem_43bda5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bda5 = call %struct.Memory* @routine_movb_0x8__rax____sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bda5)
  store %struct.Memory* %call_43bda5, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 43bda9	 Bytes: 4
  %loadMem_43bda9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bda9 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bda9)
  store %struct.Memory* %call_43bda9, %struct.Memory** %MEMORY

  ; Code: movb %sil, 0x14(%rax)	 RIP: 43bdad	 Bytes: 4
  %loadMem_43bdad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdad = call %struct.Memory* @routine_movb__sil__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdad)
  store %struct.Memory* %call_43bdad, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43bdb1	 Bytes: 8
  %loadMem_43bdb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdb1 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdb1)
  store %struct.Memory* %call_43bdb1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x934(%rax)	 RIP: 43bdb9	 Bytes: 7
  %loadMem_43bdb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdb9 = call %struct.Memory* @routine_cmpl__0x1__0x934__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdb9)
  store %struct.Memory* %call_43bdb9, %struct.Memory** %MEMORY

  ; Code: jne .L_43be61	 RIP: 43bdc0	 Bytes: 6
  %loadMem_43bdc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdc0 = call %struct.Memory* @routine_jne_.L_43be61(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdc0, i8* %BRANCH_TAKEN, i64 161, i64 6, i64 6)
  store %struct.Memory* %call_43bdc0, %struct.Memory** %MEMORY

  %loadBr_43bdc0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bdc0 = icmp eq i8 %loadBr_43bdc0, 1
  br i1 %cmpBr_43bdc0, label %block_.L_43be61, label %block_43bdc6

block_43bdc6:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 43bdc6	 Bytes: 4
  %loadMem_43bdc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdc6 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdc6)
  store %struct.Memory* %call_43bdc6, %struct.Memory** %MEMORY

  ; Code: addq $0x8, %rax	 RIP: 43bdca	 Bytes: 4
  %loadMem_43bdca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdca = call %struct.Memory* @routine_addq__0x8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdca)
  store %struct.Memory* %call_43bdca, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 43bdce	 Bytes: 4
  %loadMem_43bdce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdce = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdce)
  store %struct.Memory* %call_43bdce, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43bdd2	 Bytes: 4
  %loadMem_43bdd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdd2 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdd2)
  store %struct.Memory* %call_43bdd2, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 43bdd6	 Bytes: 2
  %loadMem_43bdd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdd6 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdd6)
  store %struct.Memory* %call_43bdd6, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43bdd8	 Bytes: 4
  %loadMem_43bdd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdd8 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdd8)
  store %struct.Memory* %call_43bdd8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x28(%rax)	 RIP: 43bddc	 Bytes: 3
  %loadMem_43bddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bddc = call %struct.Memory* @routine_movl__ecx__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bddc)
  store %struct.Memory* %call_43bddc, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43bddf	 Bytes: 4
  %loadMem_43bddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bddf = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bddf)
  store %struct.Memory* %call_43bddf, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 43bde3	 Bytes: 3
  %loadMem_43bde3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bde3 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bde3)
  store %struct.Memory* %call_43bde3, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43bde6	 Bytes: 4
  %loadMem_43bde6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bde6 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bde6)
  store %struct.Memory* %call_43bde6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2c(%rax)	 RIP: 43bdea	 Bytes: 3
  %loadMem_43bdea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdea = call %struct.Memory* @routine_movl__ecx__0x2c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdea)
  store %struct.Memory* %call_43bdea, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43bded	 Bytes: 4
  %loadMem_43bded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bded = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bded)
  store %struct.Memory* %call_43bded, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 43bdf1	 Bytes: 3
  %loadMem_43bdf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdf1 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdf1)
  store %struct.Memory* %call_43bdf1, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43bdf4	 Bytes: 4
  %loadMem_43bdf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdf4 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdf4)
  store %struct.Memory* %call_43bdf4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x30(%rax)	 RIP: 43bdf8	 Bytes: 3
  %loadMem_43bdf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdf8 = call %struct.Memory* @routine_movl__ecx__0x30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdf8)
  store %struct.Memory* %call_43bdf8, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43bdfb	 Bytes: 4
  %loadMem_43bdfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdfb = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdfb)
  store %struct.Memory* %call_43bdfb, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 43bdff	 Bytes: 3
  %loadMem_43bdff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bdff = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bdff)
  store %struct.Memory* %call_43bdff, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43be02	 Bytes: 4
  %loadMem_43be02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be02 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be02)
  store %struct.Memory* %call_43be02, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x34(%rax)	 RIP: 43be06	 Bytes: 3
  %loadMem_43be06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be06 = call %struct.Memory* @routine_movl__ecx__0x34__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be06)
  store %struct.Memory* %call_43be06, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43be09	 Bytes: 4
  %loadMem_43be09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be09 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be09)
  store %struct.Memory* %call_43be09, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %ecx	 RIP: 43be0d	 Bytes: 3
  %loadMem_43be0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be0d = call %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be0d)
  store %struct.Memory* %call_43be0d, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43be10	 Bytes: 4
  %loadMem_43be10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be10 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be10)
  store %struct.Memory* %call_43be10, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x38(%rax)	 RIP: 43be14	 Bytes: 3
  %loadMem_43be14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be14 = call %struct.Memory* @routine_movl__ecx__0x38__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be14)
  store %struct.Memory* %call_43be14, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43be17	 Bytes: 4
  %loadMem_43be17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be17 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be17)
  store %struct.Memory* %call_43be17, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 43be1b	 Bytes: 4
  %loadMem_43be1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be1b = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be1b)
  store %struct.Memory* %call_43be1b, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdx	 RIP: 43be1f	 Bytes: 4
  %loadMem_43be1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be1f = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be1f)
  store %struct.Memory* %call_43be1f, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x40(%rdx)	 RIP: 43be23	 Bytes: 4
  %loadMem_43be23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be23 = call %struct.Memory* @routine_movq__rax__0x40__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be23)
  store %struct.Memory* %call_43be23, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43be27	 Bytes: 4
  %loadMem_43be27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be27 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be27)
  store %struct.Memory* %call_43be27, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 43be2b	 Bytes: 4
  %loadMem_43be2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be2b = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be2b)
  store %struct.Memory* %call_43be2b, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rdx	 RIP: 43be2f	 Bytes: 4
  %loadMem_43be2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be2f = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be2f)
  store %struct.Memory* %call_43be2f, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x48(%rdx)	 RIP: 43be33	 Bytes: 4
  %loadMem_43be33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be33 = call %struct.Memory* @routine_movq__rax__0x48__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be33)
  store %struct.Memory* %call_43be33, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43be37	 Bytes: 4
  %loadMem_43be37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be37 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be37)
  store %struct.Memory* %call_43be37, %struct.Memory** %MEMORY

  ; Code: movl 0x50(%rax), %ecx	 RIP: 43be3b	 Bytes: 3
  %loadMem_43be3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be3b = call %struct.Memory* @routine_movl_0x50__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be3b)
  store %struct.Memory* %call_43be3b, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43be3e	 Bytes: 4
  %loadMem_43be3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be3e = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be3e)
  store %struct.Memory* %call_43be3e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x54(%rax)	 RIP: 43be42	 Bytes: 3
  %loadMem_43be42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be42 = call %struct.Memory* @routine_movl__ecx__0x54__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be42)
  store %struct.Memory* %call_43be42, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43be45	 Bytes: 4
  %loadMem_43be45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be45 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be45)
  store %struct.Memory* %call_43be45, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rax), %ecx	 RIP: 43be49	 Bytes: 3
  %loadMem_43be49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be49 = call %struct.Memory* @routine_movl_0x60__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be49)
  store %struct.Memory* %call_43be49, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43be4c	 Bytes: 4
  %loadMem_43be4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be4c = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be4c)
  store %struct.Memory* %call_43be4c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rax)	 RIP: 43be50	 Bytes: 3
  %loadMem_43be50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be50 = call %struct.Memory* @routine_movl__ecx__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be50)
  store %struct.Memory* %call_43be50, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43be53	 Bytes: 4
  %loadMem_43be53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be53 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be53)
  store %struct.Memory* %call_43be53, %struct.Memory** %MEMORY

  ; Code: movl 0x58(%rax), %ecx	 RIP: 43be57	 Bytes: 3
  %loadMem_43be57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be57 = call %struct.Memory* @routine_movl_0x58__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be57)
  store %struct.Memory* %call_43be57, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 43be5a	 Bytes: 4
  %loadMem_43be5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be5a = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be5a)
  store %struct.Memory* %call_43be5a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x5c(%rax)	 RIP: 43be5e	 Bytes: 3
  %loadMem_43be5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be5e = call %struct.Memory* @routine_movl__ecx__0x5c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be5e)
  store %struct.Memory* %call_43be5e, %struct.Memory** %MEMORY

  ; Code: .L_43be61:	 RIP: 43be61	 Bytes: 0
  br label %block_.L_43be61
block_.L_43be61:

  ; Code: jmpq .L_43be66	 RIP: 43be61	 Bytes: 5
  %loadMem_43be61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be61 = call %struct.Memory* @routine_jmpq_.L_43be66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be61, i64 5, i64 5)
  store %struct.Memory* %call_43be61, %struct.Memory** %MEMORY

  br label %block_.L_43be66

  ; Code: .L_43be66:	 RIP: 43be66	 Bytes: 0
block_.L_43be66:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 43be66	 Bytes: 3
  %loadMem_43be66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be66 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be66)
  store %struct.Memory* %call_43be66, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43be69	 Bytes: 3
  %loadMem_43be69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be69 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be69)
  store %struct.Memory* %call_43be69, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 43be6c	 Bytes: 3
  %loadMem_43be6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be6c = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be6c)
  store %struct.Memory* %call_43be6c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43bd54	 RIP: 43be6f	 Bytes: 5
  %loadMem_43be6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be6f = call %struct.Memory* @routine_jmpq_.L_43bd54(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be6f, i64 -283, i64 5)
  store %struct.Memory* %call_43be6f, %struct.Memory** %MEMORY

  br label %block_.L_43bd54

  ; Code: .L_43be74:	 RIP: 43be74	 Bytes: 0
block_.L_43be74:

  ; Code: jmpq .L_43be79	 RIP: 43be74	 Bytes: 5
  %loadMem_43be74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be74 = call %struct.Memory* @routine_jmpq_.L_43be79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be74, i64 5, i64 5)
  store %struct.Memory* %call_43be74, %struct.Memory** %MEMORY

  br label %block_.L_43be79

  ; Code: .L_43be79:	 RIP: 43be79	 Bytes: 0
block_.L_43be79:

  ; Code: jmpq .L_43be7e	 RIP: 43be79	 Bytes: 5
  %loadMem_43be79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be79 = call %struct.Memory* @routine_jmpq_.L_43be7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be79, i64 5, i64 5)
  store %struct.Memory* %call_43be79, %struct.Memory** %MEMORY

  br label %block_.L_43be7e

  ; Code: .L_43be7e:	 RIP: 43be7e	 Bytes: 0
block_.L_43be7e:

  ; Code: movq 0x6cb900, %rax	 RIP: 43be7e	 Bytes: 8
  %loadMem_43be7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be7e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be7e)
  store %struct.Memory* %call_43be7e, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %ecx	 RIP: 43be86	 Bytes: 3
  %loadMem_43be86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be86 = call %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be86)
  store %struct.Memory* %call_43be86, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43be89	 Bytes: 4
  %loadMem_43be89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be89 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be89)
  store %struct.Memory* %call_43be89, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 43be8d	 Bytes: 3
  %loadMem_43be8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be8d = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be8d)
  store %struct.Memory* %call_43be8d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43be90	 Bytes: 8
  %loadMem_43be90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be90 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be90)
  store %struct.Memory* %call_43be90, %struct.Memory** %MEMORY

  ; Code: movl 0x2c(%rax), %ecx	 RIP: 43be98	 Bytes: 3
  %loadMem_43be98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be98 = call %struct.Memory* @routine_movl_0x2c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be98)
  store %struct.Memory* %call_43be98, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43be9b	 Bytes: 4
  %loadMem_43be9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be9b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be9b)
  store %struct.Memory* %call_43be9b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rax)	 RIP: 43be9f	 Bytes: 3
  %loadMem_43be9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43be9f = call %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43be9f)
  store %struct.Memory* %call_43be9f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43bea2	 Bytes: 8
  %loadMem_43bea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bea2 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bea2)
  store %struct.Memory* %call_43bea2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xca4(%rax)	 RIP: 43beaa	 Bytes: 7
  %loadMem_43beaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43beaa = call %struct.Memory* @routine_cmpl__0x0__0xca4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43beaa)
  store %struct.Memory* %call_43beaa, %struct.Memory** %MEMORY

  ; Code: je .L_43c7cf	 RIP: 43beb1	 Bytes: 6
  %loadMem_43beb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43beb1 = call %struct.Memory* @routine_je_.L_43c7cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43beb1, i8* %BRANCH_TAKEN, i64 2334, i64 6, i64 6)
  store %struct.Memory* %call_43beb1, %struct.Memory** %MEMORY

  %loadBr_43beb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43beb1 = icmp eq i8 %loadBr_43beb1, 1
  br i1 %cmpBr_43beb1, label %block_.L_43c7cf, label %block_43beb7

block_43beb7:
  ; Code: movq 0x6cb900, %rax	 RIP: 43beb7	 Bytes: 8
  %loadMem_43beb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43beb7 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43beb7)
  store %struct.Memory* %call_43beb7, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edi	 RIP: 43bebf	 Bytes: 3
  %loadMem_43bebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bebf = call %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bebf)
  store %struct.Memory* %call_43bebf, %struct.Memory** %MEMORY

  ; Code: callq .FmoGetPreviousMBNr	 RIP: 43bec2	 Bytes: 5
  %loadMem1_43bec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43bec2 = call %struct.Memory* @routine_callq_.FmoGetPreviousMBNr(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43bec2, i64 -91170, i64 5, i64 5)
  store %struct.Memory* %call1_43bec2, %struct.Memory** %MEMORY

  %loadMem2_43bec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43bec2 = load i64, i64* %3
  %call2_43bec2 = call %struct.Memory* @sub_425aa0.FmoGetPreviousMBNr(%struct.State* %0, i64  %loadPC_43bec2, %struct.Memory* %loadMem2_43bec2)
  store %struct.Memory* %call2_43bec2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 43bec7	 Bytes: 3
  %loadMem_43bec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bec7 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bec7)
  store %struct.Memory* %call_43bec7, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, -0x54(%rbp)	 RIP: 43beca	 Bytes: 4
  %loadMem_43beca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43beca = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43beca)
  store %struct.Memory* %call_43beca, %struct.Memory** %MEMORY

  ; Code: jle .L_43bf2d	 RIP: 43bece	 Bytes: 6
  %loadMem_43bece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bece = call %struct.Memory* @routine_jle_.L_43bf2d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bece, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_43bece, %struct.Memory** %MEMORY

  %loadBr_43bece = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bece = icmp eq i8 %loadBr_43bece, 1
  br i1 %cmpBr_43bece, label %block_.L_43bf2d, label %block_43bed4

block_43bed4:
  ; Code: movq 0x6cb900, %rax	 RIP: 43bed4	 Bytes: 8
  %loadMem_43bed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bed4 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bed4)
  store %struct.Memory* %call_43bed4, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 43bedc	 Bytes: 7
  %loadMem_43bedc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bedc = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bedc)
  store %struct.Memory* %call_43bedc, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rcx	 RIP: 43bee3	 Bytes: 4
  %loadMem_43bee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bee3 = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bee3)
  store %struct.Memory* %call_43bee3, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 43bee7	 Bytes: 7
  %loadMem_43bee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bee7 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bee7)
  store %struct.Memory* %call_43bee7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43beee	 Bytes: 3
  %loadMem_43beee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43beee = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43beee)
  store %struct.Memory* %call_43beee, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 43bef1	 Bytes: 3
  %loadMem_43bef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bef1 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bef1)
  store %struct.Memory* %call_43bef1, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43bef4	 Bytes: 4
  %loadMem_43bef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bef4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bef4)
  store %struct.Memory* %call_43bef4, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x250(%rax)	 RIP: 43bef8	 Bytes: 6
  %loadMem_43bef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bef8 = call %struct.Memory* @routine_movl__edx__0x250__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bef8)
  store %struct.Memory* %call_43bef8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43befe	 Bytes: 8
  %loadMem_43befe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43befe = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43befe)
  store %struct.Memory* %call_43befe, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 43bf06	 Bytes: 7
  %loadMem_43bf06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf06 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf06)
  store %struct.Memory* %call_43bf06, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rcx	 RIP: 43bf0d	 Bytes: 4
  %loadMem_43bf0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf0d = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf0d)
  store %struct.Memory* %call_43bf0d, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 43bf11	 Bytes: 7
  %loadMem_43bf11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf11 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf11)
  store %struct.Memory* %call_43bf11, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43bf18	 Bytes: 3
  %loadMem_43bf18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf18 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf18)
  store %struct.Memory* %call_43bf18, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 43bf1b	 Bytes: 3
  %loadMem_43bf1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf1b = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf1b)
  store %struct.Memory* %call_43bf1b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43bf1e	 Bytes: 4
  %loadMem_43bf1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf1e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf1e)
  store %struct.Memory* %call_43bf1e, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x254(%rax)	 RIP: 43bf22	 Bytes: 6
  %loadMem_43bf22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf22 = call %struct.Memory* @routine_movl__edx__0x254__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf22)
  store %struct.Memory* %call_43bf22, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43bf4c	 RIP: 43bf28	 Bytes: 5
  %loadMem_43bf28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf28 = call %struct.Memory* @routine_jmpq_.L_43bf4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf28, i64 36, i64 5)
  store %struct.Memory* %call_43bf28, %struct.Memory** %MEMORY

  br label %block_.L_43bf4c

  ; Code: .L_43bf2d:	 RIP: 43bf2d	 Bytes: 0
block_.L_43bf2d:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 43bf2d	 Bytes: 4
  %loadMem_43bf2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf2d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf2d)
  store %struct.Memory* %call_43bf2d, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 43bf31	 Bytes: 3
  %loadMem_43bf31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf31 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf31)
  store %struct.Memory* %call_43bf31, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43bf34	 Bytes: 4
  %loadMem_43bf34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf34 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf34)
  store %struct.Memory* %call_43bf34, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x250(%rax)	 RIP: 43bf38	 Bytes: 6
  %loadMem_43bf38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf38 = call %struct.Memory* @routine_movl__ecx__0x250__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf38)
  store %struct.Memory* %call_43bf38, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43bf3e	 Bytes: 4
  %loadMem_43bf3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf3e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf3e)
  store %struct.Memory* %call_43bf3e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x254(%rax)	 RIP: 43bf42	 Bytes: 10
  %loadMem_43bf42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf42 = call %struct.Memory* @routine_movl__0x0__0x254__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf42)
  store %struct.Memory* %call_43bf42, %struct.Memory** %MEMORY

  ; Code: .L_43bf4c:	 RIP: 43bf4c	 Bytes: 0
  br label %block_.L_43bf4c
block_.L_43bf4c:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43bf4c	 Bytes: 8
  %loadMem_43bf4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf4c = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf4c)
  store %struct.Memory* %call_43bf4c, %struct.Memory** %MEMORY

  ; Code: movl 0xcb0(%rax), %ecx	 RIP: 43bf54	 Bytes: 6
  %loadMem_43bf54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf54 = call %struct.Memory* @routine_movl_0xcb0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf54)
  store %struct.Memory* %call_43bf54, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43bf5a	 Bytes: 8
  %loadMem_43bf5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf5a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf5a)
  store %struct.Memory* %call_43bf5a, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11ba0(%rax), %ecx	 RIP: 43bf62	 Bytes: 6
  %loadMem_43bf62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf62 = call %struct.Memory* @routine_cmpl_0x11ba0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf62)
  store %struct.Memory* %call_43bf62, %struct.Memory** %MEMORY

  ; Code: jne .L_43bf90	 RIP: 43bf68	 Bytes: 6
  %loadMem_43bf68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf68 = call %struct.Memory* @routine_jne_.L_43bf90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf68, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_43bf68, %struct.Memory** %MEMORY

  %loadBr_43bf68 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bf68 = icmp eq i8 %loadBr_43bf68, 1
  br i1 %cmpBr_43bf68, label %block_.L_43bf90, label %block_43bf6e

block_43bf6e:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43bf6e	 Bytes: 4
  %loadMem_43bf6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf6e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf6e)
  store %struct.Memory* %call_43bf6e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8(%rax)	 RIP: 43bf72	 Bytes: 7
  %loadMem_43bf72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf72 = call %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf72)
  store %struct.Memory* %call_43bf72, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43bf79	 Bytes: 8
  %loadMem_43bf79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf79 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf79)
  store %struct.Memory* %call_43bf79, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 43bf81	 Bytes: 3
  %loadMem_43bf81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf81 = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf81)
  store %struct.Memory* %call_43bf81, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43bf84	 Bytes: 4
  %loadMem_43bf84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf84 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf84)
  store %struct.Memory* %call_43bf84, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xc(%rax)	 RIP: 43bf88	 Bytes: 3
  %loadMem_43bf88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf88 = call %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf88)
  store %struct.Memory* %call_43bf88, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c7ca	 RIP: 43bf8b	 Bytes: 5
  %loadMem_43bf8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf8b = call %struct.Memory* @routine_jmpq_.L_43c7ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf8b, i64 2111, i64 5)
  store %struct.Memory* %call_43bf8b, %struct.Memory** %MEMORY

  br label %block_.L_43c7ca

  ; Code: .L_43bf90:	 RIP: 43bf90	 Bytes: 0
block_.L_43bf90:

  ; Code: movq 0x6cb900, %rax	 RIP: 43bf90	 Bytes: 8
  %loadMem_43bf90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf90 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf90)
  store %struct.Memory* %call_43bf90, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 43bf98	 Bytes: 4
  %loadMem_43bf98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf98 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf98)
  store %struct.Memory* %call_43bf98, %struct.Memory** %MEMORY

  ; Code: je .L_43bfb4	 RIP: 43bf9c	 Bytes: 6
  %loadMem_43bf9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bf9c = call %struct.Memory* @routine_je_.L_43bfb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bf9c, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_43bf9c, %struct.Memory** %MEMORY

  %loadBr_43bf9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bf9c = icmp eq i8 %loadBr_43bf9c, 1
  br i1 %cmpBr_43bf9c, label %block_.L_43bfb4, label %block_43bfa2

block_43bfa2:
  ; Code: movq 0x6cb900, %rax	 RIP: 43bfa2	 Bytes: 8
  %loadMem_43bfa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bfa2 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bfa2)
  store %struct.Memory* %call_43bfa2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rax)	 RIP: 43bfaa	 Bytes: 4
  %loadMem_43bfaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bfaa = call %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bfaa)
  store %struct.Memory* %call_43bfaa, %struct.Memory** %MEMORY

  ; Code: jne .L_43bfd6	 RIP: 43bfae	 Bytes: 6
  %loadMem_43bfae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bfae = call %struct.Memory* @routine_jne_.L_43bfd6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bfae, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_43bfae, %struct.Memory** %MEMORY

  %loadBr_43bfae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bfae = icmp eq i8 %loadBr_43bfae, 1
  br i1 %cmpBr_43bfae, label %block_.L_43bfd6, label %block_.L_43bfb4

  ; Code: .L_43bfb4:	 RIP: 43bfb4	 Bytes: 0
block_.L_43bfb4:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43bfb4	 Bytes: 4
  %loadMem_43bfb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bfb4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bfb4)
  store %struct.Memory* %call_43bfb4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8(%rax)	 RIP: 43bfb8	 Bytes: 7
  %loadMem_43bfb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bfb8 = call %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bfb8)
  store %struct.Memory* %call_43bfb8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43bfbf	 Bytes: 8
  %loadMem_43bfbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bfbf = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bfbf)
  store %struct.Memory* %call_43bfbf, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 43bfc7	 Bytes: 3
  %loadMem_43bfc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bfc7 = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bfc7)
  store %struct.Memory* %call_43bfc7, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43bfca	 Bytes: 4
  %loadMem_43bfca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bfca = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bfca)
  store %struct.Memory* %call_43bfca, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xc(%rax)	 RIP: 43bfce	 Bytes: 3
  %loadMem_43bfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bfce = call %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bfce)
  store %struct.Memory* %call_43bfce, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c7c5	 RIP: 43bfd1	 Bytes: 5
  %loadMem_43bfd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bfd1 = call %struct.Memory* @routine_jmpq_.L_43c7c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bfd1, i64 2036, i64 5)
  store %struct.Memory* %call_43bfd1, %struct.Memory** %MEMORY

  br label %block_.L_43c7c5

  ; Code: .L_43bfd6:	 RIP: 43bfd6	 Bytes: 0
block_.L_43bfd6:

  ; Code: movq 0x6cb900, %rax	 RIP: 43bfd6	 Bytes: 8
  %loadMem_43bfd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bfd6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bfd6)
  store %struct.Memory* %call_43bfd6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rax)	 RIP: 43bfde	 Bytes: 4
  %loadMem_43bfde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bfde = call %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bfde)
  store %struct.Memory* %call_43bfde, %struct.Memory** %MEMORY

  ; Code: jne .L_43c7c0	 RIP: 43bfe2	 Bytes: 6
  %loadMem_43bfe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bfe2 = call %struct.Memory* @routine_jne_.L_43c7c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bfe2, i8* %BRANCH_TAKEN, i64 2014, i64 6, i64 6)
  store %struct.Memory* %call_43bfe2, %struct.Memory** %MEMORY

  %loadBr_43bfe2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bfe2 = icmp eq i8 %loadBr_43bfe2, 1
  br i1 %cmpBr_43bfe2, label %block_.L_43c7c0, label %block_43bfe8

block_43bfe8:
  ; Code: movq 0x6cb900, %rax	 RIP: 43bfe8	 Bytes: 8
  %loadMem_43bfe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bfe8 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bfe8)
  store %struct.Memory* %call_43bfe8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11bb0(%rax)	 RIP: 43bff0	 Bytes: 7
  %loadMem_43bff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bff0 = call %struct.Memory* @routine_cmpl__0x0__0x11bb0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bff0)
  store %struct.Memory* %call_43bff0, %struct.Memory** %MEMORY

  ; Code: jne .L_43c231	 RIP: 43bff7	 Bytes: 6
  %loadMem_43bff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bff7 = call %struct.Memory* @routine_jne_.L_43c231(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bff7, i8* %BRANCH_TAKEN, i64 570, i64 6, i64 6)
  store %struct.Memory* %call_43bff7, %struct.Memory** %MEMORY

  %loadBr_43bff7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bff7 = icmp eq i8 %loadBr_43bff7, 1
  br i1 %cmpBr_43bff7, label %block_.L_43c231, label %block_43bffd

block_43bffd:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43bffd	 Bytes: 4
  %loadMem_43bffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43bffd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43bffd)
  store %struct.Memory* %call_43bffd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 43c001	 Bytes: 7
  %loadMem_43c001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c001 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c001)
  store %struct.Memory* %call_43c001, %struct.Memory** %MEMORY

  ; Code: jne .L_43c1c9	 RIP: 43c008	 Bytes: 6
  %loadMem_43c008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c008 = call %struct.Memory* @routine_jne_.L_43c1c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c008, i8* %BRANCH_TAKEN, i64 449, i64 6, i64 6)
  store %struct.Memory* %call_43c008, %struct.Memory** %MEMORY

  %loadBr_43c008 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c008 = icmp eq i8 %loadBr_43c008, 1
  br i1 %cmpBr_43c008, label %block_.L_43c1c9, label %block_43c00e

block_43c00e:
  ; Code: movq 0x6cb900, %rax	 RIP: 43c00e	 Bytes: 8
  %loadMem_43c00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c00e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c00e)
  store %struct.Memory* %call_43c00e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc(%rax)	 RIP: 43c016	 Bytes: 4
  %loadMem_43c016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c016 = call %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c016)
  store %struct.Memory* %call_43c016, %struct.Memory** %MEMORY

  ; Code: jne .L_43c06c	 RIP: 43c01a	 Bytes: 6
  %loadMem_43c01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c01a = call %struct.Memory* @routine_jne_.L_43c06c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c01a, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_43c01a, %struct.Memory** %MEMORY

  %loadBr_43c01a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c01a = icmp eq i8 %loadBr_43c01a, 1
  br i1 %cmpBr_43c01a, label %block_.L_43c06c, label %block_43c020

block_43c020:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c020	 Bytes: 4
  %loadMem_43c020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c020 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c020)
  store %struct.Memory* %call_43c020, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8(%rax)	 RIP: 43c024	 Bytes: 7
  %loadMem_43c024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c024 = call %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c024)
  store %struct.Memory* %call_43c024, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43c02b	 Bytes: 8
  %loadMem_43c02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c02b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c02b)
  store %struct.Memory* %call_43c02b, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 43c033	 Bytes: 3
  %loadMem_43c033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c033 = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c033)
  store %struct.Memory* %call_43c033, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c036	 Bytes: 4
  %loadMem_43c036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c036 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c036)
  store %struct.Memory* %call_43c036, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xc(%rax)	 RIP: 43c03a	 Bytes: 3
  %loadMem_43c03a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c03a = call %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c03a)
  store %struct.Memory* %call_43c03a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c03d	 Bytes: 4
  %loadMem_43c03d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c03d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c03d)
  store %struct.Memory* %call_43c03d, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 43c041	 Bytes: 3
  %loadMem_43c041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c041 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c041)
  store %struct.Memory* %call_43c041, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x6cd4e4	 RIP: 43c044	 Bytes: 7
  %loadMem_43c044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c044 = call %struct.Memory* @routine_movl__ecx__0x6cd4e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c044)
  store %struct.Memory* %call_43c044, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x70e8d0	 RIP: 43c04b	 Bytes: 7
  %loadMem_43c04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c04b = call %struct.Memory* @routine_movl__ecx__0x70e8d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c04b)
  store %struct.Memory* %call_43c04b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c052	 Bytes: 4
  %loadMem_43c052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c052 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c052)
  store %struct.Memory* %call_43c052, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 43c056	 Bytes: 3
  %loadMem_43c056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c056 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c056)
  store %struct.Memory* %call_43c056, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x724740	 RIP: 43c059	 Bytes: 7
  %loadMem_43c059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c059 = call %struct.Memory* @routine_movl__ecx__0x724740(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c059)
  store %struct.Memory* %call_43c059, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x7242f0	 RIP: 43c060	 Bytes: 7
  %loadMem_43c060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c060 = call %struct.Memory* @routine_movl__ecx__0x7242f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c060)
  store %struct.Memory* %call_43c060, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c1c4	 RIP: 43c067	 Bytes: 5
  %loadMem_43c067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c067 = call %struct.Memory* @routine_jmpq_.L_43c1c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c067, i64 349, i64 5)
  store %struct.Memory* %call_43c067, %struct.Memory** %MEMORY

  br label %block_.L_43c1c4

  ; Code: .L_43c06c:	 RIP: 43c06c	 Bytes: 0
block_.L_43c06c:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43c06c	 Bytes: 8
  %loadMem_43c06c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c06c = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c06c)
  store %struct.Memory* %call_43c06c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 43c074	 Bytes: 7
  %loadMem_43c074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c074 = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c074)
  store %struct.Memory* %call_43c074, %struct.Memory** %MEMORY

  ; Code: je .L_43c096	 RIP: 43c07b	 Bytes: 6
  %loadMem_43c07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c07b = call %struct.Memory* @routine_je_.L_43c096(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c07b, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43c07b, %struct.Memory** %MEMORY

  %loadBr_43c07b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c07b = icmp eq i8 %loadBr_43c07b, 1
  br i1 %cmpBr_43c07b, label %block_.L_43c096, label %block_43c081

block_43c081:
  ; Code: movq 0x6cb900, %rax	 RIP: 43c081	 Bytes: 8
  %loadMem_43c081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c081 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c081)
  store %struct.Memory* %call_43c081, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11bb4(%rax)	 RIP: 43c089	 Bytes: 7
  %loadMem_43c089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c089 = call %struct.Memory* @routine_cmpl__0x0__0x11bb4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c089)
  store %struct.Memory* %call_43c089, %struct.Memory** %MEMORY

  ; Code: jne .L_43c1a2	 RIP: 43c090	 Bytes: 6
  %loadMem_43c090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c090 = call %struct.Memory* @routine_jne_.L_43c1a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c090, i8* %BRANCH_TAKEN, i64 274, i64 6, i64 6)
  store %struct.Memory* %call_43c090, %struct.Memory** %MEMORY

  %loadBr_43c090 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c090 = icmp eq i8 %loadBr_43c090, 1
  br i1 %cmpBr_43c090, label %block_.L_43c1a2, label %block_.L_43c096

  ; Code: .L_43c096:	 RIP: 43c096	 Bytes: 0
block_.L_43c096:

  ; Code: movq 0x6cb900, %rax	 RIP: 43c096	 Bytes: 8
  %loadMem_43c096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c096 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c096)
  store %struct.Memory* %call_43c096, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 43c09e	 Bytes: 7
  %loadMem_43c09e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c09e = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c09e)
  store %struct.Memory* %call_43c09e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c0a5	 Bytes: 8
  %loadMem_43c0a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0a5 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0a5)
  store %struct.Memory* %call_43c0a5, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 43c0ad	 Bytes: 3
  %loadMem_43c0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0ad = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0ad)
  store %struct.Memory* %call_43c0ad, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 43c0b0	 Bytes: 3
  %loadMem_43c0b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0b0 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0b0)
  store %struct.Memory* %call_43c0b0, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 43c0b3	 Bytes: 3
  %loadMem_43c0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0b3 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0b3)
  store %struct.Memory* %call_43c0b3, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 43c0b6	 Bytes: 7
  %loadMem_43c0b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0b6 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0b6)
  store %struct.Memory* %call_43c0b6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43c0bd	 Bytes: 3
  %loadMem_43c0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0bd = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0bd)
  store %struct.Memory* %call_43c0bd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x258(%rax)	 RIP: 43c0c0	 Bytes: 7
  %loadMem_43c0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0c0 = call %struct.Memory* @routine_cmpl__0x1__0x258__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0c0)
  store %struct.Memory* %call_43c0c0, %struct.Memory** %MEMORY

  ; Code: jne .L_43c0ef	 RIP: 43c0c7	 Bytes: 6
  %loadMem_43c0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0c7 = call %struct.Memory* @routine_jne_.L_43c0ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0c7, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_43c0c7, %struct.Memory** %MEMORY

  %loadBr_43c0c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c0c7 = icmp eq i8 %loadBr_43c0c7, 1
  br i1 %cmpBr_43c0c7, label %block_.L_43c0ef, label %block_43c0cd

block_43c0cd:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c0cd	 Bytes: 4
  %loadMem_43c0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0cd = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0cd)
  store %struct.Memory* %call_43c0cd, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8(%rax)	 RIP: 43c0d1	 Bytes: 7
  %loadMem_43c0d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0d1 = call %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0d1)
  store %struct.Memory* %call_43c0d1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43c0d8	 Bytes: 8
  %loadMem_43c0d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0d8 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0d8)
  store %struct.Memory* %call_43c0d8, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 43c0e0	 Bytes: 3
  %loadMem_43c0e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0e0 = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0e0)
  store %struct.Memory* %call_43c0e0, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c0e3	 Bytes: 4
  %loadMem_43c0e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0e3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0e3)
  store %struct.Memory* %call_43c0e3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xc(%rax)	 RIP: 43c0e7	 Bytes: 3
  %loadMem_43c0e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0e7 = call %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0e7)
  store %struct.Memory* %call_43c0e7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c173	 RIP: 43c0ea	 Bytes: 5
  %loadMem_43c0ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0ea = call %struct.Memory* @routine_jmpq_.L_43c173(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0ea, i64 137, i64 5)
  store %struct.Memory* %call_43c0ea, %struct.Memory** %MEMORY

  br label %block_.L_43c173

  ; Code: .L_43c0ef:	 RIP: 43c0ef	 Bytes: 0
block_.L_43c0ef:

  ; Code: movq 0x6cb900, %rax	 RIP: 43c0ef	 Bytes: 8
  %loadMem_43c0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0ef = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0ef)
  store %struct.Memory* %call_43c0ef, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 43c0f7	 Bytes: 7
  %loadMem_43c0f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0f7 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0f7)
  store %struct.Memory* %call_43c0f7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c0fe	 Bytes: 8
  %loadMem_43c0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c0fe = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c0fe)
  store %struct.Memory* %call_43c0fe, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 43c106	 Bytes: 3
  %loadMem_43c106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c106 = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c106)
  store %struct.Memory* %call_43c106, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 43c109	 Bytes: 3
  %loadMem_43c109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c109 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c109)
  store %struct.Memory* %call_43c109, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 43c10c	 Bytes: 3
  %loadMem_43c10c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c10c = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c10c)
  store %struct.Memory* %call_43c10c, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 43c10f	 Bytes: 7
  %loadMem_43c10f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c10f = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c10f)
  store %struct.Memory* %call_43c10f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43c116	 Bytes: 3
  %loadMem_43c116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c116 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c116)
  store %struct.Memory* %call_43c116, %struct.Memory** %MEMORY

  ; Code: movl 0x250(%rax), %edx	 RIP: 43c119	 Bytes: 6
  %loadMem_43c119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c119 = call %struct.Memory* @routine_movl_0x250__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c119)
  store %struct.Memory* %call_43c119, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c11f	 Bytes: 4
  %loadMem_43c11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c11f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c11f)
  store %struct.Memory* %call_43c11f, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 43c123	 Bytes: 3
  %loadMem_43c123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c123 = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c123)
  store %struct.Memory* %call_43c123, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c126	 Bytes: 4
  %loadMem_43c126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c126 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c126)
  store %struct.Memory* %call_43c126, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 43c12a	 Bytes: 3
  %loadMem_43c12a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c12a = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c12a)
  store %struct.Memory* %call_43c12a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43c12d	 Bytes: 8
  %loadMem_43c12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c12d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c12d)
  store %struct.Memory* %call_43c12d, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 43c135	 Bytes: 7
  %loadMem_43c135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c135 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c135)
  store %struct.Memory* %call_43c135, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c13c	 Bytes: 8
  %loadMem_43c13c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c13c = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c13c)
  store %struct.Memory* %call_43c13c, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %esi	 RIP: 43c144	 Bytes: 3
  %loadMem_43c144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c144 = call %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c144)
  store %struct.Memory* %call_43c144, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 43c147	 Bytes: 3
  %loadMem_43c147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c147 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c147)
  store %struct.Memory* %call_43c147, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 43c14a	 Bytes: 3
  %loadMem_43c14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c14a = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c14a)
  store %struct.Memory* %call_43c14a, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 43c14d	 Bytes: 7
  %loadMem_43c14d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c14d = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c14d)
  store %struct.Memory* %call_43c14d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43c154	 Bytes: 3
  %loadMem_43c154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c154 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c154)
  store %struct.Memory* %call_43c154, %struct.Memory** %MEMORY

  ; Code: subl 0xc(%rax), %edx	 RIP: 43c157	 Bytes: 3
  %loadMem_43c157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c157 = call %struct.Memory* @routine_subl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c157)
  store %struct.Memory* %call_43c157, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c15a	 Bytes: 4
  %loadMem_43c15a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c15a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c15a)
  store %struct.Memory* %call_43c15a, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8(%rax)	 RIP: 43c15e	 Bytes: 3
  %loadMem_43c15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c15e = call %struct.Memory* @routine_movl__edx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c15e)
  store %struct.Memory* %call_43c15e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c161	 Bytes: 4
  %loadMem_43c161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c161 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c161)
  store %struct.Memory* %call_43c161, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 43c165	 Bytes: 3
  %loadMem_43c165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c165 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c165)
  store %struct.Memory* %call_43c165, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43c168	 Bytes: 8
  %loadMem_43c168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c168 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c168)
  store %struct.Memory* %call_43c168, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x28(%rax)	 RIP: 43c170	 Bytes: 3
  %loadMem_43c170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c170 = call %struct.Memory* @routine_movl__edx__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c170)
  store %struct.Memory* %call_43c170, %struct.Memory** %MEMORY

  ; Code: .L_43c173:	 RIP: 43c173	 Bytes: 0
  br label %block_.L_43c173
block_.L_43c173:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c173	 Bytes: 4
  %loadMem_43c173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c173 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c173)
  store %struct.Memory* %call_43c173, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 43c177	 Bytes: 3
  %loadMem_43c177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c177 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c177)
  store %struct.Memory* %call_43c177, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x6cd4e4	 RIP: 43c17a	 Bytes: 7
  %loadMem_43c17a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c17a = call %struct.Memory* @routine_movl__ecx__0x6cd4e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c17a)
  store %struct.Memory* %call_43c17a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x70e8d0	 RIP: 43c181	 Bytes: 7
  %loadMem_43c181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c181 = call %struct.Memory* @routine_movl__ecx__0x70e8d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c181)
  store %struct.Memory* %call_43c181, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c188	 Bytes: 4
  %loadMem_43c188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c188 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c188)
  store %struct.Memory* %call_43c188, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 43c18c	 Bytes: 3
  %loadMem_43c18c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c18c = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c18c)
  store %struct.Memory* %call_43c18c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x724740	 RIP: 43c18f	 Bytes: 7
  %loadMem_43c18f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c18f = call %struct.Memory* @routine_movl__ecx__0x724740(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c18f)
  store %struct.Memory* %call_43c18f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x7242f0	 RIP: 43c196	 Bytes: 7
  %loadMem_43c196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c196 = call %struct.Memory* @routine_movl__ecx__0x7242f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c196)
  store %struct.Memory* %call_43c196, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c1bf	 RIP: 43c19d	 Bytes: 5
  %loadMem_43c19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c19d = call %struct.Memory* @routine_jmpq_.L_43c1bf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c19d, i64 34, i64 5)
  store %struct.Memory* %call_43c19d, %struct.Memory** %MEMORY

  br label %block_.L_43c1bf

  ; Code: .L_43c1a2:	 RIP: 43c1a2	 Bytes: 0
block_.L_43c1a2:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c1a2	 Bytes: 4
  %loadMem_43c1a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1a2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1a2)
  store %struct.Memory* %call_43c1a2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8(%rax)	 RIP: 43c1a6	 Bytes: 7
  %loadMem_43c1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1a6 = call %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1a6)
  store %struct.Memory* %call_43c1a6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43c1ad	 Bytes: 8
  %loadMem_43c1ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1ad = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1ad)
  store %struct.Memory* %call_43c1ad, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 43c1b5	 Bytes: 3
  %loadMem_43c1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1b5 = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1b5)
  store %struct.Memory* %call_43c1b5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c1b8	 Bytes: 4
  %loadMem_43c1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1b8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1b8)
  store %struct.Memory* %call_43c1b8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xc(%rax)	 RIP: 43c1bc	 Bytes: 3
  %loadMem_43c1bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1bc = call %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1bc)
  store %struct.Memory* %call_43c1bc, %struct.Memory** %MEMORY

  ; Code: .L_43c1bf:	 RIP: 43c1bf	 Bytes: 0
  br label %block_.L_43c1bf
block_.L_43c1bf:

  ; Code: jmpq .L_43c1c4	 RIP: 43c1bf	 Bytes: 5
  %loadMem_43c1bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1bf = call %struct.Memory* @routine_jmpq_.L_43c1c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1bf, i64 5, i64 5)
  store %struct.Memory* %call_43c1bf, %struct.Memory** %MEMORY

  br label %block_.L_43c1c4

  ; Code: .L_43c1c4:	 RIP: 43c1c4	 Bytes: 0
block_.L_43c1c4:

  ; Code: jmpq .L_43c22c	 RIP: 43c1c4	 Bytes: 5
  %loadMem_43c1c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1c4 = call %struct.Memory* @routine_jmpq_.L_43c22c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1c4, i64 104, i64 5)
  store %struct.Memory* %call_43c1c4, %struct.Memory** %MEMORY

  br label %block_.L_43c22c

  ; Code: .L_43c1c9:	 RIP: 43c1c9	 Bytes: 0
block_.L_43c1c9:

  ; Code: movq 0x6cb900, %rax	 RIP: 43c1c9	 Bytes: 8
  %loadMem_43c1c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1c9 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1c9)
  store %struct.Memory* %call_43c1c9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11bb4(%rax)	 RIP: 43c1d1	 Bytes: 7
  %loadMem_43c1d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1d1 = call %struct.Memory* @routine_cmpl__0x0__0x11bb4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1d1)
  store %struct.Memory* %call_43c1d1, %struct.Memory** %MEMORY

  ; Code: jne .L_43c20a	 RIP: 43c1d8	 Bytes: 6
  %loadMem_43c1d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1d8 = call %struct.Memory* @routine_jne_.L_43c20a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1d8, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_43c1d8, %struct.Memory** %MEMORY

  %loadBr_43c1d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c1d8 = icmp eq i8 %loadBr_43c1d8, 1
  br i1 %cmpBr_43c1d8, label %block_.L_43c20a, label %block_43c1de

block_43c1de:
  ; Code: movl 0x6cd4e4, %eax	 RIP: 43c1de	 Bytes: 7
  %loadMem_43c1de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1de = call %struct.Memory* @routine_movl_0x6cd4e4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1de)
  store %struct.Memory* %call_43c1de, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c1e5	 Bytes: 4
  %loadMem_43c1e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1e5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1e5)
  store %struct.Memory* %call_43c1e5, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 43c1e9	 Bytes: 3
  %loadMem_43c1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1e9 = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1e9)
  store %struct.Memory* %call_43c1e9, %struct.Memory** %MEMORY

  ; Code: movl 0x724740, %eax	 RIP: 43c1ec	 Bytes: 7
  %loadMem_43c1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1ec = call %struct.Memory* @routine_movl_0x724740___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1ec)
  store %struct.Memory* %call_43c1ec, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c1f3	 Bytes: 8
  %loadMem_43c1f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1f3 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1f3)
  store %struct.Memory* %call_43c1f3, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x28(%rcx)	 RIP: 43c1fb	 Bytes: 3
  %loadMem_43c1fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1fb = call %struct.Memory* @routine_movl__eax__0x28__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1fb)
  store %struct.Memory* %call_43c1fb, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c1fe	 Bytes: 4
  %loadMem_43c1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c1fe = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c1fe)
  store %struct.Memory* %call_43c1fe, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xc(%rcx)	 RIP: 43c202	 Bytes: 3
  %loadMem_43c202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c202 = call %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c202)
  store %struct.Memory* %call_43c202, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c227	 RIP: 43c205	 Bytes: 5
  %loadMem_43c205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c205 = call %struct.Memory* @routine_jmpq_.L_43c227(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c205, i64 34, i64 5)
  store %struct.Memory* %call_43c205, %struct.Memory** %MEMORY

  br label %block_.L_43c227

  ; Code: .L_43c20a:	 RIP: 43c20a	 Bytes: 0
block_.L_43c20a:

  ; Code: movq 0x6cb900, %rax	 RIP: 43c20a	 Bytes: 8
  %loadMem_43c20a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c20a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c20a)
  store %struct.Memory* %call_43c20a, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 43c212	 Bytes: 3
  %loadMem_43c212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c212 = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c212)
  store %struct.Memory* %call_43c212, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c215	 Bytes: 4
  %loadMem_43c215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c215 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c215)
  store %struct.Memory* %call_43c215, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xc(%rax)	 RIP: 43c219	 Bytes: 3
  %loadMem_43c219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c219 = call %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c219)
  store %struct.Memory* %call_43c219, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c21c	 Bytes: 4
  %loadMem_43c21c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c21c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c21c)
  store %struct.Memory* %call_43c21c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8(%rax)	 RIP: 43c220	 Bytes: 7
  %loadMem_43c220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c220 = call %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c220)
  store %struct.Memory* %call_43c220, %struct.Memory** %MEMORY

  ; Code: .L_43c227:	 RIP: 43c227	 Bytes: 0
  br label %block_.L_43c227
block_.L_43c227:

  ; Code: jmpq .L_43c22c	 RIP: 43c227	 Bytes: 5
  %loadMem_43c227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c227 = call %struct.Memory* @routine_jmpq_.L_43c22c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c227, i64 5, i64 5)
  store %struct.Memory* %call_43c227, %struct.Memory** %MEMORY

  br label %block_.L_43c22c

  ; Code: .L_43c22c:	 RIP: 43c22c	 Bytes: 0
block_.L_43c22c:

  ; Code: jmpq .L_43c2d5	 RIP: 43c22c	 Bytes: 5
  %loadMem_43c22c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c22c = call %struct.Memory* @routine_jmpq_.L_43c2d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c22c, i64 169, i64 5)
  store %struct.Memory* %call_43c22c, %struct.Memory** %MEMORY

  br label %block_.L_43c2d5

  ; Code: .L_43c231:	 RIP: 43c231	 Bytes: 0
block_.L_43c231:

  ; Code: movq 0x6cb900, %rax	 RIP: 43c231	 Bytes: 8
  %loadMem_43c231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c231 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c231)
  store %struct.Memory* %call_43c231, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11bb4(%rax)	 RIP: 43c239	 Bytes: 7
  %loadMem_43c239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c239 = call %struct.Memory* @routine_cmpl__0x0__0x11bb4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c239)
  store %struct.Memory* %call_43c239, %struct.Memory** %MEMORY

  ; Code: jne .L_43c2b3	 RIP: 43c240	 Bytes: 6
  %loadMem_43c240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c240 = call %struct.Memory* @routine_jne_.L_43c2b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c240, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_43c240, %struct.Memory** %MEMORY

  %loadBr_43c240 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c240 = icmp eq i8 %loadBr_43c240, 1
  br i1 %cmpBr_43c240, label %block_.L_43c2b3, label %block_43c246

block_43c246:
  ; Code: movq 0x6cb900, %rax	 RIP: 43c246	 Bytes: 8
  %loadMem_43c246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c246 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c246)
  store %struct.Memory* %call_43c246, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11bb8(%rax)	 RIP: 43c24e	 Bytes: 7
  %loadMem_43c24e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c24e = call %struct.Memory* @routine_cmpl__0x0__0x11bb8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c24e)
  store %struct.Memory* %call_43c24e, %struct.Memory** %MEMORY

  ; Code: je .L_43c287	 RIP: 43c255	 Bytes: 6
  %loadMem_43c255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c255 = call %struct.Memory* @routine_je_.L_43c287(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c255, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_43c255, %struct.Memory** %MEMORY

  %loadBr_43c255 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c255 = icmp eq i8 %loadBr_43c255, 1
  br i1 %cmpBr_43c255, label %block_.L_43c287, label %block_43c25b

block_43c25b:
  ; Code: movl 0x70e8d0, %eax	 RIP: 43c25b	 Bytes: 7
  %loadMem_43c25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c25b = call %struct.Memory* @routine_movl_0x70e8d0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c25b)
  store %struct.Memory* %call_43c25b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c262	 Bytes: 4
  %loadMem_43c262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c262 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c262)
  store %struct.Memory* %call_43c262, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 43c266	 Bytes: 3
  %loadMem_43c266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c266 = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c266)
  store %struct.Memory* %call_43c266, %struct.Memory** %MEMORY

  ; Code: movl 0x7242f0, %eax	 RIP: 43c269	 Bytes: 7
  %loadMem_43c269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c269 = call %struct.Memory* @routine_movl_0x7242f0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c269)
  store %struct.Memory* %call_43c269, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c270	 Bytes: 4
  %loadMem_43c270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c270 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c270)
  store %struct.Memory* %call_43c270, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xc(%rcx)	 RIP: 43c274	 Bytes: 3
  %loadMem_43c274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c274 = call %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c274)
  store %struct.Memory* %call_43c274, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c277	 Bytes: 8
  %loadMem_43c277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c277 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c277)
  store %struct.Memory* %call_43c277, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x28(%rcx)	 RIP: 43c27f	 Bytes: 3
  %loadMem_43c27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c27f = call %struct.Memory* @routine_movl__eax__0x28__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c27f)
  store %struct.Memory* %call_43c27f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c2ae	 RIP: 43c282	 Bytes: 5
  %loadMem_43c282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c282 = call %struct.Memory* @routine_jmpq_.L_43c2ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c282, i64 44, i64 5)
  store %struct.Memory* %call_43c282, %struct.Memory** %MEMORY

  br label %block_.L_43c2ae

  ; Code: .L_43c287:	 RIP: 43c287	 Bytes: 0
block_.L_43c287:

  ; Code: movl 0x6cd4e4, %eax	 RIP: 43c287	 Bytes: 7
  %loadMem_43c287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c287 = call %struct.Memory* @routine_movl_0x6cd4e4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c287)
  store %struct.Memory* %call_43c287, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c28e	 Bytes: 4
  %loadMem_43c28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c28e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c28e)
  store %struct.Memory* %call_43c28e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 43c292	 Bytes: 3
  %loadMem_43c292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c292 = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c292)
  store %struct.Memory* %call_43c292, %struct.Memory** %MEMORY

  ; Code: movl 0x724740, %eax	 RIP: 43c295	 Bytes: 7
  %loadMem_43c295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c295 = call %struct.Memory* @routine_movl_0x724740___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c295)
  store %struct.Memory* %call_43c295, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c29c	 Bytes: 4
  %loadMem_43c29c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c29c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c29c)
  store %struct.Memory* %call_43c29c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xc(%rcx)	 RIP: 43c2a0	 Bytes: 3
  %loadMem_43c2a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2a0 = call %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2a0)
  store %struct.Memory* %call_43c2a0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c2a3	 Bytes: 8
  %loadMem_43c2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2a3 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2a3)
  store %struct.Memory* %call_43c2a3, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x28(%rcx)	 RIP: 43c2ab	 Bytes: 3
  %loadMem_43c2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2ab = call %struct.Memory* @routine_movl__eax__0x28__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2ab)
  store %struct.Memory* %call_43c2ab, %struct.Memory** %MEMORY

  ; Code: .L_43c2ae:	 RIP: 43c2ae	 Bytes: 0
  br label %block_.L_43c2ae
block_.L_43c2ae:

  ; Code: jmpq .L_43c2d0	 RIP: 43c2ae	 Bytes: 5
  %loadMem_43c2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2ae = call %struct.Memory* @routine_jmpq_.L_43c2d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2ae, i64 34, i64 5)
  store %struct.Memory* %call_43c2ae, %struct.Memory** %MEMORY

  br label %block_.L_43c2d0

  ; Code: .L_43c2b3:	 RIP: 43c2b3	 Bytes: 0
block_.L_43c2b3:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c2b3	 Bytes: 4
  %loadMem_43c2b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2b3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2b3)
  store %struct.Memory* %call_43c2b3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8(%rax)	 RIP: 43c2b7	 Bytes: 7
  %loadMem_43c2b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2b7 = call %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2b7)
  store %struct.Memory* %call_43c2b7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43c2be	 Bytes: 8
  %loadMem_43c2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2be = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2be)
  store %struct.Memory* %call_43c2be, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 43c2c6	 Bytes: 3
  %loadMem_43c2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2c6 = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2c6)
  store %struct.Memory* %call_43c2c6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c2c9	 Bytes: 4
  %loadMem_43c2c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2c9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2c9)
  store %struct.Memory* %call_43c2c9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xc(%rax)	 RIP: 43c2cd	 Bytes: 3
  %loadMem_43c2cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2cd = call %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2cd)
  store %struct.Memory* %call_43c2cd, %struct.Memory** %MEMORY

  ; Code: .L_43c2d0:	 RIP: 43c2d0	 Bytes: 0
  br label %block_.L_43c2d0
block_.L_43c2d0:

  ; Code: jmpq .L_43c2d5	 RIP: 43c2d0	 Bytes: 5
  %loadMem_43c2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2d0 = call %struct.Memory* @routine_jmpq_.L_43c2d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2d0, i64 5, i64 5)
  store %struct.Memory* %call_43c2d0, %struct.Memory** %MEMORY

  br label %block_.L_43c2d5

  ; Code: .L_43c2d5:	 RIP: 43c2d5	 Bytes: 0
block_.L_43c2d5:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43c2d5	 Bytes: 8
  %loadMem_43c2d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2d5 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2d5)
  store %struct.Memory* %call_43c2d5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 43c2dd	 Bytes: 7
  %loadMem_43c2dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2dd = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2dd)
  store %struct.Memory* %call_43c2dd, %struct.Memory** %MEMORY

  ; Code: je .L_43c2ff	 RIP: 43c2e4	 Bytes: 6
  %loadMem_43c2e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2e4 = call %struct.Memory* @routine_je_.L_43c2ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2e4, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43c2e4, %struct.Memory** %MEMORY

  %loadBr_43c2e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c2e4 = icmp eq i8 %loadBr_43c2e4, 1
  br i1 %cmpBr_43c2e4, label %block_.L_43c2ff, label %block_43c2ea

block_43c2ea:
  ; Code: movq 0x6cb900, %rax	 RIP: 43c2ea	 Bytes: 8
  %loadMem_43c2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2ea = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2ea)
  store %struct.Memory* %call_43c2ea, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11bb4(%rax)	 RIP: 43c2f2	 Bytes: 7
  %loadMem_43c2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2f2 = call %struct.Memory* @routine_cmpl__0x0__0x11bb4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2f2)
  store %struct.Memory* %call_43c2f2, %struct.Memory** %MEMORY

  ; Code: jne .L_43c7a6	 RIP: 43c2f9	 Bytes: 6
  %loadMem_43c2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2f9 = call %struct.Memory* @routine_jne_.L_43c7a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2f9, i8* %BRANCH_TAKEN, i64 1197, i64 6, i64 6)
  store %struct.Memory* %call_43c2f9, %struct.Memory** %MEMORY

  %loadBr_43c2f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c2f9 = icmp eq i8 %loadBr_43c2f9, 1
  br i1 %cmpBr_43c2f9, label %block_.L_43c7a6, label %block_.L_43c2ff

  ; Code: .L_43c2ff:	 RIP: 43c2ff	 Bytes: 0
block_.L_43c2ff:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c2ff	 Bytes: 4
  %loadMem_43c2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c2ff = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c2ff)
  store %struct.Memory* %call_43c2ff, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 43c303	 Bytes: 7
  %loadMem_43c303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c303 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c303)
  store %struct.Memory* %call_43c303, %struct.Memory** %MEMORY

  ; Code: jne .L_43c790	 RIP: 43c30a	 Bytes: 6
  %loadMem_43c30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c30a = call %struct.Memory* @routine_jne_.L_43c790(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c30a, i8* %BRANCH_TAKEN, i64 1158, i64 6, i64 6)
  store %struct.Memory* %call_43c30a, %struct.Memory** %MEMORY

  %loadBr_43c30a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c30a = icmp eq i8 %loadBr_43c30a, 1
  br i1 %cmpBr_43c30a, label %block_.L_43c790, label %block_43c310

block_43c310:
  ; Code: movq 0x6cb900, %rax	 RIP: 43c310	 Bytes: 8
  %loadMem_43c310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c310 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c310)
  store %struct.Memory* %call_43c310, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ba8(%rax)	 RIP: 43c318	 Bytes: 7
  %loadMem_43c318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c318 = call %struct.Memory* @routine_cmpl__0x0__0x11ba8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c318)
  store %struct.Memory* %call_43c318, %struct.Memory** %MEMORY

  ; Code: jle .L_43c551	 RIP: 43c31f	 Bytes: 6
  %loadMem_43c31f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c31f = call %struct.Memory* @routine_jle_.L_43c551(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c31f, i8* %BRANCH_TAKEN, i64 562, i64 6, i64 6)
  store %struct.Memory* %call_43c31f, %struct.Memory** %MEMORY

  %loadBr_43c31f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c31f = icmp eq i8 %loadBr_43c31f, 1
  br i1 %cmpBr_43c31f, label %block_.L_43c551, label %block_43c325

block_43c325:
  ; Code: movq 0x6cb900, %rax	 RIP: 43c325	 Bytes: 8
  %loadMem_43c325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c325 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c325)
  store %struct.Memory* %call_43c325, %struct.Memory** %MEMORY

  ; Code: movl 0x11ba8(%rax), %eax	 RIP: 43c32d	 Bytes: 6
  %loadMem_43c32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c32d = call %struct.Memory* @routine_movl_0x11ba8__rax____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c32d)
  store %struct.Memory* %call_43c32d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c333	 Bytes: 8
  %loadMem_43c333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c333 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c333)
  store %struct.Memory* %call_43c333, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 43c33b	 Bytes: 1
  %loadMem_43c33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c33b = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c33b)
  store %struct.Memory* %call_43c33b, %struct.Memory** %MEMORY

  ; Code: idivl 0x11bac(%rcx)	 RIP: 43c33c	 Bytes: 6
  %loadMem_43c33c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c33c = call %struct.Memory* @routine_idivl_0x11bac__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c33c)
  store %struct.Memory* %call_43c33c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 43c342	 Bytes: 3
  %loadMem_43c342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c342 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c342)
  store %struct.Memory* %call_43c342, %struct.Memory** %MEMORY

  ; Code: jne .L_43c551	 RIP: 43c345	 Bytes: 6
  %loadMem_43c345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c345 = call %struct.Memory* @routine_jne_.L_43c551(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c345, i8* %BRANCH_TAKEN, i64 524, i64 6, i64 6)
  store %struct.Memory* %call_43c345, %struct.Memory** %MEMORY

  %loadBr_43c345 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c345 = icmp eq i8 %loadBr_43c345, 1
  br i1 %cmpBr_43c345, label %block_.L_43c551, label %block_43c34b

block_43c34b:
  ; Code: movq 0x722cb0, %rax	 RIP: 43c34b	 Bytes: 8
  %loadMem_43c34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c34b = call %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c34b)
  store %struct.Memory* %call_43c34b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x47c(%rax)	 RIP: 43c353	 Bytes: 7
  %loadMem_43c353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c353 = call %struct.Memory* @routine_cmpl__0x0__0x47c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c353)
  store %struct.Memory* %call_43c353, %struct.Memory** %MEMORY

  ; Code: je .L_43c38d	 RIP: 43c35a	 Bytes: 6
  %loadMem_43c35a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c35a = call %struct.Memory* @routine_je_.L_43c38d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c35a, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_43c35a, %struct.Memory** %MEMORY

  %loadBr_43c35a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c35a = icmp eq i8 %loadBr_43c35a, 1
  br i1 %cmpBr_43c35a, label %block_.L_43c38d, label %block_43c360

block_43c360:
  ; Code: movb $0x0, %al	 RIP: 43c360	 Bytes: 2
  %loadMem_43c360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c360 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c360)
  store %struct.Memory* %call_43c360, %struct.Memory** %MEMORY

  ; Code: callq .updateRCModel	 RIP: 43c362	 Bytes: 5
  %loadMem1_43c362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43c362 = call %struct.Memory* @routine_callq_.updateRCModel(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43c362, i64 279950, i64 5, i64 5)
  store %struct.Memory* %call1_43c362, %struct.Memory** %MEMORY

  %loadMem2_43c362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c362 = load i64, i64* %3
  %call2_43c362 = call %struct.Memory* @sub_4808f0.updateRCModel(%struct.State* %0, i64  %loadPC_43c362, %struct.Memory* %loadMem2_43c362)
  store %struct.Memory* %call2_43c362, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c367	 Bytes: 8
  %loadMem_43c367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c367 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c367)
  store %struct.Memory* %call_43c367, %struct.Memory** %MEMORY

  ; Code: movl 0x11b94(%rcx), %edi	 RIP: 43c36f	 Bytes: 6
  %loadMem_43c36f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c36f = call %struct.Memory* @routine_movl_0x11b94__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c36f)
  store %struct.Memory* %call_43c36f, %struct.Memory** %MEMORY

  ; Code: callq .updateQuantizationParameter	 RIP: 43c375	 Bytes: 5
  %loadMem1_43c375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43c375 = call %struct.Memory* @routine_callq_.updateQuantizationParameter(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43c375, i64 269803, i64 5, i64 5)
  store %struct.Memory* %call1_43c375, %struct.Memory** %MEMORY

  %loadMem2_43c375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c375 = load i64, i64* %3
  %call2_43c375 = call %struct.Memory* @sub_47e160.updateQuantizationParameter(%struct.State* %0, i64  %loadPC_43c375, %struct.Memory* %loadMem2_43c375)
  store %struct.Memory* %call2_43c375, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c37a	 Bytes: 8
  %loadMem_43c37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c37a = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c37a)
  store %struct.Memory* %call_43c37a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x11b90(%rcx)	 RIP: 43c382	 Bytes: 6
  %loadMem_43c382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c382 = call %struct.Memory* @routine_movl__eax__0x11b90__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c382)
  store %struct.Memory* %call_43c382, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c54c	 RIP: 43c388	 Bytes: 5
  %loadMem_43c388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c388 = call %struct.Memory* @routine_jmpq_.L_43c54c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c388, i64 452, i64 5)
  store %struct.Memory* %call_43c388, %struct.Memory** %MEMORY

  br label %block_.L_43c54c

  ; Code: .L_43c38d:	 RIP: 43c38d	 Bytes: 0
block_.L_43c38d:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43c38d	 Bytes: 8
  %loadMem_43c38d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c38d = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c38d)
  store %struct.Memory* %call_43c38d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0xb40(%rax)	 RIP: 43c395	 Bytes: 7
  %loadMem_43c395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c395 = call %struct.Memory* @routine_cmpl__0x2__0xb40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c395)
  store %struct.Memory* %call_43c395, %struct.Memory** %MEMORY

  ; Code: jne .L_43c3f9	 RIP: 43c39c	 Bytes: 6
  %loadMem_43c39c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c39c = call %struct.Memory* @routine_jne_.L_43c3f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c39c, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_43c39c, %struct.Memory** %MEMORY

  %loadBr_43c39c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c39c = icmp eq i8 %loadBr_43c39c, 1
  br i1 %cmpBr_43c39c, label %block_.L_43c3f9, label %block_43c3a2

block_43c3a2:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 43c3a2	 Bytes: 8
  %loadMem_43c3a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c3a2 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c3a2)
  store %struct.Memory* %call_43c3a2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 43c3aa	 Bytes: 7
  %loadMem_43c3aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c3aa = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c3aa)
  store %struct.Memory* %call_43c3aa, %struct.Memory** %MEMORY

  ; Code: jne .L_43c3f9	 RIP: 43c3b1	 Bytes: 6
  %loadMem_43c3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c3b1 = call %struct.Memory* @routine_jne_.L_43c3f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c3b1, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_43c3b1, %struct.Memory** %MEMORY

  %loadBr_43c3b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c3b1 = icmp eq i8 %loadBr_43c3b1, 1
  br i1 %cmpBr_43c3b1, label %block_.L_43c3f9, label %block_43c3b7

block_43c3b7:
  ; Code: movq 0x6cb900, %rax	 RIP: 43c3b7	 Bytes: 8
  %loadMem_43c3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c3b7 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c3b7)
  store %struct.Memory* %call_43c3b7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ba4(%rax)	 RIP: 43c3bf	 Bytes: 7
  %loadMem_43c3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c3bf = call %struct.Memory* @routine_cmpl__0x0__0x11ba4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c3bf)
  store %struct.Memory* %call_43c3bf, %struct.Memory** %MEMORY

  ; Code: jne .L_43c3f9	 RIP: 43c3c6	 Bytes: 6
  %loadMem_43c3c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c3c6 = call %struct.Memory* @routine_jne_.L_43c3f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c3c6, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_43c3c6, %struct.Memory** %MEMORY

  %loadBr_43c3c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c3c6 = icmp eq i8 %loadBr_43c3c6, 1
  br i1 %cmpBr_43c3c6, label %block_.L_43c3f9, label %block_43c3cc

block_43c3cc:
  ; Code: movb $0x0, %al	 RIP: 43c3cc	 Bytes: 2
  %loadMem_43c3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c3cc = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c3cc)
  store %struct.Memory* %call_43c3cc, %struct.Memory** %MEMORY

  ; Code: callq .updateRCModel	 RIP: 43c3ce	 Bytes: 5
  %loadMem1_43c3ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43c3ce = call %struct.Memory* @routine_callq_.updateRCModel(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43c3ce, i64 279842, i64 5, i64 5)
  store %struct.Memory* %call1_43c3ce, %struct.Memory** %MEMORY

  %loadMem2_43c3ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c3ce = load i64, i64* %3
  %call2_43c3ce = call %struct.Memory* @sub_4808f0.updateRCModel(%struct.State* %0, i64  %loadPC_43c3ce, %struct.Memory* %loadMem2_43c3ce)
  store %struct.Memory* %call2_43c3ce, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c3d3	 Bytes: 8
  %loadMem_43c3d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c3d3 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c3d3)
  store %struct.Memory* %call_43c3d3, %struct.Memory** %MEMORY

  ; Code: movl 0x11b94(%rcx), %edi	 RIP: 43c3db	 Bytes: 6
  %loadMem_43c3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c3db = call %struct.Memory* @routine_movl_0x11b94__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c3db)
  store %struct.Memory* %call_43c3db, %struct.Memory** %MEMORY

  ; Code: callq .updateQuantizationParameter	 RIP: 43c3e1	 Bytes: 5
  %loadMem1_43c3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43c3e1 = call %struct.Memory* @routine_callq_.updateQuantizationParameter(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43c3e1, i64 269695, i64 5, i64 5)
  store %struct.Memory* %call1_43c3e1, %struct.Memory** %MEMORY

  %loadMem2_43c3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c3e1 = load i64, i64* %3
  %call2_43c3e1 = call %struct.Memory* @sub_47e160.updateQuantizationParameter(%struct.State* %0, i64  %loadPC_43c3e1, %struct.Memory* %loadMem2_43c3e1)
  store %struct.Memory* %call2_43c3e1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c3e6	 Bytes: 8
  %loadMem_43c3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c3e6 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c3e6)
  store %struct.Memory* %call_43c3e6, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x11b90(%rcx)	 RIP: 43c3ee	 Bytes: 6
  %loadMem_43c3ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c3ee = call %struct.Memory* @routine_movl__eax__0x11b90__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c3ee)
  store %struct.Memory* %call_43c3ee, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c547	 RIP: 43c3f4	 Bytes: 5
  %loadMem_43c3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c3f4 = call %struct.Memory* @routine_jmpq_.L_43c547(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c3f4, i64 339, i64 5)
  store %struct.Memory* %call_43c3f4, %struct.Memory** %MEMORY

  br label %block_.L_43c547

  ; Code: .L_43c3f9:	 RIP: 43c3f9	 Bytes: 0
block_.L_43c3f9:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43c3f9	 Bytes: 8
  %loadMem_43c3f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c3f9 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c3f9)
  store %struct.Memory* %call_43c3f9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xb40(%rax)	 RIP: 43c401	 Bytes: 7
  %loadMem_43c401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c401 = call %struct.Memory* @routine_cmpl__0x1__0xb40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c401)
  store %struct.Memory* %call_43c401, %struct.Memory** %MEMORY

  ; Code: jne .L_43c465	 RIP: 43c408	 Bytes: 6
  %loadMem_43c408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c408 = call %struct.Memory* @routine_jne_.L_43c465(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c408, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_43c408, %struct.Memory** %MEMORY

  %loadBr_43c408 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c408 = icmp eq i8 %loadBr_43c408, 1
  br i1 %cmpBr_43c408, label %block_.L_43c465, label %block_43c40e

block_43c40e:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 43c40e	 Bytes: 8
  %loadMem_43c40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c40e = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c40e)
  store %struct.Memory* %call_43c40e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 43c416	 Bytes: 7
  %loadMem_43c416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c416 = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c416)
  store %struct.Memory* %call_43c416, %struct.Memory** %MEMORY

  ; Code: jne .L_43c465	 RIP: 43c41d	 Bytes: 6
  %loadMem_43c41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c41d = call %struct.Memory* @routine_jne_.L_43c465(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c41d, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_43c41d, %struct.Memory** %MEMORY

  %loadBr_43c41d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c41d = icmp eq i8 %loadBr_43c41d, 1
  br i1 %cmpBr_43c41d, label %block_.L_43c465, label %block_43c423

block_43c423:
  ; Code: movq 0x6cb900, %rax	 RIP: 43c423	 Bytes: 8
  %loadMem_43c423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c423 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c423)
  store %struct.Memory* %call_43c423, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ba4(%rax)	 RIP: 43c42b	 Bytes: 7
  %loadMem_43c42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c42b = call %struct.Memory* @routine_cmpl__0x0__0x11ba4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c42b)
  store %struct.Memory* %call_43c42b, %struct.Memory** %MEMORY

  ; Code: jne .L_43c465	 RIP: 43c432	 Bytes: 6
  %loadMem_43c432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c432 = call %struct.Memory* @routine_jne_.L_43c465(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c432, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_43c432, %struct.Memory** %MEMORY

  %loadBr_43c432 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c432 = icmp eq i8 %loadBr_43c432, 1
  br i1 %cmpBr_43c432, label %block_.L_43c465, label %block_43c438

block_43c438:
  ; Code: movb $0x0, %al	 RIP: 43c438	 Bytes: 2
  %loadMem_43c438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c438 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c438)
  store %struct.Memory* %call_43c438, %struct.Memory** %MEMORY

  ; Code: callq .updateRCModel	 RIP: 43c43a	 Bytes: 5
  %loadMem1_43c43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43c43a = call %struct.Memory* @routine_callq_.updateRCModel(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43c43a, i64 279734, i64 5, i64 5)
  store %struct.Memory* %call1_43c43a, %struct.Memory** %MEMORY

  %loadMem2_43c43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c43a = load i64, i64* %3
  %call2_43c43a = call %struct.Memory* @sub_4808f0.updateRCModel(%struct.State* %0, i64  %loadPC_43c43a, %struct.Memory* %loadMem2_43c43a)
  store %struct.Memory* %call2_43c43a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c43f	 Bytes: 8
  %loadMem_43c43f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c43f = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c43f)
  store %struct.Memory* %call_43c43f, %struct.Memory** %MEMORY

  ; Code: movl 0x11b94(%rcx), %edi	 RIP: 43c447	 Bytes: 6
  %loadMem_43c447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c447 = call %struct.Memory* @routine_movl_0x11b94__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c447)
  store %struct.Memory* %call_43c447, %struct.Memory** %MEMORY

  ; Code: callq .updateQuantizationParameter	 RIP: 43c44d	 Bytes: 5
  %loadMem1_43c44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43c44d = call %struct.Memory* @routine_callq_.updateQuantizationParameter(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43c44d, i64 269587, i64 5, i64 5)
  store %struct.Memory* %call1_43c44d, %struct.Memory** %MEMORY

  %loadMem2_43c44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c44d = load i64, i64* %3
  %call2_43c44d = call %struct.Memory* @sub_47e160.updateQuantizationParameter(%struct.State* %0, i64  %loadPC_43c44d, %struct.Memory* %loadMem2_43c44d)
  store %struct.Memory* %call2_43c44d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c452	 Bytes: 8
  %loadMem_43c452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c452 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c452)
  store %struct.Memory* %call_43c452, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x11b90(%rcx)	 RIP: 43c45a	 Bytes: 6
  %loadMem_43c45a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c45a = call %struct.Memory* @routine_movl__eax__0x11b90__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c45a)
  store %struct.Memory* %call_43c45a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c542	 RIP: 43c460	 Bytes: 5
  %loadMem_43c460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c460 = call %struct.Memory* @routine_jmpq_.L_43c542(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c460, i64 226, i64 5)
  store %struct.Memory* %call_43c460, %struct.Memory** %MEMORY

  br label %block_.L_43c542

  ; Code: .L_43c465:	 RIP: 43c465	 Bytes: 0
block_.L_43c465:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43c465	 Bytes: 8
  %loadMem_43c465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c465 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c465)
  store %struct.Memory* %call_43c465, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 43c46d	 Bytes: 7
  %loadMem_43c46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c46d = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c46d)
  store %struct.Memory* %call_43c46d, %struct.Memory** %MEMORY

  ; Code: je .L_43c4d1	 RIP: 43c474	 Bytes: 6
  %loadMem_43c474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c474 = call %struct.Memory* @routine_je_.L_43c4d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c474, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_43c474, %struct.Memory** %MEMORY

  %loadBr_43c474 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c474 = icmp eq i8 %loadBr_43c474, 1
  br i1 %cmpBr_43c474, label %block_.L_43c4d1, label %block_43c47a

block_43c47a:
  ; Code: movq 0x6cb900, %rax	 RIP: 43c47a	 Bytes: 8
  %loadMem_43c47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c47a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c47a)
  store %struct.Memory* %call_43c47a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ba4(%rax)	 RIP: 43c482	 Bytes: 7
  %loadMem_43c482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c482 = call %struct.Memory* @routine_cmpl__0x0__0x11ba4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c482)
  store %struct.Memory* %call_43c482, %struct.Memory** %MEMORY

  ; Code: jne .L_43c4d1	 RIP: 43c489	 Bytes: 6
  %loadMem_43c489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c489 = call %struct.Memory* @routine_jne_.L_43c4d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c489, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_43c489, %struct.Memory** %MEMORY

  %loadBr_43c489 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c489 = icmp eq i8 %loadBr_43c489, 1
  br i1 %cmpBr_43c489, label %block_.L_43c4d1, label %block_43c48f

block_43c48f:
  ; Code: movq 0x6cb900, %rax	 RIP: 43c48f	 Bytes: 8
  %loadMem_43c48f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c48f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c48f)
  store %struct.Memory* %call_43c48f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b98(%rax)	 RIP: 43c497	 Bytes: 7
  %loadMem_43c497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c497 = call %struct.Memory* @routine_cmpl__0x1__0x11b98__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c497)
  store %struct.Memory* %call_43c497, %struct.Memory** %MEMORY

  ; Code: jne .L_43c4d1	 RIP: 43c49e	 Bytes: 6
  %loadMem_43c49e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c49e = call %struct.Memory* @routine_jne_.L_43c4d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c49e, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_43c49e, %struct.Memory** %MEMORY

  %loadBr_43c49e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c49e = icmp eq i8 %loadBr_43c49e, 1
  br i1 %cmpBr_43c49e, label %block_.L_43c4d1, label %block_43c4a4

block_43c4a4:
  ; Code: movb $0x0, %al	 RIP: 43c4a4	 Bytes: 2
  %loadMem_43c4a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c4a4 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c4a4)
  store %struct.Memory* %call_43c4a4, %struct.Memory** %MEMORY

  ; Code: callq .updateRCModel	 RIP: 43c4a6	 Bytes: 5
  %loadMem1_43c4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43c4a6 = call %struct.Memory* @routine_callq_.updateRCModel(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43c4a6, i64 279626, i64 5, i64 5)
  store %struct.Memory* %call1_43c4a6, %struct.Memory** %MEMORY

  %loadMem2_43c4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c4a6 = load i64, i64* %3
  %call2_43c4a6 = call %struct.Memory* @sub_4808f0.updateRCModel(%struct.State* %0, i64  %loadPC_43c4a6, %struct.Memory* %loadMem2_43c4a6)
  store %struct.Memory* %call2_43c4a6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c4ab	 Bytes: 8
  %loadMem_43c4ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c4ab = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c4ab)
  store %struct.Memory* %call_43c4ab, %struct.Memory** %MEMORY

  ; Code: movl 0x11b94(%rcx), %edi	 RIP: 43c4b3	 Bytes: 6
  %loadMem_43c4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c4b3 = call %struct.Memory* @routine_movl_0x11b94__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c4b3)
  store %struct.Memory* %call_43c4b3, %struct.Memory** %MEMORY

  ; Code: callq .updateQuantizationParameter	 RIP: 43c4b9	 Bytes: 5
  %loadMem1_43c4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43c4b9 = call %struct.Memory* @routine_callq_.updateQuantizationParameter(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43c4b9, i64 269479, i64 5, i64 5)
  store %struct.Memory* %call1_43c4b9, %struct.Memory** %MEMORY

  %loadMem2_43c4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c4b9 = load i64, i64* %3
  %call2_43c4b9 = call %struct.Memory* @sub_47e160.updateQuantizationParameter(%struct.State* %0, i64  %loadPC_43c4b9, %struct.Memory* %loadMem2_43c4b9)
  store %struct.Memory* %call2_43c4b9, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c4be	 Bytes: 8
  %loadMem_43c4be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c4be = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c4be)
  store %struct.Memory* %call_43c4be, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x11b90(%rcx)	 RIP: 43c4c6	 Bytes: 6
  %loadMem_43c4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c4c6 = call %struct.Memory* @routine_movl__eax__0x11b90__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c4c6)
  store %struct.Memory* %call_43c4c6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c53d	 RIP: 43c4cc	 Bytes: 5
  %loadMem_43c4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c4cc = call %struct.Memory* @routine_jmpq_.L_43c53d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c4cc, i64 113, i64 5)
  store %struct.Memory* %call_43c4cc, %struct.Memory** %MEMORY

  br label %block_.L_43c53d

  ; Code: .L_43c4d1:	 RIP: 43c4d1	 Bytes: 0
block_.L_43c4d1:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43c4d1	 Bytes: 8
  %loadMem_43c4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c4d1 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c4d1)
  store %struct.Memory* %call_43c4d1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 43c4d9	 Bytes: 7
  %loadMem_43c4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c4d9 = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c4d9)
  store %struct.Memory* %call_43c4d9, %struct.Memory** %MEMORY

  ; Code: je .L_43c538	 RIP: 43c4e0	 Bytes: 6
  %loadMem_43c4e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c4e0 = call %struct.Memory* @routine_je_.L_43c538(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c4e0, i8* %BRANCH_TAKEN, i64 88, i64 6, i64 6)
  store %struct.Memory* %call_43c4e0, %struct.Memory** %MEMORY

  %loadBr_43c4e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c4e0 = icmp eq i8 %loadBr_43c4e0, 1
  br i1 %cmpBr_43c4e0, label %block_.L_43c538, label %block_43c4e6

block_43c4e6:
  ; Code: movq 0x6cb900, %rax	 RIP: 43c4e6	 Bytes: 8
  %loadMem_43c4e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c4e6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c4e6)
  store %struct.Memory* %call_43c4e6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ba4(%rax)	 RIP: 43c4ee	 Bytes: 7
  %loadMem_43c4ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c4ee = call %struct.Memory* @routine_cmpl__0x0__0x11ba4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c4ee)
  store %struct.Memory* %call_43c4ee, %struct.Memory** %MEMORY

  ; Code: jne .L_43c538	 RIP: 43c4f5	 Bytes: 6
  %loadMem_43c4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c4f5 = call %struct.Memory* @routine_jne_.L_43c538(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c4f5, i8* %BRANCH_TAKEN, i64 67, i64 6, i64 6)
  store %struct.Memory* %call_43c4f5, %struct.Memory** %MEMORY

  %loadBr_43c4f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c4f5 = icmp eq i8 %loadBr_43c4f5, 1
  br i1 %cmpBr_43c4f5, label %block_.L_43c538, label %block_43c4fb

block_43c4fb:
  ; Code: movq 0x6cb900, %rax	 RIP: 43c4fb	 Bytes: 8
  %loadMem_43c4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c4fb = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c4fb)
  store %struct.Memory* %call_43c4fb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11b98(%rax)	 RIP: 43c503	 Bytes: 7
  %loadMem_43c503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c503 = call %struct.Memory* @routine_cmpl__0x0__0x11b98__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c503)
  store %struct.Memory* %call_43c503, %struct.Memory** %MEMORY

  ; Code: jne .L_43c538	 RIP: 43c50a	 Bytes: 6
  %loadMem_43c50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c50a = call %struct.Memory* @routine_jne_.L_43c538(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c50a, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_43c50a, %struct.Memory** %MEMORY

  %loadBr_43c50a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c50a = icmp eq i8 %loadBr_43c50a, 1
  br i1 %cmpBr_43c50a, label %block_.L_43c538, label %block_43c510

block_43c510:
  ; Code: movb $0x0, %al	 RIP: 43c510	 Bytes: 2
  %loadMem_43c510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c510 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c510)
  store %struct.Memory* %call_43c510, %struct.Memory** %MEMORY

  ; Code: callq .updateRCModel	 RIP: 43c512	 Bytes: 5
  %loadMem1_43c512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43c512 = call %struct.Memory* @routine_callq_.updateRCModel(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43c512, i64 279518, i64 5, i64 5)
  store %struct.Memory* %call1_43c512, %struct.Memory** %MEMORY

  %loadMem2_43c512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c512 = load i64, i64* %3
  %call2_43c512 = call %struct.Memory* @sub_4808f0.updateRCModel(%struct.State* %0, i64  %loadPC_43c512, %struct.Memory* %loadMem2_43c512)
  store %struct.Memory* %call2_43c512, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c517	 Bytes: 8
  %loadMem_43c517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c517 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c517)
  store %struct.Memory* %call_43c517, %struct.Memory** %MEMORY

  ; Code: movl 0x11b94(%rcx), %edi	 RIP: 43c51f	 Bytes: 6
  %loadMem_43c51f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c51f = call %struct.Memory* @routine_movl_0x11b94__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c51f)
  store %struct.Memory* %call_43c51f, %struct.Memory** %MEMORY

  ; Code: callq .updateQuantizationParameter	 RIP: 43c525	 Bytes: 5
  %loadMem1_43c525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43c525 = call %struct.Memory* @routine_callq_.updateQuantizationParameter(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43c525, i64 269371, i64 5, i64 5)
  store %struct.Memory* %call1_43c525, %struct.Memory** %MEMORY

  %loadMem2_43c525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c525 = load i64, i64* %3
  %call2_43c525 = call %struct.Memory* @sub_47e160.updateQuantizationParameter(%struct.State* %0, i64  %loadPC_43c525, %struct.Memory* %loadMem2_43c525)
  store %struct.Memory* %call2_43c525, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c52a	 Bytes: 8
  %loadMem_43c52a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c52a = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c52a)
  store %struct.Memory* %call_43c52a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x11b90(%rcx)	 RIP: 43c532	 Bytes: 6
  %loadMem_43c532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c532 = call %struct.Memory* @routine_movl__eax__0x11b90__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c532)
  store %struct.Memory* %call_43c532, %struct.Memory** %MEMORY

  ; Code: .L_43c538:	 RIP: 43c538	 Bytes: 0
  br label %block_.L_43c538
block_.L_43c538:

  ; Code: jmpq .L_43c53d	 RIP: 43c538	 Bytes: 5
  %loadMem_43c538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c538 = call %struct.Memory* @routine_jmpq_.L_43c53d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c538, i64 5, i64 5)
  store %struct.Memory* %call_43c538, %struct.Memory** %MEMORY

  br label %block_.L_43c53d

  ; Code: .L_43c53d:	 RIP: 43c53d	 Bytes: 0
block_.L_43c53d:

  ; Code: jmpq .L_43c542	 RIP: 43c53d	 Bytes: 5
  %loadMem_43c53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c53d = call %struct.Memory* @routine_jmpq_.L_43c542(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c53d, i64 5, i64 5)
  store %struct.Memory* %call_43c53d, %struct.Memory** %MEMORY

  br label %block_.L_43c542

  ; Code: .L_43c542:	 RIP: 43c542	 Bytes: 0
block_.L_43c542:

  ; Code: jmpq .L_43c547	 RIP: 43c542	 Bytes: 5
  %loadMem_43c542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c542 = call %struct.Memory* @routine_jmpq_.L_43c547(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c542, i64 5, i64 5)
  store %struct.Memory* %call_43c542, %struct.Memory** %MEMORY

  br label %block_.L_43c547

  ; Code: .L_43c547:	 RIP: 43c547	 Bytes: 0
block_.L_43c547:

  ; Code: jmpq .L_43c54c	 RIP: 43c547	 Bytes: 5
  %loadMem_43c547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c547 = call %struct.Memory* @routine_jmpq_.L_43c54c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c547, i64 5, i64 5)
  store %struct.Memory* %call_43c547, %struct.Memory** %MEMORY

  br label %block_.L_43c54c

  ; Code: .L_43c54c:	 RIP: 43c54c	 Bytes: 0
block_.L_43c54c:

  ; Code: jmpq .L_43c551	 RIP: 43c54c	 Bytes: 5
  %loadMem_43c54c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c54c = call %struct.Memory* @routine_jmpq_.L_43c551(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c54c, i64 5, i64 5)
  store %struct.Memory* %call_43c54c, %struct.Memory** %MEMORY

  br label %block_.L_43c551

  ; Code: .L_43c551:	 RIP: 43c551	 Bytes: 0
block_.L_43c551:

  ; Code: movq 0x6cb900, %rax	 RIP: 43c551	 Bytes: 8
  %loadMem_43c551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c551 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c551)
  store %struct.Memory* %call_43c551, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc(%rax)	 RIP: 43c559	 Bytes: 4
  %loadMem_43c559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c559 = call %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c559)
  store %struct.Memory* %call_43c559, %struct.Memory** %MEMORY

  ; Code: jne .L_43c57c	 RIP: 43c55d	 Bytes: 6
  %loadMem_43c55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c55d = call %struct.Memory* @routine_jne_.L_43c57c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c55d, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43c55d, %struct.Memory** %MEMORY

  %loadBr_43c55d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c55d = icmp eq i8 %loadBr_43c55d, 1
  br i1 %cmpBr_43c55d, label %block_.L_43c57c, label %block_43c563

block_43c563:
  ; Code: movq 0x6cb900, %rax	 RIP: 43c563	 Bytes: 8
  %loadMem_43c563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c563 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c563)
  store %struct.Memory* %call_43c563, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 43c56b	 Bytes: 3
  %loadMem_43c56b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c56b = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c56b)
  store %struct.Memory* %call_43c56b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43c56e	 Bytes: 8
  %loadMem_43c56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c56e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c56e)
  store %struct.Memory* %call_43c56e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11b90(%rax)	 RIP: 43c576	 Bytes: 6
  %loadMem_43c576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c576 = call %struct.Memory* @routine_movl__ecx__0x11b90__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c576)
  store %struct.Memory* %call_43c576, %struct.Memory** %MEMORY

  ; Code: .L_43c57c:	 RIP: 43c57c	 Bytes: 0
  br label %block_.L_43c57c
block_.L_43c57c:

  ; Code: movq 0x6cb900, %rax	 RIP: 43c57c	 Bytes: 8
  %loadMem_43c57c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c57c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c57c)
  store %struct.Memory* %call_43c57c, %struct.Memory** %MEMORY

  ; Code: movl 0x11b90(%rax), %ecx	 RIP: 43c584	 Bytes: 6
  %loadMem_43c584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c584 = call %struct.Memory* @routine_movl_0x11b90__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c584)
  store %struct.Memory* %call_43c584, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c58a	 Bytes: 4
  %loadMem_43c58a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c58a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c58a)
  store %struct.Memory* %call_43c58a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x25c(%rax)	 RIP: 43c58e	 Bytes: 6
  %loadMem_43c58e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c58e = call %struct.Memory* @routine_movl__ecx__0x25c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c58e)
  store %struct.Memory* %call_43c58e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c594	 Bytes: 4
  %loadMem_43c594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c594 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c594)
  store %struct.Memory* %call_43c594, %struct.Memory** %MEMORY

  ; Code: movl 0x25c(%rax), %ecx	 RIP: 43c598	 Bytes: 6
  %loadMem_43c598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c598 = call %struct.Memory* @routine_movl_0x25c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c598)
  store %struct.Memory* %call_43c598, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c59e	 Bytes: 4
  %loadMem_43c59e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c59e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c59e)
  store %struct.Memory* %call_43c59e, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 43c5a2	 Bytes: 3
  %loadMem_43c5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5a2 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5a2)
  store %struct.Memory* %call_43c5a2, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edx	 RIP: 43c5a5	 Bytes: 3
  %loadMem_43c5a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5a5 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5a5)
  store %struct.Memory* %call_43c5a5, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43c5a8	 Bytes: 2
  %loadMem_43c5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5a8 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5a8)
  store %struct.Memory* %call_43c5a8, %struct.Memory** %MEMORY

  ; Code: jle .L_43c5c9	 RIP: 43c5aa	 Bytes: 6
  %loadMem_43c5aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5aa = call %struct.Memory* @routine_jle_.L_43c5c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5aa, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43c5aa, %struct.Memory** %MEMORY

  %loadBr_43c5aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c5aa = icmp eq i8 %loadBr_43c5aa, 1
  br i1 %cmpBr_43c5aa, label %block_.L_43c5c9, label %block_43c5b0

block_43c5b0:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c5b0	 Bytes: 4
  %loadMem_43c5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5b0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5b0)
  store %struct.Memory* %call_43c5b0, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 43c5b4	 Bytes: 3
  %loadMem_43c5b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5b4 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5b4)
  store %struct.Memory* %call_43c5b4, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %ecx	 RIP: 43c5b7	 Bytes: 3
  %loadMem_43c5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5b7 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5b7)
  store %struct.Memory* %call_43c5b7, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c5ba	 Bytes: 4
  %loadMem_43c5ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5ba = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5ba)
  store %struct.Memory* %call_43c5ba, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x25c(%rax)	 RIP: 43c5be	 Bytes: 6
  %loadMem_43c5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5be = call %struct.Memory* @routine_movl__ecx__0x25c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5be)
  store %struct.Memory* %call_43c5be, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c5fe	 RIP: 43c5c4	 Bytes: 5
  %loadMem_43c5c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5c4 = call %struct.Memory* @routine_jmpq_.L_43c5fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5c4, i64 58, i64 5)
  store %struct.Memory* %call_43c5c4, %struct.Memory** %MEMORY

  br label %block_.L_43c5fe

  ; Code: .L_43c5c9:	 RIP: 43c5c9	 Bytes: 0
block_.L_43c5c9:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c5c9	 Bytes: 4
  %loadMem_43c5c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5c9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5c9)
  store %struct.Memory* %call_43c5c9, %struct.Memory** %MEMORY

  ; Code: movl 0x25c(%rax), %ecx	 RIP: 43c5cd	 Bytes: 6
  %loadMem_43c5cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5cd = call %struct.Memory* @routine_movl_0x25c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5cd)
  store %struct.Memory* %call_43c5cd, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c5d3	 Bytes: 4
  %loadMem_43c5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5d3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5d3)
  store %struct.Memory* %call_43c5d3, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 43c5d7	 Bytes: 3
  %loadMem_43c5d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5d7 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5d7)
  store %struct.Memory* %call_43c5d7, %struct.Memory** %MEMORY

  ; Code: subl -0x50(%rbp), %edx	 RIP: 43c5da	 Bytes: 3
  %loadMem_43c5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5da = call %struct.Memory* @routine_subl_MINUS0x50__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5da)
  store %struct.Memory* %call_43c5da, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 43c5dd	 Bytes: 2
  %loadMem_43c5dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5dd = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5dd)
  store %struct.Memory* %call_43c5dd, %struct.Memory** %MEMORY

  ; Code: jge .L_43c5f9	 RIP: 43c5df	 Bytes: 6
  %loadMem_43c5df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5df = call %struct.Memory* @routine_jge_.L_43c5f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5df, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_43c5df, %struct.Memory** %MEMORY

  %loadBr_43c5df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c5df = icmp eq i8 %loadBr_43c5df, 1
  br i1 %cmpBr_43c5df, label %block_.L_43c5f9, label %block_43c5e5

block_43c5e5:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c5e5	 Bytes: 4
  %loadMem_43c5e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5e5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5e5)
  store %struct.Memory* %call_43c5e5, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 43c5e9	 Bytes: 3
  %loadMem_43c5e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5e9 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5e9)
  store %struct.Memory* %call_43c5e9, %struct.Memory** %MEMORY

  ; Code: subl -0x50(%rbp), %ecx	 RIP: 43c5ec	 Bytes: 3
  %loadMem_43c5ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5ec = call %struct.Memory* @routine_subl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5ec)
  store %struct.Memory* %call_43c5ec, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c5ef	 Bytes: 4
  %loadMem_43c5ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5ef = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5ef)
  store %struct.Memory* %call_43c5ef, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x25c(%rax)	 RIP: 43c5f3	 Bytes: 6
  %loadMem_43c5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5f3 = call %struct.Memory* @routine_movl__ecx__0x25c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5f3)
  store %struct.Memory* %call_43c5f3, %struct.Memory** %MEMORY

  ; Code: .L_43c5f9:	 RIP: 43c5f9	 Bytes: 0
  br label %block_.L_43c5f9
block_.L_43c5f9:

  ; Code: jmpq .L_43c5fe	 RIP: 43c5f9	 Bytes: 5
  %loadMem_43c5f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5f9 = call %struct.Memory* @routine_jmpq_.L_43c5fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5f9, i64 5, i64 5)
  store %struct.Memory* %call_43c5f9, %struct.Memory** %MEMORY

  br label %block_.L_43c5fe

  ; Code: .L_43c5fe:	 RIP: 43c5fe	 Bytes: 0
block_.L_43c5fe:

  ; Code: xorl %eax, %eax	 RIP: 43c5fe	 Bytes: 2
  %loadMem_43c5fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c5fe = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c5fe)
  store %struct.Memory* %call_43c5fe, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c600	 Bytes: 4
  %loadMem_43c600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c600 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c600)
  store %struct.Memory* %call_43c600, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rcx), %edx	 RIP: 43c604	 Bytes: 3
  %loadMem_43c604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c604 = call %struct.Memory* @routine_movl_0x8__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c604)
  store %struct.Memory* %call_43c604, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c607	 Bytes: 4
  %loadMem_43c607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c607 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c607)
  store %struct.Memory* %call_43c607, %struct.Memory** %MEMORY

  ; Code: addl 0x25c(%rcx), %edx	 RIP: 43c60b	 Bytes: 6
  %loadMem_43c60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c60b = call %struct.Memory* @routine_addl_0x25c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c60b)
  store %struct.Memory* %call_43c60b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c611	 Bytes: 4
  %loadMem_43c611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c611 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c611)
  store %struct.Memory* %call_43c611, %struct.Memory** %MEMORY

  ; Code: subl 0xc(%rcx), %edx	 RIP: 43c615	 Bytes: 3
  %loadMem_43c615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c615 = call %struct.Memory* @routine_subl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c615)
  store %struct.Memory* %call_43c615, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x6d45e8	 RIP: 43c618	 Bytes: 7
  %loadMem_43c618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c618 = call %struct.Memory* @routine_movl__edx__0x6d45e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c618)
  store %struct.Memory* %call_43c618, %struct.Memory** %MEMORY

  ; Code: movl 0x6d45e8, %edx	 RIP: 43c61f	 Bytes: 7
  %loadMem_43c61f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c61f = call %struct.Memory* @routine_movl_0x6d45e8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c61f)
  store %struct.Memory* %call_43c61f, %struct.Memory** %MEMORY

  ; Code: subl -0x50(%rbp), %eax	 RIP: 43c626	 Bytes: 3
  %loadMem_43c626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c626 = call %struct.Memory* @routine_subl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c626)
  store %struct.Memory* %call_43c626, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edx	 RIP: 43c629	 Bytes: 2
  %loadMem_43c629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c629 = call %struct.Memory* @routine_cmpl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c629)
  store %struct.Memory* %call_43c629, %struct.Memory** %MEMORY

  ; Code: jge .L_43c680	 RIP: 43c62b	 Bytes: 6
  %loadMem_43c62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c62b = call %struct.Memory* @routine_jge_.L_43c680(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c62b, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_43c62b, %struct.Memory** %MEMORY

  %loadBr_43c62b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c62b = icmp eq i8 %loadBr_43c62b, 1
  br i1 %cmpBr_43c62b, label %block_.L_43c680, label %block_43c631

block_43c631:
  ; Code: xorl %eax, %eax	 RIP: 43c631	 Bytes: 2
  %loadMem_43c631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c631 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c631)
  store %struct.Memory* %call_43c631, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 43c633	 Bytes: 2
  %loadMem_43c633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c633 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c633)
  store %struct.Memory* %call_43c633, %struct.Memory** %MEMORY

  ; Code: subl -0x50(%rbp), %ecx	 RIP: 43c635	 Bytes: 3
  %loadMem_43c635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c635 = call %struct.Memory* @routine_subl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c635)
  store %struct.Memory* %call_43c635, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x6d45e8	 RIP: 43c638	 Bytes: 7
  %loadMem_43c638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c638 = call %struct.Memory* @routine_movl__ecx__0x6d45e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c638)
  store %struct.Memory* %call_43c638, %struct.Memory** %MEMORY

  ; Code: movl 0x6d45e8, %ecx	 RIP: 43c63f	 Bytes: 7
  %loadMem_43c63f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c63f = call %struct.Memory* @routine_movl_0x6d45e8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c63f)
  store %struct.Memory* %call_43c63f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 43c646	 Bytes: 4
  %loadMem_43c646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c646 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c646)
  store %struct.Memory* %call_43c646, %struct.Memory** %MEMORY

  ; Code: subl 0x8(%rdx), %ecx	 RIP: 43c64a	 Bytes: 3
  %loadMem_43c64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c64a = call %struct.Memory* @routine_subl_0x8__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c64a)
  store %struct.Memory* %call_43c64a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x6cd470	 RIP: 43c64d	 Bytes: 7
  %loadMem_43c64d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c64d = call %struct.Memory* @routine_movl__ecx__0x6cd470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c64d)
  store %struct.Memory* %call_43c64d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 43c654	 Bytes: 8
  %loadMem_43c654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c654 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c654)
  store %struct.Memory* %call_43c654, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rdx), %ecx	 RIP: 43c65c	 Bytes: 3
  %loadMem_43c65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c65c = call %struct.Memory* @routine_movl_0x28__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c65c)
  store %struct.Memory* %call_43c65c, %struct.Memory** %MEMORY

  ; Code: addl 0x6cd470, %ecx	 RIP: 43c65f	 Bytes: 7
  %loadMem_43c65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c65f = call %struct.Memory* @routine_addl_0x6cd470___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c65f)
  store %struct.Memory* %call_43c65f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 43c666	 Bytes: 8
  %loadMem_43c666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c666 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c666)
  store %struct.Memory* %call_43c666, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x28(%rdx)	 RIP: 43c66e	 Bytes: 3
  %loadMem_43c66e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c66e = call %struct.Memory* @routine_movl__ecx__0x28__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c66e)
  store %struct.Memory* %call_43c66e, %struct.Memory** %MEMORY

  ; Code: subl -0x50(%rbp), %eax	 RIP: 43c671	 Bytes: 3
  %loadMem_43c671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c671 = call %struct.Memory* @routine_subl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c671)
  store %struct.Memory* %call_43c671, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 43c674	 Bytes: 4
  %loadMem_43c674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c674 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c674)
  store %struct.Memory* %call_43c674, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rdx)	 RIP: 43c678	 Bytes: 3
  %loadMem_43c678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c678 = call %struct.Memory* @routine_movl__eax__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c678)
  store %struct.Memory* %call_43c678, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c71b	 RIP: 43c67b	 Bytes: 5
  %loadMem_43c67b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c67b = call %struct.Memory* @routine_jmpq_.L_43c71b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c67b, i64 160, i64 5)
  store %struct.Memory* %call_43c67b, %struct.Memory** %MEMORY

  br label %block_.L_43c71b

  ; Code: .L_43c680:	 RIP: 43c680	 Bytes: 0
block_.L_43c680:

  ; Code: movl 0x6d45e8, %eax	 RIP: 43c680	 Bytes: 7
  %loadMem_43c680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c680 = call %struct.Memory* @routine_movl_0x6d45e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c680)
  store %struct.Memory* %call_43c680, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4c(%rbp), %eax	 RIP: 43c687	 Bytes: 3
  %loadMem_43c687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c687 = call %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c687)
  store %struct.Memory* %call_43c687, %struct.Memory** %MEMORY

  ; Code: jle .L_43c6db	 RIP: 43c68a	 Bytes: 6
  %loadMem_43c68a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c68a = call %struct.Memory* @routine_jle_.L_43c6db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c68a, i8* %BRANCH_TAKEN, i64 81, i64 6, i64 6)
  store %struct.Memory* %call_43c68a, %struct.Memory** %MEMORY

  %loadBr_43c68a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c68a = icmp eq i8 %loadBr_43c68a, 1
  br i1 %cmpBr_43c68a, label %block_.L_43c6db, label %block_43c690

block_43c690:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43c690	 Bytes: 3
  %loadMem_43c690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c690 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c690)
  store %struct.Memory* %call_43c690, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x6d45e8	 RIP: 43c693	 Bytes: 7
  %loadMem_43c693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c693 = call %struct.Memory* @routine_movl__eax__0x6d45e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c693)
  store %struct.Memory* %call_43c693, %struct.Memory** %MEMORY

  ; Code: movl 0x6d45e8, %eax	 RIP: 43c69a	 Bytes: 7
  %loadMem_43c69a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c69a = call %struct.Memory* @routine_movl_0x6d45e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c69a)
  store %struct.Memory* %call_43c69a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c6a1	 Bytes: 4
  %loadMem_43c6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6a1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6a1)
  store %struct.Memory* %call_43c6a1, %struct.Memory** %MEMORY

  ; Code: subl 0x8(%rcx), %eax	 RIP: 43c6a5	 Bytes: 3
  %loadMem_43c6a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6a5 = call %struct.Memory* @routine_subl_0x8__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6a5)
  store %struct.Memory* %call_43c6a5, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x6cd470	 RIP: 43c6a8	 Bytes: 7
  %loadMem_43c6a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6a8 = call %struct.Memory* @routine_movl__eax__0x6cd470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6a8)
  store %struct.Memory* %call_43c6a8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c6af	 Bytes: 8
  %loadMem_43c6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6af = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6af)
  store %struct.Memory* %call_43c6af, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rcx), %eax	 RIP: 43c6b7	 Bytes: 3
  %loadMem_43c6b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6b7 = call %struct.Memory* @routine_movl_0x28__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6b7)
  store %struct.Memory* %call_43c6b7, %struct.Memory** %MEMORY

  ; Code: addl 0x6cd470, %eax	 RIP: 43c6ba	 Bytes: 7
  %loadMem_43c6ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6ba = call %struct.Memory* @routine_addl_0x6cd470___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6ba)
  store %struct.Memory* %call_43c6ba, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c6c1	 Bytes: 8
  %loadMem_43c6c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6c1 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6c1)
  store %struct.Memory* %call_43c6c1, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x28(%rcx)	 RIP: 43c6c9	 Bytes: 3
  %loadMem_43c6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6c9 = call %struct.Memory* @routine_movl__eax__0x28__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6c9)
  store %struct.Memory* %call_43c6c9, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43c6cc	 Bytes: 3
  %loadMem_43c6cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6cc = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6cc)
  store %struct.Memory* %call_43c6cc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c6cf	 Bytes: 4
  %loadMem_43c6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6cf = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6cf)
  store %struct.Memory* %call_43c6cf, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 43c6d3	 Bytes: 3
  %loadMem_43c6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6d3 = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6d3)
  store %struct.Memory* %call_43c6d3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c716	 RIP: 43c6d6	 Bytes: 5
  %loadMem_43c6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6d6 = call %struct.Memory* @routine_jmpq_.L_43c716(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6d6, i64 64, i64 5)
  store %struct.Memory* %call_43c6d6, %struct.Memory** %MEMORY

  br label %block_.L_43c716

  ; Code: .L_43c6db:	 RIP: 43c6db	 Bytes: 0
block_.L_43c6db:

  ; Code: movl 0x6d45e8, %eax	 RIP: 43c6db	 Bytes: 7
  %loadMem_43c6db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6db = call %struct.Memory* @routine_movl_0x6d45e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6db)
  store %struct.Memory* %call_43c6db, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c6e2	 Bytes: 4
  %loadMem_43c6e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6e2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6e2)
  store %struct.Memory* %call_43c6e2, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 43c6e6	 Bytes: 3
  %loadMem_43c6e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6e6 = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6e6)
  store %struct.Memory* %call_43c6e6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c6e9	 Bytes: 4
  %loadMem_43c6e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6e9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6e9)
  store %struct.Memory* %call_43c6e9, %struct.Memory** %MEMORY

  ; Code: movl 0x25c(%rcx), %eax	 RIP: 43c6ed	 Bytes: 6
  %loadMem_43c6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6ed = call %struct.Memory* @routine_movl_0x25c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6ed)
  store %struct.Memory* %call_43c6ed, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c6f3	 Bytes: 4
  %loadMem_43c6f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6f3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6f3)
  store %struct.Memory* %call_43c6f3, %struct.Memory** %MEMORY

  ; Code: subl 0xc(%rcx), %eax	 RIP: 43c6f7	 Bytes: 3
  %loadMem_43c6f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6f7 = call %struct.Memory* @routine_subl_0xc__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6f7)
  store %struct.Memory* %call_43c6f7, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x6cd470	 RIP: 43c6fa	 Bytes: 7
  %loadMem_43c6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c6fa = call %struct.Memory* @routine_movl__eax__0x6cd470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c6fa)
  store %struct.Memory* %call_43c6fa, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c701	 Bytes: 4
  %loadMem_43c701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c701 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c701)
  store %struct.Memory* %call_43c701, %struct.Memory** %MEMORY

  ; Code: movl 0x25c(%rcx), %eax	 RIP: 43c705	 Bytes: 6
  %loadMem_43c705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c705 = call %struct.Memory* @routine_movl_0x25c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c705)
  store %struct.Memory* %call_43c705, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c70b	 Bytes: 8
  %loadMem_43c70b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c70b = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c70b)
  store %struct.Memory* %call_43c70b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x28(%rcx)	 RIP: 43c713	 Bytes: 3
  %loadMem_43c713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c713 = call %struct.Memory* @routine_movl__eax__0x28__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c713)
  store %struct.Memory* %call_43c713, %struct.Memory** %MEMORY

  ; Code: .L_43c716:	 RIP: 43c716	 Bytes: 0
  br label %block_.L_43c716
block_.L_43c716:

  ; Code: jmpq .L_43c71b	 RIP: 43c716	 Bytes: 5
  %loadMem_43c716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c716 = call %struct.Memory* @routine_jmpq_.L_43c71b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c716, i64 5, i64 5)
  store %struct.Memory* %call_43c716, %struct.Memory** %MEMORY

  br label %block_.L_43c71b

  ; Code: .L_43c71b:	 RIP: 43c71b	 Bytes: 0
block_.L_43c71b:

  ; Code: movq 0x6cb900, %rax	 RIP: 43c71b	 Bytes: 8
  %loadMem_43c71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c71b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c71b)
  store %struct.Memory* %call_43c71b, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 43c723	 Bytes: 3
  %loadMem_43c723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c723 = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c723)
  store %struct.Memory* %call_43c723, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c726	 Bytes: 4
  %loadMem_43c726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c726 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c726)
  store %struct.Memory* %call_43c726, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xc(%rax)	 RIP: 43c72a	 Bytes: 3
  %loadMem_43c72a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c72a = call %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c72a)
  store %struct.Memory* %call_43c72a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43c72d	 Bytes: 8
  %loadMem_43c72d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c72d = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c72d)
  store %struct.Memory* %call_43c72d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 43c735	 Bytes: 7
  %loadMem_43c735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c735 = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c735)
  store %struct.Memory* %call_43c735, %struct.Memory** %MEMORY

  ; Code: je .L_43c77a	 RIP: 43c73c	 Bytes: 6
  %loadMem_43c73c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c73c = call %struct.Memory* @routine_je_.L_43c77a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c73c, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_43c73c, %struct.Memory** %MEMORY

  %loadBr_43c73c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c73c = icmp eq i8 %loadBr_43c73c, 1
  br i1 %cmpBr_43c73c, label %block_.L_43c77a, label %block_43c742

block_43c742:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c742	 Bytes: 4
  %loadMem_43c742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c742 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c742)
  store %struct.Memory* %call_43c742, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 43c746	 Bytes: 3
  %loadMem_43c746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c746 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c746)
  store %struct.Memory* %call_43c746, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x6cd4e4	 RIP: 43c749	 Bytes: 7
  %loadMem_43c749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c749 = call %struct.Memory* @routine_movl__ecx__0x6cd4e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c749)
  store %struct.Memory* %call_43c749, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x70e8d0	 RIP: 43c750	 Bytes: 7
  %loadMem_43c750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c750 = call %struct.Memory* @routine_movl__ecx__0x70e8d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c750)
  store %struct.Memory* %call_43c750, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c757	 Bytes: 4
  %loadMem_43c757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c757 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c757)
  store %struct.Memory* %call_43c757, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 43c75b	 Bytes: 3
  %loadMem_43c75b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c75b = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c75b)
  store %struct.Memory* %call_43c75b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x724740	 RIP: 43c75e	 Bytes: 7
  %loadMem_43c75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c75e = call %struct.Memory* @routine_movl__ecx__0x724740(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c75e)
  store %struct.Memory* %call_43c75e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x7242f0	 RIP: 43c765	 Bytes: 7
  %loadMem_43c765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c765 = call %struct.Memory* @routine_movl__ecx__0x7242f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c765)
  store %struct.Memory* %call_43c765, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c76c	 Bytes: 4
  %loadMem_43c76c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c76c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c76c)
  store %struct.Memory* %call_43c76c, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 43c770	 Bytes: 3
  %loadMem_43c770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c770 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c770)
  store %struct.Memory* %call_43c770, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x6cd4e4	 RIP: 43c773	 Bytes: 7
  %loadMem_43c773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c773 = call %struct.Memory* @routine_movl__ecx__0x6cd4e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c773)
  store %struct.Memory* %call_43c773, %struct.Memory** %MEMORY

  ; Code: .L_43c77a:	 RIP: 43c77a	 Bytes: 0
  br label %block_.L_43c77a
block_.L_43c77a:

  ; Code: movl 0x6cd470, %eax	 RIP: 43c77a	 Bytes: 7
  %loadMem_43c77a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c77a = call %struct.Memory* @routine_movl_0x6cd470___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c77a)
  store %struct.Memory* %call_43c77a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 43c781	 Bytes: 4
  %loadMem_43c781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c781 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c781)
  store %struct.Memory* %call_43c781, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x260(%rcx)	 RIP: 43c785	 Bytes: 6
  %loadMem_43c785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c785 = call %struct.Memory* @routine_movl__eax__0x260__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c785)
  store %struct.Memory* %call_43c785, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c7a1	 RIP: 43c78b	 Bytes: 5
  %loadMem_43c78b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c78b = call %struct.Memory* @routine_jmpq_.L_43c7a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c78b, i64 22, i64 5)
  store %struct.Memory* %call_43c78b, %struct.Memory** %MEMORY

  br label %block_.L_43c7a1

  ; Code: .L_43c790:	 RIP: 43c790	 Bytes: 0
block_.L_43c790:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c790	 Bytes: 4
  %loadMem_43c790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c790 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c790)
  store %struct.Memory* %call_43c790, %struct.Memory** %MEMORY

  ; Code: movl 0x260(%rax), %ecx	 RIP: 43c794	 Bytes: 6
  %loadMem_43c794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c794 = call %struct.Memory* @routine_movl_0x260__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c794)
  store %struct.Memory* %call_43c794, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x6cd470	 RIP: 43c79a	 Bytes: 7
  %loadMem_43c79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c79a = call %struct.Memory* @routine_movl__ecx__0x6cd470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c79a)
  store %struct.Memory* %call_43c79a, %struct.Memory** %MEMORY

  ; Code: .L_43c7a1:	 RIP: 43c7a1	 Bytes: 0
  br label %block_.L_43c7a1
block_.L_43c7a1:

  ; Code: jmpq .L_43c7bb	 RIP: 43c7a1	 Bytes: 5
  %loadMem_43c7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7a1 = call %struct.Memory* @routine_jmpq_.L_43c7bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7a1, i64 26, i64 5)
  store %struct.Memory* %call_43c7a1, %struct.Memory** %MEMORY

  br label %block_.L_43c7bb

  ; Code: .L_43c7a6:	 RIP: 43c7a6	 Bytes: 0
block_.L_43c7a6:

  ; Code: movq 0x6cb900, %rax	 RIP: 43c7a6	 Bytes: 8
  %loadMem_43c7a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7a6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7a6)
  store %struct.Memory* %call_43c7a6, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 43c7ae	 Bytes: 3
  %loadMem_43c7ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7ae = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7ae)
  store %struct.Memory* %call_43c7ae, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c7b1	 Bytes: 4
  %loadMem_43c7b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7b1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7b1)
  store %struct.Memory* %call_43c7b1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x250(%rax)	 RIP: 43c7b5	 Bytes: 6
  %loadMem_43c7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7b5 = call %struct.Memory* @routine_movl__ecx__0x250__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7b5)
  store %struct.Memory* %call_43c7b5, %struct.Memory** %MEMORY

  ; Code: .L_43c7bb:	 RIP: 43c7bb	 Bytes: 0
  br label %block_.L_43c7bb
block_.L_43c7bb:

  ; Code: jmpq .L_43c7c0	 RIP: 43c7bb	 Bytes: 5
  %loadMem_43c7bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7bb = call %struct.Memory* @routine_jmpq_.L_43c7c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7bb, i64 5, i64 5)
  store %struct.Memory* %call_43c7bb, %struct.Memory** %MEMORY

  br label %block_.L_43c7c0

  ; Code: .L_43c7c0:	 RIP: 43c7c0	 Bytes: 0
block_.L_43c7c0:

  ; Code: jmpq .L_43c7c5	 RIP: 43c7c0	 Bytes: 5
  %loadMem_43c7c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7c0 = call %struct.Memory* @routine_jmpq_.L_43c7c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7c0, i64 5, i64 5)
  store %struct.Memory* %call_43c7c0, %struct.Memory** %MEMORY

  br label %block_.L_43c7c5

  ; Code: .L_43c7c5:	 RIP: 43c7c5	 Bytes: 0
block_.L_43c7c5:

  ; Code: jmpq .L_43c7ca	 RIP: 43c7c5	 Bytes: 5
  %loadMem_43c7c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7c5 = call %struct.Memory* @routine_jmpq_.L_43c7ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7c5, i64 5, i64 5)
  store %struct.Memory* %call_43c7c5, %struct.Memory** %MEMORY

  br label %block_.L_43c7ca

  ; Code: .L_43c7ca:	 RIP: 43c7ca	 Bytes: 0
block_.L_43c7ca:

  ; Code: jmpq .L_43c8c7	 RIP: 43c7ca	 Bytes: 5
  %loadMem_43c7ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7ca = call %struct.Memory* @routine_jmpq_.L_43c8c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7ca, i64 253, i64 5)
  store %struct.Memory* %call_43c7ca, %struct.Memory** %MEMORY

  br label %block_.L_43c8c7

  ; Code: .L_43c7cf:	 RIP: 43c7cf	 Bytes: 0
block_.L_43c7cf:

  ; Code: movq 0x6cb900, %rax	 RIP: 43c7cf	 Bytes: 8
  %loadMem_43c7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7cf = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7cf)
  store %struct.Memory* %call_43c7cf, %struct.Memory** %MEMORY

  ; Code: movq 0x3750(%rax), %rax	 RIP: 43c7d7	 Bytes: 7
  %loadMem_43c7d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7d7 = call %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7d7)
  store %struct.Memory* %call_43c7d7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x60(%rbp)	 RIP: 43c7de	 Bytes: 4
  %loadMem_43c7de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7de = call %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7de)
  store %struct.Memory* %call_43c7de, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43c7e2	 Bytes: 8
  %loadMem_43c7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7e2 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7e2)
  store %struct.Memory* %call_43c7e2, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edi	 RIP: 43c7ea	 Bytes: 3
  %loadMem_43c7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7ea = call %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7ea)
  store %struct.Memory* %call_43c7ea, %struct.Memory** %MEMORY

  ; Code: callq .FmoGetPreviousMBNr	 RIP: 43c7ed	 Bytes: 5
  %loadMem1_43c7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43c7ed = call %struct.Memory* @routine_callq_.FmoGetPreviousMBNr(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43c7ed, i64 -93517, i64 5, i64 5)
  store %struct.Memory* %call1_43c7ed, %struct.Memory** %MEMORY

  %loadMem2_43c7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c7ed = load i64, i64* %3
  %call2_43c7ed = call %struct.Memory* @sub_425aa0.FmoGetPreviousMBNr(%struct.State* %0, i64  %loadPC_43c7ed, %struct.Memory* %loadMem2_43c7ed)
  store %struct.Memory* %call2_43c7ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x64(%rbp)	 RIP: 43c7f2	 Bytes: 3
  %loadMem_43c7f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7f2 = call %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7f2)
  store %struct.Memory* %call_43c7f2, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, -0x64(%rbp)	 RIP: 43c7f5	 Bytes: 4
  %loadMem_43c7f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7f5 = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7f5)
  store %struct.Memory* %call_43c7f5, %struct.Memory** %MEMORY

  ; Code: jle .L_43c858	 RIP: 43c7f9	 Bytes: 6
  %loadMem_43c7f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7f9 = call %struct.Memory* @routine_jle_.L_43c858(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7f9, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_43c7f9, %struct.Memory** %MEMORY

  %loadBr_43c7f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c7f9 = icmp eq i8 %loadBr_43c7f9, 1
  br i1 %cmpBr_43c7f9, label %block_.L_43c858, label %block_43c7ff

block_43c7ff:
  ; Code: movq 0x6cb900, %rax	 RIP: 43c7ff	 Bytes: 8
  %loadMem_43c7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c7ff = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c7ff)
  store %struct.Memory* %call_43c7ff, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 43c807	 Bytes: 7
  %loadMem_43c807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c807 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c807)
  store %struct.Memory* %call_43c807, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 43c80e	 Bytes: 4
  %loadMem_43c80e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c80e = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c80e)
  store %struct.Memory* %call_43c80e, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 43c812	 Bytes: 7
  %loadMem_43c812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c812 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c812)
  store %struct.Memory* %call_43c812, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43c819	 Bytes: 3
  %loadMem_43c819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c819 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c819)
  store %struct.Memory* %call_43c819, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 43c81c	 Bytes: 3
  %loadMem_43c81c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c81c = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c81c)
  store %struct.Memory* %call_43c81c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c81f	 Bytes: 4
  %loadMem_43c81f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c81f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c81f)
  store %struct.Memory* %call_43c81f, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x250(%rax)	 RIP: 43c823	 Bytes: 6
  %loadMem_43c823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c823 = call %struct.Memory* @routine_movl__edx__0x250__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c823)
  store %struct.Memory* %call_43c823, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43c829	 Bytes: 8
  %loadMem_43c829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c829 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c829)
  store %struct.Memory* %call_43c829, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 43c831	 Bytes: 7
  %loadMem_43c831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c831 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c831)
  store %struct.Memory* %call_43c831, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 43c838	 Bytes: 4
  %loadMem_43c838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c838 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c838)
  store %struct.Memory* %call_43c838, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 43c83c	 Bytes: 7
  %loadMem_43c83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c83c = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c83c)
  store %struct.Memory* %call_43c83c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43c843	 Bytes: 3
  %loadMem_43c843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c843 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c843)
  store %struct.Memory* %call_43c843, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 43c846	 Bytes: 3
  %loadMem_43c846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c846 = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c846)
  store %struct.Memory* %call_43c846, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c849	 Bytes: 4
  %loadMem_43c849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c849 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c849)
  store %struct.Memory* %call_43c849, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x254(%rax)	 RIP: 43c84d	 Bytes: 6
  %loadMem_43c84d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c84d = call %struct.Memory* @routine_movl__edx__0x254__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c84d)
  store %struct.Memory* %call_43c84d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c877	 RIP: 43c853	 Bytes: 5
  %loadMem_43c853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c853 = call %struct.Memory* @routine_jmpq_.L_43c877(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c853, i64 36, i64 5)
  store %struct.Memory* %call_43c853, %struct.Memory** %MEMORY

  br label %block_.L_43c877

  ; Code: .L_43c858:	 RIP: 43c858	 Bytes: 0
block_.L_43c858:

  ; Code: movq -0x60(%rbp), %rax	 RIP: 43c858	 Bytes: 4
  %loadMem_43c858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c858 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c858)
  store %struct.Memory* %call_43c858, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 43c85c	 Bytes: 3
  %loadMem_43c85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c85c = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c85c)
  store %struct.Memory* %call_43c85c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c85f	 Bytes: 4
  %loadMem_43c85f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c85f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c85f)
  store %struct.Memory* %call_43c85f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x250(%rax)	 RIP: 43c863	 Bytes: 6
  %loadMem_43c863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c863 = call %struct.Memory* @routine_movl__ecx__0x250__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c863)
  store %struct.Memory* %call_43c863, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c869	 Bytes: 4
  %loadMem_43c869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c869 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c869)
  store %struct.Memory* %call_43c869, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x254(%rax)	 RIP: 43c86d	 Bytes: 10
  %loadMem_43c86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c86d = call %struct.Memory* @routine_movl__0x0__0x254__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c86d)
  store %struct.Memory* %call_43c86d, %struct.Memory** %MEMORY

  ; Code: .L_43c877:	 RIP: 43c877	 Bytes: 0
  br label %block_.L_43c877
block_.L_43c877:

  ; Code: movq -0x60(%rbp), %rax	 RIP: 43c877	 Bytes: 4
  %loadMem_43c877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c877 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c877)
  store %struct.Memory* %call_43c877, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 43c87b	 Bytes: 3
  %loadMem_43c87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c87b = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c87b)
  store %struct.Memory* %call_43c87b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c87e	 Bytes: 4
  %loadMem_43c87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c87e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c87e)
  store %struct.Memory* %call_43c87e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xc(%rax)	 RIP: 43c882	 Bytes: 3
  %loadMem_43c882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c882 = call %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c882)
  store %struct.Memory* %call_43c882, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c885	 Bytes: 4
  %loadMem_43c885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c885 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c885)
  store %struct.Memory* %call_43c885, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 43c889	 Bytes: 3
  %loadMem_43c889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c889 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c889)
  store %struct.Memory* %call_43c889, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c88c	 Bytes: 4
  %loadMem_43c88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c88c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c88c)
  store %struct.Memory* %call_43c88c, %struct.Memory** %MEMORY

  ; Code: subl 0x250(%rax), %ecx	 RIP: 43c890	 Bytes: 6
  %loadMem_43c890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c890 = call %struct.Memory* @routine_subl_0x250__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c890)
  store %struct.Memory* %call_43c890, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c896	 Bytes: 4
  %loadMem_43c896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c896 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c896)
  store %struct.Memory* %call_43c896, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rax)	 RIP: 43c89a	 Bytes: 3
  %loadMem_43c89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c89a = call %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c89a)
  store %struct.Memory* %call_43c89a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c89d	 Bytes: 4
  %loadMem_43c89d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c89d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c89d)
  store %struct.Memory* %call_43c89d, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 43c8a1	 Bytes: 3
  %loadMem_43c8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8a1 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8a1)
  store %struct.Memory* %call_43c8a1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x6cd4e4	 RIP: 43c8a4	 Bytes: 7
  %loadMem_43c8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8a4 = call %struct.Memory* @routine_movl__ecx__0x6cd4e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8a4)
  store %struct.Memory* %call_43c8a4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x70e8d0	 RIP: 43c8ab	 Bytes: 7
  %loadMem_43c8ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8ab = call %struct.Memory* @routine_movl__ecx__0x70e8d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8ab)
  store %struct.Memory* %call_43c8ab, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c8b2	 Bytes: 4
  %loadMem_43c8b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8b2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8b2)
  store %struct.Memory* %call_43c8b2, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 43c8b6	 Bytes: 3
  %loadMem_43c8b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8b6 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8b6)
  store %struct.Memory* %call_43c8b6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x724740	 RIP: 43c8b9	 Bytes: 7
  %loadMem_43c8b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8b9 = call %struct.Memory* @routine_movl__ecx__0x724740(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8b9)
  store %struct.Memory* %call_43c8b9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x7242f0	 RIP: 43c8c0	 Bytes: 7
  %loadMem_43c8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8c0 = call %struct.Memory* @routine_movl__ecx__0x7242f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8c0)
  store %struct.Memory* %call_43c8c0, %struct.Memory** %MEMORY

  ; Code: .L_43c8c7:	 RIP: 43c8c7	 Bytes: 0
  br label %block_.L_43c8c7
block_.L_43c8c7:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c8c7	 Bytes: 4
  %loadMem_43c8c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8c7 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8c7)
  store %struct.Memory* %call_43c8c7, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax)	 RIP: 43c8cb	 Bytes: 6
  %loadMem_43c8cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8cb = call %struct.Memory* @routine_movl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8cb)
  store %struct.Memory* %call_43c8cb, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4690, %rax	 RIP: 43c8d1	 Bytes: 8
  %loadMem_43c8d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8d1 = call %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8d1)
  store %struct.Memory* %call_43c8d1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xdc(%rax)	 RIP: 43c8d9	 Bytes: 7
  %loadMem_43c8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8d9 = call %struct.Memory* @routine_cmpl__0x0__0xdc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8d9)
  store %struct.Memory* %call_43c8d9, %struct.Memory** %MEMORY

  ; Code: je .L_43c933	 RIP: 43c8e0	 Bytes: 6
  %loadMem_43c8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8e0 = call %struct.Memory* @routine_je_.L_43c933(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8e0, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_43c8e0, %struct.Memory** %MEMORY

  %loadBr_43c8e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c8e0 = icmp eq i8 %loadBr_43c8e0, 1
  br i1 %cmpBr_43c8e0, label %block_.L_43c933, label %block_43c8e6

block_43c8e6:
  ; Code: movq 0x6cb900, %rax	 RIP: 43c8e6	 Bytes: 8
  %loadMem_43c8e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8e6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8e6)
  store %struct.Memory* %call_43c8e6, %struct.Memory** %MEMORY

  ; Code: movl 0x11930(%rax), %ecx	 RIP: 43c8ee	 Bytes: 6
  %loadMem_43c8ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8ee = call %struct.Memory* @routine_movl_0x11930__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8ee)
  store %struct.Memory* %call_43c8ee, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c8f4	 Bytes: 4
  %loadMem_43c8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8f4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8f4)
  store %struct.Memory* %call_43c8f4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x264(%rax)	 RIP: 43c8f8	 Bytes: 6
  %loadMem_43c8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8f8 = call %struct.Memory* @routine_movl__ecx__0x264__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8f8)
  store %struct.Memory* %call_43c8f8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43c8fe	 Bytes: 8
  %loadMem_43c8fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c8fe = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c8fe)
  store %struct.Memory* %call_43c8fe, %struct.Memory** %MEMORY

  ; Code: movl 0x11934(%rax), %ecx	 RIP: 43c906	 Bytes: 6
  %loadMem_43c906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c906 = call %struct.Memory* @routine_movl_0x11934__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c906)
  store %struct.Memory* %call_43c906, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c90c	 Bytes: 4
  %loadMem_43c90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c90c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c90c)
  store %struct.Memory* %call_43c90c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x268(%rax)	 RIP: 43c910	 Bytes: 6
  %loadMem_43c910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c910 = call %struct.Memory* @routine_movl__ecx__0x268__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c910)
  store %struct.Memory* %call_43c910, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43c916	 Bytes: 8
  %loadMem_43c916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c916 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c916)
  store %struct.Memory* %call_43c916, %struct.Memory** %MEMORY

  ; Code: movl 0x11938(%rax), %ecx	 RIP: 43c91e	 Bytes: 6
  %loadMem_43c91e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c91e = call %struct.Memory* @routine_movl_0x11938__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c91e)
  store %struct.Memory* %call_43c91e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c924	 Bytes: 4
  %loadMem_43c924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c924 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c924)
  store %struct.Memory* %call_43c924, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x26c(%rax)	 RIP: 43c928	 Bytes: 6
  %loadMem_43c928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c928 = call %struct.Memory* @routine_movl__ecx__0x26c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c928)
  store %struct.Memory* %call_43c928, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c95d	 RIP: 43c92e	 Bytes: 5
  %loadMem_43c92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c92e = call %struct.Memory* @routine_jmpq_.L_43c95d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c92e, i64 47, i64 5)
  store %struct.Memory* %call_43c92e, %struct.Memory** %MEMORY

  br label %block_.L_43c95d

  ; Code: .L_43c933:	 RIP: 43c933	 Bytes: 0
block_.L_43c933:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c933	 Bytes: 4
  %loadMem_43c933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c933 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c933)
  store %struct.Memory* %call_43c933, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x264(%rax)	 RIP: 43c937	 Bytes: 10
  %loadMem_43c937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c937 = call %struct.Memory* @routine_movl__0x0__0x264__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c937)
  store %struct.Memory* %call_43c937, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c941	 Bytes: 4
  %loadMem_43c941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c941 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c941)
  store %struct.Memory* %call_43c941, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x268(%rax)	 RIP: 43c945	 Bytes: 10
  %loadMem_43c945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c945 = call %struct.Memory* @routine_movl__0x0__0x268__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c945)
  store %struct.Memory* %call_43c945, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43c94f	 Bytes: 4
  %loadMem_43c94f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c94f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c94f)
  store %struct.Memory* %call_43c94f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x26c(%rax)	 RIP: 43c953	 Bytes: 10
  %loadMem_43c953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c953 = call %struct.Memory* @routine_movl__0x0__0x26c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c953)
  store %struct.Memory* %call_43c953, %struct.Memory** %MEMORY

  ; Code: .L_43c95d:	 RIP: 43c95d	 Bytes: 0
  br label %block_.L_43c95d
block_.L_43c95d:

  ; Code: movb $0x0, %al	 RIP: 43c95d	 Bytes: 2
  %loadMem_43c95d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c95d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c95d)
  store %struct.Memory* %call_43c95d, %struct.Memory** %MEMORY

  ; Code: callq .CheckAvailabilityOfNeighbors	 RIP: 43c95f	 Bytes: 5
  %loadMem1_43c95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43c95f = call %struct.Memory* @routine_callq_.CheckAvailabilityOfNeighbors(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43c95f, i64 54561, i64 5, i64 5)
  store %struct.Memory* %call1_43c95f, %struct.Memory** %MEMORY

  %loadMem2_43c95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c95f = load i64, i64* %3
  %call2_43c95f = call %struct.Memory* @sub_449e80.CheckAvailabilityOfNeighbors(%struct.State* %0, i64  %loadPC_43c95f, %struct.Memory* %loadMem2_43c95f)
  store %struct.Memory* %call2_43c95f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 43c964	 Bytes: 8
  %loadMem_43c964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c964 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c964)
  store %struct.Memory* %call_43c964, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x934(%rcx)	 RIP: 43c96c	 Bytes: 7
  %loadMem_43c96c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c96c = call %struct.Memory* @routine_cmpl__0x1__0x934__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c96c)
  store %struct.Memory* %call_43c96c, %struct.Memory** %MEMORY

  ; Code: jne .L_43c980	 RIP: 43c973	 Bytes: 6
  %loadMem_43c973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c973 = call %struct.Memory* @routine_jne_.L_43c980(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c973, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_43c973, %struct.Memory** %MEMORY

  %loadBr_43c973 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c973 = icmp eq i8 %loadBr_43c973, 1
  br i1 %cmpBr_43c973, label %block_.L_43c980, label %block_43c979

block_43c979:
  ; Code: movb $0x0, %al	 RIP: 43c979	 Bytes: 2
  %loadMem_43c979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c979 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c979)
  store %struct.Memory* %call_43c979, %struct.Memory** %MEMORY

  ; Code: callq .CheckAvailabilityOfNeighborsCABAC	 RIP: 43c97b	 Bytes: 5
  %loadMem1_43c97b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43c97b = call %struct.Memory* @routine_callq_.CheckAvailabilityOfNeighborsCABAC(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43c97b, i64 -183035, i64 5, i64 5)
  store %struct.Memory* %call1_43c97b, %struct.Memory** %MEMORY

  %loadMem2_43c97b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c97b = load i64, i64* %3
  %call2_43c97b = call %struct.Memory* @sub_40fe80.CheckAvailabilityOfNeighborsCABAC(%struct.State* %0, i64  %loadPC_43c97b, %struct.Memory* %loadMem2_43c97b)
  store %struct.Memory* %call2_43c97b, %struct.Memory** %MEMORY

  ; Code: .L_43c980:	 RIP: 43c980	 Bytes: 0
  br label %block_.L_43c980
block_.L_43c980:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 43c980	 Bytes: 7
  %loadMem_43c980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c980 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c980)
  store %struct.Memory* %call_43c980, %struct.Memory** %MEMORY

  ; Code: .L_43c987:	 RIP: 43c987	 Bytes: 0
  br label %block_.L_43c987
block_.L_43c987:

  ; Code: cmpl $0x2, -0x18(%rbp)	 RIP: 43c987	 Bytes: 4
  %loadMem_43c987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c987 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c987)
  store %struct.Memory* %call_43c987, %struct.Memory** %MEMORY

  ; Code: jge .L_43ca5c	 RIP: 43c98b	 Bytes: 6
  %loadMem_43c98b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c98b = call %struct.Memory* @routine_jge_.L_43ca5c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c98b, i8* %BRANCH_TAKEN, i64 209, i64 6, i64 6)
  store %struct.Memory* %call_43c98b, %struct.Memory** %MEMORY

  %loadBr_43c98b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c98b = icmp eq i8 %loadBr_43c98b, 1
  br i1 %cmpBr_43c98b, label %block_.L_43ca5c, label %block_43c991

block_43c991:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 43c991	 Bytes: 7
  %loadMem_43c991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c991 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c991)
  store %struct.Memory* %call_43c991, %struct.Memory** %MEMORY

  ; Code: .L_43c998:	 RIP: 43c998	 Bytes: 0
  br label %block_.L_43c998
block_.L_43c998:

  ; Code: cmpl $0x4, -0x10(%rbp)	 RIP: 43c998	 Bytes: 4
  %loadMem_43c998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c998 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c998)
  store %struct.Memory* %call_43c998, %struct.Memory** %MEMORY

  ; Code: jge .L_43ca49	 RIP: 43c99c	 Bytes: 6
  %loadMem_43c99c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c99c = call %struct.Memory* @routine_jge_.L_43ca49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c99c, i8* %BRANCH_TAKEN, i64 173, i64 6, i64 6)
  store %struct.Memory* %call_43c99c, %struct.Memory** %MEMORY

  %loadBr_43c99c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c99c = icmp eq i8 %loadBr_43c99c, 1
  br i1 %cmpBr_43c99c, label %block_.L_43ca49, label %block_43c9a2

block_43c9a2:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 43c9a2	 Bytes: 7
  %loadMem_43c9a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9a2 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9a2)
  store %struct.Memory* %call_43c9a2, %struct.Memory** %MEMORY

  ; Code: .L_43c9a9:	 RIP: 43c9a9	 Bytes: 0
  br label %block_.L_43c9a9
block_.L_43c9a9:

  ; Code: cmpl $0x4, -0xc(%rbp)	 RIP: 43c9a9	 Bytes: 4
  %loadMem_43c9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9a9 = call %struct.Memory* @routine_cmpl__0x4__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9a9)
  store %struct.Memory* %call_43c9a9, %struct.Memory** %MEMORY

  ; Code: jge .L_43ca36	 RIP: 43c9ad	 Bytes: 6
  %loadMem_43c9ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9ad = call %struct.Memory* @routine_jge_.L_43ca36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9ad, i8* %BRANCH_TAKEN, i64 137, i64 6, i64 6)
  store %struct.Memory* %call_43c9ad, %struct.Memory** %MEMORY

  %loadBr_43c9ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c9ad = icmp eq i8 %loadBr_43c9ad, 1
  br i1 %cmpBr_43c9ad, label %block_.L_43ca36, label %block_43c9b3

block_43c9b3:
  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 43c9b3	 Bytes: 7
  %loadMem_43c9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9b3 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9b3)
  store %struct.Memory* %call_43c9b3, %struct.Memory** %MEMORY

  ; Code: .L_43c9ba:	 RIP: 43c9ba	 Bytes: 0
  br label %block_.L_43c9ba
block_.L_43c9ba:

  ; Code: cmpl $0x2, -0x14(%rbp)	 RIP: 43c9ba	 Bytes: 4
  %loadMem_43c9ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9ba = call %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9ba)
  store %struct.Memory* %call_43c9ba, %struct.Memory** %MEMORY

  ; Code: jge .L_43ca23	 RIP: 43c9be	 Bytes: 6
  %loadMem_43c9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9be = call %struct.Memory* @routine_jge_.L_43ca23(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9be, i8* %BRANCH_TAKEN, i64 101, i64 6, i64 6)
  store %struct.Memory* %call_43c9be, %struct.Memory** %MEMORY

  %loadBr_43c9be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c9be = icmp eq i8 %loadBr_43c9be, 1
  br i1 %cmpBr_43c9be, label %block_.L_43ca23, label %block_43c9c4

block_43c9c4:
  ; Code: movq 0x70fcf0, %rax	 RIP: 43c9c4	 Bytes: 8
  %loadMem_43c9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9c4 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9c4)
  store %struct.Memory* %call_43c9c4, %struct.Memory** %MEMORY

  ; Code: movq 0x1968(%rax), %rax	 RIP: 43c9cc	 Bytes: 7
  %loadMem_43c9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9cc = call %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9cc)
  store %struct.Memory* %call_43c9cc, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 43c9d3	 Bytes: 4
  %loadMem_43c9d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9d3 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9d3)
  store %struct.Memory* %call_43c9d3, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43c9d7	 Bytes: 4
  %loadMem_43c9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9d7 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9d7)
  store %struct.Memory* %call_43c9d7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c9db	 Bytes: 8
  %loadMem_43c9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9db = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9db)
  store %struct.Memory* %call_43c9db, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 43c9e3	 Bytes: 6
  %loadMem_43c9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9e3 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9e3)
  store %struct.Memory* %call_43c9e3, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %edx	 RIP: 43c9e9	 Bytes: 3
  %loadMem_43c9e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9e9 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9e9)
  store %struct.Memory* %call_43c9e9, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 43c9ec	 Bytes: 3
  %loadMem_43c9ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9ec = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9ec)
  store %struct.Memory* %call_43c9ec, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43c9ef	 Bytes: 4
  %loadMem_43c9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9ef = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9ef)
  store %struct.Memory* %call_43c9ef, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43c9f3	 Bytes: 8
  %loadMem_43c9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9f3 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9f3)
  store %struct.Memory* %call_43c9f3, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 43c9fb	 Bytes: 6
  %loadMem_43c9fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43c9fb = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43c9fb)
  store %struct.Memory* %call_43c9fb, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %edx	 RIP: 43ca01	 Bytes: 3
  %loadMem_43ca01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca01 = call %struct.Memory* @routine_addl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca01)
  store %struct.Memory* %call_43ca01, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 43ca04	 Bytes: 3
  %loadMem_43ca04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca04 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca04)
  store %struct.Memory* %call_43ca04, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43ca07	 Bytes: 4
  %loadMem_43ca07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca07 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca07)
  store %struct.Memory* %call_43ca07, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43ca0b	 Bytes: 4
  %loadMem_43ca0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca0b = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca0b)
  store %struct.Memory* %call_43ca0b, %struct.Memory** %MEMORY

  ; Code: movw $0x0, (%rax,%rcx,2)	 RIP: 43ca0f	 Bytes: 6
  %loadMem_43ca0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca0f = call %struct.Memory* @routine_movw__0x0____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca0f)
  store %struct.Memory* %call_43ca0f, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 43ca15	 Bytes: 3
  %loadMem_43ca15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca15 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca15)
  store %struct.Memory* %call_43ca15, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43ca18	 Bytes: 3
  %loadMem_43ca18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca18 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca18)
  store %struct.Memory* %call_43ca18, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 43ca1b	 Bytes: 3
  %loadMem_43ca1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca1b = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca1b)
  store %struct.Memory* %call_43ca1b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c9ba	 RIP: 43ca1e	 Bytes: 5
  %loadMem_43ca1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca1e = call %struct.Memory* @routine_jmpq_.L_43c9ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca1e, i64 -100, i64 5)
  store %struct.Memory* %call_43ca1e, %struct.Memory** %MEMORY

  br label %block_.L_43c9ba

  ; Code: .L_43ca23:	 RIP: 43ca23	 Bytes: 0
block_.L_43ca23:

  ; Code: jmpq .L_43ca28	 RIP: 43ca23	 Bytes: 5
  %loadMem_43ca23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca23 = call %struct.Memory* @routine_jmpq_.L_43ca28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca23, i64 5, i64 5)
  store %struct.Memory* %call_43ca23, %struct.Memory** %MEMORY

  br label %block_.L_43ca28

  ; Code: .L_43ca28:	 RIP: 43ca28	 Bytes: 0
block_.L_43ca28:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 43ca28	 Bytes: 3
  %loadMem_43ca28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca28 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca28)
  store %struct.Memory* %call_43ca28, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43ca2b	 Bytes: 3
  %loadMem_43ca2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca2b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca2b)
  store %struct.Memory* %call_43ca2b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 43ca2e	 Bytes: 3
  %loadMem_43ca2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca2e = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca2e)
  store %struct.Memory* %call_43ca2e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c9a9	 RIP: 43ca31	 Bytes: 5
  %loadMem_43ca31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca31 = call %struct.Memory* @routine_jmpq_.L_43c9a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca31, i64 -136, i64 5)
  store %struct.Memory* %call_43ca31, %struct.Memory** %MEMORY

  br label %block_.L_43c9a9

  ; Code: .L_43ca36:	 RIP: 43ca36	 Bytes: 0
block_.L_43ca36:

  ; Code: jmpq .L_43ca3b	 RIP: 43ca36	 Bytes: 5
  %loadMem_43ca36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca36 = call %struct.Memory* @routine_jmpq_.L_43ca3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca36, i64 5, i64 5)
  store %struct.Memory* %call_43ca36, %struct.Memory** %MEMORY

  br label %block_.L_43ca3b

  ; Code: .L_43ca3b:	 RIP: 43ca3b	 Bytes: 0
block_.L_43ca3b:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 43ca3b	 Bytes: 3
  %loadMem_43ca3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca3b = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca3b)
  store %struct.Memory* %call_43ca3b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43ca3e	 Bytes: 3
  %loadMem_43ca3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca3e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca3e)
  store %struct.Memory* %call_43ca3e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 43ca41	 Bytes: 3
  %loadMem_43ca41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca41 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca41)
  store %struct.Memory* %call_43ca41, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c998	 RIP: 43ca44	 Bytes: 5
  %loadMem_43ca44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca44 = call %struct.Memory* @routine_jmpq_.L_43c998(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca44, i64 -172, i64 5)
  store %struct.Memory* %call_43ca44, %struct.Memory** %MEMORY

  br label %block_.L_43c998

  ; Code: .L_43ca49:	 RIP: 43ca49	 Bytes: 0
block_.L_43ca49:

  ; Code: jmpq .L_43ca4e	 RIP: 43ca49	 Bytes: 5
  %loadMem_43ca49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca49 = call %struct.Memory* @routine_jmpq_.L_43ca4e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca49, i64 5, i64 5)
  store %struct.Memory* %call_43ca49, %struct.Memory** %MEMORY

  br label %block_.L_43ca4e

  ; Code: .L_43ca4e:	 RIP: 43ca4e	 Bytes: 0
block_.L_43ca4e:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 43ca4e	 Bytes: 3
  %loadMem_43ca4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca4e = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca4e)
  store %struct.Memory* %call_43ca4e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43ca51	 Bytes: 3
  %loadMem_43ca51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca51 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca51)
  store %struct.Memory* %call_43ca51, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 43ca54	 Bytes: 3
  %loadMem_43ca54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca54 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca54)
  store %struct.Memory* %call_43ca54, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43c987	 RIP: 43ca57	 Bytes: 5
  %loadMem_43ca57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca57 = call %struct.Memory* @routine_jmpq_.L_43c987(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca57, i64 -208, i64 5)
  store %struct.Memory* %call_43ca57, %struct.Memory** %MEMORY

  br label %block_.L_43c987

  ; Code: .L_43ca5c:	 RIP: 43ca5c	 Bytes: 0
block_.L_43ca5c:

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 43ca5c	 Bytes: 7
  %loadMem_43ca5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca5c = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca5c)
  store %struct.Memory* %call_43ca5c, %struct.Memory** %MEMORY

  ; Code: .L_43ca63:	 RIP: 43ca63	 Bytes: 0
  br label %block_.L_43ca63
block_.L_43ca63:

  ; Code: cmpl $0x4, -0x10(%rbp)	 RIP: 43ca63	 Bytes: 4
  %loadMem_43ca63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca63 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca63)
  store %struct.Memory* %call_43ca63, %struct.Memory** %MEMORY

  ; Code: jge .L_43cb57	 RIP: 43ca67	 Bytes: 6
  %loadMem_43ca67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca67 = call %struct.Memory* @routine_jge_.L_43cb57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca67, i8* %BRANCH_TAKEN, i64 240, i64 6, i64 6)
  store %struct.Memory* %call_43ca67, %struct.Memory** %MEMORY

  %loadBr_43ca67 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ca67 = icmp eq i8 %loadBr_43ca67, 1
  br i1 %cmpBr_43ca67, label %block_.L_43cb57, label %block_43ca6d

block_43ca6d:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 43ca6d	 Bytes: 7
  %loadMem_43ca6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca6d = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca6d)
  store %struct.Memory* %call_43ca6d, %struct.Memory** %MEMORY

  ; Code: .L_43ca74:	 RIP: 43ca74	 Bytes: 0
  br label %block_.L_43ca74
block_.L_43ca74:

  ; Code: cmpl $0x4, -0xc(%rbp)	 RIP: 43ca74	 Bytes: 4
  %loadMem_43ca74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca74 = call %struct.Memory* @routine_cmpl__0x4__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca74)
  store %struct.Memory* %call_43ca74, %struct.Memory** %MEMORY

  ; Code: jge .L_43cb44	 RIP: 43ca78	 Bytes: 6
  %loadMem_43ca78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca78 = call %struct.Memory* @routine_jge_.L_43cb44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca78, i8* %BRANCH_TAKEN, i64 204, i64 6, i64 6)
  store %struct.Memory* %call_43ca78, %struct.Memory** %MEMORY

  %loadBr_43ca78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ca78 = icmp eq i8 %loadBr_43ca78, 1
  br i1 %cmpBr_43ca78, label %block_.L_43cb44, label %block_43ca7e

block_43ca7e:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 43ca7e	 Bytes: 7
  %loadMem_43ca7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca7e = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca7e)
  store %struct.Memory* %call_43ca7e, %struct.Memory** %MEMORY

  ; Code: .L_43ca85:	 RIP: 43ca85	 Bytes: 0
  br label %block_.L_43ca85
block_.L_43ca85:

  ; Code: cmpl $0x2, -0x18(%rbp)	 RIP: 43ca85	 Bytes: 4
  %loadMem_43ca85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca85 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca85)
  store %struct.Memory* %call_43ca85, %struct.Memory** %MEMORY

  ; Code: jge .L_43cb31	 RIP: 43ca89	 Bytes: 6
  %loadMem_43ca89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca89 = call %struct.Memory* @routine_jge_.L_43cb31(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca89, i8* %BRANCH_TAKEN, i64 168, i64 6, i64 6)
  store %struct.Memory* %call_43ca89, %struct.Memory** %MEMORY

  %loadBr_43ca89 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ca89 = icmp eq i8 %loadBr_43ca89, 1
  br i1 %cmpBr_43ca89, label %block_.L_43cb31, label %block_43ca8f

block_43ca8f:
  ; Code: movq 0x70fcf0, %rax	 RIP: 43ca8f	 Bytes: 8
  %loadMem_43ca8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca8f = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca8f)
  store %struct.Memory* %call_43ca8f, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rax), %rax	 RIP: 43ca97	 Bytes: 7
  %loadMem_43ca97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca97 = call %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca97)
  store %struct.Memory* %call_43ca97, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 43ca9e	 Bytes: 4
  %loadMem_43ca9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ca9e = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ca9e)
  store %struct.Memory* %call_43ca9e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43caa2	 Bytes: 4
  %loadMem_43caa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43caa2 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43caa2)
  store %struct.Memory* %call_43caa2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43caa6	 Bytes: 8
  %loadMem_43caa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43caa6 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43caa6)
  store %struct.Memory* %call_43caa6, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 43caae	 Bytes: 6
  %loadMem_43caae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43caae = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43caae)
  store %struct.Memory* %call_43caae, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %edx	 RIP: 43cab4	 Bytes: 3
  %loadMem_43cab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cab4 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cab4)
  store %struct.Memory* %call_43cab4, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 43cab7	 Bytes: 3
  %loadMem_43cab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cab7 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cab7)
  store %struct.Memory* %call_43cab7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43caba	 Bytes: 4
  %loadMem_43caba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43caba = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43caba)
  store %struct.Memory* %call_43caba, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43cabe	 Bytes: 8
  %loadMem_43cabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cabe = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cabe)
  store %struct.Memory* %call_43cabe, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 43cac6	 Bytes: 6
  %loadMem_43cac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cac6 = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cac6)
  store %struct.Memory* %call_43cac6, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %edx	 RIP: 43cacc	 Bytes: 3
  %loadMem_43cacc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cacc = call %struct.Memory* @routine_addl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cacc)
  store %struct.Memory* %call_43cacc, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 43cacf	 Bytes: 3
  %loadMem_43cacf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cacf = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cacf)
  store %struct.Memory* %call_43cacf, %struct.Memory** %MEMORY

  ; Code: movw $0xffff, (%rax,%rcx,2)	 RIP: 43cad2	 Bytes: 6
  %loadMem_43cad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cad2 = call %struct.Memory* @routine_movw__0xffff____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cad2)
  store %struct.Memory* %call_43cad2, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 43cad8	 Bytes: 8
  %loadMem_43cad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cad8 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cad8)
  store %struct.Memory* %call_43cad8, %struct.Memory** %MEMORY

  ; Code: movq 0x1958(%rax), %rax	 RIP: 43cae0	 Bytes: 7
  %loadMem_43cae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cae0 = call %struct.Memory* @routine_movq_0x1958__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cae0)
  store %struct.Memory* %call_43cae0, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 43cae7	 Bytes: 4
  %loadMem_43cae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cae7 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cae7)
  store %struct.Memory* %call_43cae7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43caeb	 Bytes: 4
  %loadMem_43caeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43caeb = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43caeb)
  store %struct.Memory* %call_43caeb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43caef	 Bytes: 8
  %loadMem_43caef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43caef = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43caef)
  store %struct.Memory* %call_43caef, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 43caf7	 Bytes: 6
  %loadMem_43caf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43caf7 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43caf7)
  store %struct.Memory* %call_43caf7, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %edx	 RIP: 43cafd	 Bytes: 3
  %loadMem_43cafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cafd = call %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cafd)
  store %struct.Memory* %call_43cafd, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 43cb00	 Bytes: 3
  %loadMem_43cb00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb00 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb00)
  store %struct.Memory* %call_43cb00, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43cb03	 Bytes: 4
  %loadMem_43cb03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb03 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb03)
  store %struct.Memory* %call_43cb03, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43cb07	 Bytes: 8
  %loadMem_43cb07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb07 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb07)
  store %struct.Memory* %call_43cb07, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 43cb0f	 Bytes: 6
  %loadMem_43cb0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb0f = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb0f)
  store %struct.Memory* %call_43cb0f, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %edx	 RIP: 43cb15	 Bytes: 3
  %loadMem_43cb15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb15 = call %struct.Memory* @routine_addl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb15)
  store %struct.Memory* %call_43cb15, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 43cb18	 Bytes: 3
  %loadMem_43cb18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb18 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb18)
  store %struct.Memory* %call_43cb18, %struct.Memory** %MEMORY

  ; Code: movq $0xffffffffffffffff, (%rax,%rcx,8)	 RIP: 43cb1b	 Bytes: 8
  %loadMem_43cb1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb1b = call %struct.Memory* @routine_movq__0xffffffffffffffff____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb1b)
  store %struct.Memory* %call_43cb1b, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 43cb23	 Bytes: 3
  %loadMem_43cb23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb23 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb23)
  store %struct.Memory* %call_43cb23, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43cb26	 Bytes: 3
  %loadMem_43cb26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb26 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb26)
  store %struct.Memory* %call_43cb26, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 43cb29	 Bytes: 3
  %loadMem_43cb29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb29 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb29)
  store %struct.Memory* %call_43cb29, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43ca85	 RIP: 43cb2c	 Bytes: 5
  %loadMem_43cb2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb2c = call %struct.Memory* @routine_jmpq_.L_43ca85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb2c, i64 -167, i64 5)
  store %struct.Memory* %call_43cb2c, %struct.Memory** %MEMORY

  br label %block_.L_43ca85

  ; Code: .L_43cb31:	 RIP: 43cb31	 Bytes: 0
block_.L_43cb31:

  ; Code: jmpq .L_43cb36	 RIP: 43cb31	 Bytes: 5
  %loadMem_43cb31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb31 = call %struct.Memory* @routine_jmpq_.L_43cb36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb31, i64 5, i64 5)
  store %struct.Memory* %call_43cb31, %struct.Memory** %MEMORY

  br label %block_.L_43cb36

  ; Code: .L_43cb36:	 RIP: 43cb36	 Bytes: 0
block_.L_43cb36:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 43cb36	 Bytes: 3
  %loadMem_43cb36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb36 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb36)
  store %struct.Memory* %call_43cb36, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43cb39	 Bytes: 3
  %loadMem_43cb39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb39 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb39)
  store %struct.Memory* %call_43cb39, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 43cb3c	 Bytes: 3
  %loadMem_43cb3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb3c = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb3c)
  store %struct.Memory* %call_43cb3c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43ca74	 RIP: 43cb3f	 Bytes: 5
  %loadMem_43cb3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb3f = call %struct.Memory* @routine_jmpq_.L_43ca74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb3f, i64 -203, i64 5)
  store %struct.Memory* %call_43cb3f, %struct.Memory** %MEMORY

  br label %block_.L_43ca74

  ; Code: .L_43cb44:	 RIP: 43cb44	 Bytes: 0
block_.L_43cb44:

  ; Code: jmpq .L_43cb49	 RIP: 43cb44	 Bytes: 5
  %loadMem_43cb44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb44 = call %struct.Memory* @routine_jmpq_.L_43cb49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb44, i64 5, i64 5)
  store %struct.Memory* %call_43cb44, %struct.Memory** %MEMORY

  br label %block_.L_43cb49

  ; Code: .L_43cb49:	 RIP: 43cb49	 Bytes: 0
block_.L_43cb49:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 43cb49	 Bytes: 3
  %loadMem_43cb49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb49 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb49)
  store %struct.Memory* %call_43cb49, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43cb4c	 Bytes: 3
  %loadMem_43cb4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb4c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb4c)
  store %struct.Memory* %call_43cb4c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 43cb4f	 Bytes: 3
  %loadMem_43cb4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb4f = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb4f)
  store %struct.Memory* %call_43cb4f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43ca63	 RIP: 43cb52	 Bytes: 5
  %loadMem_43cb52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb52 = call %struct.Memory* @routine_jmpq_.L_43ca63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb52, i64 -239, i64 5)
  store %struct.Memory* %call_43cb52, %struct.Memory** %MEMORY

  br label %block_.L_43ca63

  ; Code: .L_43cb57:	 RIP: 43cb57	 Bytes: 0
block_.L_43cb57:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cb57	 Bytes: 4
  %loadMem_43cb57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb57 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb57)
  store %struct.Memory* %call_43cb57, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x48(%rax)	 RIP: 43cb5b	 Bytes: 7
  %loadMem_43cb5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb5b = call %struct.Memory* @routine_movl__0x0__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb5b)
  store %struct.Memory* %call_43cb5b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cb62	 Bytes: 4
  %loadMem_43cb62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb62 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb62)
  store %struct.Memory* %call_43cb62, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x1d0(%rax)	 RIP: 43cb66	 Bytes: 11
  %loadMem_43cb66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb66 = call %struct.Memory* @routine_movq__0x0__0x1d0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb66)
  store %struct.Memory* %call_43cb66, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cb71	 Bytes: 4
  %loadMem_43cb71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb71 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb71)
  store %struct.Memory* %call_43cb71, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1cc(%rax)	 RIP: 43cb75	 Bytes: 10
  %loadMem_43cb75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb75 = call %struct.Memory* @routine_movl__0x0__0x1cc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb75)
  store %struct.Memory* %call_43cb75, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 43cb7f	 Bytes: 7
  %loadMem_43cb7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb7f = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb7f)
  store %struct.Memory* %call_43cb7f, %struct.Memory** %MEMORY

  ; Code: .L_43cb86:	 RIP: 43cb86	 Bytes: 0
  br label %block_.L_43cb86
block_.L_43cb86:

  ; Code: cmpl $0x2, -0x18(%rbp)	 RIP: 43cb86	 Bytes: 4
  %loadMem_43cb86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb86 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb86)
  store %struct.Memory* %call_43cb86, %struct.Memory** %MEMORY

  ; Code: jge .L_43cc3e	 RIP: 43cb8a	 Bytes: 6
  %loadMem_43cb8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb8a = call %struct.Memory* @routine_jge_.L_43cc3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb8a, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_43cb8a, %struct.Memory** %MEMORY

  %loadBr_43cb8a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cb8a = icmp eq i8 %loadBr_43cb8a, 1
  br i1 %cmpBr_43cb8a, label %block_.L_43cc3e, label %block_43cb90

block_43cb90:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 43cb90	 Bytes: 7
  %loadMem_43cb90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb90 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb90)
  store %struct.Memory* %call_43cb90, %struct.Memory** %MEMORY

  ; Code: .L_43cb97:	 RIP: 43cb97	 Bytes: 0
  br label %block_.L_43cb97
block_.L_43cb97:

  ; Code: cmpl $0x4, -0x10(%rbp)	 RIP: 43cb97	 Bytes: 4
  %loadMem_43cb97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb97 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb97)
  store %struct.Memory* %call_43cb97, %struct.Memory** %MEMORY

  ; Code: jge .L_43cc2b	 RIP: 43cb9b	 Bytes: 6
  %loadMem_43cb9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cb9b = call %struct.Memory* @routine_jge_.L_43cc2b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cb9b, i8* %BRANCH_TAKEN, i64 144, i64 6, i64 6)
  store %struct.Memory* %call_43cb9b, %struct.Memory** %MEMORY

  %loadBr_43cb9b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cb9b = icmp eq i8 %loadBr_43cb9b, 1
  br i1 %cmpBr_43cb9b, label %block_.L_43cc2b, label %block_43cba1

block_43cba1:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 43cba1	 Bytes: 7
  %loadMem_43cba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cba1 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cba1)
  store %struct.Memory* %call_43cba1, %struct.Memory** %MEMORY

  ; Code: .L_43cba8:	 RIP: 43cba8	 Bytes: 0
  br label %block_.L_43cba8
block_.L_43cba8:

  ; Code: cmpl $0x4, -0xc(%rbp)	 RIP: 43cba8	 Bytes: 4
  %loadMem_43cba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cba8 = call %struct.Memory* @routine_cmpl__0x4__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cba8)
  store %struct.Memory* %call_43cba8, %struct.Memory** %MEMORY

  ; Code: jge .L_43cc18	 RIP: 43cbac	 Bytes: 6
  %loadMem_43cbac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbac = call %struct.Memory* @routine_jge_.L_43cc18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbac, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_43cbac, %struct.Memory** %MEMORY

  %loadBr_43cbac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cbac = icmp eq i8 %loadBr_43cbac, 1
  br i1 %cmpBr_43cbac, label %block_.L_43cc18, label %block_43cbb2

block_43cbb2:
  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 43cbb2	 Bytes: 7
  %loadMem_43cbb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbb2 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbb2)
  store %struct.Memory* %call_43cbb2, %struct.Memory** %MEMORY

  ; Code: .L_43cbb9:	 RIP: 43cbb9	 Bytes: 0
  br label %block_.L_43cbb9
block_.L_43cbb9:

  ; Code: cmpl $0x2, -0x14(%rbp)	 RIP: 43cbb9	 Bytes: 4
  %loadMem_43cbb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbb9 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbb9)
  store %struct.Memory* %call_43cbb9, %struct.Memory** %MEMORY

  ; Code: jge .L_43cc05	 RIP: 43cbbd	 Bytes: 6
  %loadMem_43cbbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbbd = call %struct.Memory* @routine_jge_.L_43cc05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbbd, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_43cbbd, %struct.Memory** %MEMORY

  %loadBr_43cbbd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cbbd = icmp eq i8 %loadBr_43cbbd, 1
  br i1 %cmpBr_43cbbd, label %block_.L_43cc05, label %block_43cbc3

block_43cbc3:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cbc3	 Bytes: 4
  %loadMem_43cbc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbc3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbc3)
  store %struct.Memory* %call_43cbc3, %struct.Memory** %MEMORY

  ; Code: addq $0x4c, %rax	 RIP: 43cbc7	 Bytes: 4
  %loadMem_43cbc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbc7 = call %struct.Memory* @routine_addq__0x4c___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbc7)
  store %struct.Memory* %call_43cbc7, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 43cbcb	 Bytes: 4
  %loadMem_43cbcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbcb = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbcb)
  store %struct.Memory* %call_43cbcb, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rcx	 RIP: 43cbcf	 Bytes: 4
  %loadMem_43cbcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbcf = call %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbcf)
  store %struct.Memory* %call_43cbcf, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43cbd3	 Bytes: 3
  %loadMem_43cbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbd3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbd3)
  store %struct.Memory* %call_43cbd3, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 43cbd6	 Bytes: 4
  %loadMem_43cbd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbd6 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbd6)
  store %struct.Memory* %call_43cbd6, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rcx	 RIP: 43cbda	 Bytes: 4
  %loadMem_43cbda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbda = call %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbda)
  store %struct.Memory* %call_43cbda, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43cbde	 Bytes: 3
  %loadMem_43cbde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbde = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbde)
  store %struct.Memory* %call_43cbde, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 43cbe1	 Bytes: 4
  %loadMem_43cbe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbe1 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbe1)
  store %struct.Memory* %call_43cbe1, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rcx	 RIP: 43cbe5	 Bytes: 4
  %loadMem_43cbe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbe5 = call %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbe5)
  store %struct.Memory* %call_43cbe5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43cbe9	 Bytes: 3
  %loadMem_43cbe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbe9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbe9)
  store %struct.Memory* %call_43cbe9, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 43cbec	 Bytes: 4
  %loadMem_43cbec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbec = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbec)
  store %struct.Memory* %call_43cbec, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 43cbf0	 Bytes: 7
  %loadMem_43cbf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbf0 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbf0)
  store %struct.Memory* %call_43cbf0, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 43cbf7	 Bytes: 3
  %loadMem_43cbf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbf7 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbf7)
  store %struct.Memory* %call_43cbf7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43cbfa	 Bytes: 3
  %loadMem_43cbfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbfa = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbfa)
  store %struct.Memory* %call_43cbfa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 43cbfd	 Bytes: 3
  %loadMem_43cbfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cbfd = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cbfd)
  store %struct.Memory* %call_43cbfd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43cbb9	 RIP: 43cc00	 Bytes: 5
  %loadMem_43cc00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc00 = call %struct.Memory* @routine_jmpq_.L_43cbb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc00, i64 -71, i64 5)
  store %struct.Memory* %call_43cc00, %struct.Memory** %MEMORY

  br label %block_.L_43cbb9

  ; Code: .L_43cc05:	 RIP: 43cc05	 Bytes: 0
block_.L_43cc05:

  ; Code: jmpq .L_43cc0a	 RIP: 43cc05	 Bytes: 5
  %loadMem_43cc05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc05 = call %struct.Memory* @routine_jmpq_.L_43cc0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc05, i64 5, i64 5)
  store %struct.Memory* %call_43cc05, %struct.Memory** %MEMORY

  br label %block_.L_43cc0a

  ; Code: .L_43cc0a:	 RIP: 43cc0a	 Bytes: 0
block_.L_43cc0a:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 43cc0a	 Bytes: 3
  %loadMem_43cc0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc0a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc0a)
  store %struct.Memory* %call_43cc0a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43cc0d	 Bytes: 3
  %loadMem_43cc0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc0d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc0d)
  store %struct.Memory* %call_43cc0d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 43cc10	 Bytes: 3
  %loadMem_43cc10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc10 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc10)
  store %struct.Memory* %call_43cc10, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43cba8	 RIP: 43cc13	 Bytes: 5
  %loadMem_43cc13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc13 = call %struct.Memory* @routine_jmpq_.L_43cba8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc13, i64 -107, i64 5)
  store %struct.Memory* %call_43cc13, %struct.Memory** %MEMORY

  br label %block_.L_43cba8

  ; Code: .L_43cc18:	 RIP: 43cc18	 Bytes: 0
block_.L_43cc18:

  ; Code: jmpq .L_43cc1d	 RIP: 43cc18	 Bytes: 5
  %loadMem_43cc18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc18 = call %struct.Memory* @routine_jmpq_.L_43cc1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc18, i64 5, i64 5)
  store %struct.Memory* %call_43cc18, %struct.Memory** %MEMORY

  br label %block_.L_43cc1d

  ; Code: .L_43cc1d:	 RIP: 43cc1d	 Bytes: 0
block_.L_43cc1d:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 43cc1d	 Bytes: 3
  %loadMem_43cc1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc1d = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc1d)
  store %struct.Memory* %call_43cc1d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43cc20	 Bytes: 3
  %loadMem_43cc20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc20 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc20)
  store %struct.Memory* %call_43cc20, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 43cc23	 Bytes: 3
  %loadMem_43cc23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc23 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc23)
  store %struct.Memory* %call_43cc23, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43cb97	 RIP: 43cc26	 Bytes: 5
  %loadMem_43cc26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc26 = call %struct.Memory* @routine_jmpq_.L_43cb97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc26, i64 -143, i64 5)
  store %struct.Memory* %call_43cc26, %struct.Memory** %MEMORY

  br label %block_.L_43cb97

  ; Code: .L_43cc2b:	 RIP: 43cc2b	 Bytes: 0
block_.L_43cc2b:

  ; Code: jmpq .L_43cc30	 RIP: 43cc2b	 Bytes: 5
  %loadMem_43cc2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc2b = call %struct.Memory* @routine_jmpq_.L_43cc30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc2b, i64 5, i64 5)
  store %struct.Memory* %call_43cc2b, %struct.Memory** %MEMORY

  br label %block_.L_43cc30

  ; Code: .L_43cc30:	 RIP: 43cc30	 Bytes: 0
block_.L_43cc30:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 43cc30	 Bytes: 3
  %loadMem_43cc30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc30 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc30)
  store %struct.Memory* %call_43cc30, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43cc33	 Bytes: 3
  %loadMem_43cc33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc33 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc33)
  store %struct.Memory* %call_43cc33, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 43cc36	 Bytes: 3
  %loadMem_43cc36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc36 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc36)
  store %struct.Memory* %call_43cc36, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43cb86	 RIP: 43cc39	 Bytes: 5
  %loadMem_43cc39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc39 = call %struct.Memory* @routine_jmpq_.L_43cb86(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc39, i64 -179, i64 5)
  store %struct.Memory* %call_43cc39, %struct.Memory** %MEMORY

  br label %block_.L_43cb86

  ; Code: .L_43cc3e:	 RIP: 43cc3e	 Bytes: 0
block_.L_43cc3e:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cc3e	 Bytes: 4
  %loadMem_43cc3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc3e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc3e)
  store %struct.Memory* %call_43cc3e, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x1f8(%rax)	 RIP: 43cc42	 Bytes: 11
  %loadMem_43cc42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc42 = call %struct.Memory* @routine_movq__0x0__0x1f8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc42)
  store %struct.Memory* %call_43cc42, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cc4d	 Bytes: 4
  %loadMem_43cc4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc4d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc4d)
  store %struct.Memory* %call_43cc4d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x20c(%rax)	 RIP: 43cc51	 Bytes: 10
  %loadMem_43cc51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc51 = call %struct.Memory* @routine_movl__0x0__0x20c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc51)
  store %struct.Memory* %call_43cc51, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 43cc5b	 Bytes: 7
  %loadMem_43cc5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc5b = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc5b)
  store %struct.Memory* %call_43cc5b, %struct.Memory** %MEMORY

  ; Code: .L_43cc62:	 RIP: 43cc62	 Bytes: 0
  br label %block_.L_43cc62
block_.L_43cc62:

  ; Code: cmpl $0x10, -0xc(%rbp)	 RIP: 43cc62	 Bytes: 4
  %loadMem_43cc62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc62 = call %struct.Memory* @routine_cmpl__0x10__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc62)
  store %struct.Memory* %call_43cc62, %struct.Memory** %MEMORY

  ; Code: jge .L_43cc8d	 RIP: 43cc66	 Bytes: 6
  %loadMem_43cc66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc66 = call %struct.Memory* @routine_jge_.L_43cc8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc66, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_43cc66, %struct.Memory** %MEMORY

  %loadBr_43cc66 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cc66 = icmp eq i8 %loadBr_43cc66, 1
  br i1 %cmpBr_43cc66, label %block_.L_43cc8d, label %block_43cc6c

block_43cc6c:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cc6c	 Bytes: 4
  %loadMem_43cc6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc6c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc6c)
  store %struct.Memory* %call_43cc6c, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 43cc70	 Bytes: 4
  %loadMem_43cc70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc70 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc70)
  store %struct.Memory* %call_43cc70, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x14c(%rax,%rcx,4)	 RIP: 43cc74	 Bytes: 11
  %loadMem_43cc74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc74 = call %struct.Memory* @routine_movl__0x2__0x14c__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc74)
  store %struct.Memory* %call_43cc74, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 43cc7f	 Bytes: 3
  %loadMem_43cc7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc7f = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc7f)
  store %struct.Memory* %call_43cc7f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43cc82	 Bytes: 3
  %loadMem_43cc82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc82 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc82)
  store %struct.Memory* %call_43cc82, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 43cc85	 Bytes: 3
  %loadMem_43cc85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc85 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc85)
  store %struct.Memory* %call_43cc85, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43cc62	 RIP: 43cc88	 Bytes: 5
  %loadMem_43cc88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc88 = call %struct.Memory* @routine_jmpq_.L_43cc62(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc88, i64 -38, i64 5)
  store %struct.Memory* %call_43cc88, %struct.Memory** %MEMORY

  br label %block_.L_43cc62

  ; Code: .L_43cc8d:	 RIP: 43cc8d	 Bytes: 0
block_.L_43cc8d:

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 43cc8d	 Bytes: 7
  %loadMem_43cc8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc8d = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc8d)
  store %struct.Memory* %call_43cc8d, %struct.Memory** %MEMORY

  ; Code: .L_43cc94:	 RIP: 43cc94	 Bytes: 0
  br label %block_.L_43cc94
block_.L_43cc94:

  ; Code: cmpl $0x10, -0xc(%rbp)	 RIP: 43cc94	 Bytes: 4
  %loadMem_43cc94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc94 = call %struct.Memory* @routine_cmpl__0x10__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc94)
  store %struct.Memory* %call_43cc94, %struct.Memory** %MEMORY

  ; Code: jge .L_43ccbf	 RIP: 43cc98	 Bytes: 6
  %loadMem_43cc98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc98 = call %struct.Memory* @routine_jge_.L_43ccbf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc98, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_43cc98, %struct.Memory** %MEMORY

  %loadBr_43cc98 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cc98 = icmp eq i8 %loadBr_43cc98, 1
  br i1 %cmpBr_43cc98, label %block_.L_43ccbf, label %block_43cc9e

block_43cc9e:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cc9e	 Bytes: 4
  %loadMem_43cc9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cc9e = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cc9e)
  store %struct.Memory* %call_43cc9e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 43cca2	 Bytes: 4
  %loadMem_43cca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cca2 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cca2)
  store %struct.Memory* %call_43cca2, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x18c(%rax,%rcx,4)	 RIP: 43cca6	 Bytes: 11
  %loadMem_43cca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cca6 = call %struct.Memory* @routine_movl__0x2__0x18c__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cca6)
  store %struct.Memory* %call_43cca6, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 43ccb1	 Bytes: 3
  %loadMem_43ccb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccb1 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccb1)
  store %struct.Memory* %call_43ccb1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43ccb4	 Bytes: 3
  %loadMem_43ccb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccb4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccb4)
  store %struct.Memory* %call_43ccb4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 43ccb7	 Bytes: 3
  %loadMem_43ccb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccb7 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccb7)
  store %struct.Memory* %call_43ccb7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43cc94	 RIP: 43ccba	 Bytes: 5
  %loadMem_43ccba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccba = call %struct.Memory* @routine_jmpq_.L_43cc94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccba, i64 -38, i64 5)
  store %struct.Memory* %call_43ccba, %struct.Memory** %MEMORY

  br label %block_.L_43cc94

  ; Code: .L_43ccbf:	 RIP: 43ccbf	 Bytes: 0
block_.L_43ccbf:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43ccbf	 Bytes: 8
  %loadMem_43ccbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccbf = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccbf)
  store %struct.Memory* %call_43ccbf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xd8(%rax)	 RIP: 43ccc7	 Bytes: 7
  %loadMem_43ccc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccc7 = call %struct.Memory* @routine_cmpl__0x0__0xd8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccc7)
  store %struct.Memory* %call_43ccc7, %struct.Memory** %MEMORY

  ; Code: je .L_43ccf6	 RIP: 43ccce	 Bytes: 6
  %loadMem_43ccce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccce = call %struct.Memory* @routine_je_.L_43ccf6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccce, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_43ccce, %struct.Memory** %MEMORY

  %loadBr_43ccce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ccce = icmp eq i8 %loadBr_43ccce, 1
  br i1 %cmpBr_43ccce, label %block_.L_43ccf6, label %block_43ccd4

block_43ccd4:
  ; Code: movq 0x6cb900, %rax	 RIP: 43ccd4	 Bytes: 8
  %loadMem_43ccd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccd4 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccd4)
  store %struct.Memory* %call_43ccd4, %struct.Memory** %MEMORY

  ; Code: movq 0x11868(%rax), %rax	 RIP: 43ccdc	 Bytes: 7
  %loadMem_43ccdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccdc = call %struct.Memory* @routine_movq_0x11868__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccdc)
  store %struct.Memory* %call_43ccdc, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43cce3	 Bytes: 8
  %loadMem_43cce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cce3 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cce3)
  store %struct.Memory* %call_43cce3, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rcx), %rcx	 RIP: 43cceb	 Bytes: 4
  %loadMem_43cceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cceb = call %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cceb)
  store %struct.Memory* %call_43cceb, %struct.Memory** %MEMORY

  ; Code: movl $0x1, (%rax,%rcx,4)	 RIP: 43ccef	 Bytes: 7
  %loadMem_43ccef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccef = call %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccef)
  store %struct.Memory* %call_43ccef, %struct.Memory** %MEMORY

  ; Code: .L_43ccf6:	 RIP: 43ccf6	 Bytes: 0
  br label %block_.L_43ccf6
block_.L_43ccf6:

  ; Code: movq 0x6cb900, %rax	 RIP: 43ccf6	 Bytes: 8
  %loadMem_43ccf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccf6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccf6)
  store %struct.Memory* %call_43ccf6, %struct.Memory** %MEMORY

  ; Code: movl 0x11930(%rax), %ecx	 RIP: 43ccfe	 Bytes: 6
  %loadMem_43ccfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ccfe = call %struct.Memory* @routine_movl_0x11930__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ccfe)
  store %struct.Memory* %call_43ccfe, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cd04	 Bytes: 4
  %loadMem_43cd04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd04 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd04)
  store %struct.Memory* %call_43cd04, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x200(%rax)	 RIP: 43cd08	 Bytes: 6
  %loadMem_43cd08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd08 = call %struct.Memory* @routine_movl__ecx__0x200__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd08)
  store %struct.Memory* %call_43cd08, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43cd0e	 Bytes: 8
  %loadMem_43cd0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd0e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd0e)
  store %struct.Memory* %call_43cd0e, %struct.Memory** %MEMORY

  ; Code: movl 0x11934(%rax), %ecx	 RIP: 43cd16	 Bytes: 6
  %loadMem_43cd16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd16 = call %struct.Memory* @routine_movl_0x11934__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd16)
  store %struct.Memory* %call_43cd16, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cd1c	 Bytes: 4
  %loadMem_43cd1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd1c = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd1c)
  store %struct.Memory* %call_43cd1c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x204(%rax)	 RIP: 43cd20	 Bytes: 6
  %loadMem_43cd20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd20 = call %struct.Memory* @routine_movl__ecx__0x204__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd20)
  store %struct.Memory* %call_43cd20, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43cd26	 Bytes: 8
  %loadMem_43cd26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd26 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd26)
  store %struct.Memory* %call_43cd26, %struct.Memory** %MEMORY

  ; Code: movl 0x11938(%rax), %ecx	 RIP: 43cd2e	 Bytes: 6
  %loadMem_43cd2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd2e = call %struct.Memory* @routine_movl_0x11938__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd2e)
  store %struct.Memory* %call_43cd2e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cd34	 Bytes: 4
  %loadMem_43cd34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd34 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd34)
  store %struct.Memory* %call_43cd34, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x208(%rax)	 RIP: 43cd38	 Bytes: 6
  %loadMem_43cd38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd38 = call %struct.Memory* @routine_movl__ecx__0x208__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd38)
  store %struct.Memory* %call_43cd38, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43cd3e	 Bytes: 8
  %loadMem_43cd3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd3e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd3e)
  store %struct.Memory* %call_43cd3e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc(%rax)	 RIP: 43cd46	 Bytes: 4
  %loadMem_43cd46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd46 = call %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd46)
  store %struct.Memory* %call_43cd46, %struct.Memory** %MEMORY

  ; Code: jne .L_43cd60	 RIP: 43cd4a	 Bytes: 6
  %loadMem_43cd4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd4a = call %struct.Memory* @routine_jne_.L_43cd60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd4a, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_43cd4a, %struct.Memory** %MEMORY

  %loadBr_43cd4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cd4a = icmp eq i8 %loadBr_43cd4a, 1
  br i1 %cmpBr_43cd4a, label %block_.L_43cd60, label %block_43cd50

block_43cd50:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cd50	 Bytes: 4
  %loadMem_43cd50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd50 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd50)
  store %struct.Memory* %call_43cd50, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x14(%rax)	 RIP: 43cd54	 Bytes: 7
  %loadMem_43cd54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd54 = call %struct.Memory* @routine_movl__0x0__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd54)
  store %struct.Memory* %call_43cd54, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43cdaa	 RIP: 43cd5b	 Bytes: 5
  %loadMem_43cd5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd5b = call %struct.Memory* @routine_jmpq_.L_43cdaa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd5b, i64 79, i64 5)
  store %struct.Memory* %call_43cd5b, %struct.Memory** %MEMORY

  br label %block_.L_43cdaa

  ; Code: .L_43cd60:	 RIP: 43cd60	 Bytes: 0
block_.L_43cd60:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cd60	 Bytes: 4
  %loadMem_43cd60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd60 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd60)
  store %struct.Memory* %call_43cd60, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 43cd64	 Bytes: 3
  %loadMem_43cd64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd64 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd64)
  store %struct.Memory* %call_43cd64, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43cd67	 Bytes: 8
  %loadMem_43cd67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd67 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd67)
  store %struct.Memory* %call_43cd67, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 43cd6f	 Bytes: 7
  %loadMem_43cd6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd6f = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd6f)
  store %struct.Memory* %call_43cd6f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 43cd76	 Bytes: 8
  %loadMem_43cd76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd76 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd76)
  store %struct.Memory* %call_43cd76, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rdx), %esi	 RIP: 43cd7e	 Bytes: 3
  %loadMem_43cd7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd7e = call %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd7e)
  store %struct.Memory* %call_43cd7e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 43cd81	 Bytes: 3
  %loadMem_43cd81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd81 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd81)
  store %struct.Memory* %call_43cd81, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 43cd84	 Bytes: 3
  %loadMem_43cd84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd84 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd84)
  store %struct.Memory* %call_43cd84, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rdx, %rdx	 RIP: 43cd87	 Bytes: 7
  %loadMem_43cd87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd87 = call %struct.Memory* @routine_imulq__0x278___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd87)
  store %struct.Memory* %call_43cd87, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 43cd8e	 Bytes: 3
  %loadMem_43cd8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd8e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd8e)
  store %struct.Memory* %call_43cd8e, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %ecx	 RIP: 43cd91	 Bytes: 3
  %loadMem_43cd91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd91 = call %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd91)
  store %struct.Memory* %call_43cd91, %struct.Memory** %MEMORY

  ; Code: jne .L_43cda5	 RIP: 43cd94	 Bytes: 6
  %loadMem_43cd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd94 = call %struct.Memory* @routine_jne_.L_43cda5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd94, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_43cd94, %struct.Memory** %MEMORY

  %loadBr_43cd94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cd94 = icmp eq i8 %loadBr_43cd94, 1
  br i1 %cmpBr_43cd94, label %block_.L_43cda5, label %block_43cd9a

block_43cd9a:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cd9a	 Bytes: 4
  %loadMem_43cd9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd9a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd9a)
  store %struct.Memory* %call_43cd9a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x14(%rax)	 RIP: 43cd9e	 Bytes: 7
  %loadMem_43cd9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cd9e = call %struct.Memory* @routine_movl__0x0__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cd9e)
  store %struct.Memory* %call_43cd9e, %struct.Memory** %MEMORY

  ; Code: .L_43cda5:	 RIP: 43cda5	 Bytes: 0
  br label %block_.L_43cda5
block_.L_43cda5:

  ; Code: jmpq .L_43cdaa	 RIP: 43cda5	 Bytes: 5
  %loadMem_43cda5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cda5 = call %struct.Memory* @routine_jmpq_.L_43cdaa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cda5, i64 5, i64 5)
  store %struct.Memory* %call_43cda5, %struct.Memory** %MEMORY

  br label %block_.L_43cdaa

  ; Code: .L_43cdaa:	 RIP: 43cdaa	 Bytes: 0
block_.L_43cdaa:

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cdaa	 Bytes: 4
  %loadMem_43cdaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdaa = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdaa)
  store %struct.Memory* %call_43cdaa, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1c(%rax)	 RIP: 43cdae	 Bytes: 7
  %loadMem_43cdae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdae = call %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdae)
  store %struct.Memory* %call_43cdae, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cdb5	 Bytes: 4
  %loadMem_43cdb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdb5 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdb5)
  store %struct.Memory* %call_43cdb5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x28(%rax)	 RIP: 43cdb9	 Bytes: 7
  %loadMem_43cdb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdb9 = call %struct.Memory* @routine_movl__0x0__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdb9)
  store %struct.Memory* %call_43cdb9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cdc0	 Bytes: 4
  %loadMem_43cdc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdc0 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdc0)
  store %struct.Memory* %call_43cdc0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x20(%rax)	 RIP: 43cdc4	 Bytes: 7
  %loadMem_43cdc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdc4 = call %struct.Memory* @routine_movl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdc4)
  store %struct.Memory* %call_43cdc4, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cdcb	 Bytes: 4
  %loadMem_43cdcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdcb = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdcb)
  store %struct.Memory* %call_43cdcb, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x24(%rax)	 RIP: 43cdcf	 Bytes: 7
  %loadMem_43cdcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdcf = call %struct.Memory* @routine_movl__0x0__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdcf)
  store %struct.Memory* %call_43cdcf, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cdd6	 Bytes: 4
  %loadMem_43cdd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdd6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdd6)
  store %struct.Memory* %call_43cdd6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x30(%rax)	 RIP: 43cdda	 Bytes: 7
  %loadMem_43cdda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdda = call %struct.Memory* @routine_movl__0x0__0x30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdda)
  store %struct.Memory* %call_43cdda, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rax	 RIP: 43cde1	 Bytes: 4
  %loadMem_43cde1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cde1 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cde1)
  store %struct.Memory* %call_43cde1, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x2c(%rax)	 RIP: 43cde5	 Bytes: 7
  %loadMem_43cde5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cde5 = call %struct.Memory* @routine_movl__0x0__0x2c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cde5)
  store %struct.Memory* %call_43cde5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43cdec	 Bytes: 8
  %loadMem_43cdec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdec = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdec)
  store %struct.Memory* %call_43cdec, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xcdc(%rax)	 RIP: 43cdf4	 Bytes: 7
  %loadMem_43cdf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdf4 = call %struct.Memory* @routine_cmpl__0x0__0xcdc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdf4)
  store %struct.Memory* %call_43cdf4, %struct.Memory** %MEMORY

  ; Code: jne .L_43ce08	 RIP: 43cdfb	 Bytes: 6
  %loadMem_43cdfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43cdfb = call %struct.Memory* @routine_jne_.L_43ce08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43cdfb, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_43cdfb, %struct.Memory** %MEMORY

  %loadBr_43cdfb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cdfb = icmp eq i8 %loadBr_43cdfb, 1
  br i1 %cmpBr_43cdfb, label %block_.L_43ce08, label %block_43ce01

block_43ce01:
  ; Code: movb $0x0, %al	 RIP: 43ce01	 Bytes: 2
  %loadMem_43ce01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce01 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce01)
  store %struct.Memory* %call_43ce01, %struct.Memory** %MEMORY

  ; Code: callq .ResetFastFullIntegerSearch	 RIP: 43ce03	 Bytes: 5
  %loadMem1_43ce03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43ce03 = call %struct.Memory* @routine_callq_.ResetFastFullIntegerSearch(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43ce03, i64 122317, i64 5, i64 5)
  store %struct.Memory* %call1_43ce03, %struct.Memory** %MEMORY

  %loadMem2_43ce03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43ce03 = load i64, i64* %3
  %call2_43ce03 = call %struct.Memory* @sub_45abd0.ResetFastFullIntegerSearch(%struct.State* %0, i64  %loadPC_43ce03, %struct.Memory* %loadMem2_43ce03)
  store %struct.Memory* %call2_43ce03, %struct.Memory** %MEMORY

  ; Code: .L_43ce08:	 RIP: 43ce08	 Bytes: 0
  br label %block_.L_43ce08
block_.L_43ce08:

  ; Code: addq $0x70, %rsp	 RIP: 43ce08	 Bytes: 4
  %loadMem_43ce08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce08 = call %struct.Memory* @routine_addq__0x70___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce08)
  store %struct.Memory* %call_43ce08, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 43ce0c	 Bytes: 1
  %loadMem_43ce0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce0c = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce0c)
  store %struct.Memory* %call_43ce0c, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 43ce0d	 Bytes: 1
  %loadMem_43ce0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ce0d = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ce0d)
  store %struct.Memory* %call_43ce0d, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_43ce0d
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

define %struct.Memory* @routine_subq__0x70___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 112)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 1)
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

define %struct.Memory* @routine_cmpl__0x2__0xd0__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__al__MINUS0x65__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 101
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_je_.L_43bc8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__0xd0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sete__cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %CL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__cl__MINUS0x65__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 101
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_MINUS0x65__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 101
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_andb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i8, i8* %AL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 2
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 255
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl__al___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %AL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDX
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


define %struct.Memory* @routine_movq_0x3758__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_imulq__0x278___rdi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 632)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x3750__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rsi__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x11bdc__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 72668
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_addl__0x19___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 25)
  ret %struct.Memory* %12
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










define %struct.Memory* @routine_addl__0x1a___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 26)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl__eax__0x214__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 532
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__al___r8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %R8B, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_0x70fcf0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x70fcf0_type* @G_0x70fcf0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x1948__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6472
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movb__r8b____rsi__rdi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RSI = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 11
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %RDI
  %18 = add i64 %17, %16
  %19 = load i8, i8* %R8B
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
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

define %struct.Memory* @routine_callq_.set_MB_parameters(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43be7e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x78__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 120
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

define %struct.Memory* @routine_jne_.L_43be79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_cmpl_0x10__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 16
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

define %struct.Memory* @routine_jge_.L_43be74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_imulq__0x78___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 120)
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




define %struct.Memory* @routine_movl__edx__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movb_0x8__rax____sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movb__sil__0x14__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 20
  %15 = load i8, i8* %SIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_cmpl__0x1__0x934__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2356
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43be61(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 8)
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




define %struct.Memory* @routine_movl__ecx__0x2c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 44
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




define %struct.Memory* @routine_movl__ecx__0x30__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
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




define %struct.Memory* @routine_movl__ecx__0x34__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 52
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_movl__ecx__0x38__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 56
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movq__rax__0x40__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__rax__0x48__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 72
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_0x50__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__0x54__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 84
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x60__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__0x64__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 100
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x58__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__0x5c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 92
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

define %struct.Memory* @routine_jmpq_.L_43be66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43bd54(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43be79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43be7e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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




define %struct.Memory* @routine_movl_0x2c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 44
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




define %struct.Memory* @routine_cmpl__0x0__0xca4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3236
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43c7cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.FmoGetPreviousMBNr(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
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

define %struct.Memory* @routine_jle_.L_43bf2d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__0x250__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 592
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__0x254__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 596
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43bf4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__ecx__0x250__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 592
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__0x0__0x254__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 596
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0xcb0__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 3248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl_0x11ba0__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 72608
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_43bf90(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_43c7ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_je_.L_43bfb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_43bfd6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jmpq_.L_43c7c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_43c7c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x11bb0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43c231(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_43c1c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43c06c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__ecx__0x6cd4e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cd4e4_type* @G_0x6cd4e4 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__ecx__0x70e8d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x70e8d0_type* @G_0x70e8d0 to i64), i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl__ecx__0x724740(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x724740_type* @G_0x724740 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__ecx__0x7242f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7242f0_type* @G_0x7242f0 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_43c1c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_je_.L_43c096(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x11bb4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72628
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43c1a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
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






define %struct.Memory* @routine_cmpl__0x1__0x258__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43c0ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jmpq_.L_43c173(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_movl_0x250__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 592
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
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

define %struct.Memory* @routine_subl_0xc__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__edx__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


















define %struct.Memory* @routine_jmpq_.L_43c1bf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_jmpq_.L_43c22c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jne_.L_43c20a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x6cd4e4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cd4e4_type* @G_0x6cd4e4 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0x724740___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x724740_type* @G_0x724740 to i64))
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




define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43c227(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
















define %struct.Memory* @routine_jmpq_.L_43c2d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jne_.L_43c2b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x11bb8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72632
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43c287(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x70e8d0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x70e8d0_type* @G_0x70e8d0 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x7242f0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x7242f0_type* @G_0x7242f0 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jmpq_.L_43c2ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_jmpq_.L_43c2d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




















define %struct.Memory* @routine_je_.L_43c2ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_43c7a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_43c790(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x11ba8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72616
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_43c551(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x11ba8__rax____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72616
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_idivl_0x11bac__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72620
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
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


define %struct.Memory* @routine_jne_.L_43c551(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x722cb0_type* @G_0x722cb0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl__0x0__0x47c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43c38d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.updateRCModel(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x11b94__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72596
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.updateQuantizationParameter(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__0x11b90__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72592
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43c54c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_43c3f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x0__0x11ba4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72612
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


















define %struct.Memory* @routine_jmpq_.L_43c547(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x1__0xb40__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43c465(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jmpq_.L_43c542(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_je_.L_43c4d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_43c4d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x1__0x11b98__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


















define %struct.Memory* @routine_jmpq_.L_43c53d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_je_.L_43c538(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_43c538(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x11b98__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


























define %struct.Memory* @routine_jmpq_.L_43c551(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jne_.L_43c57c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl__ecx__0x11b90__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72592
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x11b90__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72592
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__0x25c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 604
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x25c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 604
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jle_.L_43c5c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addl_MINUS0x4c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_jmpq_.L_43c5fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_subl_MINUS0x50__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jge_.L_43c5f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_subl_MINUS0x50__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movl_0x8__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x25c__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 604
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_subl_0xc__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__0x6d45e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6d45e8_type* @G_0x6d45e8 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x6d45e8___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x6d45e8_type* @G_0x6d45e8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl_MINUS0x50__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__eax___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43c680(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__ecx__0x6d45e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6d45e8_type* @G_0x6d45e8 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x6d45e8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6d45e8_type* @G_0x6d45e8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl_0x8__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__0x6cd470(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cd470_type* @G_0x6cd470 to i64), i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl_0x28__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_0x6cd470___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 ptrtoint( %G_0x6cd470_type* @G_0x6cd470 to i64))
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_movl__eax__0x8__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43c71b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x6d45e8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6d45e8_type* @G_0x6d45e8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 76
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_43c6db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__0x6d45e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6d45e8_type* @G_0x6d45e8 to i64), i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_subl_0x8__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__0x6cd470(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cd470_type* @G_0x6cd470 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x28__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_0x6cd470___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 ptrtoint( %G_0x6cd470_type* @G_0x6cd470 to i64))
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jmpq_.L_43c716(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_movl_0x25c__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 604
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_subl_0xc__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


























define %struct.Memory* @routine_je_.L_43c77a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_movl_0x6cd470___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cd470_type* @G_0x6cd470 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x260__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 608
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43c7a1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_0x260__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 608
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_43c7bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jmpq_.L_43c7c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jmpq_.L_43c8c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 100
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_43c858(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




























define %struct.Memory* @routine_jmpq_.L_43c877(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


























define %struct.Memory* @routine_subl_0x250__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 592
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_cmpl__0x0__0xdc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 220
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43c933(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x11930__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 71984
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__0x264__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 612
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x11934__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 71988
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__0x268__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 616
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x11938__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 71992
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__0x26c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 620
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43c95d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x0__0x264__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 612
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__0x268__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 616
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__0x26c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 620
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_callq_.CheckAvailabilityOfNeighbors(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x1__0x934__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2356
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43c980(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.CheckAvailabilityOfNeighborsCABAC(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_43ca5c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x4__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_43ca49(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x4__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_43ca36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jge_.L_43ca23(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_addl_MINUS0x10__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2InItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_jmpq_.L_43c9ba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43ca28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_43c9a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43ca3b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43c998(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43ca4e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43c987(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_43cb57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_43cb44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_43cb31(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_43ca85(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43cb36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_43ca74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43cb49(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_43ca63(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x0__0x48__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x0__0x1d0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__0x1cc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 460
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jge_.L_43cc3e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_43cc2b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_43cc18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_43cc05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_addq__0x4c___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 76)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_shlq__0x7___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 7)
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






define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 3)
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








define %struct.Memory* @routine_jmpq_.L_43cbb9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43cc0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_43cba8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43cc1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_43cb97(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_43cc30(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_43cb86(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movq__0x0__0x1f8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 504
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__0x20c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 524
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl__0x10__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_43cc8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x2__0x14c__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %12, 332
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 2)
  ret %struct.Memory* %19
}








define %struct.Memory* @routine_jmpq_.L_43cc62(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_43ccbf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x2__0x18c__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %12, 396
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 2)
  ret %struct.Memory* %19
}








define %struct.Memory* @routine_jmpq_.L_43cc94(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x0__0xd8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 216
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43ccf6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x11868__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71784
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 1)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl__ecx__0x200__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 512
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl__ecx__0x204__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 516
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl__ecx__0x208__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 520
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jne_.L_43cd60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x0__0x14__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_43cdaa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_43cda5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__0x28__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__0x20__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__0x24__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__0x30__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__0x2c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl__0x0__0xcdc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3292
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43ce08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.ResetFastFullIntegerSearch(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addq__0x70___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 112)
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

