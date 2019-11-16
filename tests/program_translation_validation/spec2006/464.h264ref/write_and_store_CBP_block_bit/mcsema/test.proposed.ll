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

declare %struct.Memory* @sub_44b230.getLuma4x4Neighbour(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4019a0.biari_encode_symbol(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @write_and_store_CBP_block_bit(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .write_and_store_CBP_block_bit:	 RIP: 413120	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 413120	 Bytes: 1
  %loadMem_413120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413120 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413120)
  store %struct.Memory* %call_413120, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 413121	 Bytes: 3
  %loadMem_413121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413121 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413121)
  store %struct.Memory* %call_413121, %struct.Memory** %MEMORY

  ; Code: subq $0xe0, %rsp	 RIP: 413124	 Bytes: 7
  %loadMem_413124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413124 = call %struct.Memory* @routine_subq__0xe0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413124)
  store %struct.Memory* %call_413124, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 41312b	 Bytes: 2
  %loadMem_41312b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41312b = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41312b)
  store %struct.Memory* %call_41312b, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 41312d	 Bytes: 4
  %loadMem_41312d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41312d = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41312d)
  store %struct.Memory* %call_41312d, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 413131	 Bytes: 4
  %loadMem_413131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413131 = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413131)
  store %struct.Memory* %call_413131, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x14(%rbp)	 RIP: 413135	 Bytes: 3
  %loadMem_413135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413135 = call %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413135)
  store %struct.Memory* %call_413135, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 413138	 Bytes: 3
  %loadMem_413138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413138 = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413138)
  store %struct.Memory* %call_413138, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x14(%rbp)	 RIP: 41313b	 Bytes: 4
  %loadMem_41313b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41313b = call %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41313b)
  store %struct.Memory* %call_41313b, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x89(%rbp)	 RIP: 41313f	 Bytes: 6
  %loadMem_41313f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41313f = call %struct.Memory* @routine_movb__al__MINUS0x89__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41313f)
  store %struct.Memory* %call_41313f, %struct.Memory** %MEMORY

  ; Code: je .L_41318e	 RIP: 413145	 Bytes: 6
  %loadMem_413145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413145 = call %struct.Memory* @routine_je_.L_41318e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413145, i8* %BRANCH_TAKEN, i64 73, i64 6, i64 6)
  store %struct.Memory* %call_413145, %struct.Memory** %MEMORY

  %loadBr_413145 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413145 = icmp eq i8 %loadBr_413145, 1
  br i1 %cmpBr_413145, label %block_.L_41318e, label %block_41314b

block_41314b:
  ; Code: movb $0x1, %al	 RIP: 41314b	 Bytes: 2
  %loadMem_41314b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41314b = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41314b)
  store %struct.Memory* %call_41314b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x14(%rbp)	 RIP: 41314d	 Bytes: 4
  %loadMem_41314d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41314d = call %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41314d)
  store %struct.Memory* %call_41314d, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x89(%rbp)	 RIP: 413151	 Bytes: 6
  %loadMem_413151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413151 = call %struct.Memory* @routine_movb__al__MINUS0x89__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413151)
  store %struct.Memory* %call_413151, %struct.Memory** %MEMORY

  ; Code: je .L_41318e	 RIP: 413157	 Bytes: 6
  %loadMem_413157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413157 = call %struct.Memory* @routine_je_.L_41318e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413157, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_413157, %struct.Memory** %MEMORY

  %loadBr_413157 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413157 = icmp eq i8 %loadBr_413157, 1
  br i1 %cmpBr_413157, label %block_.L_41318e, label %block_41315d

block_41315d:
  ; Code: movb $0x1, %al	 RIP: 41315d	 Bytes: 2
  %loadMem_41315d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41315d = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41315d)
  store %struct.Memory* %call_41315d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, -0x14(%rbp)	 RIP: 41315f	 Bytes: 4
  %loadMem_41315f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41315f = call %struct.Memory* @routine_cmpl__0x3__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41315f)
  store %struct.Memory* %call_41315f, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x89(%rbp)	 RIP: 413163	 Bytes: 6
  %loadMem_413163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413163 = call %struct.Memory* @routine_movb__al__MINUS0x89__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413163)
  store %struct.Memory* %call_413163, %struct.Memory** %MEMORY

  ; Code: je .L_41318e	 RIP: 413169	 Bytes: 6
  %loadMem_413169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413169 = call %struct.Memory* @routine_je_.L_41318e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413169, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_413169, %struct.Memory** %MEMORY

  %loadBr_413169 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413169 = icmp eq i8 %loadBr_413169, 1
  br i1 %cmpBr_413169, label %block_.L_41318e, label %block_41316f

block_41316f:
  ; Code: movb $0x1, %al	 RIP: 41316f	 Bytes: 2
  %loadMem_41316f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41316f = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41316f)
  store %struct.Memory* %call_41316f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, -0x14(%rbp)	 RIP: 413171	 Bytes: 4
  %loadMem_413171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413171 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413171)
  store %struct.Memory* %call_413171, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x89(%rbp)	 RIP: 413175	 Bytes: 6
  %loadMem_413175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413175 = call %struct.Memory* @routine_movb__al__MINUS0x89__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413175)
  store %struct.Memory* %call_413175, %struct.Memory** %MEMORY

  ; Code: je .L_41318e	 RIP: 41317b	 Bytes: 6
  %loadMem_41317b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41317b = call %struct.Memory* @routine_je_.L_41318e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41317b, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_41317b, %struct.Memory** %MEMORY

  %loadBr_41317b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41317b = icmp eq i8 %loadBr_41317b, 1
  br i1 %cmpBr_41317b, label %block_.L_41318e, label %block_413181

block_413181:
  ; Code: cmpl $0x5, -0x14(%rbp)	 RIP: 413181	 Bytes: 4
  %loadMem_413181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413181 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413181)
  store %struct.Memory* %call_413181, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 413185	 Bytes: 3
  %loadMem_413185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413185 = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413185)
  store %struct.Memory* %call_413185, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x89(%rbp)	 RIP: 413188	 Bytes: 6
  %loadMem_413188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413188 = call %struct.Memory* @routine_movb__al__MINUS0x89__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413188)
  store %struct.Memory* %call_413188, %struct.Memory** %MEMORY

  ; Code: .L_41318e:	 RIP: 41318e	 Bytes: 0
  br label %block_.L_41318e
block_.L_41318e:

  ; Code: movb -0x89(%rbp), %al	 RIP: 41318e	 Bytes: 6
  %loadMem_41318e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41318e = call %struct.Memory* @routine_movb_MINUS0x89__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41318e)
  store %struct.Memory* %call_41318e, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 413194	 Bytes: 2
  %loadMem_413194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413194 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413194)
  store %struct.Memory* %call_413194, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 413196	 Bytes: 2
  %loadMem_413196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413196 = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413196)
  store %struct.Memory* %call_413196, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 413198	 Bytes: 2
  %loadMem_413198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413198 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413198)
  store %struct.Memory* %call_413198, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 41319a	 Bytes: 3
  %loadMem_41319a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41319a = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41319a)
  store %struct.Memory* %call_41319a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 41319d	 Bytes: 3
  %loadMem_41319d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41319d = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41319d)
  store %struct.Memory* %call_41319d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 4131a0	 Bytes: 4
  %loadMem_4131a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131a0 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131a0)
  store %struct.Memory* %call_4131a0, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 4131a4	 Bytes: 3
  %loadMem_4131a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131a4 = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131a4)
  store %struct.Memory* %call_4131a4, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 4131a7	 Bytes: 2
  %loadMem_4131a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131a7 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131a7)
  store %struct.Memory* %call_4131a7, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 4131a9	 Bytes: 3
  %loadMem_4131a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131a9 = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131a9)
  store %struct.Memory* %call_4131a9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 4131ac	 Bytes: 3
  %loadMem_4131ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131ac = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131ac)
  store %struct.Memory* %call_4131ac, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7, -0x14(%rbp)	 RIP: 4131af	 Bytes: 4
  %loadMem_4131af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131af = call %struct.Memory* @routine_cmpl__0x7__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131af)
  store %struct.Memory* %call_4131af, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x8a(%rbp)	 RIP: 4131b3	 Bytes: 6
  %loadMem_4131b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131b3 = call %struct.Memory* @routine_movb__dl__MINUS0x8a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131b3)
  store %struct.Memory* %call_4131b3, %struct.Memory** %MEMORY

  ; Code: jne .L_4131d7	 RIP: 4131b9	 Bytes: 6
  %loadMem_4131b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131b9 = call %struct.Memory* @routine_jne_.L_4131d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131b9, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_4131b9, %struct.Memory** %MEMORY

  %loadBr_4131b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4131b9 = icmp eq i8 %loadBr_4131b9, 1
  br i1 %cmpBr_4131b9, label %block_.L_4131d7, label %block_4131bf

block_4131bf:
  ; Code: movq 0x6cb900, %rax	 RIP: 4131bf	 Bytes: 8
  %loadMem_4131bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131bf = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131bf)
  store %struct.Memory* %call_4131bf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x54(%rax)	 RIP: 4131c7	 Bytes: 4
  %loadMem_4131c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131c7 = call %struct.Memory* @routine_cmpl__0x0__0x54__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131c7)
  store %struct.Memory* %call_4131c7, %struct.Memory** %MEMORY

  ; Code: setne %cl	 RIP: 4131cb	 Bytes: 3
  %loadMem_4131cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131cb = call %struct.Memory* @routine_setne__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131cb)
  store %struct.Memory* %call_4131cb, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %cl	 RIP: 4131ce	 Bytes: 3
  %loadMem_4131ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131ce = call %struct.Memory* @routine_xorb__0xff___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131ce)
  store %struct.Memory* %call_4131ce, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x8a(%rbp)	 RIP: 4131d1	 Bytes: 6
  %loadMem_4131d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131d1 = call %struct.Memory* @routine_movb__cl__MINUS0x8a__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131d1)
  store %struct.Memory* %call_4131d1, %struct.Memory** %MEMORY

  ; Code: .L_4131d7:	 RIP: 4131d7	 Bytes: 0
  br label %block_.L_4131d7
block_.L_4131d7:

  ; Code: movb -0x8a(%rbp), %al	 RIP: 4131d7	 Bytes: 6
  %loadMem_4131d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131d7 = call %struct.Memory* @routine_movb_MINUS0x8a__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131d7)
  store %struct.Memory* %call_4131d7, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 4131dd	 Bytes: 2
  %loadMem_4131dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131dd = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131dd)
  store %struct.Memory* %call_4131dd, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 4131df	 Bytes: 2
  %loadMem_4131df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131df = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131df)
  store %struct.Memory* %call_4131df, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 4131e1	 Bytes: 2
  %loadMem_4131e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131e1 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131e1)
  store %struct.Memory* %call_4131e1, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 4131e3	 Bytes: 3
  %loadMem_4131e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131e3 = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131e3)
  store %struct.Memory* %call_4131e3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 4131e6	 Bytes: 3
  %loadMem_4131e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131e6 = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131e6)
  store %struct.Memory* %call_4131e6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7, -0x14(%rbp)	 RIP: 4131e9	 Bytes: 4
  %loadMem_4131e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131e9 = call %struct.Memory* @routine_cmpl__0x7__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131e9)
  store %struct.Memory* %call_4131e9, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x8b(%rbp)	 RIP: 4131ed	 Bytes: 6
  %loadMem_4131ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131ed = call %struct.Memory* @routine_movb__dl__MINUS0x8b__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131ed)
  store %struct.Memory* %call_4131ed, %struct.Memory** %MEMORY

  ; Code: jne .L_41320e	 RIP: 4131f3	 Bytes: 6
  %loadMem_4131f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131f3 = call %struct.Memory* @routine_jne_.L_41320e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131f3, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4131f3, %struct.Memory** %MEMORY

  %loadBr_4131f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4131f3 = icmp eq i8 %loadBr_4131f3, 1
  br i1 %cmpBr_4131f3, label %block_.L_41320e, label %block_4131f9

block_4131f9:
  ; Code: movq 0x6cb900, %rax	 RIP: 4131f9	 Bytes: 8
  %loadMem_4131f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4131f9 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4131f9)
  store %struct.Memory* %call_4131f9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x54(%rax)	 RIP: 413201	 Bytes: 4
  %loadMem_413201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413201 = call %struct.Memory* @routine_cmpl__0x0__0x54__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413201)
  store %struct.Memory* %call_413201, %struct.Memory** %MEMORY

  ; Code: setne %cl	 RIP: 413205	 Bytes: 3
  %loadMem_413205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413205 = call %struct.Memory* @routine_setne__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413205)
  store %struct.Memory* %call_413205, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x8b(%rbp)	 RIP: 413208	 Bytes: 6
  %loadMem_413208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413208 = call %struct.Memory* @routine_movb__cl__MINUS0x8b__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413208)
  store %struct.Memory* %call_413208, %struct.Memory** %MEMORY

  ; Code: .L_41320e:	 RIP: 41320e	 Bytes: 0
  br label %block_.L_41320e
block_.L_41320e:

  ; Code: movb -0x8b(%rbp), %al	 RIP: 41320e	 Bytes: 6
  %loadMem_41320e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41320e = call %struct.Memory* @routine_movb_MINUS0x8b__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41320e)
  store %struct.Memory* %call_41320e, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %cl	 RIP: 413214	 Bytes: 2
  %loadMem_413214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413214 = call %struct.Memory* @routine_movb__0x1___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413214)
  store %struct.Memory* %call_413214, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 413216	 Bytes: 2
  %loadMem_413216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413216 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413216)
  store %struct.Memory* %call_413216, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %edx	 RIP: 413218	 Bytes: 3
  %loadMem_413218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413218 = call %struct.Memory* @routine_movzbl__al___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413218)
  store %struct.Memory* %call_413218, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x28(%rbp)	 RIP: 41321b	 Bytes: 3
  %loadMem_41321b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41321b = call %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41321b)
  store %struct.Memory* %call_41321b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x6, -0x14(%rbp)	 RIP: 41321e	 Bytes: 4
  %loadMem_41321e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41321e = call %struct.Memory* @routine_cmpl__0x6__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41321e)
  store %struct.Memory* %call_41321e, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x8c(%rbp)	 RIP: 413222	 Bytes: 6
  %loadMem_413222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413222 = call %struct.Memory* @routine_movb__cl__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413222)
  store %struct.Memory* %call_413222, %struct.Memory** %MEMORY

  ; Code: je .L_41324d	 RIP: 413228	 Bytes: 6
  %loadMem_413228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413228 = call %struct.Memory* @routine_je_.L_41324d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413228, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_413228, %struct.Memory** %MEMORY

  %loadBr_413228 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413228 = icmp eq i8 %loadBr_413228, 1
  br i1 %cmpBr_413228, label %block_.L_41324d, label %block_41322e

block_41322e:
  ; Code: movb $0x1, %al	 RIP: 41322e	 Bytes: 2
  %loadMem_41322e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41322e = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41322e)
  store %struct.Memory* %call_41322e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x8, -0x14(%rbp)	 RIP: 413230	 Bytes: 4
  %loadMem_413230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413230 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413230)
  store %struct.Memory* %call_413230, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x8c(%rbp)	 RIP: 413234	 Bytes: 6
  %loadMem_413234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413234 = call %struct.Memory* @routine_movb__al__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413234)
  store %struct.Memory* %call_413234, %struct.Memory** %MEMORY

  ; Code: je .L_41324d	 RIP: 41323a	 Bytes: 6
  %loadMem_41323a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41323a = call %struct.Memory* @routine_je_.L_41324d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41323a, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_41323a, %struct.Memory** %MEMORY

  %loadBr_41323a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41323a = icmp eq i8 %loadBr_41323a, 1
  br i1 %cmpBr_41323a, label %block_.L_41324d, label %block_413240

block_413240:
  ; Code: cmpl $0x9, -0x14(%rbp)	 RIP: 413240	 Bytes: 4
  %loadMem_413240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413240 = call %struct.Memory* @routine_cmpl__0x9__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413240)
  store %struct.Memory* %call_413240, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 413244	 Bytes: 3
  %loadMem_413244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413244 = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413244)
  store %struct.Memory* %call_413244, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x8c(%rbp)	 RIP: 413247	 Bytes: 6
  %loadMem_413247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413247 = call %struct.Memory* @routine_movb__al__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413247)
  store %struct.Memory* %call_413247, %struct.Memory** %MEMORY

  ; Code: .L_41324d:	 RIP: 41324d	 Bytes: 0
  br label %block_.L_41324d
block_.L_41324d:

  ; Code: movb -0x8c(%rbp), %al	 RIP: 41324d	 Bytes: 6
  %loadMem_41324d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41324d = call %struct.Memory* @routine_movb_MINUS0x8c__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41324d)
  store %struct.Memory* %call_41324d, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 413253	 Bytes: 2
  %loadMem_413253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413253 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413253)
  store %struct.Memory* %call_413253, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 413255	 Bytes: 2
  %loadMem_413255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413255 = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413255)
  store %struct.Memory* %call_413255, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 413257	 Bytes: 2
  %loadMem_413257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413257 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413257)
  store %struct.Memory* %call_413257, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 413259	 Bytes: 3
  %loadMem_413259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413259 = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413259)
  store %struct.Memory* %call_413259, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 41325c	 Bytes: 3
  %loadMem_41325c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41325c = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41325c)
  store %struct.Memory* %call_41325c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x2c(%rbp)	 RIP: 41325f	 Bytes: 4
  %loadMem_41325f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41325f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41325f)
  store %struct.Memory* %call_41325f, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x8d(%rbp)	 RIP: 413263	 Bytes: 6
  %loadMem_413263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413263 = call %struct.Memory* @routine_movb__dl__MINUS0x8d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413263)
  store %struct.Memory* %call_413263, %struct.Memory** %MEMORY

  ; Code: je .L_413287	 RIP: 413269	 Bytes: 6
  %loadMem_413269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413269 = call %struct.Memory* @routine_je_.L_413287(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413269, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_413269, %struct.Memory** %MEMORY

  %loadBr_413269 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413269 = icmp eq i8 %loadBr_413269, 1
  br i1 %cmpBr_413269, label %block_.L_413287, label %block_41326f

block_41326f:
  ; Code: movq 0x6cb900, %rax	 RIP: 41326f	 Bytes: 8
  %loadMem_41326f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41326f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41326f)
  store %struct.Memory* %call_41326f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x54(%rax)	 RIP: 413277	 Bytes: 4
  %loadMem_413277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413277 = call %struct.Memory* @routine_cmpl__0x0__0x54__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413277)
  store %struct.Memory* %call_413277, %struct.Memory** %MEMORY

  ; Code: setne %cl	 RIP: 41327b	 Bytes: 3
  %loadMem_41327b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41327b = call %struct.Memory* @routine_setne__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41327b)
  store %struct.Memory* %call_41327b, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %cl	 RIP: 41327e	 Bytes: 3
  %loadMem_41327e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41327e = call %struct.Memory* @routine_xorb__0xff___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41327e)
  store %struct.Memory* %call_41327e, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x8d(%rbp)	 RIP: 413281	 Bytes: 6
  %loadMem_413281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413281 = call %struct.Memory* @routine_movb__cl__MINUS0x8d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413281)
  store %struct.Memory* %call_413281, %struct.Memory** %MEMORY

  ; Code: .L_413287:	 RIP: 413287	 Bytes: 0
  br label %block_.L_413287
block_.L_413287:

  ; Code: movb -0x8d(%rbp), %al	 RIP: 413287	 Bytes: 6
  %loadMem_413287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413287 = call %struct.Memory* @routine_movb_MINUS0x8d__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413287)
  store %struct.Memory* %call_413287, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 41328d	 Bytes: 2
  %loadMem_41328d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41328d = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41328d)
  store %struct.Memory* %call_41328d, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 41328f	 Bytes: 2
  %loadMem_41328f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41328f = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41328f)
  store %struct.Memory* %call_41328f, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 413291	 Bytes: 2
  %loadMem_413291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413291 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413291)
  store %struct.Memory* %call_413291, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 413293	 Bytes: 3
  %loadMem_413293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413293 = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413293)
  store %struct.Memory* %call_413293, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x30(%rbp)	 RIP: 413296	 Bytes: 3
  %loadMem_413296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413296 = call %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413296)
  store %struct.Memory* %call_413296, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x2c(%rbp)	 RIP: 413299	 Bytes: 4
  %loadMem_413299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413299 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413299)
  store %struct.Memory* %call_413299, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x8e(%rbp)	 RIP: 41329d	 Bytes: 6
  %loadMem_41329d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41329d = call %struct.Memory* @routine_movb__dl__MINUS0x8e__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41329d)
  store %struct.Memory* %call_41329d, %struct.Memory** %MEMORY

  ; Code: je .L_4132be	 RIP: 4132a3	 Bytes: 6
  %loadMem_4132a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132a3 = call %struct.Memory* @routine_je_.L_4132be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132a3, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4132a3, %struct.Memory** %MEMORY

  %loadBr_4132a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4132a3 = icmp eq i8 %loadBr_4132a3, 1
  br i1 %cmpBr_4132a3, label %block_.L_4132be, label %block_4132a9

block_4132a9:
  ; Code: movq 0x6cb900, %rax	 RIP: 4132a9	 Bytes: 8
  %loadMem_4132a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132a9 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132a9)
  store %struct.Memory* %call_4132a9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x54(%rax)	 RIP: 4132b1	 Bytes: 4
  %loadMem_4132b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132b1 = call %struct.Memory* @routine_cmpl__0x0__0x54__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132b1)
  store %struct.Memory* %call_4132b1, %struct.Memory** %MEMORY

  ; Code: setne %cl	 RIP: 4132b5	 Bytes: 3
  %loadMem_4132b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132b5 = call %struct.Memory* @routine_setne__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132b5)
  store %struct.Memory* %call_4132b5, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x8e(%rbp)	 RIP: 4132b8	 Bytes: 6
  %loadMem_4132b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132b8 = call %struct.Memory* @routine_movb__cl__MINUS0x8e__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132b8)
  store %struct.Memory* %call_4132b8, %struct.Memory** %MEMORY

  ; Code: .L_4132be:	 RIP: 4132be	 Bytes: 0
  br label %block_.L_4132be
block_.L_4132be:

  ; Code: movb -0x8e(%rbp), %al	 RIP: 4132be	 Bytes: 6
  %loadMem_4132be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132be = call %struct.Memory* @routine_movb_MINUS0x8e__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132be)
  store %struct.Memory* %call_4132be, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 4132c4	 Bytes: 2
  %loadMem_4132c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132c4 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132c4)
  store %struct.Memory* %call_4132c4, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 4132c6	 Bytes: 3
  %loadMem_4132c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132c6 = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132c6)
  store %struct.Memory* %call_4132c6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 4132c9	 Bytes: 3
  %loadMem_4132c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132c9 = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132c9)
  store %struct.Memory* %call_4132c9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 4132cc	 Bytes: 4
  %loadMem_4132cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132cc = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132cc)
  store %struct.Memory* %call_4132cc, %struct.Memory** %MEMORY

  ; Code: jne .L_4132ea	 RIP: 4132d0	 Bytes: 6
  %loadMem_4132d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132d0 = call %struct.Memory* @routine_jne_.L_4132ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132d0, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_4132d0, %struct.Memory** %MEMORY

  %loadBr_4132d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4132d0 = icmp eq i8 %loadBr_4132d0, 1
  br i1 %cmpBr_4132d0, label %block_.L_4132ea, label %block_4132d6

block_4132d6:
  ; Code: cmpl $0x0, -0x24(%rbp)	 RIP: 4132d6	 Bytes: 4
  %loadMem_4132d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132d6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132d6)
  store %struct.Memory* %call_4132d6, %struct.Memory** %MEMORY

  ; Code: jne .L_4132ea	 RIP: 4132da	 Bytes: 6
  %loadMem_4132da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132da = call %struct.Memory* @routine_jne_.L_4132ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132da, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_4132da, %struct.Memory** %MEMORY

  %loadBr_4132da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4132da = icmp eq i8 %loadBr_4132da, 1
  br i1 %cmpBr_4132da, label %block_.L_4132ea, label %block_4132e0

block_4132e0:
  ; Code: cmpl $0x0, -0x28(%rbp)	 RIP: 4132e0	 Bytes: 4
  %loadMem_4132e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132e0 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132e0)
  store %struct.Memory* %call_4132e0, %struct.Memory** %MEMORY

  ; Code: je .L_413300	 RIP: 4132e4	 Bytes: 6
  %loadMem_4132e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132e4 = call %struct.Memory* @routine_je_.L_413300(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132e4, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_4132e4, %struct.Memory** %MEMORY

  %loadBr_4132e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4132e4 = icmp eq i8 %loadBr_4132e4, 1
  br i1 %cmpBr_4132e4, label %block_.L_413300, label %block_.L_4132ea

  ; Code: .L_4132ea:	 RIP: 4132ea	 Bytes: 0
block_.L_4132ea:

  ; Code: movq 0x6cb900, %rax	 RIP: 4132ea	 Bytes: 8
  %loadMem_4132ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132ea = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132ea)
  store %struct.Memory* %call_4132ea, %struct.Memory** %MEMORY

  ; Code: movl 0x4c(%rax), %ecx	 RIP: 4132f2	 Bytes: 3
  %loadMem_4132f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132f2 = call %struct.Memory* @routine_movl_0x4c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132f2)
  store %struct.Memory* %call_4132f2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x94(%rbp)	 RIP: 4132f5	 Bytes: 6
  %loadMem_4132f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132f5 = call %struct.Memory* @routine_movl__ecx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132f5)
  store %struct.Memory* %call_4132f5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41330d	 RIP: 4132fb	 Bytes: 5
  %loadMem_4132fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4132fb = call %struct.Memory* @routine_jmpq_.L_41330d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4132fb, i64 18, i64 5)
  store %struct.Memory* %call_4132fb, %struct.Memory** %MEMORY

  br label %block_.L_41330d

  ; Code: .L_413300:	 RIP: 413300	 Bytes: 0
block_.L_413300:

  ; Code: xorl %eax, %eax	 RIP: 413300	 Bytes: 2
  %loadMem_413300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413300 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413300)
  store %struct.Memory* %call_413300, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x94(%rbp)	 RIP: 413302	 Bytes: 6
  %loadMem_413302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413302 = call %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413302)
  store %struct.Memory* %call_413302, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41330d	 RIP: 413308	 Bytes: 5
  %loadMem_413308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413308 = call %struct.Memory* @routine_jmpq_.L_41330d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413308, i64 5, i64 5)
  store %struct.Memory* %call_413308, %struct.Memory** %MEMORY

  br label %block_.L_41330d

  ; Code: .L_41330d:	 RIP: 41330d	 Bytes: 0
block_.L_41330d:

  ; Code: movl -0x94(%rbp), %eax	 RIP: 41330d	 Bytes: 6
  %loadMem_41330d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41330d = call %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41330d)
  store %struct.Memory* %call_41330d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 413313	 Bytes: 3
  %loadMem_413313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413313 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413313)
  store %struct.Memory* %call_413313, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 413316	 Bytes: 4
  %loadMem_413316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413316 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413316)
  store %struct.Memory* %call_413316, %struct.Memory** %MEMORY

  ; Code: jne .L_413334	 RIP: 41331a	 Bytes: 6
  %loadMem_41331a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41331a = call %struct.Memory* @routine_jne_.L_413334(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41331a, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_41331a, %struct.Memory** %MEMORY

  %loadBr_41331a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41331a = icmp eq i8 %loadBr_41331a, 1
  br i1 %cmpBr_41331a, label %block_.L_413334, label %block_413320

block_413320:
  ; Code: cmpl $0x0, -0x24(%rbp)	 RIP: 413320	 Bytes: 4
  %loadMem_413320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413320 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413320)
  store %struct.Memory* %call_413320, %struct.Memory** %MEMORY

  ; Code: jne .L_413334	 RIP: 413324	 Bytes: 6
  %loadMem_413324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413324 = call %struct.Memory* @routine_jne_.L_413334(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413324, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_413324, %struct.Memory** %MEMORY

  %loadBr_413324 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413324 = icmp eq i8 %loadBr_413324, 1
  br i1 %cmpBr_413324, label %block_.L_413334, label %block_41332a

block_41332a:
  ; Code: cmpl $0x0, -0x28(%rbp)	 RIP: 41332a	 Bytes: 4
  %loadMem_41332a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41332a = call %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41332a)
  store %struct.Memory* %call_41332a, %struct.Memory** %MEMORY

  ; Code: je .L_41334a	 RIP: 41332e	 Bytes: 6
  %loadMem_41332e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41332e = call %struct.Memory* @routine_je_.L_41334a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41332e, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_41332e, %struct.Memory** %MEMORY

  %loadBr_41332e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41332e = icmp eq i8 %loadBr_41332e, 1
  br i1 %cmpBr_41332e, label %block_.L_41334a, label %block_.L_413334

  ; Code: .L_413334:	 RIP: 413334	 Bytes: 0
block_.L_413334:

  ; Code: movq 0x6cb900, %rax	 RIP: 413334	 Bytes: 8
  %loadMem_413334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413334 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413334)
  store %struct.Memory* %call_413334, %struct.Memory** %MEMORY

  ; Code: movl 0x48(%rax), %ecx	 RIP: 41333c	 Bytes: 3
  %loadMem_41333c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41333c = call %struct.Memory* @routine_movl_0x48__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41333c)
  store %struct.Memory* %call_41333c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x98(%rbp)	 RIP: 41333f	 Bytes: 6
  %loadMem_41333f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41333f = call %struct.Memory* @routine_movl__ecx__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41333f)
  store %struct.Memory* %call_41333f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413357	 RIP: 413345	 Bytes: 5
  %loadMem_413345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413345 = call %struct.Memory* @routine_jmpq_.L_413357(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413345, i64 18, i64 5)
  store %struct.Memory* %call_413345, %struct.Memory** %MEMORY

  br label %block_.L_413357

  ; Code: .L_41334a:	 RIP: 41334a	 Bytes: 0
block_.L_41334a:

  ; Code: xorl %eax, %eax	 RIP: 41334a	 Bytes: 2
  %loadMem_41334a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41334a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41334a)
  store %struct.Memory* %call_41334a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x98(%rbp)	 RIP: 41334c	 Bytes: 6
  %loadMem_41334c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41334c = call %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41334c)
  store %struct.Memory* %call_41334c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413357	 RIP: 413352	 Bytes: 5
  %loadMem_413352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413352 = call %struct.Memory* @routine_jmpq_.L_413357(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413352, i64 5, i64 5)
  store %struct.Memory* %call_413352, %struct.Memory** %MEMORY

  br label %block_.L_413357

  ; Code: .L_413357:	 RIP: 413357	 Bytes: 0
block_.L_413357:

  ; Code: movl -0x98(%rbp), %eax	 RIP: 413357	 Bytes: 6
  %loadMem_413357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413357 = call %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413357)
  store %struct.Memory* %call_413357, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 41335d	 Bytes: 3
  %loadMem_41335d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41335d = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41335d)
  store %struct.Memory* %call_41335d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 413360	 Bytes: 4
  %loadMem_413360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413360 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413360)
  store %struct.Memory* %call_413360, %struct.Memory** %MEMORY

  ; Code: je .L_413377	 RIP: 413364	 Bytes: 6
  %loadMem_413364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413364 = call %struct.Memory* @routine_je_.L_413377(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413364, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_413364, %struct.Memory** %MEMORY

  %loadBr_413364 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413364 = icmp eq i8 %loadBr_413364, 1
  br i1 %cmpBr_413364, label %block_.L_413377, label %block_41336a

block_41336a:
  ; Code: xorl %eax, %eax	 RIP: 41336a	 Bytes: 2
  %loadMem_41336a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41336a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41336a)
  store %struct.Memory* %call_41336a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x9c(%rbp)	 RIP: 41336c	 Bytes: 6
  %loadMem_41336c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41336c = call %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41336c)
  store %struct.Memory* %call_41336c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413400	 RIP: 413372	 Bytes: 5
  %loadMem_413372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413372 = call %struct.Memory* @routine_jmpq_.L_413400(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413372, i64 142, i64 5)
  store %struct.Memory* %call_413372, %struct.Memory** %MEMORY

  br label %block_.L_413400

  ; Code: .L_413377:	 RIP: 413377	 Bytes: 0
block_.L_413377:

  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 413377	 Bytes: 4
  %loadMem_413377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413377 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413377)
  store %struct.Memory* %call_413377, %struct.Memory** %MEMORY

  ; Code: je .L_413391	 RIP: 41337b	 Bytes: 6
  %loadMem_41337b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41337b = call %struct.Memory* @routine_je_.L_413391(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41337b, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41337b, %struct.Memory** %MEMORY

  %loadBr_41337b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41337b = icmp eq i8 %loadBr_41337b, 1
  br i1 %cmpBr_41337b, label %block_.L_413391, label %block_413381

block_413381:
  ; Code: movl $0x1, %eax	 RIP: 413381	 Bytes: 5
  %loadMem_413381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413381 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413381)
  store %struct.Memory* %call_413381, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa0(%rbp)	 RIP: 413386	 Bytes: 6
  %loadMem_413386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413386 = call %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413386)
  store %struct.Memory* %call_413386, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4133f4	 RIP: 41338c	 Bytes: 5
  %loadMem_41338c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41338c = call %struct.Memory* @routine_jmpq_.L_4133f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41338c, i64 104, i64 5)
  store %struct.Memory* %call_41338c, %struct.Memory** %MEMORY

  br label %block_.L_4133f4

  ; Code: .L_413391:	 RIP: 413391	 Bytes: 0
block_.L_413391:

  ; Code: cmpl $0x0, -0x30(%rbp)	 RIP: 413391	 Bytes: 4
  %loadMem_413391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413391 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413391)
  store %struct.Memory* %call_413391, %struct.Memory** %MEMORY

  ; Code: je .L_4133ab	 RIP: 413395	 Bytes: 6
  %loadMem_413395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413395 = call %struct.Memory* @routine_je_.L_4133ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413395, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_413395, %struct.Memory** %MEMORY

  %loadBr_413395 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413395 = icmp eq i8 %loadBr_413395, 1
  br i1 %cmpBr_413395, label %block_.L_4133ab, label %block_41339b

block_41339b:
  ; Code: movl $0x11, %eax	 RIP: 41339b	 Bytes: 5
  %loadMem_41339b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41339b = call %struct.Memory* @routine_movl__0x11___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41339b)
  store %struct.Memory* %call_41339b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa4(%rbp)	 RIP: 4133a0	 Bytes: 6
  %loadMem_4133a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133a0 = call %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133a0)
  store %struct.Memory* %call_4133a0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4133e8	 RIP: 4133a6	 Bytes: 5
  %loadMem_4133a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133a6 = call %struct.Memory* @routine_jmpq_.L_4133e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133a6, i64 66, i64 5)
  store %struct.Memory* %call_4133a6, %struct.Memory** %MEMORY

  br label %block_.L_4133e8

  ; Code: .L_4133ab:	 RIP: 4133ab	 Bytes: 0
block_.L_4133ab:

  ; Code: cmpl $0x0, -0x34(%rbp)	 RIP: 4133ab	 Bytes: 4
  %loadMem_4133ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133ab = call %struct.Memory* @routine_cmpl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133ab)
  store %struct.Memory* %call_4133ab, %struct.Memory** %MEMORY

  ; Code: je .L_4133c5	 RIP: 4133af	 Bytes: 6
  %loadMem_4133af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133af = call %struct.Memory* @routine_je_.L_4133c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133af, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4133af, %struct.Memory** %MEMORY

  %loadBr_4133af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4133af = icmp eq i8 %loadBr_4133af, 1
  br i1 %cmpBr_4133af, label %block_.L_4133c5, label %block_4133b5

block_4133b5:
  ; Code: movl $0x12, %eax	 RIP: 4133b5	 Bytes: 5
  %loadMem_4133b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133b5 = call %struct.Memory* @routine_movl__0x12___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133b5)
  store %struct.Memory* %call_4133b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa8(%rbp)	 RIP: 4133ba	 Bytes: 6
  %loadMem_4133ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133ba = call %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133ba)
  store %struct.Memory* %call_4133ba, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4133dc	 RIP: 4133c0	 Bytes: 5
  %loadMem_4133c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133c0 = call %struct.Memory* @routine_jmpq_.L_4133dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133c0, i64 28, i64 5)
  store %struct.Memory* %call_4133c0, %struct.Memory** %MEMORY

  br label %block_.L_4133dc

  ; Code: .L_4133c5:	 RIP: 4133c5	 Bytes: 0
block_.L_4133c5:

  ; Code: movl $0x17, %eax	 RIP: 4133c5	 Bytes: 5
  %loadMem_4133c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133c5 = call %struct.Memory* @routine_movl__0x17___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133c5)
  store %struct.Memory* %call_4133c5, %struct.Memory** %MEMORY

  ; Code: movl $0x13, %ecx	 RIP: 4133ca	 Bytes: 5
  %loadMem_4133ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133ca = call %struct.Memory* @routine_movl__0x13___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133ca)
  store %struct.Memory* %call_4133ca, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x24(%rbp)	 RIP: 4133cf	 Bytes: 4
  %loadMem_4133cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133cf = call %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133cf)
  store %struct.Memory* %call_4133cf, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 4133d3	 Bytes: 3
  %loadMem_4133d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133d3 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133d3)
  store %struct.Memory* %call_4133d3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa8(%rbp)	 RIP: 4133d6	 Bytes: 6
  %loadMem_4133d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133d6 = call %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133d6)
  store %struct.Memory* %call_4133d6, %struct.Memory** %MEMORY

  ; Code: .L_4133dc:	 RIP: 4133dc	 Bytes: 0
  br label %block_.L_4133dc
block_.L_4133dc:

  ; Code: movl -0xa8(%rbp), %eax	 RIP: 4133dc	 Bytes: 6
  %loadMem_4133dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133dc = call %struct.Memory* @routine_movl_MINUS0xa8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133dc)
  store %struct.Memory* %call_4133dc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa4(%rbp)	 RIP: 4133e2	 Bytes: 6
  %loadMem_4133e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133e2 = call %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133e2)
  store %struct.Memory* %call_4133e2, %struct.Memory** %MEMORY

  ; Code: .L_4133e8:	 RIP: 4133e8	 Bytes: 0
  br label %block_.L_4133e8
block_.L_4133e8:

  ; Code: movl -0xa4(%rbp), %eax	 RIP: 4133e8	 Bytes: 6
  %loadMem_4133e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133e8 = call %struct.Memory* @routine_movl_MINUS0xa4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133e8)
  store %struct.Memory* %call_4133e8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa0(%rbp)	 RIP: 4133ee	 Bytes: 6
  %loadMem_4133ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133ee = call %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133ee)
  store %struct.Memory* %call_4133ee, %struct.Memory** %MEMORY

  ; Code: .L_4133f4:	 RIP: 4133f4	 Bytes: 0
  br label %block_.L_4133f4
block_.L_4133f4:

  ; Code: movl -0xa0(%rbp), %eax	 RIP: 4133f4	 Bytes: 6
  %loadMem_4133f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133f4 = call %struct.Memory* @routine_movl_MINUS0xa0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133f4)
  store %struct.Memory* %call_4133f4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x9c(%rbp)	 RIP: 4133fa	 Bytes: 6
  %loadMem_4133fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4133fa = call %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4133fa)
  store %struct.Memory* %call_4133fa, %struct.Memory** %MEMORY

  ; Code: .L_413400:	 RIP: 413400	 Bytes: 0
  br label %block_.L_413400
block_.L_413400:

  ; Code: movl -0x9c(%rbp), %eax	 RIP: 413400	 Bytes: 6
  %loadMem_413400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413400 = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413400)
  store %struct.Memory* %call_413400, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 413406	 Bytes: 2
  %loadMem_413406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413406 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413406)
  store %struct.Memory* %call_413406, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edx	 RIP: 413408	 Bytes: 5
  %loadMem_413408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413408 = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413408)
  store %struct.Memory* %call_413408, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 41340d	 Bytes: 3
  %loadMem_41340d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41340d = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41340d)
  store %struct.Memory* %call_41340d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 413410	 Bytes: 8
  %loadMem_413410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413410 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413410)
  store %struct.Memory* %call_413410, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x50(%rsi)	 RIP: 413418	 Bytes: 4
  %loadMem_413418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413418 = call %struct.Memory* @routine_cmpl__0x0__0x50__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413418)
  store %struct.Memory* %call_413418, %struct.Memory** %MEMORY

  ; Code: cmovnel %edx, %ecx	 RIP: 41341c	 Bytes: 3
  %loadMem_41341c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41341c = call %struct.Memory* @routine_cmovnel__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41341c)
  store %struct.Memory* %call_41341c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x44(%rbp)	 RIP: 41341f	 Bytes: 3
  %loadMem_41341f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41341f = call %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41341f)
  store %struct.Memory* %call_41341f, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %eax	 RIP: 413422	 Bytes: 3
  %loadMem_413422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413422 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413422)
  store %struct.Memory* %call_413422, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 413425	 Bytes: 3
  %loadMem_413425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413425 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413425)
  store %struct.Memory* %call_413425, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %eax	 RIP: 413428	 Bytes: 3
  %loadMem_413428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413428 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413428)
  store %struct.Memory* %call_413428, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 41342b	 Bytes: 3
  %loadMem_41342b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41342b = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41342b)
  store %struct.Memory* %call_41342b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x54(%rbp)	 RIP: 41342e	 Bytes: 7
  %loadMem_41342e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41342e = call %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41342e)
  store %struct.Memory* %call_41342e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x58(%rbp)	 RIP: 413435	 Bytes: 7
  %loadMem_413435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413435 = call %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413435)
  store %struct.Memory* %call_413435, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 41343c	 Bytes: 4
  %loadMem_41343c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41343c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41343c)
  store %struct.Memory* %call_41343c, %struct.Memory** %MEMORY

  ; Code: jne .L_413450	 RIP: 413440	 Bytes: 6
  %loadMem_413440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413440 = call %struct.Memory* @routine_jne_.L_413450(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413440, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_413440, %struct.Memory** %MEMORY

  %loadBr_413440 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413440 = icmp eq i8 %loadBr_413440, 1
  br i1 %cmpBr_413440, label %block_.L_413450, label %block_413446

block_413446:
  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 413446	 Bytes: 4
  %loadMem_413446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413446 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413446)
  store %struct.Memory* %call_413446, %struct.Memory** %MEMORY

  ; Code: je .L_4134da	 RIP: 41344a	 Bytes: 6
  %loadMem_41344a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41344a = call %struct.Memory* @routine_je_.L_4134da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41344a, i8* %BRANCH_TAKEN, i64 144, i64 6, i64 6)
  store %struct.Memory* %call_41344a, %struct.Memory** %MEMORY

  %loadBr_41344a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41344a = icmp eq i8 %loadBr_41344a, 1
  br i1 %cmpBr_41344a, label %block_.L_4134da, label %block_.L_413450

  ; Code: .L_413450:	 RIP: 413450	 Bytes: 0
block_.L_413450:

  ; Code: movl $0xffffffff, %ecx	 RIP: 413450	 Bytes: 5
  %loadMem_413450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413450 = call %struct.Memory* @routine_movl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413450)
  store %struct.Memory* %call_413450, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 413455	 Bytes: 3
  %loadMem_413455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413455 = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413455)
  store %struct.Memory* %call_413455, %struct.Memory** %MEMORY

  ; Code: leaq -0x70(%rbp), %r9	 RIP: 413458	 Bytes: 4
  %loadMem_413458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413458 = call %struct.Memory* @routine_leaq_MINUS0x70__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413458)
  store %struct.Memory* %call_413458, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41345c	 Bytes: 8
  %loadMem_41345c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41345c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41345c)
  store %struct.Memory* %call_41345c, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edi	 RIP: 413464	 Bytes: 3
  %loadMem_413464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413464 = call %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413464)
  store %struct.Memory* %call_413464, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 413467	 Bytes: 3
  %loadMem_413467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413467 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413467)
  store %struct.Memory* %call_413467, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 41346a	 Bytes: 3
  %loadMem_41346a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41346a = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41346a)
  store %struct.Memory* %call_41346a, %struct.Memory** %MEMORY

  ; Code: callq .getLuma4x4Neighbour	 RIP: 41346d	 Bytes: 5
  %loadMem1_41346d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41346d = call %struct.Memory* @routine_callq_.getLuma4x4Neighbour(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41346d, i64 228803, i64 5, i64 5)
  store %struct.Memory* %call1_41346d, %struct.Memory** %MEMORY

  %loadMem2_41346d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41346d = load i64, i64* %3
  %call2_41346d = call %struct.Memory* @sub_44b230.getLuma4x4Neighbour(%struct.State* %0, i64  %loadPC_41346d, %struct.Memory* %loadMem2_41346d)
  store %struct.Memory* %call2_41346d, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 413472	 Bytes: 2
  %loadMem_413472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413472 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413472)
  store %struct.Memory* %call_413472, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %r8d	 RIP: 413474	 Bytes: 6
  %loadMem_413474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413474 = call %struct.Memory* @routine_movl__0xffffffff___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413474)
  store %struct.Memory* %call_413474, %struct.Memory** %MEMORY

  ; Code: leaq -0x88(%rbp), %r9	 RIP: 41347a	 Bytes: 7
  %loadMem_41347a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41347a = call %struct.Memory* @routine_leaq_MINUS0x88__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41347a)
  store %struct.Memory* %call_41347a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 413481	 Bytes: 8
  %loadMem_413481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413481 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413481)
  store %struct.Memory* %call_413481, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edi	 RIP: 413489	 Bytes: 3
  %loadMem_413489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413489 = call %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413489)
  store %struct.Memory* %call_413489, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 41348c	 Bytes: 3
  %loadMem_41348c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41348c = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41348c)
  store %struct.Memory* %call_41348c, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 41348f	 Bytes: 3
  %loadMem_41348f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41348f = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41348f)
  store %struct.Memory* %call_41348f, %struct.Memory** %MEMORY

  ; Code: callq .getLuma4x4Neighbour	 RIP: 413492	 Bytes: 5
  %loadMem1_413492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_413492 = call %struct.Memory* @routine_callq_.getLuma4x4Neighbour(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_413492, i64 228766, i64 5, i64 5)
  store %struct.Memory* %call1_413492, %struct.Memory** %MEMORY

  %loadMem2_413492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_413492 = load i64, i64* %3
  %call2_413492 = call %struct.Memory* @sub_44b230.getLuma4x4Neighbour(%struct.State* %0, i64  %loadPC_413492, %struct.Memory* %loadMem2_413492)
  store %struct.Memory* %call2_413492, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 413497	 Bytes: 4
  %loadMem_413497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413497 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413497)
  store %struct.Memory* %call_413497, %struct.Memory** %MEMORY

  ; Code: je .L_4134d5	 RIP: 41349b	 Bytes: 6
  %loadMem_41349b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41349b = call %struct.Memory* @routine_je_.L_4134d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41349b, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_41349b, %struct.Memory** %MEMORY

  %loadBr_41349b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41349b = icmp eq i8 %loadBr_41349b, 1
  br i1 %cmpBr_41349b, label %block_.L_4134d5, label %block_4134a1

block_4134a1:
  ; Code: cmpl $0x0, -0x70(%rbp)	 RIP: 4134a1	 Bytes: 4
  %loadMem_4134a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134a1 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134a1)
  store %struct.Memory* %call_4134a1, %struct.Memory** %MEMORY

  ; Code: je .L_4134b7	 RIP: 4134a5	 Bytes: 6
  %loadMem_4134a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134a5 = call %struct.Memory* @routine_je_.L_4134b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134a5, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4134a5, %struct.Memory** %MEMORY

  %loadBr_4134a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4134a5 = icmp eq i8 %loadBr_4134a5, 1
  br i1 %cmpBr_4134a5, label %block_.L_4134b7, label %block_4134ab

block_4134ab:
  ; Code: movl -0x64(%rbp), %eax	 RIP: 4134ab	 Bytes: 3
  %loadMem_4134ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134ab = call %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134ab)
  store %struct.Memory* %call_4134ab, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 4134ae	 Bytes: 3
  %loadMem_4134ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134ae = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134ae)
  store %struct.Memory* %call_4134ae, %struct.Memory** %MEMORY

  ; Code: addl -0x68(%rbp), %eax	 RIP: 4134b1	 Bytes: 3
  %loadMem_4134b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134b1 = call %struct.Memory* @routine_addl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134b1)
  store %struct.Memory* %call_4134b1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 4134b4	 Bytes: 3
  %loadMem_4134b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134b4 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134b4)
  store %struct.Memory* %call_4134b4, %struct.Memory** %MEMORY

  ; Code: .L_4134b7:	 RIP: 4134b7	 Bytes: 0
  br label %block_.L_4134b7
block_.L_4134b7:

  ; Code: cmpl $0x0, -0x88(%rbp)	 RIP: 4134b7	 Bytes: 7
  %loadMem_4134b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134b7 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134b7)
  store %struct.Memory* %call_4134b7, %struct.Memory** %MEMORY

  ; Code: je .L_4134d0	 RIP: 4134be	 Bytes: 6
  %loadMem_4134be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134be = call %struct.Memory* @routine_je_.L_4134d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134be, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4134be, %struct.Memory** %MEMORY

  %loadBr_4134be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4134be = icmp eq i8 %loadBr_4134be, 1
  br i1 %cmpBr_4134be, label %block_.L_4134d0, label %block_4134c4

block_4134c4:
  ; Code: movl -0x7c(%rbp), %eax	 RIP: 4134c4	 Bytes: 3
  %loadMem_4134c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134c4 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134c4)
  store %struct.Memory* %call_4134c4, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 4134c7	 Bytes: 3
  %loadMem_4134c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134c7 = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134c7)
  store %struct.Memory* %call_4134c7, %struct.Memory** %MEMORY

  ; Code: addl -0x80(%rbp), %eax	 RIP: 4134ca	 Bytes: 3
  %loadMem_4134ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134ca = call %struct.Memory* @routine_addl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134ca)
  store %struct.Memory* %call_4134ca, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 4134cd	 Bytes: 3
  %loadMem_4134cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134cd = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134cd)
  store %struct.Memory* %call_4134cd, %struct.Memory** %MEMORY

  ; Code: .L_4134d0:	 RIP: 4134d0	 Bytes: 0
  br label %block_.L_4134d0
block_.L_4134d0:

  ; Code: jmpq .L_4134d5	 RIP: 4134d0	 Bytes: 5
  %loadMem_4134d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134d0 = call %struct.Memory* @routine_jmpq_.L_4134d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134d0, i64 5, i64 5)
  store %struct.Memory* %call_4134d0, %struct.Memory** %MEMORY

  br label %block_.L_4134d5

  ; Code: .L_4134d5:	 RIP: 4134d5	 Bytes: 0
block_.L_4134d5:

  ; Code: jmpq .L_41356e	 RIP: 4134d5	 Bytes: 5
  %loadMem_4134d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134d5 = call %struct.Memory* @routine_jmpq_.L_41356e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134d5, i64 153, i64 5)
  store %struct.Memory* %call_4134d5, %struct.Memory** %MEMORY

  br label %block_.L_41356e

  ; Code: .L_4134da:	 RIP: 4134da	 Bytes: 0
block_.L_4134da:

  ; Code: movl $0xffffffff, %ecx	 RIP: 4134da	 Bytes: 5
  %loadMem_4134da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134da = call %struct.Memory* @routine_movl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134da)
  store %struct.Memory* %call_4134da, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 4134df	 Bytes: 3
  %loadMem_4134df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134df = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134df)
  store %struct.Memory* %call_4134df, %struct.Memory** %MEMORY

  ; Code: leaq -0x70(%rbp), %r9	 RIP: 4134e2	 Bytes: 4
  %loadMem_4134e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134e2 = call %struct.Memory* @routine_leaq_MINUS0x70__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134e2)
  store %struct.Memory* %call_4134e2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4134e6	 Bytes: 8
  %loadMem_4134e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134e6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134e6)
  store %struct.Memory* %call_4134e6, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edi	 RIP: 4134ee	 Bytes: 3
  %loadMem_4134ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134ee = call %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134ee)
  store %struct.Memory* %call_4134ee, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 4134f1	 Bytes: 3
  %loadMem_4134f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134f1 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134f1)
  store %struct.Memory* %call_4134f1, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 4134f4	 Bytes: 3
  %loadMem_4134f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134f4 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134f4)
  store %struct.Memory* %call_4134f4, %struct.Memory** %MEMORY

  ; Code: callq .getChroma4x4Neighbour	 RIP: 4134f7	 Bytes: 5
  %loadMem1_4134f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4134f7 = call %struct.Memory* @routine_callq_.getChroma4x4Neighbour(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4134f7, i64 228841, i64 5, i64 5)
  store %struct.Memory* %call1_4134f7, %struct.Memory** %MEMORY

  %loadMem2_4134f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4134f7 = load i64, i64* %3
  %call2_4134f7 = call %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* %0, i64  %loadPC_4134f7, %struct.Memory* %loadMem2_4134f7)
  store %struct.Memory* %call2_4134f7, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 4134fc	 Bytes: 2
  %loadMem_4134fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134fc = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134fc)
  store %struct.Memory* %call_4134fc, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %r8d	 RIP: 4134fe	 Bytes: 6
  %loadMem_4134fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134fe = call %struct.Memory* @routine_movl__0xffffffff___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134fe)
  store %struct.Memory* %call_4134fe, %struct.Memory** %MEMORY

  ; Code: leaq -0x88(%rbp), %r9	 RIP: 413504	 Bytes: 7
  %loadMem_413504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413504 = call %struct.Memory* @routine_leaq_MINUS0x88__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413504)
  store %struct.Memory* %call_413504, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 41350b	 Bytes: 8
  %loadMem_41350b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41350b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41350b)
  store %struct.Memory* %call_41350b, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edi	 RIP: 413513	 Bytes: 3
  %loadMem_413513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413513 = call %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413513)
  store %struct.Memory* %call_413513, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 413516	 Bytes: 3
  %loadMem_413516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413516 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413516)
  store %struct.Memory* %call_413516, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 413519	 Bytes: 3
  %loadMem_413519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413519 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413519)
  store %struct.Memory* %call_413519, %struct.Memory** %MEMORY

  ; Code: callq .getChroma4x4Neighbour	 RIP: 41351c	 Bytes: 5
  %loadMem1_41351c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41351c = call %struct.Memory* @routine_callq_.getChroma4x4Neighbour(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41351c, i64 228804, i64 5, i64 5)
  store %struct.Memory* %call1_41351c, %struct.Memory** %MEMORY

  %loadMem2_41351c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41351c = load i64, i64* %3
  %call2_41351c = call %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* %0, i64  %loadPC_41351c, %struct.Memory* %loadMem2_41351c)
  store %struct.Memory* %call2_41351c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x24(%rbp)	 RIP: 413521	 Bytes: 4
  %loadMem_413521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413521 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413521)
  store %struct.Memory* %call_413521, %struct.Memory** %MEMORY

  ; Code: jne .L_413535	 RIP: 413525	 Bytes: 6
  %loadMem_413525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413525 = call %struct.Memory* @routine_jne_.L_413535(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413525, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_413525, %struct.Memory** %MEMORY

  %loadBr_413525 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413525 = icmp eq i8 %loadBr_413525, 1
  br i1 %cmpBr_413525, label %block_.L_413535, label %block_41352b

block_41352b:
  ; Code: cmpl $0x0, -0x28(%rbp)	 RIP: 41352b	 Bytes: 4
  %loadMem_41352b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41352b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41352b)
  store %struct.Memory* %call_41352b, %struct.Memory** %MEMORY

  ; Code: je .L_413569	 RIP: 41352f	 Bytes: 6
  %loadMem_41352f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41352f = call %struct.Memory* @routine_je_.L_413569(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41352f, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_41352f, %struct.Memory** %MEMORY

  %loadBr_41352f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41352f = icmp eq i8 %loadBr_41352f, 1
  br i1 %cmpBr_41352f, label %block_.L_413569, label %block_.L_413535

  ; Code: .L_413535:	 RIP: 413535	 Bytes: 0
block_.L_413535:

  ; Code: cmpl $0x0, -0x70(%rbp)	 RIP: 413535	 Bytes: 4
  %loadMem_413535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413535 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413535)
  store %struct.Memory* %call_413535, %struct.Memory** %MEMORY

  ; Code: je .L_41354b	 RIP: 413539	 Bytes: 6
  %loadMem_413539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413539 = call %struct.Memory* @routine_je_.L_41354b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413539, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_413539, %struct.Memory** %MEMORY

  %loadBr_413539 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413539 = icmp eq i8 %loadBr_413539, 1
  br i1 %cmpBr_413539, label %block_.L_41354b, label %block_41353f

block_41353f:
  ; Code: movl -0x64(%rbp), %eax	 RIP: 41353f	 Bytes: 3
  %loadMem_41353f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41353f = call %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41353f)
  store %struct.Memory* %call_41353f, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 413542	 Bytes: 3
  %loadMem_413542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413542 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413542)
  store %struct.Memory* %call_413542, %struct.Memory** %MEMORY

  ; Code: addl -0x68(%rbp), %eax	 RIP: 413545	 Bytes: 3
  %loadMem_413545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413545 = call %struct.Memory* @routine_addl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413545)
  store %struct.Memory* %call_413545, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 413548	 Bytes: 3
  %loadMem_413548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413548 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413548)
  store %struct.Memory* %call_413548, %struct.Memory** %MEMORY

  ; Code: .L_41354b:	 RIP: 41354b	 Bytes: 0
  br label %block_.L_41354b
block_.L_41354b:

  ; Code: cmpl $0x0, -0x88(%rbp)	 RIP: 41354b	 Bytes: 7
  %loadMem_41354b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41354b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41354b)
  store %struct.Memory* %call_41354b, %struct.Memory** %MEMORY

  ; Code: je .L_413564	 RIP: 413552	 Bytes: 6
  %loadMem_413552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413552 = call %struct.Memory* @routine_je_.L_413564(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413552, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_413552, %struct.Memory** %MEMORY

  %loadBr_413552 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413552 = icmp eq i8 %loadBr_413552, 1
  br i1 %cmpBr_413552, label %block_.L_413564, label %block_413558

block_413558:
  ; Code: movl -0x7c(%rbp), %eax	 RIP: 413558	 Bytes: 3
  %loadMem_413558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413558 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413558)
  store %struct.Memory* %call_413558, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 41355b	 Bytes: 3
  %loadMem_41355b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41355b = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41355b)
  store %struct.Memory* %call_41355b, %struct.Memory** %MEMORY

  ; Code: addl -0x80(%rbp), %eax	 RIP: 41355e	 Bytes: 3
  %loadMem_41355e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41355e = call %struct.Memory* @routine_addl_MINUS0x80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41355e)
  store %struct.Memory* %call_41355e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 413561	 Bytes: 3
  %loadMem_413561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413561 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413561)
  store %struct.Memory* %call_413561, %struct.Memory** %MEMORY

  ; Code: .L_413564:	 RIP: 413564	 Bytes: 0
  br label %block_.L_413564
block_.L_413564:

  ; Code: jmpq .L_413569	 RIP: 413564	 Bytes: 5
  %loadMem_413564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413564 = call %struct.Memory* @routine_jmpq_.L_413569(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413564, i64 5, i64 5)
  store %struct.Memory* %call_413564, %struct.Memory** %MEMORY

  br label %block_.L_413569

  ; Code: .L_413569:	 RIP: 413569	 Bytes: 0
block_.L_413569:

  ; Code: jmpq .L_41356e	 RIP: 413569	 Bytes: 5
  %loadMem_413569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413569 = call %struct.Memory* @routine_jmpq_.L_41356e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413569, i64 5, i64 5)
  store %struct.Memory* %call_413569, %struct.Memory** %MEMORY

  br label %block_.L_41356e

  ; Code: .L_41356e:	 RIP: 41356e	 Bytes: 0
block_.L_41356e:

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 41356e	 Bytes: 4
  %loadMem_41356e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41356e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41356e)
  store %struct.Memory* %call_41356e, %struct.Memory** %MEMORY

  ; Code: je .L_413585	 RIP: 413572	 Bytes: 6
  %loadMem_413572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413572 = call %struct.Memory* @routine_je_.L_413585(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413572, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_413572, %struct.Memory** %MEMORY

  %loadBr_413572 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413572 = icmp eq i8 %loadBr_413572, 1
  br i1 %cmpBr_413572, label %block_.L_413585, label %block_413578

block_413578:
  ; Code: xorl %eax, %eax	 RIP: 413578	 Bytes: 2
  %loadMem_413578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413578 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413578)
  store %struct.Memory* %call_413578, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xac(%rbp)	 RIP: 41357a	 Bytes: 6
  %loadMem_41357a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41357a = call %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41357a)
  store %struct.Memory* %call_41357a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41363d	 RIP: 413580	 Bytes: 5
  %loadMem_413580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413580 = call %struct.Memory* @routine_jmpq_.L_41363d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413580, i64 189, i64 5)
  store %struct.Memory* %call_413580, %struct.Memory** %MEMORY

  br label %block_.L_41363d

  ; Code: .L_413585:	 RIP: 413585	 Bytes: 0
block_.L_413585:

  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 413585	 Bytes: 4
  %loadMem_413585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413585 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413585)
  store %struct.Memory* %call_413585, %struct.Memory** %MEMORY

  ; Code: je .L_4135a6	 RIP: 413589	 Bytes: 6
  %loadMem_413589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413589 = call %struct.Memory* @routine_je_.L_4135a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413589, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_413589, %struct.Memory** %MEMORY

  %loadBr_413589 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413589 = icmp eq i8 %loadBr_413589, 1
  br i1 %cmpBr_413589, label %block_.L_4135a6, label %block_41358f

block_41358f:
  ; Code: movl -0x38(%rbp), %eax	 RIP: 41358f	 Bytes: 3
  %loadMem_41358f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41358f = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41358f)
  store %struct.Memory* %call_41358f, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 413592	 Bytes: 3
  %loadMem_413592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413592 = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413592)
  store %struct.Memory* %call_413592, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413595	 Bytes: 3
  %loadMem_413595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413595 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413595)
  store %struct.Memory* %call_413595, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %eax	 RIP: 413598	 Bytes: 3
  %loadMem_413598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413598 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413598)
  store %struct.Memory* %call_413598, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb0(%rbp)	 RIP: 41359b	 Bytes: 6
  %loadMem_41359b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41359b = call %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41359b)
  store %struct.Memory* %call_41359b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413631	 RIP: 4135a1	 Bytes: 5
  %loadMem_4135a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135a1 = call %struct.Memory* @routine_jmpq_.L_413631(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135a1, i64 144, i64 5)
  store %struct.Memory* %call_4135a1, %struct.Memory** %MEMORY

  br label %block_.L_413631

  ; Code: .L_4135a6:	 RIP: 4135a6	 Bytes: 0
block_.L_4135a6:

  ; Code: cmpl $0x0, -0x30(%rbp)	 RIP: 4135a6	 Bytes: 4
  %loadMem_4135a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135a6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135a6)
  store %struct.Memory* %call_4135a6, %struct.Memory** %MEMORY

  ; Code: je .L_4135c0	 RIP: 4135aa	 Bytes: 6
  %loadMem_4135aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135aa = call %struct.Memory* @routine_je_.L_4135c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135aa, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4135aa, %struct.Memory** %MEMORY

  %loadBr_4135aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4135aa = icmp eq i8 %loadBr_4135aa, 1
  br i1 %cmpBr_4135aa, label %block_.L_4135c0, label %block_4135b0

block_4135b0:
  ; Code: movl $0x11, %eax	 RIP: 4135b0	 Bytes: 5
  %loadMem_4135b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135b0 = call %struct.Memory* @routine_movl__0x11___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135b0)
  store %struct.Memory* %call_4135b0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb4(%rbp)	 RIP: 4135b5	 Bytes: 6
  %loadMem_4135b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135b5 = call %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135b5)
  store %struct.Memory* %call_4135b5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413625	 RIP: 4135bb	 Bytes: 5
  %loadMem_4135bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135bb = call %struct.Memory* @routine_jmpq_.L_413625(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135bb, i64 106, i64 5)
  store %struct.Memory* %call_4135bb, %struct.Memory** %MEMORY

  br label %block_.L_413625

  ; Code: .L_4135c0:	 RIP: 4135c0	 Bytes: 0
block_.L_4135c0:

  ; Code: cmpl $0x0, -0x34(%rbp)	 RIP: 4135c0	 Bytes: 4
  %loadMem_4135c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135c0 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135c0)
  store %struct.Memory* %call_4135c0, %struct.Memory** %MEMORY

  ; Code: je .L_4135da	 RIP: 4135c4	 Bytes: 6
  %loadMem_4135c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135c4 = call %struct.Memory* @routine_je_.L_4135da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135c4, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4135c4, %struct.Memory** %MEMORY

  %loadBr_4135c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4135c4 = icmp eq i8 %loadBr_4135c4, 1
  br i1 %cmpBr_4135c4, label %block_.L_4135da, label %block_4135ca

block_4135ca:
  ; Code: movl $0x12, %eax	 RIP: 4135ca	 Bytes: 5
  %loadMem_4135ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135ca = call %struct.Memory* @routine_movl__0x12___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135ca)
  store %struct.Memory* %call_4135ca, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb8(%rbp)	 RIP: 4135cf	 Bytes: 6
  %loadMem_4135cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135cf = call %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135cf)
  store %struct.Memory* %call_4135cf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413619	 RIP: 4135d5	 Bytes: 5
  %loadMem_4135d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135d5 = call %struct.Memory* @routine_jmpq_.L_413619(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135d5, i64 68, i64 5)
  store %struct.Memory* %call_4135d5, %struct.Memory** %MEMORY

  br label %block_.L_413619

  ; Code: .L_4135da:	 RIP: 4135da	 Bytes: 0
block_.L_4135da:

  ; Code: cmpl $0x0, -0x24(%rbp)	 RIP: 4135da	 Bytes: 4
  %loadMem_4135da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135da = call %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135da)
  store %struct.Memory* %call_4135da, %struct.Memory** %MEMORY

  ; Code: je .L_4135fb	 RIP: 4135de	 Bytes: 6
  %loadMem_4135de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135de = call %struct.Memory* @routine_je_.L_4135fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135de, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_4135de, %struct.Memory** %MEMORY

  %loadBr_4135de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4135de = icmp eq i8 %loadBr_4135de, 1
  br i1 %cmpBr_4135de, label %block_.L_4135fb, label %block_4135e4

block_4135e4:
  ; Code: movl -0x38(%rbp), %eax	 RIP: 4135e4	 Bytes: 3
  %loadMem_4135e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135e4 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135e4)
  store %struct.Memory* %call_4135e4, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4135e7	 Bytes: 3
  %loadMem_4135e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135e7 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135e7)
  store %struct.Memory* %call_4135e7, %struct.Memory** %MEMORY

  ; Code: addl $0x13, %eax	 RIP: 4135ea	 Bytes: 3
  %loadMem_4135ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135ea = call %struct.Memory* @routine_addl__0x13___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135ea)
  store %struct.Memory* %call_4135ea, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %eax	 RIP: 4135ed	 Bytes: 3
  %loadMem_4135ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135ed = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135ed)
  store %struct.Memory* %call_4135ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xbc(%rbp)	 RIP: 4135f0	 Bytes: 6
  %loadMem_4135f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135f0 = call %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135f0)
  store %struct.Memory* %call_4135f0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41360d	 RIP: 4135f6	 Bytes: 5
  %loadMem_4135f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135f6 = call %struct.Memory* @routine_jmpq_.L_41360d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135f6, i64 23, i64 5)
  store %struct.Memory* %call_4135f6, %struct.Memory** %MEMORY

  br label %block_.L_41360d

  ; Code: .L_4135fb:	 RIP: 4135fb	 Bytes: 0
block_.L_4135fb:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4135fb	 Bytes: 3
  %loadMem_4135fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135fb = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135fb)
  store %struct.Memory* %call_4135fb, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4135fe	 Bytes: 3
  %loadMem_4135fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135fe = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135fe)
  store %struct.Memory* %call_4135fe, %struct.Memory** %MEMORY

  ; Code: addl $0x17, %eax	 RIP: 413601	 Bytes: 3
  %loadMem_413601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413601 = call %struct.Memory* @routine_addl__0x17___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413601)
  store %struct.Memory* %call_413601, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %eax	 RIP: 413604	 Bytes: 3
  %loadMem_413604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413604 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413604)
  store %struct.Memory* %call_413604, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xbc(%rbp)	 RIP: 413607	 Bytes: 6
  %loadMem_413607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413607 = call %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413607)
  store %struct.Memory* %call_413607, %struct.Memory** %MEMORY

  ; Code: .L_41360d:	 RIP: 41360d	 Bytes: 0
  br label %block_.L_41360d
block_.L_41360d:

  ; Code: movl -0xbc(%rbp), %eax	 RIP: 41360d	 Bytes: 6
  %loadMem_41360d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41360d = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41360d)
  store %struct.Memory* %call_41360d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb8(%rbp)	 RIP: 413613	 Bytes: 6
  %loadMem_413613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413613 = call %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413613)
  store %struct.Memory* %call_413613, %struct.Memory** %MEMORY

  ; Code: .L_413619:	 RIP: 413619	 Bytes: 0
  br label %block_.L_413619
block_.L_413619:

  ; Code: movl -0xb8(%rbp), %eax	 RIP: 413619	 Bytes: 6
  %loadMem_413619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413619 = call %struct.Memory* @routine_movl_MINUS0xb8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413619)
  store %struct.Memory* %call_413619, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb4(%rbp)	 RIP: 41361f	 Bytes: 6
  %loadMem_41361f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41361f = call %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41361f)
  store %struct.Memory* %call_41361f, %struct.Memory** %MEMORY

  ; Code: .L_413625:	 RIP: 413625	 Bytes: 0
  br label %block_.L_413625
block_.L_413625:

  ; Code: movl -0xb4(%rbp), %eax	 RIP: 413625	 Bytes: 6
  %loadMem_413625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413625 = call %struct.Memory* @routine_movl_MINUS0xb4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413625)
  store %struct.Memory* %call_413625, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb0(%rbp)	 RIP: 41362b	 Bytes: 6
  %loadMem_41362b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41362b = call %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41362b)
  store %struct.Memory* %call_41362b, %struct.Memory** %MEMORY

  ; Code: .L_413631:	 RIP: 413631	 Bytes: 0
  br label %block_.L_413631
block_.L_413631:

  ; Code: movl -0xb0(%rbp), %eax	 RIP: 413631	 Bytes: 6
  %loadMem_413631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413631 = call %struct.Memory* @routine_movl_MINUS0xb0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413631)
  store %struct.Memory* %call_413631, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xac(%rbp)	 RIP: 413637	 Bytes: 6
  %loadMem_413637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413637 = call %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413637)
  store %struct.Memory* %call_413637, %struct.Memory** %MEMORY

  ; Code: .L_41363d:	 RIP: 41363d	 Bytes: 0
  br label %block_.L_41363d
block_.L_41363d:

  ; Code: movl -0xac(%rbp), %eax	 RIP: 41363d	 Bytes: 6
  %loadMem_41363d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41363d = call %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41363d)
  store %struct.Memory* %call_41363d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 413643	 Bytes: 3
  %loadMem_413643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413643 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413643)
  store %struct.Memory* %call_413643, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 413646	 Bytes: 4
  %loadMem_413646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413646 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413646)
  store %struct.Memory* %call_413646, %struct.Memory** %MEMORY

  ; Code: je .L_4137ad	 RIP: 41364a	 Bytes: 6
  %loadMem_41364a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41364a = call %struct.Memory* @routine_je_.L_4137ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41364a, i8* %BRANCH_TAKEN, i64 355, i64 6, i64 6)
  store %struct.Memory* %call_41364a, %struct.Memory** %MEMORY

  %loadBr_41364a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41364a = icmp eq i8 %loadBr_41364a, 1
  br i1 %cmpBr_41364a, label %block_.L_4137ad, label %block_413650

block_413650:
  ; Code: cmpl $0x2, -0x14(%rbp)	 RIP: 413650	 Bytes: 4
  %loadMem_413650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413650 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413650)
  store %struct.Memory* %call_413650, %struct.Memory** %MEMORY

  ; Code: jne .L_4136e1	 RIP: 413654	 Bytes: 6
  %loadMem_413654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413654 = call %struct.Memory* @routine_jne_.L_4136e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413654, i8* %BRANCH_TAKEN, i64 141, i64 6, i64 6)
  store %struct.Memory* %call_413654, %struct.Memory** %MEMORY

  %loadBr_413654 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413654 = icmp eq i8 %loadBr_413654, 1
  br i1 %cmpBr_413654, label %block_.L_4136e1, label %block_41365a

block_41365a:
  ; Code: movl $0x1, %eax	 RIP: 41365a	 Bytes: 5
  %loadMem_41365a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41365a = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41365a)
  store %struct.Memory* %call_41365a, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 41365f	 Bytes: 3
  %loadMem_41365f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41365f = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41365f)
  store %struct.Memory* %call_41365f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 413662	 Bytes: 2
  %loadMem_413662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413662 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413662)
  store %struct.Memory* %call_413662, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 413664	 Bytes: 2
  %loadMem_413664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413664 = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413664)
  store %struct.Memory* %call_413664, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 413666	 Bytes: 3
  %loadMem_413666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413666 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413666)
  store %struct.Memory* %call_413666, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 413669	 Bytes: 4
  %loadMem_413669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413669 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413669)
  store %struct.Memory* %call_413669, %struct.Memory** %MEMORY

  ; Code: orq 0x1f8(%rdi), %rsi	 RIP: 41366d	 Bytes: 7
  %loadMem_41366d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41366d = call %struct.Memory* @routine_orq_0x1f8__rdi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41366d)
  store %struct.Memory* %call_41366d, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0x1f8(%rdi)	 RIP: 413674	 Bytes: 7
  %loadMem_413674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413674 = call %struct.Memory* @routine_movq__rsi__0x1f8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413674)
  store %struct.Memory* %call_413674, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %edx	 RIP: 41367b	 Bytes: 3
  %loadMem_41367b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41367b = call %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41367b)
  store %struct.Memory* %call_41367b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41367e	 Bytes: 3
  %loadMem_41367e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41367e = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41367e)
  store %struct.Memory* %call_41367e, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 413681	 Bytes: 2
  %loadMem_413681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413681 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413681)
  store %struct.Memory* %call_413681, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 413683	 Bytes: 2
  %loadMem_413683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413683 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413683)
  store %struct.Memory* %call_413683, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 413685	 Bytes: 2
  %loadMem_413685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413685 = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413685)
  store %struct.Memory* %call_413685, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 413687	 Bytes: 3
  %loadMem_413687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413687 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413687)
  store %struct.Memory* %call_413687, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 41368a	 Bytes: 4
  %loadMem_41368a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41368a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41368a)
  store %struct.Memory* %call_41368a, %struct.Memory** %MEMORY

  ; Code: orq 0x1f8(%rdi), %rsi	 RIP: 41368e	 Bytes: 7
  %loadMem_41368e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41368e = call %struct.Memory* @routine_orq_0x1f8__rdi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41368e)
  store %struct.Memory* %call_41368e, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0x1f8(%rdi)	 RIP: 413695	 Bytes: 7
  %loadMem_413695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413695 = call %struct.Memory* @routine_movq__rsi__0x1f8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413695)
  store %struct.Memory* %call_413695, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %edx	 RIP: 41369c	 Bytes: 3
  %loadMem_41369c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41369c = call %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41369c)
  store %struct.Memory* %call_41369c, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %edx	 RIP: 41369f	 Bytes: 3
  %loadMem_41369f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41369f = call %struct.Memory* @routine_addl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41369f)
  store %struct.Memory* %call_41369f, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4136a2	 Bytes: 2
  %loadMem_4136a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136a2 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136a2)
  store %struct.Memory* %call_4136a2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4136a4	 Bytes: 2
  %loadMem_4136a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136a4 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136a4)
  store %struct.Memory* %call_4136a4, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 4136a6	 Bytes: 2
  %loadMem_4136a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136a6 = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136a6)
  store %struct.Memory* %call_4136a6, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 4136a8	 Bytes: 3
  %loadMem_4136a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136a8 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136a8)
  store %struct.Memory* %call_4136a8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4136ab	 Bytes: 4
  %loadMem_4136ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136ab = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136ab)
  store %struct.Memory* %call_4136ab, %struct.Memory** %MEMORY

  ; Code: orq 0x1f8(%rdi), %rsi	 RIP: 4136af	 Bytes: 7
  %loadMem_4136af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136af = call %struct.Memory* @routine_orq_0x1f8__rdi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136af)
  store %struct.Memory* %call_4136af, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0x1f8(%rdi)	 RIP: 4136b6	 Bytes: 7
  %loadMem_4136b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136b6 = call %struct.Memory* @routine_movq__rsi__0x1f8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136b6)
  store %struct.Memory* %call_4136b6, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %edx	 RIP: 4136bd	 Bytes: 3
  %loadMem_4136bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136bd = call %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136bd)
  store %struct.Memory* %call_4136bd, %struct.Memory** %MEMORY

  ; Code: addl $0x5, %edx	 RIP: 4136c0	 Bytes: 3
  %loadMem_4136c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136c0 = call %struct.Memory* @routine_addl__0x5___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136c0)
  store %struct.Memory* %call_4136c0, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4136c3	 Bytes: 2
  %loadMem_4136c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136c3 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136c3)
  store %struct.Memory* %call_4136c3, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 4136c5	 Bytes: 2
  %loadMem_4136c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136c5 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136c5)
  store %struct.Memory* %call_4136c5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 4136c7	 Bytes: 3
  %loadMem_4136c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136c7 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136c7)
  store %struct.Memory* %call_4136c7, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4136ca	 Bytes: 4
  %loadMem_4136ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136ca = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136ca)
  store %struct.Memory* %call_4136ca, %struct.Memory** %MEMORY

  ; Code: orq 0x1f8(%rdi), %rsi	 RIP: 4136ce	 Bytes: 7
  %loadMem_4136ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136ce = call %struct.Memory* @routine_orq_0x1f8__rdi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136ce)
  store %struct.Memory* %call_4136ce, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0x1f8(%rdi)	 RIP: 4136d5	 Bytes: 7
  %loadMem_4136d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136d5 = call %struct.Memory* @routine_movq__rsi__0x1f8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136d5)
  store %struct.Memory* %call_4136d5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4137a8	 RIP: 4136dc	 Bytes: 5
  %loadMem_4136dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136dc = call %struct.Memory* @routine_jmpq_.L_4137a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136dc, i64 204, i64 5)
  store %struct.Memory* %call_4136dc, %struct.Memory** %MEMORY

  br label %block_.L_4137a8

  ; Code: .L_4136e1:	 RIP: 4136e1	 Bytes: 0
block_.L_4136e1:

  ; Code: cmpl $0x3, -0x14(%rbp)	 RIP: 4136e1	 Bytes: 4
  %loadMem_4136e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136e1 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136e1)
  store %struct.Memory* %call_4136e1, %struct.Memory** %MEMORY

  ; Code: jne .L_413730	 RIP: 4136e5	 Bytes: 6
  %loadMem_4136e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136e5 = call %struct.Memory* @routine_jne_.L_413730(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136e5, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_4136e5, %struct.Memory** %MEMORY

  %loadBr_4136e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4136e5 = icmp eq i8 %loadBr_4136e5, 1
  br i1 %cmpBr_4136e5, label %block_.L_413730, label %block_4136eb

block_4136eb:
  ; Code: movl $0x1, %eax	 RIP: 4136eb	 Bytes: 5
  %loadMem_4136eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136eb = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136eb)
  store %struct.Memory* %call_4136eb, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 4136f0	 Bytes: 3
  %loadMem_4136f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136f0 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136f0)
  store %struct.Memory* %call_4136f0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4136f3	 Bytes: 2
  %loadMem_4136f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136f3 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136f3)
  store %struct.Memory* %call_4136f3, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 4136f5	 Bytes: 2
  %loadMem_4136f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136f5 = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136f5)
  store %struct.Memory* %call_4136f5, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 4136f7	 Bytes: 3
  %loadMem_4136f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136f7 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136f7)
  store %struct.Memory* %call_4136f7, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4136fa	 Bytes: 4
  %loadMem_4136fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136fa = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136fa)
  store %struct.Memory* %call_4136fa, %struct.Memory** %MEMORY

  ; Code: orq 0x1f8(%rdi), %rsi	 RIP: 4136fe	 Bytes: 7
  %loadMem_4136fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136fe = call %struct.Memory* @routine_orq_0x1f8__rdi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136fe)
  store %struct.Memory* %call_4136fe, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0x1f8(%rdi)	 RIP: 413705	 Bytes: 7
  %loadMem_413705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413705 = call %struct.Memory* @routine_movq__rsi__0x1f8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413705)
  store %struct.Memory* %call_413705, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %edx	 RIP: 41370c	 Bytes: 3
  %loadMem_41370c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41370c = call %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41370c)
  store %struct.Memory* %call_41370c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41370f	 Bytes: 3
  %loadMem_41370f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41370f = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41370f)
  store %struct.Memory* %call_41370f, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 413712	 Bytes: 2
  %loadMem_413712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413712 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413712)
  store %struct.Memory* %call_413712, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 413714	 Bytes: 2
  %loadMem_413714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413714 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413714)
  store %struct.Memory* %call_413714, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 413716	 Bytes: 3
  %loadMem_413716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413716 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413716)
  store %struct.Memory* %call_413716, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 413719	 Bytes: 4
  %loadMem_413719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413719 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413719)
  store %struct.Memory* %call_413719, %struct.Memory** %MEMORY

  ; Code: orq 0x1f8(%rdi), %rsi	 RIP: 41371d	 Bytes: 7
  %loadMem_41371d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41371d = call %struct.Memory* @routine_orq_0x1f8__rdi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41371d)
  store %struct.Memory* %call_41371d, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0x1f8(%rdi)	 RIP: 413724	 Bytes: 7
  %loadMem_413724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413724 = call %struct.Memory* @routine_movq__rsi__0x1f8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413724)
  store %struct.Memory* %call_413724, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4137a3	 RIP: 41372b	 Bytes: 5
  %loadMem_41372b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41372b = call %struct.Memory* @routine_jmpq_.L_4137a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41372b, i64 120, i64 5)
  store %struct.Memory* %call_41372b, %struct.Memory** %MEMORY

  br label %block_.L_4137a3

  ; Code: .L_413730:	 RIP: 413730	 Bytes: 0
block_.L_413730:

  ; Code: cmpl $0x4, -0x14(%rbp)	 RIP: 413730	 Bytes: 4
  %loadMem_413730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413730 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413730)
  store %struct.Memory* %call_413730, %struct.Memory** %MEMORY

  ; Code: jne .L_41377f	 RIP: 413734	 Bytes: 6
  %loadMem_413734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413734 = call %struct.Memory* @routine_jne_.L_41377f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413734, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_413734, %struct.Memory** %MEMORY

  %loadBr_413734 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413734 = icmp eq i8 %loadBr_413734, 1
  br i1 %cmpBr_413734, label %block_.L_41377f, label %block_41373a

block_41373a:
  ; Code: movl $0x1, %eax	 RIP: 41373a	 Bytes: 5
  %loadMem_41373a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41373a = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41373a)
  store %struct.Memory* %call_41373a, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 41373f	 Bytes: 3
  %loadMem_41373f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41373f = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41373f)
  store %struct.Memory* %call_41373f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 413742	 Bytes: 2
  %loadMem_413742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413742 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413742)
  store %struct.Memory* %call_413742, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 413744	 Bytes: 2
  %loadMem_413744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413744 = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413744)
  store %struct.Memory* %call_413744, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 413746	 Bytes: 3
  %loadMem_413746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413746 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413746)
  store %struct.Memory* %call_413746, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 413749	 Bytes: 4
  %loadMem_413749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413749 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413749)
  store %struct.Memory* %call_413749, %struct.Memory** %MEMORY

  ; Code: orq 0x1f8(%rdi), %rsi	 RIP: 41374d	 Bytes: 7
  %loadMem_41374d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41374d = call %struct.Memory* @routine_orq_0x1f8__rdi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41374d)
  store %struct.Memory* %call_41374d, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0x1f8(%rdi)	 RIP: 413754	 Bytes: 7
  %loadMem_413754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413754 = call %struct.Memory* @routine_movq__rsi__0x1f8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413754)
  store %struct.Memory* %call_413754, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %edx	 RIP: 41375b	 Bytes: 3
  %loadMem_41375b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41375b = call %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41375b)
  store %struct.Memory* %call_41375b, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %edx	 RIP: 41375e	 Bytes: 3
  %loadMem_41375e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41375e = call %struct.Memory* @routine_addl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41375e)
  store %struct.Memory* %call_41375e, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 413761	 Bytes: 2
  %loadMem_413761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413761 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413761)
  store %struct.Memory* %call_413761, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 413763	 Bytes: 2
  %loadMem_413763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413763 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413763)
  store %struct.Memory* %call_413763, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 413765	 Bytes: 3
  %loadMem_413765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413765 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413765)
  store %struct.Memory* %call_413765, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 413768	 Bytes: 4
  %loadMem_413768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413768 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413768)
  store %struct.Memory* %call_413768, %struct.Memory** %MEMORY

  ; Code: orq 0x1f8(%rdi), %rsi	 RIP: 41376c	 Bytes: 7
  %loadMem_41376c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41376c = call %struct.Memory* @routine_orq_0x1f8__rdi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41376c)
  store %struct.Memory* %call_41376c, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0x1f8(%rdi)	 RIP: 413773	 Bytes: 7
  %loadMem_413773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413773 = call %struct.Memory* @routine_movq__rsi__0x1f8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413773)
  store %struct.Memory* %call_413773, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41379e	 RIP: 41377a	 Bytes: 5
  %loadMem_41377a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41377a = call %struct.Memory* @routine_jmpq_.L_41379e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41377a, i64 36, i64 5)
  store %struct.Memory* %call_41377a, %struct.Memory** %MEMORY

  br label %block_.L_41379e

  ; Code: .L_41377f:	 RIP: 41377f	 Bytes: 0
block_.L_41377f:

  ; Code: movl $0x1, %eax	 RIP: 41377f	 Bytes: 5
  %loadMem_41377f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41377f = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41377f)
  store %struct.Memory* %call_41377f, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 413784	 Bytes: 3
  %loadMem_413784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413784 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413784)
  store %struct.Memory* %call_413784, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 413787	 Bytes: 2
  %loadMem_413787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413787 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413787)
  store %struct.Memory* %call_413787, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 413789	 Bytes: 3
  %loadMem_413789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413789 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413789)
  store %struct.Memory* %call_413789, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 41378c	 Bytes: 4
  %loadMem_41378c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41378c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41378c)
  store %struct.Memory* %call_41378c, %struct.Memory** %MEMORY

  ; Code: orq 0x1f8(%rsi), %rdx	 RIP: 413790	 Bytes: 7
  %loadMem_413790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413790 = call %struct.Memory* @routine_orq_0x1f8__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413790)
  store %struct.Memory* %call_413790, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0x1f8(%rsi)	 RIP: 413797	 Bytes: 7
  %loadMem_413797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413797 = call %struct.Memory* @routine_movq__rdx__0x1f8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413797)
  store %struct.Memory* %call_413797, %struct.Memory** %MEMORY

  ; Code: .L_41379e:	 RIP: 41379e	 Bytes: 0
  br label %block_.L_41379e
block_.L_41379e:

  ; Code: jmpq .L_4137a3	 RIP: 41379e	 Bytes: 5
  %loadMem_41379e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41379e = call %struct.Memory* @routine_jmpq_.L_4137a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41379e, i64 5, i64 5)
  store %struct.Memory* %call_41379e, %struct.Memory** %MEMORY

  br label %block_.L_4137a3

  ; Code: .L_4137a3:	 RIP: 4137a3	 Bytes: 0
block_.L_4137a3:

  ; Code: jmpq .L_4137a8	 RIP: 4137a3	 Bytes: 5
  %loadMem_4137a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137a3 = call %struct.Memory* @routine_jmpq_.L_4137a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137a3, i64 5, i64 5)
  store %struct.Memory* %call_4137a3, %struct.Memory** %MEMORY

  br label %block_.L_4137a8

  ; Code: .L_4137a8:	 RIP: 4137a8	 Bytes: 0
block_.L_4137a8:

  ; Code: jmpq .L_4137ad	 RIP: 4137a8	 Bytes: 5
  %loadMem_4137a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137a8 = call %struct.Memory* @routine_jmpq_.L_4137ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137a8, i64 5, i64 5)
  store %struct.Memory* %call_4137a8, %struct.Memory** %MEMORY

  br label %block_.L_4137ad

  ; Code: .L_4137ad:	 RIP: 4137ad	 Bytes: 0
block_.L_4137ad:

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 4137ad	 Bytes: 4
  %loadMem_4137ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137ad = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137ad)
  store %struct.Memory* %call_4137ad, %struct.Memory** %MEMORY

  ; Code: je .L_4137c4	 RIP: 4137b1	 Bytes: 6
  %loadMem_4137b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137b1 = call %struct.Memory* @routine_je_.L_4137c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137b1, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4137b1, %struct.Memory** %MEMORY

  %loadBr_4137b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4137b1 = icmp eq i8 %loadBr_4137b1, 1
  br i1 %cmpBr_4137b1, label %block_.L_4137c4, label %block_4137b7

block_4137b7:
  ; Code: xorl %eax, %eax	 RIP: 4137b7	 Bytes: 2
  %loadMem_4137b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137b7 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137b7)
  store %struct.Memory* %call_4137b7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc0(%rbp)	 RIP: 4137b9	 Bytes: 6
  %loadMem_4137b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137b9 = call %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137b9)
  store %struct.Memory* %call_4137b9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41384d	 RIP: 4137bf	 Bytes: 5
  %loadMem_4137bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137bf = call %struct.Memory* @routine_jmpq_.L_41384d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137bf, i64 142, i64 5)
  store %struct.Memory* %call_4137bf, %struct.Memory** %MEMORY

  br label %block_.L_41384d

  ; Code: .L_4137c4:	 RIP: 4137c4	 Bytes: 0
block_.L_4137c4:

  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 4137c4	 Bytes: 4
  %loadMem_4137c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137c4 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137c4)
  store %struct.Memory* %call_4137c4, %struct.Memory** %MEMORY

  ; Code: je .L_4137de	 RIP: 4137c8	 Bytes: 6
  %loadMem_4137c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137c8 = call %struct.Memory* @routine_je_.L_4137de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137c8, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4137c8, %struct.Memory** %MEMORY

  %loadBr_4137c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4137c8 = icmp eq i8 %loadBr_4137c8, 1
  br i1 %cmpBr_4137c8, label %block_.L_4137de, label %block_4137ce

block_4137ce:
  ; Code: movl $0x1, %eax	 RIP: 4137ce	 Bytes: 5
  %loadMem_4137ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137ce = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137ce)
  store %struct.Memory* %call_4137ce, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc4(%rbp)	 RIP: 4137d3	 Bytes: 6
  %loadMem_4137d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137d3 = call %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137d3)
  store %struct.Memory* %call_4137d3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413841	 RIP: 4137d9	 Bytes: 5
  %loadMem_4137d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137d9 = call %struct.Memory* @routine_jmpq_.L_413841(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137d9, i64 104, i64 5)
  store %struct.Memory* %call_4137d9, %struct.Memory** %MEMORY

  br label %block_.L_413841

  ; Code: .L_4137de:	 RIP: 4137de	 Bytes: 0
block_.L_4137de:

  ; Code: cmpl $0x0, -0x30(%rbp)	 RIP: 4137de	 Bytes: 4
  %loadMem_4137de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137de = call %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137de)
  store %struct.Memory* %call_4137de, %struct.Memory** %MEMORY

  ; Code: je .L_4137f8	 RIP: 4137e2	 Bytes: 6
  %loadMem_4137e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137e2 = call %struct.Memory* @routine_je_.L_4137f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137e2, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4137e2, %struct.Memory** %MEMORY

  %loadBr_4137e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4137e2 = icmp eq i8 %loadBr_4137e2, 1
  br i1 %cmpBr_4137e2, label %block_.L_4137f8, label %block_4137e8

block_4137e8:
  ; Code: movl $0x11, %eax	 RIP: 4137e8	 Bytes: 5
  %loadMem_4137e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137e8 = call %struct.Memory* @routine_movl__0x11___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137e8)
  store %struct.Memory* %call_4137e8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc8(%rbp)	 RIP: 4137ed	 Bytes: 6
  %loadMem_4137ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137ed = call %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137ed)
  store %struct.Memory* %call_4137ed, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413835	 RIP: 4137f3	 Bytes: 5
  %loadMem_4137f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137f3 = call %struct.Memory* @routine_jmpq_.L_413835(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137f3, i64 66, i64 5)
  store %struct.Memory* %call_4137f3, %struct.Memory** %MEMORY

  br label %block_.L_413835

  ; Code: .L_4137f8:	 RIP: 4137f8	 Bytes: 0
block_.L_4137f8:

  ; Code: cmpl $0x0, -0x34(%rbp)	 RIP: 4137f8	 Bytes: 4
  %loadMem_4137f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137f8 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137f8)
  store %struct.Memory* %call_4137f8, %struct.Memory** %MEMORY

  ; Code: je .L_413812	 RIP: 4137fc	 Bytes: 6
  %loadMem_4137fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137fc = call %struct.Memory* @routine_je_.L_413812(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137fc, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4137fc, %struct.Memory** %MEMORY

  %loadBr_4137fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4137fc = icmp eq i8 %loadBr_4137fc, 1
  br i1 %cmpBr_4137fc, label %block_.L_413812, label %block_413802

block_413802:
  ; Code: movl $0x12, %eax	 RIP: 413802	 Bytes: 5
  %loadMem_413802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413802 = call %struct.Memory* @routine_movl__0x12___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413802)
  store %struct.Memory* %call_413802, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xcc(%rbp)	 RIP: 413807	 Bytes: 6
  %loadMem_413807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413807 = call %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413807)
  store %struct.Memory* %call_413807, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413829	 RIP: 41380d	 Bytes: 5
  %loadMem_41380d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41380d = call %struct.Memory* @routine_jmpq_.L_413829(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41380d, i64 28, i64 5)
  store %struct.Memory* %call_41380d, %struct.Memory** %MEMORY

  br label %block_.L_413829

  ; Code: .L_413812:	 RIP: 413812	 Bytes: 0
block_.L_413812:

  ; Code: movl $0x17, %eax	 RIP: 413812	 Bytes: 5
  %loadMem_413812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413812 = call %struct.Memory* @routine_movl__0x17___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413812)
  store %struct.Memory* %call_413812, %struct.Memory** %MEMORY

  ; Code: movl $0x13, %ecx	 RIP: 413817	 Bytes: 5
  %loadMem_413817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413817 = call %struct.Memory* @routine_movl__0x13___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413817)
  store %struct.Memory* %call_413817, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x24(%rbp)	 RIP: 41381c	 Bytes: 4
  %loadMem_41381c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41381c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41381c)
  store %struct.Memory* %call_41381c, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 413820	 Bytes: 3
  %loadMem_413820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413820 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413820)
  store %struct.Memory* %call_413820, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xcc(%rbp)	 RIP: 413823	 Bytes: 6
  %loadMem_413823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413823 = call %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413823)
  store %struct.Memory* %call_413823, %struct.Memory** %MEMORY

  ; Code: .L_413829:	 RIP: 413829	 Bytes: 0
  br label %block_.L_413829
block_.L_413829:

  ; Code: movl -0xcc(%rbp), %eax	 RIP: 413829	 Bytes: 6
  %loadMem_413829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413829 = call %struct.Memory* @routine_movl_MINUS0xcc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413829)
  store %struct.Memory* %call_413829, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc8(%rbp)	 RIP: 41382f	 Bytes: 6
  %loadMem_41382f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41382f = call %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41382f)
  store %struct.Memory* %call_41382f, %struct.Memory** %MEMORY

  ; Code: .L_413835:	 RIP: 413835	 Bytes: 0
  br label %block_.L_413835
block_.L_413835:

  ; Code: movl -0xc8(%rbp), %eax	 RIP: 413835	 Bytes: 6
  %loadMem_413835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413835 = call %struct.Memory* @routine_movl_MINUS0xc8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413835)
  store %struct.Memory* %call_413835, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc4(%rbp)	 RIP: 41383b	 Bytes: 6
  %loadMem_41383b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41383b = call %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41383b)
  store %struct.Memory* %call_41383b, %struct.Memory** %MEMORY

  ; Code: .L_413841:	 RIP: 413841	 Bytes: 0
  br label %block_.L_413841
block_.L_413841:

  ; Code: movl -0xc4(%rbp), %eax	 RIP: 413841	 Bytes: 6
  %loadMem_413841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413841 = call %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413841)
  store %struct.Memory* %call_413841, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc0(%rbp)	 RIP: 413847	 Bytes: 6
  %loadMem_413847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413847 = call %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413847)
  store %struct.Memory* %call_413847, %struct.Memory** %MEMORY

  ; Code: .L_41384d:	 RIP: 41384d	 Bytes: 0
  br label %block_.L_41384d
block_.L_41384d:

  ; Code: movl -0xc0(%rbp), %eax	 RIP: 41384d	 Bytes: 6
  %loadMem_41384d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41384d = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41384d)
  store %struct.Memory* %call_41384d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 413853	 Bytes: 3
  %loadMem_413853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413853 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413853)
  store %struct.Memory* %call_413853, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x14(%rbp)	 RIP: 413856	 Bytes: 4
  %loadMem_413856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413856 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413856)
  store %struct.Memory* %call_413856, %struct.Memory** %MEMORY

  ; Code: je .L_4139f5	 RIP: 41385a	 Bytes: 6
  %loadMem_41385a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41385a = call %struct.Memory* @routine_je_.L_4139f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41385a, i8* %BRANCH_TAKEN, i64 411, i64 6, i64 6)
  store %struct.Memory* %call_41385a, %struct.Memory** %MEMORY

  %loadBr_41385a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41385a = icmp eq i8 %loadBr_41385a, 1
  br i1 %cmpBr_41385a, label %block_.L_4139f5, label %block_413860

block_413860:
  ; Code: cmpl $0x0, -0x88(%rbp)	 RIP: 413860	 Bytes: 7
  %loadMem_413860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413860 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413860)
  store %struct.Memory* %call_413860, %struct.Memory** %MEMORY

  ; Code: je .L_413904	 RIP: 413867	 Bytes: 6
  %loadMem_413867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413867 = call %struct.Memory* @routine_je_.L_413904(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413867, i8* %BRANCH_TAKEN, i64 157, i64 6, i64 6)
  store %struct.Memory* %call_413867, %struct.Memory** %MEMORY

  %loadBr_413867 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413867 = icmp eq i8 %loadBr_413867, 1
  br i1 %cmpBr_413867, label %block_.L_413904, label %block_41386d

block_41386d:
  ; Code: movq 0x6cb900, %rax	 RIP: 41386d	 Bytes: 8
  %loadMem_41386d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41386d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41386d)
  store %struct.Memory* %call_41386d, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 413875	 Bytes: 7
  %loadMem_413875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413875 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413875)
  store %struct.Memory* %call_413875, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rcx	 RIP: 41387c	 Bytes: 7
  %loadMem_41387c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41387c = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41387c)
  store %struct.Memory* %call_41387c, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 413883	 Bytes: 7
  %loadMem_413883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413883 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413883)
  store %struct.Memory* %call_413883, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41388a	 Bytes: 3
  %loadMem_41388a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41388a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41388a)
  store %struct.Memory* %call_41388a, %struct.Memory** %MEMORY

  ; Code: cmpl $0xe, 0x48(%rax)	 RIP: 41388d	 Bytes: 4
  %loadMem_41388d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41388d = call %struct.Memory* @routine_cmpl__0xe__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41388d)
  store %struct.Memory* %call_41388d, %struct.Memory** %MEMORY

  ; Code: jne .L_4138a3	 RIP: 413891	 Bytes: 6
  %loadMem_413891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413891 = call %struct.Memory* @routine_jne_.L_4138a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413891, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_413891, %struct.Memory** %MEMORY

  %loadBr_413891 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413891 = icmp eq i8 %loadBr_413891, 1
  br i1 %cmpBr_413891, label %block_.L_4138a3, label %block_413897

block_413897:
  ; Code: movl $0x1, -0x48(%rbp)	 RIP: 413897	 Bytes: 7
  %loadMem_413897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413897 = call %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413897)
  store %struct.Memory* %call_413897, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4138ff	 RIP: 41389e	 Bytes: 5
  %loadMem_41389e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41389e = call %struct.Memory* @routine_jmpq_.L_4138ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41389e, i64 97, i64 5)
  store %struct.Memory* %call_41389e, %struct.Memory** %MEMORY

  br label %block_.L_4138ff

  ; Code: .L_4138a3:	 RIP: 4138a3	 Bytes: 0
block_.L_4138a3:

  ; Code: movl $0x1, %eax	 RIP: 4138a3	 Bytes: 5
  %loadMem_4138a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138a3 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138a3)
  store %struct.Memory* %call_4138a3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4138a8	 Bytes: 8
  %loadMem_4138a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138a8 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138a8)
  store %struct.Memory* %call_4138a8, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rcx), %rcx	 RIP: 4138b0	 Bytes: 7
  %loadMem_4138b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138b0 = call %struct.Memory* @routine_movq_0x3758__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138b0)
  store %struct.Memory* %call_4138b0, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rdx	 RIP: 4138b7	 Bytes: 7
  %loadMem_4138b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138b7 = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138b7)
  store %struct.Memory* %call_4138b7, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rdx, %rdx	 RIP: 4138be	 Bytes: 7
  %loadMem_4138be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138be = call %struct.Memory* @routine_imulq__0x278___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138be)
  store %struct.Memory* %call_4138be, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4138c5	 Bytes: 3
  %loadMem_4138c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138c5 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138c5)
  store %struct.Memory* %call_4138c5, %struct.Memory** %MEMORY

  ; Code: movq 0x1f8(%rcx), %rcx	 RIP: 4138c8	 Bytes: 7
  %loadMem_4138c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138c8 = call %struct.Memory* @routine_movq_0x1f8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138c8)
  store %struct.Memory* %call_4138c8, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %esi	 RIP: 4138cf	 Bytes: 3
  %loadMem_4138cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138cf = call %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138cf)
  store %struct.Memory* %call_4138cf, %struct.Memory** %MEMORY

  ; Code: addl -0x58(%rbp), %esi	 RIP: 4138d2	 Bytes: 3
  %loadMem_4138d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138d2 = call %struct.Memory* @routine_addl_MINUS0x58__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138d2)
  store %struct.Memory* %call_4138d2, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xd8(%rbp)	 RIP: 4138d5	 Bytes: 7
  %loadMem_4138d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138d5 = call %struct.Memory* @routine_movq__rcx__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138d5)
  store %struct.Memory* %call_4138d5, %struct.Memory** %MEMORY

  ; Code: movl %esi, %ecx	 RIP: 4138dc	 Bytes: 2
  %loadMem_4138dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138dc = call %struct.Memory* @routine_movl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138dc)
  store %struct.Memory* %call_4138dc, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 4138de	 Bytes: 2
  %loadMem_4138de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138de = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138de)
  store %struct.Memory* %call_4138de, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4138e0	 Bytes: 3
  %loadMem_4138e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138e0 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138e0)
  store %struct.Memory* %call_4138e0, %struct.Memory** %MEMORY

  ; Code: movq -0xd8(%rbp), %rdi	 RIP: 4138e3	 Bytes: 7
  %loadMem_4138e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138e3 = call %struct.Memory* @routine_movq_MINUS0xd8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138e3)
  store %struct.Memory* %call_4138e3, %struct.Memory** %MEMORY

  ; Code: andq %rdx, %rdi	 RIP: 4138ea	 Bytes: 3
  %loadMem_4138ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138ea = call %struct.Memory* @routine_andq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138ea)
  store %struct.Memory* %call_4138ea, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %eax	 RIP: 4138ed	 Bytes: 3
  %loadMem_4138ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138ed = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138ed)
  store %struct.Memory* %call_4138ed, %struct.Memory** %MEMORY

  ; Code: addl -0x58(%rbp), %eax	 RIP: 4138f0	 Bytes: 3
  %loadMem_4138f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138f0 = call %struct.Memory* @routine_addl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138f0)
  store %struct.Memory* %call_4138f0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %eax	 RIP: 4138f3	 Bytes: 2
  %loadMem_4138f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138f3 = call %struct.Memory* @routine_movl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138f3)
  store %struct.Memory* %call_4138f3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4138f5	 Bytes: 2
  %loadMem_4138f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138f5 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138f5)
  store %struct.Memory* %call_4138f5, %struct.Memory** %MEMORY

  ; Code: shrq %cl, %rdi	 RIP: 4138f7	 Bytes: 3
  %loadMem_4138f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138f7 = call %struct.Memory* @routine_shrq__cl___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138f7)
  store %struct.Memory* %call_4138f7, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 4138fa	 Bytes: 2
  %loadMem_4138fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138fa = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138fa)
  store %struct.Memory* %call_4138fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 4138fc	 Bytes: 3
  %loadMem_4138fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138fc = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138fc)
  store %struct.Memory* %call_4138fc, %struct.Memory** %MEMORY

  ; Code: .L_4138ff:	 RIP: 4138ff	 Bytes: 0
  br label %block_.L_4138ff
block_.L_4138ff:

  ; Code: jmpq .L_413904	 RIP: 4138ff	 Bytes: 5
  %loadMem_4138ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138ff = call %struct.Memory* @routine_jmpq_.L_413904(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138ff, i64 5, i64 5)
  store %struct.Memory* %call_4138ff, %struct.Memory** %MEMORY

  br label %block_.L_413904

  ; Code: .L_413904:	 RIP: 413904	 Bytes: 0
block_.L_413904:

  ; Code: cmpl $0x0, -0x70(%rbp)	 RIP: 413904	 Bytes: 4
  %loadMem_413904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413904 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413904)
  store %struct.Memory* %call_413904, %struct.Memory** %MEMORY

  ; Code: je .L_41399f	 RIP: 413908	 Bytes: 6
  %loadMem_413908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413908 = call %struct.Memory* @routine_je_.L_41399f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413908, i8* %BRANCH_TAKEN, i64 151, i64 6, i64 6)
  store %struct.Memory* %call_413908, %struct.Memory** %MEMORY

  %loadBr_413908 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413908 = icmp eq i8 %loadBr_413908, 1
  br i1 %cmpBr_413908, label %block_.L_41399f, label %block_41390e

block_41390e:
  ; Code: movq 0x6cb900, %rax	 RIP: 41390e	 Bytes: 8
  %loadMem_41390e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41390e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41390e)
  store %struct.Memory* %call_41390e, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 413916	 Bytes: 7
  %loadMem_413916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413916 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413916)
  store %struct.Memory* %call_413916, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rcx	 RIP: 41391d	 Bytes: 4
  %loadMem_41391d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41391d = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41391d)
  store %struct.Memory* %call_41391d, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 413921	 Bytes: 7
  %loadMem_413921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413921 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413921)
  store %struct.Memory* %call_413921, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 413928	 Bytes: 3
  %loadMem_413928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413928 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413928)
  store %struct.Memory* %call_413928, %struct.Memory** %MEMORY

  ; Code: cmpl $0xe, 0x48(%rax)	 RIP: 41392b	 Bytes: 4
  %loadMem_41392b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41392b = call %struct.Memory* @routine_cmpl__0xe__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41392b)
  store %struct.Memory* %call_41392b, %struct.Memory** %MEMORY

  ; Code: jne .L_413941	 RIP: 41392f	 Bytes: 6
  %loadMem_41392f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41392f = call %struct.Memory* @routine_jne_.L_413941(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41392f, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_41392f, %struct.Memory** %MEMORY

  %loadBr_41392f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41392f = icmp eq i8 %loadBr_41392f, 1
  br i1 %cmpBr_41392f, label %block_.L_413941, label %block_413935

block_413935:
  ; Code: movl $0x1, -0x4c(%rbp)	 RIP: 413935	 Bytes: 7
  %loadMem_413935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413935 = call %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413935)
  store %struct.Memory* %call_413935, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41399a	 RIP: 41393c	 Bytes: 5
  %loadMem_41393c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41393c = call %struct.Memory* @routine_jmpq_.L_41399a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41393c, i64 94, i64 5)
  store %struct.Memory* %call_41393c, %struct.Memory** %MEMORY

  br label %block_.L_41399a

  ; Code: .L_413941:	 RIP: 413941	 Bytes: 0
block_.L_413941:

  ; Code: movl $0x1, %eax	 RIP: 413941	 Bytes: 5
  %loadMem_413941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413941 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413941)
  store %struct.Memory* %call_413941, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 413946	 Bytes: 8
  %loadMem_413946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413946 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413946)
  store %struct.Memory* %call_413946, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rcx), %rcx	 RIP: 41394e	 Bytes: 7
  %loadMem_41394e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41394e = call %struct.Memory* @routine_movq_0x3758__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41394e)
  store %struct.Memory* %call_41394e, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rdx	 RIP: 413955	 Bytes: 4
  %loadMem_413955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413955 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413955)
  store %struct.Memory* %call_413955, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rdx, %rdx	 RIP: 413959	 Bytes: 7
  %loadMem_413959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413959 = call %struct.Memory* @routine_imulq__0x278___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413959)
  store %struct.Memory* %call_413959, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 413960	 Bytes: 3
  %loadMem_413960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413960 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413960)
  store %struct.Memory* %call_413960, %struct.Memory** %MEMORY

  ; Code: movq 0x1f8(%rcx), %rcx	 RIP: 413963	 Bytes: 7
  %loadMem_413963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413963 = call %struct.Memory* @routine_movq_0x1f8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413963)
  store %struct.Memory* %call_413963, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %esi	 RIP: 41396a	 Bytes: 3
  %loadMem_41396a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41396a = call %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41396a)
  store %struct.Memory* %call_41396a, %struct.Memory** %MEMORY

  ; Code: addl -0x54(%rbp), %esi	 RIP: 41396d	 Bytes: 3
  %loadMem_41396d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41396d = call %struct.Memory* @routine_addl_MINUS0x54__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41396d)
  store %struct.Memory* %call_41396d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xe0(%rbp)	 RIP: 413970	 Bytes: 7
  %loadMem_413970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413970 = call %struct.Memory* @routine_movq__rcx__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413970)
  store %struct.Memory* %call_413970, %struct.Memory** %MEMORY

  ; Code: movl %esi, %ecx	 RIP: 413977	 Bytes: 2
  %loadMem_413977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413977 = call %struct.Memory* @routine_movl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413977)
  store %struct.Memory* %call_413977, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 413979	 Bytes: 2
  %loadMem_413979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413979 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413979)
  store %struct.Memory* %call_413979, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 41397b	 Bytes: 3
  %loadMem_41397b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41397b = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41397b)
  store %struct.Memory* %call_41397b, %struct.Memory** %MEMORY

  ; Code: movq -0xe0(%rbp), %rdi	 RIP: 41397e	 Bytes: 7
  %loadMem_41397e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41397e = call %struct.Memory* @routine_movq_MINUS0xe0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41397e)
  store %struct.Memory* %call_41397e, %struct.Memory** %MEMORY

  ; Code: andq %rdx, %rdi	 RIP: 413985	 Bytes: 3
  %loadMem_413985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413985 = call %struct.Memory* @routine_andq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413985)
  store %struct.Memory* %call_413985, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %eax	 RIP: 413988	 Bytes: 3
  %loadMem_413988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413988 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413988)
  store %struct.Memory* %call_413988, %struct.Memory** %MEMORY

  ; Code: addl -0x54(%rbp), %eax	 RIP: 41398b	 Bytes: 3
  %loadMem_41398b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41398b = call %struct.Memory* @routine_addl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41398b)
  store %struct.Memory* %call_41398b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %eax	 RIP: 41398e	 Bytes: 2
  %loadMem_41398e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41398e = call %struct.Memory* @routine_movl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41398e)
  store %struct.Memory* %call_41398e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 413990	 Bytes: 2
  %loadMem_413990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413990 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413990)
  store %struct.Memory* %call_413990, %struct.Memory** %MEMORY

  ; Code: shrq %cl, %rdi	 RIP: 413992	 Bytes: 3
  %loadMem_413992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413992 = call %struct.Memory* @routine_shrq__cl___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413992)
  store %struct.Memory* %call_413992, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 413995	 Bytes: 2
  %loadMem_413995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413995 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413995)
  store %struct.Memory* %call_413995, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 413997	 Bytes: 3
  %loadMem_413997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413997 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413997)
  store %struct.Memory* %call_413997, %struct.Memory** %MEMORY

  ; Code: .L_41399a:	 RIP: 41399a	 Bytes: 0
  br label %block_.L_41399a
block_.L_41399a:

  ; Code: jmpq .L_41399f	 RIP: 41399a	 Bytes: 5
  %loadMem_41399a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41399a = call %struct.Memory* @routine_jmpq_.L_41399f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41399a, i64 5, i64 5)
  store %struct.Memory* %call_41399a, %struct.Memory** %MEMORY

  br label %block_.L_41399f

  ; Code: .L_41399f:	 RIP: 41399f	 Bytes: 0
block_.L_41399f:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 41399f	 Bytes: 3
  %loadMem_41399f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41399f = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41399f)
  store %struct.Memory* %call_41399f, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4139a2	 Bytes: 3
  %loadMem_4139a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139a2 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139a2)
  store %struct.Memory* %call_4139a2, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %eax	 RIP: 4139a5	 Bytes: 3
  %loadMem_4139a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139a5 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139a5)
  store %struct.Memory* %call_4139a5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 4139a8	 Bytes: 3
  %loadMem_4139a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139a8 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139a8)
  store %struct.Memory* %call_4139a8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4139ab	 Bytes: 4
  %loadMem_4139ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139ab = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139ab)
  store %struct.Memory* %call_4139ab, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 4139af	 Bytes: 3
  %loadMem_4139af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139af = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139af)
  store %struct.Memory* %call_4139af, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 4139b2	 Bytes: 3
  %loadMem_4139b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139b2 = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139b2)
  store %struct.Memory* %call_4139b2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4139b5	 Bytes: 8
  %loadMem_4139b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139b5 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139b5)
  store %struct.Memory* %call_4139b5, %struct.Memory** %MEMORY

  ; Code: movq 0x3750(%rdx), %rdx	 RIP: 4139bd	 Bytes: 7
  %loadMem_4139bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139bd = call %struct.Memory* @routine_movq_0x3750__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139bd)
  store %struct.Memory* %call_4139bd, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rdx), %rdx	 RIP: 4139c4	 Bytes: 4
  %loadMem_4139c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139c4 = call %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139c4)
  store %struct.Memory* %call_4139c4, %struct.Memory** %MEMORY

  ; Code: addq $0x120, %rdx	 RIP: 4139c8	 Bytes: 7
  %loadMem_4139c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139c8 = call %struct.Memory* @routine_addq__0x120___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139c8)
  store %struct.Memory* %call_4139c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rsi	 RIP: 4139cf	 Bytes: 4
  %loadMem_4139cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139cf = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139cf)
  store %struct.Memory* %call_4139cf, %struct.Memory** %MEMORY

  ; Code: movslq 0x4b2a90(,%rsi,4), %rsi	 RIP: 4139d3	 Bytes: 8
  %loadMem_4139d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139d3 = call %struct.Memory* @routine_movslq_0x4b2a90___rsi_4____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139d3)
  store %struct.Memory* %call_4139d3, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 4139db	 Bytes: 4
  %loadMem_4139db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139db = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139db)
  store %struct.Memory* %call_4139db, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4139df	 Bytes: 3
  %loadMem_4139df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139df = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139df)
  store %struct.Memory* %call_4139df, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rsi	 RIP: 4139e2	 Bytes: 4
  %loadMem_4139e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139e2 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139e2)
  store %struct.Memory* %call_4139e2, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 4139e6	 Bytes: 4
  %loadMem_4139e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139e6 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139e6)
  store %struct.Memory* %call_4139e6, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4139ea	 Bytes: 3
  %loadMem_4139ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139ea = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139ea)
  store %struct.Memory* %call_4139ea, %struct.Memory** %MEMORY

  ; Code: movswl %cx, %esi	 RIP: 4139ed	 Bytes: 3
  %loadMem_4139ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139ed = call %struct.Memory* @routine_movswl__cx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139ed)
  store %struct.Memory* %call_4139ed, %struct.Memory** %MEMORY

  ; Code: callq .biari_encode_symbol	 RIP: 4139f0	 Bytes: 5
  %loadMem1_4139f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4139f0 = call %struct.Memory* @routine_callq_.biari_encode_symbol(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4139f0, i64 -73808, i64 5, i64 5)
  store %struct.Memory* %call1_4139f0, %struct.Memory** %MEMORY

  %loadMem2_4139f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4139f0 = load i64, i64* %3
  %call2_4139f0 = call %struct.Memory* @sub_4019a0.biari_encode_symbol(%struct.State* %0, i64  %loadPC_4139f0, %struct.Memory* %loadMem2_4139f0)
  store %struct.Memory* %call2_4139f0, %struct.Memory** %MEMORY

  ; Code: .L_4139f5:	 RIP: 4139f5	 Bytes: 0
  br label %block_.L_4139f5
block_.L_4139f5:

  ; Code: addq $0xe0, %rsp	 RIP: 4139f5	 Bytes: 7
  %loadMem_4139f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139f5 = call %struct.Memory* @routine_addq__0xe0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139f5)
  store %struct.Memory* %call_4139f5, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4139fc	 Bytes: 1
  %loadMem_4139fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139fc = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139fc)
  store %struct.Memory* %call_4139fc, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4139fd	 Bytes: 1
  %loadMem_4139fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139fd = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139fd)
  store %struct.Memory* %call_4139fd, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4139fd
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

define %struct.Memory* @routine_subq__0xe0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 224)
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


define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
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


define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__al__MINUS0x89__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 137
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
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

define %struct.Memory* @routine_je_.L_41318e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl__0x3__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpl__0x4__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_cmpl__0x5__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sete__al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %AL)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_MINUS0x89__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 137
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl___dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_movzbl__al___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %AL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_cmpl__0x7__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__dl__MINUS0x8a__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 138
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_jne_.L_4131d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x54__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setne__cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %CL)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #0 {
  %6 = xor i64 %4, %3
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

define %struct.Memory* @routine_xorb__0xff___cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i8, i8* %CL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %11, i64 255)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movb__cl__MINUS0x8a__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 138
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x8a__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 138
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
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




define %struct.Memory* @routine_movb__dl__MINUS0x8b__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 139
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jne_.L_41320e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movb__cl__MINUS0x8b__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 139
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x8b__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 139
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movb__0x1___cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 1)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x6__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__cl__MINUS0x8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 140
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_41324d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__al__MINUS0x8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 140
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_cmpl__0x9__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 9)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movb_MINUS0x8c__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 140
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__dl__MINUS0x8d__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 141
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_413287(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movb__cl__MINUS0x8d__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 141
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x8d__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 141
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
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




define %struct.Memory* @routine_movb__dl__MINUS0x8e__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 142
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_4132be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movb__cl__MINUS0x8e__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 142
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x8e__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 142
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jne_.L_4132ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_413300(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x4c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_jmpq_.L_41330d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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




define %struct.Memory* @routine_jne_.L_413334(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_41334a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x48__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_413357(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_je_.L_413377(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_413400(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_413391(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4133f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_je_.L_4133ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x11___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 17)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4133e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4133c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x12___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 18)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4133dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x17___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 23)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x13___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 19)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0xa8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0xa4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0xa0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x9c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 1)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_cmpl__0x0__0x50__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmovnel__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jne_.L_413450(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_4134da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xffffffff___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 4294967295)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x70__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_callq_.getLuma4x4Neighbour(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0xffffffff___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 4294967295)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_leaq_MINUS0x88__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_je_.L_4134d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4134b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_shll__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
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

define %struct.Memory* @routine_addl_MINUS0x68__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4134d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_MINUS0x80__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
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


define %struct.Memory* @routine_jmpq_.L_4134d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_41356e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}
















define %struct.Memory* @routine_callq_.getChroma4x4Neighbour(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jne_.L_413535(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_413569(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_41354b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_413564(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_413569(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_je_.L_413585(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41363d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_4135a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_413631(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_4135c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_413625(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_4135da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_413619(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_4135fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addl__0x13___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 19)
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


define %struct.Memory* @routine_jmpq_.L_41360d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_addl__0x17___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 23)
  ret %struct.Memory* %12
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




define %struct.Memory* @routine_movl_MINUS0xb8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0xb4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0xb0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0xac__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4137ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_4136e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_shll__cl___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RDX
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6
  %8 = or i64 %7, %3
  store i64 %8, i64* %2, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11) #22
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = icmp eq i64 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i64 %8, 63
  %21 = trunc i64 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_orq_0x1f8__rdi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 504
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__0x1f8__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 504
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


















define %struct.Memory* @routine_addl__0x5___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 5)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movslq__eax___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jmpq_.L_4137a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_413730(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































define %struct.Memory* @routine_jmpq_.L_4137a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_41377f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































define %struct.Memory* @routine_jmpq_.L_41379e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movslq__eax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_orq_0x1f8__rsi____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 504
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdx__0x1f8__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 504
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_jmpq_.L_4137ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_4137c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41384d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_4137de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 196
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_413841(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_4137f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_413835(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_413812(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_413829(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_movl_MINUS0xcc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0xc8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_je_.L_4139f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_413904(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_cmpl__0xe__0x48__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 14)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4138a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4138ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movslq_MINUS0x84__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movq_0x1f8__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 504
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_addl_MINUS0x58__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0xd8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = and i64 %4, %3
  store i64 %6, i64* %2, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %6 to i32
  %9 = and i32 %8, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9) #22
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i64 %6, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %6, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_andq__rdx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_addl_MINUS0x58__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i6
  switch i6 %6, label %10 [
    i6 0, label %37
    i6 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = lshr i64 %3, 63
  %9 = trunc i64 %8 to i8
  br label %16

; <label>:10:                                     ; preds = %5
  %11 = and i64 %4, 63
  %12 = add  i64 %11, -1
  %13 = lshr i64 %3, %12
  %14 = icmp ne i8 0, 0
  %15 = zext i1 %14 to i8
  br label %16

; <label>:16:                                     ; preds = %10, %7
  %17 = phi i8 [ 0, %10 ], [ 0, %7 ]
  %18 = phi i64 [ %13, %10 ], [ %3, %7 ]
  %19 = phi i8 [ %15, %10 ], [ %9, %7 ]
  %20 = trunc i64 %18 to i8
  %21 = and i8 %20, 1
  %22 = lshr i64 %18, 1
  store i64 %22, i64* %2, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %21, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %25 = trunc i64 %22 to i32
  %26 = and i32 %25, 255
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #22
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  store i8 %30, i8* %24, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %17, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %33 = icmp eq i64 %22, 0
  %34 = zext i1 %33 to i8
  store i8 %34, i8* %32, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %19, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %16, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shrq__cl___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_413904(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_41399f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jne_.L_413941(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_41399a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addl_MINUS0x54__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 84
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0xe0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movq_MINUS0xe0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_addl_MINUS0x54__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 84
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_jmpq_.L_41399f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_MINUS0x4c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_0x3750__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_addq__0x120___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 288)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_0x4b2a90___rsi_4____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 4926096
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %11)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 6)
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


define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 4)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i32
  %6 = shl i32 %5, 16
  %7 = ashr exact i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movswl__cx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i16, i16* %CX
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.biari_encode_symbol(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addq__0xe0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 224)
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

