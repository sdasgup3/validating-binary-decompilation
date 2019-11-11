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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0C\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

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

declare %struct.Memory* @sub_400580.Fit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400610.Place(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4007a0.Trial(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x603a94_type = type <{ [4 x i8] }>
@G_0x603a94= global %G_0x603a94_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x610250_type = type <{ [4 x i8] }>
@G_0x610250= global %G_0x610250_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x610254_type = type <{ [4 x i8] }>
@G_0x610254= global %G_0x610254_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x610258_type = type <{ [4 x i8] }>
@G_0x610258= global %G_0x610258_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x61025c_type = type <{ [4 x i8] }>
@G_0x61025c= global %G_0x61025c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x610260_type = type <{ [4 x i8] }>
@G_0x610260= global %G_0x610260_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x610264_type = type <{ [4 x i8] }>
@G_0x610264= global %G_0x610264_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x610268_type = type <{ [4 x i8] }>
@G_0x610268= global %G_0x610268_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x61026c_type = type <{ [4 x i8] }>
@G_0x61026c= global %G_0x61026c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x610270_type = type <{ [4 x i8] }>
@G_0x610270= global %G_0x610270_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x610274_type = type <{ [4 x i8] }>
@G_0x610274= global %G_0x610274_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x610278_type = type <{ [4 x i8] }>
@G_0x610278= global %G_0x610278_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x61027c_type = type <{ [4 x i8] }>
@G_0x61027c= global %G_0x61027c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x610280_type = type <{ [4 x i8] }>
@G_0x610280= global %G_0x610280_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6191c4_type = type <{ [4 x i8] }>
@G_0x6191c4= global %G_0x6191c4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6191e0_type = type <{ [4 x i8] }>
@G_0x6191e0= global %G_0x6191e0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6191e4_type = type <{ [4 x i8] }>
@G_0x6191e4= global %G_0x6191e4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6191e8_type = type <{ [4 x i8] }>
@G_0x6191e8= global %G_0x6191e8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6191ec_type = type <{ [4 x i8] }>
@G_0x6191ec= global %G_0x6191ec_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6191f0_type = type <{ [4 x i8] }>
@G_0x6191f0= global %G_0x6191f0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6191f4_type = type <{ [4 x i8] }>
@G_0x6191f4= global %G_0x6191f4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6191f8_type = type <{ [4 x i8] }>
@G_0x6191f8= global %G_0x6191f8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6191fc_type = type <{ [4 x i8] }>
@G_0x6191fc= global %G_0x6191fc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x619200_type = type <{ [4 x i8] }>
@G_0x619200= global %G_0x619200_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x619204_type = type <{ [4 x i8] }>
@G_0x619204= global %G_0x619204_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x619208_type = type <{ [4 x i8] }>
@G_0x619208= global %G_0x619208_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x61920c_type = type <{ [4 x i8] }>
@G_0x61920c= global %G_0x61920c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x619210_type = type <{ [4 x i8] }>
@G_0x619210= global %G_0x619210_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x619214_type = type <{ [4 x i8] }>
@G_0x619214= global %G_0x619214_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x619218_type = type <{ [4 x i8] }>
@G_0x619218= global %G_0x619218_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x61921c_type = type <{ [4 x i8] }>
@G_0x61921c= global %G_0x61921c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x619220_type = type <{ [4 x i8] }>
@G_0x619220= global %G_0x619220_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x401374_type = type <{ [8 x i8] }>
@G__0x401374= global %G__0x401374_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x401386_type = type <{ [8 x i8] }>
@G__0x401386= global %G__0x401386_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x401399_type = type <{ [8 x i8] }>
@G__0x401399= global %G__0x401399_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4013ac_type = type <{ [8 x i8] }>
@G__0x4013ac= global %G__0x4013ac_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x603aa0_type = type <{ [8 x i8] }>
@G__0x603aa0= global %G__0x603aa0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @Puzzle(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .Puzzle:	 RIP: 400870	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 400870	 Bytes: 1
  %loadMem_400870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400870 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400870)
  store %struct.Memory* %call_400870, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 400871	 Bytes: 3
  %loadMem_400871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400871 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400871)
  store %struct.Memory* %call_400871, %struct.Memory** %MEMORY

  ; Code: subq $0x30, %rsp	 RIP: 400874	 Bytes: 4
  %loadMem_400874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400874 = call %struct.Memory* @routine_subq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400874)
  store %struct.Memory* %call_400874, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 400878	 Bytes: 7
  %loadMem_400878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400878 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400878)
  store %struct.Memory* %call_400878, %struct.Memory** %MEMORY

  ; Code: .L_40087f:	 RIP: 40087f	 Bytes: 0
  br label %block_.L_40087f
block_.L_40087f:

  ; Code: cmpl $0x1ff, -0x10(%rbp)	 RIP: 40087f	 Bytes: 7
  %loadMem_40087f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40087f = call %struct.Memory* @routine_cmpl__0x1ff__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40087f)
  store %struct.Memory* %call_40087f, %struct.Memory** %MEMORY

  ; Code: jg .L_4008a9	 RIP: 400886	 Bytes: 6
  %loadMem_400886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400886 = call %struct.Memory* @routine_jg_.L_4008a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400886, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_400886, %struct.Memory** %MEMORY

  %loadBr_400886 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400886 = icmp eq i8 %loadBr_400886, 1
  br i1 %cmpBr_400886, label %block_.L_4008a9, label %block_40088c

block_40088c:
  ; Code: movslq -0x10(%rbp), %rax	 RIP: 40088c	 Bytes: 4
  %loadMem_40088c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40088c = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40088c)
  store %struct.Memory* %call_40088c, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x60df50(,%rax,4)	 RIP: 400890	 Bytes: 11
  %loadMem_400890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400890 = call %struct.Memory* @routine_movl__0x1__0x60df50___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400890)
  store %struct.Memory* %call_400890, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 40089b	 Bytes: 3
  %loadMem_40089b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40089b = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40089b)
  store %struct.Memory* %call_40089b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40089e	 Bytes: 3
  %loadMem_40089e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40089e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40089e)
  store %struct.Memory* %call_40089e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 4008a1	 Bytes: 3
  %loadMem_4008a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008a1 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008a1)
  store %struct.Memory* %call_4008a1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40087f	 RIP: 4008a4	 Bytes: 5
  %loadMem_4008a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008a4 = call %struct.Memory* @routine_jmpq_.L_40087f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008a4, i64 -37, i64 5)
  store %struct.Memory* %call_4008a4, %struct.Memory** %MEMORY

  br label %block_.L_40087f

  ; Code: .L_4008a9:	 RIP: 4008a9	 Bytes: 0
block_.L_4008a9:

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 4008a9	 Bytes: 7
  %loadMem_4008a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008a9 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008a9)
  store %struct.Memory* %call_4008a9, %struct.Memory** %MEMORY

  ; Code: .L_4008b0:	 RIP: 4008b0	 Bytes: 0
  br label %block_.L_4008b0
block_.L_4008b0:

  ; Code: cmpl $0x5, -0x4(%rbp)	 RIP: 4008b0	 Bytes: 4
  %loadMem_4008b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008b0 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008b0)
  store %struct.Memory* %call_4008b0, %struct.Memory** %MEMORY

  ; Code: jg .L_400931	 RIP: 4008b4	 Bytes: 6
  %loadMem_4008b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008b4 = call %struct.Memory* @routine_jg_.L_400931(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008b4, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_4008b4, %struct.Memory** %MEMORY

  %loadBr_4008b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4008b4 = icmp eq i8 %loadBr_4008b4, 1
  br i1 %cmpBr_4008b4, label %block_.L_400931, label %block_4008ba

block_4008ba:
  ; Code: movl $0x1, -0x8(%rbp)	 RIP: 4008ba	 Bytes: 7
  %loadMem_4008ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008ba = call %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008ba)
  store %struct.Memory* %call_4008ba, %struct.Memory** %MEMORY

  ; Code: .L_4008c1:	 RIP: 4008c1	 Bytes: 0
  br label %block_.L_4008c1
block_.L_4008c1:

  ; Code: cmpl $0x5, -0x8(%rbp)	 RIP: 4008c1	 Bytes: 4
  %loadMem_4008c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008c1 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008c1)
  store %struct.Memory* %call_4008c1, %struct.Memory** %MEMORY

  ; Code: jg .L_40091e	 RIP: 4008c5	 Bytes: 6
  %loadMem_4008c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008c5 = call %struct.Memory* @routine_jg_.L_40091e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008c5, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_4008c5, %struct.Memory** %MEMORY

  %loadBr_4008c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4008c5 = icmp eq i8 %loadBr_4008c5, 1
  br i1 %cmpBr_4008c5, label %block_.L_40091e, label %block_4008cb

block_4008cb:
  ; Code: movl $0x1, -0xc(%rbp)	 RIP: 4008cb	 Bytes: 7
  %loadMem_4008cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008cb = call %struct.Memory* @routine_movl__0x1__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008cb)
  store %struct.Memory* %call_4008cb, %struct.Memory** %MEMORY

  ; Code: .L_4008d2:	 RIP: 4008d2	 Bytes: 0
  br label %block_.L_4008d2
block_.L_4008d2:

  ; Code: cmpl $0x5, -0xc(%rbp)	 RIP: 4008d2	 Bytes: 4
  %loadMem_4008d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008d2 = call %struct.Memory* @routine_cmpl__0x5__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008d2)
  store %struct.Memory* %call_4008d2, %struct.Memory** %MEMORY

  ; Code: jg .L_40090b	 RIP: 4008d6	 Bytes: 6
  %loadMem_4008d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008d6 = call %struct.Memory* @routine_jg_.L_40090b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008d6, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_4008d6, %struct.Memory** %MEMORY

  %loadBr_4008d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4008d6 = icmp eq i8 %loadBr_4008d6, 1
  br i1 %cmpBr_4008d6, label %block_.L_40090b, label %block_4008dc

block_4008dc:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 4008dc	 Bytes: 3
  %loadMem_4008dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008dc = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008dc)
  store %struct.Memory* %call_4008dc, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 4008df	 Bytes: 3
  %loadMem_4008df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008df = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008df)
  store %struct.Memory* %call_4008df, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 4008e2	 Bytes: 3
  %loadMem_4008e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008e2 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008e2)
  store %struct.Memory* %call_4008e2, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 4008e5	 Bytes: 3
  %loadMem_4008e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008e5 = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008e5)
  store %struct.Memory* %call_4008e5, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 4008e8	 Bytes: 2
  %loadMem_4008e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008e8 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008e8)
  store %struct.Memory* %call_4008e8, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %ecx	 RIP: 4008ea	 Bytes: 3
  %loadMem_4008ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008ea = call %struct.Memory* @routine_shll__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008ea)
  store %struct.Memory* %call_4008ea, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 4008ed	 Bytes: 2
  %loadMem_4008ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008ed = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008ed)
  store %struct.Memory* %call_4008ed, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 4008ef	 Bytes: 3
  %loadMem_4008ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008ef = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008ef)
  store %struct.Memory* %call_4008ef, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x60df50(,%rsi,4)	 RIP: 4008f2	 Bytes: 11
  %loadMem_4008f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008f2 = call %struct.Memory* @routine_movl__0x0__0x60df50___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008f2)
  store %struct.Memory* %call_4008f2, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4008fd	 Bytes: 3
  %loadMem_4008fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008fd = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008fd)
  store %struct.Memory* %call_4008fd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400900	 Bytes: 3
  %loadMem_400900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400900 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400900)
  store %struct.Memory* %call_400900, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 400903	 Bytes: 3
  %loadMem_400903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400903 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400903)
  store %struct.Memory* %call_400903, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4008d2	 RIP: 400906	 Bytes: 5
  %loadMem_400906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400906 = call %struct.Memory* @routine_jmpq_.L_4008d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400906, i64 -52, i64 5)
  store %struct.Memory* %call_400906, %struct.Memory** %MEMORY

  br label %block_.L_4008d2

  ; Code: .L_40090b:	 RIP: 40090b	 Bytes: 0
block_.L_40090b:

  ; Code: jmpq .L_400910	 RIP: 40090b	 Bytes: 5
  %loadMem_40090b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40090b = call %struct.Memory* @routine_jmpq_.L_400910(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40090b, i64 5, i64 5)
  store %struct.Memory* %call_40090b, %struct.Memory** %MEMORY

  br label %block_.L_400910

  ; Code: .L_400910:	 RIP: 400910	 Bytes: 0
block_.L_400910:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 400910	 Bytes: 3
  %loadMem_400910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400910 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400910)
  store %struct.Memory* %call_400910, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400913	 Bytes: 3
  %loadMem_400913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400913 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400913)
  store %struct.Memory* %call_400913, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 400916	 Bytes: 3
  %loadMem_400916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400916 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400916)
  store %struct.Memory* %call_400916, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4008c1	 RIP: 400919	 Bytes: 5
  %loadMem_400919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400919 = call %struct.Memory* @routine_jmpq_.L_4008c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400919, i64 -88, i64 5)
  store %struct.Memory* %call_400919, %struct.Memory** %MEMORY

  br label %block_.L_4008c1

  ; Code: .L_40091e:	 RIP: 40091e	 Bytes: 0
block_.L_40091e:

  ; Code: jmpq .L_400923	 RIP: 40091e	 Bytes: 5
  %loadMem_40091e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40091e = call %struct.Memory* @routine_jmpq_.L_400923(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40091e, i64 5, i64 5)
  store %struct.Memory* %call_40091e, %struct.Memory** %MEMORY

  br label %block_.L_400923

  ; Code: .L_400923:	 RIP: 400923	 Bytes: 0
block_.L_400923:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400923	 Bytes: 3
  %loadMem_400923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400923 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400923)
  store %struct.Memory* %call_400923, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400926	 Bytes: 3
  %loadMem_400926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400926 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400926)
  store %struct.Memory* %call_400926, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400929	 Bytes: 3
  %loadMem_400929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400929 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400929)
  store %struct.Memory* %call_400929, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4008b0	 RIP: 40092c	 Bytes: 5
  %loadMem_40092c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40092c = call %struct.Memory* @routine_jmpq_.L_4008b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40092c, i64 -124, i64 5)
  store %struct.Memory* %call_40092c, %struct.Memory** %MEMORY

  br label %block_.L_4008b0

  ; Code: .L_400931:	 RIP: 400931	 Bytes: 0
block_.L_400931:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400931	 Bytes: 7
  %loadMem_400931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400931 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400931)
  store %struct.Memory* %call_400931, %struct.Memory** %MEMORY

  ; Code: .L_400938:	 RIP: 400938	 Bytes: 0
  br label %block_.L_400938
block_.L_400938:

  ; Code: cmpl $0xc, -0x4(%rbp)	 RIP: 400938	 Bytes: 4
  %loadMem_400938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400938 = call %struct.Memory* @routine_cmpl__0xc__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400938)
  store %struct.Memory* %call_400938, %struct.Memory** %MEMORY

  ; Code: jg .L_400997	 RIP: 40093c	 Bytes: 6
  %loadMem_40093c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40093c = call %struct.Memory* @routine_jg_.L_400997(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40093c, i8* %BRANCH_TAKEN, i64 91, i64 6, i64 6)
  store %struct.Memory* %call_40093c, %struct.Memory** %MEMORY

  %loadBr_40093c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40093c = icmp eq i8 %loadBr_40093c, 1
  br i1 %cmpBr_40093c, label %block_.L_400997, label %block_400942

block_400942:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 400942	 Bytes: 7
  %loadMem_400942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400942 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400942)
  store %struct.Memory* %call_400942, %struct.Memory** %MEMORY

  ; Code: .L_400949:	 RIP: 400949	 Bytes: 0
  br label %block_.L_400949
block_.L_400949:

  ; Code: cmpl $0x1ff, -0x10(%rbp)	 RIP: 400949	 Bytes: 7
  %loadMem_400949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400949 = call %struct.Memory* @routine_cmpl__0x1ff__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400949)
  store %struct.Memory* %call_400949, %struct.Memory** %MEMORY

  ; Code: jg .L_400984	 RIP: 400950	 Bytes: 6
  %loadMem_400950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400950 = call %struct.Memory* @routine_jg_.L_400984(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400950, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_400950, %struct.Memory** %MEMORY

  %loadBr_400950 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400950 = icmp eq i8 %loadBr_400950, 1
  br i1 %cmpBr_400950, label %block_.L_400984, label %block_400956

block_400956:
  ; Code: movq $0x603aa0, %rax	 RIP: 400956	 Bytes: 10
  %loadMem_400956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400956 = call %struct.Memory* @routine_movq__0x603aa0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400956)
  store %struct.Memory* %call_400956, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 400960	 Bytes: 4
  %loadMem_400960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400960 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400960)
  store %struct.Memory* %call_400960, %struct.Memory** %MEMORY

  ; Code: shlq $0xb, %rcx	 RIP: 400964	 Bytes: 4
  %loadMem_400964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400964 = call %struct.Memory* @routine_shlq__0xb___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400964)
  store %struct.Memory* %call_400964, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400968	 Bytes: 3
  %loadMem_400968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400968 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400968)
  store %struct.Memory* %call_400968, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 40096b	 Bytes: 4
  %loadMem_40096b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40096b = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40096b)
  store %struct.Memory* %call_40096b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 40096f	 Bytes: 7
  %loadMem_40096f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40096f = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40096f)
  store %struct.Memory* %call_40096f, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 400976	 Bytes: 3
  %loadMem_400976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400976 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400976)
  store %struct.Memory* %call_400976, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400979	 Bytes: 3
  %loadMem_400979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400979 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400979)
  store %struct.Memory* %call_400979, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 40097c	 Bytes: 3
  %loadMem_40097c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40097c = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40097c)
  store %struct.Memory* %call_40097c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400949	 RIP: 40097f	 Bytes: 5
  %loadMem_40097f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40097f = call %struct.Memory* @routine_jmpq_.L_400949(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40097f, i64 -54, i64 5)
  store %struct.Memory* %call_40097f, %struct.Memory** %MEMORY

  br label %block_.L_400949

  ; Code: .L_400984:	 RIP: 400984	 Bytes: 0
block_.L_400984:

  ; Code: jmpq .L_400989	 RIP: 400984	 Bytes: 5
  %loadMem_400984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400984 = call %struct.Memory* @routine_jmpq_.L_400989(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400984, i64 5, i64 5)
  store %struct.Memory* %call_400984, %struct.Memory** %MEMORY

  br label %block_.L_400989

  ; Code: .L_400989:	 RIP: 400989	 Bytes: 0
block_.L_400989:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400989	 Bytes: 3
  %loadMem_400989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400989 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400989)
  store %struct.Memory* %call_400989, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40098c	 Bytes: 3
  %loadMem_40098c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40098c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40098c)
  store %struct.Memory* %call_40098c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 40098f	 Bytes: 3
  %loadMem_40098f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40098f = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40098f)
  store %struct.Memory* %call_40098f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400938	 RIP: 400992	 Bytes: 5
  %loadMem_400992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400992 = call %struct.Memory* @routine_jmpq_.L_400938(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400992, i64 -90, i64 5)
  store %struct.Memory* %call_400992, %struct.Memory** %MEMORY

  br label %block_.L_400938

  ; Code: .L_400997:	 RIP: 400997	 Bytes: 0
block_.L_400997:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400997	 Bytes: 7
  %loadMem_400997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400997 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400997)
  store %struct.Memory* %call_400997, %struct.Memory** %MEMORY

  ; Code: .L_40099e:	 RIP: 40099e	 Bytes: 0
  br label %block_.L_40099e
block_.L_40099e:

  ; Code: cmpl $0x3, -0x4(%rbp)	 RIP: 40099e	 Bytes: 4
  %loadMem_40099e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40099e = call %struct.Memory* @routine_cmpl__0x3__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40099e)
  store %struct.Memory* %call_40099e, %struct.Memory** %MEMORY

  ; Code: jg .L_400a1f	 RIP: 4009a2	 Bytes: 6
  %loadMem_4009a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009a2 = call %struct.Memory* @routine_jg_.L_400a1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009a2, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_4009a2, %struct.Memory** %MEMORY

  %loadBr_4009a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4009a2 = icmp eq i8 %loadBr_4009a2, 1
  br i1 %cmpBr_4009a2, label %block_.L_400a1f, label %block_4009a8

block_4009a8:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4009a8	 Bytes: 7
  %loadMem_4009a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009a8 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009a8)
  store %struct.Memory* %call_4009a8, %struct.Memory** %MEMORY

  ; Code: .L_4009af:	 RIP: 4009af	 Bytes: 0
  br label %block_.L_4009af
block_.L_4009af:

  ; Code: cmpl $0x1, -0x8(%rbp)	 RIP: 4009af	 Bytes: 4
  %loadMem_4009af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009af = call %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009af)
  store %struct.Memory* %call_4009af, %struct.Memory** %MEMORY

  ; Code: jg .L_400a0c	 RIP: 4009b3	 Bytes: 6
  %loadMem_4009b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009b3 = call %struct.Memory* @routine_jg_.L_400a0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009b3, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_4009b3, %struct.Memory** %MEMORY

  %loadBr_4009b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4009b3 = icmp eq i8 %loadBr_4009b3, 1
  br i1 %cmpBr_4009b3, label %block_.L_400a0c, label %block_4009b9

block_4009b9:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4009b9	 Bytes: 7
  %loadMem_4009b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009b9 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009b9)
  store %struct.Memory* %call_4009b9, %struct.Memory** %MEMORY

  ; Code: .L_4009c0:	 RIP: 4009c0	 Bytes: 0
  br label %block_.L_4009c0
block_.L_4009c0:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 4009c0	 Bytes: 4
  %loadMem_4009c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c0 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c0)
  store %struct.Memory* %call_4009c0, %struct.Memory** %MEMORY

  ; Code: jg .L_4009f9	 RIP: 4009c4	 Bytes: 6
  %loadMem_4009c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c4 = call %struct.Memory* @routine_jg_.L_4009f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c4, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_4009c4, %struct.Memory** %MEMORY

  %loadBr_4009c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4009c4 = icmp eq i8 %loadBr_4009c4, 1
  br i1 %cmpBr_4009c4, label %block_.L_4009f9, label %block_4009ca

block_4009ca:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 4009ca	 Bytes: 3
  %loadMem_4009ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009ca = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009ca)
  store %struct.Memory* %call_4009ca, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 4009cd	 Bytes: 3
  %loadMem_4009cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009cd = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009cd)
  store %struct.Memory* %call_4009cd, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 4009d0	 Bytes: 3
  %loadMem_4009d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009d0 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009d0)
  store %struct.Memory* %call_4009d0, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 4009d3	 Bytes: 3
  %loadMem_4009d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009d3 = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009d3)
  store %struct.Memory* %call_4009d3, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 4009d6	 Bytes: 2
  %loadMem_4009d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009d6 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009d6)
  store %struct.Memory* %call_4009d6, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %ecx	 RIP: 4009d8	 Bytes: 3
  %loadMem_4009d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009d8 = call %struct.Memory* @routine_shll__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009d8)
  store %struct.Memory* %call_4009d8, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 4009db	 Bytes: 2
  %loadMem_4009db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009db = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009db)
  store %struct.Memory* %call_4009db, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 4009dd	 Bytes: 3
  %loadMem_4009dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009dd = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009dd)
  store %struct.Memory* %call_4009dd, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x603aa0(,%rsi,4)	 RIP: 4009e0	 Bytes: 11
  %loadMem_4009e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009e0 = call %struct.Memory* @routine_movl__0x1__0x603aa0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009e0)
  store %struct.Memory* %call_4009e0, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4009eb	 Bytes: 3
  %loadMem_4009eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009eb = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009eb)
  store %struct.Memory* %call_4009eb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4009ee	 Bytes: 3
  %loadMem_4009ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009ee = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009ee)
  store %struct.Memory* %call_4009ee, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4009f1	 Bytes: 3
  %loadMem_4009f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f1 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f1)
  store %struct.Memory* %call_4009f1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4009c0	 RIP: 4009f4	 Bytes: 5
  %loadMem_4009f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f4 = call %struct.Memory* @routine_jmpq_.L_4009c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f4, i64 -52, i64 5)
  store %struct.Memory* %call_4009f4, %struct.Memory** %MEMORY

  br label %block_.L_4009c0

  ; Code: .L_4009f9:	 RIP: 4009f9	 Bytes: 0
block_.L_4009f9:

  ; Code: jmpq .L_4009fe	 RIP: 4009f9	 Bytes: 5
  %loadMem_4009f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f9 = call %struct.Memory* @routine_jmpq_.L_4009fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f9, i64 5, i64 5)
  store %struct.Memory* %call_4009f9, %struct.Memory** %MEMORY

  br label %block_.L_4009fe

  ; Code: .L_4009fe:	 RIP: 4009fe	 Bytes: 0
block_.L_4009fe:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4009fe	 Bytes: 3
  %loadMem_4009fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009fe = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009fe)
  store %struct.Memory* %call_4009fe, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400a01	 Bytes: 3
  %loadMem_400a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a01 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a01)
  store %struct.Memory* %call_400a01, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 400a04	 Bytes: 3
  %loadMem_400a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a04 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a04)
  store %struct.Memory* %call_400a04, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4009af	 RIP: 400a07	 Bytes: 5
  %loadMem_400a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a07 = call %struct.Memory* @routine_jmpq_.L_4009af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a07, i64 -88, i64 5)
  store %struct.Memory* %call_400a07, %struct.Memory** %MEMORY

  br label %block_.L_4009af

  ; Code: .L_400a0c:	 RIP: 400a0c	 Bytes: 0
block_.L_400a0c:

  ; Code: jmpq .L_400a11	 RIP: 400a0c	 Bytes: 5
  %loadMem_400a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a0c = call %struct.Memory* @routine_jmpq_.L_400a11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a0c, i64 5, i64 5)
  store %struct.Memory* %call_400a0c, %struct.Memory** %MEMORY

  br label %block_.L_400a11

  ; Code: .L_400a11:	 RIP: 400a11	 Bytes: 0
block_.L_400a11:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400a11	 Bytes: 3
  %loadMem_400a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a11 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a11)
  store %struct.Memory* %call_400a11, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400a14	 Bytes: 3
  %loadMem_400a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a14 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a14)
  store %struct.Memory* %call_400a14, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400a17	 Bytes: 3
  %loadMem_400a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a17 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a17)
  store %struct.Memory* %call_400a17, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40099e	 RIP: 400a1a	 Bytes: 5
  %loadMem_400a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a1a = call %struct.Memory* @routine_jmpq_.L_40099e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a1a, i64 -124, i64 5)
  store %struct.Memory* %call_400a1a, %struct.Memory** %MEMORY

  br label %block_.L_40099e

  ; Code: .L_400a1f:	 RIP: 400a1f	 Bytes: 0
block_.L_400a1f:

  ; Code: movl $0x0, 0x6191f0	 RIP: 400a1f	 Bytes: 11
  %loadMem_400a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a1f = call %struct.Memory* @routine_movl__0x0__0x6191f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a1f)
  store %struct.Memory* %call_400a1f, %struct.Memory** %MEMORY

  ; Code: movl $0xb, 0x610250	 RIP: 400a2a	 Bytes: 11
  %loadMem_400a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a2a = call %struct.Memory* @routine_movl__0xb__0x610250(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a2a)
  store %struct.Memory* %call_400a2a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400a35	 Bytes: 7
  %loadMem_400a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a35 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a35)
  store %struct.Memory* %call_400a35, %struct.Memory** %MEMORY

  ; Code: .L_400a3c:	 RIP: 400a3c	 Bytes: 0
  br label %block_.L_400a3c
block_.L_400a3c:

  ; Code: cmpl $0x1, -0x4(%rbp)	 RIP: 400a3c	 Bytes: 4
  %loadMem_400a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a3c = call %struct.Memory* @routine_cmpl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a3c)
  store %struct.Memory* %call_400a3c, %struct.Memory** %MEMORY

  ; Code: jg .L_400abd	 RIP: 400a40	 Bytes: 6
  %loadMem_400a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a40 = call %struct.Memory* @routine_jg_.L_400abd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a40, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_400a40, %struct.Memory** %MEMORY

  %loadBr_400a40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a40 = icmp eq i8 %loadBr_400a40, 1
  br i1 %cmpBr_400a40, label %block_.L_400abd, label %block_400a46

block_400a46:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 400a46	 Bytes: 7
  %loadMem_400a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a46 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a46)
  store %struct.Memory* %call_400a46, %struct.Memory** %MEMORY

  ; Code: .L_400a4d:	 RIP: 400a4d	 Bytes: 0
  br label %block_.L_400a4d
block_.L_400a4d:

  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 400a4d	 Bytes: 4
  %loadMem_400a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a4d = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a4d)
  store %struct.Memory* %call_400a4d, %struct.Memory** %MEMORY

  ; Code: jg .L_400aaa	 RIP: 400a51	 Bytes: 6
  %loadMem_400a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a51 = call %struct.Memory* @routine_jg_.L_400aaa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a51, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_400a51, %struct.Memory** %MEMORY

  %loadBr_400a51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a51 = icmp eq i8 %loadBr_400a51, 1
  br i1 %cmpBr_400a51, label %block_.L_400aaa, label %block_400a57

block_400a57:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 400a57	 Bytes: 7
  %loadMem_400a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a57 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a57)
  store %struct.Memory* %call_400a57, %struct.Memory** %MEMORY

  ; Code: .L_400a5e:	 RIP: 400a5e	 Bytes: 0
  br label %block_.L_400a5e
block_.L_400a5e:

  ; Code: cmpl $0x3, -0xc(%rbp)	 RIP: 400a5e	 Bytes: 4
  %loadMem_400a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a5e = call %struct.Memory* @routine_cmpl__0x3__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a5e)
  store %struct.Memory* %call_400a5e, %struct.Memory** %MEMORY

  ; Code: jg .L_400a97	 RIP: 400a62	 Bytes: 6
  %loadMem_400a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a62 = call %struct.Memory* @routine_jg_.L_400a97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a62, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_400a62, %struct.Memory** %MEMORY

  %loadBr_400a62 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a62 = icmp eq i8 %loadBr_400a62, 1
  br i1 %cmpBr_400a62, label %block_.L_400a97, label %block_400a68

block_400a68:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 400a68	 Bytes: 3
  %loadMem_400a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a68 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a68)
  store %struct.Memory* %call_400a68, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 400a6b	 Bytes: 3
  %loadMem_400a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a6b = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a6b)
  store %struct.Memory* %call_400a6b, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400a6e	 Bytes: 3
  %loadMem_400a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a6e = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a6e)
  store %struct.Memory* %call_400a6e, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 400a71	 Bytes: 3
  %loadMem_400a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a71 = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a71)
  store %struct.Memory* %call_400a71, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 400a74	 Bytes: 2
  %loadMem_400a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a74 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a74)
  store %struct.Memory* %call_400a74, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %ecx	 RIP: 400a76	 Bytes: 3
  %loadMem_400a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a76 = call %struct.Memory* @routine_shll__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a76)
  store %struct.Memory* %call_400a76, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 400a79	 Bytes: 2
  %loadMem_400a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a79 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a79)
  store %struct.Memory* %call_400a79, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 400a7b	 Bytes: 3
  %loadMem_400a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a7b = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a7b)
  store %struct.Memory* %call_400a7b, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x6042a0(,%rsi,4)	 RIP: 400a7e	 Bytes: 11
  %loadMem_400a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a7e = call %struct.Memory* @routine_movl__0x1__0x6042a0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a7e)
  store %struct.Memory* %call_400a7e, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 400a89	 Bytes: 3
  %loadMem_400a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a89 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a89)
  store %struct.Memory* %call_400a89, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400a8c	 Bytes: 3
  %loadMem_400a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a8c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a8c)
  store %struct.Memory* %call_400a8c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 400a8f	 Bytes: 3
  %loadMem_400a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a8f = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a8f)
  store %struct.Memory* %call_400a8f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400a5e	 RIP: 400a92	 Bytes: 5
  %loadMem_400a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a92 = call %struct.Memory* @routine_jmpq_.L_400a5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a92, i64 -52, i64 5)
  store %struct.Memory* %call_400a92, %struct.Memory** %MEMORY

  br label %block_.L_400a5e

  ; Code: .L_400a97:	 RIP: 400a97	 Bytes: 0
block_.L_400a97:

  ; Code: jmpq .L_400a9c	 RIP: 400a97	 Bytes: 5
  %loadMem_400a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a97 = call %struct.Memory* @routine_jmpq_.L_400a9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a97, i64 5, i64 5)
  store %struct.Memory* %call_400a97, %struct.Memory** %MEMORY

  br label %block_.L_400a9c

  ; Code: .L_400a9c:	 RIP: 400a9c	 Bytes: 0
block_.L_400a9c:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 400a9c	 Bytes: 3
  %loadMem_400a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a9c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a9c)
  store %struct.Memory* %call_400a9c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400a9f	 Bytes: 3
  %loadMem_400a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a9f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a9f)
  store %struct.Memory* %call_400a9f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 400aa2	 Bytes: 3
  %loadMem_400aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aa2 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aa2)
  store %struct.Memory* %call_400aa2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400a4d	 RIP: 400aa5	 Bytes: 5
  %loadMem_400aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aa5 = call %struct.Memory* @routine_jmpq_.L_400a4d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aa5, i64 -88, i64 5)
  store %struct.Memory* %call_400aa5, %struct.Memory** %MEMORY

  br label %block_.L_400a4d

  ; Code: .L_400aaa:	 RIP: 400aaa	 Bytes: 0
block_.L_400aaa:

  ; Code: jmpq .L_400aaf	 RIP: 400aaa	 Bytes: 5
  %loadMem_400aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aaa = call %struct.Memory* @routine_jmpq_.L_400aaf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aaa, i64 5, i64 5)
  store %struct.Memory* %call_400aaa, %struct.Memory** %MEMORY

  br label %block_.L_400aaf

  ; Code: .L_400aaf:	 RIP: 400aaf	 Bytes: 0
block_.L_400aaf:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400aaf	 Bytes: 3
  %loadMem_400aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aaf = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aaf)
  store %struct.Memory* %call_400aaf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400ab2	 Bytes: 3
  %loadMem_400ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab2)
  store %struct.Memory* %call_400ab2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400ab5	 Bytes: 3
  %loadMem_400ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab5 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab5)
  store %struct.Memory* %call_400ab5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400a3c	 RIP: 400ab8	 Bytes: 5
  %loadMem_400ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab8 = call %struct.Memory* @routine_jmpq_.L_400a3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab8, i64 -124, i64 5)
  store %struct.Memory* %call_400ab8, %struct.Memory** %MEMORY

  br label %block_.L_400a3c

  ; Code: .L_400abd:	 RIP: 400abd	 Bytes: 0
block_.L_400abd:

  ; Code: movl $0x0, 0x6191f4	 RIP: 400abd	 Bytes: 11
  %loadMem_400abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400abd = call %struct.Memory* @routine_movl__0x0__0x6191f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400abd)
  store %struct.Memory* %call_400abd, %struct.Memory** %MEMORY

  ; Code: movl $0xc1, 0x610254	 RIP: 400ac8	 Bytes: 11
  %loadMem_400ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ac8 = call %struct.Memory* @routine_movl__0xc1__0x610254(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ac8)
  store %struct.Memory* %call_400ac8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400ad3	 Bytes: 7
  %loadMem_400ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ad3 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ad3)
  store %struct.Memory* %call_400ad3, %struct.Memory** %MEMORY

  ; Code: .L_400ada:	 RIP: 400ada	 Bytes: 0
  br label %block_.L_400ada
block_.L_400ada:

  ; Code: cmpl $0x0, -0x4(%rbp)	 RIP: 400ada	 Bytes: 4
  %loadMem_400ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ada = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ada)
  store %struct.Memory* %call_400ada, %struct.Memory** %MEMORY

  ; Code: jg .L_400b5b	 RIP: 400ade	 Bytes: 6
  %loadMem_400ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ade = call %struct.Memory* @routine_jg_.L_400b5b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ade, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_400ade, %struct.Memory** %MEMORY

  %loadBr_400ade = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ade = icmp eq i8 %loadBr_400ade, 1
  br i1 %cmpBr_400ade, label %block_.L_400b5b, label %block_400ae4

block_400ae4:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 400ae4	 Bytes: 7
  %loadMem_400ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ae4 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ae4)
  store %struct.Memory* %call_400ae4, %struct.Memory** %MEMORY

  ; Code: .L_400aeb:	 RIP: 400aeb	 Bytes: 0
  br label %block_.L_400aeb
block_.L_400aeb:

  ; Code: cmpl $0x3, -0x8(%rbp)	 RIP: 400aeb	 Bytes: 4
  %loadMem_400aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aeb = call %struct.Memory* @routine_cmpl__0x3__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aeb)
  store %struct.Memory* %call_400aeb, %struct.Memory** %MEMORY

  ; Code: jg .L_400b48	 RIP: 400aef	 Bytes: 6
  %loadMem_400aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aef = call %struct.Memory* @routine_jg_.L_400b48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aef, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_400aef, %struct.Memory** %MEMORY

  %loadBr_400aef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400aef = icmp eq i8 %loadBr_400aef, 1
  br i1 %cmpBr_400aef, label %block_.L_400b48, label %block_400af5

block_400af5:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 400af5	 Bytes: 7
  %loadMem_400af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400af5 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400af5)
  store %struct.Memory* %call_400af5, %struct.Memory** %MEMORY

  ; Code: .L_400afc:	 RIP: 400afc	 Bytes: 0
  br label %block_.L_400afc
block_.L_400afc:

  ; Code: cmpl $0x1, -0xc(%rbp)	 RIP: 400afc	 Bytes: 4
  %loadMem_400afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400afc = call %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400afc)
  store %struct.Memory* %call_400afc, %struct.Memory** %MEMORY

  ; Code: jg .L_400b35	 RIP: 400b00	 Bytes: 6
  %loadMem_400b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b00 = call %struct.Memory* @routine_jg_.L_400b35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b00, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_400b00, %struct.Memory** %MEMORY

  %loadBr_400b00 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b00 = icmp eq i8 %loadBr_400b00, 1
  br i1 %cmpBr_400b00, label %block_.L_400b35, label %block_400b06

block_400b06:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 400b06	 Bytes: 3
  %loadMem_400b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b06 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b06)
  store %struct.Memory* %call_400b06, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 400b09	 Bytes: 3
  %loadMem_400b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b09 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b09)
  store %struct.Memory* %call_400b09, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400b0c	 Bytes: 3
  %loadMem_400b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b0c = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b0c)
  store %struct.Memory* %call_400b0c, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 400b0f	 Bytes: 3
  %loadMem_400b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b0f = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b0f)
  store %struct.Memory* %call_400b0f, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 400b12	 Bytes: 2
  %loadMem_400b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b12 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b12)
  store %struct.Memory* %call_400b12, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %ecx	 RIP: 400b14	 Bytes: 3
  %loadMem_400b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b14 = call %struct.Memory* @routine_shll__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b14)
  store %struct.Memory* %call_400b14, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 400b17	 Bytes: 2
  %loadMem_400b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b17 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b17)
  store %struct.Memory* %call_400b17, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 400b19	 Bytes: 3
  %loadMem_400b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b19 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b19)
  store %struct.Memory* %call_400b19, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x604aa0(,%rsi,4)	 RIP: 400b1c	 Bytes: 11
  %loadMem_400b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b1c = call %struct.Memory* @routine_movl__0x1__0x604aa0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b1c)
  store %struct.Memory* %call_400b1c, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 400b27	 Bytes: 3
  %loadMem_400b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b27 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b27)
  store %struct.Memory* %call_400b27, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400b2a	 Bytes: 3
  %loadMem_400b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b2a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b2a)
  store %struct.Memory* %call_400b2a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 400b2d	 Bytes: 3
  %loadMem_400b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b2d = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b2d)
  store %struct.Memory* %call_400b2d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400afc	 RIP: 400b30	 Bytes: 5
  %loadMem_400b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b30 = call %struct.Memory* @routine_jmpq_.L_400afc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b30, i64 -52, i64 5)
  store %struct.Memory* %call_400b30, %struct.Memory** %MEMORY

  br label %block_.L_400afc

  ; Code: .L_400b35:	 RIP: 400b35	 Bytes: 0
block_.L_400b35:

  ; Code: jmpq .L_400b3a	 RIP: 400b35	 Bytes: 5
  %loadMem_400b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b35 = call %struct.Memory* @routine_jmpq_.L_400b3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b35, i64 5, i64 5)
  store %struct.Memory* %call_400b35, %struct.Memory** %MEMORY

  br label %block_.L_400b3a

  ; Code: .L_400b3a:	 RIP: 400b3a	 Bytes: 0
block_.L_400b3a:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 400b3a	 Bytes: 3
  %loadMem_400b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b3a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b3a)
  store %struct.Memory* %call_400b3a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400b3d	 Bytes: 3
  %loadMem_400b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b3d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b3d)
  store %struct.Memory* %call_400b3d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 400b40	 Bytes: 3
  %loadMem_400b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b40 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b40)
  store %struct.Memory* %call_400b40, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400aeb	 RIP: 400b43	 Bytes: 5
  %loadMem_400b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b43 = call %struct.Memory* @routine_jmpq_.L_400aeb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b43, i64 -88, i64 5)
  store %struct.Memory* %call_400b43, %struct.Memory** %MEMORY

  br label %block_.L_400aeb

  ; Code: .L_400b48:	 RIP: 400b48	 Bytes: 0
block_.L_400b48:

  ; Code: jmpq .L_400b4d	 RIP: 400b48	 Bytes: 5
  %loadMem_400b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b48 = call %struct.Memory* @routine_jmpq_.L_400b4d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b48, i64 5, i64 5)
  store %struct.Memory* %call_400b48, %struct.Memory** %MEMORY

  br label %block_.L_400b4d

  ; Code: .L_400b4d:	 RIP: 400b4d	 Bytes: 0
block_.L_400b4d:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400b4d	 Bytes: 3
  %loadMem_400b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b4d = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b4d)
  store %struct.Memory* %call_400b4d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400b50	 Bytes: 3
  %loadMem_400b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b50 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b50)
  store %struct.Memory* %call_400b50, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400b53	 Bytes: 3
  %loadMem_400b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b53 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b53)
  store %struct.Memory* %call_400b53, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400ada	 RIP: 400b56	 Bytes: 5
  %loadMem_400b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b56 = call %struct.Memory* @routine_jmpq_.L_400ada(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b56, i64 -124, i64 5)
  store %struct.Memory* %call_400b56, %struct.Memory** %MEMORY

  br label %block_.L_400ada

  ; Code: .L_400b5b:	 RIP: 400b5b	 Bytes: 0
block_.L_400b5b:

  ; Code: movl $0x0, 0x6191f8	 RIP: 400b5b	 Bytes: 11
  %loadMem_400b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b5b = call %struct.Memory* @routine_movl__0x0__0x6191f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b5b)
  store %struct.Memory* %call_400b5b, %struct.Memory** %MEMORY

  ; Code: movl $0x58, 0x610258	 RIP: 400b66	 Bytes: 11
  %loadMem_400b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b66 = call %struct.Memory* @routine_movl__0x58__0x610258(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b66)
  store %struct.Memory* %call_400b66, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400b71	 Bytes: 7
  %loadMem_400b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b71 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b71)
  store %struct.Memory* %call_400b71, %struct.Memory** %MEMORY

  ; Code: .L_400b78:	 RIP: 400b78	 Bytes: 0
  br label %block_.L_400b78
block_.L_400b78:

  ; Code: cmpl $0x1, -0x4(%rbp)	 RIP: 400b78	 Bytes: 4
  %loadMem_400b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b78 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b78)
  store %struct.Memory* %call_400b78, %struct.Memory** %MEMORY

  ; Code: jg .L_400bf9	 RIP: 400b7c	 Bytes: 6
  %loadMem_400b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b7c = call %struct.Memory* @routine_jg_.L_400bf9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b7c, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_400b7c, %struct.Memory** %MEMORY

  %loadBr_400b7c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b7c = icmp eq i8 %loadBr_400b7c, 1
  br i1 %cmpBr_400b7c, label %block_.L_400bf9, label %block_400b82

block_400b82:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 400b82	 Bytes: 7
  %loadMem_400b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b82 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b82)
  store %struct.Memory* %call_400b82, %struct.Memory** %MEMORY

  ; Code: .L_400b89:	 RIP: 400b89	 Bytes: 0
  br label %block_.L_400b89
block_.L_400b89:

  ; Code: cmpl $0x3, -0x8(%rbp)	 RIP: 400b89	 Bytes: 4
  %loadMem_400b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b89 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b89)
  store %struct.Memory* %call_400b89, %struct.Memory** %MEMORY

  ; Code: jg .L_400be6	 RIP: 400b8d	 Bytes: 6
  %loadMem_400b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b8d = call %struct.Memory* @routine_jg_.L_400be6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b8d, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_400b8d, %struct.Memory** %MEMORY

  %loadBr_400b8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b8d = icmp eq i8 %loadBr_400b8d, 1
  br i1 %cmpBr_400b8d, label %block_.L_400be6, label %block_400b93

block_400b93:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 400b93	 Bytes: 7
  %loadMem_400b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b93 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b93)
  store %struct.Memory* %call_400b93, %struct.Memory** %MEMORY

  ; Code: .L_400b9a:	 RIP: 400b9a	 Bytes: 0
  br label %block_.L_400b9a
block_.L_400b9a:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 400b9a	 Bytes: 4
  %loadMem_400b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b9a = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b9a)
  store %struct.Memory* %call_400b9a, %struct.Memory** %MEMORY

  ; Code: jg .L_400bd3	 RIP: 400b9e	 Bytes: 6
  %loadMem_400b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b9e = call %struct.Memory* @routine_jg_.L_400bd3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b9e, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_400b9e, %struct.Memory** %MEMORY

  %loadBr_400b9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b9e = icmp eq i8 %loadBr_400b9e, 1
  br i1 %cmpBr_400b9e, label %block_.L_400bd3, label %block_400ba4

block_400ba4:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 400ba4	 Bytes: 3
  %loadMem_400ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ba4 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ba4)
  store %struct.Memory* %call_400ba4, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 400ba7	 Bytes: 3
  %loadMem_400ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ba7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ba7)
  store %struct.Memory* %call_400ba7, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400baa	 Bytes: 3
  %loadMem_400baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400baa = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400baa)
  store %struct.Memory* %call_400baa, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 400bad	 Bytes: 3
  %loadMem_400bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bad = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bad)
  store %struct.Memory* %call_400bad, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 400bb0	 Bytes: 2
  %loadMem_400bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bb0 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bb0)
  store %struct.Memory* %call_400bb0, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %ecx	 RIP: 400bb2	 Bytes: 3
  %loadMem_400bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bb2 = call %struct.Memory* @routine_shll__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bb2)
  store %struct.Memory* %call_400bb2, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 400bb5	 Bytes: 2
  %loadMem_400bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bb5 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bb5)
  store %struct.Memory* %call_400bb5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 400bb7	 Bytes: 3
  %loadMem_400bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bb7 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bb7)
  store %struct.Memory* %call_400bb7, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x6052a0(,%rsi,4)	 RIP: 400bba	 Bytes: 11
  %loadMem_400bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bba = call %struct.Memory* @routine_movl__0x1__0x6052a0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bba)
  store %struct.Memory* %call_400bba, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 400bc5	 Bytes: 3
  %loadMem_400bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bc5 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bc5)
  store %struct.Memory* %call_400bc5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400bc8	 Bytes: 3
  %loadMem_400bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bc8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bc8)
  store %struct.Memory* %call_400bc8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 400bcb	 Bytes: 3
  %loadMem_400bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bcb = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bcb)
  store %struct.Memory* %call_400bcb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400b9a	 RIP: 400bce	 Bytes: 5
  %loadMem_400bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bce = call %struct.Memory* @routine_jmpq_.L_400b9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bce, i64 -52, i64 5)
  store %struct.Memory* %call_400bce, %struct.Memory** %MEMORY

  br label %block_.L_400b9a

  ; Code: .L_400bd3:	 RIP: 400bd3	 Bytes: 0
block_.L_400bd3:

  ; Code: jmpq .L_400bd8	 RIP: 400bd3	 Bytes: 5
  %loadMem_400bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bd3 = call %struct.Memory* @routine_jmpq_.L_400bd8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bd3, i64 5, i64 5)
  store %struct.Memory* %call_400bd3, %struct.Memory** %MEMORY

  br label %block_.L_400bd8

  ; Code: .L_400bd8:	 RIP: 400bd8	 Bytes: 0
block_.L_400bd8:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 400bd8	 Bytes: 3
  %loadMem_400bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bd8 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bd8)
  store %struct.Memory* %call_400bd8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400bdb	 Bytes: 3
  %loadMem_400bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bdb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bdb)
  store %struct.Memory* %call_400bdb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 400bde	 Bytes: 3
  %loadMem_400bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bde = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bde)
  store %struct.Memory* %call_400bde, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400b89	 RIP: 400be1	 Bytes: 5
  %loadMem_400be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400be1 = call %struct.Memory* @routine_jmpq_.L_400b89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400be1, i64 -88, i64 5)
  store %struct.Memory* %call_400be1, %struct.Memory** %MEMORY

  br label %block_.L_400b89

  ; Code: .L_400be6:	 RIP: 400be6	 Bytes: 0
block_.L_400be6:

  ; Code: jmpq .L_400beb	 RIP: 400be6	 Bytes: 5
  %loadMem_400be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400be6 = call %struct.Memory* @routine_jmpq_.L_400beb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400be6, i64 5, i64 5)
  store %struct.Memory* %call_400be6, %struct.Memory** %MEMORY

  br label %block_.L_400beb

  ; Code: .L_400beb:	 RIP: 400beb	 Bytes: 0
block_.L_400beb:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400beb	 Bytes: 3
  %loadMem_400beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400beb = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400beb)
  store %struct.Memory* %call_400beb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400bee	 Bytes: 3
  %loadMem_400bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bee = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bee)
  store %struct.Memory* %call_400bee, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400bf1	 Bytes: 3
  %loadMem_400bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bf1 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bf1)
  store %struct.Memory* %call_400bf1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400b78	 RIP: 400bf4	 Bytes: 5
  %loadMem_400bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bf4 = call %struct.Memory* @routine_jmpq_.L_400b78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bf4, i64 -124, i64 5)
  store %struct.Memory* %call_400bf4, %struct.Memory** %MEMORY

  br label %block_.L_400b78

  ; Code: .L_400bf9:	 RIP: 400bf9	 Bytes: 0
block_.L_400bf9:

  ; Code: movl $0x0, 0x6191fc	 RIP: 400bf9	 Bytes: 11
  %loadMem_400bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bf9 = call %struct.Memory* @routine_movl__0x0__0x6191fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bf9)
  store %struct.Memory* %call_400bf9, %struct.Memory** %MEMORY

  ; Code: movl $0x19, 0x61025c	 RIP: 400c04	 Bytes: 11
  %loadMem_400c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c04 = call %struct.Memory* @routine_movl__0x19__0x61025c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c04)
  store %struct.Memory* %call_400c04, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400c0f	 Bytes: 7
  %loadMem_400c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c0f = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c0f)
  store %struct.Memory* %call_400c0f, %struct.Memory** %MEMORY

  ; Code: .L_400c16:	 RIP: 400c16	 Bytes: 0
  br label %block_.L_400c16
block_.L_400c16:

  ; Code: cmpl $0x3, -0x4(%rbp)	 RIP: 400c16	 Bytes: 4
  %loadMem_400c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c16 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c16)
  store %struct.Memory* %call_400c16, %struct.Memory** %MEMORY

  ; Code: jg .L_400c97	 RIP: 400c1a	 Bytes: 6
  %loadMem_400c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c1a = call %struct.Memory* @routine_jg_.L_400c97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c1a, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_400c1a, %struct.Memory** %MEMORY

  %loadBr_400c1a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c1a = icmp eq i8 %loadBr_400c1a, 1
  br i1 %cmpBr_400c1a, label %block_.L_400c97, label %block_400c20

block_400c20:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 400c20	 Bytes: 7
  %loadMem_400c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c20 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c20)
  store %struct.Memory* %call_400c20, %struct.Memory** %MEMORY

  ; Code: .L_400c27:	 RIP: 400c27	 Bytes: 0
  br label %block_.L_400c27
block_.L_400c27:

  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 400c27	 Bytes: 4
  %loadMem_400c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c27 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c27)
  store %struct.Memory* %call_400c27, %struct.Memory** %MEMORY

  ; Code: jg .L_400c84	 RIP: 400c2b	 Bytes: 6
  %loadMem_400c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c2b = call %struct.Memory* @routine_jg_.L_400c84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c2b, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_400c2b, %struct.Memory** %MEMORY

  %loadBr_400c2b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c2b = icmp eq i8 %loadBr_400c2b, 1
  br i1 %cmpBr_400c2b, label %block_.L_400c84, label %block_400c31

block_400c31:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 400c31	 Bytes: 7
  %loadMem_400c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c31 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c31)
  store %struct.Memory* %call_400c31, %struct.Memory** %MEMORY

  ; Code: .L_400c38:	 RIP: 400c38	 Bytes: 0
  br label %block_.L_400c38
block_.L_400c38:

  ; Code: cmpl $0x1, -0xc(%rbp)	 RIP: 400c38	 Bytes: 4
  %loadMem_400c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c38 = call %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c38)
  store %struct.Memory* %call_400c38, %struct.Memory** %MEMORY

  ; Code: jg .L_400c71	 RIP: 400c3c	 Bytes: 6
  %loadMem_400c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c3c = call %struct.Memory* @routine_jg_.L_400c71(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c3c, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_400c3c, %struct.Memory** %MEMORY

  %loadBr_400c3c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c3c = icmp eq i8 %loadBr_400c3c, 1
  br i1 %cmpBr_400c3c, label %block_.L_400c71, label %block_400c42

block_400c42:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 400c42	 Bytes: 3
  %loadMem_400c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c42 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c42)
  store %struct.Memory* %call_400c42, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 400c45	 Bytes: 3
  %loadMem_400c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c45 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c45)
  store %struct.Memory* %call_400c45, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400c48	 Bytes: 3
  %loadMem_400c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c48 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c48)
  store %struct.Memory* %call_400c48, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 400c4b	 Bytes: 3
  %loadMem_400c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c4b = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c4b)
  store %struct.Memory* %call_400c4b, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 400c4e	 Bytes: 2
  %loadMem_400c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c4e = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c4e)
  store %struct.Memory* %call_400c4e, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %ecx	 RIP: 400c50	 Bytes: 3
  %loadMem_400c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c50 = call %struct.Memory* @routine_shll__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c50)
  store %struct.Memory* %call_400c50, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 400c53	 Bytes: 2
  %loadMem_400c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c53 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c53)
  store %struct.Memory* %call_400c53, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 400c55	 Bytes: 3
  %loadMem_400c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c55 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c55)
  store %struct.Memory* %call_400c55, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x605aa0(,%rsi,4)	 RIP: 400c58	 Bytes: 11
  %loadMem_400c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c58 = call %struct.Memory* @routine_movl__0x1__0x605aa0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c58)
  store %struct.Memory* %call_400c58, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 400c63	 Bytes: 3
  %loadMem_400c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c63 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c63)
  store %struct.Memory* %call_400c63, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400c66	 Bytes: 3
  %loadMem_400c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c66 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c66)
  store %struct.Memory* %call_400c66, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 400c69	 Bytes: 3
  %loadMem_400c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c69 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c69)
  store %struct.Memory* %call_400c69, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400c38	 RIP: 400c6c	 Bytes: 5
  %loadMem_400c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c6c = call %struct.Memory* @routine_jmpq_.L_400c38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c6c, i64 -52, i64 5)
  store %struct.Memory* %call_400c6c, %struct.Memory** %MEMORY

  br label %block_.L_400c38

  ; Code: .L_400c71:	 RIP: 400c71	 Bytes: 0
block_.L_400c71:

  ; Code: jmpq .L_400c76	 RIP: 400c71	 Bytes: 5
  %loadMem_400c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c71 = call %struct.Memory* @routine_jmpq_.L_400c76(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c71, i64 5, i64 5)
  store %struct.Memory* %call_400c71, %struct.Memory** %MEMORY

  br label %block_.L_400c76

  ; Code: .L_400c76:	 RIP: 400c76	 Bytes: 0
block_.L_400c76:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 400c76	 Bytes: 3
  %loadMem_400c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c76 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c76)
  store %struct.Memory* %call_400c76, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400c79	 Bytes: 3
  %loadMem_400c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c79 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c79)
  store %struct.Memory* %call_400c79, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 400c7c	 Bytes: 3
  %loadMem_400c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c7c = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c7c)
  store %struct.Memory* %call_400c7c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400c27	 RIP: 400c7f	 Bytes: 5
  %loadMem_400c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c7f = call %struct.Memory* @routine_jmpq_.L_400c27(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c7f, i64 -88, i64 5)
  store %struct.Memory* %call_400c7f, %struct.Memory** %MEMORY

  br label %block_.L_400c27

  ; Code: .L_400c84:	 RIP: 400c84	 Bytes: 0
block_.L_400c84:

  ; Code: jmpq .L_400c89	 RIP: 400c84	 Bytes: 5
  %loadMem_400c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c84 = call %struct.Memory* @routine_jmpq_.L_400c89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c84, i64 5, i64 5)
  store %struct.Memory* %call_400c84, %struct.Memory** %MEMORY

  br label %block_.L_400c89

  ; Code: .L_400c89:	 RIP: 400c89	 Bytes: 0
block_.L_400c89:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400c89	 Bytes: 3
  %loadMem_400c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c89 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c89)
  store %struct.Memory* %call_400c89, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400c8c	 Bytes: 3
  %loadMem_400c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c8c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c8c)
  store %struct.Memory* %call_400c8c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400c8f	 Bytes: 3
  %loadMem_400c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c8f = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c8f)
  store %struct.Memory* %call_400c8f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400c16	 RIP: 400c92	 Bytes: 5
  %loadMem_400c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c92 = call %struct.Memory* @routine_jmpq_.L_400c16(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c92, i64 -124, i64 5)
  store %struct.Memory* %call_400c92, %struct.Memory** %MEMORY

  br label %block_.L_400c16

  ; Code: .L_400c97:	 RIP: 400c97	 Bytes: 0
block_.L_400c97:

  ; Code: movl $0x0, 0x619200	 RIP: 400c97	 Bytes: 11
  %loadMem_400c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c97 = call %struct.Memory* @routine_movl__0x0__0x619200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c97)
  store %struct.Memory* %call_400c97, %struct.Memory** %MEMORY

  ; Code: movl $0x43, 0x610260	 RIP: 400ca2	 Bytes: 11
  %loadMem_400ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ca2 = call %struct.Memory* @routine_movl__0x43__0x610260(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ca2)
  store %struct.Memory* %call_400ca2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400cad	 Bytes: 7
  %loadMem_400cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cad = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cad)
  store %struct.Memory* %call_400cad, %struct.Memory** %MEMORY

  ; Code: .L_400cb4:	 RIP: 400cb4	 Bytes: 0
  br label %block_.L_400cb4
block_.L_400cb4:

  ; Code: cmpl $0x0, -0x4(%rbp)	 RIP: 400cb4	 Bytes: 4
  %loadMem_400cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cb4 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cb4)
  store %struct.Memory* %call_400cb4, %struct.Memory** %MEMORY

  ; Code: jg .L_400d35	 RIP: 400cb8	 Bytes: 6
  %loadMem_400cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cb8 = call %struct.Memory* @routine_jg_.L_400d35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cb8, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_400cb8, %struct.Memory** %MEMORY

  %loadBr_400cb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400cb8 = icmp eq i8 %loadBr_400cb8, 1
  br i1 %cmpBr_400cb8, label %block_.L_400d35, label %block_400cbe

block_400cbe:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 400cbe	 Bytes: 7
  %loadMem_400cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cbe = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cbe)
  store %struct.Memory* %call_400cbe, %struct.Memory** %MEMORY

  ; Code: .L_400cc5:	 RIP: 400cc5	 Bytes: 0
  br label %block_.L_400cc5
block_.L_400cc5:

  ; Code: cmpl $0x1, -0x8(%rbp)	 RIP: 400cc5	 Bytes: 4
  %loadMem_400cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cc5 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cc5)
  store %struct.Memory* %call_400cc5, %struct.Memory** %MEMORY

  ; Code: jg .L_400d22	 RIP: 400cc9	 Bytes: 6
  %loadMem_400cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cc9 = call %struct.Memory* @routine_jg_.L_400d22(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cc9, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_400cc9, %struct.Memory** %MEMORY

  %loadBr_400cc9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400cc9 = icmp eq i8 %loadBr_400cc9, 1
  br i1 %cmpBr_400cc9, label %block_.L_400d22, label %block_400ccf

block_400ccf:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 400ccf	 Bytes: 7
  %loadMem_400ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ccf = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ccf)
  store %struct.Memory* %call_400ccf, %struct.Memory** %MEMORY

  ; Code: .L_400cd6:	 RIP: 400cd6	 Bytes: 0
  br label %block_.L_400cd6
block_.L_400cd6:

  ; Code: cmpl $0x3, -0xc(%rbp)	 RIP: 400cd6	 Bytes: 4
  %loadMem_400cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd6 = call %struct.Memory* @routine_cmpl__0x3__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd6)
  store %struct.Memory* %call_400cd6, %struct.Memory** %MEMORY

  ; Code: jg .L_400d0f	 RIP: 400cda	 Bytes: 6
  %loadMem_400cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cda = call %struct.Memory* @routine_jg_.L_400d0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cda, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_400cda, %struct.Memory** %MEMORY

  %loadBr_400cda = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400cda = icmp eq i8 %loadBr_400cda, 1
  br i1 %cmpBr_400cda, label %block_.L_400d0f, label %block_400ce0

block_400ce0:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 400ce0	 Bytes: 3
  %loadMem_400ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce0 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce0)
  store %struct.Memory* %call_400ce0, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 400ce3	 Bytes: 3
  %loadMem_400ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce3 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce3)
  store %struct.Memory* %call_400ce3, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400ce6	 Bytes: 3
  %loadMem_400ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce6 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce6)
  store %struct.Memory* %call_400ce6, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 400ce9	 Bytes: 3
  %loadMem_400ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce9 = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce9)
  store %struct.Memory* %call_400ce9, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 400cec	 Bytes: 2
  %loadMem_400cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cec = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cec)
  store %struct.Memory* %call_400cec, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %ecx	 RIP: 400cee	 Bytes: 3
  %loadMem_400cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cee = call %struct.Memory* @routine_shll__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cee)
  store %struct.Memory* %call_400cee, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 400cf1	 Bytes: 2
  %loadMem_400cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf1 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf1)
  store %struct.Memory* %call_400cf1, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 400cf3	 Bytes: 3
  %loadMem_400cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf3 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf3)
  store %struct.Memory* %call_400cf3, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x6062a0(,%rsi,4)	 RIP: 400cf6	 Bytes: 11
  %loadMem_400cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf6 = call %struct.Memory* @routine_movl__0x1__0x6062a0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf6)
  store %struct.Memory* %call_400cf6, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 400d01	 Bytes: 3
  %loadMem_400d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d01 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d01)
  store %struct.Memory* %call_400d01, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400d04	 Bytes: 3
  %loadMem_400d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d04 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d04)
  store %struct.Memory* %call_400d04, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 400d07	 Bytes: 3
  %loadMem_400d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d07 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d07)
  store %struct.Memory* %call_400d07, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400cd6	 RIP: 400d0a	 Bytes: 5
  %loadMem_400d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0a = call %struct.Memory* @routine_jmpq_.L_400cd6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0a, i64 -52, i64 5)
  store %struct.Memory* %call_400d0a, %struct.Memory** %MEMORY

  br label %block_.L_400cd6

  ; Code: .L_400d0f:	 RIP: 400d0f	 Bytes: 0
block_.L_400d0f:

  ; Code: jmpq .L_400d14	 RIP: 400d0f	 Bytes: 5
  %loadMem_400d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0f = call %struct.Memory* @routine_jmpq_.L_400d14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0f, i64 5, i64 5)
  store %struct.Memory* %call_400d0f, %struct.Memory** %MEMORY

  br label %block_.L_400d14

  ; Code: .L_400d14:	 RIP: 400d14	 Bytes: 0
block_.L_400d14:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 400d14	 Bytes: 3
  %loadMem_400d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d14 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d14)
  store %struct.Memory* %call_400d14, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400d17	 Bytes: 3
  %loadMem_400d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d17 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d17)
  store %struct.Memory* %call_400d17, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 400d1a	 Bytes: 3
  %loadMem_400d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d1a = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d1a)
  store %struct.Memory* %call_400d1a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400cc5	 RIP: 400d1d	 Bytes: 5
  %loadMem_400d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d1d = call %struct.Memory* @routine_jmpq_.L_400cc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d1d, i64 -88, i64 5)
  store %struct.Memory* %call_400d1d, %struct.Memory** %MEMORY

  br label %block_.L_400cc5

  ; Code: .L_400d22:	 RIP: 400d22	 Bytes: 0
block_.L_400d22:

  ; Code: jmpq .L_400d27	 RIP: 400d22	 Bytes: 5
  %loadMem_400d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d22 = call %struct.Memory* @routine_jmpq_.L_400d27(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d22, i64 5, i64 5)
  store %struct.Memory* %call_400d22, %struct.Memory** %MEMORY

  br label %block_.L_400d27

  ; Code: .L_400d27:	 RIP: 400d27	 Bytes: 0
block_.L_400d27:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400d27	 Bytes: 3
  %loadMem_400d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d27 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d27)
  store %struct.Memory* %call_400d27, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400d2a	 Bytes: 3
  %loadMem_400d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d2a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d2a)
  store %struct.Memory* %call_400d2a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400d2d	 Bytes: 3
  %loadMem_400d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d2d = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d2d)
  store %struct.Memory* %call_400d2d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400cb4	 RIP: 400d30	 Bytes: 5
  %loadMem_400d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d30 = call %struct.Memory* @routine_jmpq_.L_400cb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d30, i64 -124, i64 5)
  store %struct.Memory* %call_400d30, %struct.Memory** %MEMORY

  br label %block_.L_400cb4

  ; Code: .L_400d35:	 RIP: 400d35	 Bytes: 0
block_.L_400d35:

  ; Code: movl $0x0, 0x619204	 RIP: 400d35	 Bytes: 11
  %loadMem_400d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d35 = call %struct.Memory* @routine_movl__0x0__0x619204(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d35)
  store %struct.Memory* %call_400d35, %struct.Memory** %MEMORY

  ; Code: movl $0xc8, 0x610264	 RIP: 400d40	 Bytes: 11
  %loadMem_400d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d40 = call %struct.Memory* @routine_movl__0xc8__0x610264(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d40)
  store %struct.Memory* %call_400d40, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400d4b	 Bytes: 7
  %loadMem_400d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d4b = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d4b)
  store %struct.Memory* %call_400d4b, %struct.Memory** %MEMORY

  ; Code: .L_400d52:	 RIP: 400d52	 Bytes: 0
  br label %block_.L_400d52
block_.L_400d52:

  ; Code: cmpl $0x2, -0x4(%rbp)	 RIP: 400d52	 Bytes: 4
  %loadMem_400d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d52 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d52)
  store %struct.Memory* %call_400d52, %struct.Memory** %MEMORY

  ; Code: jg .L_400dd3	 RIP: 400d56	 Bytes: 6
  %loadMem_400d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d56 = call %struct.Memory* @routine_jg_.L_400dd3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d56, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_400d56, %struct.Memory** %MEMORY

  %loadBr_400d56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d56 = icmp eq i8 %loadBr_400d56, 1
  br i1 %cmpBr_400d56, label %block_.L_400dd3, label %block_400d5c

block_400d5c:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 400d5c	 Bytes: 7
  %loadMem_400d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d5c = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d5c)
  store %struct.Memory* %call_400d5c, %struct.Memory** %MEMORY

  ; Code: .L_400d63:	 RIP: 400d63	 Bytes: 0
  br label %block_.L_400d63
block_.L_400d63:

  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 400d63	 Bytes: 4
  %loadMem_400d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d63 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d63)
  store %struct.Memory* %call_400d63, %struct.Memory** %MEMORY

  ; Code: jg .L_400dc0	 RIP: 400d67	 Bytes: 6
  %loadMem_400d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d67 = call %struct.Memory* @routine_jg_.L_400dc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d67, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_400d67, %struct.Memory** %MEMORY

  %loadBr_400d67 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d67 = icmp eq i8 %loadBr_400d67, 1
  br i1 %cmpBr_400d67, label %block_.L_400dc0, label %block_400d6d

block_400d6d:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 400d6d	 Bytes: 7
  %loadMem_400d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d6d = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d6d)
  store %struct.Memory* %call_400d6d, %struct.Memory** %MEMORY

  ; Code: .L_400d74:	 RIP: 400d74	 Bytes: 0
  br label %block_.L_400d74
block_.L_400d74:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 400d74	 Bytes: 4
  %loadMem_400d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d74 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d74)
  store %struct.Memory* %call_400d74, %struct.Memory** %MEMORY

  ; Code: jg .L_400dad	 RIP: 400d78	 Bytes: 6
  %loadMem_400d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d78 = call %struct.Memory* @routine_jg_.L_400dad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d78, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_400d78, %struct.Memory** %MEMORY

  %loadBr_400d78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d78 = icmp eq i8 %loadBr_400d78, 1
  br i1 %cmpBr_400d78, label %block_.L_400dad, label %block_400d7e

block_400d7e:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 400d7e	 Bytes: 3
  %loadMem_400d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d7e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d7e)
  store %struct.Memory* %call_400d7e, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 400d81	 Bytes: 3
  %loadMem_400d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d81 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d81)
  store %struct.Memory* %call_400d81, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400d84	 Bytes: 3
  %loadMem_400d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d84 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d84)
  store %struct.Memory* %call_400d84, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 400d87	 Bytes: 3
  %loadMem_400d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d87 = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d87)
  store %struct.Memory* %call_400d87, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 400d8a	 Bytes: 2
  %loadMem_400d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8a = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8a)
  store %struct.Memory* %call_400d8a, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %ecx	 RIP: 400d8c	 Bytes: 3
  %loadMem_400d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8c = call %struct.Memory* @routine_shll__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8c)
  store %struct.Memory* %call_400d8c, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 400d8f	 Bytes: 2
  %loadMem_400d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8f = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8f)
  store %struct.Memory* %call_400d8f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 400d91	 Bytes: 3
  %loadMem_400d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d91 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d91)
  store %struct.Memory* %call_400d91, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x606aa0(,%rsi,4)	 RIP: 400d94	 Bytes: 11
  %loadMem_400d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d94 = call %struct.Memory* @routine_movl__0x1__0x606aa0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d94)
  store %struct.Memory* %call_400d94, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 400d9f	 Bytes: 3
  %loadMem_400d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d9f = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d9f)
  store %struct.Memory* %call_400d9f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400da2	 Bytes: 3
  %loadMem_400da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da2)
  store %struct.Memory* %call_400da2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 400da5	 Bytes: 3
  %loadMem_400da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da5 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da5)
  store %struct.Memory* %call_400da5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d74	 RIP: 400da8	 Bytes: 5
  %loadMem_400da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da8 = call %struct.Memory* @routine_jmpq_.L_400d74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da8, i64 -52, i64 5)
  store %struct.Memory* %call_400da8, %struct.Memory** %MEMORY

  br label %block_.L_400d74

  ; Code: .L_400dad:	 RIP: 400dad	 Bytes: 0
block_.L_400dad:

  ; Code: jmpq .L_400db2	 RIP: 400dad	 Bytes: 5
  %loadMem_400dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dad = call %struct.Memory* @routine_jmpq_.L_400db2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dad, i64 5, i64 5)
  store %struct.Memory* %call_400dad, %struct.Memory** %MEMORY

  br label %block_.L_400db2

  ; Code: .L_400db2:	 RIP: 400db2	 Bytes: 0
block_.L_400db2:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 400db2	 Bytes: 3
  %loadMem_400db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db2 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db2)
  store %struct.Memory* %call_400db2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400db5	 Bytes: 3
  %loadMem_400db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db5)
  store %struct.Memory* %call_400db5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 400db8	 Bytes: 3
  %loadMem_400db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db8 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db8)
  store %struct.Memory* %call_400db8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d63	 RIP: 400dbb	 Bytes: 5
  %loadMem_400dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dbb = call %struct.Memory* @routine_jmpq_.L_400d63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dbb, i64 -88, i64 5)
  store %struct.Memory* %call_400dbb, %struct.Memory** %MEMORY

  br label %block_.L_400d63

  ; Code: .L_400dc0:	 RIP: 400dc0	 Bytes: 0
block_.L_400dc0:

  ; Code: jmpq .L_400dc5	 RIP: 400dc0	 Bytes: 5
  %loadMem_400dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc0 = call %struct.Memory* @routine_jmpq_.L_400dc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc0, i64 5, i64 5)
  store %struct.Memory* %call_400dc0, %struct.Memory** %MEMORY

  br label %block_.L_400dc5

  ; Code: .L_400dc5:	 RIP: 400dc5	 Bytes: 0
block_.L_400dc5:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400dc5	 Bytes: 3
  %loadMem_400dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc5 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc5)
  store %struct.Memory* %call_400dc5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400dc8	 Bytes: 3
  %loadMem_400dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc8)
  store %struct.Memory* %call_400dc8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400dcb	 Bytes: 3
  %loadMem_400dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dcb = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dcb)
  store %struct.Memory* %call_400dcb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d52	 RIP: 400dce	 Bytes: 5
  %loadMem_400dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dce = call %struct.Memory* @routine_jmpq_.L_400d52(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dce, i64 -124, i64 5)
  store %struct.Memory* %call_400dce, %struct.Memory** %MEMORY

  br label %block_.L_400d52

  ; Code: .L_400dd3:	 RIP: 400dd3	 Bytes: 0
block_.L_400dd3:

  ; Code: movl $0x1, 0x619208	 RIP: 400dd3	 Bytes: 11
  %loadMem_400dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd3 = call %struct.Memory* @routine_movl__0x1__0x619208(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd3)
  store %struct.Memory* %call_400dd3, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x610268	 RIP: 400dde	 Bytes: 11
  %loadMem_400dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dde = call %struct.Memory* @routine_movl__0x2__0x610268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dde)
  store %struct.Memory* %call_400dde, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400de9	 Bytes: 7
  %loadMem_400de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de9 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de9)
  store %struct.Memory* %call_400de9, %struct.Memory** %MEMORY

  ; Code: .L_400df0:	 RIP: 400df0	 Bytes: 0
  br label %block_.L_400df0
block_.L_400df0:

  ; Code: cmpl $0x0, -0x4(%rbp)	 RIP: 400df0	 Bytes: 4
  %loadMem_400df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df0 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df0)
  store %struct.Memory* %call_400df0, %struct.Memory** %MEMORY

  ; Code: jg .L_400e71	 RIP: 400df4	 Bytes: 6
  %loadMem_400df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df4 = call %struct.Memory* @routine_jg_.L_400e71(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df4, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_400df4, %struct.Memory** %MEMORY

  %loadBr_400df4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400df4 = icmp eq i8 %loadBr_400df4, 1
  br i1 %cmpBr_400df4, label %block_.L_400e71, label %block_400dfa

block_400dfa:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 400dfa	 Bytes: 7
  %loadMem_400dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dfa = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dfa)
  store %struct.Memory* %call_400dfa, %struct.Memory** %MEMORY

  ; Code: .L_400e01:	 RIP: 400e01	 Bytes: 0
  br label %block_.L_400e01
block_.L_400e01:

  ; Code: cmpl $0x2, -0x8(%rbp)	 RIP: 400e01	 Bytes: 4
  %loadMem_400e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e01 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e01)
  store %struct.Memory* %call_400e01, %struct.Memory** %MEMORY

  ; Code: jg .L_400e5e	 RIP: 400e05	 Bytes: 6
  %loadMem_400e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e05 = call %struct.Memory* @routine_jg_.L_400e5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e05, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_400e05, %struct.Memory** %MEMORY

  %loadBr_400e05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e05 = icmp eq i8 %loadBr_400e05, 1
  br i1 %cmpBr_400e05, label %block_.L_400e5e, label %block_400e0b

block_400e0b:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 400e0b	 Bytes: 7
  %loadMem_400e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e0b = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e0b)
  store %struct.Memory* %call_400e0b, %struct.Memory** %MEMORY

  ; Code: .L_400e12:	 RIP: 400e12	 Bytes: 0
  br label %block_.L_400e12
block_.L_400e12:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 400e12	 Bytes: 4
  %loadMem_400e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e12 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e12)
  store %struct.Memory* %call_400e12, %struct.Memory** %MEMORY

  ; Code: jg .L_400e4b	 RIP: 400e16	 Bytes: 6
  %loadMem_400e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e16 = call %struct.Memory* @routine_jg_.L_400e4b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e16, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_400e16, %struct.Memory** %MEMORY

  %loadBr_400e16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e16 = icmp eq i8 %loadBr_400e16, 1
  br i1 %cmpBr_400e16, label %block_.L_400e4b, label %block_400e1c

block_400e1c:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 400e1c	 Bytes: 3
  %loadMem_400e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1c)
  store %struct.Memory* %call_400e1c, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 400e1f	 Bytes: 3
  %loadMem_400e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1f = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1f)
  store %struct.Memory* %call_400e1f, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400e22	 Bytes: 3
  %loadMem_400e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e22 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e22)
  store %struct.Memory* %call_400e22, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 400e25	 Bytes: 3
  %loadMem_400e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e25 = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e25)
  store %struct.Memory* %call_400e25, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 400e28	 Bytes: 2
  %loadMem_400e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e28 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e28)
  store %struct.Memory* %call_400e28, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %ecx	 RIP: 400e2a	 Bytes: 3
  %loadMem_400e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e2a = call %struct.Memory* @routine_shll__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e2a)
  store %struct.Memory* %call_400e2a, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 400e2d	 Bytes: 2
  %loadMem_400e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e2d = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e2d)
  store %struct.Memory* %call_400e2d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 400e2f	 Bytes: 3
  %loadMem_400e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e2f = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e2f)
  store %struct.Memory* %call_400e2f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x6072a0(,%rsi,4)	 RIP: 400e32	 Bytes: 11
  %loadMem_400e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e32 = call %struct.Memory* @routine_movl__0x1__0x6072a0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e32)
  store %struct.Memory* %call_400e32, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 400e3d	 Bytes: 3
  %loadMem_400e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e3d = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e3d)
  store %struct.Memory* %call_400e3d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400e40	 Bytes: 3
  %loadMem_400e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e40 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e40)
  store %struct.Memory* %call_400e40, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 400e43	 Bytes: 3
  %loadMem_400e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e43 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e43)
  store %struct.Memory* %call_400e43, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400e12	 RIP: 400e46	 Bytes: 5
  %loadMem_400e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e46 = call %struct.Memory* @routine_jmpq_.L_400e12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e46, i64 -52, i64 5)
  store %struct.Memory* %call_400e46, %struct.Memory** %MEMORY

  br label %block_.L_400e12

  ; Code: .L_400e4b:	 RIP: 400e4b	 Bytes: 0
block_.L_400e4b:

  ; Code: jmpq .L_400e50	 RIP: 400e4b	 Bytes: 5
  %loadMem_400e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4b = call %struct.Memory* @routine_jmpq_.L_400e50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4b, i64 5, i64 5)
  store %struct.Memory* %call_400e4b, %struct.Memory** %MEMORY

  br label %block_.L_400e50

  ; Code: .L_400e50:	 RIP: 400e50	 Bytes: 0
block_.L_400e50:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 400e50	 Bytes: 3
  %loadMem_400e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e50 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e50)
  store %struct.Memory* %call_400e50, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400e53	 Bytes: 3
  %loadMem_400e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e53 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e53)
  store %struct.Memory* %call_400e53, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 400e56	 Bytes: 3
  %loadMem_400e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e56 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e56)
  store %struct.Memory* %call_400e56, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400e01	 RIP: 400e59	 Bytes: 5
  %loadMem_400e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e59 = call %struct.Memory* @routine_jmpq_.L_400e01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e59, i64 -88, i64 5)
  store %struct.Memory* %call_400e59, %struct.Memory** %MEMORY

  br label %block_.L_400e01

  ; Code: .L_400e5e:	 RIP: 400e5e	 Bytes: 0
block_.L_400e5e:

  ; Code: jmpq .L_400e63	 RIP: 400e5e	 Bytes: 5
  %loadMem_400e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5e = call %struct.Memory* @routine_jmpq_.L_400e63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5e, i64 5, i64 5)
  store %struct.Memory* %call_400e5e, %struct.Memory** %MEMORY

  br label %block_.L_400e63

  ; Code: .L_400e63:	 RIP: 400e63	 Bytes: 0
block_.L_400e63:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400e63	 Bytes: 3
  %loadMem_400e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e63 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e63)
  store %struct.Memory* %call_400e63, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400e66	 Bytes: 3
  %loadMem_400e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e66 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e66)
  store %struct.Memory* %call_400e66, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400e69	 Bytes: 3
  %loadMem_400e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e69 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e69)
  store %struct.Memory* %call_400e69, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400df0	 RIP: 400e6c	 Bytes: 5
  %loadMem_400e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e6c = call %struct.Memory* @routine_jmpq_.L_400df0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e6c, i64 -124, i64 5)
  store %struct.Memory* %call_400e6c, %struct.Memory** %MEMORY

  br label %block_.L_400df0

  ; Code: .L_400e71:	 RIP: 400e71	 Bytes: 0
block_.L_400e71:

  ; Code: movl $0x1, 0x61920c	 RIP: 400e71	 Bytes: 11
  %loadMem_400e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e71 = call %struct.Memory* @routine_movl__0x1__0x61920c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e71)
  store %struct.Memory* %call_400e71, %struct.Memory** %MEMORY

  ; Code: movl $0x10, 0x61026c	 RIP: 400e7c	 Bytes: 11
  %loadMem_400e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e7c = call %struct.Memory* @routine_movl__0x10__0x61026c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e7c)
  store %struct.Memory* %call_400e7c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400e87	 Bytes: 7
  %loadMem_400e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e87 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e87)
  store %struct.Memory* %call_400e87, %struct.Memory** %MEMORY

  ; Code: .L_400e8e:	 RIP: 400e8e	 Bytes: 0
  br label %block_.L_400e8e
block_.L_400e8e:

  ; Code: cmpl $0x0, -0x4(%rbp)	 RIP: 400e8e	 Bytes: 4
  %loadMem_400e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e8e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e8e)
  store %struct.Memory* %call_400e8e, %struct.Memory** %MEMORY

  ; Code: jg .L_400f0f	 RIP: 400e92	 Bytes: 6
  %loadMem_400e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e92 = call %struct.Memory* @routine_jg_.L_400f0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e92, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_400e92, %struct.Memory** %MEMORY

  %loadBr_400e92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e92 = icmp eq i8 %loadBr_400e92, 1
  br i1 %cmpBr_400e92, label %block_.L_400f0f, label %block_400e98

block_400e98:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 400e98	 Bytes: 7
  %loadMem_400e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e98 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e98)
  store %struct.Memory* %call_400e98, %struct.Memory** %MEMORY

  ; Code: .L_400e9f:	 RIP: 400e9f	 Bytes: 0
  br label %block_.L_400e9f
block_.L_400e9f:

  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 400e9f	 Bytes: 4
  %loadMem_400e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e9f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e9f)
  store %struct.Memory* %call_400e9f, %struct.Memory** %MEMORY

  ; Code: jg .L_400efc	 RIP: 400ea3	 Bytes: 6
  %loadMem_400ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea3 = call %struct.Memory* @routine_jg_.L_400efc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea3, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_400ea3, %struct.Memory** %MEMORY

  %loadBr_400ea3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ea3 = icmp eq i8 %loadBr_400ea3, 1
  br i1 %cmpBr_400ea3, label %block_.L_400efc, label %block_400ea9

block_400ea9:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 400ea9	 Bytes: 7
  %loadMem_400ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea9 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea9)
  store %struct.Memory* %call_400ea9, %struct.Memory** %MEMORY

  ; Code: .L_400eb0:	 RIP: 400eb0	 Bytes: 0
  br label %block_.L_400eb0
block_.L_400eb0:

  ; Code: cmpl $0x2, -0xc(%rbp)	 RIP: 400eb0	 Bytes: 4
  %loadMem_400eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb0 = call %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb0)
  store %struct.Memory* %call_400eb0, %struct.Memory** %MEMORY

  ; Code: jg .L_400ee9	 RIP: 400eb4	 Bytes: 6
  %loadMem_400eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb4 = call %struct.Memory* @routine_jg_.L_400ee9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb4, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_400eb4, %struct.Memory** %MEMORY

  %loadBr_400eb4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400eb4 = icmp eq i8 %loadBr_400eb4, 1
  br i1 %cmpBr_400eb4, label %block_.L_400ee9, label %block_400eba

block_400eba:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 400eba	 Bytes: 3
  %loadMem_400eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eba = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eba)
  store %struct.Memory* %call_400eba, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 400ebd	 Bytes: 3
  %loadMem_400ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ebd = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ebd)
  store %struct.Memory* %call_400ebd, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400ec0	 Bytes: 3
  %loadMem_400ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec0 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec0)
  store %struct.Memory* %call_400ec0, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 400ec3	 Bytes: 3
  %loadMem_400ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec3 = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec3)
  store %struct.Memory* %call_400ec3, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 400ec6	 Bytes: 2
  %loadMem_400ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec6 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec6)
  store %struct.Memory* %call_400ec6, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %ecx	 RIP: 400ec8	 Bytes: 3
  %loadMem_400ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec8 = call %struct.Memory* @routine_shll__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec8)
  store %struct.Memory* %call_400ec8, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 400ecb	 Bytes: 2
  %loadMem_400ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ecb = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ecb)
  store %struct.Memory* %call_400ecb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 400ecd	 Bytes: 3
  %loadMem_400ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ecd = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ecd)
  store %struct.Memory* %call_400ecd, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x607aa0(,%rsi,4)	 RIP: 400ed0	 Bytes: 11
  %loadMem_400ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed0 = call %struct.Memory* @routine_movl__0x1__0x607aa0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed0)
  store %struct.Memory* %call_400ed0, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 400edb	 Bytes: 3
  %loadMem_400edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400edb = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400edb)
  store %struct.Memory* %call_400edb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400ede	 Bytes: 3
  %loadMem_400ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ede = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ede)
  store %struct.Memory* %call_400ede, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 400ee1	 Bytes: 3
  %loadMem_400ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee1 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee1)
  store %struct.Memory* %call_400ee1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400eb0	 RIP: 400ee4	 Bytes: 5
  %loadMem_400ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee4 = call %struct.Memory* @routine_jmpq_.L_400eb0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee4, i64 -52, i64 5)
  store %struct.Memory* %call_400ee4, %struct.Memory** %MEMORY

  br label %block_.L_400eb0

  ; Code: .L_400ee9:	 RIP: 400ee9	 Bytes: 0
block_.L_400ee9:

  ; Code: jmpq .L_400eee	 RIP: 400ee9	 Bytes: 5
  %loadMem_400ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee9 = call %struct.Memory* @routine_jmpq_.L_400eee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee9, i64 5, i64 5)
  store %struct.Memory* %call_400ee9, %struct.Memory** %MEMORY

  br label %block_.L_400eee

  ; Code: .L_400eee:	 RIP: 400eee	 Bytes: 0
block_.L_400eee:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 400eee	 Bytes: 3
  %loadMem_400eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eee = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eee)
  store %struct.Memory* %call_400eee, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400ef1	 Bytes: 3
  %loadMem_400ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef1)
  store %struct.Memory* %call_400ef1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 400ef4	 Bytes: 3
  %loadMem_400ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef4 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef4)
  store %struct.Memory* %call_400ef4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400e9f	 RIP: 400ef7	 Bytes: 5
  %loadMem_400ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef7 = call %struct.Memory* @routine_jmpq_.L_400e9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef7, i64 -88, i64 5)
  store %struct.Memory* %call_400ef7, %struct.Memory** %MEMORY

  br label %block_.L_400e9f

  ; Code: .L_400efc:	 RIP: 400efc	 Bytes: 0
block_.L_400efc:

  ; Code: jmpq .L_400f01	 RIP: 400efc	 Bytes: 5
  %loadMem_400efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400efc = call %struct.Memory* @routine_jmpq_.L_400f01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400efc, i64 5, i64 5)
  store %struct.Memory* %call_400efc, %struct.Memory** %MEMORY

  br label %block_.L_400f01

  ; Code: .L_400f01:	 RIP: 400f01	 Bytes: 0
block_.L_400f01:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400f01	 Bytes: 3
  %loadMem_400f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f01 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f01)
  store %struct.Memory* %call_400f01, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400f04	 Bytes: 3
  %loadMem_400f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f04 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f04)
  store %struct.Memory* %call_400f04, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400f07	 Bytes: 3
  %loadMem_400f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f07 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f07)
  store %struct.Memory* %call_400f07, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400e8e	 RIP: 400f0a	 Bytes: 5
  %loadMem_400f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f0a = call %struct.Memory* @routine_jmpq_.L_400e8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f0a, i64 -124, i64 5)
  store %struct.Memory* %call_400f0a, %struct.Memory** %MEMORY

  br label %block_.L_400e8e

  ; Code: .L_400f0f:	 RIP: 400f0f	 Bytes: 0
block_.L_400f0f:

  ; Code: movl $0x1, 0x619210	 RIP: 400f0f	 Bytes: 11
  %loadMem_400f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f0f = call %struct.Memory* @routine_movl__0x1__0x619210(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f0f)
  store %struct.Memory* %call_400f0f, %struct.Memory** %MEMORY

  ; Code: movl $0x80, 0x610270	 RIP: 400f1a	 Bytes: 11
  %loadMem_400f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f1a = call %struct.Memory* @routine_movl__0x80__0x610270(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f1a)
  store %struct.Memory* %call_400f1a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400f25	 Bytes: 7
  %loadMem_400f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f25 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f25)
  store %struct.Memory* %call_400f25, %struct.Memory** %MEMORY

  ; Code: .L_400f2c:	 RIP: 400f2c	 Bytes: 0
  br label %block_.L_400f2c
block_.L_400f2c:

  ; Code: cmpl $0x1, -0x4(%rbp)	 RIP: 400f2c	 Bytes: 4
  %loadMem_400f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f2c = call %struct.Memory* @routine_cmpl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f2c)
  store %struct.Memory* %call_400f2c, %struct.Memory** %MEMORY

  ; Code: jg .L_400fad	 RIP: 400f30	 Bytes: 6
  %loadMem_400f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f30 = call %struct.Memory* @routine_jg_.L_400fad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f30, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_400f30, %struct.Memory** %MEMORY

  %loadBr_400f30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f30 = icmp eq i8 %loadBr_400f30, 1
  br i1 %cmpBr_400f30, label %block_.L_400fad, label %block_400f36

block_400f36:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 400f36	 Bytes: 7
  %loadMem_400f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f36 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f36)
  store %struct.Memory* %call_400f36, %struct.Memory** %MEMORY

  ; Code: .L_400f3d:	 RIP: 400f3d	 Bytes: 0
  br label %block_.L_400f3d
block_.L_400f3d:

  ; Code: cmpl $0x1, -0x8(%rbp)	 RIP: 400f3d	 Bytes: 4
  %loadMem_400f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f3d = call %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f3d)
  store %struct.Memory* %call_400f3d, %struct.Memory** %MEMORY

  ; Code: jg .L_400f9a	 RIP: 400f41	 Bytes: 6
  %loadMem_400f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f41 = call %struct.Memory* @routine_jg_.L_400f9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f41, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_400f41, %struct.Memory** %MEMORY

  %loadBr_400f41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f41 = icmp eq i8 %loadBr_400f41, 1
  br i1 %cmpBr_400f41, label %block_.L_400f9a, label %block_400f47

block_400f47:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 400f47	 Bytes: 7
  %loadMem_400f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f47 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f47)
  store %struct.Memory* %call_400f47, %struct.Memory** %MEMORY

  ; Code: .L_400f4e:	 RIP: 400f4e	 Bytes: 0
  br label %block_.L_400f4e
block_.L_400f4e:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 400f4e	 Bytes: 4
  %loadMem_400f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f4e = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f4e)
  store %struct.Memory* %call_400f4e, %struct.Memory** %MEMORY

  ; Code: jg .L_400f87	 RIP: 400f52	 Bytes: 6
  %loadMem_400f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f52 = call %struct.Memory* @routine_jg_.L_400f87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f52, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_400f52, %struct.Memory** %MEMORY

  %loadBr_400f52 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f52 = icmp eq i8 %loadBr_400f52, 1
  br i1 %cmpBr_400f52, label %block_.L_400f87, label %block_400f58

block_400f58:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 400f58	 Bytes: 3
  %loadMem_400f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f58 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f58)
  store %struct.Memory* %call_400f58, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 400f5b	 Bytes: 3
  %loadMem_400f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5b = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5b)
  store %struct.Memory* %call_400f5b, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400f5e	 Bytes: 3
  %loadMem_400f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5e = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5e)
  store %struct.Memory* %call_400f5e, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 400f61	 Bytes: 3
  %loadMem_400f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f61 = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f61)
  store %struct.Memory* %call_400f61, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 400f64	 Bytes: 2
  %loadMem_400f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f64 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f64)
  store %struct.Memory* %call_400f64, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %ecx	 RIP: 400f66	 Bytes: 3
  %loadMem_400f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f66 = call %struct.Memory* @routine_shll__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f66)
  store %struct.Memory* %call_400f66, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 400f69	 Bytes: 2
  %loadMem_400f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f69 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f69)
  store %struct.Memory* %call_400f69, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 400f6b	 Bytes: 3
  %loadMem_400f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f6b = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f6b)
  store %struct.Memory* %call_400f6b, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x6082a0(,%rsi,4)	 RIP: 400f6e	 Bytes: 11
  %loadMem_400f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f6e = call %struct.Memory* @routine_movl__0x1__0x6082a0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f6e)
  store %struct.Memory* %call_400f6e, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 400f79	 Bytes: 3
  %loadMem_400f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f79 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f79)
  store %struct.Memory* %call_400f79, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400f7c	 Bytes: 3
  %loadMem_400f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7c)
  store %struct.Memory* %call_400f7c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 400f7f	 Bytes: 3
  %loadMem_400f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7f = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7f)
  store %struct.Memory* %call_400f7f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400f4e	 RIP: 400f82	 Bytes: 5
  %loadMem_400f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f82 = call %struct.Memory* @routine_jmpq_.L_400f4e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f82, i64 -52, i64 5)
  store %struct.Memory* %call_400f82, %struct.Memory** %MEMORY

  br label %block_.L_400f4e

  ; Code: .L_400f87:	 RIP: 400f87	 Bytes: 0
block_.L_400f87:

  ; Code: jmpq .L_400f8c	 RIP: 400f87	 Bytes: 5
  %loadMem_400f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f87 = call %struct.Memory* @routine_jmpq_.L_400f8c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f87, i64 5, i64 5)
  store %struct.Memory* %call_400f87, %struct.Memory** %MEMORY

  br label %block_.L_400f8c

  ; Code: .L_400f8c:	 RIP: 400f8c	 Bytes: 0
block_.L_400f8c:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 400f8c	 Bytes: 3
  %loadMem_400f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f8c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f8c)
  store %struct.Memory* %call_400f8c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400f8f	 Bytes: 3
  %loadMem_400f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f8f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f8f)
  store %struct.Memory* %call_400f8f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 400f92	 Bytes: 3
  %loadMem_400f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f92 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f92)
  store %struct.Memory* %call_400f92, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400f3d	 RIP: 400f95	 Bytes: 5
  %loadMem_400f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f95 = call %struct.Memory* @routine_jmpq_.L_400f3d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f95, i64 -88, i64 5)
  store %struct.Memory* %call_400f95, %struct.Memory** %MEMORY

  br label %block_.L_400f3d

  ; Code: .L_400f9a:	 RIP: 400f9a	 Bytes: 0
block_.L_400f9a:

  ; Code: jmpq .L_400f9f	 RIP: 400f9a	 Bytes: 5
  %loadMem_400f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f9a = call %struct.Memory* @routine_jmpq_.L_400f9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f9a, i64 5, i64 5)
  store %struct.Memory* %call_400f9a, %struct.Memory** %MEMORY

  br label %block_.L_400f9f

  ; Code: .L_400f9f:	 RIP: 400f9f	 Bytes: 0
block_.L_400f9f:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400f9f	 Bytes: 3
  %loadMem_400f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f9f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f9f)
  store %struct.Memory* %call_400f9f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400fa2	 Bytes: 3
  %loadMem_400fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa2)
  store %struct.Memory* %call_400fa2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400fa5	 Bytes: 3
  %loadMem_400fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa5 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa5)
  store %struct.Memory* %call_400fa5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400f2c	 RIP: 400fa8	 Bytes: 5
  %loadMem_400fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa8 = call %struct.Memory* @routine_jmpq_.L_400f2c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa8, i64 -124, i64 5)
  store %struct.Memory* %call_400fa8, %struct.Memory** %MEMORY

  br label %block_.L_400f2c

  ; Code: .L_400fad:	 RIP: 400fad	 Bytes: 0
block_.L_400fad:

  ; Code: movl $0x2, 0x619214	 RIP: 400fad	 Bytes: 11
  %loadMem_400fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fad = call %struct.Memory* @routine_movl__0x2__0x619214(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fad)
  store %struct.Memory* %call_400fad, %struct.Memory** %MEMORY

  ; Code: movl $0x9, 0x610274	 RIP: 400fb8	 Bytes: 11
  %loadMem_400fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb8 = call %struct.Memory* @routine_movl__0x9__0x610274(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb8)
  store %struct.Memory* %call_400fb8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400fc3	 Bytes: 7
  %loadMem_400fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc3 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc3)
  store %struct.Memory* %call_400fc3, %struct.Memory** %MEMORY

  ; Code: .L_400fca:	 RIP: 400fca	 Bytes: 0
  br label %block_.L_400fca
block_.L_400fca:

  ; Code: cmpl $0x1, -0x4(%rbp)	 RIP: 400fca	 Bytes: 4
  %loadMem_400fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fca = call %struct.Memory* @routine_cmpl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fca)
  store %struct.Memory* %call_400fca, %struct.Memory** %MEMORY

  ; Code: jg .L_40104b	 RIP: 400fce	 Bytes: 6
  %loadMem_400fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fce = call %struct.Memory* @routine_jg_.L_40104b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fce, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_400fce, %struct.Memory** %MEMORY

  %loadBr_400fce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400fce = icmp eq i8 %loadBr_400fce, 1
  br i1 %cmpBr_400fce, label %block_.L_40104b, label %block_400fd4

block_400fd4:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 400fd4	 Bytes: 7
  %loadMem_400fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd4 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd4)
  store %struct.Memory* %call_400fd4, %struct.Memory** %MEMORY

  ; Code: .L_400fdb:	 RIP: 400fdb	 Bytes: 0
  br label %block_.L_400fdb
block_.L_400fdb:

  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 400fdb	 Bytes: 4
  %loadMem_400fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fdb = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fdb)
  store %struct.Memory* %call_400fdb, %struct.Memory** %MEMORY

  ; Code: jg .L_401038	 RIP: 400fdf	 Bytes: 6
  %loadMem_400fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fdf = call %struct.Memory* @routine_jg_.L_401038(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fdf, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_400fdf, %struct.Memory** %MEMORY

  %loadBr_400fdf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400fdf = icmp eq i8 %loadBr_400fdf, 1
  br i1 %cmpBr_400fdf, label %block_.L_401038, label %block_400fe5

block_400fe5:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 400fe5	 Bytes: 7
  %loadMem_400fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe5 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe5)
  store %struct.Memory* %call_400fe5, %struct.Memory** %MEMORY

  ; Code: .L_400fec:	 RIP: 400fec	 Bytes: 0
  br label %block_.L_400fec
block_.L_400fec:

  ; Code: cmpl $0x1, -0xc(%rbp)	 RIP: 400fec	 Bytes: 4
  %loadMem_400fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fec = call %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fec)
  store %struct.Memory* %call_400fec, %struct.Memory** %MEMORY

  ; Code: jg .L_401025	 RIP: 400ff0	 Bytes: 6
  %loadMem_400ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff0 = call %struct.Memory* @routine_jg_.L_401025(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff0, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_400ff0, %struct.Memory** %MEMORY

  %loadBr_400ff0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ff0 = icmp eq i8 %loadBr_400ff0, 1
  br i1 %cmpBr_400ff0, label %block_.L_401025, label %block_400ff6

block_400ff6:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 400ff6	 Bytes: 3
  %loadMem_400ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff6 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff6)
  store %struct.Memory* %call_400ff6, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 400ff9	 Bytes: 3
  %loadMem_400ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff9 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff9)
  store %struct.Memory* %call_400ff9, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400ffc	 Bytes: 3
  %loadMem_400ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ffc = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ffc)
  store %struct.Memory* %call_400ffc, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 400fff	 Bytes: 3
  %loadMem_400fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fff = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fff)
  store %struct.Memory* %call_400fff, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 401002	 Bytes: 2
  %loadMem_401002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401002 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401002)
  store %struct.Memory* %call_401002, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %ecx	 RIP: 401004	 Bytes: 3
  %loadMem_401004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401004 = call %struct.Memory* @routine_shll__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401004)
  store %struct.Memory* %call_401004, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 401007	 Bytes: 2
  %loadMem_401007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401007 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401007)
  store %struct.Memory* %call_401007, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 401009	 Bytes: 3
  %loadMem_401009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401009 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401009)
  store %struct.Memory* %call_401009, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x608aa0(,%rsi,4)	 RIP: 40100c	 Bytes: 11
  %loadMem_40100c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40100c = call %struct.Memory* @routine_movl__0x1__0x608aa0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40100c)
  store %struct.Memory* %call_40100c, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 401017	 Bytes: 3
  %loadMem_401017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401017 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401017)
  store %struct.Memory* %call_401017, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40101a	 Bytes: 3
  %loadMem_40101a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40101a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40101a)
  store %struct.Memory* %call_40101a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 40101d	 Bytes: 3
  %loadMem_40101d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40101d = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40101d)
  store %struct.Memory* %call_40101d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400fec	 RIP: 401020	 Bytes: 5
  %loadMem_401020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401020 = call %struct.Memory* @routine_jmpq_.L_400fec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401020, i64 -52, i64 5)
  store %struct.Memory* %call_401020, %struct.Memory** %MEMORY

  br label %block_.L_400fec

  ; Code: .L_401025:	 RIP: 401025	 Bytes: 0
block_.L_401025:

  ; Code: jmpq .L_40102a	 RIP: 401025	 Bytes: 5
  %loadMem_401025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401025 = call %struct.Memory* @routine_jmpq_.L_40102a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401025, i64 5, i64 5)
  store %struct.Memory* %call_401025, %struct.Memory** %MEMORY

  br label %block_.L_40102a

  ; Code: .L_40102a:	 RIP: 40102a	 Bytes: 0
block_.L_40102a:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 40102a	 Bytes: 3
  %loadMem_40102a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102a)
  store %struct.Memory* %call_40102a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40102d	 Bytes: 3
  %loadMem_40102d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102d)
  store %struct.Memory* %call_40102d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 401030	 Bytes: 3
  %loadMem_401030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401030 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401030)
  store %struct.Memory* %call_401030, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400fdb	 RIP: 401033	 Bytes: 5
  %loadMem_401033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401033 = call %struct.Memory* @routine_jmpq_.L_400fdb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401033, i64 -88, i64 5)
  store %struct.Memory* %call_401033, %struct.Memory** %MEMORY

  br label %block_.L_400fdb

  ; Code: .L_401038:	 RIP: 401038	 Bytes: 0
block_.L_401038:

  ; Code: jmpq .L_40103d	 RIP: 401038	 Bytes: 5
  %loadMem_401038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401038 = call %struct.Memory* @routine_jmpq_.L_40103d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401038, i64 5, i64 5)
  store %struct.Memory* %call_401038, %struct.Memory** %MEMORY

  br label %block_.L_40103d

  ; Code: .L_40103d:	 RIP: 40103d	 Bytes: 0
block_.L_40103d:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40103d	 Bytes: 3
  %loadMem_40103d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103d = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103d)
  store %struct.Memory* %call_40103d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401040	 Bytes: 3
  %loadMem_401040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401040 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401040)
  store %struct.Memory* %call_401040, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 401043	 Bytes: 3
  %loadMem_401043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401043 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401043)
  store %struct.Memory* %call_401043, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400fca	 RIP: 401046	 Bytes: 5
  %loadMem_401046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401046 = call %struct.Memory* @routine_jmpq_.L_400fca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401046, i64 -124, i64 5)
  store %struct.Memory* %call_401046, %struct.Memory** %MEMORY

  br label %block_.L_400fca

  ; Code: .L_40104b:	 RIP: 40104b	 Bytes: 0
block_.L_40104b:

  ; Code: movl $0x2, 0x619218	 RIP: 40104b	 Bytes: 11
  %loadMem_40104b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40104b = call %struct.Memory* @routine_movl__0x2__0x619218(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40104b)
  store %struct.Memory* %call_40104b, %struct.Memory** %MEMORY

  ; Code: movl $0x41, 0x610278	 RIP: 401056	 Bytes: 11
  %loadMem_401056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401056 = call %struct.Memory* @routine_movl__0x41__0x610278(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401056)
  store %struct.Memory* %call_401056, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 401061	 Bytes: 7
  %loadMem_401061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401061 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401061)
  store %struct.Memory* %call_401061, %struct.Memory** %MEMORY

  ; Code: .L_401068:	 RIP: 401068	 Bytes: 0
  br label %block_.L_401068
block_.L_401068:

  ; Code: cmpl $0x0, -0x4(%rbp)	 RIP: 401068	 Bytes: 4
  %loadMem_401068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401068 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401068)
  store %struct.Memory* %call_401068, %struct.Memory** %MEMORY

  ; Code: jg .L_4010e9	 RIP: 40106c	 Bytes: 6
  %loadMem_40106c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40106c = call %struct.Memory* @routine_jg_.L_4010e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40106c, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_40106c, %struct.Memory** %MEMORY

  %loadBr_40106c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40106c = icmp eq i8 %loadBr_40106c, 1
  br i1 %cmpBr_40106c, label %block_.L_4010e9, label %block_401072

block_401072:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 401072	 Bytes: 7
  %loadMem_401072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401072 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401072)
  store %struct.Memory* %call_401072, %struct.Memory** %MEMORY

  ; Code: .L_401079:	 RIP: 401079	 Bytes: 0
  br label %block_.L_401079
block_.L_401079:

  ; Code: cmpl $0x1, -0x8(%rbp)	 RIP: 401079	 Bytes: 4
  %loadMem_401079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401079 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401079)
  store %struct.Memory* %call_401079, %struct.Memory** %MEMORY

  ; Code: jg .L_4010d6	 RIP: 40107d	 Bytes: 6
  %loadMem_40107d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40107d = call %struct.Memory* @routine_jg_.L_4010d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40107d, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_40107d, %struct.Memory** %MEMORY

  %loadBr_40107d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40107d = icmp eq i8 %loadBr_40107d, 1
  br i1 %cmpBr_40107d, label %block_.L_4010d6, label %block_401083

block_401083:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 401083	 Bytes: 7
  %loadMem_401083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401083 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401083)
  store %struct.Memory* %call_401083, %struct.Memory** %MEMORY

  ; Code: .L_40108a:	 RIP: 40108a	 Bytes: 0
  br label %block_.L_40108a
block_.L_40108a:

  ; Code: cmpl $0x1, -0xc(%rbp)	 RIP: 40108a	 Bytes: 4
  %loadMem_40108a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108a = call %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108a)
  store %struct.Memory* %call_40108a, %struct.Memory** %MEMORY

  ; Code: jg .L_4010c3	 RIP: 40108e	 Bytes: 6
  %loadMem_40108e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108e = call %struct.Memory* @routine_jg_.L_4010c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108e, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_40108e, %struct.Memory** %MEMORY

  %loadBr_40108e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40108e = icmp eq i8 %loadBr_40108e, 1
  br i1 %cmpBr_40108e, label %block_.L_4010c3, label %block_401094

block_401094:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 401094	 Bytes: 3
  %loadMem_401094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401094 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401094)
  store %struct.Memory* %call_401094, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 401097	 Bytes: 3
  %loadMem_401097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401097 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401097)
  store %struct.Memory* %call_401097, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 40109a	 Bytes: 3
  %loadMem_40109a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109a)
  store %struct.Memory* %call_40109a, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 40109d	 Bytes: 3
  %loadMem_40109d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109d = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109d)
  store %struct.Memory* %call_40109d, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 4010a0	 Bytes: 2
  %loadMem_4010a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a0 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a0)
  store %struct.Memory* %call_4010a0, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %ecx	 RIP: 4010a2	 Bytes: 3
  %loadMem_4010a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a2 = call %struct.Memory* @routine_shll__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a2)
  store %struct.Memory* %call_4010a2, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 4010a5	 Bytes: 2
  %loadMem_4010a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a5 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a5)
  store %struct.Memory* %call_4010a5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 4010a7	 Bytes: 3
  %loadMem_4010a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a7 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a7)
  store %struct.Memory* %call_4010a7, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x6092a0(,%rsi,4)	 RIP: 4010aa	 Bytes: 11
  %loadMem_4010aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010aa = call %struct.Memory* @routine_movl__0x1__0x6092a0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010aa)
  store %struct.Memory* %call_4010aa, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4010b5	 Bytes: 3
  %loadMem_4010b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b5 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b5)
  store %struct.Memory* %call_4010b5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4010b8	 Bytes: 3
  %loadMem_4010b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b8)
  store %struct.Memory* %call_4010b8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4010bb	 Bytes: 3
  %loadMem_4010bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010bb = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010bb)
  store %struct.Memory* %call_4010bb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40108a	 RIP: 4010be	 Bytes: 5
  %loadMem_4010be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010be = call %struct.Memory* @routine_jmpq_.L_40108a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010be, i64 -52, i64 5)
  store %struct.Memory* %call_4010be, %struct.Memory** %MEMORY

  br label %block_.L_40108a

  ; Code: .L_4010c3:	 RIP: 4010c3	 Bytes: 0
block_.L_4010c3:

  ; Code: jmpq .L_4010c8	 RIP: 4010c3	 Bytes: 5
  %loadMem_4010c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c3 = call %struct.Memory* @routine_jmpq_.L_4010c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c3, i64 5, i64 5)
  store %struct.Memory* %call_4010c3, %struct.Memory** %MEMORY

  br label %block_.L_4010c8

  ; Code: .L_4010c8:	 RIP: 4010c8	 Bytes: 0
block_.L_4010c8:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4010c8	 Bytes: 3
  %loadMem_4010c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c8 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c8)
  store %struct.Memory* %call_4010c8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4010cb	 Bytes: 3
  %loadMem_4010cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010cb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010cb)
  store %struct.Memory* %call_4010cb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4010ce	 Bytes: 3
  %loadMem_4010ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ce = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ce)
  store %struct.Memory* %call_4010ce, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401079	 RIP: 4010d1	 Bytes: 5
  %loadMem_4010d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d1 = call %struct.Memory* @routine_jmpq_.L_401079(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d1, i64 -88, i64 5)
  store %struct.Memory* %call_4010d1, %struct.Memory** %MEMORY

  br label %block_.L_401079

  ; Code: .L_4010d6:	 RIP: 4010d6	 Bytes: 0
block_.L_4010d6:

  ; Code: jmpq .L_4010db	 RIP: 4010d6	 Bytes: 5
  %loadMem_4010d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d6 = call %struct.Memory* @routine_jmpq_.L_4010db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d6, i64 5, i64 5)
  store %struct.Memory* %call_4010d6, %struct.Memory** %MEMORY

  br label %block_.L_4010db

  ; Code: .L_4010db:	 RIP: 4010db	 Bytes: 0
block_.L_4010db:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4010db	 Bytes: 3
  %loadMem_4010db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010db = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010db)
  store %struct.Memory* %call_4010db, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4010de	 Bytes: 3
  %loadMem_4010de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010de = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010de)
  store %struct.Memory* %call_4010de, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4010e1	 Bytes: 3
  %loadMem_4010e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e1 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e1)
  store %struct.Memory* %call_4010e1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401068	 RIP: 4010e4	 Bytes: 5
  %loadMem_4010e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e4 = call %struct.Memory* @routine_jmpq_.L_401068(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e4, i64 -124, i64 5)
  store %struct.Memory* %call_4010e4, %struct.Memory** %MEMORY

  br label %block_.L_401068

  ; Code: .L_4010e9:	 RIP: 4010e9	 Bytes: 0
block_.L_4010e9:

  ; Code: movl $0x2, 0x61921c	 RIP: 4010e9	 Bytes: 11
  %loadMem_4010e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e9 = call %struct.Memory* @routine_movl__0x2__0x61921c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e9)
  store %struct.Memory* %call_4010e9, %struct.Memory** %MEMORY

  ; Code: movl $0x48, 0x61027c	 RIP: 4010f4	 Bytes: 11
  %loadMem_4010f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f4 = call %struct.Memory* @routine_movl__0x48__0x61027c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f4)
  store %struct.Memory* %call_4010f4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4010ff	 Bytes: 7
  %loadMem_4010ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ff = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ff)
  store %struct.Memory* %call_4010ff, %struct.Memory** %MEMORY

  ; Code: .L_401106:	 RIP: 401106	 Bytes: 0
  br label %block_.L_401106
block_.L_401106:

  ; Code: cmpl $0x1, -0x4(%rbp)	 RIP: 401106	 Bytes: 4
  %loadMem_401106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401106 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401106)
  store %struct.Memory* %call_401106, %struct.Memory** %MEMORY

  ; Code: jg .L_401187	 RIP: 40110a	 Bytes: 6
  %loadMem_40110a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40110a = call %struct.Memory* @routine_jg_.L_401187(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40110a, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_40110a, %struct.Memory** %MEMORY

  %loadBr_40110a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40110a = icmp eq i8 %loadBr_40110a, 1
  br i1 %cmpBr_40110a, label %block_.L_401187, label %block_401110

block_401110:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 401110	 Bytes: 7
  %loadMem_401110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401110 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401110)
  store %struct.Memory* %call_401110, %struct.Memory** %MEMORY

  ; Code: .L_401117:	 RIP: 401117	 Bytes: 0
  br label %block_.L_401117
block_.L_401117:

  ; Code: cmpl $0x1, -0x8(%rbp)	 RIP: 401117	 Bytes: 4
  %loadMem_401117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401117 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401117)
  store %struct.Memory* %call_401117, %struct.Memory** %MEMORY

  ; Code: jg .L_401174	 RIP: 40111b	 Bytes: 6
  %loadMem_40111b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40111b = call %struct.Memory* @routine_jg_.L_401174(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40111b, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_40111b, %struct.Memory** %MEMORY

  %loadBr_40111b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40111b = icmp eq i8 %loadBr_40111b, 1
  br i1 %cmpBr_40111b, label %block_.L_401174, label %block_401121

block_401121:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 401121	 Bytes: 7
  %loadMem_401121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401121 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401121)
  store %struct.Memory* %call_401121, %struct.Memory** %MEMORY

  ; Code: .L_401128:	 RIP: 401128	 Bytes: 0
  br label %block_.L_401128
block_.L_401128:

  ; Code: cmpl $0x1, -0xc(%rbp)	 RIP: 401128	 Bytes: 4
  %loadMem_401128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401128 = call %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401128)
  store %struct.Memory* %call_401128, %struct.Memory** %MEMORY

  ; Code: jg .L_401161	 RIP: 40112c	 Bytes: 6
  %loadMem_40112c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40112c = call %struct.Memory* @routine_jg_.L_401161(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40112c, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_40112c, %struct.Memory** %MEMORY

  %loadBr_40112c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40112c = icmp eq i8 %loadBr_40112c, 1
  br i1 %cmpBr_40112c, label %block_.L_401161, label %block_401132

block_401132:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 401132	 Bytes: 3
  %loadMem_401132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401132 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401132)
  store %struct.Memory* %call_401132, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 401135	 Bytes: 3
  %loadMem_401135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401135 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401135)
  store %struct.Memory* %call_401135, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 401138	 Bytes: 3
  %loadMem_401138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401138 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401138)
  store %struct.Memory* %call_401138, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 40113b	 Bytes: 3
  %loadMem_40113b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40113b = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40113b)
  store %struct.Memory* %call_40113b, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 40113e	 Bytes: 2
  %loadMem_40113e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40113e = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40113e)
  store %struct.Memory* %call_40113e, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %ecx	 RIP: 401140	 Bytes: 3
  %loadMem_401140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401140 = call %struct.Memory* @routine_shll__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401140)
  store %struct.Memory* %call_401140, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 401143	 Bytes: 2
  %loadMem_401143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401143 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401143)
  store %struct.Memory* %call_401143, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 401145	 Bytes: 3
  %loadMem_401145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401145 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401145)
  store %struct.Memory* %call_401145, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x609aa0(,%rsi,4)	 RIP: 401148	 Bytes: 11
  %loadMem_401148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401148 = call %struct.Memory* @routine_movl__0x1__0x609aa0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401148)
  store %struct.Memory* %call_401148, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 401153	 Bytes: 3
  %loadMem_401153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401153 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401153)
  store %struct.Memory* %call_401153, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401156	 Bytes: 3
  %loadMem_401156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401156 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401156)
  store %struct.Memory* %call_401156, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 401159	 Bytes: 3
  %loadMem_401159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401159 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401159)
  store %struct.Memory* %call_401159, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401128	 RIP: 40115c	 Bytes: 5
  %loadMem_40115c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115c = call %struct.Memory* @routine_jmpq_.L_401128(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115c, i64 -52, i64 5)
  store %struct.Memory* %call_40115c, %struct.Memory** %MEMORY

  br label %block_.L_401128

  ; Code: .L_401161:	 RIP: 401161	 Bytes: 0
block_.L_401161:

  ; Code: jmpq .L_401166	 RIP: 401161	 Bytes: 5
  %loadMem_401161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401161 = call %struct.Memory* @routine_jmpq_.L_401166(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401161, i64 5, i64 5)
  store %struct.Memory* %call_401161, %struct.Memory** %MEMORY

  br label %block_.L_401166

  ; Code: .L_401166:	 RIP: 401166	 Bytes: 0
block_.L_401166:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 401166	 Bytes: 3
  %loadMem_401166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401166 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401166)
  store %struct.Memory* %call_401166, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401169	 Bytes: 3
  %loadMem_401169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401169 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401169)
  store %struct.Memory* %call_401169, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 40116c	 Bytes: 3
  %loadMem_40116c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40116c = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40116c)
  store %struct.Memory* %call_40116c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401117	 RIP: 40116f	 Bytes: 5
  %loadMem_40116f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40116f = call %struct.Memory* @routine_jmpq_.L_401117(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40116f, i64 -88, i64 5)
  store %struct.Memory* %call_40116f, %struct.Memory** %MEMORY

  br label %block_.L_401117

  ; Code: .L_401174:	 RIP: 401174	 Bytes: 0
block_.L_401174:

  ; Code: jmpq .L_401179	 RIP: 401174	 Bytes: 5
  %loadMem_401174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401174 = call %struct.Memory* @routine_jmpq_.L_401179(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401174, i64 5, i64 5)
  store %struct.Memory* %call_401174, %struct.Memory** %MEMORY

  br label %block_.L_401179

  ; Code: .L_401179:	 RIP: 401179	 Bytes: 0
block_.L_401179:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 401179	 Bytes: 3
  %loadMem_401179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401179 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401179)
  store %struct.Memory* %call_401179, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40117c	 Bytes: 3
  %loadMem_40117c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40117c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40117c)
  store %struct.Memory* %call_40117c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 40117f	 Bytes: 3
  %loadMem_40117f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40117f = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40117f)
  store %struct.Memory* %call_40117f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401106	 RIP: 401182	 Bytes: 5
  %loadMem_401182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401182 = call %struct.Memory* @routine_jmpq_.L_401106(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401182, i64 -124, i64 5)
  store %struct.Memory* %call_401182, %struct.Memory** %MEMORY

  br label %block_.L_401106

  ; Code: .L_401187:	 RIP: 401187	 Bytes: 0
block_.L_401187:

  ; Code: xorl %edi, %edi	 RIP: 401187	 Bytes: 2
  %loadMem_401187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401187 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401187)
  store %struct.Memory* %call_401187, %struct.Memory** %MEMORY

  ; Code: movl $0x3, 0x619220	 RIP: 401189	 Bytes: 11
  %loadMem_401189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401189 = call %struct.Memory* @routine_movl__0x3__0x619220(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401189)
  store %struct.Memory* %call_401189, %struct.Memory** %MEMORY

  ; Code: movl $0x49, 0x610280	 RIP: 401194	 Bytes: 11
  %loadMem_401194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401194 = call %struct.Memory* @routine_movl__0x49__0x610280(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401194)
  store %struct.Memory* %call_401194, %struct.Memory** %MEMORY

  ; Code: movl $0xd, 0x6191e0	 RIP: 40119f	 Bytes: 11
  %loadMem_40119f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40119f = call %struct.Memory* @routine_movl__0xd__0x6191e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40119f)
  store %struct.Memory* %call_40119f, %struct.Memory** %MEMORY

  ; Code: movl $0x3, 0x6191e4	 RIP: 4011aa	 Bytes: 11
  %loadMem_4011aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011aa = call %struct.Memory* @routine_movl__0x3__0x6191e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011aa)
  store %struct.Memory* %call_4011aa, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x6191e8	 RIP: 4011b5	 Bytes: 11
  %loadMem_4011b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b5 = call %struct.Memory* @routine_movl__0x1__0x6191e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b5)
  store %struct.Memory* %call_4011b5, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x6191ec	 RIP: 4011c0	 Bytes: 11
  %loadMem_4011c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c0 = call %struct.Memory* @routine_movl__0x1__0x6191ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c0)
  store %struct.Memory* %call_4011c0, %struct.Memory** %MEMORY

  ; Code: movl $0x49, -0x10(%rbp)	 RIP: 4011cb	 Bytes: 7
  %loadMem_4011cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011cb = call %struct.Memory* @routine_movl__0x49__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011cb)
  store %struct.Memory* %call_4011cb, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x6191c4	 RIP: 4011d2	 Bytes: 11
  %loadMem_4011d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d2 = call %struct.Memory* @routine_movl__0x0__0x6191c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d2)
  store %struct.Memory* %call_4011d2, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %esi	 RIP: 4011dd	 Bytes: 3
  %loadMem_4011dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011dd = call %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011dd)
  store %struct.Memory* %call_4011dd, %struct.Memory** %MEMORY

  ; Code: callq .Fit	 RIP: 4011e0	 Bytes: 5
  %loadMem1_4011e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4011e0 = call %struct.Memory* @routine_callq_.Fit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4011e0, i64 -3168, i64 5, i64 5)
  store %struct.Memory* %call1_4011e0, %struct.Memory** %MEMORY

  %loadMem2_4011e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4011e0 = load i64, i64* %3
  %call2_4011e0 = call %struct.Memory* @sub_400580.Fit(%struct.State* %0, i64  %loadPC_4011e0, %struct.Memory* %loadMem2_4011e0)
  store %struct.Memory* %call2_4011e0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4011e5	 Bytes: 3
  %loadMem_4011e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e5 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e5)
  store %struct.Memory* %call_4011e5, %struct.Memory** %MEMORY

  ; Code: je .L_401204	 RIP: 4011e8	 Bytes: 6
  %loadMem_4011e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e8 = call %struct.Memory* @routine_je_.L_401204(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e8, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_4011e8, %struct.Memory** %MEMORY

  %loadBr_4011e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4011e8 = icmp eq i8 %loadBr_4011e8, 1
  br i1 %cmpBr_4011e8, label %block_.L_401204, label %block_4011ee

block_4011ee:
  ; Code: xorl %edi, %edi	 RIP: 4011ee	 Bytes: 2
  %loadMem_4011ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ee = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ee)
  store %struct.Memory* %call_4011ee, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %esi	 RIP: 4011f0	 Bytes: 3
  %loadMem_4011f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f0 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f0)
  store %struct.Memory* %call_4011f0, %struct.Memory** %MEMORY

  ; Code: callq .Place	 RIP: 4011f3	 Bytes: 5
  %loadMem1_4011f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4011f3 = call %struct.Memory* @routine_callq_.Place(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4011f3, i64 -3043, i64 5, i64 5)
  store %struct.Memory* %call1_4011f3, %struct.Memory** %MEMORY

  %loadMem2_4011f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4011f3 = load i64, i64* %3
  %call2_4011f3 = call %struct.Memory* @sub_400610.Place(%struct.State* %0, i64  %loadPC_4011f3, %struct.Memory* %loadMem2_4011f3)
  store %struct.Memory* %call2_4011f3, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x603a94	 RIP: 4011f8	 Bytes: 7
  %loadMem_4011f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f8 = call %struct.Memory* @routine_movl__eax__0x603a94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f8)
  store %struct.Memory* %call_4011f8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401218	 RIP: 4011ff	 Bytes: 5
  %loadMem_4011ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ff = call %struct.Memory* @routine_jmpq_.L_401218(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ff, i64 25, i64 5)
  store %struct.Memory* %call_4011ff, %struct.Memory** %MEMORY

  br label %block_.L_401218

  ; Code: .L_401204:	 RIP: 401204	 Bytes: 0
block_.L_401204:

  ; Code: movq $0x401374, %rdi	 RIP: 401204	 Bytes: 10
  %loadMem_401204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401204 = call %struct.Memory* @routine_movq__0x401374___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401204)
  store %struct.Memory* %call_401204, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 40120e	 Bytes: 2
  %loadMem_40120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120e)
  store %struct.Memory* %call_40120e, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 401210	 Bytes: 5
  %loadMem1_401210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401210 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401210, i64 -3568, i64 5, i64 5)
  store %struct.Memory* %call1_401210, %struct.Memory** %MEMORY

  %loadMem2_401210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401210 = load i64, i64* %3
  %call2_401210 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_401210, %struct.Memory* %loadMem2_401210)
  store %struct.Memory* %call2_401210, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 401215	 Bytes: 3
  %loadMem_401215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401215 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401215)
  store %struct.Memory* %call_401215, %struct.Memory** %MEMORY

  ; Code: .L_401218:	 RIP: 401218	 Bytes: 0
  br label %block_.L_401218
block_.L_401218:

  ; Code: movl 0x603a94, %edi	 RIP: 401218	 Bytes: 7
  %loadMem_401218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401218 = call %struct.Memory* @routine_movl_0x603a94___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401218)
  store %struct.Memory* %call_401218, %struct.Memory** %MEMORY

  ; Code: callq .Trial	 RIP: 40121f	 Bytes: 5
  %loadMem1_40121f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40121f = call %struct.Memory* @routine_callq_.Trial(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40121f, i64 -2687, i64 5, i64 5)
  store %struct.Memory* %call1_40121f, %struct.Memory** %MEMORY

  %loadMem2_40121f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40121f = load i64, i64* %3
  %call2_40121f = call %struct.Memory* @sub_4007a0.Trial(%struct.State* %0, i64  %loadPC_40121f, %struct.Memory* %loadMem2_40121f)
  store %struct.Memory* %call2_40121f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 401224	 Bytes: 3
  %loadMem_401224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401224 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401224)
  store %struct.Memory* %call_401224, %struct.Memory** %MEMORY

  ; Code: jne .L_401246	 RIP: 401227	 Bytes: 6
  %loadMem_401227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401227 = call %struct.Memory* @routine_jne_.L_401246(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401227, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_401227, %struct.Memory** %MEMORY

  %loadBr_401227 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401227 = icmp eq i8 %loadBr_401227, 1
  br i1 %cmpBr_401227, label %block_.L_401246, label %block_40122d

block_40122d:
  ; Code: movq $0x401386, %rdi	 RIP: 40122d	 Bytes: 10
  %loadMem_40122d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40122d = call %struct.Memory* @routine_movq__0x401386___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40122d)
  store %struct.Memory* %call_40122d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 401237	 Bytes: 2
  %loadMem_401237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401237 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401237)
  store %struct.Memory* %call_401237, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 401239	 Bytes: 5
  %loadMem1_401239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401239 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401239, i64 -3609, i64 5, i64 5)
  store %struct.Memory* %call1_401239, %struct.Memory** %MEMORY

  %loadMem2_401239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401239 = load i64, i64* %3
  %call2_401239 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_401239, %struct.Memory* %loadMem2_401239)
  store %struct.Memory* %call2_401239, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 40123e	 Bytes: 3
  %loadMem_40123e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40123e = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40123e)
  store %struct.Memory* %call_40123e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401270	 RIP: 401241	 Bytes: 5
  %loadMem_401241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401241 = call %struct.Memory* @routine_jmpq_.L_401270(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401241, i64 47, i64 5)
  store %struct.Memory* %call_401241, %struct.Memory** %MEMORY

  br label %block_.L_401270

  ; Code: .L_401246:	 RIP: 401246	 Bytes: 0
block_.L_401246:

  ; Code: cmpl $0x7d5, 0x6191c4	 RIP: 401246	 Bytes: 11
  %loadMem_401246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401246 = call %struct.Memory* @routine_cmpl__0x7d5__0x6191c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401246)
  store %struct.Memory* %call_401246, %struct.Memory** %MEMORY

  ; Code: je .L_40126b	 RIP: 401251	 Bytes: 6
  %loadMem_401251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401251 = call %struct.Memory* @routine_je_.L_40126b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401251, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_401251, %struct.Memory** %MEMORY

  %loadBr_401251 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401251 = icmp eq i8 %loadBr_401251, 1
  br i1 %cmpBr_401251, label %block_.L_40126b, label %block_401257

block_401257:
  ; Code: movq $0x401399, %rdi	 RIP: 401257	 Bytes: 10
  %loadMem_401257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401257 = call %struct.Memory* @routine_movq__0x401399___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401257)
  store %struct.Memory* %call_401257, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 401261	 Bytes: 2
  %loadMem_401261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401261 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401261)
  store %struct.Memory* %call_401261, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 401263	 Bytes: 5
  %loadMem1_401263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401263 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401263, i64 -3651, i64 5, i64 5)
  store %struct.Memory* %call1_401263, %struct.Memory** %MEMORY

  %loadMem2_401263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401263 = load i64, i64* %3
  %call2_401263 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_401263, %struct.Memory* %loadMem2_401263)
  store %struct.Memory* %call2_401263, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 401268	 Bytes: 3
  %loadMem_401268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401268 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401268)
  store %struct.Memory* %call_401268, %struct.Memory** %MEMORY

  ; Code: .L_40126b:	 RIP: 40126b	 Bytes: 0
  br label %block_.L_40126b
block_.L_40126b:

  ; Code: jmpq .L_401270	 RIP: 40126b	 Bytes: 5
  %loadMem_40126b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40126b = call %struct.Memory* @routine_jmpq_.L_401270(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40126b, i64 5, i64 5)
  store %struct.Memory* %call_40126b, %struct.Memory** %MEMORY

  br label %block_.L_401270

  ; Code: .L_401270:	 RIP: 401270	 Bytes: 0
block_.L_401270:

  ; Code: movq $0x4013ac, %rdi	 RIP: 401270	 Bytes: 10
  %loadMem_401270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401270 = call %struct.Memory* @routine_movq__0x4013ac___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401270)
  store %struct.Memory* %call_401270, %struct.Memory** %MEMORY

  ; Code: movl 0x603a94, %esi	 RIP: 40127a	 Bytes: 7
  %loadMem_40127a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127a = call %struct.Memory* @routine_movl_0x603a94___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127a)
  store %struct.Memory* %call_40127a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 401281	 Bytes: 2
  %loadMem_401281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401281 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401281)
  store %struct.Memory* %call_401281, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 401283	 Bytes: 5
  %loadMem1_401283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_401283 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_401283, i64 -3683, i64 5, i64 5)
  store %struct.Memory* %call1_401283, %struct.Memory** %MEMORY

  %loadMem2_401283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401283 = load i64, i64* %3
  %call2_401283 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_401283, %struct.Memory* %loadMem2_401283)
  store %struct.Memory* %call2_401283, %struct.Memory** %MEMORY

  ; Code: movq $0x4013ac, %rdi	 RIP: 401288	 Bytes: 10
  %loadMem_401288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401288 = call %struct.Memory* @routine_movq__0x4013ac___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401288)
  store %struct.Memory* %call_401288, %struct.Memory** %MEMORY

  ; Code: movl 0x6191c4, %esi	 RIP: 401292	 Bytes: 7
  %loadMem_401292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401292 = call %struct.Memory* @routine_movl_0x6191c4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401292)
  store %struct.Memory* %call_401292, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 401299	 Bytes: 3
  %loadMem_401299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401299 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401299)
  store %struct.Memory* %call_401299, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 40129c	 Bytes: 2
  %loadMem_40129c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129c)
  store %struct.Memory* %call_40129c, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 40129e	 Bytes: 5
  %loadMem1_40129e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40129e = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40129e, i64 -3710, i64 5, i64 5)
  store %struct.Memory* %call1_40129e, %struct.Memory** %MEMORY

  %loadMem2_40129e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40129e = load i64, i64* %3
  %call2_40129e = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_40129e, %struct.Memory* %loadMem2_40129e)
  store %struct.Memory* %call2_40129e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4012a3	 Bytes: 3
  %loadMem_4012a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a3 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a3)
  store %struct.Memory* %call_4012a3, %struct.Memory** %MEMORY

  ; Code: addq $0x30, %rsp	 RIP: 4012a6	 Bytes: 4
  %loadMem_4012a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a6 = call %struct.Memory* @routine_addq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a6)
  store %struct.Memory* %call_4012a6, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4012aa	 Bytes: 1
  %loadMem_4012aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012aa = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012aa)
  store %struct.Memory* %call_4012aa, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4012ab	 Bytes: 1
  %loadMem_4012ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ab = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ab)
  store %struct.Memory* %call_4012ab, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4012ab
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl__0x1ff__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 511)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jg_.L_4008a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__0x1__0x60df50___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 6348624
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_40087f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x5__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_400931(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x5__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_40091e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x5__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_40090b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_shll__0x3___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 3)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_shll__0x3___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 3)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__0x0__0x60df50___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6348624
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
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


define %struct.Memory* @routine_jmpq_.L_4008d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400910(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_4008c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400923(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_4008b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_cmpl__0xc__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 12)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_400997(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_400984(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x603aa0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x603aa0_type* @G__0x603aa0 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_shlq__0xb___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 11)
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








define %struct.Memory* @routine_jmpq_.L_400949(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400989(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400938(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jg_.L_400a1f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jg_.L_400a0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jg_.L_4009f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__0x1__0x603aa0___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6306464
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_4009c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4009fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4009af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400a11(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_40099e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__0x6191f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6191f0_type* @G_0x6191f0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0xb__0x610250(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x610250_type* @G_0x610250 to i64), i64 11)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_cmpl__0x1__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_400abd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jg_.L_400aaa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x3__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_400a97(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__0x1__0x6042a0___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6308512
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_400a5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400a9c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400a4d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400aaf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400a3c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__0x6191f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6191f4_type* @G_0x6191f4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0xc1__0x610254(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x610254_type* @G_0x610254 to i64), i64 193)
  ret %struct.Memory* %8
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


define %struct.Memory* @routine_jg_.L_400b5b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x3__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_400b48(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_400b35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__0x1__0x604aa0___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6310560
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_400afc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400b3a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400aeb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400b4d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400ada(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__0x6191f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6191f8_type* @G_0x6191f8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x58__0x610258(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x610258_type* @G_0x610258 to i64), i64 88)
  ret %struct.Memory* %8
}






define %struct.Memory* @routine_jg_.L_400bf9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_400be6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_400bd3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__0x1__0x6052a0___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6312608
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_400b9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400bd8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400b89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400beb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400b78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__0x6191fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6191fc_type* @G_0x6191fc to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x19__0x61025c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x61025c_type* @G_0x61025c to i64), i64 25)
  ret %struct.Memory* %8
}






define %struct.Memory* @routine_jg_.L_400c97(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_400c84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_400c71(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__0x1__0x605aa0___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6314656
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_400c38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400c76(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400c27(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400c89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400c16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__0x619200(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x619200_type* @G_0x619200 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x43__0x610260(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x610260_type* @G_0x610260 to i64), i64 67)
  ret %struct.Memory* %8
}






define %struct.Memory* @routine_jg_.L_400d35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_400d22(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_400d0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__0x1__0x6062a0___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6316704
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_400cd6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400d14(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400cc5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400d27(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400cb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__0x619204(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x619204_type* @G_0x619204 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0xc8__0x610264(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x610264_type* @G_0x610264 to i64), i64 200)
  ret %struct.Memory* %8
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


define %struct.Memory* @routine_jg_.L_400dd3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_400dc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_400dad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__0x1__0x606aa0___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6318752
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_400d74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400db2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400d63(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400dc5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400d52(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x1__0x619208(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x619208_type* @G_0x619208 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x2__0x610268(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x610268_type* @G_0x610268 to i64), i64 2)
  ret %struct.Memory* %8
}






define %struct.Memory* @routine_jg_.L_400e71(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_400e5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_400e4b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__0x1__0x6072a0___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6320800
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_400e12(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400e50(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400e01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400e63(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400df0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x1__0x61920c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x61920c_type* @G_0x61920c to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x10__0x61026c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x61026c_type* @G_0x61026c to i64), i64 16)
  ret %struct.Memory* %8
}






define %struct.Memory* @routine_jg_.L_400f0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_400efc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_400ee9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__0x1__0x607aa0___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6322848
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_400eb0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400eee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400e9f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400f01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400e8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x1__0x619210(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x619210_type* @G_0x619210 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x80__0x610270(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x610270_type* @G_0x610270 to i64), i64 128)
  ret %struct.Memory* %8
}






define %struct.Memory* @routine_jg_.L_400fad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_400f9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_400f87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__0x1__0x6082a0___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6324896
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_400f4e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400f8c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400f3d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400f9f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400f2c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x2__0x619214(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x619214_type* @G_0x619214 to i64), i64 2)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x9__0x610274(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x610274_type* @G_0x610274 to i64), i64 9)
  ret %struct.Memory* %8
}






define %struct.Memory* @routine_jg_.L_40104b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_401038(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_401025(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__0x1__0x608aa0___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6326944
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_400fec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_40102a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400fdb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_40103d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400fca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x2__0x619218(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x619218_type* @G_0x619218 to i64), i64 2)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x41__0x610278(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x610278_type* @G_0x610278 to i64), i64 65)
  ret %struct.Memory* %8
}






define %struct.Memory* @routine_jg_.L_4010e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_4010d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_4010c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__0x1__0x6092a0___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6328992
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_40108a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4010c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_401079(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4010db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_401068(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x2__0x61921c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x61921c_type* @G_0x61921c to i64), i64 2)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x48__0x61027c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x61027c_type* @G_0x61027c to i64), i64 72)
  ret %struct.Memory* %8
}






define %struct.Memory* @routine_jg_.L_401187(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_401174(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_401161(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__0x1__0x609aa0___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6331040
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_401128(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_401166(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_401117(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_401179(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_401106(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl__0x3__0x619220(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x619220_type* @G_0x619220 to i64), i64 3)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x49__0x610280(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x610280_type* @G_0x610280 to i64), i64 73)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0xd__0x6191e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6191e0_type* @G_0x6191e0 to i64), i64 13)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x3__0x6191e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6191e4_type* @G_0x6191e4 to i64), i64 3)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x1__0x6191e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6191e8_type* @G_0x6191e8 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x1__0x6191ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6191ec_type* @G_0x6191ec to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x49__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 73)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__0x6191c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6191c4_type* @G_0x6191c4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_callq_.Fit(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_401204(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.Place(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__0x603a94(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x603a94_type* @G_0x603a94 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_401218(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x401374___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x401374_type* @G__0x401374 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_callq_.printf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x603a94___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x603a94_type* @G_0x603a94 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.Trial(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_401246(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x401386___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x401386_type* @G__0x401386 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_401270(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x7d5__0x6191c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6191c4_type* @G_0x6191c4 to i64), i64 2005)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_40126b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x401399___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x401399_type* @G__0x401399 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movq__0x4013ac___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4013ac_type* @G__0x4013ac to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x603a94___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x603a94_type* @G_0x603a94 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl_0x6191c4___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6191c4_type* @G_0x6191c4 to i64))
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

