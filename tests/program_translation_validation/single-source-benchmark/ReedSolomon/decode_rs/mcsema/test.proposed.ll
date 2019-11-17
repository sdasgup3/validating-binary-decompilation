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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

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
%G_0x603080___rax_4__type = type <{ [4 x i8] }>
@G_0x603080___rax_4_= global %G_0x603080___rax_4__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x603080___rcx_4__type = type <{ [4 x i8] }>
@G_0x603080___rcx_4_= global %G_0x603080___rcx_4__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x603080___rsi_4__type = type <{ [4 x i8] }>
@G_0x603080___rsi_4_= global %G_0x603080___rsi_4__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x603480___rax_4__type = type <{ [4 x i8] }>
@G_0x603480___rax_4_= global %G_0x603480___rax_4__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x603480___rcx_4__type = type <{ [4 x i8] }>
@G_0x603480___rcx_4_= global %G_0x603480___rcx_4__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x603880___rax_4__type = type <{ [4 x i8] }>
@G_0x603880___rax_4_= global %G_0x603880___rax_4__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x603880___rcx_4__type = type <{ [4 x i8] }>
@G_0x603880___rcx_4_= global %G_0x603880___rcx_4__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x603880___rdi_4__type = type <{ [4 x i8] }>
@G_0x603880___rdi_4_= global %G_0x603880___rdi_4__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x603880___rsi_4__type = type <{ [4 x i8] }>
@G_0x603880___rsi_4_= global %G_0x603880___rsi_4__type <{ [4 x i8] c"\00\00\00\00" }>


define %struct.Memory* @decode_rs(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .decode_rs:	 RIP: 400940	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 400940	 Bytes: 1
  %loadMem_400940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400940 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400940)
  store %struct.Memory* %call_400940, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 400941	 Bytes: 3
  %loadMem_400941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400941 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400941)
  store %struct.Memory* %call_400941, %struct.Memory** %MEMORY

  ; Code: subq $0xa30, %rsp	 RIP: 400944	 Bytes: 7
  %loadMem_400944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400944 = call %struct.Memory* @routine_subq__0xa30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400944)
  store %struct.Memory* %call_400944, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x5d4(%rbp)	 RIP: 40094b	 Bytes: 10
  %loadMem_40094b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40094b = call %struct.Memory* @routine_movl__0x0__MINUS0x5d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40094b)
  store %struct.Memory* %call_40094b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x5d8(%rbp)	 RIP: 400955	 Bytes: 10
  %loadMem_400955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400955 = call %struct.Memory* @routine_movl__0x0__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400955)
  store %struct.Memory* %call_400955, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 40095f	 Bytes: 7
  %loadMem_40095f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40095f = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40095f)
  store %struct.Memory* %call_40095f, %struct.Memory** %MEMORY

  ; Code: .L_400966:	 RIP: 400966	 Bytes: 0
  br label %block_.L_400966
block_.L_400966:

  ; Code: cmpl $0x10, -0x4(%rbp)	 RIP: 400966	 Bytes: 4
  %loadMem_400966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400966 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400966)
  store %struct.Memory* %call_400966, %struct.Memory** %MEMORY

  ; Code: jg .L_400a46	 RIP: 40096a	 Bytes: 6
  %loadMem_40096a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40096a = call %struct.Memory* @routine_jg_.L_400a46(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40096a, i8* %BRANCH_TAKEN, i64 220, i64 6, i64 6)
  store %struct.Memory* %call_40096a, %struct.Memory** %MEMORY

  %loadBr_40096a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40096a = icmp eq i8 %loadBr_40096a, 1
  br i1 %cmpBr_40096a, label %block_.L_400a46, label %block_400970

block_400970:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 400970	 Bytes: 4
  %loadMem_400970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400970 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400970)
  store %struct.Memory* %call_400970, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x5d0(%rbp,%rax,4)	 RIP: 400974	 Bytes: 11
  %loadMem_400974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400974 = call %struct.Memory* @routine_movl__0x0__MINUS0x5d0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400974)
  store %struct.Memory* %call_400974, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 40097f	 Bytes: 7
  %loadMem_40097f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40097f = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40097f)
  store %struct.Memory* %call_40097f, %struct.Memory** %MEMORY

  ; Code: .L_400986:	 RIP: 400986	 Bytes: 0
  br label %block_.L_400986
block_.L_400986:

  ; Code: cmpl $0xff, -0x8(%rbp)	 RIP: 400986	 Bytes: 7
  %loadMem_400986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400986 = call %struct.Memory* @routine_cmpl__0xff__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400986)
  store %struct.Memory* %call_400986, %struct.Memory** %MEMORY

  ; Code: jge .L_4009fe	 RIP: 40098d	 Bytes: 6
  %loadMem_40098d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40098d = call %struct.Memory* @routine_jge_.L_4009fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40098d, i8* %BRANCH_TAKEN, i64 113, i64 6, i64 6)
  store %struct.Memory* %call_40098d, %struct.Memory** %MEMORY

  %loadBr_40098d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40098d = icmp eq i8 %loadBr_40098d, 1
  br i1 %cmpBr_40098d, label %block_.L_4009fe, label %block_400993

block_400993:
  ; Code: movslq -0x8(%rbp), %rax	 RIP: 400993	 Bytes: 4
  %loadMem_400993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400993 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400993)
  store %struct.Memory* %call_400993, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, 0x603080(,%rax,4)	 RIP: 400997	 Bytes: 8
  %loadMem_400997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400997 = call %struct.Memory* @routine_cmpl__0xffffffff__0x603080___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400997)
  store %struct.Memory* %call_400997, %struct.Memory** %MEMORY

  ; Code: je .L_4009eb	 RIP: 40099f	 Bytes: 6
  %loadMem_40099f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40099f = call %struct.Memory* @routine_je_.L_4009eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40099f, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_40099f, %struct.Memory** %MEMORY

  %loadBr_40099f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40099f = icmp eq i8 %loadBr_40099f, 1
  br i1 %cmpBr_40099f, label %block_.L_4009eb, label %block_4009a5

block_4009a5:
  ; Code: movl $0xff, %eax	 RIP: 4009a5	 Bytes: 5
  %loadMem_4009a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009a5 = call %struct.Memory* @routine_movl__0xff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009a5)
  store %struct.Memory* %call_4009a5, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4009aa	 Bytes: 4
  %loadMem_4009aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009aa = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009aa)
  store %struct.Memory* %call_4009aa, %struct.Memory** %MEMORY

  ; Code: movl 0x603080(,%rcx,4), %edx	 RIP: 4009ae	 Bytes: 7
  %loadMem_4009ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009ae = call %struct.Memory* @routine_movl_0x603080___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009ae)
  store %struct.Memory* %call_4009ae, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 4009b5	 Bytes: 3
  %loadMem_4009b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009b5 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009b5)
  store %struct.Memory* %call_4009b5, %struct.Memory** %MEMORY

  ; Code: imull -0x8(%rbp), %esi	 RIP: 4009b8	 Bytes: 4
  %loadMem_4009b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009b8 = call %struct.Memory* @routine_imull_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009b8)
  store %struct.Memory* %call_4009b8, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4009bc	 Bytes: 2
  %loadMem_4009bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009bc = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009bc)
  store %struct.Memory* %call_4009bc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa84(%rbp)	 RIP: 4009be	 Bytes: 6
  %loadMem_4009be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009be = call %struct.Memory* @routine_movl__eax__MINUS0xa84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009be)
  store %struct.Memory* %call_4009be, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 4009c4	 Bytes: 2
  %loadMem_4009c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c4 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c4)
  store %struct.Memory* %call_4009c4, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4009c6	 Bytes: 1
  %loadMem_4009c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c6 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c6)
  store %struct.Memory* %call_4009c6, %struct.Memory** %MEMORY

  ; Code: movl -0xa84(%rbp), %esi	 RIP: 4009c7	 Bytes: 6
  %loadMem_4009c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c7 = call %struct.Memory* @routine_movl_MINUS0xa84__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c7)
  store %struct.Memory* %call_4009c7, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 4009cd	 Bytes: 2
  %loadMem_4009cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009cd = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009cd)
  store %struct.Memory* %call_4009cd, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4009cf	 Bytes: 3
  %loadMem_4009cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009cf = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009cf)
  store %struct.Memory* %call_4009cf, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rcx,4), %edx	 RIP: 4009d2	 Bytes: 7
  %loadMem_4009d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009d2 = call %struct.Memory* @routine_movl_0x603880___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009d2)
  store %struct.Memory* %call_4009d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4009d9	 Bytes: 4
  %loadMem_4009d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009d9 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009d9)
  store %struct.Memory* %call_4009d9, %struct.Memory** %MEMORY

  ; Code: xorl -0x5d0(%rbp,%rcx,4), %edx	 RIP: 4009dd	 Bytes: 7
  %loadMem_4009dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009dd = call %struct.Memory* @routine_xorl_MINUS0x5d0__rbp__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009dd)
  store %struct.Memory* %call_4009dd, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x5d0(%rbp,%rcx,4)	 RIP: 4009e4	 Bytes: 7
  %loadMem_4009e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009e4 = call %struct.Memory* @routine_movl__edx__MINUS0x5d0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009e4)
  store %struct.Memory* %call_4009e4, %struct.Memory** %MEMORY

  ; Code: .L_4009eb:	 RIP: 4009eb	 Bytes: 0
  br label %block_.L_4009eb
block_.L_4009eb:

  ; Code: jmpq .L_4009f0	 RIP: 4009eb	 Bytes: 5
  %loadMem_4009eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009eb = call %struct.Memory* @routine_jmpq_.L_4009f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009eb, i64 5, i64 5)
  store %struct.Memory* %call_4009eb, %struct.Memory** %MEMORY

  br label %block_.L_4009f0

  ; Code: .L_4009f0:	 RIP: 4009f0	 Bytes: 0
block_.L_4009f0:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4009f0	 Bytes: 3
  %loadMem_4009f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f0 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f0)
  store %struct.Memory* %call_4009f0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4009f3	 Bytes: 3
  %loadMem_4009f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f3)
  store %struct.Memory* %call_4009f3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4009f6	 Bytes: 3
  %loadMem_4009f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f6 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f6)
  store %struct.Memory* %call_4009f6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400986	 RIP: 4009f9	 Bytes: 5
  %loadMem_4009f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f9 = call %struct.Memory* @routine_jmpq_.L_400986(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f9, i64 -115, i64 5)
  store %struct.Memory* %call_4009f9, %struct.Memory** %MEMORY

  br label %block_.L_400986

  ; Code: .L_4009fe:	 RIP: 4009fe	 Bytes: 0
block_.L_4009fe:

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4009fe	 Bytes: 4
  %loadMem_4009fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009fe = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009fe)
  store %struct.Memory* %call_4009fe, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x5d0(%rbp,%rax,4)	 RIP: 400a02	 Bytes: 8
  %loadMem_400a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a02 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x5d0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a02)
  store %struct.Memory* %call_400a02, %struct.Memory** %MEMORY

  ; Code: je .L_400a1a	 RIP: 400a0a	 Bytes: 6
  %loadMem_400a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a0a = call %struct.Memory* @routine_je_.L_400a1a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a0a, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_400a0a, %struct.Memory** %MEMORY

  %loadBr_400a0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a0a = icmp eq i8 %loadBr_400a0a, 1
  br i1 %cmpBr_400a0a, label %block_.L_400a1a, label %block_400a10

block_400a10:
  ; Code: movl $0x1, -0x5d8(%rbp)	 RIP: 400a10	 Bytes: 10
  %loadMem_400a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a10 = call %struct.Memory* @routine_movl__0x1__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a10)
  store %struct.Memory* %call_400a10, %struct.Memory** %MEMORY

  ; Code: .L_400a1a:	 RIP: 400a1a	 Bytes: 0
  br label %block_.L_400a1a
block_.L_400a1a:

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 400a1a	 Bytes: 4
  %loadMem_400a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a1a = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a1a)
  store %struct.Memory* %call_400a1a, %struct.Memory** %MEMORY

  ; Code: movslq -0x5d0(%rbp,%rax,4), %rax	 RIP: 400a1e	 Bytes: 8
  %loadMem_400a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a1e = call %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a1e)
  store %struct.Memory* %call_400a1e, %struct.Memory** %MEMORY

  ; Code: movl 0x603480(,%rax,4), %ecx	 RIP: 400a26	 Bytes: 7
  %loadMem_400a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a26 = call %struct.Memory* @routine_movl_0x603480___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a26)
  store %struct.Memory* %call_400a26, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 400a2d	 Bytes: 4
  %loadMem_400a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a2d = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a2d)
  store %struct.Memory* %call_400a2d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x5d0(%rbp,%rax,4)	 RIP: 400a31	 Bytes: 7
  %loadMem_400a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a31 = call %struct.Memory* @routine_movl__ecx__MINUS0x5d0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a31)
  store %struct.Memory* %call_400a31, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400a38	 Bytes: 3
  %loadMem_400a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a38 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a38)
  store %struct.Memory* %call_400a38, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400a3b	 Bytes: 3
  %loadMem_400a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a3b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a3b)
  store %struct.Memory* %call_400a3b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400a3e	 Bytes: 3
  %loadMem_400a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a3e = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a3e)
  store %struct.Memory* %call_400a3e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400966	 RIP: 400a41	 Bytes: 5
  %loadMem_400a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a41 = call %struct.Memory* @routine_jmpq_.L_400966(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a41, i64 -219, i64 5)
  store %struct.Memory* %call_400a41, %struct.Memory** %MEMORY

  br label %block_.L_400966

  ; Code: .L_400a46:	 RIP: 400a46	 Bytes: 0
block_.L_400a46:

  ; Code: cmpl $0x0, -0x5d8(%rbp)	 RIP: 400a46	 Bytes: 7
  %loadMem_400a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a46 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a46)
  store %struct.Memory* %call_400a46, %struct.Memory** %MEMORY

  ; Code: je .L_4017fd	 RIP: 400a4d	 Bytes: 6
  %loadMem_400a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a4d = call %struct.Memory* @routine_je_.L_4017fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a4d, i8* %BRANCH_TAKEN, i64 3504, i64 6, i64 6)
  store %struct.Memory* %call_400a4d, %struct.Memory** %MEMORY

  %loadBr_400a4d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a4d = icmp eq i8 %loadBr_400a4d, 1
  br i1 %cmpBr_400a4d, label %block_.L_4017fd, label %block_400a53

block_400a53:
  ; Code: movl $0x0, -0x4e0(%rbp)	 RIP: 400a53	 Bytes: 10
  %loadMem_400a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a53 = call %struct.Memory* @routine_movl__0x0__MINUS0x4e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a53)
  store %struct.Memory* %call_400a53, %struct.Memory** %MEMORY

  ; Code: movl -0x5cc(%rbp), %eax	 RIP: 400a5d	 Bytes: 6
  %loadMem_400a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a5d = call %struct.Memory* @routine_movl_MINUS0x5cc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a5d)
  store %struct.Memory* %call_400a5d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4dc(%rbp)	 RIP: 400a63	 Bytes: 6
  %loadMem_400a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a63 = call %struct.Memory* @routine_movl__eax__MINUS0x4dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a63)
  store %struct.Memory* %call_400a63, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x490(%rbp)	 RIP: 400a69	 Bytes: 10
  %loadMem_400a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a69 = call %struct.Memory* @routine_movl__0x0__MINUS0x490__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a69)
  store %struct.Memory* %call_400a69, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x450(%rbp)	 RIP: 400a73	 Bytes: 10
  %loadMem_400a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a73 = call %struct.Memory* @routine_movl__0x1__MINUS0x450__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a73)
  store %struct.Memory* %call_400a73, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 400a7d	 Bytes: 7
  %loadMem_400a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a7d = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a7d)
  store %struct.Memory* %call_400a7d, %struct.Memory** %MEMORY

  ; Code: .L_400a84:	 RIP: 400a84	 Bytes: 0
  br label %block_.L_400a84
block_.L_400a84:

  ; Code: cmpl $0x10, -0x4(%rbp)	 RIP: 400a84	 Bytes: 4
  %loadMem_400a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a84 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a84)
  store %struct.Memory* %call_400a84, %struct.Memory** %MEMORY

  ; Code: jge .L_400aba	 RIP: 400a88	 Bytes: 6
  %loadMem_400a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a88 = call %struct.Memory* @routine_jge_.L_400aba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a88, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_400a88, %struct.Memory** %MEMORY

  %loadBr_400a88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a88 = icmp eq i8 %loadBr_400a88, 1
  br i1 %cmpBr_400a88, label %block_.L_400aba, label %block_400a8e

block_400a8e:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 400a8e	 Bytes: 4
  %loadMem_400a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a8e = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a8e)
  store %struct.Memory* %call_400a8e, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x490(%rbp,%rax,4)	 RIP: 400a92	 Bytes: 11
  %loadMem_400a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a92 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x490__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a92)
  store %struct.Memory* %call_400a92, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 400a9d	 Bytes: 4
  %loadMem_400a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a9d = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a9d)
  store %struct.Memory* %call_400a9d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x450(%rbp,%rax,4)	 RIP: 400aa1	 Bytes: 11
  %loadMem_400aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aa1 = call %struct.Memory* @routine_movl__0x0__MINUS0x450__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aa1)
  store %struct.Memory* %call_400aa1, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400aac	 Bytes: 3
  %loadMem_400aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aac = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aac)
  store %struct.Memory* %call_400aac, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400aaf	 Bytes: 3
  %loadMem_400aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aaf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aaf)
  store %struct.Memory* %call_400aaf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400ab2	 Bytes: 3
  %loadMem_400ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab2 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab2)
  store %struct.Memory* %call_400ab2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400a84	 RIP: 400ab5	 Bytes: 5
  %loadMem_400ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab5 = call %struct.Memory* @routine_jmpq_.L_400a84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab5, i64 -49, i64 5)
  store %struct.Memory* %call_400ab5, %struct.Memory** %MEMORY

  br label %block_.L_400a84

  ; Code: .L_400aba:	 RIP: 400aba	 Bytes: 0
block_.L_400aba:

  ; Code: movl $0x0, -0x530(%rbp)	 RIP: 400aba	 Bytes: 10
  %loadMem_400aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aba = call %struct.Memory* @routine_movl__0x0__MINUS0x530__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aba)
  store %struct.Memory* %call_400aba, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x52c(%rbp)	 RIP: 400ac4	 Bytes: 10
  %loadMem_400ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ac4 = call %struct.Memory* @routine_movl__0x0__MINUS0x52c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ac4)
  store %struct.Memory* %call_400ac4, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x580(%rbp)	 RIP: 400ace	 Bytes: 10
  %loadMem_400ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ace = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x580__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ace)
  store %struct.Memory* %call_400ace, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x57c(%rbp)	 RIP: 400ad8	 Bytes: 10
  %loadMem_400ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ad8 = call %struct.Memory* @routine_movl__0x0__MINUS0x57c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ad8)
  store %struct.Memory* %call_400ad8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 400ae2	 Bytes: 7
  %loadMem_400ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ae2 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ae2)
  store %struct.Memory* %call_400ae2, %struct.Memory** %MEMORY

  ; Code: .L_400ae9:	 RIP: 400ae9	 Bytes: 0
  br label %block_.L_400ae9
block_.L_400ae9:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 400ae9	 Bytes: 3
  %loadMem_400ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ae9 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ae9)
  store %struct.Memory* %call_400ae9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400aec	 Bytes: 3
  %loadMem_400aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aec = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aec)
  store %struct.Memory* %call_400aec, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 400aef	 Bytes: 3
  %loadMem_400aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aef = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aef)
  store %struct.Memory* %call_400aef, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 400af2	 Bytes: 4
  %loadMem_400af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400af2 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400af2)
  store %struct.Memory* %call_400af2, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, -0x4e0(%rbp,%rcx,4)	 RIP: 400af6	 Bytes: 8
  %loadMem_400af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400af6 = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x4e0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400af6)
  store %struct.Memory* %call_400af6, %struct.Memory** %MEMORY

  ; Code: jne .L_400bb2	 RIP: 400afe	 Bytes: 6
  %loadMem_400afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400afe = call %struct.Memory* @routine_jne_.L_400bb2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400afe, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_400afe, %struct.Memory** %MEMORY

  %loadBr_400afe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400afe = icmp eq i8 %loadBr_400afe, 1
  br i1 %cmpBr_400afe, label %block_.L_400bb2, label %block_400b04

block_400b04:
  ; Code: movslq -0xc(%rbp), %rax	 RIP: 400b04	 Bytes: 4
  %loadMem_400b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b04 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b04)
  store %struct.Memory* %call_400b04, %struct.Memory** %MEMORY

  ; Code: movl -0x530(%rbp,%rax,4), %ecx	 RIP: 400b08	 Bytes: 7
  %loadMem_400b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b08 = call %struct.Memory* @routine_movl_MINUS0x530__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b08)
  store %struct.Memory* %call_400b08, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400b0f	 Bytes: 3
  %loadMem_400b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b0f = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b0f)
  store %struct.Memory* %call_400b0f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 400b12	 Bytes: 3
  %loadMem_400b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b12 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b12)
  store %struct.Memory* %call_400b12, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rax	 RIP: 400b15	 Bytes: 3
  %loadMem_400b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b15 = call %struct.Memory* @routine_movslq__edx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b15)
  store %struct.Memory* %call_400b15, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x530(%rbp,%rax,4)	 RIP: 400b18	 Bytes: 7
  %loadMem_400b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b18 = call %struct.Memory* @routine_movl__ecx__MINUS0x530__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b18)
  store %struct.Memory* %call_400b18, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400b1f	 Bytes: 7
  %loadMem_400b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b1f = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b1f)
  store %struct.Memory* %call_400b1f, %struct.Memory** %MEMORY

  ; Code: .L_400b26:	 RIP: 400b26	 Bytes: 0
  br label %block_.L_400b26
block_.L_400b26:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400b26	 Bytes: 3
  %loadMem_400b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b26 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b26)
  store %struct.Memory* %call_400b26, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 400b29	 Bytes: 4
  %loadMem_400b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b29 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b29)
  store %struct.Memory* %call_400b29, %struct.Memory** %MEMORY

  ; Code: cmpl -0x530(%rbp,%rcx,4), %eax	 RIP: 400b2d	 Bytes: 7
  %loadMem_400b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b2d = call %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b2d)
  store %struct.Memory* %call_400b2d, %struct.Memory** %MEMORY

  ; Code: jg .L_400bad	 RIP: 400b34	 Bytes: 6
  %loadMem_400b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b34 = call %struct.Memory* @routine_jg_.L_400bad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b34, i8* %BRANCH_TAKEN, i64 121, i64 6, i64 6)
  store %struct.Memory* %call_400b34, %struct.Memory** %MEMORY

  %loadBr_400b34 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b34 = icmp eq i8 %loadBr_400b34, 1
  br i1 %cmpBr_400b34, label %block_.L_400bad, label %block_400b3a

block_400b3a:
  ; Code: leaq -0x490(%rbp), %rax	 RIP: 400b3a	 Bytes: 7
  %loadMem_400b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b3a = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b3a)
  store %struct.Memory* %call_400b3a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 400b41	 Bytes: 4
  %loadMem_400b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b41 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b41)
  store %struct.Memory* %call_400b41, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 400b45	 Bytes: 4
  %loadMem_400b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b45 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b45)
  store %struct.Memory* %call_400b45, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 400b49	 Bytes: 3
  %loadMem_400b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b49 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b49)
  store %struct.Memory* %call_400b49, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 400b4c	 Bytes: 3
  %loadMem_400b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b4c = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b4c)
  store %struct.Memory* %call_400b4c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 400b4f	 Bytes: 4
  %loadMem_400b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b4f = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b4f)
  store %struct.Memory* %call_400b4f, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rcx,4), %esi	 RIP: 400b53	 Bytes: 3
  %loadMem_400b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b53 = call %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b53)
  store %struct.Memory* %call_400b53, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edi	 RIP: 400b56	 Bytes: 3
  %loadMem_400b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b56 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b56)
  store %struct.Memory* %call_400b56, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edi	 RIP: 400b59	 Bytes: 3
  %loadMem_400b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b59 = call %struct.Memory* @routine_addl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b59)
  store %struct.Memory* %call_400b59, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 400b5c	 Bytes: 3
  %loadMem_400b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b5c = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b5c)
  store %struct.Memory* %call_400b5c, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 400b5f	 Bytes: 4
  %loadMem_400b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b5f = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b5f)
  store %struct.Memory* %call_400b5f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 400b63	 Bytes: 3
  %loadMem_400b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b63 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b63)
  store %struct.Memory* %call_400b63, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 400b66	 Bytes: 3
  %loadMem_400b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b66 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b66)
  store %struct.Memory* %call_400b66, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 400b69	 Bytes: 4
  %loadMem_400b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b69 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b69)
  store %struct.Memory* %call_400b69, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rdx,%rcx,4)	 RIP: 400b6d	 Bytes: 3
  %loadMem_400b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b6d = call %struct.Memory* @routine_movl__esi____rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b6d)
  store %struct.Memory* %call_400b6d, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 400b70	 Bytes: 4
  %loadMem_400b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b70 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b70)
  store %struct.Memory* %call_400b70, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 400b74	 Bytes: 4
  %loadMem_400b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b74 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b74)
  store %struct.Memory* %call_400b74, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 400b78	 Bytes: 3
  %loadMem_400b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b78 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b78)
  store %struct.Memory* %call_400b78, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 400b7b	 Bytes: 3
  %loadMem_400b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b7b = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b7b)
  store %struct.Memory* %call_400b7b, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 400b7e	 Bytes: 4
  %loadMem_400b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b7e = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b7e)
  store %struct.Memory* %call_400b7e, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rcx,4), %rcx	 RIP: 400b82	 Bytes: 4
  %loadMem_400b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b82 = call %struct.Memory* @routine_movslq___rdx__rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b82)
  store %struct.Memory* %call_400b82, %struct.Memory** %MEMORY

  ; Code: movl 0x603480(,%rcx,4), %esi	 RIP: 400b86	 Bytes: 7
  %loadMem_400b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b86 = call %struct.Memory* @routine_movl_0x603480___rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b86)
  store %struct.Memory* %call_400b86, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 400b8d	 Bytes: 4
  %loadMem_400b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b8d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b8d)
  store %struct.Memory* %call_400b8d, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 400b91	 Bytes: 4
  %loadMem_400b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b91 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b91)
  store %struct.Memory* %call_400b91, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400b95	 Bytes: 3
  %loadMem_400b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b95 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b95)
  store %struct.Memory* %call_400b95, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 400b98	 Bytes: 4
  %loadMem_400b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b98 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b98)
  store %struct.Memory* %call_400b98, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 400b9c	 Bytes: 3
  %loadMem_400b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b9c = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b9c)
  store %struct.Memory* %call_400b9c, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400b9f	 Bytes: 3
  %loadMem_400b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b9f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b9f)
  store %struct.Memory* %call_400b9f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400ba2	 Bytes: 3
  %loadMem_400ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ba2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ba2)
  store %struct.Memory* %call_400ba2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400ba5	 Bytes: 3
  %loadMem_400ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ba5 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ba5)
  store %struct.Memory* %call_400ba5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400b26	 RIP: 400ba8	 Bytes: 5
  %loadMem_400ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ba8 = call %struct.Memory* @routine_jmpq_.L_400b26(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ba8, i64 -130, i64 5)
  store %struct.Memory* %call_400ba8, %struct.Memory** %MEMORY

  br label %block_.L_400b26

  ; Code: .L_400bad:	 RIP: 400bad	 Bytes: 0
block_.L_400bad:

  ; Code: jmpq .L_400e6a	 RIP: 400bad	 Bytes: 5
  %loadMem_400bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bad = call %struct.Memory* @routine_jmpq_.L_400e6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bad, i64 701, i64 5)
  store %struct.Memory* %call_400bad, %struct.Memory** %MEMORY

  br label %block_.L_400e6a

  ; Code: .L_400bb2:	 RIP: 400bb2	 Bytes: 0
block_.L_400bb2:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 400bb2	 Bytes: 3
  %loadMem_400bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bb2 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bb2)
  store %struct.Memory* %call_400bb2, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 400bb5	 Bytes: 3
  %loadMem_400bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bb5 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bb5)
  store %struct.Memory* %call_400bb5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 400bb8	 Bytes: 3
  %loadMem_400bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bb8 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bb8)
  store %struct.Memory* %call_400bb8, %struct.Memory** %MEMORY

  ; Code: .L_400bbb:	 RIP: 400bbb	 Bytes: 0
  br label %block_.L_400bbb
block_.L_400bbb:

  ; Code: xorl %eax, %eax	 RIP: 400bbb	 Bytes: 2
  %loadMem_400bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bbb = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bbb)
  store %struct.Memory* %call_400bbb, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 400bbd	 Bytes: 2
  %loadMem_400bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bbd = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bbd)
  store %struct.Memory* %call_400bbd, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 400bbf	 Bytes: 4
  %loadMem_400bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bbf = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bbf)
  store %struct.Memory* %call_400bbf, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, -0x4e0(%rbp,%rdx,4)	 RIP: 400bc3	 Bytes: 8
  %loadMem_400bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bc3 = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x4e0__rbp__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bc3)
  store %struct.Memory* %call_400bc3, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0xa85(%rbp)	 RIP: 400bcb	 Bytes: 6
  %loadMem_400bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bcb = call %struct.Memory* @routine_movb__cl__MINUS0xa85__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bcb)
  store %struct.Memory* %call_400bcb, %struct.Memory** %MEMORY

  ; Code: jne .L_400be4	 RIP: 400bd1	 Bytes: 6
  %loadMem_400bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bd1 = call %struct.Memory* @routine_jne_.L_400be4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bd1, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_400bd1, %struct.Memory** %MEMORY

  %loadBr_400bd1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400bd1 = icmp eq i8 %loadBr_400bd1, 1
  br i1 %cmpBr_400bd1, label %block_.L_400be4, label %block_400bd7

block_400bd7:
  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 400bd7	 Bytes: 4
  %loadMem_400bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bd7 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bd7)
  store %struct.Memory* %call_400bd7, %struct.Memory** %MEMORY

  ; Code: setg %al	 RIP: 400bdb	 Bytes: 3
  %loadMem_400bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bdb = call %struct.Memory* @routine_setg__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bdb)
  store %struct.Memory* %call_400bdb, %struct.Memory** %MEMORY

  ; Code: movb %al, -0xa85(%rbp)	 RIP: 400bde	 Bytes: 6
  %loadMem_400bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bde = call %struct.Memory* @routine_movb__al__MINUS0xa85__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bde)
  store %struct.Memory* %call_400bde, %struct.Memory** %MEMORY

  ; Code: .L_400be4:	 RIP: 400be4	 Bytes: 0
  br label %block_.L_400be4
block_.L_400be4:

  ; Code: movb -0xa85(%rbp), %al	 RIP: 400be4	 Bytes: 6
  %loadMem_400be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400be4 = call %struct.Memory* @routine_movb_MINUS0xa85__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400be4)
  store %struct.Memory* %call_400be4, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 400bea	 Bytes: 2
  %loadMem_400bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bea = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bea)
  store %struct.Memory* %call_400bea, %struct.Memory** %MEMORY

  ; Code: jne .L_400bf7	 RIP: 400bec	 Bytes: 6
  %loadMem_400bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bec = call %struct.Memory* @routine_jne_.L_400bf7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bec, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_400bec, %struct.Memory** %MEMORY

  %loadBr_400bec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400bec = icmp eq i8 %loadBr_400bec, 1
  br i1 %cmpBr_400bec, label %block_.L_400bf7, label %block_400bf2

block_400bf2:
  ; Code: jmpq .L_400c05	 RIP: 400bf2	 Bytes: 5
  %loadMem_400bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bf2 = call %struct.Memory* @routine_jmpq_.L_400c05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bf2, i64 19, i64 5)
  store %struct.Memory* %call_400bf2, %struct.Memory** %MEMORY

  br label %block_.L_400c05

  ; Code: .L_400bf7:	 RIP: 400bf7	 Bytes: 0
block_.L_400bf7:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 400bf7	 Bytes: 3
  %loadMem_400bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bf7 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bf7)
  store %struct.Memory* %call_400bf7, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 400bfa	 Bytes: 3
  %loadMem_400bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bfa = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bfa)
  store %struct.Memory* %call_400bfa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 400bfd	 Bytes: 3
  %loadMem_400bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400bfd = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400bfd)
  store %struct.Memory* %call_400bfd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400bbb	 RIP: 400c00	 Bytes: 5
  %loadMem_400c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c00 = call %struct.Memory* @routine_jmpq_.L_400bbb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c00, i64 -69, i64 5)
  store %struct.Memory* %call_400c00, %struct.Memory** %MEMORY

  br label %block_.L_400bbb

  ; Code: .L_400c05:	 RIP: 400c05	 Bytes: 0
block_.L_400c05:

  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 400c05	 Bytes: 4
  %loadMem_400c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c05 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c05)
  store %struct.Memory* %call_400c05, %struct.Memory** %MEMORY

  ; Code: jle .L_400c66	 RIP: 400c09	 Bytes: 6
  %loadMem_400c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c09 = call %struct.Memory* @routine_jle_.L_400c66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c09, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_400c09, %struct.Memory** %MEMORY

  %loadBr_400c09 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c09 = icmp eq i8 %loadBr_400c09, 1
  br i1 %cmpBr_400c09, label %block_.L_400c66, label %block_400c0f

block_400c0f:
  ; Code: movl -0x10(%rbp), %eax	 RIP: 400c0f	 Bytes: 3
  %loadMem_400c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c0f = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c0f)
  store %struct.Memory* %call_400c0f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 400c12	 Bytes: 3
  %loadMem_400c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c12 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c12)
  store %struct.Memory* %call_400c12, %struct.Memory** %MEMORY

  ; Code: .L_400c15:	 RIP: 400c15	 Bytes: 0
  br label %block_.L_400c15
block_.L_400c15:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 400c15	 Bytes: 3
  %loadMem_400c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c15 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c15)
  store %struct.Memory* %call_400c15, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 400c18	 Bytes: 3
  %loadMem_400c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c18 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c18)
  store %struct.Memory* %call_400c18, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 400c1b	 Bytes: 3
  %loadMem_400c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c1b = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c1b)
  store %struct.Memory* %call_400c1b, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 400c1e	 Bytes: 4
  %loadMem_400c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c1e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c1e)
  store %struct.Memory* %call_400c1e, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, -0x4e0(%rbp,%rcx,4)	 RIP: 400c22	 Bytes: 8
  %loadMem_400c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c22 = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x4e0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c22)
  store %struct.Memory* %call_400c22, %struct.Memory** %MEMORY

  ; Code: je .L_400c52	 RIP: 400c2a	 Bytes: 6
  %loadMem_400c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c2a = call %struct.Memory* @routine_je_.L_400c52(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c2a, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_400c2a, %struct.Memory** %MEMORY

  %loadBr_400c2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c2a = icmp eq i8 %loadBr_400c2a, 1
  br i1 %cmpBr_400c2a, label %block_.L_400c52, label %block_400c30

block_400c30:
  ; Code: movslq -0x10(%rbp), %rax	 RIP: 400c30	 Bytes: 4
  %loadMem_400c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c30 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c30)
  store %struct.Memory* %call_400c30, %struct.Memory** %MEMORY

  ; Code: movl -0x580(%rbp,%rax,4), %ecx	 RIP: 400c34	 Bytes: 7
  %loadMem_400c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c34 = call %struct.Memory* @routine_movl_MINUS0x580__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c34)
  store %struct.Memory* %call_400c34, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rax	 RIP: 400c3b	 Bytes: 4
  %loadMem_400c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c3b = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c3b)
  store %struct.Memory* %call_400c3b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x580(%rbp,%rax,4), %ecx	 RIP: 400c3f	 Bytes: 7
  %loadMem_400c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c3f = call %struct.Memory* @routine_cmpl_MINUS0x580__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c3f)
  store %struct.Memory* %call_400c3f, %struct.Memory** %MEMORY

  ; Code: jge .L_400c52	 RIP: 400c46	 Bytes: 6
  %loadMem_400c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c46 = call %struct.Memory* @routine_jge_.L_400c52(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c46, i8* %BRANCH_TAKEN, i64 12, i64 6, i64 6)
  store %struct.Memory* %call_400c46, %struct.Memory** %MEMORY

  %loadBr_400c46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c46 = icmp eq i8 %loadBr_400c46, 1
  br i1 %cmpBr_400c46, label %block_.L_400c52, label %block_400c4c

block_400c4c:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 400c4c	 Bytes: 3
  %loadMem_400c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c4c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c4c)
  store %struct.Memory* %call_400c4c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 400c4f	 Bytes: 3
  %loadMem_400c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c4f = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c4f)
  store %struct.Memory* %call_400c4f, %struct.Memory** %MEMORY

  ; Code: .L_400c52:	 RIP: 400c52	 Bytes: 0
  br label %block_.L_400c52
block_.L_400c52:

  ; Code: jmpq .L_400c57	 RIP: 400c52	 Bytes: 5
  %loadMem_400c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c52 = call %struct.Memory* @routine_jmpq_.L_400c57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c52, i64 5, i64 5)
  store %struct.Memory* %call_400c52, %struct.Memory** %MEMORY

  br label %block_.L_400c57

  ; Code: .L_400c57:	 RIP: 400c57	 Bytes: 0
block_.L_400c57:

  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 400c57	 Bytes: 4
  %loadMem_400c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c57 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c57)
  store %struct.Memory* %call_400c57, %struct.Memory** %MEMORY

  ; Code: jg .L_400c15	 RIP: 400c5b	 Bytes: 6
  %loadMem_400c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c5b = call %struct.Memory* @routine_jg_.L_400c15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c5b, i8* %BRANCH_TAKEN, i64 -70, i64 6, i64 6)
  store %struct.Memory* %call_400c5b, %struct.Memory** %MEMORY

  %loadBr_400c5b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c5b = icmp eq i8 %loadBr_400c5b, 1
  br i1 %cmpBr_400c5b, label %block_.L_400c15, label %block_400c61

block_400c61:
  ; Code: jmpq .L_400c66	 RIP: 400c61	 Bytes: 5
  %loadMem_400c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c61 = call %struct.Memory* @routine_jmpq_.L_400c66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c61, i64 5, i64 5)
  store %struct.Memory* %call_400c61, %struct.Memory** %MEMORY

  br label %block_.L_400c66

  ; Code: .L_400c66:	 RIP: 400c66	 Bytes: 0
block_.L_400c66:

  ; Code: movslq -0xc(%rbp), %rax	 RIP: 400c66	 Bytes: 4
  %loadMem_400c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c66 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c66)
  store %struct.Memory* %call_400c66, %struct.Memory** %MEMORY

  ; Code: movl -0x530(%rbp,%rax,4), %ecx	 RIP: 400c6a	 Bytes: 7
  %loadMem_400c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c6a = call %struct.Memory* @routine_movl_MINUS0x530__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c6a)
  store %struct.Memory* %call_400c6a, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 400c71	 Bytes: 4
  %loadMem_400c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c71 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c71)
  store %struct.Memory* %call_400c71, %struct.Memory** %MEMORY

  ; Code: movl -0x530(%rbp,%rax,4), %edx	 RIP: 400c75	 Bytes: 7
  %loadMem_400c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c75 = call %struct.Memory* @routine_movl_MINUS0x530__rbp__rax_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c75)
  store %struct.Memory* %call_400c75, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %edx	 RIP: 400c7c	 Bytes: 3
  %loadMem_400c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c7c = call %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c7c)
  store %struct.Memory* %call_400c7c, %struct.Memory** %MEMORY

  ; Code: subl -0x10(%rbp), %edx	 RIP: 400c7f	 Bytes: 3
  %loadMem_400c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c7f = call %struct.Memory* @routine_subl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c7f)
  store %struct.Memory* %call_400c7f, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 400c82	 Bytes: 2
  %loadMem_400c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c82 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c82)
  store %struct.Memory* %call_400c82, %struct.Memory** %MEMORY

  ; Code: jle .L_400caa	 RIP: 400c84	 Bytes: 6
  %loadMem_400c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c84 = call %struct.Memory* @routine_jle_.L_400caa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c84, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_400c84, %struct.Memory** %MEMORY

  %loadBr_400c84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c84 = icmp eq i8 %loadBr_400c84, 1
  br i1 %cmpBr_400c84, label %block_.L_400caa, label %block_400c8a

block_400c8a:
  ; Code: movslq -0xc(%rbp), %rax	 RIP: 400c8a	 Bytes: 4
  %loadMem_400c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c8a = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c8a)
  store %struct.Memory* %call_400c8a, %struct.Memory** %MEMORY

  ; Code: movl -0x530(%rbp,%rax,4), %ecx	 RIP: 400c8e	 Bytes: 7
  %loadMem_400c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c8e = call %struct.Memory* @routine_movl_MINUS0x530__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c8e)
  store %struct.Memory* %call_400c8e, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400c95	 Bytes: 3
  %loadMem_400c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c95 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c95)
  store %struct.Memory* %call_400c95, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 400c98	 Bytes: 3
  %loadMem_400c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c98 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c98)
  store %struct.Memory* %call_400c98, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rax	 RIP: 400c9b	 Bytes: 3
  %loadMem_400c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c9b = call %struct.Memory* @routine_movslq__edx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c9b)
  store %struct.Memory* %call_400c9b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x530(%rbp,%rax,4)	 RIP: 400c9e	 Bytes: 7
  %loadMem_400c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400c9e = call %struct.Memory* @routine_movl__ecx__MINUS0x530__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400c9e)
  store %struct.Memory* %call_400c9e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400ccb	 RIP: 400ca5	 Bytes: 5
  %loadMem_400ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ca5 = call %struct.Memory* @routine_jmpq_.L_400ccb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ca5, i64 38, i64 5)
  store %struct.Memory* %call_400ca5, %struct.Memory** %MEMORY

  br label %block_.L_400ccb

  ; Code: .L_400caa:	 RIP: 400caa	 Bytes: 0
block_.L_400caa:

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 400caa	 Bytes: 4
  %loadMem_400caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400caa = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400caa)
  store %struct.Memory* %call_400caa, %struct.Memory** %MEMORY

  ; Code: movl -0x530(%rbp,%rax,4), %ecx	 RIP: 400cae	 Bytes: 7
  %loadMem_400cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cae = call %struct.Memory* @routine_movl_MINUS0x530__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cae)
  store %struct.Memory* %call_400cae, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %ecx	 RIP: 400cb5	 Bytes: 3
  %loadMem_400cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cb5 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cb5)
  store %struct.Memory* %call_400cb5, %struct.Memory** %MEMORY

  ; Code: subl -0x10(%rbp), %ecx	 RIP: 400cb8	 Bytes: 3
  %loadMem_400cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cb8 = call %struct.Memory* @routine_subl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cb8)
  store %struct.Memory* %call_400cb8, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400cbb	 Bytes: 3
  %loadMem_400cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cbb = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cbb)
  store %struct.Memory* %call_400cbb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 400cbe	 Bytes: 3
  %loadMem_400cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cbe = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cbe)
  store %struct.Memory* %call_400cbe, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rax	 RIP: 400cc1	 Bytes: 3
  %loadMem_400cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cc1 = call %struct.Memory* @routine_movslq__edx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cc1)
  store %struct.Memory* %call_400cc1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x530(%rbp,%rax,4)	 RIP: 400cc4	 Bytes: 7
  %loadMem_400cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cc4 = call %struct.Memory* @routine_movl__ecx__MINUS0x530__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cc4)
  store %struct.Memory* %call_400cc4, %struct.Memory** %MEMORY

  ; Code: .L_400ccb:	 RIP: 400ccb	 Bytes: 0
  br label %block_.L_400ccb
block_.L_400ccb:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400ccb	 Bytes: 7
  %loadMem_400ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ccb = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ccb)
  store %struct.Memory* %call_400ccb, %struct.Memory** %MEMORY

  ; Code: .L_400cd2:	 RIP: 400cd2	 Bytes: 0
  br label %block_.L_400cd2
block_.L_400cd2:

  ; Code: cmpl $0x10, -0x4(%rbp)	 RIP: 400cd2	 Bytes: 4
  %loadMem_400cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd2 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd2)
  store %struct.Memory* %call_400cd2, %struct.Memory** %MEMORY

  ; Code: jge .L_400d0c	 RIP: 400cd6	 Bytes: 6
  %loadMem_400cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cd6 = call %struct.Memory* @routine_jge_.L_400d0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cd6, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_400cd6, %struct.Memory** %MEMORY

  %loadBr_400cd6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400cd6 = icmp eq i8 %loadBr_400cd6, 1
  br i1 %cmpBr_400cd6, label %block_.L_400d0c, label %block_400cdc

block_400cdc:
  ; Code: leaq -0x490(%rbp), %rax	 RIP: 400cdc	 Bytes: 7
  %loadMem_400cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cdc = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cdc)
  store %struct.Memory* %call_400cdc, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 400ce3	 Bytes: 3
  %loadMem_400ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce3 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce3)
  store %struct.Memory* %call_400ce3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 400ce6	 Bytes: 3
  %loadMem_400ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce6 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce6)
  store %struct.Memory* %call_400ce6, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 400ce9	 Bytes: 3
  %loadMem_400ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ce9 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ce9)
  store %struct.Memory* %call_400ce9, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 400cec	 Bytes: 4
  %loadMem_400cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cec = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cec)
  store %struct.Memory* %call_400cec, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 400cf0	 Bytes: 3
  %loadMem_400cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf0 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf0)
  store %struct.Memory* %call_400cf0, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 400cf3	 Bytes: 4
  %loadMem_400cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf3 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf3)
  store %struct.Memory* %call_400cf3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rdx,4)	 RIP: 400cf7	 Bytes: 7
  %loadMem_400cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cf7 = call %struct.Memory* @routine_movl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cf7)
  store %struct.Memory* %call_400cf7, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400cfe	 Bytes: 3
  %loadMem_400cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400cfe = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400cfe)
  store %struct.Memory* %call_400cfe, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400d01	 Bytes: 3
  %loadMem_400d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d01 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d01)
  store %struct.Memory* %call_400d01, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400d04	 Bytes: 3
  %loadMem_400d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d04 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d04)
  store %struct.Memory* %call_400d04, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400cd2	 RIP: 400d07	 Bytes: 5
  %loadMem_400d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d07 = call %struct.Memory* @routine_jmpq_.L_400cd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d07, i64 -53, i64 5)
  store %struct.Memory* %call_400d07, %struct.Memory** %MEMORY

  br label %block_.L_400cd2

  ; Code: .L_400d0c:	 RIP: 400d0c	 Bytes: 0
block_.L_400d0c:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400d0c	 Bytes: 7
  %loadMem_400d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d0c = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d0c)
  store %struct.Memory* %call_400d0c, %struct.Memory** %MEMORY

  ; Code: .L_400d13:	 RIP: 400d13	 Bytes: 0
  br label %block_.L_400d13
block_.L_400d13:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400d13	 Bytes: 3
  %loadMem_400d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d13 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d13)
  store %struct.Memory* %call_400d13, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 400d16	 Bytes: 4
  %loadMem_400d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d16 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d16)
  store %struct.Memory* %call_400d16, %struct.Memory** %MEMORY

  ; Code: cmpl -0x530(%rbp,%rcx,4), %eax	 RIP: 400d1a	 Bytes: 7
  %loadMem_400d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d1a = call %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d1a)
  store %struct.Memory* %call_400d1a, %struct.Memory** %MEMORY

  ; Code: jg .L_400dd4	 RIP: 400d21	 Bytes: 6
  %loadMem_400d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d21 = call %struct.Memory* @routine_jg_.L_400dd4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d21, i8* %BRANCH_TAKEN, i64 179, i64 6, i64 6)
  store %struct.Memory* %call_400d21, %struct.Memory** %MEMORY

  %loadBr_400d21 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d21 = icmp eq i8 %loadBr_400d21, 1
  br i1 %cmpBr_400d21, label %block_.L_400dd4, label %block_400d27

block_400d27:
  ; Code: leaq -0x490(%rbp), %rax	 RIP: 400d27	 Bytes: 7
  %loadMem_400d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d27 = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d27)
  store %struct.Memory* %call_400d27, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 400d2e	 Bytes: 4
  %loadMem_400d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d2e = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d2e)
  store %struct.Memory* %call_400d2e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 400d32	 Bytes: 4
  %loadMem_400d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d32 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d32)
  store %struct.Memory* %call_400d32, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400d36	 Bytes: 3
  %loadMem_400d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d36 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d36)
  store %struct.Memory* %call_400d36, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 400d39	 Bytes: 4
  %loadMem_400d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d39 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d39)
  store %struct.Memory* %call_400d39, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, (%rax,%rcx,4)	 RIP: 400d3d	 Bytes: 4
  %loadMem_400d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d3d = call %struct.Memory* @routine_cmpl__0xffffffff____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d3d)
  store %struct.Memory* %call_400d3d, %struct.Memory** %MEMORY

  ; Code: je .L_400dc1	 RIP: 400d41	 Bytes: 6
  %loadMem_400d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d41 = call %struct.Memory* @routine_je_.L_400dc1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d41, i8* %BRANCH_TAKEN, i64 128, i64 6, i64 6)
  store %struct.Memory* %call_400d41, %struct.Memory** %MEMORY

  %loadBr_400d41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d41 = icmp eq i8 %loadBr_400d41, 1
  br i1 %cmpBr_400d41, label %block_.L_400dc1, label %block_400d47

block_400d47:
  ; Code: leaq -0x490(%rbp), %rax	 RIP: 400d47	 Bytes: 7
  %loadMem_400d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d47 = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d47)
  store %struct.Memory* %call_400d47, %struct.Memory** %MEMORY

  ; Code: movl $0xff, %ecx	 RIP: 400d4e	 Bytes: 5
  %loadMem_400d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d4e = call %struct.Memory* @routine_movl__0xff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d4e)
  store %struct.Memory* %call_400d4e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 400d53	 Bytes: 4
  %loadMem_400d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d53 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d53)
  store %struct.Memory* %call_400d53, %struct.Memory** %MEMORY

  ; Code: movl -0x4e0(%rbp,%rdx,4), %esi	 RIP: 400d57	 Bytes: 7
  %loadMem_400d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d57 = call %struct.Memory* @routine_movl_MINUS0x4e0__rbp__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d57)
  store %struct.Memory* %call_400d57, %struct.Memory** %MEMORY

  ; Code: addl $0xff, %esi	 RIP: 400d5e	 Bytes: 6
  %loadMem_400d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d5e = call %struct.Memory* @routine_addl__0xff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d5e)
  store %struct.Memory* %call_400d5e, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 400d64	 Bytes: 4
  %loadMem_400d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d64 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d64)
  store %struct.Memory* %call_400d64, %struct.Memory** %MEMORY

  ; Code: subl -0x4e0(%rbp,%rdx,4), %esi	 RIP: 400d68	 Bytes: 7
  %loadMem_400d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d68 = call %struct.Memory* @routine_subl_MINUS0x4e0__rbp__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d68)
  store %struct.Memory* %call_400d68, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 400d6f	 Bytes: 4
  %loadMem_400d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d6f = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d6f)
  store %struct.Memory* %call_400d6f, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 400d73	 Bytes: 4
  %loadMem_400d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d73 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d73)
  store %struct.Memory* %call_400d73, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 400d77	 Bytes: 3
  %loadMem_400d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d77 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d77)
  store %struct.Memory* %call_400d77, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 400d7a	 Bytes: 3
  %loadMem_400d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d7a = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d7a)
  store %struct.Memory* %call_400d7a, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 400d7d	 Bytes: 4
  %loadMem_400d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d7d = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d7d)
  store %struct.Memory* %call_400d7d, %struct.Memory** %MEMORY

  ; Code: addl (%rdi,%rdx,4), %esi	 RIP: 400d81	 Bytes: 3
  %loadMem_400d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d81 = call %struct.Memory* @routine_addl___rdi__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d81)
  store %struct.Memory* %call_400d81, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xa90(%rbp)	 RIP: 400d84	 Bytes: 7
  %loadMem_400d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d84 = call %struct.Memory* @routine_movq__rax__MINUS0xa90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d84)
  store %struct.Memory* %call_400d84, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 400d8b	 Bytes: 2
  %loadMem_400d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8b = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8b)
  store %struct.Memory* %call_400d8b, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 400d8d	 Bytes: 1
  %loadMem_400d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8d = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8d)
  store %struct.Memory* %call_400d8d, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 400d8e	 Bytes: 2
  %loadMem_400d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d8e = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d8e)
  store %struct.Memory* %call_400d8e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rdi	 RIP: 400d90	 Bytes: 3
  %loadMem_400d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d90 = call %struct.Memory* @routine_movslq__edx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d90)
  store %struct.Memory* %call_400d90, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rdi,4), %ecx	 RIP: 400d93	 Bytes: 7
  %loadMem_400d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d93 = call %struct.Memory* @routine_movl_0x603880___rdi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d93)
  store %struct.Memory* %call_400d93, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400d9a	 Bytes: 3
  %loadMem_400d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d9a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d9a)
  store %struct.Memory* %call_400d9a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 400d9d	 Bytes: 3
  %loadMem_400d9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400d9d = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400d9d)
  store %struct.Memory* %call_400d9d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rdi	 RIP: 400da0	 Bytes: 3
  %loadMem_400da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da0 = call %struct.Memory* @routine_movslq__edx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da0)
  store %struct.Memory* %call_400da0, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 400da3	 Bytes: 4
  %loadMem_400da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da3 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da3)
  store %struct.Memory* %call_400da3, %struct.Memory** %MEMORY

  ; Code: movq -0xa90(%rbp), %r8	 RIP: 400da7	 Bytes: 7
  %loadMem_400da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400da7 = call %struct.Memory* @routine_movq_MINUS0xa90__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400da7)
  store %struct.Memory* %call_400da7, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %r8	 RIP: 400dae	 Bytes: 3
  %loadMem_400dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dae = call %struct.Memory* @routine_addq__rdi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dae)
  store %struct.Memory* %call_400dae, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 400db1	 Bytes: 3
  %loadMem_400db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db1)
  store %struct.Memory* %call_400db1, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %edx	 RIP: 400db4	 Bytes: 3
  %loadMem_400db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db4 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db4)
  store %struct.Memory* %call_400db4, %struct.Memory** %MEMORY

  ; Code: subl -0x10(%rbp), %edx	 RIP: 400db7	 Bytes: 3
  %loadMem_400db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400db7 = call %struct.Memory* @routine_subl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400db7)
  store %struct.Memory* %call_400db7, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rdi	 RIP: 400dba	 Bytes: 3
  %loadMem_400dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dba = call %struct.Memory* @routine_movslq__edx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dba)
  store %struct.Memory* %call_400dba, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%r8,%rdi,4)	 RIP: 400dbd	 Bytes: 4
  %loadMem_400dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dbd = call %struct.Memory* @routine_movl__ecx____r8__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dbd)
  store %struct.Memory* %call_400dbd, %struct.Memory** %MEMORY

  ; Code: .L_400dc1:	 RIP: 400dc1	 Bytes: 0
  br label %block_.L_400dc1
block_.L_400dc1:

  ; Code: jmpq .L_400dc6	 RIP: 400dc1	 Bytes: 5
  %loadMem_400dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc1 = call %struct.Memory* @routine_jmpq_.L_400dc6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc1, i64 5, i64 5)
  store %struct.Memory* %call_400dc1, %struct.Memory** %MEMORY

  br label %block_.L_400dc6

  ; Code: .L_400dc6:	 RIP: 400dc6	 Bytes: 0
block_.L_400dc6:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400dc6	 Bytes: 3
  %loadMem_400dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc6 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc6)
  store %struct.Memory* %call_400dc6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400dc9	 Bytes: 3
  %loadMem_400dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dc9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dc9)
  store %struct.Memory* %call_400dc9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400dcc	 Bytes: 3
  %loadMem_400dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dcc = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dcc)
  store %struct.Memory* %call_400dcc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400d13	 RIP: 400dcf	 Bytes: 5
  %loadMem_400dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dcf = call %struct.Memory* @routine_jmpq_.L_400d13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dcf, i64 -188, i64 5)
  store %struct.Memory* %call_400dcf, %struct.Memory** %MEMORY

  br label %block_.L_400d13

  ; Code: .L_400dd4:	 RIP: 400dd4	 Bytes: 0
block_.L_400dd4:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400dd4	 Bytes: 7
  %loadMem_400dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dd4 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dd4)
  store %struct.Memory* %call_400dd4, %struct.Memory** %MEMORY

  ; Code: .L_400ddb:	 RIP: 400ddb	 Bytes: 0
  br label %block_.L_400ddb
block_.L_400ddb:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400ddb	 Bytes: 3
  %loadMem_400ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ddb = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ddb)
  store %struct.Memory* %call_400ddb, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 400dde	 Bytes: 4
  %loadMem_400dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dde = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dde)
  store %struct.Memory* %call_400dde, %struct.Memory** %MEMORY

  ; Code: cmpl -0x530(%rbp,%rcx,4), %eax	 RIP: 400de2	 Bytes: 7
  %loadMem_400de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de2 = call %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de2)
  store %struct.Memory* %call_400de2, %struct.Memory** %MEMORY

  ; Code: jg .L_400e65	 RIP: 400de9	 Bytes: 6
  %loadMem_400de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400de9 = call %struct.Memory* @routine_jg_.L_400e65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400de9, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_400de9, %struct.Memory** %MEMORY

  %loadBr_400de9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400de9 = icmp eq i8 %loadBr_400de9, 1
  br i1 %cmpBr_400de9, label %block_.L_400e65, label %block_400def

block_400def:
  ; Code: leaq -0x490(%rbp), %rax	 RIP: 400def	 Bytes: 7
  %loadMem_400def = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400def = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400def)
  store %struct.Memory* %call_400def, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 400df6	 Bytes: 4
  %loadMem_400df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400df6 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400df6)
  store %struct.Memory* %call_400df6, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 400dfa	 Bytes: 4
  %loadMem_400dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dfa = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dfa)
  store %struct.Memory* %call_400dfa, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 400dfe	 Bytes: 3
  %loadMem_400dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400dfe = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400dfe)
  store %struct.Memory* %call_400dfe, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 400e01	 Bytes: 3
  %loadMem_400e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e01 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e01)
  store %struct.Memory* %call_400e01, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 400e04	 Bytes: 4
  %loadMem_400e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e04 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e04)
  store %struct.Memory* %call_400e04, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rcx,4), %esi	 RIP: 400e08	 Bytes: 3
  %loadMem_400e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e08 = call %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e08)
  store %struct.Memory* %call_400e08, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edi	 RIP: 400e0b	 Bytes: 3
  %loadMem_400e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e0b = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e0b)
  store %struct.Memory* %call_400e0b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edi	 RIP: 400e0e	 Bytes: 3
  %loadMem_400e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e0e = call %struct.Memory* @routine_addl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e0e)
  store %struct.Memory* %call_400e0e, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 400e11	 Bytes: 3
  %loadMem_400e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e11 = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e11)
  store %struct.Memory* %call_400e11, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 400e14	 Bytes: 4
  %loadMem_400e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e14 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e14)
  store %struct.Memory* %call_400e14, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 400e18	 Bytes: 3
  %loadMem_400e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e18 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e18)
  store %struct.Memory* %call_400e18, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 400e1b	 Bytes: 3
  %loadMem_400e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1b = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1b)
  store %struct.Memory* %call_400e1b, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 400e1e	 Bytes: 4
  %loadMem_400e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e1e = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e1e)
  store %struct.Memory* %call_400e1e, %struct.Memory** %MEMORY

  ; Code: xorl (%rdx,%rcx,4), %esi	 RIP: 400e22	 Bytes: 3
  %loadMem_400e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e22 = call %struct.Memory* @routine_xorl___rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e22)
  store %struct.Memory* %call_400e22, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rdx,%rcx,4)	 RIP: 400e25	 Bytes: 3
  %loadMem_400e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e25 = call %struct.Memory* @routine_movl__esi____rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e25)
  store %struct.Memory* %call_400e25, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 400e28	 Bytes: 4
  %loadMem_400e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e28 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e28)
  store %struct.Memory* %call_400e28, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 400e2c	 Bytes: 4
  %loadMem_400e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e2c = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e2c)
  store %struct.Memory* %call_400e2c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 400e30	 Bytes: 3
  %loadMem_400e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e30 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e30)
  store %struct.Memory* %call_400e30, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 400e33	 Bytes: 3
  %loadMem_400e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e33 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e33)
  store %struct.Memory* %call_400e33, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 400e36	 Bytes: 4
  %loadMem_400e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e36 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e36)
  store %struct.Memory* %call_400e36, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rcx,4), %rcx	 RIP: 400e3a	 Bytes: 4
  %loadMem_400e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e3a = call %struct.Memory* @routine_movslq___rdx__rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e3a)
  store %struct.Memory* %call_400e3a, %struct.Memory** %MEMORY

  ; Code: movl 0x603480(,%rcx,4), %esi	 RIP: 400e3e	 Bytes: 7
  %loadMem_400e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e3e = call %struct.Memory* @routine_movl_0x603480___rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e3e)
  store %struct.Memory* %call_400e3e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 400e45	 Bytes: 4
  %loadMem_400e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e45 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e45)
  store %struct.Memory* %call_400e45, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 400e49	 Bytes: 4
  %loadMem_400e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e49 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e49)
  store %struct.Memory* %call_400e49, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 400e4d	 Bytes: 3
  %loadMem_400e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e4d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e4d)
  store %struct.Memory* %call_400e4d, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 400e50	 Bytes: 4
  %loadMem_400e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e50 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e50)
  store %struct.Memory* %call_400e50, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 400e54	 Bytes: 3
  %loadMem_400e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e54 = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e54)
  store %struct.Memory* %call_400e54, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400e57	 Bytes: 3
  %loadMem_400e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e57 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e57)
  store %struct.Memory* %call_400e57, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400e5a	 Bytes: 3
  %loadMem_400e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5a)
  store %struct.Memory* %call_400e5a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400e5d	 Bytes: 3
  %loadMem_400e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e5d = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e5d)
  store %struct.Memory* %call_400e5d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400ddb	 RIP: 400e60	 Bytes: 5
  %loadMem_400e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e60 = call %struct.Memory* @routine_jmpq_.L_400ddb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e60, i64 -133, i64 5)
  store %struct.Memory* %call_400e60, %struct.Memory** %MEMORY

  br label %block_.L_400ddb

  ; Code: .L_400e65:	 RIP: 400e65	 Bytes: 0
block_.L_400e65:

  ; Code: jmpq .L_400e6a	 RIP: 400e65	 Bytes: 5
  %loadMem_400e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e65 = call %struct.Memory* @routine_jmpq_.L_400e6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e65, i64 5, i64 5)
  store %struct.Memory* %call_400e65, %struct.Memory** %MEMORY

  br label %block_.L_400e6a

  ; Code: .L_400e6a:	 RIP: 400e6a	 Bytes: 0
block_.L_400e6a:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 400e6a	 Bytes: 3
  %loadMem_400e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e6a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e6a)
  store %struct.Memory* %call_400e6a, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 400e6d	 Bytes: 3
  %loadMem_400e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e6d = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e6d)
  store %struct.Memory* %call_400e6d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 400e70	 Bytes: 3
  %loadMem_400e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e70 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e70)
  store %struct.Memory* %call_400e70, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 400e73	 Bytes: 3
  %loadMem_400e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e73 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e73)
  store %struct.Memory* %call_400e73, %struct.Memory** %MEMORY

  ; Code: subl -0x530(%rbp,%rdx,4), %eax	 RIP: 400e76	 Bytes: 7
  %loadMem_400e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e76 = call %struct.Memory* @routine_subl_MINUS0x530__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e76)
  store %struct.Memory* %call_400e76, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 400e7d	 Bytes: 3
  %loadMem_400e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e7d = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e7d)
  store %struct.Memory* %call_400e7d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 400e80	 Bytes: 3
  %loadMem_400e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e80 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e80)
  store %struct.Memory* %call_400e80, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 400e83	 Bytes: 3
  %loadMem_400e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e83 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e83)
  store %struct.Memory* %call_400e83, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x580(%rbp,%rdx,4)	 RIP: 400e86	 Bytes: 7
  %loadMem_400e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e86 = call %struct.Memory* @routine_movl__eax__MINUS0x580__rbp__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e86)
  store %struct.Memory* %call_400e86, %struct.Memory** %MEMORY

  ; Code: cmpl $0x10, -0xc(%rbp)	 RIP: 400e8d	 Bytes: 4
  %loadMem_400e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e8d = call %struct.Memory* @routine_cmpl__0x10__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e8d)
  store %struct.Memory* %call_400e8d, %struct.Memory** %MEMORY

  ; Code: jge .L_400ffb	 RIP: 400e91	 Bytes: 6
  %loadMem_400e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e91 = call %struct.Memory* @routine_jge_.L_400ffb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e91, i8* %BRANCH_TAKEN, i64 362, i64 6, i64 6)
  store %struct.Memory* %call_400e91, %struct.Memory** %MEMORY

  %loadBr_400e91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e91 = icmp eq i8 %loadBr_400e91, 1
  br i1 %cmpBr_400e91, label %block_.L_400ffb, label %block_400e97

block_400e97:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 400e97	 Bytes: 3
  %loadMem_400e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e97 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e97)
  store %struct.Memory* %call_400e97, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400e9a	 Bytes: 3
  %loadMem_400e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e9a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e9a)
  store %struct.Memory* %call_400e9a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 400e9d	 Bytes: 3
  %loadMem_400e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400e9d = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400e9d)
  store %struct.Memory* %call_400e9d, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, -0x5d0(%rbp,%rcx,4)	 RIP: 400ea0	 Bytes: 8
  %loadMem_400ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea0 = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x5d0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea0)
  store %struct.Memory* %call_400ea0, %struct.Memory** %MEMORY

  ; Code: je .L_400edb	 RIP: 400ea8	 Bytes: 6
  %loadMem_400ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ea8 = call %struct.Memory* @routine_je_.L_400edb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ea8, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_400ea8, %struct.Memory** %MEMORY

  %loadBr_400ea8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ea8 = icmp eq i8 %loadBr_400ea8, 1
  br i1 %cmpBr_400ea8, label %block_.L_400edb, label %block_400eae

block_400eae:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 400eae	 Bytes: 3
  %loadMem_400eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eae = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eae)
  store %struct.Memory* %call_400eae, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400eb1	 Bytes: 3
  %loadMem_400eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb1)
  store %struct.Memory* %call_400eb1, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 400eb4	 Bytes: 3
  %loadMem_400eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb4 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb4)
  store %struct.Memory* %call_400eb4, %struct.Memory** %MEMORY

  ; Code: movslq -0x5d0(%rbp,%rcx,4), %rcx	 RIP: 400eb7	 Bytes: 8
  %loadMem_400eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eb7 = call %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eb7)
  store %struct.Memory* %call_400eb7, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rcx,4), %eax	 RIP: 400ebf	 Bytes: 7
  %loadMem_400ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ebf = call %struct.Memory* @routine_movl_0x603880___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ebf)
  store %struct.Memory* %call_400ebf, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400ec6	 Bytes: 3
  %loadMem_400ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec6 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec6)
  store %struct.Memory* %call_400ec6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 400ec9	 Bytes: 3
  %loadMem_400ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ec9 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ec9)
  store %struct.Memory* %call_400ec9, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400ecc	 Bytes: 3
  %loadMem_400ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ecc = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ecc)
  store %struct.Memory* %call_400ecc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4e0(%rbp,%rcx,4)	 RIP: 400ecf	 Bytes: 7
  %loadMem_400ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ecf = call %struct.Memory* @routine_movl__eax__MINUS0x4e0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ecf)
  store %struct.Memory* %call_400ecf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400eef	 RIP: 400ed6	 Bytes: 5
  %loadMem_400ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ed6 = call %struct.Memory* @routine_jmpq_.L_400eef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ed6, i64 25, i64 5)
  store %struct.Memory* %call_400ed6, %struct.Memory** %MEMORY

  br label %block_.L_400eef

  ; Code: .L_400edb:	 RIP: 400edb	 Bytes: 0
block_.L_400edb:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 400edb	 Bytes: 3
  %loadMem_400edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400edb = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400edb)
  store %struct.Memory* %call_400edb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400ede	 Bytes: 3
  %loadMem_400ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ede = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ede)
  store %struct.Memory* %call_400ede, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 400ee1	 Bytes: 3
  %loadMem_400ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee1 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee1)
  store %struct.Memory* %call_400ee1, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4e0(%rbp,%rcx,4)	 RIP: 400ee4	 Bytes: 11
  %loadMem_400ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ee4 = call %struct.Memory* @routine_movl__0x0__MINUS0x4e0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ee4)
  store %struct.Memory* %call_400ee4, %struct.Memory** %MEMORY

  ; Code: .L_400eef:	 RIP: 400eef	 Bytes: 0
  br label %block_.L_400eef
block_.L_400eef:

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 400eef	 Bytes: 7
  %loadMem_400eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eef = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eef)
  store %struct.Memory* %call_400eef, %struct.Memory** %MEMORY

  ; Code: .L_400ef6:	 RIP: 400ef6	 Bytes: 0
  br label %block_.L_400ef6
block_.L_400ef6:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400ef6	 Bytes: 3
  %loadMem_400ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef6 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef6)
  store %struct.Memory* %call_400ef6, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 400ef9	 Bytes: 3
  %loadMem_400ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ef9 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ef9)
  store %struct.Memory* %call_400ef9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 400efc	 Bytes: 3
  %loadMem_400efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400efc = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400efc)
  store %struct.Memory* %call_400efc, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 400eff	 Bytes: 3
  %loadMem_400eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400eff = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400eff)
  store %struct.Memory* %call_400eff, %struct.Memory** %MEMORY

  ; Code: cmpl -0x530(%rbp,%rdx,4), %eax	 RIP: 400f02	 Bytes: 7
  %loadMem_400f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f02 = call %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f02)
  store %struct.Memory* %call_400f02, %struct.Memory** %MEMORY

  ; Code: jg .L_400fd3	 RIP: 400f09	 Bytes: 6
  %loadMem_400f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f09 = call %struct.Memory* @routine_jg_.L_400fd3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f09, i8* %BRANCH_TAKEN, i64 202, i64 6, i64 6)
  store %struct.Memory* %call_400f09, %struct.Memory** %MEMORY

  %loadBr_400f09 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f09 = icmp eq i8 %loadBr_400f09, 1
  br i1 %cmpBr_400f09, label %block_.L_400fd3, label %block_400f0f

block_400f0f:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 400f0f	 Bytes: 3
  %loadMem_400f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f0f = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f0f)
  store %struct.Memory* %call_400f0f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400f12	 Bytes: 3
  %loadMem_400f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f12 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f12)
  store %struct.Memory* %call_400f12, %struct.Memory** %MEMORY

  ; Code: subl -0x4(%rbp), %eax	 RIP: 400f15	 Bytes: 3
  %loadMem_400f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f15 = call %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f15)
  store %struct.Memory* %call_400f15, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 400f18	 Bytes: 3
  %loadMem_400f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f18 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f18)
  store %struct.Memory* %call_400f18, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, -0x5d0(%rbp,%rcx,4)	 RIP: 400f1b	 Bytes: 8
  %loadMem_400f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f1b = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x5d0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f1b)
  store %struct.Memory* %call_400f1b, %struct.Memory** %MEMORY

  ; Code: je .L_400fc0	 RIP: 400f23	 Bytes: 6
  %loadMem_400f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f23 = call %struct.Memory* @routine_je_.L_400fc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f23, i8* %BRANCH_TAKEN, i64 157, i64 6, i64 6)
  store %struct.Memory* %call_400f23, %struct.Memory** %MEMORY

  %loadBr_400f23 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f23 = icmp eq i8 %loadBr_400f23, 1
  br i1 %cmpBr_400f23, label %block_.L_400fc0, label %block_400f29

block_400f29:
  ; Code: leaq -0x490(%rbp), %rax	 RIP: 400f29	 Bytes: 7
  %loadMem_400f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f29 = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f29)
  store %struct.Memory* %call_400f29, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 400f30	 Bytes: 3
  %loadMem_400f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f30 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f30)
  store %struct.Memory* %call_400f30, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 400f33	 Bytes: 3
  %loadMem_400f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f33 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f33)
  store %struct.Memory* %call_400f33, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 400f36	 Bytes: 3
  %loadMem_400f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f36 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f36)
  store %struct.Memory* %call_400f36, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 400f39	 Bytes: 4
  %loadMem_400f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f39 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f39)
  store %struct.Memory* %call_400f39, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 400f3d	 Bytes: 3
  %loadMem_400f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f3d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f3d)
  store %struct.Memory* %call_400f3d, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 400f40	 Bytes: 4
  %loadMem_400f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f40 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f40)
  store %struct.Memory* %call_400f40, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 400f44	 Bytes: 4
  %loadMem_400f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f44 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f44)
  store %struct.Memory* %call_400f44, %struct.Memory** %MEMORY

  ; Code: je .L_400fc0	 RIP: 400f48	 Bytes: 6
  %loadMem_400f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f48 = call %struct.Memory* @routine_je_.L_400fc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f48, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_400f48, %struct.Memory** %MEMORY

  %loadBr_400f48 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f48 = icmp eq i8 %loadBr_400f48, 1
  br i1 %cmpBr_400f48, label %block_.L_400fc0, label %block_400f4e

block_400f4e:
  ; Code: movl $0xff, %eax	 RIP: 400f4e	 Bytes: 5
  %loadMem_400f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f4e = call %struct.Memory* @routine_movl__0xff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f4e)
  store %struct.Memory* %call_400f4e, %struct.Memory** %MEMORY

  ; Code: leaq -0x490(%rbp), %rcx	 RIP: 400f53	 Bytes: 7
  %loadMem_400f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f53 = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f53)
  store %struct.Memory* %call_400f53, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400f5a	 Bytes: 3
  %loadMem_400f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5a)
  store %struct.Memory* %call_400f5a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 400f5d	 Bytes: 3
  %loadMem_400f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f5d = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f5d)
  store %struct.Memory* %call_400f5d, %struct.Memory** %MEMORY

  ; Code: subl -0x4(%rbp), %edx	 RIP: 400f60	 Bytes: 3
  %loadMem_400f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f60 = call %struct.Memory* @routine_subl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f60)
  store %struct.Memory* %call_400f60, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 400f63	 Bytes: 3
  %loadMem_400f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f63 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f63)
  store %struct.Memory* %call_400f63, %struct.Memory** %MEMORY

  ; Code: movl -0x5d0(%rbp,%rsi,4), %edx	 RIP: 400f66	 Bytes: 7
  %loadMem_400f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f66 = call %struct.Memory* @routine_movl_MINUS0x5d0__rbp__rsi_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f66)
  store %struct.Memory* %call_400f66, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edi	 RIP: 400f6d	 Bytes: 3
  %loadMem_400f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f6d = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f6d)
  store %struct.Memory* %call_400f6d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edi	 RIP: 400f70	 Bytes: 3
  %loadMem_400f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f70 = call %struct.Memory* @routine_addl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f70)
  store %struct.Memory* %call_400f70, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rsi	 RIP: 400f73	 Bytes: 3
  %loadMem_400f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f73 = call %struct.Memory* @routine_movslq__edi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f73)
  store %struct.Memory* %call_400f73, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 400f76	 Bytes: 4
  %loadMem_400f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f76 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f76)
  store %struct.Memory* %call_400f76, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 400f7a	 Bytes: 3
  %loadMem_400f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7a = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7a)
  store %struct.Memory* %call_400f7a, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 400f7d	 Bytes: 4
  %loadMem_400f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f7d = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f7d)
  store %struct.Memory* %call_400f7d, %struct.Memory** %MEMORY

  ; Code: movslq (%rcx,%rsi,4), %rcx	 RIP: 400f81	 Bytes: 4
  %loadMem_400f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f81 = call %struct.Memory* @routine_movslq___rcx__rsi_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f81)
  store %struct.Memory* %call_400f81, %struct.Memory** %MEMORY

  ; Code: addl 0x603480(,%rcx,4), %edx	 RIP: 400f85	 Bytes: 7
  %loadMem_400f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f85 = call %struct.Memory* @routine_addl_0x603480___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f85)
  store %struct.Memory* %call_400f85, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa94(%rbp)	 RIP: 400f8c	 Bytes: 6
  %loadMem_400f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f8c = call %struct.Memory* @routine_movl__eax__MINUS0xa94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f8c)
  store %struct.Memory* %call_400f8c, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 400f92	 Bytes: 2
  %loadMem_400f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f92 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f92)
  store %struct.Memory* %call_400f92, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 400f94	 Bytes: 1
  %loadMem_400f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f94 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f94)
  store %struct.Memory* %call_400f94, %struct.Memory** %MEMORY

  ; Code: movl -0xa94(%rbp), %edi	 RIP: 400f95	 Bytes: 6
  %loadMem_400f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f95 = call %struct.Memory* @routine_movl_MINUS0xa94__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f95)
  store %struct.Memory* %call_400f95, %struct.Memory** %MEMORY

  ; Code: idivl %edi	 RIP: 400f9b	 Bytes: 2
  %loadMem_400f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f9b = call %struct.Memory* @routine_idivl__edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f9b)
  store %struct.Memory* %call_400f9b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400f9d	 Bytes: 3
  %loadMem_400f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400f9d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400f9d)
  store %struct.Memory* %call_400f9d, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rcx,4), %edx	 RIP: 400fa0	 Bytes: 7
  %loadMem_400fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa0 = call %struct.Memory* @routine_movl_0x603880___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa0)
  store %struct.Memory* %call_400fa0, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %r8d	 RIP: 400fa7	 Bytes: 4
  %loadMem_400fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fa7 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fa7)
  store %struct.Memory* %call_400fa7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 400fab	 Bytes: 4
  %loadMem_400fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fab = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fab)
  store %struct.Memory* %call_400fab, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rcx	 RIP: 400faf	 Bytes: 3
  %loadMem_400faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400faf = call %struct.Memory* @routine_movslq__r8d___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400faf)
  store %struct.Memory* %call_400faf, %struct.Memory** %MEMORY

  ; Code: xorl -0x4e0(%rbp,%rcx,4), %edx	 RIP: 400fb2	 Bytes: 7
  %loadMem_400fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb2 = call %struct.Memory* @routine_xorl_MINUS0x4e0__rbp__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb2)
  store %struct.Memory* %call_400fb2, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x4e0(%rbp,%rcx,4)	 RIP: 400fb9	 Bytes: 7
  %loadMem_400fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fb9 = call %struct.Memory* @routine_movl__edx__MINUS0x4e0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fb9)
  store %struct.Memory* %call_400fb9, %struct.Memory** %MEMORY

  ; Code: .L_400fc0:	 RIP: 400fc0	 Bytes: 0
  br label %block_.L_400fc0
block_.L_400fc0:

  ; Code: jmpq .L_400fc5	 RIP: 400fc0	 Bytes: 5
  %loadMem_400fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc0 = call %struct.Memory* @routine_jmpq_.L_400fc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc0, i64 5, i64 5)
  store %struct.Memory* %call_400fc0, %struct.Memory** %MEMORY

  br label %block_.L_400fc5

  ; Code: .L_400fc5:	 RIP: 400fc5	 Bytes: 0
block_.L_400fc5:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 400fc5	 Bytes: 3
  %loadMem_400fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc5 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc5)
  store %struct.Memory* %call_400fc5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400fc8	 Bytes: 3
  %loadMem_400fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fc8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fc8)
  store %struct.Memory* %call_400fc8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 400fcb	 Bytes: 3
  %loadMem_400fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fcb = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fcb)
  store %struct.Memory* %call_400fcb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400ef6	 RIP: 400fce	 Bytes: 5
  %loadMem_400fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fce = call %struct.Memory* @routine_jmpq_.L_400ef6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fce, i64 -216, i64 5)
  store %struct.Memory* %call_400fce, %struct.Memory** %MEMORY

  br label %block_.L_400ef6

  ; Code: .L_400fd3:	 RIP: 400fd3	 Bytes: 0
block_.L_400fd3:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 400fd3	 Bytes: 3
  %loadMem_400fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd3 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd3)
  store %struct.Memory* %call_400fd3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400fd6	 Bytes: 3
  %loadMem_400fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd6)
  store %struct.Memory* %call_400fd6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 400fd9	 Bytes: 3
  %loadMem_400fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fd9 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fd9)
  store %struct.Memory* %call_400fd9, %struct.Memory** %MEMORY

  ; Code: movslq -0x4e0(%rbp,%rcx,4), %rcx	 RIP: 400fdc	 Bytes: 8
  %loadMem_400fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fdc = call %struct.Memory* @routine_movslq_MINUS0x4e0__rbp__rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fdc)
  store %struct.Memory* %call_400fdc, %struct.Memory** %MEMORY

  ; Code: movl 0x603480(,%rcx,4), %eax	 RIP: 400fe4	 Bytes: 7
  %loadMem_400fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fe4 = call %struct.Memory* @routine_movl_0x603480___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fe4)
  store %struct.Memory* %call_400fe4, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 400feb	 Bytes: 3
  %loadMem_400feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400feb = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400feb)
  store %struct.Memory* %call_400feb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 400fee	 Bytes: 3
  %loadMem_400fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400fee = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400fee)
  store %struct.Memory* %call_400fee, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 400ff1	 Bytes: 3
  %loadMem_400ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff1 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff1)
  store %struct.Memory* %call_400ff1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4e0(%rbp,%rcx,4)	 RIP: 400ff4	 Bytes: 7
  %loadMem_400ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ff4 = call %struct.Memory* @routine_movl__eax__MINUS0x4e0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ff4)
  store %struct.Memory* %call_400ff4, %struct.Memory** %MEMORY

  ; Code: .L_400ffb:	 RIP: 400ffb	 Bytes: 0
  br label %block_.L_400ffb
block_.L_400ffb:

  ; Code: jmpq .L_401000	 RIP: 400ffb	 Bytes: 5
  %loadMem_400ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ffb = call %struct.Memory* @routine_jmpq_.L_401000(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ffb, i64 5, i64 5)
  store %struct.Memory* %call_400ffb, %struct.Memory** %MEMORY

  br label %block_.L_401000

  ; Code: .L_401000:	 RIP: 401000	 Bytes: 0
block_.L_401000:

  ; Code: xorl %eax, %eax	 RIP: 401000	 Bytes: 2
  %loadMem_401000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401000 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401000)
  store %struct.Memory* %call_401000, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 401002	 Bytes: 2
  %loadMem_401002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401002 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401002)
  store %struct.Memory* %call_401002, %struct.Memory** %MEMORY

  ; Code: cmpl $0x10, -0xc(%rbp)	 RIP: 401004	 Bytes: 4
  %loadMem_401004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401004 = call %struct.Memory* @routine_cmpl__0x10__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401004)
  store %struct.Memory* %call_401004, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0xa95(%rbp)	 RIP: 401008	 Bytes: 6
  %loadMem_401008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401008 = call %struct.Memory* @routine_movb__cl__MINUS0xa95__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401008)
  store %struct.Memory* %call_401008, %struct.Memory** %MEMORY

  ; Code: jge .L_40102e	 RIP: 40100e	 Bytes: 6
  %loadMem_40100e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40100e = call %struct.Memory* @routine_jge_.L_40102e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40100e, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_40100e, %struct.Memory** %MEMORY

  %loadBr_40100e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40100e = icmp eq i8 %loadBr_40100e, 1
  br i1 %cmpBr_40100e, label %block_.L_40102e, label %block_401014

block_401014:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 401014	 Bytes: 3
  %loadMem_401014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401014 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401014)
  store %struct.Memory* %call_401014, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401017	 Bytes: 3
  %loadMem_401017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401017 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401017)
  store %struct.Memory* %call_401017, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40101a	 Bytes: 3
  %loadMem_40101a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40101a = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40101a)
  store %struct.Memory* %call_40101a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x8, -0x530(%rbp,%rcx,4)	 RIP: 40101d	 Bytes: 8
  %loadMem_40101d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40101d = call %struct.Memory* @routine_cmpl__0x8__MINUS0x530__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40101d)
  store %struct.Memory* %call_40101d, %struct.Memory** %MEMORY

  ; Code: setle %dl	 RIP: 401025	 Bytes: 3
  %loadMem_401025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401025 = call %struct.Memory* @routine_setle__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401025)
  store %struct.Memory* %call_401025, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0xa95(%rbp)	 RIP: 401028	 Bytes: 6
  %loadMem_401028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401028 = call %struct.Memory* @routine_movb__dl__MINUS0xa95__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401028)
  store %struct.Memory* %call_401028, %struct.Memory** %MEMORY

  ; Code: .L_40102e:	 RIP: 40102e	 Bytes: 0
  br label %block_.L_40102e
block_.L_40102e:

  ; Code: movb -0xa95(%rbp), %al	 RIP: 40102e	 Bytes: 6
  %loadMem_40102e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40102e = call %struct.Memory* @routine_movb_MINUS0xa95__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40102e)
  store %struct.Memory* %call_40102e, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 401034	 Bytes: 2
  %loadMem_401034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401034 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401034)
  store %struct.Memory* %call_401034, %struct.Memory** %MEMORY

  ; Code: jne .L_400ae9	 RIP: 401036	 Bytes: 6
  %loadMem_401036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401036 = call %struct.Memory* @routine_jne_.L_400ae9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401036, i8* %BRANCH_TAKEN, i64 -1357, i64 6, i64 6)
  store %struct.Memory* %call_401036, %struct.Memory** %MEMORY

  %loadBr_401036 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401036 = icmp eq i8 %loadBr_401036, 1
  br i1 %cmpBr_401036, label %block_.L_400ae9, label %block_40103c

block_40103c:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 40103c	 Bytes: 3
  %loadMem_40103c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103c = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103c)
  store %struct.Memory* %call_40103c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40103f	 Bytes: 3
  %loadMem_40103f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40103f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40103f)
  store %struct.Memory* %call_40103f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 401042	 Bytes: 3
  %loadMem_401042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401042 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401042)
  store %struct.Memory* %call_401042, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 401045	 Bytes: 4
  %loadMem_401045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401045 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401045)
  store %struct.Memory* %call_401045, %struct.Memory** %MEMORY

  ; Code: cmpl $0x8, -0x530(%rbp,%rcx,4)	 RIP: 401049	 Bytes: 8
  %loadMem_401049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401049 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x530__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401049)
  store %struct.Memory* %call_401049, %struct.Memory** %MEMORY

  ; Code: jg .L_401788	 RIP: 401051	 Bytes: 6
  %loadMem_401051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401051 = call %struct.Memory* @routine_jg_.L_401788(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401051, i8* %BRANCH_TAKEN, i64 1847, i64 6, i64 6)
  store %struct.Memory* %call_401051, %struct.Memory** %MEMORY

  %loadBr_401051 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401051 = icmp eq i8 %loadBr_401051, 1
  br i1 %cmpBr_401051, label %block_.L_401788, label %block_401057

block_401057:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 401057	 Bytes: 7
  %loadMem_401057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401057 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401057)
  store %struct.Memory* %call_401057, %struct.Memory** %MEMORY

  ; Code: .L_40105e:	 RIP: 40105e	 Bytes: 0
  br label %block_.L_40105e
block_.L_40105e:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40105e	 Bytes: 3
  %loadMem_40105e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40105e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40105e)
  store %struct.Memory* %call_40105e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 401061	 Bytes: 4
  %loadMem_401061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401061 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401061)
  store %struct.Memory* %call_401061, %struct.Memory** %MEMORY

  ; Code: cmpl -0x530(%rbp,%rcx,4), %eax	 RIP: 401065	 Bytes: 7
  %loadMem_401065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401065 = call %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401065)
  store %struct.Memory* %call_401065, %struct.Memory** %MEMORY

  ; Code: jg .L_4010b6	 RIP: 40106c	 Bytes: 6
  %loadMem_40106c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40106c = call %struct.Memory* @routine_jg_.L_4010b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40106c, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_40106c, %struct.Memory** %MEMORY

  %loadBr_40106c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40106c = icmp eq i8 %loadBr_40106c, 1
  br i1 %cmpBr_40106c, label %block_.L_4010b6, label %block_401072

block_401072:
  ; Code: leaq -0x490(%rbp), %rax	 RIP: 401072	 Bytes: 7
  %loadMem_401072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401072 = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401072)
  store %struct.Memory* %call_401072, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 401079	 Bytes: 4
  %loadMem_401079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401079 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401079)
  store %struct.Memory* %call_401079, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 40107d	 Bytes: 4
  %loadMem_40107d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40107d = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40107d)
  store %struct.Memory* %call_40107d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 401081	 Bytes: 3
  %loadMem_401081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401081 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401081)
  store %struct.Memory* %call_401081, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 401084	 Bytes: 3
  %loadMem_401084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401084 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401084)
  store %struct.Memory* %call_401084, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 401087	 Bytes: 4
  %loadMem_401087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401087 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401087)
  store %struct.Memory* %call_401087, %struct.Memory** %MEMORY

  ; Code: movslq (%rdx,%rcx,4), %rcx	 RIP: 40108b	 Bytes: 4
  %loadMem_40108b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108b = call %struct.Memory* @routine_movslq___rdx__rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108b)
  store %struct.Memory* %call_40108b, %struct.Memory** %MEMORY

  ; Code: movl 0x603480(,%rcx,4), %esi	 RIP: 40108f	 Bytes: 7
  %loadMem_40108f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40108f = call %struct.Memory* @routine_movl_0x603480___rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40108f)
  store %struct.Memory* %call_40108f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 401096	 Bytes: 4
  %loadMem_401096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401096 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401096)
  store %struct.Memory* %call_401096, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 40109a	 Bytes: 4
  %loadMem_40109a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109a = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109a)
  store %struct.Memory* %call_40109a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40109e	 Bytes: 3
  %loadMem_40109e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40109e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40109e)
  store %struct.Memory* %call_40109e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4010a1	 Bytes: 4
  %loadMem_4010a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a1 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a1)
  store %struct.Memory* %call_4010a1, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 4010a5	 Bytes: 3
  %loadMem_4010a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a5 = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a5)
  store %struct.Memory* %call_4010a5, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4010a8	 Bytes: 3
  %loadMem_4010a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010a8 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010a8)
  store %struct.Memory* %call_4010a8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4010ab	 Bytes: 3
  %loadMem_4010ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ab = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ab)
  store %struct.Memory* %call_4010ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4010ae	 Bytes: 3
  %loadMem_4010ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ae = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ae)
  store %struct.Memory* %call_4010ae, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40105e	 RIP: 4010b1	 Bytes: 5
  %loadMem_4010b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b1 = call %struct.Memory* @routine_jmpq_.L_40105e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b1, i64 -83, i64 5)
  store %struct.Memory* %call_4010b1, %struct.Memory** %MEMORY

  br label %block_.L_40105e

  ; Code: .L_4010b6:	 RIP: 4010b6	 Bytes: 0
block_.L_4010b6:

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 4010b6	 Bytes: 7
  %loadMem_4010b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010b6 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010b6)
  store %struct.Memory* %call_4010b6, %struct.Memory** %MEMORY

  ; Code: .L_4010bd:	 RIP: 4010bd	 Bytes: 0
  br label %block_.L_4010bd
block_.L_4010bd:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4010bd	 Bytes: 3
  %loadMem_4010bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010bd = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010bd)
  store %struct.Memory* %call_4010bd, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4010c0	 Bytes: 4
  %loadMem_4010c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c0 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c0)
  store %struct.Memory* %call_4010c0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x530(%rbp,%rcx,4), %eax	 RIP: 4010c4	 Bytes: 7
  %loadMem_4010c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010c4 = call %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010c4)
  store %struct.Memory* %call_4010c4, %struct.Memory** %MEMORY

  ; Code: jg .L_401103	 RIP: 4010cb	 Bytes: 6
  %loadMem_4010cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010cb = call %struct.Memory* @routine_jg_.L_401103(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010cb, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_4010cb, %struct.Memory** %MEMORY

  %loadBr_4010cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4010cb = icmp eq i8 %loadBr_4010cb, 1
  br i1 %cmpBr_4010cb, label %block_.L_401103, label %block_4010d1

block_4010d1:
  ; Code: leaq -0x490(%rbp), %rax	 RIP: 4010d1	 Bytes: 7
  %loadMem_4010d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d1 = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d1)
  store %struct.Memory* %call_4010d1, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4010d8	 Bytes: 4
  %loadMem_4010d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010d8 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010d8)
  store %struct.Memory* %call_4010d8, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4010dc	 Bytes: 4
  %loadMem_4010dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010dc = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010dc)
  store %struct.Memory* %call_4010dc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4010e0	 Bytes: 3
  %loadMem_4010e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e0)
  store %struct.Memory* %call_4010e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4010e3	 Bytes: 4
  %loadMem_4010e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e3 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e3)
  store %struct.Memory* %call_4010e3, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 4010e7	 Bytes: 3
  %loadMem_4010e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010e7 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010e7)
  store %struct.Memory* %call_4010e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4010ea	 Bytes: 4
  %loadMem_4010ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ea = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ea)
  store %struct.Memory* %call_4010ea, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xa80(%rbp,%rax,4)	 RIP: 4010ee	 Bytes: 7
  %loadMem_4010ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010ee = call %struct.Memory* @routine_movl__edx__MINUS0xa80__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010ee)
  store %struct.Memory* %call_4010ee, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4010f5	 Bytes: 3
  %loadMem_4010f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f5 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f5)
  store %struct.Memory* %call_4010f5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4010f8	 Bytes: 3
  %loadMem_4010f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010f8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010f8)
  store %struct.Memory* %call_4010f8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4010fb	 Bytes: 3
  %loadMem_4010fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010fb = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010fb)
  store %struct.Memory* %call_4010fb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4010bd	 RIP: 4010fe	 Bytes: 5
  %loadMem_4010fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4010fe = call %struct.Memory* @routine_jmpq_.L_4010bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4010fe, i64 -65, i64 5)
  store %struct.Memory* %call_4010fe, %struct.Memory** %MEMORY

  br label %block_.L_4010bd

  ; Code: .L_401103:	 RIP: 401103	 Bytes: 0
block_.L_401103:

  ; Code: movl $0x0, -0x5d4(%rbp)	 RIP: 401103	 Bytes: 10
  %loadMem_401103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401103 = call %struct.Memory* @routine_movl__0x0__MINUS0x5d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401103)
  store %struct.Memory* %call_401103, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 40110d	 Bytes: 7
  %loadMem_40110d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40110d = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40110d)
  store %struct.Memory* %call_40110d, %struct.Memory** %MEMORY

  ; Code: .L_401114:	 RIP: 401114	 Bytes: 0
  br label %block_.L_401114
block_.L_401114:

  ; Code: cmpl $0xff, -0x4(%rbp)	 RIP: 401114	 Bytes: 7
  %loadMem_401114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401114 = call %struct.Memory* @routine_cmpl__0xff__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401114)
  store %struct.Memory* %call_401114, %struct.Memory** %MEMORY

  ; Code: jg .L_401203	 RIP: 40111b	 Bytes: 6
  %loadMem_40111b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40111b = call %struct.Memory* @routine_jg_.L_401203(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40111b, i8* %BRANCH_TAKEN, i64 232, i64 6, i64 6)
  store %struct.Memory* %call_40111b, %struct.Memory** %MEMORY

  %loadBr_40111b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40111b = icmp eq i8 %loadBr_40111b, 1
  br i1 %cmpBr_40111b, label %block_.L_401203, label %block_401121

block_401121:
  ; Code: movl $0x1, -0x10(%rbp)	 RIP: 401121	 Bytes: 7
  %loadMem_401121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401121 = call %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401121)
  store %struct.Memory* %call_401121, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x8(%rbp)	 RIP: 401128	 Bytes: 7
  %loadMem_401128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401128 = call %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401128)
  store %struct.Memory* %call_401128, %struct.Memory** %MEMORY

  ; Code: .L_40112f:	 RIP: 40112f	 Bytes: 0
  br label %block_.L_40112f
block_.L_40112f:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 40112f	 Bytes: 3
  %loadMem_40112f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40112f = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40112f)
  store %struct.Memory* %call_40112f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 401132	 Bytes: 4
  %loadMem_401132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401132 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401132)
  store %struct.Memory* %call_401132, %struct.Memory** %MEMORY

  ; Code: cmpl -0x530(%rbp,%rcx,4), %eax	 RIP: 401136	 Bytes: 7
  %loadMem_401136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401136 = call %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401136)
  store %struct.Memory* %call_401136, %struct.Memory** %MEMORY

  ; Code: jg .L_4011b0	 RIP: 40113d	 Bytes: 6
  %loadMem_40113d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40113d = call %struct.Memory* @routine_jg_.L_4011b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40113d, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_40113d, %struct.Memory** %MEMORY

  %loadBr_40113d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40113d = icmp eq i8 %loadBr_40113d, 1
  br i1 %cmpBr_40113d, label %block_.L_4011b0, label %block_401143

block_401143:
  ; Code: movslq -0x8(%rbp), %rax	 RIP: 401143	 Bytes: 4
  %loadMem_401143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401143 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401143)
  store %struct.Memory* %call_401143, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, -0xa80(%rbp,%rax,4)	 RIP: 401147	 Bytes: 8
  %loadMem_401147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401147 = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0xa80__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401147)
  store %struct.Memory* %call_401147, %struct.Memory** %MEMORY

  ; Code: je .L_40119d	 RIP: 40114f	 Bytes: 6
  %loadMem_40114f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40114f = call %struct.Memory* @routine_je_.L_40119d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40114f, i8* %BRANCH_TAKEN, i64 78, i64 6, i64 6)
  store %struct.Memory* %call_40114f, %struct.Memory** %MEMORY

  %loadBr_40114f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40114f = icmp eq i8 %loadBr_40114f, 1
  br i1 %cmpBr_40114f, label %block_.L_40119d, label %block_401155

block_401155:
  ; Code: movl $0xff, %eax	 RIP: 401155	 Bytes: 5
  %loadMem_401155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401155 = call %struct.Memory* @routine_movl__0xff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401155)
  store %struct.Memory* %call_401155, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40115a	 Bytes: 4
  %loadMem_40115a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115a = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115a)
  store %struct.Memory* %call_40115a, %struct.Memory** %MEMORY

  ; Code: movl -0xa80(%rbp,%rcx,4), %edx	 RIP: 40115e	 Bytes: 7
  %loadMem_40115e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40115e = call %struct.Memory* @routine_movl_MINUS0xa80__rbp__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40115e)
  store %struct.Memory* %call_40115e, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %edx	 RIP: 401165	 Bytes: 3
  %loadMem_401165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401165 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401165)
  store %struct.Memory* %call_401165, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa9c(%rbp)	 RIP: 401168	 Bytes: 6
  %loadMem_401168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401168 = call %struct.Memory* @routine_movl__eax__MINUS0xa9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401168)
  store %struct.Memory* %call_401168, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 40116e	 Bytes: 2
  %loadMem_40116e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40116e = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40116e)
  store %struct.Memory* %call_40116e, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 401170	 Bytes: 1
  %loadMem_401170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401170 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401170)
  store %struct.Memory* %call_401170, %struct.Memory** %MEMORY

  ; Code: movl -0xa9c(%rbp), %esi	 RIP: 401171	 Bytes: 6
  %loadMem_401171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401171 = call %struct.Memory* @routine_movl_MINUS0xa9c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401171)
  store %struct.Memory* %call_401171, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 401177	 Bytes: 2
  %loadMem_401177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401177 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401177)
  store %struct.Memory* %call_401177, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 401179	 Bytes: 4
  %loadMem_401179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401179 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401179)
  store %struct.Memory* %call_401179, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xa80(%rbp,%rcx,4)	 RIP: 40117d	 Bytes: 7
  %loadMem_40117d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40117d = call %struct.Memory* @routine_movl__edx__MINUS0xa80__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40117d)
  store %struct.Memory* %call_40117d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 401184	 Bytes: 4
  %loadMem_401184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401184 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401184)
  store %struct.Memory* %call_401184, %struct.Memory** %MEMORY

  ; Code: movslq -0xa80(%rbp,%rcx,4), %rcx	 RIP: 401188	 Bytes: 8
  %loadMem_401188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401188 = call %struct.Memory* @routine_movslq_MINUS0xa80__rbp__rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401188)
  store %struct.Memory* %call_401188, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rcx,4), %edx	 RIP: 401190	 Bytes: 7
  %loadMem_401190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401190 = call %struct.Memory* @routine_movl_0x603880___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401190)
  store %struct.Memory* %call_401190, %struct.Memory** %MEMORY

  ; Code: xorl -0x10(%rbp), %edx	 RIP: 401197	 Bytes: 3
  %loadMem_401197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401197 = call %struct.Memory* @routine_xorl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401197)
  store %struct.Memory* %call_401197, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x10(%rbp)	 RIP: 40119a	 Bytes: 3
  %loadMem_40119a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40119a = call %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40119a)
  store %struct.Memory* %call_40119a, %struct.Memory** %MEMORY

  ; Code: .L_40119d:	 RIP: 40119d	 Bytes: 0
  br label %block_.L_40119d
block_.L_40119d:

  ; Code: jmpq .L_4011a2	 RIP: 40119d	 Bytes: 5
  %loadMem_40119d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40119d = call %struct.Memory* @routine_jmpq_.L_4011a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40119d, i64 5, i64 5)
  store %struct.Memory* %call_40119d, %struct.Memory** %MEMORY

  br label %block_.L_4011a2

  ; Code: .L_4011a2:	 RIP: 4011a2	 Bytes: 0
block_.L_4011a2:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4011a2	 Bytes: 3
  %loadMem_4011a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a2 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a2)
  store %struct.Memory* %call_4011a2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4011a5	 Bytes: 3
  %loadMem_4011a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a5)
  store %struct.Memory* %call_4011a5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4011a8	 Bytes: 3
  %loadMem_4011a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011a8 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011a8)
  store %struct.Memory* %call_4011a8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40112f	 RIP: 4011ab	 Bytes: 5
  %loadMem_4011ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ab = call %struct.Memory* @routine_jmpq_.L_40112f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ab, i64 -124, i64 5)
  store %struct.Memory* %call_4011ab, %struct.Memory** %MEMORY

  br label %block_.L_40112f

  ; Code: .L_4011b0:	 RIP: 4011b0	 Bytes: 0
block_.L_4011b0:

  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 4011b0	 Bytes: 4
  %loadMem_4011b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b0 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b0)
  store %struct.Memory* %call_4011b0, %struct.Memory** %MEMORY

  ; Code: jne .L_4011f0	 RIP: 4011b4	 Bytes: 6
  %loadMem_4011b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011b4 = call %struct.Memory* @routine_jne_.L_4011f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011b4, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_4011b4, %struct.Memory** %MEMORY

  %loadBr_4011b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4011b4 = icmp eq i8 %loadBr_4011b4, 1
  br i1 %cmpBr_4011b4, label %block_.L_4011f0, label %block_4011ba

block_4011ba:
  ; Code: movl $0xff, %eax	 RIP: 4011ba	 Bytes: 5
  %loadMem_4011ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ba = call %struct.Memory* @routine_movl__0xff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ba)
  store %struct.Memory* %call_4011ba, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 4011bf	 Bytes: 3
  %loadMem_4011bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011bf = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011bf)
  store %struct.Memory* %call_4011bf, %struct.Memory** %MEMORY

  ; Code: movslq -0x5d4(%rbp), %rdx	 RIP: 4011c2	 Bytes: 7
  %loadMem_4011c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c2 = call %struct.Memory* @routine_movslq_MINUS0x5d4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c2)
  store %struct.Memory* %call_4011c2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x600(%rbp,%rdx,4)	 RIP: 4011c9	 Bytes: 7
  %loadMem_4011c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011c9 = call %struct.Memory* @routine_movl__ecx__MINUS0x600__rbp__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011c9)
  store %struct.Memory* %call_4011c9, %struct.Memory** %MEMORY

  ; Code: subl -0x4(%rbp), %eax	 RIP: 4011d0	 Bytes: 3
  %loadMem_4011d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d0 = call %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d0)
  store %struct.Memory* %call_4011d0, %struct.Memory** %MEMORY

  ; Code: movslq -0x5d4(%rbp), %rdx	 RIP: 4011d3	 Bytes: 7
  %loadMem_4011d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011d3 = call %struct.Memory* @routine_movslq_MINUS0x5d4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011d3)
  store %struct.Memory* %call_4011d3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x620(%rbp,%rdx,4)	 RIP: 4011da	 Bytes: 7
  %loadMem_4011da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011da = call %struct.Memory* @routine_movl__eax__MINUS0x620__rbp__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011da)
  store %struct.Memory* %call_4011da, %struct.Memory** %MEMORY

  ; Code: movl -0x5d4(%rbp), %eax	 RIP: 4011e1	 Bytes: 6
  %loadMem_4011e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e1 = call %struct.Memory* @routine_movl_MINUS0x5d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e1)
  store %struct.Memory* %call_4011e1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4011e7	 Bytes: 3
  %loadMem_4011e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011e7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011e7)
  store %struct.Memory* %call_4011e7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5d4(%rbp)	 RIP: 4011ea	 Bytes: 6
  %loadMem_4011ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011ea = call %struct.Memory* @routine_movl__eax__MINUS0x5d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011ea)
  store %struct.Memory* %call_4011ea, %struct.Memory** %MEMORY

  ; Code: .L_4011f0:	 RIP: 4011f0	 Bytes: 0
  br label %block_.L_4011f0
block_.L_4011f0:

  ; Code: jmpq .L_4011f5	 RIP: 4011f0	 Bytes: 5
  %loadMem_4011f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f0 = call %struct.Memory* @routine_jmpq_.L_4011f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f0, i64 5, i64 5)
  store %struct.Memory* %call_4011f0, %struct.Memory** %MEMORY

  br label %block_.L_4011f5

  ; Code: .L_4011f5:	 RIP: 4011f5	 Bytes: 0
block_.L_4011f5:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4011f5	 Bytes: 3
  %loadMem_4011f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f5 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f5)
  store %struct.Memory* %call_4011f5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4011f8	 Bytes: 3
  %loadMem_4011f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011f8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011f8)
  store %struct.Memory* %call_4011f8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4011fb	 Bytes: 3
  %loadMem_4011fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011fb = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011fb)
  store %struct.Memory* %call_4011fb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401114	 RIP: 4011fe	 Bytes: 5
  %loadMem_4011fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4011fe = call %struct.Memory* @routine_jmpq_.L_401114(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4011fe, i64 -234, i64 5)
  store %struct.Memory* %call_4011fe, %struct.Memory** %MEMORY

  br label %block_.L_401114

  ; Code: .L_401203:	 RIP: 401203	 Bytes: 0
block_.L_401203:

  ; Code: movl -0x5d4(%rbp), %eax	 RIP: 401203	 Bytes: 6
  %loadMem_401203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401203 = call %struct.Memory* @routine_movl_MINUS0x5d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401203)
  store %struct.Memory* %call_401203, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 401209	 Bytes: 4
  %loadMem_401209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401209 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401209)
  store %struct.Memory* %call_401209, %struct.Memory** %MEMORY

  ; Code: cmpl -0x530(%rbp,%rcx,4), %eax	 RIP: 40120d	 Bytes: 7
  %loadMem_40120d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40120d = call %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40120d)
  store %struct.Memory* %call_40120d, %struct.Memory** %MEMORY

  ; Code: jne .L_401713	 RIP: 401214	 Bytes: 6
  %loadMem_401214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401214 = call %struct.Memory* @routine_jne_.L_401713(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401214, i8* %BRANCH_TAKEN, i64 1279, i64 6, i64 6)
  store %struct.Memory* %call_401214, %struct.Memory** %MEMORY

  %loadBr_401214 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401214 = icmp eq i8 %loadBr_401214, 1
  br i1 %cmpBr_401214, label %block_.L_401713, label %block_40121a

block_40121a:
  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 40121a	 Bytes: 7
  %loadMem_40121a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40121a = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40121a)
  store %struct.Memory* %call_40121a, %struct.Memory** %MEMORY

  ; Code: .L_401221:	 RIP: 401221	 Bytes: 0
  br label %block_.L_401221
block_.L_401221:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 401221	 Bytes: 3
  %loadMem_401221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401221 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401221)
  store %struct.Memory* %call_401221, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 401224	 Bytes: 4
  %loadMem_401224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401224 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401224)
  store %struct.Memory* %call_401224, %struct.Memory** %MEMORY

  ; Code: cmpl -0x530(%rbp,%rcx,4), %eax	 RIP: 401228	 Bytes: 7
  %loadMem_401228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401228 = call %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401228)
  store %struct.Memory* %call_401228, %struct.Memory** %MEMORY

  ; Code: jg .L_401460	 RIP: 40122f	 Bytes: 6
  %loadMem_40122f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40122f = call %struct.Memory* @routine_jg_.L_401460(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40122f, i8* %BRANCH_TAKEN, i64 561, i64 6, i64 6)
  store %struct.Memory* %call_40122f, %struct.Memory** %MEMORY

  %loadBr_40122f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40122f = icmp eq i8 %loadBr_40122f, 1
  br i1 %cmpBr_40122f, label %block_.L_401460, label %block_401235

block_401235:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 401235	 Bytes: 4
  %loadMem_401235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401235 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401235)
  store %struct.Memory* %call_401235, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, -0x5d0(%rbp,%rax,4)	 RIP: 401239	 Bytes: 8
  %loadMem_401239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401239 = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x5d0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401239)
  store %struct.Memory* %call_401239, %struct.Memory** %MEMORY

  ; Code: je .L_4012ab	 RIP: 401241	 Bytes: 6
  %loadMem_401241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401241 = call %struct.Memory* @routine_je_.L_4012ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401241, i8* %BRANCH_TAKEN, i64 106, i64 6, i64 6)
  store %struct.Memory* %call_401241, %struct.Memory** %MEMORY

  %loadBr_401241 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401241 = icmp eq i8 %loadBr_401241, 1
  br i1 %cmpBr_401241, label %block_.L_4012ab, label %block_401247

block_401247:
  ; Code: leaq -0x490(%rbp), %rax	 RIP: 401247	 Bytes: 7
  %loadMem_401247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401247 = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401247)
  store %struct.Memory* %call_401247, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 40124e	 Bytes: 4
  %loadMem_40124e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40124e = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40124e)
  store %struct.Memory* %call_40124e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 401252	 Bytes: 4
  %loadMem_401252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401252 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401252)
  store %struct.Memory* %call_401252, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401256	 Bytes: 3
  %loadMem_401256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401256 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401256)
  store %struct.Memory* %call_401256, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 401259	 Bytes: 4
  %loadMem_401259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401259 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401259)
  store %struct.Memory* %call_401259, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, (%rax,%rcx,4)	 RIP: 40125d	 Bytes: 4
  %loadMem_40125d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40125d = call %struct.Memory* @routine_cmpl__0xffffffff____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40125d)
  store %struct.Memory* %call_40125d, %struct.Memory** %MEMORY

  ; Code: je .L_4012ab	 RIP: 401261	 Bytes: 6
  %loadMem_401261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401261 = call %struct.Memory* @routine_je_.L_4012ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401261, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_401261, %struct.Memory** %MEMORY

  %loadBr_401261 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401261 = icmp eq i8 %loadBr_401261, 1
  br i1 %cmpBr_401261, label %block_.L_4012ab, label %block_401267

block_401267:
  ; Code: leaq -0x490(%rbp), %rax	 RIP: 401267	 Bytes: 7
  %loadMem_401267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401267 = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401267)
  store %struct.Memory* %call_401267, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 40126e	 Bytes: 4
  %loadMem_40126e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40126e = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40126e)
  store %struct.Memory* %call_40126e, %struct.Memory** %MEMORY

  ; Code: movslq -0x5d0(%rbp,%rcx,4), %rcx	 RIP: 401272	 Bytes: 8
  %loadMem_401272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401272 = call %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401272)
  store %struct.Memory* %call_401272, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rcx,4), %edx	 RIP: 40127a	 Bytes: 7
  %loadMem_40127a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40127a = call %struct.Memory* @routine_movl_0x603880___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40127a)
  store %struct.Memory* %call_40127a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 401281	 Bytes: 4
  %loadMem_401281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401281 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401281)
  store %struct.Memory* %call_401281, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 401285	 Bytes: 4
  %loadMem_401285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401285 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401285)
  store %struct.Memory* %call_401285, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401289	 Bytes: 3
  %loadMem_401289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401289 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401289)
  store %struct.Memory* %call_401289, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 40128c	 Bytes: 4
  %loadMem_40128c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40128c = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40128c)
  store %struct.Memory* %call_40128c, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 401290	 Bytes: 4
  %loadMem_401290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401290 = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401290)
  store %struct.Memory* %call_401290, %struct.Memory** %MEMORY

  ; Code: xorl 0x603880(,%rax,4), %edx	 RIP: 401294	 Bytes: 7
  %loadMem_401294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401294 = call %struct.Memory* @routine_xorl_0x603880___rax_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401294)
  store %struct.Memory* %call_401294, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 40129b	 Bytes: 4
  %loadMem_40129b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129b = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129b)
  store %struct.Memory* %call_40129b, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x650(%rbp,%rax,4)	 RIP: 40129f	 Bytes: 7
  %loadMem_40129f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40129f = call %struct.Memory* @routine_movl__edx__MINUS0x650__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40129f)
  store %struct.Memory* %call_40129f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40137c	 RIP: 4012a6	 Bytes: 5
  %loadMem_4012a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012a6 = call %struct.Memory* @routine_jmpq_.L_40137c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012a6, i64 214, i64 5)
  store %struct.Memory* %call_4012a6, %struct.Memory** %MEMORY

  br label %block_.L_40137c

  ; Code: .L_4012ab:	 RIP: 4012ab	 Bytes: 0
block_.L_4012ab:

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4012ab	 Bytes: 4
  %loadMem_4012ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012ab = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012ab)
  store %struct.Memory* %call_4012ab, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, -0x5d0(%rbp,%rax,4)	 RIP: 4012af	 Bytes: 8
  %loadMem_4012af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012af = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x5d0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012af)
  store %struct.Memory* %call_4012af, %struct.Memory** %MEMORY

  ; Code: je .L_401300	 RIP: 4012b7	 Bytes: 6
  %loadMem_4012b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012b7 = call %struct.Memory* @routine_je_.L_401300(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012b7, i8* %BRANCH_TAKEN, i64 73, i64 6, i64 6)
  store %struct.Memory* %call_4012b7, %struct.Memory** %MEMORY

  %loadBr_4012b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012b7 = icmp eq i8 %loadBr_4012b7, 1
  br i1 %cmpBr_4012b7, label %block_.L_401300, label %block_4012bd

block_4012bd:
  ; Code: leaq -0x490(%rbp), %rax	 RIP: 4012bd	 Bytes: 7
  %loadMem_4012bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012bd = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012bd)
  store %struct.Memory* %call_4012bd, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4012c4	 Bytes: 4
  %loadMem_4012c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c4 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c4)
  store %struct.Memory* %call_4012c4, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4012c8	 Bytes: 4
  %loadMem_4012c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012c8 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012c8)
  store %struct.Memory* %call_4012c8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4012cc	 Bytes: 3
  %loadMem_4012cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012cc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012cc)
  store %struct.Memory* %call_4012cc, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4012cf	 Bytes: 4
  %loadMem_4012cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012cf = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012cf)
  store %struct.Memory* %call_4012cf, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, (%rax,%rcx,4)	 RIP: 4012d3	 Bytes: 4
  %loadMem_4012d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d3 = call %struct.Memory* @routine_cmpl__0xffffffff____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d3)
  store %struct.Memory* %call_4012d3, %struct.Memory** %MEMORY

  ; Code: jne .L_401300	 RIP: 4012d7	 Bytes: 6
  %loadMem_4012d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012d7 = call %struct.Memory* @routine_jne_.L_401300(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012d7, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_4012d7, %struct.Memory** %MEMORY

  %loadBr_4012d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012d7 = icmp eq i8 %loadBr_4012d7, 1
  br i1 %cmpBr_4012d7, label %block_.L_401300, label %block_4012dd

block_4012dd:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4012dd	 Bytes: 4
  %loadMem_4012dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012dd = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012dd)
  store %struct.Memory* %call_4012dd, %struct.Memory** %MEMORY

  ; Code: movslq -0x5d0(%rbp,%rax,4), %rax	 RIP: 4012e1	 Bytes: 8
  %loadMem_4012e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e1 = call %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e1)
  store %struct.Memory* %call_4012e1, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rax,4), %ecx	 RIP: 4012e9	 Bytes: 7
  %loadMem_4012e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012e9 = call %struct.Memory* @routine_movl_0x603880___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012e9)
  store %struct.Memory* %call_4012e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4012f0	 Bytes: 4
  %loadMem_4012f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f0 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f0)
  store %struct.Memory* %call_4012f0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x650(%rbp,%rax,4)	 RIP: 4012f4	 Bytes: 7
  %loadMem_4012f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012f4 = call %struct.Memory* @routine_movl__ecx__MINUS0x650__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012f4)
  store %struct.Memory* %call_4012f4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401377	 RIP: 4012fb	 Bytes: 5
  %loadMem_4012fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4012fb = call %struct.Memory* @routine_jmpq_.L_401377(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4012fb, i64 124, i64 5)
  store %struct.Memory* %call_4012fb, %struct.Memory** %MEMORY

  br label %block_.L_401377

  ; Code: .L_401300:	 RIP: 401300	 Bytes: 0
block_.L_401300:

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 401300	 Bytes: 4
  %loadMem_401300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401300 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401300)
  store %struct.Memory* %call_401300, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, -0x5d0(%rbp,%rax,4)	 RIP: 401304	 Bytes: 8
  %loadMem_401304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401304 = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x5d0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401304)
  store %struct.Memory* %call_401304, %struct.Memory** %MEMORY

  ; Code: jne .L_401363	 RIP: 40130c	 Bytes: 6
  %loadMem_40130c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40130c = call %struct.Memory* @routine_jne_.L_401363(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40130c, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_40130c, %struct.Memory** %MEMORY

  %loadBr_40130c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40130c = icmp eq i8 %loadBr_40130c, 1
  br i1 %cmpBr_40130c, label %block_.L_401363, label %block_401312

block_401312:
  ; Code: leaq -0x490(%rbp), %rax	 RIP: 401312	 Bytes: 7
  %loadMem_401312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401312 = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401312)
  store %struct.Memory* %call_401312, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 401319	 Bytes: 4
  %loadMem_401319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401319 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401319)
  store %struct.Memory* %call_401319, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 40131d	 Bytes: 4
  %loadMem_40131d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40131d = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40131d)
  store %struct.Memory* %call_40131d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401321	 Bytes: 3
  %loadMem_401321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401321 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401321)
  store %struct.Memory* %call_401321, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 401324	 Bytes: 4
  %loadMem_401324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401324 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401324)
  store %struct.Memory* %call_401324, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, (%rax,%rcx,4)	 RIP: 401328	 Bytes: 4
  %loadMem_401328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401328 = call %struct.Memory* @routine_cmpl__0xffffffff____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401328)
  store %struct.Memory* %call_401328, %struct.Memory** %MEMORY

  ; Code: je .L_401363	 RIP: 40132c	 Bytes: 6
  %loadMem_40132c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40132c = call %struct.Memory* @routine_je_.L_401363(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40132c, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_40132c, %struct.Memory** %MEMORY

  %loadBr_40132c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40132c = icmp eq i8 %loadBr_40132c, 1
  br i1 %cmpBr_40132c, label %block_.L_401363, label %block_401332

block_401332:
  ; Code: leaq -0x490(%rbp), %rax	 RIP: 401332	 Bytes: 7
  %loadMem_401332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401332 = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401332)
  store %struct.Memory* %call_401332, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 401339	 Bytes: 4
  %loadMem_401339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401339 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401339)
  store %struct.Memory* %call_401339, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 40133d	 Bytes: 4
  %loadMem_40133d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40133d = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40133d)
  store %struct.Memory* %call_40133d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 401341	 Bytes: 3
  %loadMem_401341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401341 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401341)
  store %struct.Memory* %call_401341, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 401344	 Bytes: 4
  %loadMem_401344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401344 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401344)
  store %struct.Memory* %call_401344, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 401348	 Bytes: 4
  %loadMem_401348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401348 = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401348)
  store %struct.Memory* %call_401348, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rax,4), %edx	 RIP: 40134c	 Bytes: 7
  %loadMem_40134c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40134c = call %struct.Memory* @routine_movl_0x603880___rax_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40134c)
  store %struct.Memory* %call_40134c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 401353	 Bytes: 4
  %loadMem_401353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401353 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401353)
  store %struct.Memory* %call_401353, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x650(%rbp,%rax,4)	 RIP: 401357	 Bytes: 7
  %loadMem_401357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401357 = call %struct.Memory* @routine_movl__edx__MINUS0x650__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401357)
  store %struct.Memory* %call_401357, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401372	 RIP: 40135e	 Bytes: 5
  %loadMem_40135e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40135e = call %struct.Memory* @routine_jmpq_.L_401372(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40135e, i64 20, i64 5)
  store %struct.Memory* %call_40135e, %struct.Memory** %MEMORY

  br label %block_.L_401372

  ; Code: .L_401363:	 RIP: 401363	 Bytes: 0
block_.L_401363:

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 401363	 Bytes: 4
  %loadMem_401363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401363 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401363)
  store %struct.Memory* %call_401363, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x650(%rbp,%rax,4)	 RIP: 401367	 Bytes: 11
  %loadMem_401367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401367 = call %struct.Memory* @routine_movl__0x0__MINUS0x650__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401367)
  store %struct.Memory* %call_401367, %struct.Memory** %MEMORY

  ; Code: .L_401372:	 RIP: 401372	 Bytes: 0
  br label %block_.L_401372
block_.L_401372:

  ; Code: jmpq .L_401377	 RIP: 401372	 Bytes: 5
  %loadMem_401372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401372 = call %struct.Memory* @routine_jmpq_.L_401377(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401372, i64 5, i64 5)
  store %struct.Memory* %call_401372, %struct.Memory** %MEMORY

  br label %block_.L_401377

  ; Code: .L_401377:	 RIP: 401377	 Bytes: 0
block_.L_401377:

  ; Code: jmpq .L_40137c	 RIP: 401377	 Bytes: 5
  %loadMem_401377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401377 = call %struct.Memory* @routine_jmpq_.L_40137c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401377, i64 5, i64 5)
  store %struct.Memory* %call_401377, %struct.Memory** %MEMORY

  br label %block_.L_40137c

  ; Code: .L_40137c:	 RIP: 40137c	 Bytes: 0
block_.L_40137c:

  ; Code: movl $0x1, -0x8(%rbp)	 RIP: 40137c	 Bytes: 7
  %loadMem_40137c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40137c = call %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40137c)
  store %struct.Memory* %call_40137c, %struct.Memory** %MEMORY

  ; Code: .L_401383:	 RIP: 401383	 Bytes: 0
  br label %block_.L_401383
block_.L_401383:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 401383	 Bytes: 3
  %loadMem_401383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401383 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401383)
  store %struct.Memory* %call_401383, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 401386	 Bytes: 3
  %loadMem_401386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401386 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401386)
  store %struct.Memory* %call_401386, %struct.Memory** %MEMORY

  ; Code: jge .L_401434	 RIP: 401389	 Bytes: 6
  %loadMem_401389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401389 = call %struct.Memory* @routine_jge_.L_401434(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401389, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_401389, %struct.Memory** %MEMORY

  %loadBr_401389 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401389 = icmp eq i8 %loadBr_401389, 1
  br i1 %cmpBr_401389, label %block_.L_401434, label %block_40138f

block_40138f:
  ; Code: movslq -0x8(%rbp), %rax	 RIP: 40138f	 Bytes: 4
  %loadMem_40138f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40138f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40138f)
  store %struct.Memory* %call_40138f, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, -0x5d0(%rbp,%rax,4)	 RIP: 401393	 Bytes: 8
  %loadMem_401393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401393 = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x5d0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401393)
  store %struct.Memory* %call_401393, %struct.Memory** %MEMORY

  ; Code: je .L_401421	 RIP: 40139b	 Bytes: 6
  %loadMem_40139b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40139b = call %struct.Memory* @routine_je_.L_401421(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40139b, i8* %BRANCH_TAKEN, i64 134, i64 6, i64 6)
  store %struct.Memory* %call_40139b, %struct.Memory** %MEMORY

  %loadBr_40139b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40139b = icmp eq i8 %loadBr_40139b, 1
  br i1 %cmpBr_40139b, label %block_.L_401421, label %block_4013a1

block_4013a1:
  ; Code: leaq -0x490(%rbp), %rax	 RIP: 4013a1	 Bytes: 7
  %loadMem_4013a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a1 = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a1)
  store %struct.Memory* %call_4013a1, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4013a8	 Bytes: 4
  %loadMem_4013a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013a8 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013a8)
  store %struct.Memory* %call_4013a8, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4013ac	 Bytes: 4
  %loadMem_4013ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ac = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ac)
  store %struct.Memory* %call_4013ac, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4013b0	 Bytes: 3
  %loadMem_4013b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b0)
  store %struct.Memory* %call_4013b0, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 4013b3	 Bytes: 3
  %loadMem_4013b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b3 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b3)
  store %struct.Memory* %call_4013b3, %struct.Memory** %MEMORY

  ; Code: subl -0x8(%rbp), %edx	 RIP: 4013b6	 Bytes: 3
  %loadMem_4013b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b6 = call %struct.Memory* @routine_subl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b6)
  store %struct.Memory* %call_4013b6, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4013b9	 Bytes: 3
  %loadMem_4013b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013b9 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013b9)
  store %struct.Memory* %call_4013b9, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, (%rax,%rcx,4)	 RIP: 4013bc	 Bytes: 4
  %loadMem_4013bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013bc = call %struct.Memory* @routine_cmpl__0xffffffff____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013bc)
  store %struct.Memory* %call_4013bc, %struct.Memory** %MEMORY

  ; Code: je .L_401421	 RIP: 4013c0	 Bytes: 6
  %loadMem_4013c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c0 = call %struct.Memory* @routine_je_.L_401421(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c0, i8* %BRANCH_TAKEN, i64 97, i64 6, i64 6)
  store %struct.Memory* %call_4013c0, %struct.Memory** %MEMORY

  %loadBr_4013c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4013c0 = icmp eq i8 %loadBr_4013c0, 1
  br i1 %cmpBr_4013c0, label %block_.L_401421, label %block_4013c6

block_4013c6:
  ; Code: movl $0xff, %eax	 RIP: 4013c6	 Bytes: 5
  %loadMem_4013c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013c6 = call %struct.Memory* @routine_movl__0xff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013c6)
  store %struct.Memory* %call_4013c6, %struct.Memory** %MEMORY

  ; Code: leaq -0x490(%rbp), %rcx	 RIP: 4013cb	 Bytes: 7
  %loadMem_4013cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013cb = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013cb)
  store %struct.Memory* %call_4013cb, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4013d2	 Bytes: 4
  %loadMem_4013d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d2 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d2)
  store %struct.Memory* %call_4013d2, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4013d6	 Bytes: 4
  %loadMem_4013d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013d6 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013d6)
  store %struct.Memory* %call_4013d6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4013da	 Bytes: 3
  %loadMem_4013da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013da = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013da)
  store %struct.Memory* %call_4013da, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 4013dd	 Bytes: 3
  %loadMem_4013dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013dd = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013dd)
  store %struct.Memory* %call_4013dd, %struct.Memory** %MEMORY

  ; Code: subl -0x8(%rbp), %esi	 RIP: 4013e0	 Bytes: 3
  %loadMem_4013e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e0 = call %struct.Memory* @routine_subl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e0)
  store %struct.Memory* %call_4013e0, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 4013e3	 Bytes: 3
  %loadMem_4013e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e3 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e3)
  store %struct.Memory* %call_4013e3, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 4013e6	 Bytes: 3
  %loadMem_4013e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e6 = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e6)
  store %struct.Memory* %call_4013e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4013e9	 Bytes: 4
  %loadMem_4013e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013e9 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013e9)
  store %struct.Memory* %call_4013e9, %struct.Memory** %MEMORY

  ; Code: addl -0x5d0(%rbp,%rcx,4), %esi	 RIP: 4013ed	 Bytes: 7
  %loadMem_4013ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013ed = call %struct.Memory* @routine_addl_MINUS0x5d0__rbp__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013ed)
  store %struct.Memory* %call_4013ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xaa0(%rbp)	 RIP: 4013f4	 Bytes: 6
  %loadMem_4013f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013f4 = call %struct.Memory* @routine_movl__eax__MINUS0xaa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013f4)
  store %struct.Memory* %call_4013f4, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 4013fa	 Bytes: 2
  %loadMem_4013fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013fa = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013fa)
  store %struct.Memory* %call_4013fa, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4013fc	 Bytes: 1
  %loadMem_4013fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013fc = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013fc)
  store %struct.Memory* %call_4013fc, %struct.Memory** %MEMORY

  ; Code: movl -0xaa0(%rbp), %esi	 RIP: 4013fd	 Bytes: 6
  %loadMem_4013fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4013fd = call %struct.Memory* @routine_movl_MINUS0xaa0__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4013fd)
  store %struct.Memory* %call_4013fd, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 401403	 Bytes: 2
  %loadMem_401403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401403 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401403)
  store %struct.Memory* %call_401403, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401405	 Bytes: 3
  %loadMem_401405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401405 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401405)
  store %struct.Memory* %call_401405, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rcx,4), %edx	 RIP: 401408	 Bytes: 7
  %loadMem_401408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401408 = call %struct.Memory* @routine_movl_0x603880___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401408)
  store %struct.Memory* %call_401408, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 40140f	 Bytes: 4
  %loadMem_40140f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40140f = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40140f)
  store %struct.Memory* %call_40140f, %struct.Memory** %MEMORY

  ; Code: xorl -0x650(%rbp,%rcx,4), %edx	 RIP: 401413	 Bytes: 7
  %loadMem_401413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401413 = call %struct.Memory* @routine_xorl_MINUS0x650__rbp__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401413)
  store %struct.Memory* %call_401413, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x650(%rbp,%rcx,4)	 RIP: 40141a	 Bytes: 7
  %loadMem_40141a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40141a = call %struct.Memory* @routine_movl__edx__MINUS0x650__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40141a)
  store %struct.Memory* %call_40141a, %struct.Memory** %MEMORY

  ; Code: .L_401421:	 RIP: 401421	 Bytes: 0
  br label %block_.L_401421
block_.L_401421:

  ; Code: jmpq .L_401426	 RIP: 401421	 Bytes: 5
  %loadMem_401421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401421 = call %struct.Memory* @routine_jmpq_.L_401426(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401421, i64 5, i64 5)
  store %struct.Memory* %call_401421, %struct.Memory** %MEMORY

  br label %block_.L_401426

  ; Code: .L_401426:	 RIP: 401426	 Bytes: 0
block_.L_401426:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 401426	 Bytes: 3
  %loadMem_401426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401426 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401426)
  store %struct.Memory* %call_401426, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401429	 Bytes: 3
  %loadMem_401429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401429 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401429)
  store %struct.Memory* %call_401429, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 40142c	 Bytes: 3
  %loadMem_40142c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40142c = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40142c)
  store %struct.Memory* %call_40142c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401383	 RIP: 40142f	 Bytes: 5
  %loadMem_40142f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40142f = call %struct.Memory* @routine_jmpq_.L_401383(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40142f, i64 -172, i64 5)
  store %struct.Memory* %call_40142f, %struct.Memory** %MEMORY

  br label %block_.L_401383

  ; Code: .L_401434:	 RIP: 401434	 Bytes: 0
block_.L_401434:

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 401434	 Bytes: 4
  %loadMem_401434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401434 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401434)
  store %struct.Memory* %call_401434, %struct.Memory** %MEMORY

  ; Code: movslq -0x650(%rbp,%rax,4), %rax	 RIP: 401438	 Bytes: 8
  %loadMem_401438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401438 = call %struct.Memory* @routine_movslq_MINUS0x650__rbp__rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401438)
  store %struct.Memory* %call_401438, %struct.Memory** %MEMORY

  ; Code: movl 0x603480(,%rax,4), %ecx	 RIP: 401440	 Bytes: 7
  %loadMem_401440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401440 = call %struct.Memory* @routine_movl_0x603480___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401440)
  store %struct.Memory* %call_401440, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 401447	 Bytes: 4
  %loadMem_401447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401447 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401447)
  store %struct.Memory* %call_401447, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x650(%rbp,%rax,4)	 RIP: 40144b	 Bytes: 7
  %loadMem_40144b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40144b = call %struct.Memory* @routine_movl__ecx__MINUS0x650__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40144b)
  store %struct.Memory* %call_40144b, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 401452	 Bytes: 3
  %loadMem_401452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401452 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401452)
  store %struct.Memory* %call_401452, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401455	 Bytes: 3
  %loadMem_401455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401455 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401455)
  store %struct.Memory* %call_401455, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 401458	 Bytes: 3
  %loadMem_401458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401458 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401458)
  store %struct.Memory* %call_401458, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401221	 RIP: 40145b	 Bytes: 5
  %loadMem_40145b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40145b = call %struct.Memory* @routine_jmpq_.L_401221(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40145b, i64 -570, i64 5)
  store %struct.Memory* %call_40145b, %struct.Memory** %MEMORY

  br label %block_.L_401221

  ; Code: .L_401460:	 RIP: 401460	 Bytes: 0
block_.L_401460:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 401460	 Bytes: 7
  %loadMem_401460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401460 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401460)
  store %struct.Memory* %call_401460, %struct.Memory** %MEMORY

  ; Code: .L_401467:	 RIP: 401467	 Bytes: 0
  br label %block_.L_401467
block_.L_401467:

  ; Code: cmpl $0xff, -0x4(%rbp)	 RIP: 401467	 Bytes: 7
  %loadMem_401467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401467 = call %struct.Memory* @routine_cmpl__0xff__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401467)
  store %struct.Memory* %call_401467, %struct.Memory** %MEMORY

  ; Code: jge .L_4014da	 RIP: 40146e	 Bytes: 6
  %loadMem_40146e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40146e = call %struct.Memory* @routine_jge_.L_4014da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40146e, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_40146e, %struct.Memory** %MEMORY

  %loadBr_40146e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40146e = icmp eq i8 %loadBr_40146e, 1
  br i1 %cmpBr_40146e, label %block_.L_4014da, label %block_401474

block_401474:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 401474	 Bytes: 4
  %loadMem_401474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401474 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401474)
  store %struct.Memory* %call_401474, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xa50(%rbp,%rax,4)	 RIP: 401478	 Bytes: 11
  %loadMem_401478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401478 = call %struct.Memory* @routine_movl__0x0__MINUS0xa50__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401478)
  store %struct.Memory* %call_401478, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 401483	 Bytes: 4
  %loadMem_401483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401483 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401483)
  store %struct.Memory* %call_401483, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, 0x603080(,%rax,4)	 RIP: 401487	 Bytes: 8
  %loadMem_401487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401487 = call %struct.Memory* @routine_cmpl__0xffffffff__0x603080___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401487)
  store %struct.Memory* %call_401487, %struct.Memory** %MEMORY

  ; Code: je .L_4014b8	 RIP: 40148f	 Bytes: 6
  %loadMem_40148f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40148f = call %struct.Memory* @routine_je_.L_4014b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40148f, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_40148f, %struct.Memory** %MEMORY

  %loadBr_40148f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40148f = icmp eq i8 %loadBr_40148f, 1
  br i1 %cmpBr_40148f, label %block_.L_4014b8, label %block_401495

block_401495:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 401495	 Bytes: 4
  %loadMem_401495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401495 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401495)
  store %struct.Memory* %call_401495, %struct.Memory** %MEMORY

  ; Code: movslq 0x603080(,%rax,4), %rax	 RIP: 401499	 Bytes: 8
  %loadMem_401499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401499 = call %struct.Memory* @routine_movslq_0x603080___rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401499)
  store %struct.Memory* %call_401499, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rax,4), %ecx	 RIP: 4014a1	 Bytes: 7
  %loadMem_4014a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a1 = call %struct.Memory* @routine_movl_0x603880___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a1)
  store %struct.Memory* %call_4014a1, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4014a8	 Bytes: 4
  %loadMem_4014a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014a8 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014a8)
  store %struct.Memory* %call_4014a8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x603080(,%rax,4)	 RIP: 4014ac	 Bytes: 7
  %loadMem_4014ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ac = call %struct.Memory* @routine_movl__ecx__0x603080___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ac)
  store %struct.Memory* %call_4014ac, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4014c7	 RIP: 4014b3	 Bytes: 5
  %loadMem_4014b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b3 = call %struct.Memory* @routine_jmpq_.L_4014c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b3, i64 20, i64 5)
  store %struct.Memory* %call_4014b3, %struct.Memory** %MEMORY

  br label %block_.L_4014c7

  ; Code: .L_4014b8:	 RIP: 4014b8	 Bytes: 0
block_.L_4014b8:

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4014b8	 Bytes: 4
  %loadMem_4014b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014b8 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014b8)
  store %struct.Memory* %call_4014b8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x603080(,%rax,4)	 RIP: 4014bc	 Bytes: 11
  %loadMem_4014bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014bc = call %struct.Memory* @routine_movl__0x0__0x603080___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014bc)
  store %struct.Memory* %call_4014bc, %struct.Memory** %MEMORY

  ; Code: .L_4014c7:	 RIP: 4014c7	 Bytes: 0
  br label %block_.L_4014c7
block_.L_4014c7:

  ; Code: jmpq .L_4014cc	 RIP: 4014c7	 Bytes: 5
  %loadMem_4014c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014c7 = call %struct.Memory* @routine_jmpq_.L_4014cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014c7, i64 5, i64 5)
  store %struct.Memory* %call_4014c7, %struct.Memory** %MEMORY

  br label %block_.L_4014cc

  ; Code: .L_4014cc:	 RIP: 4014cc	 Bytes: 0
block_.L_4014cc:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4014cc	 Bytes: 3
  %loadMem_4014cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014cc = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014cc)
  store %struct.Memory* %call_4014cc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4014cf	 Bytes: 3
  %loadMem_4014cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014cf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014cf)
  store %struct.Memory* %call_4014cf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4014d2	 Bytes: 3
  %loadMem_4014d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d2 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d2)
  store %struct.Memory* %call_4014d2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401467	 RIP: 4014d5	 Bytes: 5
  %loadMem_4014d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014d5 = call %struct.Memory* @routine_jmpq_.L_401467(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014d5, i64 -110, i64 5)
  store %struct.Memory* %call_4014d5, %struct.Memory** %MEMORY

  br label %block_.L_401467

  ; Code: .L_4014da:	 RIP: 4014da	 Bytes: 0
block_.L_4014da:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4014da	 Bytes: 7
  %loadMem_4014da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014da = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014da)
  store %struct.Memory* %call_4014da, %struct.Memory** %MEMORY

  ; Code: .L_4014e1:	 RIP: 4014e1	 Bytes: 0
  br label %block_.L_4014e1
block_.L_4014e1:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4014e1	 Bytes: 3
  %loadMem_4014e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e1)
  store %struct.Memory* %call_4014e1, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4014e4	 Bytes: 4
  %loadMem_4014e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e4 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e4)
  store %struct.Memory* %call_4014e4, %struct.Memory** %MEMORY

  ; Code: cmpl -0x530(%rbp,%rcx,4), %eax	 RIP: 4014e8	 Bytes: 7
  %loadMem_4014e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014e8 = call %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014e8)
  store %struct.Memory* %call_4014e8, %struct.Memory** %MEMORY

  ; Code: jge .L_40170e	 RIP: 4014ef	 Bytes: 6
  %loadMem_4014ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014ef = call %struct.Memory* @routine_jge_.L_40170e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014ef, i8* %BRANCH_TAKEN, i64 543, i64 6, i64 6)
  store %struct.Memory* %call_4014ef, %struct.Memory** %MEMORY

  %loadBr_4014ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4014ef = icmp eq i8 %loadBr_4014ef, 1
  br i1 %cmpBr_4014ef, label %block_.L_40170e, label %block_4014f5

block_4014f5:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4014f5	 Bytes: 4
  %loadMem_4014f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f5 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f5)
  store %struct.Memory* %call_4014f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x620(%rbp,%rax,4), %rax	 RIP: 4014f9	 Bytes: 8
  %loadMem_4014f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4014f9 = call %struct.Memory* @routine_movslq_MINUS0x620__rbp__rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4014f9)
  store %struct.Memory* %call_4014f9, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0xa50(%rbp,%rax,4)	 RIP: 401501	 Bytes: 11
  %loadMem_401501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401501 = call %struct.Memory* @routine_movl__0x1__MINUS0xa50__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401501)
  store %struct.Memory* %call_401501, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x8(%rbp)	 RIP: 40150c	 Bytes: 7
  %loadMem_40150c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40150c = call %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40150c)
  store %struct.Memory* %call_40150c, %struct.Memory** %MEMORY

  ; Code: .L_401513:	 RIP: 401513	 Bytes: 0
  br label %block_.L_401513
block_.L_401513:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 401513	 Bytes: 3
  %loadMem_401513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401513 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401513)
  store %struct.Memory* %call_401513, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 401516	 Bytes: 4
  %loadMem_401516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401516 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401516)
  store %struct.Memory* %call_401516, %struct.Memory** %MEMORY

  ; Code: cmpl -0x530(%rbp,%rcx,4), %eax	 RIP: 40151a	 Bytes: 7
  %loadMem_40151a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40151a = call %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40151a)
  store %struct.Memory* %call_40151a, %struct.Memory** %MEMORY

  ; Code: jg .L_4015a2	 RIP: 401521	 Bytes: 6
  %loadMem_401521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401521 = call %struct.Memory* @routine_jg_.L_4015a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401521, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_401521, %struct.Memory** %MEMORY

  %loadBr_401521 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401521 = icmp eq i8 %loadBr_401521, 1
  br i1 %cmpBr_401521, label %block_.L_4015a2, label %block_401527

block_401527:
  ; Code: movslq -0x8(%rbp), %rax	 RIP: 401527	 Bytes: 4
  %loadMem_401527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401527 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401527)
  store %struct.Memory* %call_401527, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, -0x650(%rbp,%rax,4)	 RIP: 40152b	 Bytes: 8
  %loadMem_40152b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40152b = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x650__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40152b)
  store %struct.Memory* %call_40152b, %struct.Memory** %MEMORY

  ; Code: je .L_40158f	 RIP: 401533	 Bytes: 6
  %loadMem_401533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401533 = call %struct.Memory* @routine_je_.L_40158f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401533, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_401533, %struct.Memory** %MEMORY

  %loadBr_401533 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401533 = icmp eq i8 %loadBr_401533, 1
  br i1 %cmpBr_401533, label %block_.L_40158f, label %block_401539

block_401539:
  ; Code: movl $0xff, %eax	 RIP: 401539	 Bytes: 5
  %loadMem_401539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401539 = call %struct.Memory* @routine_movl__0xff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401539)
  store %struct.Memory* %call_401539, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40153e	 Bytes: 4
  %loadMem_40153e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40153e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40153e)
  store %struct.Memory* %call_40153e, %struct.Memory** %MEMORY

  ; Code: movl -0x650(%rbp,%rcx,4), %edx	 RIP: 401542	 Bytes: 7
  %loadMem_401542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401542 = call %struct.Memory* @routine_movl_MINUS0x650__rbp__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401542)
  store %struct.Memory* %call_401542, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 401549	 Bytes: 3
  %loadMem_401549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401549 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401549)
  store %struct.Memory* %call_401549, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 40154c	 Bytes: 4
  %loadMem_40154c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40154c = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40154c)
  store %struct.Memory* %call_40154c, %struct.Memory** %MEMORY

  ; Code: imull -0x600(%rbp,%rcx,4), %esi	 RIP: 401550	 Bytes: 8
  %loadMem_401550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401550 = call %struct.Memory* @routine_imull_MINUS0x600__rbp__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401550)
  store %struct.Memory* %call_401550, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 401558	 Bytes: 2
  %loadMem_401558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401558 = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401558)
  store %struct.Memory* %call_401558, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xaa4(%rbp)	 RIP: 40155a	 Bytes: 6
  %loadMem_40155a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40155a = call %struct.Memory* @routine_movl__eax__MINUS0xaa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40155a)
  store %struct.Memory* %call_40155a, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 401560	 Bytes: 2
  %loadMem_401560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401560 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401560)
  store %struct.Memory* %call_401560, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 401562	 Bytes: 1
  %loadMem_401562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401562 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401562)
  store %struct.Memory* %call_401562, %struct.Memory** %MEMORY

  ; Code: movl -0xaa4(%rbp), %esi	 RIP: 401563	 Bytes: 6
  %loadMem_401563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401563 = call %struct.Memory* @routine_movl_MINUS0xaa4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401563)
  store %struct.Memory* %call_401563, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 401569	 Bytes: 2
  %loadMem_401569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401569 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401569)
  store %struct.Memory* %call_401569, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40156b	 Bytes: 3
  %loadMem_40156b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156b = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156b)
  store %struct.Memory* %call_40156b, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rcx,4), %edx	 RIP: 40156e	 Bytes: 7
  %loadMem_40156e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40156e = call %struct.Memory* @routine_movl_0x603880___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40156e)
  store %struct.Memory* %call_40156e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 401575	 Bytes: 4
  %loadMem_401575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401575 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401575)
  store %struct.Memory* %call_401575, %struct.Memory** %MEMORY

  ; Code: movslq -0x620(%rbp,%rcx,4), %rcx	 RIP: 401579	 Bytes: 8
  %loadMem_401579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401579 = call %struct.Memory* @routine_movslq_MINUS0x620__rbp__rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401579)
  store %struct.Memory* %call_401579, %struct.Memory** %MEMORY

  ; Code: xorl -0xa50(%rbp,%rcx,4), %edx	 RIP: 401581	 Bytes: 7
  %loadMem_401581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401581 = call %struct.Memory* @routine_xorl_MINUS0xa50__rbp__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401581)
  store %struct.Memory* %call_401581, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xa50(%rbp,%rcx,4)	 RIP: 401588	 Bytes: 7
  %loadMem_401588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401588 = call %struct.Memory* @routine_movl__edx__MINUS0xa50__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401588)
  store %struct.Memory* %call_401588, %struct.Memory** %MEMORY

  ; Code: .L_40158f:	 RIP: 40158f	 Bytes: 0
  br label %block_.L_40158f
block_.L_40158f:

  ; Code: jmpq .L_401594	 RIP: 40158f	 Bytes: 5
  %loadMem_40158f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40158f = call %struct.Memory* @routine_jmpq_.L_401594(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40158f, i64 5, i64 5)
  store %struct.Memory* %call_40158f, %struct.Memory** %MEMORY

  br label %block_.L_401594

  ; Code: .L_401594:	 RIP: 401594	 Bytes: 0
block_.L_401594:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 401594	 Bytes: 3
  %loadMem_401594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401594 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401594)
  store %struct.Memory* %call_401594, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401597	 Bytes: 3
  %loadMem_401597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401597 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401597)
  store %struct.Memory* %call_401597, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 40159a	 Bytes: 3
  %loadMem_40159a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159a = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159a)
  store %struct.Memory* %call_40159a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401513	 RIP: 40159d	 Bytes: 5
  %loadMem_40159d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40159d = call %struct.Memory* @routine_jmpq_.L_401513(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40159d, i64 -138, i64 5)
  store %struct.Memory* %call_40159d, %struct.Memory** %MEMORY

  br label %block_.L_401513

  ; Code: .L_4015a2:	 RIP: 4015a2	 Bytes: 0
block_.L_4015a2:

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4015a2	 Bytes: 4
  %loadMem_4015a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a2 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a2)
  store %struct.Memory* %call_4015a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x620(%rbp,%rax,4), %rax	 RIP: 4015a6	 Bytes: 8
  %loadMem_4015a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015a6 = call %struct.Memory* @routine_movslq_MINUS0x620__rbp__rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015a6)
  store %struct.Memory* %call_4015a6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0xa50(%rbp,%rax,4)	 RIP: 4015ae	 Bytes: 8
  %loadMem_4015ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ae = call %struct.Memory* @routine_cmpl__0x0__MINUS0xa50__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ae)
  store %struct.Memory* %call_4015ae, %struct.Memory** %MEMORY

  ; Code: je .L_4016fb	 RIP: 4015b6	 Bytes: 6
  %loadMem_4015b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015b6 = call %struct.Memory* @routine_je_.L_4016fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015b6, i8* %BRANCH_TAKEN, i64 325, i64 6, i64 6)
  store %struct.Memory* %call_4015b6, %struct.Memory** %MEMORY

  %loadBr_4015b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4015b6 = icmp eq i8 %loadBr_4015b6, 1
  br i1 %cmpBr_4015b6, label %block_.L_4016fb, label %block_4015bc

block_4015bc:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4015bc	 Bytes: 4
  %loadMem_4015bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015bc = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015bc)
  store %struct.Memory* %call_4015bc, %struct.Memory** %MEMORY

  ; Code: movslq -0x620(%rbp,%rax,4), %rax	 RIP: 4015c0	 Bytes: 8
  %loadMem_4015c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c0 = call %struct.Memory* @routine_movslq_MINUS0x620__rbp__rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c0)
  store %struct.Memory* %call_4015c0, %struct.Memory** %MEMORY

  ; Code: movslq -0xa50(%rbp,%rax,4), %rax	 RIP: 4015c8	 Bytes: 8
  %loadMem_4015c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015c8 = call %struct.Memory* @routine_movslq_MINUS0xa50__rbp__rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015c8)
  store %struct.Memory* %call_4015c8, %struct.Memory** %MEMORY

  ; Code: movl 0x603480(,%rax,4), %ecx	 RIP: 4015d0	 Bytes: 7
  %loadMem_4015d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d0 = call %struct.Memory* @routine_movl_0x603480___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d0)
  store %struct.Memory* %call_4015d0, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4015d7	 Bytes: 4
  %loadMem_4015d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015d7 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015d7)
  store %struct.Memory* %call_4015d7, %struct.Memory** %MEMORY

  ; Code: movslq -0x620(%rbp,%rax,4), %rax	 RIP: 4015db	 Bytes: 8
  %loadMem_4015db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015db = call %struct.Memory* @routine_movslq_MINUS0x620__rbp__rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015db)
  store %struct.Memory* %call_4015db, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xa50(%rbp,%rax,4)	 RIP: 4015e3	 Bytes: 7
  %loadMem_4015e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015e3 = call %struct.Memory* @routine_movl__ecx__MINUS0xa50__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015e3)
  store %struct.Memory* %call_4015e3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 4015ea	 Bytes: 7
  %loadMem_4015ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ea = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ea)
  store %struct.Memory* %call_4015ea, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4015f1	 Bytes: 7
  %loadMem_4015f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f1 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f1)
  store %struct.Memory* %call_4015f1, %struct.Memory** %MEMORY

  ; Code: .L_4015f8:	 RIP: 4015f8	 Bytes: 0
  br label %block_.L_4015f8
block_.L_4015f8:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4015f8	 Bytes: 3
  %loadMem_4015f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015f8 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015f8)
  store %struct.Memory* %call_4015f8, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4015fb	 Bytes: 4
  %loadMem_4015fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015fb = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015fb)
  store %struct.Memory* %call_4015fb, %struct.Memory** %MEMORY

  ; Code: cmpl -0x530(%rbp,%rcx,4), %eax	 RIP: 4015ff	 Bytes: 7
  %loadMem_4015ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4015ff = call %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4015ff)
  store %struct.Memory* %call_4015ff, %struct.Memory** %MEMORY

  ; Code: jge .L_401674	 RIP: 401606	 Bytes: 6
  %loadMem_401606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401606 = call %struct.Memory* @routine_jge_.L_401674(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401606, i8* %BRANCH_TAKEN, i64 110, i64 6, i64 6)
  store %struct.Memory* %call_401606, %struct.Memory** %MEMORY

  %loadBr_401606 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401606 = icmp eq i8 %loadBr_401606, 1
  br i1 %cmpBr_401606, label %block_.L_401674, label %block_40160c

block_40160c:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 40160c	 Bytes: 3
  %loadMem_40160c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160c)
  store %struct.Memory* %call_40160c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 40160f	 Bytes: 3
  %loadMem_40160f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40160f = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40160f)
  store %struct.Memory* %call_40160f, %struct.Memory** %MEMORY

  ; Code: je .L_401661	 RIP: 401612	 Bytes: 6
  %loadMem_401612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401612 = call %struct.Memory* @routine_je_.L_401661(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401612, i8* %BRANCH_TAKEN, i64 79, i64 6, i64 6)
  store %struct.Memory* %call_401612, %struct.Memory** %MEMORY

  %loadBr_401612 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401612 = icmp eq i8 %loadBr_401612, 1
  br i1 %cmpBr_401612, label %block_.L_401661, label %block_401618

block_401618:
  ; Code: movl $0xff, %eax	 RIP: 401618	 Bytes: 5
  %loadMem_401618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401618 = call %struct.Memory* @routine_movl__0xff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401618)
  store %struct.Memory* %call_401618, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40161d	 Bytes: 4
  %loadMem_40161d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40161d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40161d)
  store %struct.Memory* %call_40161d, %struct.Memory** %MEMORY

  ; Code: movl -0x620(%rbp,%rcx,4), %edx	 RIP: 401621	 Bytes: 7
  %loadMem_401621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401621 = call %struct.Memory* @routine_movl_MINUS0x620__rbp__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401621)
  store %struct.Memory* %call_401621, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 401628	 Bytes: 4
  %loadMem_401628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401628 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401628)
  store %struct.Memory* %call_401628, %struct.Memory** %MEMORY

  ; Code: addl -0x600(%rbp,%rcx,4), %edx	 RIP: 40162c	 Bytes: 7
  %loadMem_40162c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40162c = call %struct.Memory* @routine_addl_MINUS0x600__rbp__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40162c)
  store %struct.Memory* %call_40162c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xaa8(%rbp)	 RIP: 401633	 Bytes: 6
  %loadMem_401633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401633 = call %struct.Memory* @routine_movl__eax__MINUS0xaa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401633)
  store %struct.Memory* %call_401633, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 401639	 Bytes: 2
  %loadMem_401639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401639 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401639)
  store %struct.Memory* %call_401639, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 40163b	 Bytes: 1
  %loadMem_40163b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163b = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163b)
  store %struct.Memory* %call_40163b, %struct.Memory** %MEMORY

  ; Code: movl -0xaa8(%rbp), %esi	 RIP: 40163c	 Bytes: 6
  %loadMem_40163c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40163c = call %struct.Memory* @routine_movl_MINUS0xaa8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40163c)
  store %struct.Memory* %call_40163c, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 401642	 Bytes: 2
  %loadMem_401642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401642 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401642)
  store %struct.Memory* %call_401642, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401644	 Bytes: 3
  %loadMem_401644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401644 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401644)
  store %struct.Memory* %call_401644, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rcx,4), %edx	 RIP: 401647	 Bytes: 7
  %loadMem_401647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401647 = call %struct.Memory* @routine_movl_0x603880___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401647)
  store %struct.Memory* %call_401647, %struct.Memory** %MEMORY

  ; Code: xorl $0x1, %edx	 RIP: 40164e	 Bytes: 3
  %loadMem_40164e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40164e = call %struct.Memory* @routine_xorl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40164e)
  store %struct.Memory* %call_40164e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 401651	 Bytes: 3
  %loadMem_401651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401651 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401651)
  store %struct.Memory* %call_401651, %struct.Memory** %MEMORY

  ; Code: movl 0x603480(,%rcx,4), %edx	 RIP: 401654	 Bytes: 7
  %loadMem_401654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401654 = call %struct.Memory* @routine_movl_0x603480___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401654)
  store %struct.Memory* %call_401654, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %edx	 RIP: 40165b	 Bytes: 3
  %loadMem_40165b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165b = call %struct.Memory* @routine_addl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165b)
  store %struct.Memory* %call_40165b, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x10(%rbp)	 RIP: 40165e	 Bytes: 3
  %loadMem_40165e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40165e = call %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40165e)
  store %struct.Memory* %call_40165e, %struct.Memory** %MEMORY

  ; Code: .L_401661:	 RIP: 401661	 Bytes: 0
  br label %block_.L_401661
block_.L_401661:

  ; Code: jmpq .L_401666	 RIP: 401661	 Bytes: 5
  %loadMem_401661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401661 = call %struct.Memory* @routine_jmpq_.L_401666(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401661, i64 5, i64 5)
  store %struct.Memory* %call_401661, %struct.Memory** %MEMORY

  br label %block_.L_401666

  ; Code: .L_401666:	 RIP: 401666	 Bytes: 0
block_.L_401666:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 401666	 Bytes: 3
  %loadMem_401666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401666 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401666)
  store %struct.Memory* %call_401666, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401669	 Bytes: 3
  %loadMem_401669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401669 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401669)
  store %struct.Memory* %call_401669, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 40166c	 Bytes: 3
  %loadMem_40166c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166c = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166c)
  store %struct.Memory* %call_40166c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4015f8	 RIP: 40166f	 Bytes: 5
  %loadMem_40166f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40166f = call %struct.Memory* @routine_jmpq_.L_4015f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40166f, i64 -119, i64 5)
  store %struct.Memory* %call_40166f, %struct.Memory** %MEMORY

  br label %block_.L_4015f8

  ; Code: .L_401674:	 RIP: 401674	 Bytes: 0
block_.L_401674:

  ; Code: movl $0xff, %eax	 RIP: 401674	 Bytes: 5
  %loadMem_401674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401674 = call %struct.Memory* @routine_movl__0xff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401674)
  store %struct.Memory* %call_401674, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 401679	 Bytes: 3
  %loadMem_401679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401679 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401679)
  store %struct.Memory* %call_401679, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xaac(%rbp)	 RIP: 40167c	 Bytes: 6
  %loadMem_40167c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40167c = call %struct.Memory* @routine_movl__eax__MINUS0xaac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40167c)
  store %struct.Memory* %call_40167c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 401682	 Bytes: 2
  %loadMem_401682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401682 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401682)
  store %struct.Memory* %call_401682, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 401684	 Bytes: 1
  %loadMem_401684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401684 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401684)
  store %struct.Memory* %call_401684, %struct.Memory** %MEMORY

  ; Code: movl -0xaac(%rbp), %ecx	 RIP: 401685	 Bytes: 6
  %loadMem_401685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401685 = call %struct.Memory* @routine_movl_MINUS0xaac__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401685)
  store %struct.Memory* %call_401685, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 40168b	 Bytes: 2
  %loadMem_40168b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168b = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168b)
  store %struct.Memory* %call_40168b, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x10(%rbp)	 RIP: 40168d	 Bytes: 3
  %loadMem_40168d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40168d = call %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40168d)
  store %struct.Memory* %call_40168d, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 401690	 Bytes: 4
  %loadMem_401690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401690 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401690)
  store %struct.Memory* %call_401690, %struct.Memory** %MEMORY

  ; Code: movslq -0x620(%rbp,%rsi,4), %rsi	 RIP: 401694	 Bytes: 8
  %loadMem_401694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401694 = call %struct.Memory* @routine_movslq_MINUS0x620__rbp__rsi_4____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401694)
  store %struct.Memory* %call_401694, %struct.Memory** %MEMORY

  ; Code: movl -0xa50(%rbp,%rsi,4), %edx	 RIP: 40169c	 Bytes: 7
  %loadMem_40169c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40169c = call %struct.Memory* @routine_movl_MINUS0xa50__rbp__rsi_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40169c)
  store %struct.Memory* %call_40169c, %struct.Memory** %MEMORY

  ; Code: subl -0x10(%rbp), %edx	 RIP: 4016a3	 Bytes: 3
  %loadMem_4016a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a3 = call %struct.Memory* @routine_subl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a3)
  store %struct.Memory* %call_4016a3, %struct.Memory** %MEMORY

  ; Code: addl $0xff, %edx	 RIP: 4016a6	 Bytes: 6
  %loadMem_4016a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016a6 = call %struct.Memory* @routine_addl__0xff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016a6)
  store %struct.Memory* %call_4016a6, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 4016ac	 Bytes: 2
  %loadMem_4016ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ac = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ac)
  store %struct.Memory* %call_4016ac, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4016ae	 Bytes: 1
  %loadMem_4016ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ae = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ae)
  store %struct.Memory* %call_4016ae, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4016af	 Bytes: 2
  %loadMem_4016af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016af = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016af)
  store %struct.Memory* %call_4016af, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 4016b1	 Bytes: 3
  %loadMem_4016b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b1 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b1)
  store %struct.Memory* %call_4016b1, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rsi,4), %edx	 RIP: 4016b4	 Bytes: 7
  %loadMem_4016b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016b4 = call %struct.Memory* @routine_movl_0x603880___rsi_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016b4)
  store %struct.Memory* %call_4016b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 4016bb	 Bytes: 4
  %loadMem_4016bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016bb = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016bb)
  store %struct.Memory* %call_4016bb, %struct.Memory** %MEMORY

  ; Code: movslq -0x620(%rbp,%rsi,4), %rsi	 RIP: 4016bf	 Bytes: 8
  %loadMem_4016bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016bf = call %struct.Memory* @routine_movslq_MINUS0x620__rbp__rsi_4____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016bf)
  store %struct.Memory* %call_4016bf, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xa50(%rbp,%rsi,4)	 RIP: 4016c7	 Bytes: 7
  %loadMem_4016c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016c7 = call %struct.Memory* @routine_movl__edx__MINUS0xa50__rbp__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016c7)
  store %struct.Memory* %call_4016c7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 4016ce	 Bytes: 4
  %loadMem_4016ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ce = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ce)
  store %struct.Memory* %call_4016ce, %struct.Memory** %MEMORY

  ; Code: movslq -0x620(%rbp,%rsi,4), %rsi	 RIP: 4016d2	 Bytes: 8
  %loadMem_4016d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016d2 = call %struct.Memory* @routine_movslq_MINUS0x620__rbp__rsi_4____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016d2)
  store %struct.Memory* %call_4016d2, %struct.Memory** %MEMORY

  ; Code: movl -0xa50(%rbp,%rsi,4), %edx	 RIP: 4016da	 Bytes: 7
  %loadMem_4016da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016da = call %struct.Memory* @routine_movl_MINUS0xa50__rbp__rsi_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016da)
  store %struct.Memory* %call_4016da, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 4016e1	 Bytes: 4
  %loadMem_4016e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e1 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e1)
  store %struct.Memory* %call_4016e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x620(%rbp,%rsi,4), %rsi	 RIP: 4016e5	 Bytes: 8
  %loadMem_4016e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016e5 = call %struct.Memory* @routine_movslq_MINUS0x620__rbp__rsi_4____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016e5)
  store %struct.Memory* %call_4016e5, %struct.Memory** %MEMORY

  ; Code: xorl 0x603080(,%rsi,4), %edx	 RIP: 4016ed	 Bytes: 7
  %loadMem_4016ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016ed = call %struct.Memory* @routine_xorl_0x603080___rsi_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016ed)
  store %struct.Memory* %call_4016ed, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x603080(,%rsi,4)	 RIP: 4016f4	 Bytes: 7
  %loadMem_4016f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016f4 = call %struct.Memory* @routine_movl__edx__0x603080___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016f4)
  store %struct.Memory* %call_4016f4, %struct.Memory** %MEMORY

  ; Code: .L_4016fb:	 RIP: 4016fb	 Bytes: 0
  br label %block_.L_4016fb
block_.L_4016fb:

  ; Code: jmpq .L_401700	 RIP: 4016fb	 Bytes: 5
  %loadMem_4016fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4016fb = call %struct.Memory* @routine_jmpq_.L_401700(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4016fb, i64 5, i64 5)
  store %struct.Memory* %call_4016fb, %struct.Memory** %MEMORY

  br label %block_.L_401700

  ; Code: .L_401700:	 RIP: 401700	 Bytes: 0
block_.L_401700:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 401700	 Bytes: 3
  %loadMem_401700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401700 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401700)
  store %struct.Memory* %call_401700, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401703	 Bytes: 3
  %loadMem_401703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401703 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401703)
  store %struct.Memory* %call_401703, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 401706	 Bytes: 3
  %loadMem_401706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401706 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401706)
  store %struct.Memory* %call_401706, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4014e1	 RIP: 401709	 Bytes: 5
  %loadMem_401709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401709 = call %struct.Memory* @routine_jmpq_.L_4014e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401709, i64 -552, i64 5)
  store %struct.Memory* %call_401709, %struct.Memory** %MEMORY

  br label %block_.L_4014e1

  ; Code: .L_40170e:	 RIP: 40170e	 Bytes: 0
block_.L_40170e:

  ; Code: jmpq .L_401783	 RIP: 40170e	 Bytes: 5
  %loadMem_40170e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40170e = call %struct.Memory* @routine_jmpq_.L_401783(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40170e, i64 117, i64 5)
  store %struct.Memory* %call_40170e, %struct.Memory** %MEMORY

  br label %block_.L_401783

  ; Code: .L_401713:	 RIP: 401713	 Bytes: 0
block_.L_401713:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 401713	 Bytes: 7
  %loadMem_401713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401713 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401713)
  store %struct.Memory* %call_401713, %struct.Memory** %MEMORY

  ; Code: .L_40171a:	 RIP: 40171a	 Bytes: 0
  br label %block_.L_40171a
block_.L_40171a:

  ; Code: cmpl $0xff, -0x4(%rbp)	 RIP: 40171a	 Bytes: 7
  %loadMem_40171a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40171a = call %struct.Memory* @routine_cmpl__0xff__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40171a)
  store %struct.Memory* %call_40171a, %struct.Memory** %MEMORY

  ; Code: jge .L_40177e	 RIP: 401721	 Bytes: 6
  %loadMem_401721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401721 = call %struct.Memory* @routine_jge_.L_40177e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401721, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_401721, %struct.Memory** %MEMORY

  %loadBr_401721 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401721 = icmp eq i8 %loadBr_401721, 1
  br i1 %cmpBr_401721, label %block_.L_40177e, label %block_401727

block_401727:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 401727	 Bytes: 4
  %loadMem_401727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401727 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401727)
  store %struct.Memory* %call_401727, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, 0x603080(,%rax,4)	 RIP: 40172b	 Bytes: 8
  %loadMem_40172b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40172b = call %struct.Memory* @routine_cmpl__0xffffffff__0x603080___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40172b)
  store %struct.Memory* %call_40172b, %struct.Memory** %MEMORY

  ; Code: je .L_40175c	 RIP: 401733	 Bytes: 6
  %loadMem_401733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401733 = call %struct.Memory* @routine_je_.L_40175c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401733, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_401733, %struct.Memory** %MEMORY

  %loadBr_401733 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401733 = icmp eq i8 %loadBr_401733, 1
  br i1 %cmpBr_401733, label %block_.L_40175c, label %block_401739

block_401739:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 401739	 Bytes: 4
  %loadMem_401739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401739 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401739)
  store %struct.Memory* %call_401739, %struct.Memory** %MEMORY

  ; Code: movslq 0x603080(,%rax,4), %rax	 RIP: 40173d	 Bytes: 8
  %loadMem_40173d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40173d = call %struct.Memory* @routine_movslq_0x603080___rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40173d)
  store %struct.Memory* %call_40173d, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rax,4), %ecx	 RIP: 401745	 Bytes: 7
  %loadMem_401745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401745 = call %struct.Memory* @routine_movl_0x603880___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401745)
  store %struct.Memory* %call_401745, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 40174c	 Bytes: 4
  %loadMem_40174c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40174c = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40174c)
  store %struct.Memory* %call_40174c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x603080(,%rax,4)	 RIP: 401750	 Bytes: 7
  %loadMem_401750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401750 = call %struct.Memory* @routine_movl__ecx__0x603080___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401750)
  store %struct.Memory* %call_401750, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40176b	 RIP: 401757	 Bytes: 5
  %loadMem_401757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401757 = call %struct.Memory* @routine_jmpq_.L_40176b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401757, i64 20, i64 5)
  store %struct.Memory* %call_401757, %struct.Memory** %MEMORY

  br label %block_.L_40176b

  ; Code: .L_40175c:	 RIP: 40175c	 Bytes: 0
block_.L_40175c:

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 40175c	 Bytes: 4
  %loadMem_40175c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40175c = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40175c)
  store %struct.Memory* %call_40175c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x603080(,%rax,4)	 RIP: 401760	 Bytes: 11
  %loadMem_401760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401760 = call %struct.Memory* @routine_movl__0x0__0x603080___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401760)
  store %struct.Memory* %call_401760, %struct.Memory** %MEMORY

  ; Code: .L_40176b:	 RIP: 40176b	 Bytes: 0
  br label %block_.L_40176b
block_.L_40176b:

  ; Code: jmpq .L_401770	 RIP: 40176b	 Bytes: 5
  %loadMem_40176b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40176b = call %struct.Memory* @routine_jmpq_.L_401770(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40176b, i64 5, i64 5)
  store %struct.Memory* %call_40176b, %struct.Memory** %MEMORY

  br label %block_.L_401770

  ; Code: .L_401770:	 RIP: 401770	 Bytes: 0
block_.L_401770:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 401770	 Bytes: 3
  %loadMem_401770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401770 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401770)
  store %struct.Memory* %call_401770, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401773	 Bytes: 3
  %loadMem_401773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401773 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401773)
  store %struct.Memory* %call_401773, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 401776	 Bytes: 3
  %loadMem_401776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401776 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401776)
  store %struct.Memory* %call_401776, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40171a	 RIP: 401779	 Bytes: 5
  %loadMem_401779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401779 = call %struct.Memory* @routine_jmpq_.L_40171a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401779, i64 -95, i64 5)
  store %struct.Memory* %call_401779, %struct.Memory** %MEMORY

  br label %block_.L_40171a

  ; Code: .L_40177e:	 RIP: 40177e	 Bytes: 0
block_.L_40177e:

  ; Code: jmpq .L_401783	 RIP: 40177e	 Bytes: 5
  %loadMem_40177e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40177e = call %struct.Memory* @routine_jmpq_.L_401783(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40177e, i64 5, i64 5)
  store %struct.Memory* %call_40177e, %struct.Memory** %MEMORY

  br label %block_.L_401783

  ; Code: .L_401783:	 RIP: 401783	 Bytes: 0
block_.L_401783:

  ; Code: jmpq .L_4017f8	 RIP: 401783	 Bytes: 5
  %loadMem_401783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401783 = call %struct.Memory* @routine_jmpq_.L_4017f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401783, i64 117, i64 5)
  store %struct.Memory* %call_401783, %struct.Memory** %MEMORY

  br label %block_.L_4017f8

  ; Code: .L_401788:	 RIP: 401788	 Bytes: 0
block_.L_401788:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 401788	 Bytes: 7
  %loadMem_401788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401788 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401788)
  store %struct.Memory* %call_401788, %struct.Memory** %MEMORY

  ; Code: .L_40178f:	 RIP: 40178f	 Bytes: 0
  br label %block_.L_40178f
block_.L_40178f:

  ; Code: cmpl $0xff, -0x4(%rbp)	 RIP: 40178f	 Bytes: 7
  %loadMem_40178f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40178f = call %struct.Memory* @routine_cmpl__0xff__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40178f)
  store %struct.Memory* %call_40178f, %struct.Memory** %MEMORY

  ; Code: jge .L_4017f3	 RIP: 401796	 Bytes: 6
  %loadMem_401796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401796 = call %struct.Memory* @routine_jge_.L_4017f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401796, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_401796, %struct.Memory** %MEMORY

  %loadBr_401796 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401796 = icmp eq i8 %loadBr_401796, 1
  br i1 %cmpBr_401796, label %block_.L_4017f3, label %block_40179c

block_40179c:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 40179c	 Bytes: 4
  %loadMem_40179c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40179c = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40179c)
  store %struct.Memory* %call_40179c, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, 0x603080(,%rax,4)	 RIP: 4017a0	 Bytes: 8
  %loadMem_4017a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a0 = call %struct.Memory* @routine_cmpl__0xffffffff__0x603080___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a0)
  store %struct.Memory* %call_4017a0, %struct.Memory** %MEMORY

  ; Code: je .L_4017d1	 RIP: 4017a8	 Bytes: 6
  %loadMem_4017a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017a8 = call %struct.Memory* @routine_je_.L_4017d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017a8, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_4017a8, %struct.Memory** %MEMORY

  %loadBr_4017a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4017a8 = icmp eq i8 %loadBr_4017a8, 1
  br i1 %cmpBr_4017a8, label %block_.L_4017d1, label %block_4017ae

block_4017ae:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4017ae	 Bytes: 4
  %loadMem_4017ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ae = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ae)
  store %struct.Memory* %call_4017ae, %struct.Memory** %MEMORY

  ; Code: movslq 0x603080(,%rax,4), %rax	 RIP: 4017b2	 Bytes: 8
  %loadMem_4017b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017b2 = call %struct.Memory* @routine_movslq_0x603080___rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017b2)
  store %struct.Memory* %call_4017b2, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rax,4), %ecx	 RIP: 4017ba	 Bytes: 7
  %loadMem_4017ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ba = call %struct.Memory* @routine_movl_0x603880___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ba)
  store %struct.Memory* %call_4017ba, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4017c1	 Bytes: 4
  %loadMem_4017c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c1 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c1)
  store %struct.Memory* %call_4017c1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x603080(,%rax,4)	 RIP: 4017c5	 Bytes: 7
  %loadMem_4017c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017c5 = call %struct.Memory* @routine_movl__ecx__0x603080___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017c5)
  store %struct.Memory* %call_4017c5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4017e0	 RIP: 4017cc	 Bytes: 5
  %loadMem_4017cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017cc = call %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017cc, i64 20, i64 5)
  store %struct.Memory* %call_4017cc, %struct.Memory** %MEMORY

  br label %block_.L_4017e0

  ; Code: .L_4017d1:	 RIP: 4017d1	 Bytes: 0
block_.L_4017d1:

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4017d1	 Bytes: 4
  %loadMem_4017d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d1 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d1)
  store %struct.Memory* %call_4017d1, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x603080(,%rax,4)	 RIP: 4017d5	 Bytes: 11
  %loadMem_4017d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017d5 = call %struct.Memory* @routine_movl__0x0__0x603080___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017d5)
  store %struct.Memory* %call_4017d5, %struct.Memory** %MEMORY

  ; Code: .L_4017e0:	 RIP: 4017e0	 Bytes: 0
  br label %block_.L_4017e0
block_.L_4017e0:

  ; Code: jmpq .L_4017e5	 RIP: 4017e0	 Bytes: 5
  %loadMem_4017e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e0 = call %struct.Memory* @routine_jmpq_.L_4017e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e0, i64 5, i64 5)
  store %struct.Memory* %call_4017e0, %struct.Memory** %MEMORY

  br label %block_.L_4017e5

  ; Code: .L_4017e5:	 RIP: 4017e5	 Bytes: 0
block_.L_4017e5:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4017e5	 Bytes: 3
  %loadMem_4017e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e5 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e5)
  store %struct.Memory* %call_4017e5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4017e8	 Bytes: 3
  %loadMem_4017e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017e8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017e8)
  store %struct.Memory* %call_4017e8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4017eb	 Bytes: 3
  %loadMem_4017eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017eb = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017eb)
  store %struct.Memory* %call_4017eb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40178f	 RIP: 4017ee	 Bytes: 5
  %loadMem_4017ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017ee = call %struct.Memory* @routine_jmpq_.L_40178f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017ee, i64 -95, i64 5)
  store %struct.Memory* %call_4017ee, %struct.Memory** %MEMORY

  br label %block_.L_40178f

  ; Code: .L_4017f3:	 RIP: 4017f3	 Bytes: 0
block_.L_4017f3:

  ; Code: jmpq .L_4017f8	 RIP: 4017f3	 Bytes: 5
  %loadMem_4017f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f3 = call %struct.Memory* @routine_jmpq_.L_4017f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f3, i64 5, i64 5)
  store %struct.Memory* %call_4017f3, %struct.Memory** %MEMORY

  br label %block_.L_4017f8

  ; Code: .L_4017f8:	 RIP: 4017f8	 Bytes: 0
block_.L_4017f8:

  ; Code: jmpq .L_40186d	 RIP: 4017f8	 Bytes: 5
  %loadMem_4017f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017f8 = call %struct.Memory* @routine_jmpq_.L_40186d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017f8, i64 117, i64 5)
  store %struct.Memory* %call_4017f8, %struct.Memory** %MEMORY

  br label %block_.L_40186d

  ; Code: .L_4017fd:	 RIP: 4017fd	 Bytes: 0
block_.L_4017fd:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4017fd	 Bytes: 7
  %loadMem_4017fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4017fd = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4017fd)
  store %struct.Memory* %call_4017fd, %struct.Memory** %MEMORY

  ; Code: .L_401804:	 RIP: 401804	 Bytes: 0
  br label %block_.L_401804
block_.L_401804:

  ; Code: cmpl $0xff, -0x4(%rbp)	 RIP: 401804	 Bytes: 7
  %loadMem_401804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401804 = call %struct.Memory* @routine_cmpl__0xff__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401804)
  store %struct.Memory* %call_401804, %struct.Memory** %MEMORY

  ; Code: jge .L_401868	 RIP: 40180b	 Bytes: 6
  %loadMem_40180b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40180b = call %struct.Memory* @routine_jge_.L_401868(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40180b, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_40180b, %struct.Memory** %MEMORY

  %loadBr_40180b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40180b = icmp eq i8 %loadBr_40180b, 1
  br i1 %cmpBr_40180b, label %block_.L_401868, label %block_401811

block_401811:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 401811	 Bytes: 4
  %loadMem_401811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401811 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401811)
  store %struct.Memory* %call_401811, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, 0x603080(,%rax,4)	 RIP: 401815	 Bytes: 8
  %loadMem_401815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401815 = call %struct.Memory* @routine_cmpl__0xffffffff__0x603080___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401815)
  store %struct.Memory* %call_401815, %struct.Memory** %MEMORY

  ; Code: je .L_401846	 RIP: 40181d	 Bytes: 6
  %loadMem_40181d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40181d = call %struct.Memory* @routine_je_.L_401846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40181d, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_40181d, %struct.Memory** %MEMORY

  %loadBr_40181d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40181d = icmp eq i8 %loadBr_40181d, 1
  br i1 %cmpBr_40181d, label %block_.L_401846, label %block_401823

block_401823:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 401823	 Bytes: 4
  %loadMem_401823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401823 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401823)
  store %struct.Memory* %call_401823, %struct.Memory** %MEMORY

  ; Code: movslq 0x603080(,%rax,4), %rax	 RIP: 401827	 Bytes: 8
  %loadMem_401827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401827 = call %struct.Memory* @routine_movslq_0x603080___rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401827)
  store %struct.Memory* %call_401827, %struct.Memory** %MEMORY

  ; Code: movl 0x603880(,%rax,4), %ecx	 RIP: 40182f	 Bytes: 7
  %loadMem_40182f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40182f = call %struct.Memory* @routine_movl_0x603880___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40182f)
  store %struct.Memory* %call_40182f, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 401836	 Bytes: 4
  %loadMem_401836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401836 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401836)
  store %struct.Memory* %call_401836, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x603080(,%rax,4)	 RIP: 40183a	 Bytes: 7
  %loadMem_40183a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40183a = call %struct.Memory* @routine_movl__ecx__0x603080___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40183a)
  store %struct.Memory* %call_40183a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401855	 RIP: 401841	 Bytes: 5
  %loadMem_401841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401841 = call %struct.Memory* @routine_jmpq_.L_401855(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401841, i64 20, i64 5)
  store %struct.Memory* %call_401841, %struct.Memory** %MEMORY

  br label %block_.L_401855

  ; Code: .L_401846:	 RIP: 401846	 Bytes: 0
block_.L_401846:

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 401846	 Bytes: 4
  %loadMem_401846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401846 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401846)
  store %struct.Memory* %call_401846, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x603080(,%rax,4)	 RIP: 40184a	 Bytes: 11
  %loadMem_40184a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40184a = call %struct.Memory* @routine_movl__0x0__0x603080___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40184a)
  store %struct.Memory* %call_40184a, %struct.Memory** %MEMORY

  ; Code: .L_401855:	 RIP: 401855	 Bytes: 0
  br label %block_.L_401855
block_.L_401855:

  ; Code: jmpq .L_40185a	 RIP: 401855	 Bytes: 5
  %loadMem_401855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401855 = call %struct.Memory* @routine_jmpq_.L_40185a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401855, i64 5, i64 5)
  store %struct.Memory* %call_401855, %struct.Memory** %MEMORY

  br label %block_.L_40185a

  ; Code: .L_40185a:	 RIP: 40185a	 Bytes: 0
block_.L_40185a:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40185a	 Bytes: 3
  %loadMem_40185a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40185a = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40185a)
  store %struct.Memory* %call_40185a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40185d	 Bytes: 3
  %loadMem_40185d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40185d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40185d)
  store %struct.Memory* %call_40185d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 401860	 Bytes: 3
  %loadMem_401860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401860 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401860)
  store %struct.Memory* %call_401860, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401804	 RIP: 401863	 Bytes: 5
  %loadMem_401863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401863 = call %struct.Memory* @routine_jmpq_.L_401804(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401863, i64 -95, i64 5)
  store %struct.Memory* %call_401863, %struct.Memory** %MEMORY

  br label %block_.L_401804

  ; Code: .L_401868:	 RIP: 401868	 Bytes: 0
block_.L_401868:

  ; Code: jmpq .L_40186d	 RIP: 401868	 Bytes: 5
  %loadMem_401868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401868 = call %struct.Memory* @routine_jmpq_.L_40186d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401868, i64 5, i64 5)
  store %struct.Memory* %call_401868, %struct.Memory** %MEMORY

  br label %block_.L_40186d

  ; Code: .L_40186d:	 RIP: 40186d	 Bytes: 0
block_.L_40186d:

  ; Code: addq $0xa30, %rsp	 RIP: 40186d	 Bytes: 7
  %loadMem_40186d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40186d = call %struct.Memory* @routine_addq__0xa30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40186d)
  store %struct.Memory* %call_40186d, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 401874	 Bytes: 1
  %loadMem_401874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401874 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401874)
  store %struct.Memory* %call_401874, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 401875	 Bytes: 1
  %loadMem_401875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401875 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401875)
  store %struct.Memory* %call_401875, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_401875
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64) #0 alwaysinline {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %2, i64* %7
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_pushq__rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_subq__0xa30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 2608)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x5d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = sub i64 %9, 1492
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x5d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = sub i64 %9, 1496
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_cmpl__0x10__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 alwaysinline {
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

define %struct.Memory* @routine_jg_.L_400a46(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x5d0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1488
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_cmpl__0xff__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 255)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 alwaysinline {
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

define %struct.Memory* @routine_jge_.L_4009fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0xffffffff__0x603080___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = add i64 %10, ptrtoint( %G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 -1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 alwaysinline {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = icmp ne i8 %7, 0
  %10 = select i1 %9, i64 %3, i64 %4
  store i64 %10, i64* %8, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_je_.L_4009eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0xff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 255)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x603080___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, ptrtoint( %G_0x603080___rcx_4__type* @G_0x603080___rcx_4_ to i64)
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_imull_MINUS0x8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_addl__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax__MINUS0xa84__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 2692
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L7CDQ_EAXEP6MemoryR5State(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376)) #2 alwaysinline {
  %3 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 1, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = lshr i64 %7, 32
  store i64 %8, i64* %3, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cltd(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl_MINUS0xa84__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 2692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* dereferenceable(3376), i64) #0 alwaysinline {
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

define %struct.Memory* @routine_idivl__esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl_0x603880___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, ptrtoint( %G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = xor i32 %8, %6
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %9, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i32 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %9, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorl_MINUS0x5d0__rbp__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -1488
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__edx__MINUS0x5d0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1488
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 alwaysinline {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4009f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_addl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_jmpq_.L_400986(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x5d0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1488
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_400a1a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x5d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = sub i64 %9, 1496
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rax_4____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1488
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_0x603480___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, ptrtoint( %G_0x603480___rax_4__type* @G_0x603480___rax_4_ to i64)
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__MINUS0x5d0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %18 = add i64 %15, -1488
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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




define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_jmpq_.L_400966(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x5d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = sub i64 %9, 1496
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4017fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x4e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = sub i64 %9, 1248
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x5cc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = sub i64 %12, 1484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x4dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 1244
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x490__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = sub i64 %9, 1168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x1__MINUS0x450__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = sub i64 %9, 1104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jge_.L_400aba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0xffffffff__MINUS0x490__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1168
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 -1)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movl__0x0__MINUS0x450__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1104
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}








define %struct.Memory* @routine_jmpq_.L_400a84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x530__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = sub i64 %9, 1328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x52c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = sub i64 %9, 1324
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0xffffffff__MINUS0x580__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = sub i64 %9, 1408
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x57c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = sub i64 %9, 1404
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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




define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x4e0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %12, -1248
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 -1)
  ret %struct.Memory* %19
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 alwaysinline {
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

define %struct.Memory* @routine_jne_.L_400bb2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x530__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1328
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_addl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movslq__edx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x530__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %18 = add i64 %15, -1328
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %20 = add i64 %17, -1328
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jg_.L_400bad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x490__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = sub i64 %12, 1168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_shlq__0x6___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 6)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_addq__rcx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movslq__edi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__esi____rdx__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = load i64, i64* %RDX
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












define %struct.Memory* @routine_movslq___rdx__rcx_4____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0x603480___rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, ptrtoint( %G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_addq__rcx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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




define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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








define %struct.Memory* @routine_jmpq_.L_400b26(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_400e6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_subl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_xorl__eax___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 alwaysinline {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__al___cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x4e0__rbp__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = load i64, i64* %RDX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1248
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 -1)
  ret %struct.Memory* %19
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl__MINUS0xa85__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 2693
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jne_.L_400be4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6SETNLEI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 alwaysinline {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setg__al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6SETNLEI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %AL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__al__MINUS0xa85__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 2693
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_MINUS0xa85__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 2693
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 alwaysinline {
  %5 = and i64 %3, %2
  %6 = trunc i64 %5 to i8
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %5 to i32
  %9 = and i32 %8, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9) #22
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %6, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %6, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_testb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_400bf7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_400c05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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


define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 -1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_400bbb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 alwaysinline {
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

define %struct.Memory* @routine_jle_.L_400c66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_je_.L_400c52(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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


define %struct.Memory* @routine_movl_MINUS0x580__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1408
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_cmpl_MINUS0x580__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RAX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -1408
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jge_.L_400c52(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_400c57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_jg_.L_400c15(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_400c66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movl_MINUS0x530__rbp__rax_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1328
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_subl_MINUS0x10__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_jle_.L_400caa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jmpq_.L_400ccb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_subl_MINUS0x10__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_jge_.L_400d0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_addl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x6___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 6)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rdx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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


define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl__0x0____rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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








define %struct.Memory* @routine_jmpq_.L_400cd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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




define %struct.Memory* @routine_jg_.L_400dd4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_cmpl__0xffffffff____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 -1)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_400dc1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0xff___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 255)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl_MINUS0x4e0__rbp__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %18 = add i64 %15, -1248
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_addl__0xff___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 255)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_subl_MINUS0x4e0__rbp__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -1248
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %20)
  ret %struct.Memory* %23
}






define %struct.Memory* @routine_movq__rax___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__rdx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl___rdi__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDI
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax__MINUS0xa90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = sub i64 %12, 2704
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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




define %struct.Memory* @routine_idivl__ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movslq__edx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x603880___rdi_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, ptrtoint( %G_0x603880___rdi_4__type* @G_0x603880___rdi_4_ to i64)
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_shlq__0x6___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 6)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0xa90__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 2704
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__rdi___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__ecx____r8__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R8
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ECX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_400dc6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400d13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jg_.L_400e65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






























define %struct.Memory* @routine_xorl___rdx__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


































define %struct.Memory* @routine_jmpq_.L_400ddb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_subl_MINUS0x530__rbp__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -1328
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}








define %struct.Memory* @routine_movl__eax__MINUS0x580__rbp__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %18 = add i64 %15, -1408
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_cmpl__0x10__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_jge_.L_400ffb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movslq__eax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x5d0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %12, -1488
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 -1)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_400edb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rcx_4____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %12, -1488
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_0x603880___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, ptrtoint( %G_0x603880___rcx_4__type* @G_0x603880___rcx_4_ to i64)
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl__eax__MINUS0x4e0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %18 = add i64 %15, -1248
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_400eef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movl__0x0__MINUS0x4e0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %12, -1248
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}












define %struct.Memory* @routine_cmpl_MINUS0x530__rbp__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RDX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -1328
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jg_.L_400fd3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_je_.L_400fc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_leaq_MINUS0x490__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 1168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_subl_MINUS0x4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__edx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl_MINUS0x5d0__rbp__rsi_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1488
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}






define %struct.Memory* @routine_movslq__edi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_addq__rsi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq___rcx__rsi_4____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_addl_0x603480___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, ptrtoint( %G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0xa94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 2708
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0xa94__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 2708
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_idivl__edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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






define %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl__0x1___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movslq__r8d___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_xorl_MINUS0x4e0__rbp__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -1248
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__edx__MINUS0x4e0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1248
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_400fc5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_400ef6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movslq_MINUS0x4e0__rbp__rcx_4____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %12, -1248
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_0x603480___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, ptrtoint( %G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_jmpq_.L_401000(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movb__cl__MINUS0xa95__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 2709
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_40102e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl__0x8__MINUS0x530__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %12, -1328
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 8)
  ret %struct.Memory* %19
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SETLEI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 alwaysinline {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setle__dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETLEI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %DL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__dl__MINUS0xa95__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 2709
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0xa95__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 2709
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_400ae9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jg_.L_401788(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jg_.L_4010b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































define %struct.Memory* @routine_jmpq_.L_40105e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jg_.L_401103(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movl__edx__MINUS0xa80__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2688
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_jmpq_.L_4010bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_cmpl__0xff__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 255)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_401203(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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








define %struct.Memory* @routine_jg_.L_4011b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0xa80__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -2688
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 -1)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_40119d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0xa80__rbp__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2688
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0xa9c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 2716
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0xa9c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 2716
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__edx__MINUS0xa80__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2688
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movslq_MINUS0xa80__rbp__rcx_4____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %12, -2688
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_xorl_MINUS0x10__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4011a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_40112f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_4011f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movslq_MINUS0x5d4__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 1492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x600__rbp__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1536
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}






define %struct.Memory* @routine_movl__eax__MINUS0x620__rbp__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %18 = add i64 %15, -1568
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movl_MINUS0x5d4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = sub i64 %12, 1492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x5d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 1492
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4011f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_401114(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jne_.L_401713(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jg_.L_401460(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x5d0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1488
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 -1)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_4012ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
































define %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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


define %struct.Memory* @routine_xorl_0x603880___rax_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, ptrtoint( %G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__edx__MINUS0x650__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1616
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_40137c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_je_.L_401300(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_401300(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_0x603880___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, ptrtoint( %G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__MINUS0x650__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %18 = add i64 %15, -1616
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_401377(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_401363(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_401363(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movl_0x603880___rax_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, ptrtoint( %G_0x603880___rax_4__type* @G_0x603880___rax_4_ to i64)
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_jmpq_.L_401372(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x0__MINUS0x650__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}










define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = sub i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_401434(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_401421(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_subl_MINUS0x8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_addq__rdx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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




define %struct.Memory* @routine_subl_MINUS0x8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__esi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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




define %struct.Memory* @routine_addl_MINUS0x5d0__rbp__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -1488
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__eax__MINUS0xaa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 2720
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0xaa0__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 2720
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_xorl_MINUS0x650__rbp__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -1616
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__edx__MINUS0x650__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1616
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_401426(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_401383(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movslq_MINUS0x650__rbp__rax_4____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %16)
  ret %struct.Memory* %19
}














define %struct.Memory* @routine_jmpq_.L_401221(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_4014da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x0__MINUS0xa50__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -2640
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}






define %struct.Memory* @routine_je_.L_4014b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_0x603080___rax_4____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = add i64 %10, ptrtoint( %G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %11)
  ret %struct.Memory* %14
}






define %struct.Memory* @routine_movl__ecx__0x603080___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, ptrtoint( %G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jmpq_.L_4014c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x0__0x603080___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = add i64 %10, ptrtoint( %G_0x603080___rax_4__type* @G_0x603080___rax_4_ to i64)
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jmpq_.L_4014cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_401467(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jge_.L_40170e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x620__rbp__rax_4____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1568
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl__0x1__MINUS0xa50__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -2640
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 1)
  ret %struct.Memory* %19
}










define %struct.Memory* @routine_jg_.L_4015a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x650__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 -1)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_40158f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x650__rbp__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1616
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_imull_MINUS0x600__rbp__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -1536
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__eax__MINUS0xaa4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 2724
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0xaa4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 2724
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movslq_MINUS0x620__rbp__rcx_4____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %12, -1568
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_xorl_MINUS0xa50__rbp__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -2640
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__edx__MINUS0xa50__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2640
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_401594(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_401513(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_cmpl__0x0__MINUS0xa50__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -2640
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_4016fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movslq_MINUS0xa50__rbp__rax_4____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -2640
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %16)
  ret %struct.Memory* %19
}








define %struct.Memory* @routine_movl__ecx__MINUS0xa50__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %18 = add i64 %15, -2640
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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










define %struct.Memory* @routine_jge_.L_401674(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_401661(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x620__rbp__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1568
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x600__rbp__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -1536
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__eax__MINUS0xaa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 2728
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0xaa8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 2728
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_xorl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl_0x603480___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, ptrtoint( %G_0x603480___rcx_4__type* @G_0x603480___rcx_4_ to i64)
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl_MINUS0x10__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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




define %struct.Memory* @routine_jmpq_.L_401666(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4015f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl__eax__MINUS0xaac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 2732
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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




define %struct.Memory* @routine_movl_MINUS0xaac__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 2732
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movslq_MINUS0x620__rbp__rsi_4____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1568
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_MINUS0xa50__rbp__rsi_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2640
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl__0xff___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 255)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movl_0x603880___rsi_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, ptrtoint( %G_0x603880___rsi_4__type* @G_0x603880___rsi_4_ to i64)
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__edx__MINUS0xa50__rbp__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2640
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}












define %struct.Memory* @routine_xorl_0x603080___rsi_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, ptrtoint( %G_0x603080___rsi_4__type* @G_0x603080___rsi_4_ to i64)
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx__0x603080___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, ptrtoint( %G_0x603080___rsi_4__type* @G_0x603080___rsi_4_ to i64)
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jmpq_.L_401700(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4014e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_401783(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_40177e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_40175c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_40176b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jmpq_.L_401770(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_40171a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_4017f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_4017f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_4017d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_4017e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jmpq_.L_4017e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_40178f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_40186d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_401868(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_401846(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_401855(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jmpq_.L_40185a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_401804(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_addq__0xa30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 2608)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture) #0 alwaysinline {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, 8
  %7 = inttoptr i64 %5 to i64*
  %8 = load i64, i64* %7
  store i64 %8, i64* %2, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_popq__rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3RETEP6MemoryR5State(%struct.Memory* returned, %struct.State* nocapture dereferenceable(3376)) #0 alwaysinline {
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

define %struct.Memory* @routine_retq(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

