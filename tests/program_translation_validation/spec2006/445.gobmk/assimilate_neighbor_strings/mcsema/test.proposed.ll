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

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40cd50.assimilate_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x99da00_type = type <{ [4 x i8] }>
@G_0x99da00= global %G_0x99da00_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x99da04_type = type <{ [4 x i8] }>
@G_0x99da04= global %G_0x99da04_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x99da08_type = type <{ [4 x i8] }>
@G_0x99da08= global %G_0x99da08_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xa0e710_type = type <{ [8 x i8] }>
@G_0xa0e710= global %G_0xa0e710_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57a16e_type = type <{ [8 x i8] }>
@G__0x57a16e= global %G__0x57a16e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57a321_type = type <{ [8 x i8] }>
@G__0x57a321= global %G__0x57a321_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x99da00_type = type <{ [8 x i8] }>
@G__0x99da00= global %G__0x99da00_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xa7f430_type = type <{ [8 x i8] }>
@G__0xa7f430= global %G__0xa7f430_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @assimilate_neighbor_strings(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .assimilate_neighbor_strings:	 RIP: 40c070	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 40c070	 Bytes: 1
  %loadMem_40c070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c070 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c070)
  store %struct.Memory* %call_40c070, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 40c071	 Bytes: 3
  %loadMem_40c071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c071 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c071)
  store %struct.Memory* %call_40c071, %struct.Memory** %MEMORY

  ; Code: subq $0x30, %rsp	 RIP: 40c074	 Bytes: 4
  %loadMem_40c074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c074 = call %struct.Memory* @routine_subq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c074)
  store %struct.Memory* %call_40c074, %struct.Memory** %MEMORY

  ; Code: movq $0x99da00, %rax	 RIP: 40c078	 Bytes: 10
  %loadMem_40c078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c078 = call %struct.Memory* @routine_movq__0x99da00___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c078)
  store %struct.Memory* %call_40c078, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 40c082	 Bytes: 5
  %loadMem_40c082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c082 = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c082)
  store %struct.Memory* %call_40c082, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 40c087	 Bytes: 3
  %loadMem_40c087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c087 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c087)
  store %struct.Memory* %call_40c087, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40c08a	 Bytes: 4
  %loadMem_40c08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c08a = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c08a)
  store %struct.Memory* %call_40c08a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rdx,1), %edi	 RIP: 40c08e	 Bytes: 8
  %loadMem_40c08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c08e = call %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c08e)
  store %struct.Memory* %call_40c08e, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0xc(%rbp)	 RIP: 40c096	 Bytes: 3
  %loadMem_40c096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c096 = call %struct.Memory* @routine_movl__edi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c096)
  store %struct.Memory* %call_40c096, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %ecx	 RIP: 40c099	 Bytes: 3
  %loadMem_40c099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c099 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c099)
  store %struct.Memory* %call_40c099, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x10(%rbp)	 RIP: 40c09c	 Bytes: 3
  %loadMem_40c09c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c09c = call %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c09c)
  store %struct.Memory* %call_40c09c, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40c09f	 Bytes: 8
  %loadMem_40c09f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c09f = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c09f)
  store %struct.Memory* %call_40c09f, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx)	 RIP: 40c0a7	 Bytes: 3
  %loadMem_40c0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0a7 = call %struct.Memory* @routine_movq__rax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0a7)
  store %struct.Memory* %call_40c0a7, %struct.Memory** %MEMORY

  ; Code: movl 0x99da00, %ecx	 RIP: 40c0aa	 Bytes: 7
  %loadMem_40c0aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0aa = call %struct.Memory* @routine_movl_0x99da00___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0aa)
  store %struct.Memory* %call_40c0aa, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rax	 RIP: 40c0b1	 Bytes: 8
  %loadMem_40c0b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0b1 = call %struct.Memory* @routine_movq_0xa0e710___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0b1)
  store %struct.Memory* %call_40c0b1, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 40c0b9	 Bytes: 3
  %loadMem_40c0b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0b9 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0b9)
  store %struct.Memory* %call_40c0b9, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rdx	 RIP: 40c0bc	 Bytes: 4
  %loadMem_40c0bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0bc = call %struct.Memory* @routine_addq__0x10___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0bc)
  store %struct.Memory* %call_40c0bc, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0xa0e710	 RIP: 40c0c0	 Bytes: 8
  %loadMem_40c0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0c0 = call %struct.Memory* @routine_movq__rdx__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0c0)
  store %struct.Memory* %call_40c0c0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rax)	 RIP: 40c0c8	 Bytes: 3
  %loadMem_40c0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0c8 = call %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0c8)
  store %struct.Memory* %call_40c0c8, %struct.Memory** %MEMORY

  ; Code: movl 0x99da00, %ecx	 RIP: 40c0cb	 Bytes: 7
  %loadMem_40c0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0cb = call %struct.Memory* @routine_movl_0x99da00___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0cb)
  store %struct.Memory* %call_40c0cb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edi	 RIP: 40c0d2	 Bytes: 2
  %loadMem_40c0d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0d2 = call %struct.Memory* @routine_movl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0d2)
  store %struct.Memory* %call_40c0d2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edi	 RIP: 40c0d4	 Bytes: 3
  %loadMem_40c0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0d4 = call %struct.Memory* @routine_addl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0d4)
  store %struct.Memory* %call_40c0d4, %struct.Memory** %MEMORY

  ; Code: movl %edi, 0x99da00	 RIP: 40c0d7	 Bytes: 7
  %loadMem_40c0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0d7 = call %struct.Memory* @routine_movl__edi__0x99da00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0d7)
  store %struct.Memory* %call_40c0d7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x8(%rbp)	 RIP: 40c0de	 Bytes: 3
  %loadMem_40c0de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0de = call %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0de)
  store %struct.Memory* %call_40c0de, %struct.Memory** %MEMORY

  ; Code: cmpl $0xf0, -0x8(%rbp)	 RIP: 40c0e1	 Bytes: 7
  %loadMem_40c0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0e1 = call %struct.Memory* @routine_cmpl__0xf0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0e1)
  store %struct.Memory* %call_40c0e1, %struct.Memory** %MEMORY

  ; Code: jge .L_40c0f3	 RIP: 40c0e8	 Bytes: 6
  %loadMem_40c0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0e8 = call %struct.Memory* @routine_jge_.L_40c0f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0e8, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_40c0e8, %struct.Memory** %MEMORY

  %loadBr_40c0e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c0e8 = icmp eq i8 %loadBr_40c0e8, 1
  br i1 %cmpBr_40c0e8, label %block_.L_40c0f3, label %block_40c0ee

block_40c0ee:
  ; Code: jmpq .L_40c14c	 RIP: 40c0ee	 Bytes: 5
  %loadMem_40c0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0ee = call %struct.Memory* @routine_jmpq_.L_40c14c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0ee, i64 94, i64 5)
  store %struct.Memory* %call_40c0ee, %struct.Memory** %MEMORY

  br label %block_.L_40c14c

  ; Code: .L_40c0f3:	 RIP: 40c0f3	 Bytes: 0
block_.L_40c0f3:

  ; Code: movq $0x57a16e, %rdi	 RIP: 40c0f3	 Bytes: 10
  %loadMem_40c0f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0f3 = call %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0f3)
  store %struct.Memory* %call_40c0f3, %struct.Memory** %MEMORY

  ; Code: movl $0xce0, %esi	 RIP: 40c0fd	 Bytes: 5
  %loadMem_40c0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c0fd = call %struct.Memory* @routine_movl__0xce0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c0fd)
  store %struct.Memory* %call_40c0fd, %struct.Memory** %MEMORY

  ; Code: movq $0x57a321, %rdx	 RIP: 40c102	 Bytes: 10
  %loadMem_40c102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c102 = call %struct.Memory* @routine_movq__0x57a321___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c102)
  store %struct.Memory* %call_40c102, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 40c10c	 Bytes: 5
  %loadMem_40c10c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c10c = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c10c)
  store %struct.Memory* %call_40c10c, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c111	 Bytes: 3
  %loadMem_40c111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c111 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c111)
  store %struct.Memory* %call_40c111, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 40c114	 Bytes: 3
  %loadMem_40c114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c114 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c114)
  store %struct.Memory* %call_40c114, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 40c117	 Bytes: 2
  %loadMem_40c117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c117 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c117)
  store %struct.Memory* %call_40c117, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x20(%rbp)	 RIP: 40c119	 Bytes: 4
  %loadMem_40c119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c119 = call %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c119)
  store %struct.Memory* %call_40c119, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 40c11d	 Bytes: 1
  %loadMem_40c11d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c11d = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c11d)
  store %struct.Memory* %call_40c11d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 40c11e	 Bytes: 3
  %loadMem_40c11e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c11e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c11e)
  store %struct.Memory* %call_40c11e, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 40c121	 Bytes: 2
  %loadMem_40c121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c121 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c121)
  store %struct.Memory* %call_40c121, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40c123	 Bytes: 3
  %loadMem_40c123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c123 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c123)
  store %struct.Memory* %call_40c123, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40c126	 Bytes: 4
  %loadMem_40c126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c126 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c126)
  store %struct.Memory* %call_40c126, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 40c12a	 Bytes: 3
  %loadMem_40c12a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c12a = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c12a)
  store %struct.Memory* %call_40c12a, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 40c12d	 Bytes: 3
  %loadMem_40c12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c12d = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c12d)
  store %struct.Memory* %call_40c12d, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 40c130	 Bytes: 1
  %loadMem_40c130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c130 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c130)
  store %struct.Memory* %call_40c130, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 40c131	 Bytes: 2
  %loadMem_40c131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c131 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c131)
  store %struct.Memory* %call_40c131, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40c133	 Bytes: 3
  %loadMem_40c133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c133 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c133)
  store %struct.Memory* %call_40c133, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %r9	 RIP: 40c136	 Bytes: 4
  %loadMem_40c136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c136 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c136)
  store %struct.Memory* %call_40c136, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x28(%rbp)	 RIP: 40c13a	 Bytes: 3
  %loadMem_40c13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c13a = call %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c13a)
  store %struct.Memory* %call_40c13a, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdx	 RIP: 40c13d	 Bytes: 3
  %loadMem_40c13d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c13d = call %struct.Memory* @routine_movq__r9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c13d)
  store %struct.Memory* %call_40c13d, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 40c140	 Bytes: 3
  %loadMem_40c140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c140 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c140)
  store %struct.Memory* %call_40c140, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %r8d	 RIP: 40c143	 Bytes: 4
  %loadMem_40c143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c143 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c143)
  store %struct.Memory* %call_40c143, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 40c147	 Bytes: 5
  %loadMem1_40c147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40c147 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40c147, i64 286537, i64 5, i64 5)
  store %struct.Memory* %call1_40c147, %struct.Memory** %MEMORY

  %loadMem2_40c147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40c147 = load i64, i64* %3
  %call2_40c147 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_40c147, %struct.Memory* %loadMem2_40c147)
  store %struct.Memory* %call2_40c147, %struct.Memory** %MEMORY

  ; Code: .L_40c14c:	 RIP: 40c14c	 Bytes: 0
  br label %block_.L_40c14c
block_.L_40c14c:

  ; Code: movq $0xa7f430, %rax	 RIP: 40c14c	 Bytes: 10
  %loadMem_40c14c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c14c = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c14c)
  store %struct.Memory* %call_40c14c, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 40c156	 Bytes: 3
  %loadMem_40c156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c156 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c156)
  store %struct.Memory* %call_40c156, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40c159	 Bytes: 4
  %loadMem_40c159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c159 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c159)
  store %struct.Memory* %call_40c159, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xaab3f0(,%rdx,4)	 RIP: 40c15d	 Bytes: 7
  %loadMem_40c15d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c15d = call %struct.Memory* @routine_movl__ecx__0xaab3f0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c15d)
  store %struct.Memory* %call_40c15d, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c164	 Bytes: 3
  %loadMem_40c164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c164 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c164)
  store %struct.Memory* %call_40c164, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40c167	 Bytes: 4
  %loadMem_40c167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c167 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c167)
  store %struct.Memory* %call_40c167, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xaaba30(,%rdx,4)	 RIP: 40c16b	 Bytes: 7
  %loadMem_40c16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c16b = call %struct.Memory* @routine_movl__ecx__0xaaba30___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c16b)
  store %struct.Memory* %call_40c16b, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 40c172	 Bytes: 3
  %loadMem_40c172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c172 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c172)
  store %struct.Memory* %call_40c172, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c175	 Bytes: 4
  %loadMem_40c175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c175 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c175)
  store %struct.Memory* %call_40c175, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c179	 Bytes: 7
  %loadMem_40c179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c179 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c179)
  store %struct.Memory* %call_40c179, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c180	 Bytes: 3
  %loadMem_40c180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c180 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c180)
  store %struct.Memory* %call_40c180, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c183	 Bytes: 3
  %loadMem_40c183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c183 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c183)
  store %struct.Memory* %call_40c183, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rsi)	 RIP: 40c186	 Bytes: 2
  %loadMem_40c186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c186 = call %struct.Memory* @routine_movl__ecx____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c186)
  store %struct.Memory* %call_40c186, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c188	 Bytes: 4
  %loadMem_40c188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c188 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c188)
  store %struct.Memory* %call_40c188, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c18c	 Bytes: 7
  %loadMem_40c18c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c18c = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c18c)
  store %struct.Memory* %call_40c18c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c193	 Bytes: 3
  %loadMem_40c193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c193 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c193)
  store %struct.Memory* %call_40c193, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c196	 Bytes: 3
  %loadMem_40c196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c196 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c196)
  store %struct.Memory* %call_40c196, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x4(%rsi)	 RIP: 40c199	 Bytes: 7
  %loadMem_40c199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c199 = call %struct.Memory* @routine_movl__0x1__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c199)
  store %struct.Memory* %call_40c199, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c1a0	 Bytes: 3
  %loadMem_40c1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1a0 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1a0)
  store %struct.Memory* %call_40c1a0, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c1a3	 Bytes: 4
  %loadMem_40c1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1a3 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1a3)
  store %struct.Memory* %call_40c1a3, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c1a7	 Bytes: 7
  %loadMem_40c1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1a7 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1a7)
  store %struct.Memory* %call_40c1a7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c1ae	 Bytes: 3
  %loadMem_40c1ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1ae = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1ae)
  store %struct.Memory* %call_40c1ae, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c1b1	 Bytes: 3
  %loadMem_40c1b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1b1 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1b1)
  store %struct.Memory* %call_40c1b1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rsi)	 RIP: 40c1b4	 Bytes: 3
  %loadMem_40c1b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1b4 = call %struct.Memory* @routine_movl__ecx__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1b4)
  store %struct.Memory* %call_40c1b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c1b7	 Bytes: 4
  %loadMem_40c1b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1b7 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1b7)
  store %struct.Memory* %call_40c1b7, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c1bb	 Bytes: 7
  %loadMem_40c1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1bb = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1bb)
  store %struct.Memory* %call_40c1bb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c1c2	 Bytes: 3
  %loadMem_40c1c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1c2 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1c2)
  store %struct.Memory* %call_40c1c2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c1c5	 Bytes: 3
  %loadMem_40c1c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1c5 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1c5)
  store %struct.Memory* %call_40c1c5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0xc(%rsi)	 RIP: 40c1c8	 Bytes: 7
  %loadMem_40c1c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1c8 = call %struct.Memory* @routine_movl__0x0__0xc__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1c8)
  store %struct.Memory* %call_40c1c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c1cf	 Bytes: 4
  %loadMem_40c1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1cf = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1cf)
  store %struct.Memory* %call_40c1cf, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c1d3	 Bytes: 7
  %loadMem_40c1d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1d3 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1d3)
  store %struct.Memory* %call_40c1d3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c1da	 Bytes: 3
  %loadMem_40c1da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1da = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1da)
  store %struct.Memory* %call_40c1da, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c1dd	 Bytes: 3
  %loadMem_40c1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1dd = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1dd)
  store %struct.Memory* %call_40c1dd, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x60(%rsi)	 RIP: 40c1e0	 Bytes: 7
  %loadMem_40c1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1e0 = call %struct.Memory* @routine_movl__0x0__0x60__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1e0)
  store %struct.Memory* %call_40c1e0, %struct.Memory** %MEMORY

  ; Code: movl 0x99da04, %ecx	 RIP: 40c1e7	 Bytes: 7
  %loadMem_40c1e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1e7 = call %struct.Memory* @routine_movl_0x99da04___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1e7)
  store %struct.Memory* %call_40c1e7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40c1ee	 Bytes: 3
  %loadMem_40c1ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1ee = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1ee)
  store %struct.Memory* %call_40c1ee, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x99da04	 RIP: 40c1f1	 Bytes: 7
  %loadMem_40c1f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1f1 = call %struct.Memory* @routine_movl__ecx__0x99da04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1f1)
  store %struct.Memory* %call_40c1f1, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 40c1f8	 Bytes: 7
  %loadMem_40c1f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1f8 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1f8)
  store %struct.Memory* %call_40c1f8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40c1ff	 Bytes: 3
  %loadMem_40c1ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c1ff = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c1ff)
  store %struct.Memory* %call_40c1ff, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x99da08	 RIP: 40c202	 Bytes: 7
  %loadMem_40c202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c202 = call %struct.Memory* @routine_movl__ecx__0x99da08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c202)
  store %struct.Memory* %call_40c202, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 40c209	 Bytes: 7
  %loadMem_40c209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c209 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c209)
  store %struct.Memory* %call_40c209, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c210	 Bytes: 4
  %loadMem_40c210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c210 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c210)
  store %struct.Memory* %call_40c210, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c214	 Bytes: 7
  %loadMem_40c214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c214 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c214)
  store %struct.Memory* %call_40c214, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40c21b	 Bytes: 3
  %loadMem_40c21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c21b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c21b)
  store %struct.Memory* %call_40c21b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 40c21e	 Bytes: 6
  %loadMem_40c21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c21e = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c21e)
  store %struct.Memory* %call_40c21e, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c224	 Bytes: 3
  %loadMem_40c224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c224 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c224)
  store %struct.Memory* %call_40c224, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40c227	 Bytes: 3
  %loadMem_40c227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c227 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c227)
  store %struct.Memory* %call_40c227, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 40c22a	 Bytes: 3
  %loadMem_40c22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c22a = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c22a)
  store %struct.Memory* %call_40c22a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 40c22d	 Bytes: 8
  %loadMem_40c22d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c22d = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c22d)
  store %struct.Memory* %call_40c22d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 40c235	 Bytes: 3
  %loadMem_40c235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c235 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c235)
  store %struct.Memory* %call_40c235, %struct.Memory** %MEMORY

  ; Code: jne .L_40c2f6	 RIP: 40c238	 Bytes: 6
  %loadMem_40c238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c238 = call %struct.Memory* @routine_jne_.L_40c2f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c238, i8* %BRANCH_TAKEN, i64 190, i64 6, i64 6)
  store %struct.Memory* %call_40c238, %struct.Memory** %MEMORY

  %loadBr_40c238 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c238 = icmp eq i8 %loadBr_40c238, 1
  br i1 %cmpBr_40c238, label %block_.L_40c2f6, label %block_40c23e

block_40c23e:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40c23e	 Bytes: 3
  %loadMem_40c23e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c23e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c23e)
  store %struct.Memory* %call_40c23e, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40c241	 Bytes: 3
  %loadMem_40c241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c241 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c241)
  store %struct.Memory* %call_40c241, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40c244	 Bytes: 3
  %loadMem_40c244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c244 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c244)
  store %struct.Memory* %call_40c244, %struct.Memory** %MEMORY

  ; Code: movl 0xaaadb0(,%rcx,4), %eax	 RIP: 40c247	 Bytes: 7
  %loadMem_40c247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c247 = call %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c247)
  store %struct.Memory* %call_40c247, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da04, %eax	 RIP: 40c24e	 Bytes: 7
  %loadMem_40c24e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c24e = call %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c24e)
  store %struct.Memory* %call_40c24e, %struct.Memory** %MEMORY

  ; Code: je .L_40c2f6	 RIP: 40c255	 Bytes: 6
  %loadMem_40c255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c255 = call %struct.Memory* @routine_je_.L_40c2f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c255, i8* %BRANCH_TAKEN, i64 161, i64 6, i64 6)
  store %struct.Memory* %call_40c255, %struct.Memory** %MEMORY

  %loadBr_40c255 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c255 = icmp eq i8 %loadBr_40c255, 1
  br i1 %cmpBr_40c255, label %block_.L_40c2f6, label %block_40c25b

block_40c25b:
  ; Code: jmpq .L_40c260	 RIP: 40c25b	 Bytes: 5
  %loadMem_40c25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c25b = call %struct.Memory* @routine_jmpq_.L_40c260(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c25b, i64 5, i64 5)
  store %struct.Memory* %call_40c25b, %struct.Memory** %MEMORY

  br label %block_.L_40c260

  ; Code: .L_40c260:	 RIP: 40c260	 Bytes: 0
block_.L_40c260:

  ; Code: movq $0xa7f430, %rax	 RIP: 40c260	 Bytes: 10
  %loadMem_40c260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c260 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c260)
  store %struct.Memory* %call_40c260, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40c26a	 Bytes: 4
  %loadMem_40c26a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c26a = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c26a)
  store %struct.Memory* %call_40c26a, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40c26e	 Bytes: 7
  %loadMem_40c26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c26e = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c26e)
  store %struct.Memory* %call_40c26e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40c275	 Bytes: 3
  %loadMem_40c275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c275 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c275)
  store %struct.Memory* %call_40c275, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 40c278	 Bytes: 4
  %loadMem_40c278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c278 = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c278)
  store %struct.Memory* %call_40c278, %struct.Memory** %MEMORY

  ; Code: jge .L_40c2b9	 RIP: 40c27c	 Bytes: 6
  %loadMem_40c27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c27c = call %struct.Memory* @routine_jge_.L_40c2b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c27c, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_40c27c, %struct.Memory** %MEMORY

  %loadBr_40c27c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c27c = icmp eq i8 %loadBr_40c27c, 1
  br i1 %cmpBr_40c27c, label %block_.L_40c2b9, label %block_40c282

block_40c282:
  ; Code: movq $0xa7f430, %rax	 RIP: 40c282	 Bytes: 10
  %loadMem_40c282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c282 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c282)
  store %struct.Memory* %call_40c282, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c28c	 Bytes: 3
  %loadMem_40c28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c28c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c28c)
  store %struct.Memory* %call_40c28c, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40c28f	 Bytes: 3
  %loadMem_40c28f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c28f = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c28f)
  store %struct.Memory* %call_40c28f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c292	 Bytes: 4
  %loadMem_40c292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c292 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c292)
  store %struct.Memory* %call_40c292, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c296	 Bytes: 7
  %loadMem_40c296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c296 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c296)
  store %struct.Memory* %call_40c296, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c29d	 Bytes: 3
  %loadMem_40c29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c29d = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c29d)
  store %struct.Memory* %call_40c29d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c2a0	 Bytes: 3
  %loadMem_40c2a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2a0 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2a0)
  store %struct.Memory* %call_40c2a0, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c2a3	 Bytes: 4
  %loadMem_40c2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2a3 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2a3)
  store %struct.Memory* %call_40c2a3, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c2a7	 Bytes: 7
  %loadMem_40c2a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2a7 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2a7)
  store %struct.Memory* %call_40c2a7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40c2ae	 Bytes: 3
  %loadMem_40c2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2ae = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2ae)
  store %struct.Memory* %call_40c2ae, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 40c2b1	 Bytes: 4
  %loadMem_40c2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2b1 = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2b1)
  store %struct.Memory* %call_40c2b1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 40c2b5	 Bytes: 4
  %loadMem_40c2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2b5 = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2b5)
  store %struct.Memory* %call_40c2b5, %struct.Memory** %MEMORY

  ; Code: .L_40c2b9:	 RIP: 40c2b9	 Bytes: 0
  br label %block_.L_40c2b9
block_.L_40c2b9:

  ; Code: movq $0xa7f430, %rax	 RIP: 40c2b9	 Bytes: 10
  %loadMem_40c2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2b9 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2b9)
  store %struct.Memory* %call_40c2b9, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40c2c3	 Bytes: 4
  %loadMem_40c2c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2c3 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2c3)
  store %struct.Memory* %call_40c2c3, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40c2c7	 Bytes: 7
  %loadMem_40c2c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2c7 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2c7)
  store %struct.Memory* %call_40c2c7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40c2ce	 Bytes: 3
  %loadMem_40c2ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2ce = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2ce)
  store %struct.Memory* %call_40c2ce, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40c2d1	 Bytes: 3
  %loadMem_40c2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2d1 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2d1)
  store %struct.Memory* %call_40c2d1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40c2d4	 Bytes: 3
  %loadMem_40c2d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2d4 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2d4)
  store %struct.Memory* %call_40c2d4, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 40c2d7	 Bytes: 3
  %loadMem_40c2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2d7 = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2d7)
  store %struct.Memory* %call_40c2d7, %struct.Memory** %MEMORY

  ; Code: movl 0x99da04, %edx	 RIP: 40c2da	 Bytes: 7
  %loadMem_40c2da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2da = call %struct.Memory* @routine_movl_0x99da04___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2da)
  store %struct.Memory* %call_40c2da, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 40c2e1	 Bytes: 3
  %loadMem_40c2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2e1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2e1)
  store %struct.Memory* %call_40c2e1, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %esi	 RIP: 40c2e4	 Bytes: 3
  %loadMem_40c2e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2e4 = call %struct.Memory* @routine_addl__0x14___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2e4)
  store %struct.Memory* %call_40c2e4, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rax	 RIP: 40c2e7	 Bytes: 3
  %loadMem_40c2e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2e7 = call %struct.Memory* @routine_movslq__esi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2e7)
  store %struct.Memory* %call_40c2e7, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xaaadb0(,%rax,4)	 RIP: 40c2ea	 Bytes: 7
  %loadMem_40c2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2ea = call %struct.Memory* @routine_movl__edx__0xaaadb0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2ea)
  store %struct.Memory* %call_40c2ea, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c4fe	 RIP: 40c2f1	 Bytes: 5
  %loadMem_40c2f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2f1 = call %struct.Memory* @routine_jmpq_.L_40c4fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2f1, i64 525, i64 5)
  store %struct.Memory* %call_40c2f1, %struct.Memory** %MEMORY

  br label %block_.L_40c4fe

  ; Code: .L_40c2f6:	 RIP: 40c2f6	 Bytes: 0
block_.L_40c2f6:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40c2f6	 Bytes: 3
  %loadMem_40c2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2f6 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2f6)
  store %struct.Memory* %call_40c2f6, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40c2f9	 Bytes: 3
  %loadMem_40c2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2f9 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2f9)
  store %struct.Memory* %call_40c2f9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40c2fc	 Bytes: 3
  %loadMem_40c2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2fc = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2fc)
  store %struct.Memory* %call_40c2fc, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40c2ff	 Bytes: 8
  %loadMem_40c2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c2ff = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c2ff)
  store %struct.Memory* %call_40c2ff, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 40c307	 Bytes: 3
  %loadMem_40c307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c307 = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c307)
  store %struct.Memory* %call_40c307, %struct.Memory** %MEMORY

  ; Code: jne .L_40c492	 RIP: 40c30a	 Bytes: 6
  %loadMem_40c30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c30a = call %struct.Memory* @routine_jne_.L_40c492(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c30a, i8* %BRANCH_TAKEN, i64 392, i64 6, i64 6)
  store %struct.Memory* %call_40c30a, %struct.Memory** %MEMORY

  %loadBr_40c30a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c30a = icmp eq i8 %loadBr_40c30a, 1
  br i1 %cmpBr_40c30a, label %block_.L_40c492, label %block_40c310

block_40c310:
  ; Code: movq $0xa7f430, %rax	 RIP: 40c310	 Bytes: 10
  %loadMem_40c310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c310 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c310)
  store %struct.Memory* %call_40c310, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c31a	 Bytes: 3
  %loadMem_40c31a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c31a = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c31a)
  store %struct.Memory* %call_40c31a, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40c31d	 Bytes: 3
  %loadMem_40c31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c31d = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c31d)
  store %struct.Memory* %call_40c31d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40c320	 Bytes: 3
  %loadMem_40c320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c320 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c320)
  store %struct.Memory* %call_40c320, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c323	 Bytes: 8
  %loadMem_40c323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c323 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c323)
  store %struct.Memory* %call_40c323, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c32b	 Bytes: 7
  %loadMem_40c32b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c32b = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c32b)
  store %struct.Memory* %call_40c32b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40c332	 Bytes: 3
  %loadMem_40c332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c332 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c332)
  store %struct.Memory* %call_40c332, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40c335	 Bytes: 6
  %loadMem_40c335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c335 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c335)
  store %struct.Memory* %call_40c335, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40c33b	 Bytes: 7
  %loadMem_40c33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c33b = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c33b)
  store %struct.Memory* %call_40c33b, %struct.Memory** %MEMORY

  ; Code: je .L_40c492	 RIP: 40c342	 Bytes: 6
  %loadMem_40c342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c342 = call %struct.Memory* @routine_je_.L_40c492(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c342, i8* %BRANCH_TAKEN, i64 336, i64 6, i64 6)
  store %struct.Memory* %call_40c342, %struct.Memory** %MEMORY

  %loadBr_40c342 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c342 = icmp eq i8 %loadBr_40c342, 1
  br i1 %cmpBr_40c342, label %block_.L_40c492, label %block_40c348

block_40c348:
  ; Code: movq $0xa7f430, %rax	 RIP: 40c348	 Bytes: 10
  %loadMem_40c348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c348 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c348)
  store %struct.Memory* %call_40c348, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c352	 Bytes: 3
  %loadMem_40c352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c352 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c352)
  store %struct.Memory* %call_40c352, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40c355	 Bytes: 3
  %loadMem_40c355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c355 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c355)
  store %struct.Memory* %call_40c355, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40c358	 Bytes: 3
  %loadMem_40c358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c358 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c358)
  store %struct.Memory* %call_40c358, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40c35b	 Bytes: 7
  %loadMem_40c35b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c35b = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c35b)
  store %struct.Memory* %call_40c35b, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c362	 Bytes: 4
  %loadMem_40c362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c362 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c362)
  store %struct.Memory* %call_40c362, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c366	 Bytes: 7
  %loadMem_40c366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c366 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c366)
  store %struct.Memory* %call_40c366, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c36d	 Bytes: 3
  %loadMem_40c36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c36d = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c36d)
  store %struct.Memory* %call_40c36d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c370	 Bytes: 3
  %loadMem_40c370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c370 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c370)
  store %struct.Memory* %call_40c370, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c373	 Bytes: 4
  %loadMem_40c373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c373 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c373)
  store %struct.Memory* %call_40c373, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c377	 Bytes: 7
  %loadMem_40c377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c377 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c377)
  store %struct.Memory* %call_40c377, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40c37e	 Bytes: 3
  %loadMem_40c37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c37e = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c37e)
  store %struct.Memory* %call_40c37e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40c381	 Bytes: 3
  %loadMem_40c381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c381 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c381)
  store %struct.Memory* %call_40c381, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40c384	 Bytes: 4
  %loadMem_40c384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c384 = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c384)
  store %struct.Memory* %call_40c384, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40c388	 Bytes: 3
  %loadMem_40c388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c388 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c388)
  store %struct.Memory* %call_40c388, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40c38b	 Bytes: 4
  %loadMem_40c38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c38b = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c38b)
  store %struct.Memory* %call_40c38b, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40c38f	 Bytes: 4
  %loadMem_40c38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c38f = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c38f)
  store %struct.Memory* %call_40c38f, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40c393	 Bytes: 3
  %loadMem_40c393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c393 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c393)
  store %struct.Memory* %call_40c393, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40c396	 Bytes: 4
  %loadMem_40c396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c396 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c396)
  store %struct.Memory* %call_40c396, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c39a	 Bytes: 3
  %loadMem_40c39a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c39a = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c39a)
  store %struct.Memory* %call_40c39a, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40c39d	 Bytes: 3
  %loadMem_40c39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c39d = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c39d)
  store %struct.Memory* %call_40c39d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40c3a0	 Bytes: 3
  %loadMem_40c3a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3a0 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3a0)
  store %struct.Memory* %call_40c3a0, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c3a3	 Bytes: 8
  %loadMem_40c3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3a3 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3a3)
  store %struct.Memory* %call_40c3a3, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c3ab	 Bytes: 7
  %loadMem_40c3ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3ab = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3ab)
  store %struct.Memory* %call_40c3ab, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c3b2	 Bytes: 3
  %loadMem_40c3b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3b2 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3b2)
  store %struct.Memory* %call_40c3b2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c3b5	 Bytes: 3
  %loadMem_40c3b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3b5 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3b5)
  store %struct.Memory* %call_40c3b5, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40c3b8	 Bytes: 4
  %loadMem_40c3b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3b8 = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3b8)
  store %struct.Memory* %call_40c3b8, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40c3bc	 Bytes: 8
  %loadMem_40c3bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3bc = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3bc)
  store %struct.Memory* %call_40c3bc, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40c3c4	 Bytes: 3
  %loadMem_40c3c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3c4 = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3c4)
  store %struct.Memory* %call_40c3c4, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c3c7	 Bytes: 3
  %loadMem_40c3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3c7 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3c7)
  store %struct.Memory* %call_40c3c7, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40c3ca	 Bytes: 3
  %loadMem_40c3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3ca = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3ca)
  store %struct.Memory* %call_40c3ca, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40c3cd	 Bytes: 3
  %loadMem_40c3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3cd = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3cd)
  store %struct.Memory* %call_40c3cd, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c3d0	 Bytes: 8
  %loadMem_40c3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3d0 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3d0)
  store %struct.Memory* %call_40c3d0, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c3d8	 Bytes: 7
  %loadMem_40c3d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3d8 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3d8)
  store %struct.Memory* %call_40c3d8, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c3df	 Bytes: 3
  %loadMem_40c3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3df = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3df)
  store %struct.Memory* %call_40c3df, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c3e2	 Bytes: 3
  %loadMem_40c3e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3e2 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3e2)
  store %struct.Memory* %call_40c3e2, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40c3e5	 Bytes: 3
  %loadMem_40c3e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3e5 = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3e5)
  store %struct.Memory* %call_40c3e5, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40c3e8	 Bytes: 8
  %loadMem_40c3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3e8 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3e8)
  store %struct.Memory* %call_40c3e8, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40c3f0	 Bytes: 3
  %loadMem_40c3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3f0 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3f0)
  store %struct.Memory* %call_40c3f0, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40c3f3	 Bytes: 4
  %loadMem_40c3f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3f3 = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3f3)
  store %struct.Memory* %call_40c3f3, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40c3f7	 Bytes: 8
  %loadMem_40c3f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3f7 = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3f7)
  store %struct.Memory* %call_40c3f7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40c3ff	 Bytes: 3
  %loadMem_40c3ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c3ff = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c3ff)
  store %struct.Memory* %call_40c3ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40c402	 Bytes: 4
  %loadMem_40c402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c402 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c402)
  store %struct.Memory* %call_40c402, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40c406	 Bytes: 7
  %loadMem_40c406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c406 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c406)
  store %struct.Memory* %call_40c406, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40c40d	 Bytes: 4
  %loadMem_40c40d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c40d = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c40d)
  store %struct.Memory* %call_40c40d, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %r8d	 RIP: 40c411	 Bytes: 4
  %loadMem_40c411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c411 = call %struct.Memory* @routine_addl__0x14___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c411)
  store %struct.Memory* %call_40c411, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40c415	 Bytes: 3
  %loadMem_40c415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c415 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c415)
  store %struct.Memory* %call_40c415, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c418	 Bytes: 8
  %loadMem_40c418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c418 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c418)
  store %struct.Memory* %call_40c418, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c420	 Bytes: 7
  %loadMem_40c420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c420 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c420)
  store %struct.Memory* %call_40c420, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c427	 Bytes: 3
  %loadMem_40c427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c427 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c427)
  store %struct.Memory* %call_40c427, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c42a	 Bytes: 3
  %loadMem_40c42a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c42a = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c42a)
  store %struct.Memory* %call_40c42a, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40c42d	 Bytes: 4
  %loadMem_40c42d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c42d = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c42d)
  store %struct.Memory* %call_40c42d, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %r8d	 RIP: 40c431	 Bytes: 4
  %loadMem_40c431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c431 = call %struct.Memory* @routine_addl__0x14___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c431)
  store %struct.Memory* %call_40c431, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40c435	 Bytes: 3
  %loadMem_40c435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c435 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c435)
  store %struct.Memory* %call_40c435, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c438	 Bytes: 8
  %loadMem_40c438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c438 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c438)
  store %struct.Memory* %call_40c438, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c440	 Bytes: 7
  %loadMem_40c440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c440 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c440)
  store %struct.Memory* %call_40c440, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40c447	 Bytes: 3
  %loadMem_40c447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c447 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c447)
  store %struct.Memory* %call_40c447, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40c44a	 Bytes: 3
  %loadMem_40c44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c44a = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c44a)
  store %struct.Memory* %call_40c44a, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40c44d	 Bytes: 4
  %loadMem_40c44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c44d = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c44d)
  store %struct.Memory* %call_40c44d, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40c451	 Bytes: 3
  %loadMem_40c451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c451 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c451)
  store %struct.Memory* %call_40c451, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40c454	 Bytes: 4
  %loadMem_40c454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c454 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c454)
  store %struct.Memory* %call_40c454, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40c458	 Bytes: 4
  %loadMem_40c458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c458 = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c458)
  store %struct.Memory* %call_40c458, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40c45c	 Bytes: 3
  %loadMem_40c45c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c45c = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c45c)
  store %struct.Memory* %call_40c45c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40c45f	 Bytes: 4
  %loadMem_40c45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c45f = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c45f)
  store %struct.Memory* %call_40c45f, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 40c463	 Bytes: 7
  %loadMem_40c463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c463 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c463)
  store %struct.Memory* %call_40c463, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40c46a	 Bytes: 4
  %loadMem_40c46a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c46a = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c46a)
  store %struct.Memory* %call_40c46a, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %r8d	 RIP: 40c46e	 Bytes: 4
  %loadMem_40c46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c46e = call %struct.Memory* @routine_addl__0x14___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c46e)
  store %struct.Memory* %call_40c46e, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40c472	 Bytes: 3
  %loadMem_40c472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c472 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c472)
  store %struct.Memory* %call_40c472, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c475	 Bytes: 8
  %loadMem_40c475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c475 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c475)
  store %struct.Memory* %call_40c475, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c47d	 Bytes: 7
  %loadMem_40c47d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c47d = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c47d)
  store %struct.Memory* %call_40c47d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40c484	 Bytes: 3
  %loadMem_40c484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c484 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c484)
  store %struct.Memory* %call_40c484, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 40c487	 Bytes: 6
  %loadMem_40c487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c487 = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c487)
  store %struct.Memory* %call_40c487, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c4f9	 RIP: 40c48d	 Bytes: 5
  %loadMem_40c48d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c48d = call %struct.Memory* @routine_jmpq_.L_40c4f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c48d, i64 108, i64 5)
  store %struct.Memory* %call_40c48d, %struct.Memory** %MEMORY

  br label %block_.L_40c4f9

  ; Code: .L_40c492:	 RIP: 40c492	 Bytes: 0
block_.L_40c492:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40c492	 Bytes: 3
  %loadMem_40c492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c492 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c492)
  store %struct.Memory* %call_40c492, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40c495	 Bytes: 3
  %loadMem_40c495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c495 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c495)
  store %struct.Memory* %call_40c495, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40c498	 Bytes: 3
  %loadMem_40c498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c498 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c498)
  store %struct.Memory* %call_40c498, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40c49b	 Bytes: 8
  %loadMem_40c49b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c49b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c49b)
  store %struct.Memory* %call_40c49b, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 40c4a3	 Bytes: 3
  %loadMem_40c4a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4a3 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4a3)
  store %struct.Memory* %call_40c4a3, %struct.Memory** %MEMORY

  ; Code: jne .L_40c4f4	 RIP: 40c4a6	 Bytes: 6
  %loadMem_40c4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4a6 = call %struct.Memory* @routine_jne_.L_40c4f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4a6, i8* %BRANCH_TAKEN, i64 78, i64 6, i64 6)
  store %struct.Memory* %call_40c4a6, %struct.Memory** %MEMORY

  %loadBr_40c4a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c4a6 = icmp eq i8 %loadBr_40c4a6, 1
  br i1 %cmpBr_40c4a6, label %block_.L_40c4f4, label %block_40c4ac

block_40c4ac:
  ; Code: movq $0xa7f430, %rax	 RIP: 40c4ac	 Bytes: 10
  %loadMem_40c4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4ac = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4ac)
  store %struct.Memory* %call_40c4ac, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c4b6	 Bytes: 3
  %loadMem_40c4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4b6 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4b6)
  store %struct.Memory* %call_40c4b6, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40c4b9	 Bytes: 3
  %loadMem_40c4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4b9 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4b9)
  store %struct.Memory* %call_40c4b9, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40c4bc	 Bytes: 3
  %loadMem_40c4bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4bc = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4bc)
  store %struct.Memory* %call_40c4bc, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c4bf	 Bytes: 8
  %loadMem_40c4bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4bf = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4bf)
  store %struct.Memory* %call_40c4bf, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c4c7	 Bytes: 7
  %loadMem_40c4c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4c7 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4c7)
  store %struct.Memory* %call_40c4c7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40c4ce	 Bytes: 3
  %loadMem_40c4ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4ce = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4ce)
  store %struct.Memory* %call_40c4ce, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40c4d1	 Bytes: 6
  %loadMem_40c4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4d1 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4d1)
  store %struct.Memory* %call_40c4d1, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40c4d7	 Bytes: 7
  %loadMem_40c4d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4d7 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4d7)
  store %struct.Memory* %call_40c4d7, %struct.Memory** %MEMORY

  ; Code: je .L_40c4f4	 RIP: 40c4de	 Bytes: 6
  %loadMem_40c4de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4de = call %struct.Memory* @routine_je_.L_40c4f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4de, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_40c4de, %struct.Memory** %MEMORY

  %loadBr_40c4de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c4de = icmp eq i8 %loadBr_40c4de, 1
  br i1 %cmpBr_40c4de, label %block_.L_40c4f4, label %block_40c4e4

block_40c4e4:
  ; Code: movl -0x8(%rbp), %edi	 RIP: 40c4e4	 Bytes: 3
  %loadMem_40c4e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4e4 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4e4)
  store %struct.Memory* %call_40c4e4, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40c4e7	 Bytes: 3
  %loadMem_40c4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4e7 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4e7)
  store %struct.Memory* %call_40c4e7, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40c4ea	 Bytes: 3
  %loadMem_40c4ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4ea = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4ea)
  store %struct.Memory* %call_40c4ea, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 40c4ed	 Bytes: 2
  %loadMem_40c4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4ed = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4ed)
  store %struct.Memory* %call_40c4ed, %struct.Memory** %MEMORY

  ; Code: callq .assimilate_string	 RIP: 40c4ef	 Bytes: 5
  %loadMem1_40c4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40c4ef = call %struct.Memory* @routine_callq_.assimilate_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40c4ef, i64 2145, i64 5, i64 5)
  store %struct.Memory* %call1_40c4ef, %struct.Memory** %MEMORY

  %loadMem2_40c4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40c4ef = load i64, i64* %3
  %call2_40c4ef = call %struct.Memory* @sub_40cd50.assimilate_string(%struct.State* %0, i64  %loadPC_40c4ef, %struct.Memory* %loadMem2_40c4ef)
  store %struct.Memory* %call2_40c4ef, %struct.Memory** %MEMORY

  ; Code: .L_40c4f4:	 RIP: 40c4f4	 Bytes: 0
  br label %block_.L_40c4f4
block_.L_40c4f4:

  ; Code: jmpq .L_40c4f9	 RIP: 40c4f4	 Bytes: 5
  %loadMem_40c4f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4f4 = call %struct.Memory* @routine_jmpq_.L_40c4f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4f4, i64 5, i64 5)
  store %struct.Memory* %call_40c4f4, %struct.Memory** %MEMORY

  br label %block_.L_40c4f9

  ; Code: .L_40c4f9:	 RIP: 40c4f9	 Bytes: 0
block_.L_40c4f9:

  ; Code: jmpq .L_40c4fe	 RIP: 40c4f9	 Bytes: 5
  %loadMem_40c4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4f9 = call %struct.Memory* @routine_jmpq_.L_40c4fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4f9, i64 5, i64 5)
  store %struct.Memory* %call_40c4f9, %struct.Memory** %MEMORY

  br label %block_.L_40c4fe

  ; Code: .L_40c4fe:	 RIP: 40c4fe	 Bytes: 0
block_.L_40c4fe:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40c4fe	 Bytes: 3
  %loadMem_40c4fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c4fe = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c4fe)
  store %struct.Memory* %call_40c4fe, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40c501	 Bytes: 3
  %loadMem_40c501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c501 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c501)
  store %struct.Memory* %call_40c501, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40c504	 Bytes: 3
  %loadMem_40c504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c504 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c504)
  store %struct.Memory* %call_40c504, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40c507	 Bytes: 8
  %loadMem_40c507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c507 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c507)
  store %struct.Memory* %call_40c507, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 40c50f	 Bytes: 3
  %loadMem_40c50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c50f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c50f)
  store %struct.Memory* %call_40c50f, %struct.Memory** %MEMORY

  ; Code: jne .L_40c5d0	 RIP: 40c512	 Bytes: 6
  %loadMem_40c512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c512 = call %struct.Memory* @routine_jne_.L_40c5d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c512, i8* %BRANCH_TAKEN, i64 190, i64 6, i64 6)
  store %struct.Memory* %call_40c512, %struct.Memory** %MEMORY

  %loadBr_40c512 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c512 = icmp eq i8 %loadBr_40c512, 1
  br i1 %cmpBr_40c512, label %block_.L_40c5d0, label %block_40c518

block_40c518:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40c518	 Bytes: 3
  %loadMem_40c518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c518 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c518)
  store %struct.Memory* %call_40c518, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40c51b	 Bytes: 3
  %loadMem_40c51b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c51b = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c51b)
  store %struct.Memory* %call_40c51b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40c51e	 Bytes: 3
  %loadMem_40c51e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c51e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c51e)
  store %struct.Memory* %call_40c51e, %struct.Memory** %MEMORY

  ; Code: movl 0xaaadb0(,%rcx,4), %eax	 RIP: 40c521	 Bytes: 7
  %loadMem_40c521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c521 = call %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c521)
  store %struct.Memory* %call_40c521, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da04, %eax	 RIP: 40c528	 Bytes: 7
  %loadMem_40c528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c528 = call %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c528)
  store %struct.Memory* %call_40c528, %struct.Memory** %MEMORY

  ; Code: je .L_40c5d0	 RIP: 40c52f	 Bytes: 6
  %loadMem_40c52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c52f = call %struct.Memory* @routine_je_.L_40c5d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c52f, i8* %BRANCH_TAKEN, i64 161, i64 6, i64 6)
  store %struct.Memory* %call_40c52f, %struct.Memory** %MEMORY

  %loadBr_40c52f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c52f = icmp eq i8 %loadBr_40c52f, 1
  br i1 %cmpBr_40c52f, label %block_.L_40c5d0, label %block_40c535

block_40c535:
  ; Code: jmpq .L_40c53a	 RIP: 40c535	 Bytes: 5
  %loadMem_40c535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c535 = call %struct.Memory* @routine_jmpq_.L_40c53a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c535, i64 5, i64 5)
  store %struct.Memory* %call_40c535, %struct.Memory** %MEMORY

  br label %block_.L_40c53a

  ; Code: .L_40c53a:	 RIP: 40c53a	 Bytes: 0
block_.L_40c53a:

  ; Code: movq $0xa7f430, %rax	 RIP: 40c53a	 Bytes: 10
  %loadMem_40c53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c53a = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c53a)
  store %struct.Memory* %call_40c53a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40c544	 Bytes: 4
  %loadMem_40c544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c544 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c544)
  store %struct.Memory* %call_40c544, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40c548	 Bytes: 7
  %loadMem_40c548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c548 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c548)
  store %struct.Memory* %call_40c548, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40c54f	 Bytes: 3
  %loadMem_40c54f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c54f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c54f)
  store %struct.Memory* %call_40c54f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 40c552	 Bytes: 4
  %loadMem_40c552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c552 = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c552)
  store %struct.Memory* %call_40c552, %struct.Memory** %MEMORY

  ; Code: jge .L_40c593	 RIP: 40c556	 Bytes: 6
  %loadMem_40c556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c556 = call %struct.Memory* @routine_jge_.L_40c593(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c556, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_40c556, %struct.Memory** %MEMORY

  %loadBr_40c556 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c556 = icmp eq i8 %loadBr_40c556, 1
  br i1 %cmpBr_40c556, label %block_.L_40c593, label %block_40c55c

block_40c55c:
  ; Code: movq $0xa7f430, %rax	 RIP: 40c55c	 Bytes: 10
  %loadMem_40c55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c55c = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c55c)
  store %struct.Memory* %call_40c55c, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c566	 Bytes: 3
  %loadMem_40c566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c566 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c566)
  store %struct.Memory* %call_40c566, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40c569	 Bytes: 3
  %loadMem_40c569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c569 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c569)
  store %struct.Memory* %call_40c569, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c56c	 Bytes: 4
  %loadMem_40c56c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c56c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c56c)
  store %struct.Memory* %call_40c56c, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c570	 Bytes: 7
  %loadMem_40c570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c570 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c570)
  store %struct.Memory* %call_40c570, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c577	 Bytes: 3
  %loadMem_40c577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c577 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c577)
  store %struct.Memory* %call_40c577, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c57a	 Bytes: 3
  %loadMem_40c57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c57a = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c57a)
  store %struct.Memory* %call_40c57a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c57d	 Bytes: 4
  %loadMem_40c57d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c57d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c57d)
  store %struct.Memory* %call_40c57d, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c581	 Bytes: 7
  %loadMem_40c581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c581 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c581)
  store %struct.Memory* %call_40c581, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40c588	 Bytes: 3
  %loadMem_40c588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c588 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c588)
  store %struct.Memory* %call_40c588, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 40c58b	 Bytes: 4
  %loadMem_40c58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c58b = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c58b)
  store %struct.Memory* %call_40c58b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 40c58f	 Bytes: 4
  %loadMem_40c58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c58f = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c58f)
  store %struct.Memory* %call_40c58f, %struct.Memory** %MEMORY

  ; Code: .L_40c593:	 RIP: 40c593	 Bytes: 0
  br label %block_.L_40c593
block_.L_40c593:

  ; Code: movq $0xa7f430, %rax	 RIP: 40c593	 Bytes: 10
  %loadMem_40c593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c593 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c593)
  store %struct.Memory* %call_40c593, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40c59d	 Bytes: 4
  %loadMem_40c59d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c59d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c59d)
  store %struct.Memory* %call_40c59d, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40c5a1	 Bytes: 7
  %loadMem_40c5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5a1 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5a1)
  store %struct.Memory* %call_40c5a1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40c5a8	 Bytes: 3
  %loadMem_40c5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5a8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5a8)
  store %struct.Memory* %call_40c5a8, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40c5ab	 Bytes: 3
  %loadMem_40c5ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5ab = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5ab)
  store %struct.Memory* %call_40c5ab, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40c5ae	 Bytes: 3
  %loadMem_40c5ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5ae = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5ae)
  store %struct.Memory* %call_40c5ae, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 40c5b1	 Bytes: 3
  %loadMem_40c5b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5b1 = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5b1)
  store %struct.Memory* %call_40c5b1, %struct.Memory** %MEMORY

  ; Code: movl 0x99da04, %edx	 RIP: 40c5b4	 Bytes: 7
  %loadMem_40c5b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5b4 = call %struct.Memory* @routine_movl_0x99da04___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5b4)
  store %struct.Memory* %call_40c5b4, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 40c5bb	 Bytes: 3
  %loadMem_40c5bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5bb = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5bb)
  store %struct.Memory* %call_40c5bb, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 40c5be	 Bytes: 3
  %loadMem_40c5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5be = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5be)
  store %struct.Memory* %call_40c5be, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rax	 RIP: 40c5c1	 Bytes: 3
  %loadMem_40c5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5c1 = call %struct.Memory* @routine_movslq__esi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5c1)
  store %struct.Memory* %call_40c5c1, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xaaadb0(,%rax,4)	 RIP: 40c5c4	 Bytes: 7
  %loadMem_40c5c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5c4 = call %struct.Memory* @routine_movl__edx__0xaaadb0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5c4)
  store %struct.Memory* %call_40c5c4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c7d8	 RIP: 40c5cb	 Bytes: 5
  %loadMem_40c5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5cb = call %struct.Memory* @routine_jmpq_.L_40c7d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5cb, i64 525, i64 5)
  store %struct.Memory* %call_40c5cb, %struct.Memory** %MEMORY

  br label %block_.L_40c7d8

  ; Code: .L_40c5d0:	 RIP: 40c5d0	 Bytes: 0
block_.L_40c5d0:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40c5d0	 Bytes: 3
  %loadMem_40c5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5d0 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5d0)
  store %struct.Memory* %call_40c5d0, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40c5d3	 Bytes: 3
  %loadMem_40c5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5d3 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5d3)
  store %struct.Memory* %call_40c5d3, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40c5d6	 Bytes: 3
  %loadMem_40c5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5d6 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5d6)
  store %struct.Memory* %call_40c5d6, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40c5d9	 Bytes: 8
  %loadMem_40c5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5d9 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5d9)
  store %struct.Memory* %call_40c5d9, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 40c5e1	 Bytes: 3
  %loadMem_40c5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5e1 = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5e1)
  store %struct.Memory* %call_40c5e1, %struct.Memory** %MEMORY

  ; Code: jne .L_40c76c	 RIP: 40c5e4	 Bytes: 6
  %loadMem_40c5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5e4 = call %struct.Memory* @routine_jne_.L_40c76c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5e4, i8* %BRANCH_TAKEN, i64 392, i64 6, i64 6)
  store %struct.Memory* %call_40c5e4, %struct.Memory** %MEMORY

  %loadBr_40c5e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c5e4 = icmp eq i8 %loadBr_40c5e4, 1
  br i1 %cmpBr_40c5e4, label %block_.L_40c76c, label %block_40c5ea

block_40c5ea:
  ; Code: movq $0xa7f430, %rax	 RIP: 40c5ea	 Bytes: 10
  %loadMem_40c5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5ea = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5ea)
  store %struct.Memory* %call_40c5ea, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c5f4	 Bytes: 3
  %loadMem_40c5f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5f4 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5f4)
  store %struct.Memory* %call_40c5f4, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40c5f7	 Bytes: 3
  %loadMem_40c5f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5f7 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5f7)
  store %struct.Memory* %call_40c5f7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40c5fa	 Bytes: 3
  %loadMem_40c5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5fa = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5fa)
  store %struct.Memory* %call_40c5fa, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c5fd	 Bytes: 8
  %loadMem_40c5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c5fd = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c5fd)
  store %struct.Memory* %call_40c5fd, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c605	 Bytes: 7
  %loadMem_40c605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c605 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c605)
  store %struct.Memory* %call_40c605, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40c60c	 Bytes: 3
  %loadMem_40c60c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c60c = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c60c)
  store %struct.Memory* %call_40c60c, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40c60f	 Bytes: 6
  %loadMem_40c60f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c60f = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c60f)
  store %struct.Memory* %call_40c60f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40c615	 Bytes: 7
  %loadMem_40c615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c615 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c615)
  store %struct.Memory* %call_40c615, %struct.Memory** %MEMORY

  ; Code: je .L_40c76c	 RIP: 40c61c	 Bytes: 6
  %loadMem_40c61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c61c = call %struct.Memory* @routine_je_.L_40c76c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c61c, i8* %BRANCH_TAKEN, i64 336, i64 6, i64 6)
  store %struct.Memory* %call_40c61c, %struct.Memory** %MEMORY

  %loadBr_40c61c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c61c = icmp eq i8 %loadBr_40c61c, 1
  br i1 %cmpBr_40c61c, label %block_.L_40c76c, label %block_40c622

block_40c622:
  ; Code: movq $0xa7f430, %rax	 RIP: 40c622	 Bytes: 10
  %loadMem_40c622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c622 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c622)
  store %struct.Memory* %call_40c622, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c62c	 Bytes: 3
  %loadMem_40c62c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c62c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c62c)
  store %struct.Memory* %call_40c62c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40c62f	 Bytes: 3
  %loadMem_40c62f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c62f = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c62f)
  store %struct.Memory* %call_40c62f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40c632	 Bytes: 3
  %loadMem_40c632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c632 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c632)
  store %struct.Memory* %call_40c632, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40c635	 Bytes: 7
  %loadMem_40c635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c635 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c635)
  store %struct.Memory* %call_40c635, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c63c	 Bytes: 4
  %loadMem_40c63c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c63c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c63c)
  store %struct.Memory* %call_40c63c, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c640	 Bytes: 7
  %loadMem_40c640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c640 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c640)
  store %struct.Memory* %call_40c640, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c647	 Bytes: 3
  %loadMem_40c647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c647 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c647)
  store %struct.Memory* %call_40c647, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c64a	 Bytes: 3
  %loadMem_40c64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c64a = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c64a)
  store %struct.Memory* %call_40c64a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c64d	 Bytes: 4
  %loadMem_40c64d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c64d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c64d)
  store %struct.Memory* %call_40c64d, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c651	 Bytes: 7
  %loadMem_40c651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c651 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c651)
  store %struct.Memory* %call_40c651, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40c658	 Bytes: 3
  %loadMem_40c658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c658 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c658)
  store %struct.Memory* %call_40c658, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40c65b	 Bytes: 3
  %loadMem_40c65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c65b = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c65b)
  store %struct.Memory* %call_40c65b, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40c65e	 Bytes: 4
  %loadMem_40c65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c65e = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c65e)
  store %struct.Memory* %call_40c65e, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40c662	 Bytes: 3
  %loadMem_40c662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c662 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c662)
  store %struct.Memory* %call_40c662, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40c665	 Bytes: 4
  %loadMem_40c665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c665 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c665)
  store %struct.Memory* %call_40c665, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40c669	 Bytes: 4
  %loadMem_40c669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c669 = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c669)
  store %struct.Memory* %call_40c669, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40c66d	 Bytes: 3
  %loadMem_40c66d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c66d = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c66d)
  store %struct.Memory* %call_40c66d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40c670	 Bytes: 4
  %loadMem_40c670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c670 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c670)
  store %struct.Memory* %call_40c670, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c674	 Bytes: 3
  %loadMem_40c674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c674 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c674)
  store %struct.Memory* %call_40c674, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40c677	 Bytes: 3
  %loadMem_40c677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c677 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c677)
  store %struct.Memory* %call_40c677, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40c67a	 Bytes: 3
  %loadMem_40c67a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c67a = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c67a)
  store %struct.Memory* %call_40c67a, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c67d	 Bytes: 8
  %loadMem_40c67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c67d = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c67d)
  store %struct.Memory* %call_40c67d, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c685	 Bytes: 7
  %loadMem_40c685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c685 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c685)
  store %struct.Memory* %call_40c685, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c68c	 Bytes: 3
  %loadMem_40c68c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c68c = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c68c)
  store %struct.Memory* %call_40c68c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c68f	 Bytes: 3
  %loadMem_40c68f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c68f = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c68f)
  store %struct.Memory* %call_40c68f, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40c692	 Bytes: 4
  %loadMem_40c692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c692 = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c692)
  store %struct.Memory* %call_40c692, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40c696	 Bytes: 8
  %loadMem_40c696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c696 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c696)
  store %struct.Memory* %call_40c696, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40c69e	 Bytes: 3
  %loadMem_40c69e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c69e = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c69e)
  store %struct.Memory* %call_40c69e, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c6a1	 Bytes: 3
  %loadMem_40c6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6a1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6a1)
  store %struct.Memory* %call_40c6a1, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40c6a4	 Bytes: 3
  %loadMem_40c6a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6a4 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6a4)
  store %struct.Memory* %call_40c6a4, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40c6a7	 Bytes: 3
  %loadMem_40c6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6a7 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6a7)
  store %struct.Memory* %call_40c6a7, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c6aa	 Bytes: 8
  %loadMem_40c6aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6aa = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6aa)
  store %struct.Memory* %call_40c6aa, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c6b2	 Bytes: 7
  %loadMem_40c6b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6b2 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6b2)
  store %struct.Memory* %call_40c6b2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c6b9	 Bytes: 3
  %loadMem_40c6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6b9 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6b9)
  store %struct.Memory* %call_40c6b9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c6bc	 Bytes: 3
  %loadMem_40c6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6bc = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6bc)
  store %struct.Memory* %call_40c6bc, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40c6bf	 Bytes: 3
  %loadMem_40c6bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6bf = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6bf)
  store %struct.Memory* %call_40c6bf, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40c6c2	 Bytes: 8
  %loadMem_40c6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6c2 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6c2)
  store %struct.Memory* %call_40c6c2, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40c6ca	 Bytes: 3
  %loadMem_40c6ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6ca = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6ca)
  store %struct.Memory* %call_40c6ca, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40c6cd	 Bytes: 4
  %loadMem_40c6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6cd = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6cd)
  store %struct.Memory* %call_40c6cd, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40c6d1	 Bytes: 8
  %loadMem_40c6d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6d1 = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6d1)
  store %struct.Memory* %call_40c6d1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40c6d9	 Bytes: 3
  %loadMem_40c6d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6d9 = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6d9)
  store %struct.Memory* %call_40c6d9, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40c6dc	 Bytes: 4
  %loadMem_40c6dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6dc = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6dc)
  store %struct.Memory* %call_40c6dc, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40c6e0	 Bytes: 7
  %loadMem_40c6e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6e0 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6e0)
  store %struct.Memory* %call_40c6e0, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40c6e7	 Bytes: 4
  %loadMem_40c6e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6e7 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6e7)
  store %struct.Memory* %call_40c6e7, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %r8d	 RIP: 40c6eb	 Bytes: 4
  %loadMem_40c6eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6eb = call %struct.Memory* @routine_subl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6eb)
  store %struct.Memory* %call_40c6eb, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40c6ef	 Bytes: 3
  %loadMem_40c6ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6ef = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6ef)
  store %struct.Memory* %call_40c6ef, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c6f2	 Bytes: 8
  %loadMem_40c6f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6f2 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6f2)
  store %struct.Memory* %call_40c6f2, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c6fa	 Bytes: 7
  %loadMem_40c6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c6fa = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c6fa)
  store %struct.Memory* %call_40c6fa, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c701	 Bytes: 3
  %loadMem_40c701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c701 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c701)
  store %struct.Memory* %call_40c701, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c704	 Bytes: 3
  %loadMem_40c704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c704 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c704)
  store %struct.Memory* %call_40c704, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40c707	 Bytes: 4
  %loadMem_40c707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c707 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c707)
  store %struct.Memory* %call_40c707, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %r8d	 RIP: 40c70b	 Bytes: 4
  %loadMem_40c70b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c70b = call %struct.Memory* @routine_subl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c70b)
  store %struct.Memory* %call_40c70b, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40c70f	 Bytes: 3
  %loadMem_40c70f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c70f = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c70f)
  store %struct.Memory* %call_40c70f, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c712	 Bytes: 8
  %loadMem_40c712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c712 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c712)
  store %struct.Memory* %call_40c712, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c71a	 Bytes: 7
  %loadMem_40c71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c71a = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c71a)
  store %struct.Memory* %call_40c71a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40c721	 Bytes: 3
  %loadMem_40c721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c721 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c721)
  store %struct.Memory* %call_40c721, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40c724	 Bytes: 3
  %loadMem_40c724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c724 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c724)
  store %struct.Memory* %call_40c724, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40c727	 Bytes: 4
  %loadMem_40c727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c727 = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c727)
  store %struct.Memory* %call_40c727, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40c72b	 Bytes: 3
  %loadMem_40c72b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c72b = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c72b)
  store %struct.Memory* %call_40c72b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40c72e	 Bytes: 4
  %loadMem_40c72e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c72e = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c72e)
  store %struct.Memory* %call_40c72e, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40c732	 Bytes: 4
  %loadMem_40c732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c732 = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c732)
  store %struct.Memory* %call_40c732, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40c736	 Bytes: 3
  %loadMem_40c736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c736 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c736)
  store %struct.Memory* %call_40c736, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40c739	 Bytes: 4
  %loadMem_40c739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c739 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c739)
  store %struct.Memory* %call_40c739, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 40c73d	 Bytes: 7
  %loadMem_40c73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c73d = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c73d)
  store %struct.Memory* %call_40c73d, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40c744	 Bytes: 4
  %loadMem_40c744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c744 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c744)
  store %struct.Memory* %call_40c744, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %r8d	 RIP: 40c748	 Bytes: 4
  %loadMem_40c748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c748 = call %struct.Memory* @routine_subl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c748)
  store %struct.Memory* %call_40c748, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40c74c	 Bytes: 3
  %loadMem_40c74c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c74c = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c74c)
  store %struct.Memory* %call_40c74c, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c74f	 Bytes: 8
  %loadMem_40c74f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c74f = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c74f)
  store %struct.Memory* %call_40c74f, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c757	 Bytes: 7
  %loadMem_40c757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c757 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c757)
  store %struct.Memory* %call_40c757, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40c75e	 Bytes: 3
  %loadMem_40c75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c75e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c75e)
  store %struct.Memory* %call_40c75e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 40c761	 Bytes: 6
  %loadMem_40c761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c761 = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c761)
  store %struct.Memory* %call_40c761, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40c7d3	 RIP: 40c767	 Bytes: 5
  %loadMem_40c767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c767 = call %struct.Memory* @routine_jmpq_.L_40c7d3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c767, i64 108, i64 5)
  store %struct.Memory* %call_40c767, %struct.Memory** %MEMORY

  br label %block_.L_40c7d3

  ; Code: .L_40c76c:	 RIP: 40c76c	 Bytes: 0
block_.L_40c76c:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40c76c	 Bytes: 3
  %loadMem_40c76c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c76c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c76c)
  store %struct.Memory* %call_40c76c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40c76f	 Bytes: 3
  %loadMem_40c76f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c76f = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c76f)
  store %struct.Memory* %call_40c76f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40c772	 Bytes: 3
  %loadMem_40c772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c772 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c772)
  store %struct.Memory* %call_40c772, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40c775	 Bytes: 8
  %loadMem_40c775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c775 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c775)
  store %struct.Memory* %call_40c775, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 40c77d	 Bytes: 3
  %loadMem_40c77d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c77d = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c77d)
  store %struct.Memory* %call_40c77d, %struct.Memory** %MEMORY

  ; Code: jne .L_40c7ce	 RIP: 40c780	 Bytes: 6
  %loadMem_40c780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c780 = call %struct.Memory* @routine_jne_.L_40c7ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c780, i8* %BRANCH_TAKEN, i64 78, i64 6, i64 6)
  store %struct.Memory* %call_40c780, %struct.Memory** %MEMORY

  %loadBr_40c780 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c780 = icmp eq i8 %loadBr_40c780, 1
  br i1 %cmpBr_40c780, label %block_.L_40c7ce, label %block_40c786

block_40c786:
  ; Code: movq $0xa7f430, %rax	 RIP: 40c786	 Bytes: 10
  %loadMem_40c786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c786 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c786)
  store %struct.Memory* %call_40c786, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c790	 Bytes: 3
  %loadMem_40c790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c790 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c790)
  store %struct.Memory* %call_40c790, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40c793	 Bytes: 3
  %loadMem_40c793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c793 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c793)
  store %struct.Memory* %call_40c793, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40c796	 Bytes: 3
  %loadMem_40c796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c796 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c796)
  store %struct.Memory* %call_40c796, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c799	 Bytes: 8
  %loadMem_40c799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c799 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c799)
  store %struct.Memory* %call_40c799, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c7a1	 Bytes: 7
  %loadMem_40c7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7a1 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7a1)
  store %struct.Memory* %call_40c7a1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40c7a8	 Bytes: 3
  %loadMem_40c7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7a8 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7a8)
  store %struct.Memory* %call_40c7a8, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40c7ab	 Bytes: 6
  %loadMem_40c7ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7ab = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7ab)
  store %struct.Memory* %call_40c7ab, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40c7b1	 Bytes: 7
  %loadMem_40c7b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7b1 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7b1)
  store %struct.Memory* %call_40c7b1, %struct.Memory** %MEMORY

  ; Code: je .L_40c7ce	 RIP: 40c7b8	 Bytes: 6
  %loadMem_40c7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7b8 = call %struct.Memory* @routine_je_.L_40c7ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7b8, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_40c7b8, %struct.Memory** %MEMORY

  %loadBr_40c7b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c7b8 = icmp eq i8 %loadBr_40c7b8, 1
  br i1 %cmpBr_40c7b8, label %block_.L_40c7ce, label %block_40c7be

block_40c7be:
  ; Code: movl -0x8(%rbp), %edi	 RIP: 40c7be	 Bytes: 3
  %loadMem_40c7be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7be = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7be)
  store %struct.Memory* %call_40c7be, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40c7c1	 Bytes: 3
  %loadMem_40c7c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7c1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7c1)
  store %struct.Memory* %call_40c7c1, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40c7c4	 Bytes: 3
  %loadMem_40c7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7c4 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7c4)
  store %struct.Memory* %call_40c7c4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 40c7c7	 Bytes: 2
  %loadMem_40c7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7c7 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7c7)
  store %struct.Memory* %call_40c7c7, %struct.Memory** %MEMORY

  ; Code: callq .assimilate_string	 RIP: 40c7c9	 Bytes: 5
  %loadMem1_40c7c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40c7c9 = call %struct.Memory* @routine_callq_.assimilate_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40c7c9, i64 1415, i64 5, i64 5)
  store %struct.Memory* %call1_40c7c9, %struct.Memory** %MEMORY

  %loadMem2_40c7c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40c7c9 = load i64, i64* %3
  %call2_40c7c9 = call %struct.Memory* @sub_40cd50.assimilate_string(%struct.State* %0, i64  %loadPC_40c7c9, %struct.Memory* %loadMem2_40c7c9)
  store %struct.Memory* %call2_40c7c9, %struct.Memory** %MEMORY

  ; Code: .L_40c7ce:	 RIP: 40c7ce	 Bytes: 0
  br label %block_.L_40c7ce
block_.L_40c7ce:

  ; Code: jmpq .L_40c7d3	 RIP: 40c7ce	 Bytes: 5
  %loadMem_40c7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7ce = call %struct.Memory* @routine_jmpq_.L_40c7d3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7ce, i64 5, i64 5)
  store %struct.Memory* %call_40c7ce, %struct.Memory** %MEMORY

  br label %block_.L_40c7d3

  ; Code: .L_40c7d3:	 RIP: 40c7d3	 Bytes: 0
block_.L_40c7d3:

  ; Code: jmpq .L_40c7d8	 RIP: 40c7d3	 Bytes: 5
  %loadMem_40c7d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7d3 = call %struct.Memory* @routine_jmpq_.L_40c7d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7d3, i64 5, i64 5)
  store %struct.Memory* %call_40c7d3, %struct.Memory** %MEMORY

  br label %block_.L_40c7d8

  ; Code: .L_40c7d8:	 RIP: 40c7d8	 Bytes: 0
block_.L_40c7d8:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40c7d8	 Bytes: 3
  %loadMem_40c7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7d8 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7d8)
  store %struct.Memory* %call_40c7d8, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40c7db	 Bytes: 3
  %loadMem_40c7db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7db = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7db)
  store %struct.Memory* %call_40c7db, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40c7de	 Bytes: 3
  %loadMem_40c7de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7de = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7de)
  store %struct.Memory* %call_40c7de, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40c7e1	 Bytes: 8
  %loadMem_40c7e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7e1 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7e1)
  store %struct.Memory* %call_40c7e1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 40c7e9	 Bytes: 3
  %loadMem_40c7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7e9 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7e9)
  store %struct.Memory* %call_40c7e9, %struct.Memory** %MEMORY

  ; Code: jne .L_40c8aa	 RIP: 40c7ec	 Bytes: 6
  %loadMem_40c7ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7ec = call %struct.Memory* @routine_jne_.L_40c8aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7ec, i8* %BRANCH_TAKEN, i64 190, i64 6, i64 6)
  store %struct.Memory* %call_40c7ec, %struct.Memory** %MEMORY

  %loadBr_40c7ec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c7ec = icmp eq i8 %loadBr_40c7ec, 1
  br i1 %cmpBr_40c7ec, label %block_.L_40c8aa, label %block_40c7f2

block_40c7f2:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40c7f2	 Bytes: 3
  %loadMem_40c7f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7f2 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7f2)
  store %struct.Memory* %call_40c7f2, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40c7f5	 Bytes: 3
  %loadMem_40c7f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7f5 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7f5)
  store %struct.Memory* %call_40c7f5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40c7f8	 Bytes: 3
  %loadMem_40c7f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7f8 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7f8)
  store %struct.Memory* %call_40c7f8, %struct.Memory** %MEMORY

  ; Code: movl 0xaaadb0(,%rcx,4), %eax	 RIP: 40c7fb	 Bytes: 7
  %loadMem_40c7fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c7fb = call %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c7fb)
  store %struct.Memory* %call_40c7fb, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da04, %eax	 RIP: 40c802	 Bytes: 7
  %loadMem_40c802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c802 = call %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c802)
  store %struct.Memory* %call_40c802, %struct.Memory** %MEMORY

  ; Code: je .L_40c8aa	 RIP: 40c809	 Bytes: 6
  %loadMem_40c809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c809 = call %struct.Memory* @routine_je_.L_40c8aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c809, i8* %BRANCH_TAKEN, i64 161, i64 6, i64 6)
  store %struct.Memory* %call_40c809, %struct.Memory** %MEMORY

  %loadBr_40c809 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c809 = icmp eq i8 %loadBr_40c809, 1
  br i1 %cmpBr_40c809, label %block_.L_40c8aa, label %block_40c80f

block_40c80f:
  ; Code: jmpq .L_40c814	 RIP: 40c80f	 Bytes: 5
  %loadMem_40c80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c80f = call %struct.Memory* @routine_jmpq_.L_40c814(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c80f, i64 5, i64 5)
  store %struct.Memory* %call_40c80f, %struct.Memory** %MEMORY

  br label %block_.L_40c814

  ; Code: .L_40c814:	 RIP: 40c814	 Bytes: 0
block_.L_40c814:

  ; Code: movq $0xa7f430, %rax	 RIP: 40c814	 Bytes: 10
  %loadMem_40c814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c814 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c814)
  store %struct.Memory* %call_40c814, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40c81e	 Bytes: 4
  %loadMem_40c81e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c81e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c81e)
  store %struct.Memory* %call_40c81e, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40c822	 Bytes: 7
  %loadMem_40c822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c822 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c822)
  store %struct.Memory* %call_40c822, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40c829	 Bytes: 3
  %loadMem_40c829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c829 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c829)
  store %struct.Memory* %call_40c829, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 40c82c	 Bytes: 4
  %loadMem_40c82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c82c = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c82c)
  store %struct.Memory* %call_40c82c, %struct.Memory** %MEMORY

  ; Code: jge .L_40c86d	 RIP: 40c830	 Bytes: 6
  %loadMem_40c830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c830 = call %struct.Memory* @routine_jge_.L_40c86d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c830, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_40c830, %struct.Memory** %MEMORY

  %loadBr_40c830 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c830 = icmp eq i8 %loadBr_40c830, 1
  br i1 %cmpBr_40c830, label %block_.L_40c86d, label %block_40c836

block_40c836:
  ; Code: movq $0xa7f430, %rax	 RIP: 40c836	 Bytes: 10
  %loadMem_40c836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c836 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c836)
  store %struct.Memory* %call_40c836, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c840	 Bytes: 3
  %loadMem_40c840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c840 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c840)
  store %struct.Memory* %call_40c840, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 40c843	 Bytes: 3
  %loadMem_40c843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c843 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c843)
  store %struct.Memory* %call_40c843, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c846	 Bytes: 4
  %loadMem_40c846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c846 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c846)
  store %struct.Memory* %call_40c846, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c84a	 Bytes: 7
  %loadMem_40c84a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c84a = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c84a)
  store %struct.Memory* %call_40c84a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c851	 Bytes: 3
  %loadMem_40c851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c851 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c851)
  store %struct.Memory* %call_40c851, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c854	 Bytes: 3
  %loadMem_40c854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c854 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c854)
  store %struct.Memory* %call_40c854, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c857	 Bytes: 4
  %loadMem_40c857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c857 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c857)
  store %struct.Memory* %call_40c857, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c85b	 Bytes: 7
  %loadMem_40c85b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c85b = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c85b)
  store %struct.Memory* %call_40c85b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40c862	 Bytes: 3
  %loadMem_40c862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c862 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c862)
  store %struct.Memory* %call_40c862, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 40c865	 Bytes: 4
  %loadMem_40c865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c865 = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c865)
  store %struct.Memory* %call_40c865, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 40c869	 Bytes: 4
  %loadMem_40c869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c869 = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c869)
  store %struct.Memory* %call_40c869, %struct.Memory** %MEMORY

  ; Code: .L_40c86d:	 RIP: 40c86d	 Bytes: 0
  br label %block_.L_40c86d
block_.L_40c86d:

  ; Code: movq $0xa7f430, %rax	 RIP: 40c86d	 Bytes: 10
  %loadMem_40c86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c86d = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c86d)
  store %struct.Memory* %call_40c86d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40c877	 Bytes: 4
  %loadMem_40c877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c877 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c877)
  store %struct.Memory* %call_40c877, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40c87b	 Bytes: 7
  %loadMem_40c87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c87b = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c87b)
  store %struct.Memory* %call_40c87b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40c882	 Bytes: 3
  %loadMem_40c882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c882 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c882)
  store %struct.Memory* %call_40c882, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40c885	 Bytes: 3
  %loadMem_40c885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c885 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c885)
  store %struct.Memory* %call_40c885, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40c888	 Bytes: 3
  %loadMem_40c888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c888 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c888)
  store %struct.Memory* %call_40c888, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 40c88b	 Bytes: 3
  %loadMem_40c88b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c88b = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c88b)
  store %struct.Memory* %call_40c88b, %struct.Memory** %MEMORY

  ; Code: movl 0x99da04, %edx	 RIP: 40c88e	 Bytes: 7
  %loadMem_40c88e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c88e = call %struct.Memory* @routine_movl_0x99da04___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c88e)
  store %struct.Memory* %call_40c88e, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 40c895	 Bytes: 3
  %loadMem_40c895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c895 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c895)
  store %struct.Memory* %call_40c895, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %esi	 RIP: 40c898	 Bytes: 3
  %loadMem_40c898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c898 = call %struct.Memory* @routine_subl__0x14___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c898)
  store %struct.Memory* %call_40c898, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rax	 RIP: 40c89b	 Bytes: 3
  %loadMem_40c89b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c89b = call %struct.Memory* @routine_movslq__esi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c89b)
  store %struct.Memory* %call_40c89b, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xaaadb0(,%rax,4)	 RIP: 40c89e	 Bytes: 7
  %loadMem_40c89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c89e = call %struct.Memory* @routine_movl__edx__0xaaadb0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c89e)
  store %struct.Memory* %call_40c89e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40cab2	 RIP: 40c8a5	 Bytes: 5
  %loadMem_40c8a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8a5 = call %struct.Memory* @routine_jmpq_.L_40cab2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8a5, i64 525, i64 5)
  store %struct.Memory* %call_40c8a5, %struct.Memory** %MEMORY

  br label %block_.L_40cab2

  ; Code: .L_40c8aa:	 RIP: 40c8aa	 Bytes: 0
block_.L_40c8aa:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40c8aa	 Bytes: 3
  %loadMem_40c8aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8aa = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8aa)
  store %struct.Memory* %call_40c8aa, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40c8ad	 Bytes: 3
  %loadMem_40c8ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8ad = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8ad)
  store %struct.Memory* %call_40c8ad, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40c8b0	 Bytes: 3
  %loadMem_40c8b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8b0 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8b0)
  store %struct.Memory* %call_40c8b0, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40c8b3	 Bytes: 8
  %loadMem_40c8b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8b3 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8b3)
  store %struct.Memory* %call_40c8b3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 40c8bb	 Bytes: 3
  %loadMem_40c8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8bb = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8bb)
  store %struct.Memory* %call_40c8bb, %struct.Memory** %MEMORY

  ; Code: jne .L_40ca46	 RIP: 40c8be	 Bytes: 6
  %loadMem_40c8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8be = call %struct.Memory* @routine_jne_.L_40ca46(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8be, i8* %BRANCH_TAKEN, i64 392, i64 6, i64 6)
  store %struct.Memory* %call_40c8be, %struct.Memory** %MEMORY

  %loadBr_40c8be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c8be = icmp eq i8 %loadBr_40c8be, 1
  br i1 %cmpBr_40c8be, label %block_.L_40ca46, label %block_40c8c4

block_40c8c4:
  ; Code: movq $0xa7f430, %rax	 RIP: 40c8c4	 Bytes: 10
  %loadMem_40c8c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8c4 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8c4)
  store %struct.Memory* %call_40c8c4, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c8ce	 Bytes: 3
  %loadMem_40c8ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8ce = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8ce)
  store %struct.Memory* %call_40c8ce, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 40c8d1	 Bytes: 3
  %loadMem_40c8d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8d1 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8d1)
  store %struct.Memory* %call_40c8d1, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40c8d4	 Bytes: 3
  %loadMem_40c8d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8d4 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8d4)
  store %struct.Memory* %call_40c8d4, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c8d7	 Bytes: 8
  %loadMem_40c8d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8d7 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8d7)
  store %struct.Memory* %call_40c8d7, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c8df	 Bytes: 7
  %loadMem_40c8df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8df = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8df)
  store %struct.Memory* %call_40c8df, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40c8e6	 Bytes: 3
  %loadMem_40c8e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8e6 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8e6)
  store %struct.Memory* %call_40c8e6, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40c8e9	 Bytes: 6
  %loadMem_40c8e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8e9 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8e9)
  store %struct.Memory* %call_40c8e9, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40c8ef	 Bytes: 7
  %loadMem_40c8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8ef = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8ef)
  store %struct.Memory* %call_40c8ef, %struct.Memory** %MEMORY

  ; Code: je .L_40ca46	 RIP: 40c8f6	 Bytes: 6
  %loadMem_40c8f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8f6 = call %struct.Memory* @routine_je_.L_40ca46(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8f6, i8* %BRANCH_TAKEN, i64 336, i64 6, i64 6)
  store %struct.Memory* %call_40c8f6, %struct.Memory** %MEMORY

  %loadBr_40c8f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40c8f6 = icmp eq i8 %loadBr_40c8f6, 1
  br i1 %cmpBr_40c8f6, label %block_.L_40ca46, label %block_40c8fc

block_40c8fc:
  ; Code: movq $0xa7f430, %rax	 RIP: 40c8fc	 Bytes: 10
  %loadMem_40c8fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c8fc = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c8fc)
  store %struct.Memory* %call_40c8fc, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c906	 Bytes: 3
  %loadMem_40c906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c906 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c906)
  store %struct.Memory* %call_40c906, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 40c909	 Bytes: 3
  %loadMem_40c909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c909 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c909)
  store %struct.Memory* %call_40c909, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40c90c	 Bytes: 3
  %loadMem_40c90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c90c = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c90c)
  store %struct.Memory* %call_40c90c, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40c90f	 Bytes: 7
  %loadMem_40c90f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c90f = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c90f)
  store %struct.Memory* %call_40c90f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c916	 Bytes: 4
  %loadMem_40c916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c916 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c916)
  store %struct.Memory* %call_40c916, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c91a	 Bytes: 7
  %loadMem_40c91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c91a = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c91a)
  store %struct.Memory* %call_40c91a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c921	 Bytes: 3
  %loadMem_40c921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c921 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c921)
  store %struct.Memory* %call_40c921, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c924	 Bytes: 3
  %loadMem_40c924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c924 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c924)
  store %struct.Memory* %call_40c924, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40c927	 Bytes: 4
  %loadMem_40c927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c927 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c927)
  store %struct.Memory* %call_40c927, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c92b	 Bytes: 7
  %loadMem_40c92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c92b = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c92b)
  store %struct.Memory* %call_40c92b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40c932	 Bytes: 3
  %loadMem_40c932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c932 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c932)
  store %struct.Memory* %call_40c932, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40c935	 Bytes: 3
  %loadMem_40c935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c935 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c935)
  store %struct.Memory* %call_40c935, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40c938	 Bytes: 4
  %loadMem_40c938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c938 = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c938)
  store %struct.Memory* %call_40c938, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40c93c	 Bytes: 3
  %loadMem_40c93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c93c = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c93c)
  store %struct.Memory* %call_40c93c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40c93f	 Bytes: 4
  %loadMem_40c93f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c93f = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c93f)
  store %struct.Memory* %call_40c93f, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40c943	 Bytes: 4
  %loadMem_40c943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c943 = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c943)
  store %struct.Memory* %call_40c943, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40c947	 Bytes: 3
  %loadMem_40c947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c947 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c947)
  store %struct.Memory* %call_40c947, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40c94a	 Bytes: 4
  %loadMem_40c94a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c94a = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c94a)
  store %struct.Memory* %call_40c94a, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c94e	 Bytes: 3
  %loadMem_40c94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c94e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c94e)
  store %struct.Memory* %call_40c94e, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 40c951	 Bytes: 3
  %loadMem_40c951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c951 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c951)
  store %struct.Memory* %call_40c951, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40c954	 Bytes: 3
  %loadMem_40c954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c954 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c954)
  store %struct.Memory* %call_40c954, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c957	 Bytes: 8
  %loadMem_40c957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c957 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c957)
  store %struct.Memory* %call_40c957, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c95f	 Bytes: 7
  %loadMem_40c95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c95f = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c95f)
  store %struct.Memory* %call_40c95f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c966	 Bytes: 3
  %loadMem_40c966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c966 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c966)
  store %struct.Memory* %call_40c966, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c969	 Bytes: 3
  %loadMem_40c969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c969 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c969)
  store %struct.Memory* %call_40c969, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40c96c	 Bytes: 4
  %loadMem_40c96c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c96c = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c96c)
  store %struct.Memory* %call_40c96c, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40c970	 Bytes: 8
  %loadMem_40c970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c970 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c970)
  store %struct.Memory* %call_40c970, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40c978	 Bytes: 3
  %loadMem_40c978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c978 = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c978)
  store %struct.Memory* %call_40c978, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40c97b	 Bytes: 3
  %loadMem_40c97b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c97b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c97b)
  store %struct.Memory* %call_40c97b, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 40c97e	 Bytes: 3
  %loadMem_40c97e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c97e = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c97e)
  store %struct.Memory* %call_40c97e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40c981	 Bytes: 3
  %loadMem_40c981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c981 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c981)
  store %struct.Memory* %call_40c981, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c984	 Bytes: 8
  %loadMem_40c984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c984 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c984)
  store %struct.Memory* %call_40c984, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c98c	 Bytes: 7
  %loadMem_40c98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c98c = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c98c)
  store %struct.Memory* %call_40c98c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c993	 Bytes: 3
  %loadMem_40c993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c993 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c993)
  store %struct.Memory* %call_40c993, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c996	 Bytes: 3
  %loadMem_40c996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c996 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c996)
  store %struct.Memory* %call_40c996, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40c999	 Bytes: 3
  %loadMem_40c999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c999 = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c999)
  store %struct.Memory* %call_40c999, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40c99c	 Bytes: 8
  %loadMem_40c99c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c99c = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c99c)
  store %struct.Memory* %call_40c99c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40c9a4	 Bytes: 3
  %loadMem_40c9a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9a4 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9a4)
  store %struct.Memory* %call_40c9a4, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40c9a7	 Bytes: 4
  %loadMem_40c9a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9a7 = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9a7)
  store %struct.Memory* %call_40c9a7, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40c9ab	 Bytes: 8
  %loadMem_40c9ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9ab = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9ab)
  store %struct.Memory* %call_40c9ab, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40c9b3	 Bytes: 3
  %loadMem_40c9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9b3 = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9b3)
  store %struct.Memory* %call_40c9b3, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40c9b6	 Bytes: 4
  %loadMem_40c9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9b6 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9b6)
  store %struct.Memory* %call_40c9b6, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40c9ba	 Bytes: 7
  %loadMem_40c9ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9ba = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9ba)
  store %struct.Memory* %call_40c9ba, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40c9c1	 Bytes: 4
  %loadMem_40c9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9c1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9c1)
  store %struct.Memory* %call_40c9c1, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %r8d	 RIP: 40c9c5	 Bytes: 4
  %loadMem_40c9c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9c5 = call %struct.Memory* @routine_subl__0x14___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9c5)
  store %struct.Memory* %call_40c9c5, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40c9c9	 Bytes: 3
  %loadMem_40c9c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9c9 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9c9)
  store %struct.Memory* %call_40c9c9, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c9cc	 Bytes: 8
  %loadMem_40c9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9cc = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9cc)
  store %struct.Memory* %call_40c9cc, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c9d4	 Bytes: 7
  %loadMem_40c9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9d4 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9d4)
  store %struct.Memory* %call_40c9d4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c9db	 Bytes: 3
  %loadMem_40c9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9db = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9db)
  store %struct.Memory* %call_40c9db, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c9de	 Bytes: 3
  %loadMem_40c9de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9de = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9de)
  store %struct.Memory* %call_40c9de, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40c9e1	 Bytes: 4
  %loadMem_40c9e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9e1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9e1)
  store %struct.Memory* %call_40c9e1, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %r8d	 RIP: 40c9e5	 Bytes: 4
  %loadMem_40c9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9e5 = call %struct.Memory* @routine_subl__0x14___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9e5)
  store %struct.Memory* %call_40c9e5, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40c9e9	 Bytes: 3
  %loadMem_40c9e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9e9 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9e9)
  store %struct.Memory* %call_40c9e9, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40c9ec	 Bytes: 8
  %loadMem_40c9ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9ec = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9ec)
  store %struct.Memory* %call_40c9ec, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c9f4	 Bytes: 7
  %loadMem_40c9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9f4 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9f4)
  store %struct.Memory* %call_40c9f4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40c9fb	 Bytes: 3
  %loadMem_40c9fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9fb = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9fb)
  store %struct.Memory* %call_40c9fb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40c9fe	 Bytes: 3
  %loadMem_40c9fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c9fe = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c9fe)
  store %struct.Memory* %call_40c9fe, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40ca01	 Bytes: 4
  %loadMem_40ca01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca01 = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca01)
  store %struct.Memory* %call_40ca01, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40ca05	 Bytes: 3
  %loadMem_40ca05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca05 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca05)
  store %struct.Memory* %call_40ca05, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40ca08	 Bytes: 4
  %loadMem_40ca08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca08 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca08)
  store %struct.Memory* %call_40ca08, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40ca0c	 Bytes: 4
  %loadMem_40ca0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca0c = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca0c)
  store %struct.Memory* %call_40ca0c, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40ca10	 Bytes: 3
  %loadMem_40ca10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca10 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca10)
  store %struct.Memory* %call_40ca10, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40ca13	 Bytes: 4
  %loadMem_40ca13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca13 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca13)
  store %struct.Memory* %call_40ca13, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 40ca17	 Bytes: 7
  %loadMem_40ca17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca17 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca17)
  store %struct.Memory* %call_40ca17, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40ca1e	 Bytes: 4
  %loadMem_40ca1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca1e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca1e)
  store %struct.Memory* %call_40ca1e, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %r8d	 RIP: 40ca22	 Bytes: 4
  %loadMem_40ca22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca22 = call %struct.Memory* @routine_subl__0x14___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca22)
  store %struct.Memory* %call_40ca22, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40ca26	 Bytes: 3
  %loadMem_40ca26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca26 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca26)
  store %struct.Memory* %call_40ca26, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40ca29	 Bytes: 8
  %loadMem_40ca29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca29 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca29)
  store %struct.Memory* %call_40ca29, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ca31	 Bytes: 7
  %loadMem_40ca31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca31 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca31)
  store %struct.Memory* %call_40ca31, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40ca38	 Bytes: 3
  %loadMem_40ca38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca38 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca38)
  store %struct.Memory* %call_40ca38, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 40ca3b	 Bytes: 6
  %loadMem_40ca3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca3b = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca3b)
  store %struct.Memory* %call_40ca3b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40caad	 RIP: 40ca41	 Bytes: 5
  %loadMem_40ca41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca41 = call %struct.Memory* @routine_jmpq_.L_40caad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca41, i64 108, i64 5)
  store %struct.Memory* %call_40ca41, %struct.Memory** %MEMORY

  br label %block_.L_40caad

  ; Code: .L_40ca46:	 RIP: 40ca46	 Bytes: 0
block_.L_40ca46:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40ca46	 Bytes: 3
  %loadMem_40ca46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca46 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca46)
  store %struct.Memory* %call_40ca46, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40ca49	 Bytes: 3
  %loadMem_40ca49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca49 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca49)
  store %struct.Memory* %call_40ca49, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ca4c	 Bytes: 3
  %loadMem_40ca4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca4c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca4c)
  store %struct.Memory* %call_40ca4c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40ca4f	 Bytes: 8
  %loadMem_40ca4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca4f = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca4f)
  store %struct.Memory* %call_40ca4f, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 40ca57	 Bytes: 3
  %loadMem_40ca57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca57 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca57)
  store %struct.Memory* %call_40ca57, %struct.Memory** %MEMORY

  ; Code: jne .L_40caa8	 RIP: 40ca5a	 Bytes: 6
  %loadMem_40ca5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca5a = call %struct.Memory* @routine_jne_.L_40caa8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca5a, i8* %BRANCH_TAKEN, i64 78, i64 6, i64 6)
  store %struct.Memory* %call_40ca5a, %struct.Memory** %MEMORY

  %loadBr_40ca5a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ca5a = icmp eq i8 %loadBr_40ca5a, 1
  br i1 %cmpBr_40ca5a, label %block_.L_40caa8, label %block_40ca60

block_40ca60:
  ; Code: movq $0xa7f430, %rax	 RIP: 40ca60	 Bytes: 10
  %loadMem_40ca60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca60 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca60)
  store %struct.Memory* %call_40ca60, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40ca6a	 Bytes: 3
  %loadMem_40ca6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca6a = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca6a)
  store %struct.Memory* %call_40ca6a, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 40ca6d	 Bytes: 3
  %loadMem_40ca6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca6d = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca6d)
  store %struct.Memory* %call_40ca6d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40ca70	 Bytes: 3
  %loadMem_40ca70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca70 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca70)
  store %struct.Memory* %call_40ca70, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40ca73	 Bytes: 8
  %loadMem_40ca73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca73 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca73)
  store %struct.Memory* %call_40ca73, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ca7b	 Bytes: 7
  %loadMem_40ca7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca7b = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca7b)
  store %struct.Memory* %call_40ca7b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40ca82	 Bytes: 3
  %loadMem_40ca82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca82 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca82)
  store %struct.Memory* %call_40ca82, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40ca85	 Bytes: 6
  %loadMem_40ca85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca85 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca85)
  store %struct.Memory* %call_40ca85, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40ca8b	 Bytes: 7
  %loadMem_40ca8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca8b = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca8b)
  store %struct.Memory* %call_40ca8b, %struct.Memory** %MEMORY

  ; Code: je .L_40caa8	 RIP: 40ca92	 Bytes: 6
  %loadMem_40ca92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca92 = call %struct.Memory* @routine_je_.L_40caa8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca92, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_40ca92, %struct.Memory** %MEMORY

  %loadBr_40ca92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ca92 = icmp eq i8 %loadBr_40ca92, 1
  br i1 %cmpBr_40ca92, label %block_.L_40caa8, label %block_40ca98

block_40ca98:
  ; Code: movl -0x8(%rbp), %edi	 RIP: 40ca98	 Bytes: 3
  %loadMem_40ca98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca98 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca98)
  store %struct.Memory* %call_40ca98, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40ca9b	 Bytes: 3
  %loadMem_40ca9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca9b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca9b)
  store %struct.Memory* %call_40ca9b, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40ca9e	 Bytes: 3
  %loadMem_40ca9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ca9e = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ca9e)
  store %struct.Memory* %call_40ca9e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 40caa1	 Bytes: 2
  %loadMem_40caa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40caa1 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40caa1)
  store %struct.Memory* %call_40caa1, %struct.Memory** %MEMORY

  ; Code: callq .assimilate_string	 RIP: 40caa3	 Bytes: 5
  %loadMem1_40caa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40caa3 = call %struct.Memory* @routine_callq_.assimilate_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40caa3, i64 685, i64 5, i64 5)
  store %struct.Memory* %call1_40caa3, %struct.Memory** %MEMORY

  %loadMem2_40caa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40caa3 = load i64, i64* %3
  %call2_40caa3 = call %struct.Memory* @sub_40cd50.assimilate_string(%struct.State* %0, i64  %loadPC_40caa3, %struct.Memory* %loadMem2_40caa3)
  store %struct.Memory* %call2_40caa3, %struct.Memory** %MEMORY

  ; Code: .L_40caa8:	 RIP: 40caa8	 Bytes: 0
  br label %block_.L_40caa8
block_.L_40caa8:

  ; Code: jmpq .L_40caad	 RIP: 40caa8	 Bytes: 5
  %loadMem_40caa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40caa8 = call %struct.Memory* @routine_jmpq_.L_40caad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40caa8, i64 5, i64 5)
  store %struct.Memory* %call_40caa8, %struct.Memory** %MEMORY

  br label %block_.L_40caad

  ; Code: .L_40caad:	 RIP: 40caad	 Bytes: 0
block_.L_40caad:

  ; Code: jmpq .L_40cab2	 RIP: 40caad	 Bytes: 5
  %loadMem_40caad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40caad = call %struct.Memory* @routine_jmpq_.L_40cab2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40caad, i64 5, i64 5)
  store %struct.Memory* %call_40caad, %struct.Memory** %MEMORY

  br label %block_.L_40cab2

  ; Code: .L_40cab2:	 RIP: 40cab2	 Bytes: 0
block_.L_40cab2:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40cab2	 Bytes: 3
  %loadMem_40cab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cab2 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cab2)
  store %struct.Memory* %call_40cab2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40cab5	 Bytes: 3
  %loadMem_40cab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cab5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cab5)
  store %struct.Memory* %call_40cab5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40cab8	 Bytes: 3
  %loadMem_40cab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cab8 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cab8)
  store %struct.Memory* %call_40cab8, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40cabb	 Bytes: 8
  %loadMem_40cabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cabb = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cabb)
  store %struct.Memory* %call_40cabb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 40cac3	 Bytes: 3
  %loadMem_40cac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cac3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cac3)
  store %struct.Memory* %call_40cac3, %struct.Memory** %MEMORY

  ; Code: jne .L_40cb6d	 RIP: 40cac6	 Bytes: 6
  %loadMem_40cac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cac6 = call %struct.Memory* @routine_jne_.L_40cb6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cac6, i8* %BRANCH_TAKEN, i64 167, i64 6, i64 6)
  store %struct.Memory* %call_40cac6, %struct.Memory** %MEMORY

  %loadBr_40cac6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cac6 = icmp eq i8 %loadBr_40cac6, 1
  br i1 %cmpBr_40cac6, label %block_.L_40cb6d, label %block_40cacc

block_40cacc:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40cacc	 Bytes: 3
  %loadMem_40cacc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cacc = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cacc)
  store %struct.Memory* %call_40cacc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40cacf	 Bytes: 3
  %loadMem_40cacf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cacf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cacf)
  store %struct.Memory* %call_40cacf, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40cad2	 Bytes: 3
  %loadMem_40cad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cad2 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cad2)
  store %struct.Memory* %call_40cad2, %struct.Memory** %MEMORY

  ; Code: movl 0xaaadb0(,%rcx,4), %eax	 RIP: 40cad5	 Bytes: 7
  %loadMem_40cad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cad5 = call %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cad5)
  store %struct.Memory* %call_40cad5, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da04, %eax	 RIP: 40cadc	 Bytes: 7
  %loadMem_40cadc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cadc = call %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cadc)
  store %struct.Memory* %call_40cadc, %struct.Memory** %MEMORY

  ; Code: je .L_40cb6d	 RIP: 40cae3	 Bytes: 6
  %loadMem_40cae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cae3 = call %struct.Memory* @routine_je_.L_40cb6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cae3, i8* %BRANCH_TAKEN, i64 138, i64 6, i64 6)
  store %struct.Memory* %call_40cae3, %struct.Memory** %MEMORY

  %loadBr_40cae3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cae3 = icmp eq i8 %loadBr_40cae3, 1
  br i1 %cmpBr_40cae3, label %block_.L_40cb6d, label %block_40cae9

block_40cae9:
  ; Code: jmpq .L_40caee	 RIP: 40cae9	 Bytes: 5
  %loadMem_40cae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cae9 = call %struct.Memory* @routine_jmpq_.L_40caee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cae9, i64 5, i64 5)
  store %struct.Memory* %call_40cae9, %struct.Memory** %MEMORY

  br label %block_.L_40caee

  ; Code: .L_40caee:	 RIP: 40caee	 Bytes: 0
block_.L_40caee:

  ; Code: movq $0xa7f430, %rax	 RIP: 40caee	 Bytes: 10
  %loadMem_40caee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40caee = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40caee)
  store %struct.Memory* %call_40caee, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40caf8	 Bytes: 4
  %loadMem_40caf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40caf8 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40caf8)
  store %struct.Memory* %call_40caf8, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40cafc	 Bytes: 7
  %loadMem_40cafc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cafc = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cafc)
  store %struct.Memory* %call_40cafc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40cb03	 Bytes: 3
  %loadMem_40cb03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb03 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb03)
  store %struct.Memory* %call_40cb03, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 40cb06	 Bytes: 4
  %loadMem_40cb06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb06 = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb06)
  store %struct.Memory* %call_40cb06, %struct.Memory** %MEMORY

  ; Code: jge .L_40cb47	 RIP: 40cb0a	 Bytes: 6
  %loadMem_40cb0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb0a = call %struct.Memory* @routine_jge_.L_40cb47(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb0a, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_40cb0a, %struct.Memory** %MEMORY

  %loadBr_40cb0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cb0a = icmp eq i8 %loadBr_40cb0a, 1
  br i1 %cmpBr_40cb0a, label %block_.L_40cb47, label %block_40cb10

block_40cb10:
  ; Code: movq $0xa7f430, %rax	 RIP: 40cb10	 Bytes: 10
  %loadMem_40cb10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb10 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb10)
  store %struct.Memory* %call_40cb10, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40cb1a	 Bytes: 3
  %loadMem_40cb1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb1a = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb1a)
  store %struct.Memory* %call_40cb1a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40cb1d	 Bytes: 3
  %loadMem_40cb1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb1d = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb1d)
  store %struct.Memory* %call_40cb1d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40cb20	 Bytes: 4
  %loadMem_40cb20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb20 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb20)
  store %struct.Memory* %call_40cb20, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40cb24	 Bytes: 7
  %loadMem_40cb24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb24 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb24)
  store %struct.Memory* %call_40cb24, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40cb2b	 Bytes: 3
  %loadMem_40cb2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb2b = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb2b)
  store %struct.Memory* %call_40cb2b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40cb2e	 Bytes: 3
  %loadMem_40cb2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb2e = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb2e)
  store %struct.Memory* %call_40cb2e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40cb31	 Bytes: 4
  %loadMem_40cb31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb31 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb31)
  store %struct.Memory* %call_40cb31, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40cb35	 Bytes: 7
  %loadMem_40cb35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb35 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb35)
  store %struct.Memory* %call_40cb35, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40cb3c	 Bytes: 3
  %loadMem_40cb3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb3c = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb3c)
  store %struct.Memory* %call_40cb3c, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 40cb3f	 Bytes: 4
  %loadMem_40cb3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb3f = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb3f)
  store %struct.Memory* %call_40cb3f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 40cb43	 Bytes: 4
  %loadMem_40cb43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb43 = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb43)
  store %struct.Memory* %call_40cb43, %struct.Memory** %MEMORY

  ; Code: .L_40cb47:	 RIP: 40cb47	 Bytes: 0
  br label %block_.L_40cb47
block_.L_40cb47:

  ; Code: movq $0xa7f430, %rax	 RIP: 40cb47	 Bytes: 10
  %loadMem_40cb47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb47 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb47)
  store %struct.Memory* %call_40cb47, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40cb51	 Bytes: 4
  %loadMem_40cb51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb51 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb51)
  store %struct.Memory* %call_40cb51, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40cb55	 Bytes: 7
  %loadMem_40cb55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb55 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb55)
  store %struct.Memory* %call_40cb55, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40cb5c	 Bytes: 3
  %loadMem_40cb5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb5c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb5c)
  store %struct.Memory* %call_40cb5c, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40cb5f	 Bytes: 3
  %loadMem_40cb5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb5f = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb5f)
  store %struct.Memory* %call_40cb5f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40cb62	 Bytes: 3
  %loadMem_40cb62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb62 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb62)
  store %struct.Memory* %call_40cb62, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 40cb65	 Bytes: 3
  %loadMem_40cb65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb65 = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb65)
  store %struct.Memory* %call_40cb65, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40cd48	 RIP: 40cb68	 Bytes: 5
  %loadMem_40cb68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb68 = call %struct.Memory* @routine_jmpq_.L_40cd48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb68, i64 480, i64 5)
  store %struct.Memory* %call_40cb68, %struct.Memory** %MEMORY

  br label %block_.L_40cd48

  ; Code: .L_40cb6d:	 RIP: 40cb6d	 Bytes: 0
block_.L_40cb6d:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40cb6d	 Bytes: 3
  %loadMem_40cb6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb6d = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb6d)
  store %struct.Memory* %call_40cb6d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40cb70	 Bytes: 3
  %loadMem_40cb70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb70 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb70)
  store %struct.Memory* %call_40cb70, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40cb73	 Bytes: 3
  %loadMem_40cb73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb73 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb73)
  store %struct.Memory* %call_40cb73, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40cb76	 Bytes: 8
  %loadMem_40cb76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb76 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb76)
  store %struct.Memory* %call_40cb76, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 40cb7e	 Bytes: 3
  %loadMem_40cb7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb7e = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb7e)
  store %struct.Memory* %call_40cb7e, %struct.Memory** %MEMORY

  ; Code: jne .L_40ccdc	 RIP: 40cb81	 Bytes: 6
  %loadMem_40cb81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb81 = call %struct.Memory* @routine_jne_.L_40ccdc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb81, i8* %BRANCH_TAKEN, i64 347, i64 6, i64 6)
  store %struct.Memory* %call_40cb81, %struct.Memory** %MEMORY

  %loadBr_40cb81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cb81 = icmp eq i8 %loadBr_40cb81, 1
  br i1 %cmpBr_40cb81, label %block_.L_40ccdc, label %block_40cb87

block_40cb87:
  ; Code: movq $0xa7f430, %rax	 RIP: 40cb87	 Bytes: 10
  %loadMem_40cb87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb87 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb87)
  store %struct.Memory* %call_40cb87, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40cb91	 Bytes: 3
  %loadMem_40cb91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb91 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb91)
  store %struct.Memory* %call_40cb91, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40cb94	 Bytes: 3
  %loadMem_40cb94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb94 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb94)
  store %struct.Memory* %call_40cb94, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40cb97	 Bytes: 3
  %loadMem_40cb97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb97 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb97)
  store %struct.Memory* %call_40cb97, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40cb9a	 Bytes: 8
  %loadMem_40cb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cb9a = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cb9a)
  store %struct.Memory* %call_40cb9a, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40cba2	 Bytes: 7
  %loadMem_40cba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cba2 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cba2)
  store %struct.Memory* %call_40cba2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40cba9	 Bytes: 3
  %loadMem_40cba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cba9 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cba9)
  store %struct.Memory* %call_40cba9, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40cbac	 Bytes: 6
  %loadMem_40cbac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbac = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbac)
  store %struct.Memory* %call_40cbac, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40cbb2	 Bytes: 7
  %loadMem_40cbb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbb2 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbb2)
  store %struct.Memory* %call_40cbb2, %struct.Memory** %MEMORY

  ; Code: je .L_40ccdc	 RIP: 40cbb9	 Bytes: 6
  %loadMem_40cbb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbb9 = call %struct.Memory* @routine_je_.L_40ccdc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbb9, i8* %BRANCH_TAKEN, i64 291, i64 6, i64 6)
  store %struct.Memory* %call_40cbb9, %struct.Memory** %MEMORY

  %loadBr_40cbb9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cbb9 = icmp eq i8 %loadBr_40cbb9, 1
  br i1 %cmpBr_40cbb9, label %block_.L_40ccdc, label %block_40cbbf

block_40cbbf:
  ; Code: movq $0xa7f430, %rax	 RIP: 40cbbf	 Bytes: 10
  %loadMem_40cbbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbbf = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbbf)
  store %struct.Memory* %call_40cbbf, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40cbc9	 Bytes: 3
  %loadMem_40cbc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbc9 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbc9)
  store %struct.Memory* %call_40cbc9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40cbcc	 Bytes: 3
  %loadMem_40cbcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbcc = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbcc)
  store %struct.Memory* %call_40cbcc, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40cbcf	 Bytes: 3
  %loadMem_40cbcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbcf = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbcf)
  store %struct.Memory* %call_40cbcf, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40cbd2	 Bytes: 7
  %loadMem_40cbd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbd2 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbd2)
  store %struct.Memory* %call_40cbd2, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40cbd9	 Bytes: 4
  %loadMem_40cbd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbd9 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbd9)
  store %struct.Memory* %call_40cbd9, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40cbdd	 Bytes: 7
  %loadMem_40cbdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbdd = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbdd)
  store %struct.Memory* %call_40cbdd, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40cbe4	 Bytes: 3
  %loadMem_40cbe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbe4 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbe4)
  store %struct.Memory* %call_40cbe4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40cbe7	 Bytes: 3
  %loadMem_40cbe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbe7 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbe7)
  store %struct.Memory* %call_40cbe7, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40cbea	 Bytes: 4
  %loadMem_40cbea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbea = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbea)
  store %struct.Memory* %call_40cbea, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40cbee	 Bytes: 7
  %loadMem_40cbee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbee = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbee)
  store %struct.Memory* %call_40cbee, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40cbf5	 Bytes: 3
  %loadMem_40cbf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbf5 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbf5)
  store %struct.Memory* %call_40cbf5, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40cbf8	 Bytes: 3
  %loadMem_40cbf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbf8 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbf8)
  store %struct.Memory* %call_40cbf8, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40cbfb	 Bytes: 4
  %loadMem_40cbfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbfb = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbfb)
  store %struct.Memory* %call_40cbfb, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40cbff	 Bytes: 3
  %loadMem_40cbff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cbff = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cbff)
  store %struct.Memory* %call_40cbff, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40cc02	 Bytes: 4
  %loadMem_40cc02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc02 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc02)
  store %struct.Memory* %call_40cc02, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40cc06	 Bytes: 4
  %loadMem_40cc06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc06 = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc06)
  store %struct.Memory* %call_40cc06, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40cc0a	 Bytes: 3
  %loadMem_40cc0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc0a = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc0a)
  store %struct.Memory* %call_40cc0a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40cc0d	 Bytes: 4
  %loadMem_40cc0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc0d = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc0d)
  store %struct.Memory* %call_40cc0d, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40cc11	 Bytes: 3
  %loadMem_40cc11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc11 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc11)
  store %struct.Memory* %call_40cc11, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40cc14	 Bytes: 3
  %loadMem_40cc14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc14 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc14)
  store %struct.Memory* %call_40cc14, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40cc17	 Bytes: 3
  %loadMem_40cc17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc17 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc17)
  store %struct.Memory* %call_40cc17, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40cc1a	 Bytes: 8
  %loadMem_40cc1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc1a = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc1a)
  store %struct.Memory* %call_40cc1a, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40cc22	 Bytes: 7
  %loadMem_40cc22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc22 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc22)
  store %struct.Memory* %call_40cc22, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40cc29	 Bytes: 3
  %loadMem_40cc29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc29 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc29)
  store %struct.Memory* %call_40cc29, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40cc2c	 Bytes: 3
  %loadMem_40cc2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc2c = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc2c)
  store %struct.Memory* %call_40cc2c, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40cc2f	 Bytes: 4
  %loadMem_40cc2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc2f = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc2f)
  store %struct.Memory* %call_40cc2f, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40cc33	 Bytes: 8
  %loadMem_40cc33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc33 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc33)
  store %struct.Memory* %call_40cc33, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40cc3b	 Bytes: 3
  %loadMem_40cc3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc3b = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc3b)
  store %struct.Memory* %call_40cc3b, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40cc3e	 Bytes: 3
  %loadMem_40cc3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc3e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc3e)
  store %struct.Memory* %call_40cc3e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40cc41	 Bytes: 3
  %loadMem_40cc41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc41 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc41)
  store %struct.Memory* %call_40cc41, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40cc44	 Bytes: 3
  %loadMem_40cc44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc44 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc44)
  store %struct.Memory* %call_40cc44, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40cc47	 Bytes: 8
  %loadMem_40cc47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc47 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc47)
  store %struct.Memory* %call_40cc47, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40cc4f	 Bytes: 7
  %loadMem_40cc4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc4f = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc4f)
  store %struct.Memory* %call_40cc4f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40cc56	 Bytes: 3
  %loadMem_40cc56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc56 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc56)
  store %struct.Memory* %call_40cc56, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40cc59	 Bytes: 3
  %loadMem_40cc59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc59 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc59)
  store %struct.Memory* %call_40cc59, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40cc5c	 Bytes: 3
  %loadMem_40cc5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc5c = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc5c)
  store %struct.Memory* %call_40cc5c, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40cc5f	 Bytes: 8
  %loadMem_40cc5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc5f = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc5f)
  store %struct.Memory* %call_40cc5f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40cc67	 Bytes: 3
  %loadMem_40cc67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc67 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc67)
  store %struct.Memory* %call_40cc67, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40cc6a	 Bytes: 4
  %loadMem_40cc6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc6a = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc6a)
  store %struct.Memory* %call_40cc6a, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40cc6e	 Bytes: 8
  %loadMem_40cc6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc6e = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc6e)
  store %struct.Memory* %call_40cc6e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40cc76	 Bytes: 3
  %loadMem_40cc76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc76 = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc76)
  store %struct.Memory* %call_40cc76, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40cc79	 Bytes: 4
  %loadMem_40cc79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc79 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc79)
  store %struct.Memory* %call_40cc79, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40cc7d	 Bytes: 7
  %loadMem_40cc7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc7d = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc7d)
  store %struct.Memory* %call_40cc7d, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40cc84	 Bytes: 4
  %loadMem_40cc84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc84 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc84)
  store %struct.Memory* %call_40cc84, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 40cc88	 Bytes: 4
  %loadMem_40cc88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc88 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc88)
  store %struct.Memory* %call_40cc88, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40cc8c	 Bytes: 3
  %loadMem_40cc8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc8c = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc8c)
  store %struct.Memory* %call_40cc8c, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40cc8f	 Bytes: 8
  %loadMem_40cc8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc8f = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc8f)
  store %struct.Memory* %call_40cc8f, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40cc97	 Bytes: 7
  %loadMem_40cc97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc97 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc97)
  store %struct.Memory* %call_40cc97, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40cc9e	 Bytes: 3
  %loadMem_40cc9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cc9e = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cc9e)
  store %struct.Memory* %call_40cc9e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40cca1	 Bytes: 3
  %loadMem_40cca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cca1 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cca1)
  store %struct.Memory* %call_40cca1, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40cca4	 Bytes: 4
  %loadMem_40cca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cca4 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cca4)
  store %struct.Memory* %call_40cca4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 40cca8	 Bytes: 4
  %loadMem_40cca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cca8 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cca8)
  store %struct.Memory* %call_40cca8, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40ccac	 Bytes: 3
  %loadMem_40ccac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccac = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccac)
  store %struct.Memory* %call_40ccac, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40ccaf	 Bytes: 8
  %loadMem_40ccaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccaf = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccaf)
  store %struct.Memory* %call_40ccaf, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ccb7	 Bytes: 7
  %loadMem_40ccb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccb7 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccb7)
  store %struct.Memory* %call_40ccb7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40ccbe	 Bytes: 3
  %loadMem_40ccbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccbe = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccbe)
  store %struct.Memory* %call_40ccbe, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rax), %r8d	 RIP: 40ccc1	 Bytes: 4
  %loadMem_40ccc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccc1 = call %struct.Memory* @routine_movl_0x60__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccc1)
  store %struct.Memory* %call_40ccc1, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40ccc5	 Bytes: 3
  %loadMem_40ccc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccc5 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccc5)
  store %struct.Memory* %call_40ccc5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40ccc8	 Bytes: 4
  %loadMem_40ccc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccc8 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccc8)
  store %struct.Memory* %call_40ccc8, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rax)	 RIP: 40cccc	 Bytes: 4
  %loadMem_40cccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cccc = call %struct.Memory* @routine_movl__r9d__0x60__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cccc)
  store %struct.Memory* %call_40cccc, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rax	 RIP: 40ccd0	 Bytes: 3
  %loadMem_40ccd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccd0 = call %struct.Memory* @routine_movslq__r8d___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccd0)
  store %struct.Memory* %call_40ccd0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rax,4)	 RIP: 40ccd3	 Bytes: 4
  %loadMem_40ccd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccd3 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccd3)
  store %struct.Memory* %call_40ccd3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40cd43	 RIP: 40ccd7	 Bytes: 5
  %loadMem_40ccd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccd7 = call %struct.Memory* @routine_jmpq_.L_40cd43(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccd7, i64 108, i64 5)
  store %struct.Memory* %call_40ccd7, %struct.Memory** %MEMORY

  br label %block_.L_40cd43

  ; Code: .L_40ccdc:	 RIP: 40ccdc	 Bytes: 0
block_.L_40ccdc:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40ccdc	 Bytes: 3
  %loadMem_40ccdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccdc = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccdc)
  store %struct.Memory* %call_40ccdc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40ccdf	 Bytes: 3
  %loadMem_40ccdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccdf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccdf)
  store %struct.Memory* %call_40ccdf, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40cce2	 Bytes: 3
  %loadMem_40cce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cce2 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cce2)
  store %struct.Memory* %call_40cce2, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40cce5	 Bytes: 8
  %loadMem_40cce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cce5 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cce5)
  store %struct.Memory* %call_40cce5, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 40cced	 Bytes: 3
  %loadMem_40cced = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cced = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cced)
  store %struct.Memory* %call_40cced, %struct.Memory** %MEMORY

  ; Code: jne .L_40cd3e	 RIP: 40ccf0	 Bytes: 6
  %loadMem_40ccf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccf0 = call %struct.Memory* @routine_jne_.L_40cd3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccf0, i8* %BRANCH_TAKEN, i64 78, i64 6, i64 6)
  store %struct.Memory* %call_40ccf0, %struct.Memory** %MEMORY

  %loadBr_40ccf0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ccf0 = icmp eq i8 %loadBr_40ccf0, 1
  br i1 %cmpBr_40ccf0, label %block_.L_40cd3e, label %block_40ccf6

block_40ccf6:
  ; Code: movq $0xa7f430, %rax	 RIP: 40ccf6	 Bytes: 10
  %loadMem_40ccf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ccf6 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ccf6)
  store %struct.Memory* %call_40ccf6, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40cd00	 Bytes: 3
  %loadMem_40cd00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd00 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd00)
  store %struct.Memory* %call_40cd00, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40cd03	 Bytes: 3
  %loadMem_40cd03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd03 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd03)
  store %struct.Memory* %call_40cd03, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40cd06	 Bytes: 3
  %loadMem_40cd06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd06 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd06)
  store %struct.Memory* %call_40cd06, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40cd09	 Bytes: 8
  %loadMem_40cd09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd09 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd09)
  store %struct.Memory* %call_40cd09, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40cd11	 Bytes: 7
  %loadMem_40cd11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd11 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd11)
  store %struct.Memory* %call_40cd11, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40cd18	 Bytes: 3
  %loadMem_40cd18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd18 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd18)
  store %struct.Memory* %call_40cd18, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40cd1b	 Bytes: 6
  %loadMem_40cd1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd1b = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd1b)
  store %struct.Memory* %call_40cd1b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40cd21	 Bytes: 7
  %loadMem_40cd21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd21 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd21)
  store %struct.Memory* %call_40cd21, %struct.Memory** %MEMORY

  ; Code: je .L_40cd3e	 RIP: 40cd28	 Bytes: 6
  %loadMem_40cd28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd28 = call %struct.Memory* @routine_je_.L_40cd3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd28, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_40cd28, %struct.Memory** %MEMORY

  %loadBr_40cd28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40cd28 = icmp eq i8 %loadBr_40cd28, 1
  br i1 %cmpBr_40cd28, label %block_.L_40cd3e, label %block_40cd2e

block_40cd2e:
  ; Code: movl -0x8(%rbp), %edi	 RIP: 40cd2e	 Bytes: 3
  %loadMem_40cd2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd2e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd2e)
  store %struct.Memory* %call_40cd2e, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40cd31	 Bytes: 3
  %loadMem_40cd31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd31 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd31)
  store %struct.Memory* %call_40cd31, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40cd34	 Bytes: 3
  %loadMem_40cd34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd34 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd34)
  store %struct.Memory* %call_40cd34, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 40cd37	 Bytes: 2
  %loadMem_40cd37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd37 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd37)
  store %struct.Memory* %call_40cd37, %struct.Memory** %MEMORY

  ; Code: callq .assimilate_string	 RIP: 40cd39	 Bytes: 5
  %loadMem1_40cd39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40cd39 = call %struct.Memory* @routine_callq_.assimilate_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40cd39, i64 23, i64 5, i64 5)
  store %struct.Memory* %call1_40cd39, %struct.Memory** %MEMORY

  %loadMem2_40cd39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40cd39 = load i64, i64* %3
  %call2_40cd39 = call %struct.Memory* @sub_40cd50.assimilate_string(%struct.State* %0, i64  %loadPC_40cd39, %struct.Memory* %loadMem2_40cd39)
  store %struct.Memory* %call2_40cd39, %struct.Memory** %MEMORY

  ; Code: .L_40cd3e:	 RIP: 40cd3e	 Bytes: 0
  br label %block_.L_40cd3e
block_.L_40cd3e:

  ; Code: jmpq .L_40cd43	 RIP: 40cd3e	 Bytes: 5
  %loadMem_40cd3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd3e = call %struct.Memory* @routine_jmpq_.L_40cd43(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd3e, i64 5, i64 5)
  store %struct.Memory* %call_40cd3e, %struct.Memory** %MEMORY

  br label %block_.L_40cd43

  ; Code: .L_40cd43:	 RIP: 40cd43	 Bytes: 0
block_.L_40cd43:

  ; Code: jmpq .L_40cd48	 RIP: 40cd43	 Bytes: 5
  %loadMem_40cd43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd43 = call %struct.Memory* @routine_jmpq_.L_40cd48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd43, i64 5, i64 5)
  store %struct.Memory* %call_40cd43, %struct.Memory** %MEMORY

  br label %block_.L_40cd48

  ; Code: .L_40cd48:	 RIP: 40cd48	 Bytes: 0
block_.L_40cd48:

  ; Code: addq $0x30, %rsp	 RIP: 40cd48	 Bytes: 4
  %loadMem_40cd48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd48 = call %struct.Memory* @routine_addq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd48)
  store %struct.Memory* %call_40cd48, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 40cd4c	 Bytes: 1
  %loadMem_40cd4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd4c = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd4c)
  store %struct.Memory* %call_40cd4c, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40cd4d	 Bytes: 1
  %loadMem_40cd4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40cd4d = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40cd4d)
  store %struct.Memory* %call_40cd4d, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40cd4d
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x99da00___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x99da00_type* @G__0x99da00 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x3___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 3)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_subl_MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0xa0e710_type* @G_0xa0e710 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x99da00___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x99da00_type* @G_0x99da00 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0xa0e710___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xa0e710_type* @G_0xa0e710 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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

define %struct.Memory* @routine_addq__0x10___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 16)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rdx__0xa0e710(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xa0e710_type* @G_0xa0e710 to i64), i64 %9)
  ret %struct.Memory* %12
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_addl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__edi__0x99da00(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99da00_type* @G_0x99da00 to i64), i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_cmpl__0xf0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 240)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jge_.L_40c0f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_40c14c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57a16e_type* @G__0x57a16e to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xce0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 3296)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57a321___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57a321_type* @G__0x57a321 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x14___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 20)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0x20__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__r9___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_movl_MINUS0x28__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
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

define %struct.Memory* @routine_callq_.abortgo(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xa7f430_type* @G__0xa7f430 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movl__ecx__0xaab3f0___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}






define %struct.Memory* @routine_movl__ecx__0xaaba30___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11188784
  %15 = load i32, i32* %ECX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 744)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rax___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_addq__rdx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx____rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}









define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x1__0x4__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_movl__ecx__0x8__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl__0x0__0xc__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movl__0x0__0x60__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x99da04___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x99da04_type* @G_0x99da04 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__ecx__0x99da04(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99da04_type* @G_0x99da04 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__ecx__0x99da08(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64), i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 740
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_addl__0x14___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 20)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__ecx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_jne_.L_40c2f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addl__0x14___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 20)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__eax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 11185584
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x99da04_type* @G_0x99da04 to i64))
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

define %struct.Memory* @routine_je_.L_40c2f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40c260(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 744)
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


define %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 20)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_40c2b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 16
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
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


define %struct.Memory* @routine_movl_0x99da04___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x99da04_type* @G_0x99da04 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_addl__0x14___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 20)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__esi___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__0xaaadb0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11185584
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jmpq_.L_40c4fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 16
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_40c492(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11187184
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %11)
  ret %struct.Memory* %14
}






define %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_40c492(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_movq__rax___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_addq__rdx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r8d___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl__0x1___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 96
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq__r8d___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 100
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}
















define %struct.Memory* @routine_addq__0x60___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 96)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rsi____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rdx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__0x10___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 16)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xa0e710_type* @G_0xa0e710 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_addl__0x14___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 20)
  ret %struct.Memory* %14
}






















































define %struct.Memory* @routine_jmpq_.L_40c4f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jne_.L_40c4f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_40c4f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.assimilate_string(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_40c5d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_40c5d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40c53a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_40c593(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_40c7d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_40c76c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_40c76c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























































































define %struct.Memory* @routine_subl__0x1___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
}






















































define %struct.Memory* @routine_jmpq_.L_40c7d3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_40c7ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_40c7ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_subl__0x14___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 20)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jne_.L_40c8aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_40c8aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40c814(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_40c86d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_subl__0x14___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 20)
  ret %struct.Memory* %12
}






































define %struct.Memory* @routine_subl__0x14___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 20)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jmpq_.L_40cab2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_40ca46(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_40ca46(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























































































define %struct.Memory* @routine_subl__0x14___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 20)
  ret %struct.Memory* %14
}






















































define %struct.Memory* @routine_jmpq_.L_40caad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_40caa8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_40caa8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_40cb6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_40cb6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40caee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_40cb47(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








































define %struct.Memory* @routine_jmpq_.L_40cd48(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_40ccdc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_40ccdc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























































































define %struct.Memory* @routine_addl__0x1___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
























define %struct.Memory* @routine_movl_0x60__rax____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__r9d__0x60__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 96
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq__r8d___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__0x64__rsi__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 100
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_40cd43(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_40cd3e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_40cd3e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

