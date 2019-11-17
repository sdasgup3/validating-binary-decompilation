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

declare %struct.Memory* @sub_400b40.find(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x602058_type = type <{ [4 x i8] }>
@G_0x602058= global %G_0x602058_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x602060_type = type <{ [8 x i8] }>
@G_0x602060= global %G_0x602060_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x602080_type = type <{ [8 x i8] }>
@G_0x602080= global %G_0x602080_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x602090_type = type <{ [4 x i8] }>
@G_0x602090= global %G_0x602090_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x602098_type = type <{ [8 x i8] }>
@G_0x602098= global %G_0x602098_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6020a0_type = type <{ [8 x i8] }>
@G_0x6020a0= global %G_0x6020a0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6020b0_type = type <{ [4 x i8] }>
@G_0x6020b0= global %G_0x6020b0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6020b4_type = type <{ [4 x i8] }>
@G_0x6020b4= global %G_0x6020b4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x602250___rax_4__type = type <{ [4 x i8] }>
@G_0x602250___rax_4_= global %G_0x602250___rax_4__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x602570___rax_4__type = type <{ [4 x i8] }>
@G_0x602570___rax_4_= global %G_0x602570___rax_4__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x602890___rax_4__type = type <{ [4 x i8] }>
@G_0x602890___rax_4_= global %G_0x602890___rax_4__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x602a20_type = type <{ [4 x i8] }>
@G_0x602a20= global %G_0x602a20_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x400e34_type = type <{ [8 x i8] }>
@G__0x400e34= global %G__0x400e34_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x400edc_type = type <{ [8 x i8] }>
@G__0x400edc= global %G__0x400edc_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x400ef4_type = type <{ [8 x i8] }>
@G__0x400ef4= global %G__0x400ef4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x400ef5_type = type <{ [8 x i8] }>
@G__0x400ef5= global %G__0x400ef5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x400ef8_type = type <{ [8 x i8] }>
@G__0x400ef8= global %G__0x400ef8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x400f17_type = type <{ [8 x i8] }>
@G__0x400f17= global %G__0x400f17_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x400f37_type = type <{ [8 x i8] }>
@G__0x400f37= global %G__0x400f37_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x400f5b_type = type <{ [8 x i8] }>
@G__0x400f5b= global %G__0x400f5b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x400f73_type = type <{ [8 x i8] }>
@G__0x400f73= global %G__0x400f73_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x400f75_type = type <{ [8 x i8] }>
@G__0x400f75= global %G__0x400f75_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x400f95_type = type <{ [8 x i8] }>
@G__0x400f95= global %G__0x400f95_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x400fad_type = type <{ [8 x i8] }>
@G__0x400fad= global %G__0x400fad_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6020b0_type = type <{ [8 x i8] }>
@G__0x6020b0= global %G__0x6020b0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @main(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .main:	 RIP: 400730	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 400730	 Bytes: 1
  %loadMem_400730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400730 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400730)
  store %struct.Memory* %call_400730, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 400731	 Bytes: 3
  %loadMem_400731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400731 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400731)
  store %struct.Memory* %call_400731, %struct.Memory** %MEMORY

  ; Code: subq $0x70, %rsp	 RIP: 400734	 Bytes: 4
  %loadMem_400734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400734 = call %struct.Memory* @routine_subq__0x70___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400734)
  store %struct.Memory* %call_400734, %struct.Memory** %MEMORY

  ; Code: movq $0x400e34, %rax	 RIP: 400738	 Bytes: 10
  %loadMem_400738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400738 = call %struct.Memory* @routine_movq__0x400e34___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400738)
  store %struct.Memory* %call_400738, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 400742	 Bytes: 7
  %loadMem_400742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400742 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400742)
  store %struct.Memory* %call_400742, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x8(%rbp)	 RIP: 400749	 Bytes: 3
  %loadMem_400749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400749 = call %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400749)
  store %struct.Memory* %call_400749, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 40074c	 Bytes: 4
  %loadMem_40074c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40074c = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40074c)
  store %struct.Memory* %call_40074c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x28(%rbp)	 RIP: 400750	 Bytes: 4
  %loadMem_400750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400750 = call %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400750)
  store %struct.Memory* %call_400750, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 400754	 Bytes: 4
  %loadMem_400754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400754 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400754)
  store %struct.Memory* %call_400754, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 400758	 Bytes: 3
  %loadMem_400758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400758 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400758)
  store %struct.Memory* %call_400758, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6020a0	 RIP: 40075b	 Bytes: 8
  %loadMem_40075b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40075b = call %struct.Memory* @routine_movq__rax__0x6020a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40075b)
  store %struct.Memory* %call_40075b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x602058	 RIP: 400763	 Bytes: 11
  %loadMem_400763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400763 = call %struct.Memory* @routine_movl__0x0__0x602058(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400763)
  store %struct.Memory* %call_400763, %struct.Memory** %MEMORY

  ; Code: movl $0xe, 0x6020b0	 RIP: 40076e	 Bytes: 11
  %loadMem_40076e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40076e = call %struct.Memory* @routine_movl__0xe__0x6020b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40076e)
  store %struct.Memory* %call_40076e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x602090	 RIP: 400779	 Bytes: 11
  %loadMem_400779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400779 = call %struct.Memory* @routine_movl__0x1__0x602090(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400779)
  store %struct.Memory* %call_400779, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x14(%rbp)	 RIP: 400784	 Bytes: 7
  %loadMem_400784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400784 = call %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400784)
  store %struct.Memory* %call_400784, %struct.Memory** %MEMORY

  ; Code: .L_40078b:	 RIP: 40078b	 Bytes: 0
  br label %block_.L_40078b
block_.L_40078b:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 40078b	 Bytes: 3
  %loadMem_40078b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40078b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40078b)
  store %struct.Memory* %call_40078b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 40078e	 Bytes: 3
  %loadMem_40078e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40078e = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40078e)
  store %struct.Memory* %call_40078e, %struct.Memory** %MEMORY

  ; Code: jge .L_400972	 RIP: 400791	 Bytes: 6
  %loadMem_400791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400791 = call %struct.Memory* @routine_jge_.L_400972(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400791, i8* %BRANCH_TAKEN, i64 481, i64 6, i64 6)
  store %struct.Memory* %call_400791, %struct.Memory** %MEMORY

  %loadBr_400791 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400791 = icmp eq i8 %loadBr_400791, 1
  br i1 %cmpBr_400791, label %block_.L_400972, label %block_400797

block_400797:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 400797	 Bytes: 4
  %loadMem_400797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400797 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400797)
  store %struct.Memory* %call_400797, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40079b	 Bytes: 4
  %loadMem_40079b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40079b = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40079b)
  store %struct.Memory* %call_40079b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 40079f	 Bytes: 4
  %loadMem_40079f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40079f = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40079f)
  store %struct.Memory* %call_40079f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 4007a3	 Bytes: 4
  %loadMem_4007a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007a3 = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007a3)
  store %struct.Memory* %call_4007a3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4007a7	 Bytes: 4
  %loadMem_4007a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007a7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007a7)
  store %struct.Memory* %call_4007a7, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %edx	 RIP: 4007ab	 Bytes: 3
  %loadMem_4007ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007ab = call %struct.Memory* @routine_movsbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007ab)
  store %struct.Memory* %call_4007ab, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 4007ae	 Bytes: 3
  %loadMem_4007ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007ae = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007ae)
  store %struct.Memory* %call_4007ae, %struct.Memory** %MEMORY

  ; Code: jne .L_400883	 RIP: 4007b1	 Bytes: 6
  %loadMem_4007b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007b1 = call %struct.Memory* @routine_jne_.L_400883(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007b1, i8* %BRANCH_TAKEN, i64 210, i64 6, i64 6)
  store %struct.Memory* %call_4007b1, %struct.Memory** %MEMORY

  %loadBr_4007b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4007b1 = icmp eq i8 %loadBr_4007b1, 1
  br i1 %cmpBr_4007b1, label %block_.L_400883, label %block_4007b7

block_4007b7:
  ; Code: jmpq .L_4007bc	 RIP: 4007b7	 Bytes: 5
  %loadMem_4007b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007b7 = call %struct.Memory* @routine_jmpq_.L_4007bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007b7, i64 5, i64 5)
  store %struct.Memory* %call_4007b7, %struct.Memory** %MEMORY

  br label %block_.L_4007bc

  ; Code: .L_4007bc:	 RIP: 4007bc	 Bytes: 0
block_.L_4007bc:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4007bc	 Bytes: 4
  %loadMem_4007bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007bc = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007bc)
  store %struct.Memory* %call_4007bc, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 4007c0	 Bytes: 3
  %loadMem_4007c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007c0 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007c0)
  store %struct.Memory* %call_4007c0, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rcx	 RIP: 4007c3	 Bytes: 4
  %loadMem_4007c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007c3 = call %struct.Memory* @routine_addq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007c3)
  store %struct.Memory* %call_4007c3, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x20(%rbp)	 RIP: 4007c7	 Bytes: 4
  %loadMem_4007c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007c7 = call %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007c7)
  store %struct.Memory* %call_4007c7, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, 0x1(%rax)	 RIP: 4007cb	 Bytes: 4
  %loadMem_4007cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007cb = call %struct.Memory* @routine_cmpb__0x0__0x1__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007cb)
  store %struct.Memory* %call_4007cb, %struct.Memory** %MEMORY

  ; Code: je .L_40087e	 RIP: 4007cf	 Bytes: 6
  %loadMem_4007cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007cf = call %struct.Memory* @routine_je_.L_40087e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007cf, i8* %BRANCH_TAKEN, i64 175, i64 6, i64 6)
  store %struct.Memory* %call_4007cf, %struct.Memory** %MEMORY

  %loadBr_4007cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4007cf = icmp eq i8 %loadBr_4007cf, 1
  br i1 %cmpBr_4007cf, label %block_.L_40087e, label %block_4007d5

block_4007d5:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 4007d5	 Bytes: 4
  %loadMem_4007d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007d5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007d5)
  store %struct.Memory* %call_4007d5, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 4007d9	 Bytes: 3
  %loadMem_4007d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007d9 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007d9)
  store %struct.Memory* %call_4007d9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4007dc	 Bytes: 2
  %loadMem_4007dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007dc = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007dc)
  store %struct.Memory* %call_4007dc, %struct.Memory** %MEMORY

  ; Code: subl $0x61, %edx	 RIP: 4007de	 Bytes: 3
  %loadMem_4007de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007de = call %struct.Memory* @routine_subl__0x61___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007de)
  store %struct.Memory* %call_4007de, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 4007e1	 Bytes: 3
  %loadMem_4007e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007e1 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007e1)
  store %struct.Memory* %call_4007e1, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x30(%rbp)	 RIP: 4007e4	 Bytes: 3
  %loadMem_4007e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007e4 = call %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007e4)
  store %struct.Memory* %call_4007e4, %struct.Memory** %MEMORY

  ; Code: je .L_400811	 RIP: 4007e7	 Bytes: 6
  %loadMem_4007e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007e7 = call %struct.Memory* @routine_je_.L_400811(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007e7, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_4007e7, %struct.Memory** %MEMORY

  %loadBr_4007e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4007e7 = icmp eq i8 %loadBr_4007e7, 1
  br i1 %cmpBr_4007e7, label %block_.L_400811, label %block_4007ed

block_4007ed:
  ; Code: jmpq .L_4007f2	 RIP: 4007ed	 Bytes: 5
  %loadMem_4007ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007ed = call %struct.Memory* @routine_jmpq_.L_4007f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007ed, i64 5, i64 5)
  store %struct.Memory* %call_4007ed, %struct.Memory** %MEMORY

  br label %block_.L_4007f2

  ; Code: .L_4007f2:	 RIP: 4007f2	 Bytes: 0
block_.L_4007f2:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 4007f2	 Bytes: 3
  %loadMem_4007f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007f2 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007f2)
  store %struct.Memory* %call_4007f2, %struct.Memory** %MEMORY

  ; Code: subl $0x63, %eax	 RIP: 4007f5	 Bytes: 3
  %loadMem_4007f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007f5 = call %struct.Memory* @routine_subl__0x63___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007f5)
  store %struct.Memory* %call_4007f5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 4007f8	 Bytes: 3
  %loadMem_4007f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007f8 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007f8)
  store %struct.Memory* %call_4007f8, %struct.Memory** %MEMORY

  ; Code: jne .L_400821	 RIP: 4007fb	 Bytes: 6
  %loadMem_4007fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4007fb = call %struct.Memory* @routine_jne_.L_400821(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4007fb, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_4007fb, %struct.Memory** %MEMORY

  %loadBr_4007fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4007fb = icmp eq i8 %loadBr_4007fb, 1
  br i1 %cmpBr_4007fb, label %block_.L_400821, label %block_400801

block_400801:
  ; Code: jmpq .L_400806	 RIP: 400801	 Bytes: 5
  %loadMem_400801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400801 = call %struct.Memory* @routine_jmpq_.L_400806(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400801, i64 5, i64 5)
  store %struct.Memory* %call_400801, %struct.Memory** %MEMORY

  br label %block_.L_400806

  ; Code: .L_400806:	 RIP: 400806	 Bytes: 0
block_.L_400806:

  ; Code: movl $0x0, 0x602058	 RIP: 400806	 Bytes: 11
  %loadMem_400806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400806 = call %struct.Memory* @routine_movl__0x0__0x602058(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400806)
  store %struct.Memory* %call_400806, %struct.Memory** %MEMORY

  ; Code: .L_400811:	 RIP: 400811	 Bytes: 0
  br label %block_.L_400811
block_.L_400811:

  ; Code: movl $0x1, 0x602090	 RIP: 400811	 Bytes: 11
  %loadMem_400811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400811 = call %struct.Memory* @routine_movl__0x1__0x602090(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400811)
  store %struct.Memory* %call_400811, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400879	 RIP: 40081c	 Bytes: 5
  %loadMem_40081c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40081c = call %struct.Memory* @routine_jmpq_.L_400879(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40081c, i64 93, i64 5)
  store %struct.Memory* %call_40081c, %struct.Memory** %MEMORY

  br label %block_.L_400879

  ; Code: .L_400821:	 RIP: 400821	 Bytes: 0
block_.L_400821:

  ; Code: movq $0x400edc, %rsi	 RIP: 400821	 Bytes: 10
  %loadMem_400821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400821 = call %struct.Memory* @routine_movq__0x400edc___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400821)
  store %struct.Memory* %call_400821, %struct.Memory** %MEMORY

  ; Code: movq 0x602080, %rdi	 RIP: 40082b	 Bytes: 8
  %loadMem_40082b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40082b = call %struct.Memory* @routine_movq_0x602080___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40082b)
  store %struct.Memory* %call_40082b, %struct.Memory** %MEMORY

  ; Code: movq 0x6020a0, %rdx	 RIP: 400833	 Bytes: 8
  %loadMem_400833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400833 = call %struct.Memory* @routine_movq_0x6020a0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400833)
  store %struct.Memory* %call_400833, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40083b	 Bytes: 4
  %loadMem_40083b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40083b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40083b)
  store %struct.Memory* %call_40083b, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 40083f	 Bytes: 4
  %loadMem_40083f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40083f = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40083f)
  store %struct.Memory* %call_40083f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rcx	 RIP: 400843	 Bytes: 4
  %loadMem_400843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400843 = call %struct.Memory* @routine_movq___rax__rcx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400843)
  store %struct.Memory* %call_400843, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400847	 Bytes: 2
  %loadMem_400847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400847 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400847)
  store %struct.Memory* %call_400847, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400849	 Bytes: 5
  %loadMem1_400849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400849 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400849, i64 -585, i64 5, i64 5)
  store %struct.Memory* %call1_400849, %struct.Memory** %MEMORY

  %loadMem2_400849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400849 = load i64, i64* %3
  %call2_400849 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_400849, %struct.Memory* %loadMem2_400849)
  store %struct.Memory* %call2_400849, %struct.Memory** %MEMORY

  ; Code: movq 0x602080, %rdi	 RIP: 40084e	 Bytes: 8
  %loadMem_40084e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40084e = call %struct.Memory* @routine_movq_0x602080___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40084e)
  store %struct.Memory* %call_40084e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rsi	 RIP: 400856	 Bytes: 4
  %loadMem_400856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400856 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400856)
  store %struct.Memory* %call_400856, %struct.Memory** %MEMORY

  ; Code: movq 0x6020a0, %rdx	 RIP: 40085a	 Bytes: 8
  %loadMem_40085a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40085a = call %struct.Memory* @routine_movq_0x6020a0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40085a)
  store %struct.Memory* %call_40085a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 400862	 Bytes: 3
  %loadMem_400862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400862 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400862)
  store %struct.Memory* %call_400862, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400865	 Bytes: 2
  %loadMem_400865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400865 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400865)
  store %struct.Memory* %call_400865, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400867	 Bytes: 5
  %loadMem1_400867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400867 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400867, i64 -615, i64 5, i64 5)
  store %struct.Memory* %call1_400867, %struct.Memory** %MEMORY

  %loadMem2_400867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400867 = load i64, i64* %3
  %call2_400867 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_400867, %struct.Memory* %loadMem2_400867)
  store %struct.Memory* %call2_400867, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %edi	 RIP: 40086c	 Bytes: 5
  %loadMem_40086c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40086c = call %struct.Memory* @routine_movl__0xffffffff___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40086c)
  store %struct.Memory* %call_40086c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 400871	 Bytes: 3
  %loadMem_400871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400871 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400871)
  store %struct.Memory* %call_400871, %struct.Memory** %MEMORY

  ; Code: callq .exit_plt	 RIP: 400874	 Bytes: 5
  %loadMem1_400874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400874 = call %struct.Memory* @routine_callq_.exit_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400874, i64 -580, i64 5, i64 5)
  store %struct.Memory* %call1_400874, %struct.Memory** %MEMORY

  %loadMem2_400874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400874 = load i64, i64* %3
  %call2_400874 = call %struct.Memory* @ext_exit(%struct.State* %0, i64  %loadPC_400874, %struct.Memory* %loadMem2_400874)
  store %struct.Memory* %call2_400874, %struct.Memory** %MEMORY

  ; Code: .L_400879:	 RIP: 400879	 Bytes: 0
  br label %block_.L_400879
block_.L_400879:

  ; Code: jmpq .L_4007bc	 RIP: 400879	 Bytes: 5
  %loadMem_400879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400879 = call %struct.Memory* @routine_jmpq_.L_4007bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400879, i64 -189, i64 5)
  store %struct.Memory* %call_400879, %struct.Memory** %MEMORY

  br label %block_.L_4007bc

  ; Code: .L_40087e:	 RIP: 40087e	 Bytes: 0
block_.L_40087e:

  ; Code: jmpq .L_40095f	 RIP: 40087e	 Bytes: 5
  %loadMem_40087e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40087e = call %struct.Memory* @routine_jmpq_.L_40095f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40087e, i64 225, i64 5)
  store %struct.Memory* %call_40087e, %struct.Memory** %MEMORY

  br label %block_.L_40095f

  ; Code: .L_400883:	 RIP: 400883	 Bytes: 0
block_.L_400883:

  ; Code: movq $0x400ef5, %rsi	 RIP: 400883	 Bytes: 10
  %loadMem_400883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400883 = call %struct.Memory* @routine_movq__0x400ef5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400883)
  store %struct.Memory* %call_400883, %struct.Memory** %MEMORY

  ; Code: movq $0x6020b0, %rdx	 RIP: 40088d	 Bytes: 10
  %loadMem_40088d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40088d = call %struct.Memory* @routine_movq__0x6020b0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40088d)
  store %struct.Memory* %call_40088d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 400897	 Bytes: 4
  %loadMem_400897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400897 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400897)
  store %struct.Memory* %call_400897, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 40089b	 Bytes: 2
  %loadMem_40089b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40089b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40089b)
  store %struct.Memory* %call_40089b, %struct.Memory** %MEMORY

  ; Code: callq .__isoc99_sscanf_plt	 RIP: 40089d	 Bytes: 5
  %loadMem1_40089d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40089d = call %struct.Memory* @routine_callq_.__isoc99_sscanf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40089d, i64 -637, i64 5, i64 5)
  store %struct.Memory* %call1_40089d, %struct.Memory** %MEMORY

  %loadMem2_40089d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40089d = load i64, i64* %3
  %call2_40089d = call %struct.Memory* @ext___isoc99_sscanf(%struct.State* %0, i64  %loadPC_40089d, %struct.Memory* %loadMem2_40089d)
  store %struct.Memory* %call2_40089d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 4008a2	 Bytes: 3
  %loadMem_4008a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008a2 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008a2)
  store %struct.Memory* %call_4008a2, %struct.Memory** %MEMORY

  ; Code: je .L_4008dd	 RIP: 4008a5	 Bytes: 6
  %loadMem_4008a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008a5 = call %struct.Memory* @routine_je_.L_4008dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008a5, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_4008a5, %struct.Memory** %MEMORY

  %loadBr_4008a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4008a5 = icmp eq i8 %loadBr_4008a5, 1
  br i1 %cmpBr_4008a5, label %block_.L_4008dd, label %block_4008ab

block_4008ab:
  ; Code: movq $0x400ef8, %rsi	 RIP: 4008ab	 Bytes: 10
  %loadMem_4008ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008ab = call %struct.Memory* @routine_movq__0x400ef8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008ab)
  store %struct.Memory* %call_4008ab, %struct.Memory** %MEMORY

  ; Code: movq 0x602080, %rdi	 RIP: 4008b5	 Bytes: 8
  %loadMem_4008b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008b5 = call %struct.Memory* @routine_movq_0x602080___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008b5)
  store %struct.Memory* %call_4008b5, %struct.Memory** %MEMORY

  ; Code: movq 0x6020a0, %rdx	 RIP: 4008bd	 Bytes: 8
  %loadMem_4008bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008bd = call %struct.Memory* @routine_movq_0x6020a0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008bd)
  store %struct.Memory* %call_4008bd, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4008c5	 Bytes: 4
  %loadMem_4008c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008c5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008c5)
  store %struct.Memory* %call_4008c5, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4008c9	 Bytes: 2
  %loadMem_4008c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008c9 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008c9)
  store %struct.Memory* %call_4008c9, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4008cb	 Bytes: 5
  %loadMem1_4008cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4008cb = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4008cb, i64 -715, i64 5, i64 5)
  store %struct.Memory* %call1_4008cb, %struct.Memory** %MEMORY

  %loadMem2_4008cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008cb = load i64, i64* %3
  %call2_4008cb = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4008cb, %struct.Memory* %loadMem2_4008cb)
  store %struct.Memory* %call2_4008cb, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %edi	 RIP: 4008d0	 Bytes: 5
  %loadMem_4008d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008d0 = call %struct.Memory* @routine_movl__0xffffffff___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008d0)
  store %struct.Memory* %call_4008d0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 4008d5	 Bytes: 3
  %loadMem_4008d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008d5 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008d5)
  store %struct.Memory* %call_4008d5, %struct.Memory** %MEMORY

  ; Code: callq .exit_plt	 RIP: 4008d8	 Bytes: 5
  %loadMem1_4008d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4008d8 = call %struct.Memory* @routine_callq_.exit_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4008d8, i64 -680, i64 5, i64 5)
  store %struct.Memory* %call1_4008d8, %struct.Memory** %MEMORY

  %loadMem2_4008d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008d8 = load i64, i64* %3
  %call2_4008d8 = call %struct.Memory* @ext_exit(%struct.State* %0, i64  %loadPC_4008d8, %struct.Memory* %loadMem2_4008d8)
  store %struct.Memory* %call2_4008d8, %struct.Memory** %MEMORY

  ; Code: .L_4008dd:	 RIP: 4008dd	 Bytes: 0
  br label %block_.L_4008dd
block_.L_4008dd:

  ; Code: cmpl $0x0, 0x6020b0	 RIP: 4008dd	 Bytes: 8
  %loadMem_4008dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008dd = call %struct.Memory* @routine_cmpl__0x0__0x6020b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008dd)
  store %struct.Memory* %call_4008dd, %struct.Memory** %MEMORY

  ; Code: jg .L_400919	 RIP: 4008e5	 Bytes: 6
  %loadMem_4008e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008e5 = call %struct.Memory* @routine_jg_.L_400919(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008e5, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_4008e5, %struct.Memory** %MEMORY

  %loadBr_4008e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4008e5 = icmp eq i8 %loadBr_4008e5, 1
  br i1 %cmpBr_4008e5, label %block_.L_400919, label %block_4008eb

block_4008eb:
  ; Code: movq $0x400f17, %rsi	 RIP: 4008eb	 Bytes: 10
  %loadMem_4008eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008eb = call %struct.Memory* @routine_movq__0x400f17___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008eb)
  store %struct.Memory* %call_4008eb, %struct.Memory** %MEMORY

  ; Code: movq 0x602080, %rdi	 RIP: 4008f5	 Bytes: 8
  %loadMem_4008f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008f5 = call %struct.Memory* @routine_movq_0x602080___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008f5)
  store %struct.Memory* %call_4008f5, %struct.Memory** %MEMORY

  ; Code: movq 0x6020a0, %rdx	 RIP: 4008fd	 Bytes: 8
  %loadMem_4008fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4008fd = call %struct.Memory* @routine_movq_0x6020a0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4008fd)
  store %struct.Memory* %call_4008fd, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400905	 Bytes: 2
  %loadMem_400905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400905 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400905)
  store %struct.Memory* %call_400905, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400907	 Bytes: 5
  %loadMem1_400907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400907 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400907, i64 -775, i64 5, i64 5)
  store %struct.Memory* %call1_400907, %struct.Memory** %MEMORY

  %loadMem2_400907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400907 = load i64, i64* %3
  %call2_400907 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_400907, %struct.Memory* %loadMem2_400907)
  store %struct.Memory* %call2_400907, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %edi	 RIP: 40090c	 Bytes: 5
  %loadMem_40090c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40090c = call %struct.Memory* @routine_movl__0xffffffff___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40090c)
  store %struct.Memory* %call_40090c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 400911	 Bytes: 3
  %loadMem_400911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400911 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400911)
  store %struct.Memory* %call_400911, %struct.Memory** %MEMORY

  ; Code: callq .exit_plt	 RIP: 400914	 Bytes: 5
  %loadMem1_400914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400914 = call %struct.Memory* @routine_callq_.exit_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400914, i64 -740, i64 5, i64 5)
  store %struct.Memory* %call1_400914, %struct.Memory** %MEMORY

  %loadMem2_400914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400914 = load i64, i64* %3
  %call2_400914 = call %struct.Memory* @ext_exit(%struct.State* %0, i64  %loadPC_400914, %struct.Memory* %loadMem2_400914)
  store %struct.Memory* %call2_400914, %struct.Memory** %MEMORY

  ; Code: .L_400919:	 RIP: 400919	 Bytes: 0
  br label %block_.L_400919
block_.L_400919:

  ; Code: cmpl $0x64, 0x6020b0	 RIP: 400919	 Bytes: 8
  %loadMem_400919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400919 = call %struct.Memory* @routine_cmpl__0x64__0x6020b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400919)
  store %struct.Memory* %call_400919, %struct.Memory** %MEMORY

  ; Code: jle .L_40095a	 RIP: 400921	 Bytes: 6
  %loadMem_400921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400921 = call %struct.Memory* @routine_jle_.L_40095a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400921, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_400921, %struct.Memory** %MEMORY

  %loadBr_400921 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400921 = icmp eq i8 %loadBr_400921, 1
  br i1 %cmpBr_400921, label %block_.L_40095a, label %block_400927

block_400927:
  ; Code: movq $0x400f37, %rsi	 RIP: 400927	 Bytes: 10
  %loadMem_400927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400927 = call %struct.Memory* @routine_movq__0x400f37___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400927)
  store %struct.Memory* %call_400927, %struct.Memory** %MEMORY

  ; Code: movl $0x64, %ecx	 RIP: 400931	 Bytes: 5
  %loadMem_400931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400931 = call %struct.Memory* @routine_movl__0x64___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400931)
  store %struct.Memory* %call_400931, %struct.Memory** %MEMORY

  ; Code: movq 0x602080, %rdi	 RIP: 400936	 Bytes: 8
  %loadMem_400936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400936 = call %struct.Memory* @routine_movq_0x602080___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400936)
  store %struct.Memory* %call_400936, %struct.Memory** %MEMORY

  ; Code: movq 0x6020a0, %rdx	 RIP: 40093e	 Bytes: 8
  %loadMem_40093e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40093e = call %struct.Memory* @routine_movq_0x6020a0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40093e)
  store %struct.Memory* %call_40093e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400946	 Bytes: 2
  %loadMem_400946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400946 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400946)
  store %struct.Memory* %call_400946, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 400948	 Bytes: 5
  %loadMem1_400948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400948 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400948, i64 -840, i64 5, i64 5)
  store %struct.Memory* %call1_400948, %struct.Memory** %MEMORY

  %loadMem2_400948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400948 = load i64, i64* %3
  %call2_400948 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_400948, %struct.Memory* %loadMem2_400948)
  store %struct.Memory* %call2_400948, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %edi	 RIP: 40094d	 Bytes: 5
  %loadMem_40094d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40094d = call %struct.Memory* @routine_movl__0xffffffff___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40094d)
  store %struct.Memory* %call_40094d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 400952	 Bytes: 3
  %loadMem_400952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400952 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400952)
  store %struct.Memory* %call_400952, %struct.Memory** %MEMORY

  ; Code: callq .exit_plt	 RIP: 400955	 Bytes: 5
  %loadMem1_400955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400955 = call %struct.Memory* @routine_callq_.exit_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400955, i64 -805, i64 5, i64 5)
  store %struct.Memory* %call1_400955, %struct.Memory** %MEMORY

  %loadMem2_400955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400955 = load i64, i64* %3
  %call2_400955 = call %struct.Memory* @ext_exit(%struct.State* %0, i64  %loadPC_400955, %struct.Memory* %loadMem2_400955)
  store %struct.Memory* %call2_400955, %struct.Memory** %MEMORY

  ; Code: .L_40095a:	 RIP: 40095a	 Bytes: 0
  br label %block_.L_40095a
block_.L_40095a:

  ; Code: jmpq .L_40095f	 RIP: 40095a	 Bytes: 5
  %loadMem_40095a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40095a = call %struct.Memory* @routine_jmpq_.L_40095f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40095a, i64 5, i64 5)
  store %struct.Memory* %call_40095a, %struct.Memory** %MEMORY

  br label %block_.L_40095f

  ; Code: .L_40095f:	 RIP: 40095f	 Bytes: 0
block_.L_40095f:

  ; Code: jmpq .L_400964	 RIP: 40095f	 Bytes: 5
  %loadMem_40095f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40095f = call %struct.Memory* @routine_jmpq_.L_400964(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40095f, i64 5, i64 5)
  store %struct.Memory* %call_40095f, %struct.Memory** %MEMORY

  br label %block_.L_400964

  ; Code: .L_400964:	 RIP: 400964	 Bytes: 0
block_.L_400964:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 400964	 Bytes: 3
  %loadMem_400964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400964 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400964)
  store %struct.Memory* %call_400964, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400967	 Bytes: 3
  %loadMem_400967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400967 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400967)
  store %struct.Memory* %call_400967, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 40096a	 Bytes: 3
  %loadMem_40096a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40096a = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40096a)
  store %struct.Memory* %call_40096a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40078b	 RIP: 40096d	 Bytes: 5
  %loadMem_40096d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40096d = call %struct.Memory* @routine_jmpq_.L_40078b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40096d, i64 -482, i64 5)
  store %struct.Memory* %call_40096d, %struct.Memory** %MEMORY

  br label %block_.L_40078b

  ; Code: .L_400972:	 RIP: 400972	 Bytes: 0
block_.L_400972:

  ; Code: cmpl $0x0, 0x6020b0	 RIP: 400972	 Bytes: 8
  %loadMem_400972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400972 = call %struct.Memory* @routine_cmpl__0x0__0x6020b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400972)
  store %struct.Memory* %call_400972, %struct.Memory** %MEMORY

  ; Code: jne .L_4009cc	 RIP: 40097a	 Bytes: 6
  %loadMem_40097a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40097a = call %struct.Memory* @routine_jne_.L_4009cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40097a, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_40097a, %struct.Memory** %MEMORY

  %loadBr_40097a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40097a = icmp eq i8 %loadBr_40097a, 1
  br i1 %cmpBr_40097a, label %block_.L_4009cc, label %block_400980

block_400980:
  ; Code: movq $0x400f5b, %rsi	 RIP: 400980	 Bytes: 10
  %loadMem_400980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400980 = call %struct.Memory* @routine_movq__0x400f5b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400980)
  store %struct.Memory* %call_400980, %struct.Memory** %MEMORY

  ; Code: movq 0x602080, %rdi	 RIP: 40098a	 Bytes: 8
  %loadMem_40098a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40098a = call %struct.Memory* @routine_movq_0x602080___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40098a)
  store %struct.Memory* %call_40098a, %struct.Memory** %MEMORY

  ; Code: movq 0x6020a0, %rdx	 RIP: 400992	 Bytes: 8
  %loadMem_400992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400992 = call %struct.Memory* @routine_movq_0x6020a0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400992)
  store %struct.Memory* %call_400992, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 40099a	 Bytes: 2
  %loadMem_40099a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40099a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40099a)
  store %struct.Memory* %call_40099a, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 40099c	 Bytes: 5
  %loadMem1_40099c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40099c = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40099c, i64 -924, i64 5, i64 5)
  store %struct.Memory* %call1_40099c, %struct.Memory** %MEMORY

  %loadMem2_40099c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40099c = load i64, i64* %3
  %call2_40099c = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_40099c, %struct.Memory* %loadMem2_40099c)
  store %struct.Memory* %call2_40099c, %struct.Memory** %MEMORY

  ; Code: movq 0x602080, %rdi	 RIP: 4009a1	 Bytes: 8
  %loadMem_4009a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009a1 = call %struct.Memory* @routine_movq_0x602080___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009a1)
  store %struct.Memory* %call_4009a1, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rsi	 RIP: 4009a9	 Bytes: 4
  %loadMem_4009a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009a9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009a9)
  store %struct.Memory* %call_4009a9, %struct.Memory** %MEMORY

  ; Code: movq 0x6020a0, %rdx	 RIP: 4009ad	 Bytes: 8
  %loadMem_4009ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009ad = call %struct.Memory* @routine_movq_0x6020a0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009ad)
  store %struct.Memory* %call_4009ad, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 4009b5	 Bytes: 3
  %loadMem_4009b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009b5 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009b5)
  store %struct.Memory* %call_4009b5, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4009b8	 Bytes: 2
  %loadMem_4009b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009b8 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009b8)
  store %struct.Memory* %call_4009b8, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4009ba	 Bytes: 5
  %loadMem1_4009ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4009ba = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4009ba, i64 -954, i64 5, i64 5)
  store %struct.Memory* %call1_4009ba, %struct.Memory** %MEMORY

  %loadMem2_4009ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009ba = load i64, i64* %3
  %call2_4009ba = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4009ba, %struct.Memory* %loadMem2_4009ba)
  store %struct.Memory* %call2_4009ba, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %edi	 RIP: 4009bf	 Bytes: 5
  %loadMem_4009bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009bf = call %struct.Memory* @routine_movl__0xffffffff___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009bf)
  store %struct.Memory* %call_4009bf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 4009c4	 Bytes: 3
  %loadMem_4009c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009c4 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009c4)
  store %struct.Memory* %call_4009c4, %struct.Memory** %MEMORY

  ; Code: callq .exit_plt	 RIP: 4009c7	 Bytes: 5
  %loadMem1_4009c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4009c7 = call %struct.Memory* @routine_callq_.exit_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4009c7, i64 -919, i64 5, i64 5)
  store %struct.Memory* %call1_4009c7, %struct.Memory** %MEMORY

  %loadMem2_4009c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009c7 = load i64, i64* %3
  %call2_4009c7 = call %struct.Memory* @ext_exit(%struct.State* %0, i64  %loadPC_4009c7, %struct.Memory* %loadMem2_4009c7)
  store %struct.Memory* %call2_4009c7, %struct.Memory** %MEMORY

  ; Code: .L_4009cc:	 RIP: 4009cc	 Bytes: 0
  br label %block_.L_4009cc
block_.L_4009cc:

  ; Code: movq $0x400f75, %rdi	 RIP: 4009cc	 Bytes: 10
  %loadMem_4009cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009cc = call %struct.Memory* @routine_movq__0x400f75___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009cc)
  store %struct.Memory* %call_4009cc, %struct.Memory** %MEMORY

  ; Code: movq $0x400ef4, %rax	 RIP: 4009d6	 Bytes: 10
  %loadMem_4009d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009d6 = call %struct.Memory* @routine_movq__0x400ef4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009d6)
  store %struct.Memory* %call_4009d6, %struct.Memory** %MEMORY

  ; Code: movq $0x400f73, %rcx	 RIP: 4009e0	 Bytes: 10
  %loadMem_4009e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009e0 = call %struct.Memory* @routine_movq__0x400f73___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009e0)
  store %struct.Memory* %call_4009e0, %struct.Memory** %MEMORY

  ; Code: movl 0x6020b0, %edx	 RIP: 4009ea	 Bytes: 7
  %loadMem_4009ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009ea = call %struct.Memory* @routine_movl_0x6020b0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009ea)
  store %struct.Memory* %call_4009ea, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x602a20	 RIP: 4009f1	 Bytes: 7
  %loadMem_4009f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f1 = call %struct.Memory* @routine_movl__edx__0x602a20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f1)
  store %struct.Memory* %call_4009f1, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x6020b4	 RIP: 4009f8	 Bytes: 7
  %loadMem_4009f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009f8 = call %struct.Memory* @routine_movl__edx__0x6020b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009f8)
  store %struct.Memory* %call_4009f8, %struct.Memory** %MEMORY

  ; Code: movl 0x6020b0, %esi	 RIP: 4009ff	 Bytes: 7
  %loadMem_4009ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4009ff = call %struct.Memory* @routine_movl_0x6020b0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4009ff)
  store %struct.Memory* %call_4009ff, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x6020b0	 RIP: 400a06	 Bytes: 8
  %loadMem_400a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a06 = call %struct.Memory* @routine_cmpl__0x1__0x6020b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a06)
  store %struct.Memory* %call_400a06, %struct.Memory** %MEMORY

  ; Code: cmovgq %rcx, %rax	 RIP: 400a0e	 Bytes: 4
  %loadMem_400a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a0e = call %struct.Memory* @routine_cmovgq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a0e)
  store %struct.Memory* %call_400a0e, %struct.Memory** %MEMORY

  ; Code: movl 0x6020b4, %ecx	 RIP: 400a12	 Bytes: 7
  %loadMem_400a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a12 = call %struct.Memory* @routine_movl_0x6020b4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a12)
  store %struct.Memory* %call_400a12, %struct.Memory** %MEMORY

  ; Code: movl 0x602a20, %r8d	 RIP: 400a19	 Bytes: 8
  %loadMem_400a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a19 = call %struct.Memory* @routine_movl_0x602a20___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a19)
  store %struct.Memory* %call_400a19, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 400a21	 Bytes: 3
  %loadMem_400a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a21 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a21)
  store %struct.Memory* %call_400a21, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400a24	 Bytes: 2
  %loadMem_400a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a24 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a24)
  store %struct.Memory* %call_400a24, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 400a26	 Bytes: 5
  %loadMem1_400a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400a26 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400a26, i64 -1078, i64 5, i64 5)
  store %struct.Memory* %call1_400a26, %struct.Memory** %MEMORY

  %loadMem2_400a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a26 = load i64, i64* %3
  %call2_400a26 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_400a26, %struct.Memory* %loadMem2_400a26)
  store %struct.Memory* %call2_400a26, %struct.Memory** %MEMORY

  ; Code: movq 0x602060, %rdi	 RIP: 400a2b	 Bytes: 8
  %loadMem_400a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a2b = call %struct.Memory* @routine_movq_0x602060___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a2b)
  store %struct.Memory* %call_400a2b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 400a33	 Bytes: 3
  %loadMem_400a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a33 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a33)
  store %struct.Memory* %call_400a33, %struct.Memory** %MEMORY

  ; Code: callq .fflush_plt	 RIP: 400a36	 Bytes: 5
  %loadMem1_400a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400a36 = call %struct.Memory* @routine_callq_.fflush_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400a36, i64 -1062, i64 5, i64 5)
  store %struct.Memory* %call1_400a36, %struct.Memory** %MEMORY

  %loadMem2_400a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a36 = load i64, i64* %3
  %call2_400a36 = call %struct.Memory* @ext_fflush(%struct.State* %0, i64  %loadPC_400a36, %struct.Memory* %loadMem2_400a36)
  store %struct.Memory* %call2_400a36, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x602098	 RIP: 400a3b	 Bytes: 12
  %loadMem_400a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a3b = call %struct.Memory* @routine_movq__0x0__0x602098(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a3b)
  store %struct.Memory* %call_400a3b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 400a47	 Bytes: 7
  %loadMem_400a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a47 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a47)
  store %struct.Memory* %call_400a47, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 400a4e	 Bytes: 3
  %loadMem_400a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a4e = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a4e)
  store %struct.Memory* %call_400a4e, %struct.Memory** %MEMORY

  ; Code: .L_400a51:	 RIP: 400a51	 Bytes: 0
  br label %block_.L_400a51
block_.L_400a51:

  ; Code: cmpl $0x64, -0x14(%rbp)	 RIP: 400a51	 Bytes: 4
  %loadMem_400a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a51 = call %struct.Memory* @routine_cmpl__0x64__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a51)
  store %struct.Memory* %call_400a51, %struct.Memory** %MEMORY

  ; Code: jge .L_400a78	 RIP: 400a55	 Bytes: 6
  %loadMem_400a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a55 = call %struct.Memory* @routine_jge_.L_400a78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a55, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_400a55, %struct.Memory** %MEMORY

  %loadBr_400a55 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a55 = icmp eq i8 %loadBr_400a55, 1
  br i1 %cmpBr_400a55, label %block_.L_400a78, label %block_400a5b

block_400a5b:
  ; Code: movslq -0x14(%rbp), %rax	 RIP: 400a5b	 Bytes: 4
  %loadMem_400a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a5b = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a5b)
  store %struct.Memory* %call_400a5b, %struct.Memory** %MEMORY

  ; Code: movl $0x65, 0x602890(,%rax,4)	 RIP: 400a5f	 Bytes: 11
  %loadMem_400a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a5f = call %struct.Memory* @routine_movl__0x65__0x602890___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a5f)
  store %struct.Memory* %call_400a5f, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 400a6a	 Bytes: 3
  %loadMem_400a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a6a = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a6a)
  store %struct.Memory* %call_400a6a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400a6d	 Bytes: 3
  %loadMem_400a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a6d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a6d)
  store %struct.Memory* %call_400a6d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 400a70	 Bytes: 3
  %loadMem_400a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a70 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a70)
  store %struct.Memory* %call_400a70, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400a51	 RIP: 400a73	 Bytes: 5
  %loadMem_400a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a73 = call %struct.Memory* @routine_jmpq_.L_400a51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a73, i64 -34, i64 5)
  store %struct.Memory* %call_400a73, %struct.Memory** %MEMORY

  br label %block_.L_400a51

  ; Code: .L_400a78:	 RIP: 400a78	 Bytes: 0
block_.L_400a78:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 400a78	 Bytes: 7
  %loadMem_400a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a78 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a78)
  store %struct.Memory* %call_400a78, %struct.Memory** %MEMORY

  ; Code: .L_400a7f:	 RIP: 400a7f	 Bytes: 0
  br label %block_.L_400a7f
block_.L_400a7f:

  ; Code: cmpl $0xc7, -0x14(%rbp)	 RIP: 400a7f	 Bytes: 7
  %loadMem_400a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a7f = call %struct.Memory* @routine_cmpl__0xc7__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a7f)
  store %struct.Memory* %call_400a7f, %struct.Memory** %MEMORY

  ; Code: jge .L_400ab8	 RIP: 400a86	 Bytes: 6
  %loadMem_400a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a86 = call %struct.Memory* @routine_jge_.L_400ab8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a86, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_400a86, %struct.Memory** %MEMORY

  %loadBr_400a86 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400a86 = icmp eq i8 %loadBr_400a86, 1
  br i1 %cmpBr_400a86, label %block_.L_400ab8, label %block_400a8c

block_400a8c:
  ; Code: movslq -0x14(%rbp), %rax	 RIP: 400a8c	 Bytes: 4
  %loadMem_400a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a8c = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a8c)
  store %struct.Memory* %call_400a8c, %struct.Memory** %MEMORY

  ; Code: movl $0x65, 0x602570(,%rax,4)	 RIP: 400a90	 Bytes: 11
  %loadMem_400a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a90 = call %struct.Memory* @routine_movl__0x65__0x602570___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a90)
  store %struct.Memory* %call_400a90, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 400a9b	 Bytes: 4
  %loadMem_400a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a9b = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a9b)
  store %struct.Memory* %call_400a9b, %struct.Memory** %MEMORY

  ; Code: movl $0x65, 0x602250(,%rax,4)	 RIP: 400a9f	 Bytes: 11
  %loadMem_400a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400a9f = call %struct.Memory* @routine_movl__0x65__0x602250___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400a9f)
  store %struct.Memory* %call_400a9f, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 400aaa	 Bytes: 3
  %loadMem_400aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aaa = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aaa)
  store %struct.Memory* %call_400aaa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 400aad	 Bytes: 3
  %loadMem_400aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400aad = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400aad)
  store %struct.Memory* %call_400aad, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 400ab0	 Bytes: 3
  %loadMem_400ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab0 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab0)
  store %struct.Memory* %call_400ab0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400a7f	 RIP: 400ab3	 Bytes: 5
  %loadMem_400ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab3 = call %struct.Memory* @routine_jmpq_.L_400a7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab3, i64 -52, i64 5)
  store %struct.Memory* %call_400ab3, %struct.Memory** %MEMORY

  br label %block_.L_400a7f

  ; Code: .L_400ab8:	 RIP: 400ab8	 Bytes: 0
block_.L_400ab8:

  ; Code: xorl %edi, %edi	 RIP: 400ab8	 Bytes: 2
  %loadMem_400ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ab8 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ab8)
  store %struct.Memory* %call_400ab8, %struct.Memory** %MEMORY

  ; Code: callq .find	 RIP: 400aba	 Bytes: 5
  %loadMem1_400aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400aba = call %struct.Memory* @routine_callq_.find(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400aba, i64 134, i64 5, i64 5)
  store %struct.Memory* %call1_400aba, %struct.Memory** %MEMORY

  %loadMem2_400aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400aba = load i64, i64* %3
  %call2_400aba = call %struct.Memory* @sub_400b40.find(%struct.State* %0, i64  %loadPC_400aba, %struct.Memory* %loadMem2_400aba)
  store %struct.Memory* %call2_400aba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x602058	 RIP: 400abf	 Bytes: 8
  %loadMem_400abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400abf = call %struct.Memory* @routine_cmpl__0x0__0x602058(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400abf)
  store %struct.Memory* %call_400abf, %struct.Memory** %MEMORY

  ; Code: je .L_400ae9	 RIP: 400ac7	 Bytes: 6
  %loadMem_400ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ac7 = call %struct.Memory* @routine_je_.L_400ae9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ac7, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_400ac7, %struct.Memory** %MEMORY

  %loadBr_400ac7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ac7 = icmp eq i8 %loadBr_400ac7, 1
  br i1 %cmpBr_400ac7, label %block_.L_400ae9, label %block_400acd

block_400acd:
  ; Code: cmpq $0x0, 0x602098	 RIP: 400acd	 Bytes: 9
  %loadMem_400acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400acd = call %struct.Memory* @routine_cmpq__0x0__0x602098(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400acd)
  store %struct.Memory* %call_400acd, %struct.Memory** %MEMORY

  ; Code: je .L_400ae9	 RIP: 400ad6	 Bytes: 6
  %loadMem_400ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ad6 = call %struct.Memory* @routine_je_.L_400ae9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ad6, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_400ad6, %struct.Memory** %MEMORY

  %loadBr_400ad6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400ad6 = icmp eq i8 %loadBr_400ad6, 1
  br i1 %cmpBr_400ad6, label %block_.L_400ae9, label %block_400adc

block_400adc:
  ; Code: movl $0xa, %edi	 RIP: 400adc	 Bytes: 5
  %loadMem_400adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400adc = call %struct.Memory* @routine_movl__0xa___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400adc)
  store %struct.Memory* %call_400adc, %struct.Memory** %MEMORY

  ; Code: callq .putchar_plt	 RIP: 400ae1	 Bytes: 5
  %loadMem1_400ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400ae1 = call %struct.Memory* @routine_callq_.putchar_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400ae1, i64 -1281, i64 5, i64 5)
  store %struct.Memory* %call1_400ae1, %struct.Memory** %MEMORY

  %loadMem2_400ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ae1 = load i64, i64* %3
  %call2_400ae1 = call %struct.Memory* @ext_putchar(%struct.State* %0, i64  %loadPC_400ae1, %struct.Memory* %loadMem2_400ae1)
  store %struct.Memory* %call2_400ae1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 400ae6	 Bytes: 3
  %loadMem_400ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ae6 = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ae6)
  store %struct.Memory* %call_400ae6, %struct.Memory** %MEMORY

  ; Code: .L_400ae9:	 RIP: 400ae9	 Bytes: 0
  br label %block_.L_400ae9
block_.L_400ae9:

  ; Code: cmpq $0x1, 0x602098	 RIP: 400ae9	 Bytes: 9
  %loadMem_400ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400ae9 = call %struct.Memory* @routine_cmpq__0x1__0x602098(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400ae9)
  store %struct.Memory* %call_400ae9, %struct.Memory** %MEMORY

  ; Code: jne .L_400b11	 RIP: 400af2	 Bytes: 6
  %loadMem_400af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400af2 = call %struct.Memory* @routine_jne_.L_400b11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400af2, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_400af2, %struct.Memory** %MEMORY

  %loadBr_400af2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400af2 = icmp eq i8 %loadBr_400af2, 1
  br i1 %cmpBr_400af2, label %block_.L_400b11, label %block_400af8

block_400af8:
  ; Code: movq $0x400f95, %rdi	 RIP: 400af8	 Bytes: 10
  %loadMem_400af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400af8 = call %struct.Memory* @routine_movq__0x400f95___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400af8)
  store %struct.Memory* %call_400af8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400b02	 Bytes: 2
  %loadMem_400b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b02 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b02)
  store %struct.Memory* %call_400b02, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 400b04	 Bytes: 5
  %loadMem1_400b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b04 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b04, i64 -1300, i64 5, i64 5)
  store %struct.Memory* %call1_400b04, %struct.Memory** %MEMORY

  %loadMem2_400b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b04 = load i64, i64* %3
  %call2_400b04 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_400b04, %struct.Memory* %loadMem2_400b04)
  store %struct.Memory* %call2_400b04, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 400b09	 Bytes: 3
  %loadMem_400b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b09 = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b09)
  store %struct.Memory* %call_400b09, %struct.Memory** %MEMORY

  ; Code: jmpq .L_400b2d	 RIP: 400b0c	 Bytes: 5
  %loadMem_400b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b0c = call %struct.Memory* @routine_jmpq_.L_400b2d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b0c, i64 33, i64 5)
  store %struct.Memory* %call_400b0c, %struct.Memory** %MEMORY

  br label %block_.L_400b2d

  ; Code: .L_400b11:	 RIP: 400b11	 Bytes: 0
block_.L_400b11:

  ; Code: movq $0x400fad, %rdi	 RIP: 400b11	 Bytes: 10
  %loadMem_400b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b11 = call %struct.Memory* @routine_movq__0x400fad___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b11)
  store %struct.Memory* %call_400b11, %struct.Memory** %MEMORY

  ; Code: movq 0x602098, %rsi	 RIP: 400b1b	 Bytes: 8
  %loadMem_400b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b1b = call %struct.Memory* @routine_movq_0x602098___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b1b)
  store %struct.Memory* %call_400b1b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 400b23	 Bytes: 2
  %loadMem_400b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b23 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b23)
  store %struct.Memory* %call_400b23, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 400b25	 Bytes: 5
  %loadMem1_400b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b25 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b25, i64 -1333, i64 5, i64 5)
  store %struct.Memory* %call1_400b25, %struct.Memory** %MEMORY

  %loadMem2_400b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b25 = load i64, i64* %3
  %call2_400b25 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_400b25, %struct.Memory* %loadMem2_400b25)
  store %struct.Memory* %call2_400b25, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x64(%rbp)	 RIP: 400b2a	 Bytes: 3
  %loadMem_400b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b2a = call %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b2a)
  store %struct.Memory* %call_400b2a, %struct.Memory** %MEMORY

  ; Code: .L_400b2d:	 RIP: 400b2d	 Bytes: 0
  br label %block_.L_400b2d
block_.L_400b2d:

  ; Code: xorl %edi, %edi	 RIP: 400b2d	 Bytes: 2
  %loadMem_400b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b2d = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b2d)
  store %struct.Memory* %call_400b2d, %struct.Memory** %MEMORY

  ; Code: callq .exit_plt	 RIP: 400b2f	 Bytes: 5
  %loadMem1_400b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_400b2f = call %struct.Memory* @routine_callq_.exit_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_400b2f, i64 -1279, i64 5, i64 5)
  store %struct.Memory* %call1_400b2f, %struct.Memory** %MEMORY

  %loadMem2_400b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b2f = load i64, i64* %3
  %call2_400b2f = call %struct.Memory* @ext_exit(%struct.State* %0, i64  %loadPC_400b2f, %struct.Memory* %loadMem2_400b2f)
  store %struct.Memory* %call2_400b2f, %struct.Memory** %MEMORY

  ; Code: nop	 RIP: 400b34	 Bytes: 1
  %loadMem_400b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b34 = call %struct.Memory* @routine_nop(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b34)
  store %struct.Memory* %call_400b34, %struct.Memory** %MEMORY

  ; Code: nop	 RIP: 400b35	 Bytes: 1
  %loadMem_400b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b35 = call %struct.Memory* @routine_nop(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b35)
  store %struct.Memory* %call_400b35, %struct.Memory** %MEMORY

  ; Code: nop	 RIP: 400b36	 Bytes: 1
  %loadMem_400b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b36 = call %struct.Memory* @routine_nop(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b36)
  store %struct.Memory* %call_400b36, %struct.Memory** %MEMORY

  ; Code: nop	 RIP: 400b37	 Bytes: 1
  %loadMem_400b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b37 = call %struct.Memory* @routine_nop(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b37)
  store %struct.Memory* %call_400b37, %struct.Memory** %MEMORY

  ; Code: nop	 RIP: 400b38	 Bytes: 1
  %loadMem_400b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b38 = call %struct.Memory* @routine_nop(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b38)
  store %struct.Memory* %call_400b38, %struct.Memory** %MEMORY

  ; Code: nop	 RIP: 400b39	 Bytes: 1
  %loadMem_400b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b39 = call %struct.Memory* @routine_nop(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b39)
  store %struct.Memory* %call_400b39, %struct.Memory** %MEMORY

  ; Code: nop	 RIP: 400b3a	 Bytes: 1
  %loadMem_400b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b3a = call %struct.Memory* @routine_nop(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b3a)
  store %struct.Memory* %call_400b3a, %struct.Memory** %MEMORY

  ; Code: nop	 RIP: 400b3b	 Bytes: 1
  %loadMem_400b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b3b = call %struct.Memory* @routine_nop(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b3b)
  store %struct.Memory* %call_400b3b, %struct.Memory** %MEMORY

  ; Code: nop	 RIP: 400b3c	 Bytes: 1
  %loadMem_400b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b3c = call %struct.Memory* @routine_nop(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b3c)
  store %struct.Memory* %call_400b3c, %struct.Memory** %MEMORY

  ; Code: nop	 RIP: 400b3d	 Bytes: 1
  %loadMem_400b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b3d = call %struct.Memory* @routine_nop(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b3d)
  store %struct.Memory* %call_400b3d, %struct.Memory** %MEMORY

  ; Code: nop	 RIP: 400b3e	 Bytes: 1
  %loadMem_400b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b3e = call %struct.Memory* @routine_nop(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b3e)
  store %struct.Memory* %call_400b3e, %struct.Memory** %MEMORY

  ; Code: nop	 RIP: 400b3f	 Bytes: 1
  %loadMem_400b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_400b3f = call %struct.Memory* @routine_nop(%struct.State* %0, i64  0, %struct.Memory* %loadMem_400b3f)
  store %struct.Memory* %call_400b3f, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_400b3f
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

define %struct.Memory* @routine_subq__0x70___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x400e34___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x400e34_type* @G__0x400e34 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movq__rax__0x6020a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6020a0_type* @G_0x6020a0 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__0x0__0x602058(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x602058_type* @G_0x602058 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0xe__0x6020b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6020b0_type* @G_0x6020b0 to i64), i64 14)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x1__0x602090(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x602090_type* @G_0x602090 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = sub i64 %14, 8
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jge_.L_400972(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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


define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 45)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jne_.L_400883(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 alwaysinline {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4007bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_addq__0x1___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 alwaysinline {
  %5 = inttoptr i64 %2 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i64 %3 to i8
  %8 = sub i8 %6, %7
  %9 = icmp ult i8 %6, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = zext i8 %8 to i32
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i8 %6, %7
  %19 = xor i8 %18, %8
  %20 = lshr i8 %19, 4
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i8 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i8 %8, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i8 %6, 7
  %29 = lshr i8 %7, 7
  %30 = xor i8 %28, %29
  %31 = xor i8 %26, %28
  %32 = add   i8 %31, %30
  %33 = icmp eq i8 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpb__0x0__0x1__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = add i64 %9, 1
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_je_.L_40087e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__ecx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define %struct.Memory* @routine_subl__0x61___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 97)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_400811(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4007f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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


define %struct.Memory* @routine_subl__0x63___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 99)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_jne_.L_400821(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_400806(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jmpq_.L_400879(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x400edc___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x400edc_type* @G__0x400edc to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x602080___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x602080_type* @G_0x602080 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x6020a0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x6020a0_type* @G_0x6020a0 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq___rax__rcx_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 alwaysinline {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x0___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4CALLI2InImEEEP6MemoryS4_R5StateT_S2_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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




define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0xffffffff___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 4294967295)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_callq_.exit_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_40095f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x400ef5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x400ef5_type* @G__0x400ef5 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x6020b0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x6020b0_type* @G__0x6020b0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.__isoc99_sscanf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_je_.L_4008dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x400ef8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x400ef8_type* @G__0x400ef8 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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








define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define %struct.Memory* @routine_cmpl__0x0__0x6020b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6020b0_type* @G_0x6020b0 to i64), i64 0)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_jg_.L_400919(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x400f17___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x400f17_type* @G__0x400f17 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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




define %struct.Memory* @routine_cmpl__0x64__0x6020b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6020b0_type* @G_0x6020b0 to i64), i64 100)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_jle_.L_40095a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x400f37___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x400f37_type* @G__0x400f37 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x64___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 100)
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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






define %struct.Memory* @routine_jmpq_.L_400964(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_jmpq_.L_40078b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_4009cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x400f5b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x400f5b_type* @G__0x400f5b to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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








define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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




define %struct.Memory* @routine_movq__0x400f75___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x400f75_type* @G__0x400f75 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x400ef4___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x400ef4_type* @G__0x400ef4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x400f73___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x400f73_type* @G__0x400f73 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x6020b0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x6020b0_type* @G_0x6020b0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__edx__0x602a20(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x602a20_type* @G_0x602a20 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__edx__0x6020b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6020b4_type* @G_0x6020b4 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x6020b0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6020b0_type* @G_0x6020b0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl__0x1__0x6020b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6020b0_type* @G_0x6020b0 to i64), i64 1)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L7CMOVNLEI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %6 = load i8, i8* %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  %14 = xor i1 %10, %13
  %15 = xor i1 %14, true
  %16 = and i1 %7, %15
  %17 = load i64, i64* %2, align 8
  %18 = select i1 %16, i64 %3, i64 %17
  store i64 %18, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmovgq__rcx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7CMOVNLEI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl_0x6020b4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6020b4_type* @G_0x6020b4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x602a20___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 ptrtoint( %G_0x602a20_type* @G_0x602a20 to i64))
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




define %struct.Memory* @routine_callq_.printf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x602060___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x602060_type* @G_0x602060 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_callq_.fflush_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__0x602098(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x602098_type* @G_0x602098 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_cmpl__0x64__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 100)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_400a78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x65__0x602890___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = add i64 %10, ptrtoint( %G_0x602890___rax_4__type* @G_0x602890___rax_4_ to i64)
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 101)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_400a51(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0xc7__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 199)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_400ab8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x65__0x602570___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = add i64 %10, ptrtoint( %G_0x602570___rax_4__type* @G_0x602570___rax_4_ to i64)
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 101)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movl__0x65__0x602250___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = add i64 %10, ptrtoint( %G_0x602250___rax_4__type* @G_0x602250___rax_4_ to i64)
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 101)
  ret %struct.Memory* %14
}








define %struct.Memory* @routine_jmpq_.L_400a7f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_xorl__edi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_callq_.find(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x602058(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x602058_type* @G_0x602058 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_400ae9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_cmpq__0x0__0x602098(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x602098_type* @G_0x602098 to i64), i64 0)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_movl__0xa___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 10)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.putchar_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_cmpq__0x1__0x602098(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x602098_type* @G_0x602098 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_400b11(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x400f95___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x400f95_type* @G__0x400f95 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_400b2d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x400fad___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x400fad_type* @G__0x400fad to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x602098___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x602098_type* @G_0x602098 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8NOP_IMPLIJEEEP6MemoryS2_R5StateDpT_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376)) #10 alwaysinline {
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_nop(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8NOP_IMPLIJEEEP6MemoryS2_R5StateDpT_(%struct.Memory* %2, %struct.State* %0)
  ret %struct.Memory* %8
}























