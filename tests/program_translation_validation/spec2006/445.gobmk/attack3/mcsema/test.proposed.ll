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
declare %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_413c20.chainlinks2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_461ef0.double_atari_chain2_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_462130.edge_closing_backfill(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4623f0.edge_block_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_462c90.order_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_463620.do_find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_45dce0.do_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_463930.find_cap(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4695f0.draw_back(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_466ab0.break_chain2_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x7ae448_type = type <{ [1 x i8] }>
@G_0x7ae448= global %G_0x7ae448_type <{ [1 x i8] c"\00" }>
%G_0xab0ef8_type = type <{ [1 x i8] }>
@G_0xab0ef8= global %G_0xab0ef8_type <{ [1 x i8] c"\00" }>
%G_0xae23a4_type = type <{ [4 x i8] }>
@G_0xae23a4= global %G_0xae23a4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb060b8_type = type <{ [4 x i8] }>
@G_0xb060b8= global %G_0xb060b8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb54ce0_type = type <{ [4 x i8] }>
@G_0xb54ce0= global %G_0xb54ce0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
@G_0xb54ce4= global %G_0xb54ce4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb6308c_type = type <{ [4 x i8] }>
@G_0xb6308c= global %G_0xb6308c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb8af28_type = type <{ [4 x i8] }>
@G_0xb8af28= global %G_0xb8af28_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb8b850_type = type <{ [4 x i8] }>
@G_0xb8b850= global %G_0xb8b850_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb8b854_type = type <{ [4 x i8] }>
@G_0xb8b854= global %G_0xb8b854_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x57e5fb_type = type <{ [8 x i8] }>
@G__0x57e5fb= global %G__0x57e5fb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f60a_type = type <{ [8 x i8] }>
@G__0x57f60a= global %G__0x57f60a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
@G__0x57fb0d= global %G__0x57fb0d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fbff_type = type <{ [8 x i8] }>
@G__0x57fbff= global %G__0x57fbff_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fd0a_type = type <{ [8 x i8] }>
@G__0x57fd0a= global %G__0x57fd0a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fde6_type = type <{ [8 x i8] }>
@G__0x57fde6= global %G__0x57fde6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fdf0_type = type <{ [8 x i8] }>
@G__0x57fdf0= global %G__0x57fdf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fdfa_type = type <{ [8 x i8] }>
@G__0x57fdfa= global %G__0x57fdfa_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fe04_type = type <{ [8 x i8] }>
@G__0x57fe04= global %G__0x57fe04_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fe0e_type = type <{ [8 x i8] }>
@G__0x57fe0e= global %G__0x57fe0e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fe4e_type = type <{ [8 x i8] }>
@G__0x57fe4e= global %G__0x57fe4e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fe92_type = type <{ [8 x i8] }>
@G__0x57fe92= global %G__0x57fe92_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @attack3(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .attack3:	 RIP: 45ff40	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 45ff40	 Bytes: 1
  %loadMem_45ff40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff40 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff40)
  store %struct.Memory* %call_45ff40, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 45ff41	 Bytes: 3
  %loadMem_45ff41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff41 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff41)
  store %struct.Memory* %call_45ff41, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 45ff44	 Bytes: 2
  %loadMem_45ff44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff44 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff44)
  store %struct.Memory* %call_45ff44, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 45ff46	 Bytes: 2
  %loadMem_45ff46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff46 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff46)
  store %struct.Memory* %call_45ff46, %struct.Memory** %MEMORY

  ; Code: pushq %r13	 RIP: 45ff48	 Bytes: 2
  %loadMem_45ff48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff48 = call %struct.Memory* @routine_pushq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff48)
  store %struct.Memory* %call_45ff48, %struct.Memory** %MEMORY

  ; Code: pushq %r12	 RIP: 45ff4a	 Bytes: 2
  %loadMem_45ff4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff4a = call %struct.Memory* @routine_pushq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff4a)
  store %struct.Memory* %call_45ff4a, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 45ff4c	 Bytes: 1
  %loadMem_45ff4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff4c = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff4c)
  store %struct.Memory* %call_45ff4c, %struct.Memory** %MEMORY

  ; Code: subq $0x5d8, %rsp	 RIP: 45ff4d	 Bytes: 7
  %loadMem_45ff4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff4d = call %struct.Memory* @routine_subq__0x5d8___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff4d)
  store %struct.Memory* %call_45ff4d, %struct.Memory** %MEMORY

  ; Code: movq $0x57fe4e, %rax	 RIP: 45ff54	 Bytes: 10
  %loadMem_45ff54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff54 = call %struct.Memory* @routine_movq__0x57fe4e___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff54)
  store %struct.Memory* %call_45ff54, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %r8d	 RIP: 45ff5e	 Bytes: 6
  %loadMem_45ff5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff5e = call %struct.Memory* @routine_movl__0x3___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff5e)
  store %struct.Memory* %call_45ff5e, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x30(%rbp)	 RIP: 45ff64	 Bytes: 3
  %loadMem_45ff64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff64 = call %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff64)
  store %struct.Memory* %call_45ff64, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x38(%rbp)	 RIP: 45ff67	 Bytes: 4
  %loadMem_45ff67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff67 = call %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff67)
  store %struct.Memory* %call_45ff67, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3c(%rbp)	 RIP: 45ff6b	 Bytes: 3
  %loadMem_45ff6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff6b = call %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff6b)
  store %struct.Memory* %call_45ff6b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x40(%rbp)	 RIP: 45ff6e	 Bytes: 3
  %loadMem_45ff6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff6e = call %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff6e)
  store %struct.Memory* %call_45ff6e, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 45ff71	 Bytes: 4
  %loadMem_45ff71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff71 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff71)
  store %struct.Memory* %call_45ff71, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rsi,1), %ecx	 RIP: 45ff75	 Bytes: 8
  %loadMem_45ff75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff75 = call %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff75)
  store %struct.Memory* %call_45ff75, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x44(%rbp)	 RIP: 45ff7d	 Bytes: 3
  %loadMem_45ff7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff7d = call %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff7d)
  store %struct.Memory* %call_45ff7d, %struct.Memory** %MEMORY

  ; Code: subl -0x44(%rbp), %r8d	 RIP: 45ff80	 Bytes: 4
  %loadMem_45ff80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff80 = call %struct.Memory* @routine_subl_MINUS0x44__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff80)
  store %struct.Memory* %call_45ff80, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x48(%rbp)	 RIP: 45ff84	 Bytes: 4
  %loadMem_45ff84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff84 = call %struct.Memory* @routine_movl__r8d__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff84)
  store %struct.Memory* %call_45ff84, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2ec(%rbp)	 RIP: 45ff88	 Bytes: 10
  %loadMem_45ff88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff88 = call %struct.Memory* @routine_movl__0x0__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff88)
  store %struct.Memory* %call_45ff88, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x48c(%rbp)	 RIP: 45ff92	 Bytes: 10
  %loadMem_45ff92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff92 = call %struct.Memory* @routine_movl__0x0__MINUS0x48c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff92)
  store %struct.Memory* %call_45ff92, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x490(%rbp)	 RIP: 45ff9c	 Bytes: 10
  %loadMem_45ff9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff9c = call %struct.Memory* @routine_movl__0x0__MINUS0x490__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff9c)
  store %struct.Memory* %call_45ff9c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x498(%rbp)	 RIP: 45ffa6	 Bytes: 7
  %loadMem_45ffa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ffa6 = call %struct.Memory* @routine_movq__rax__MINUS0x498__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ffa6)
  store %struct.Memory* %call_45ffa6, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 45ffad	 Bytes: 3
  %loadMem_45ffad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ffad = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ffad)
  store %struct.Memory* %call_45ffad, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x49c(%rbp)	 RIP: 45ffb0	 Bytes: 6
  %loadMem_45ffb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ffb0 = call %struct.Memory* @routine_movl__ecx__MINUS0x49c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ffb0)
  store %struct.Memory* %call_45ffb0, %struct.Memory** %MEMORY

  ; Code: movl 0xae23a4, %ecx	 RIP: 45ffb6	 Bytes: 7
  %loadMem_45ffb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ffb6 = call %struct.Memory* @routine_movl_0xae23a4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ffb6)
  store %struct.Memory* %call_45ffb6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 45ffbd	 Bytes: 3
  %loadMem_45ffbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ffbd = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ffbd)
  store %struct.Memory* %call_45ffbd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xae23a4	 RIP: 45ffc0	 Bytes: 7
  %loadMem_45ffc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ffc0 = call %struct.Memory* @routine_movl__ecx__0xae23a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ffc0)
  store %struct.Memory* %call_45ffc0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2f8(%rbp)	 RIP: 45ffc7	 Bytes: 10
  %loadMem_45ffc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ffc7 = call %struct.Memory* @routine_movl__0x0__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ffc7)
  store %struct.Memory* %call_45ffc7, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rax	 RIP: 45ffd1	 Bytes: 4
  %loadMem_45ffd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ffd1 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ffd1)
  store %struct.Memory* %call_45ffd1, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 45ffd5	 Bytes: 8
  %loadMem_45ffd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ffd5 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ffd5)
  store %struct.Memory* %call_45ffd5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 45ffdd	 Bytes: 3
  %loadMem_45ffdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ffdd = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ffdd)
  store %struct.Memory* %call_45ffdd, %struct.Memory** %MEMORY

  ; Code: je .L_45fffb	 RIP: 45ffe0	 Bytes: 6
  %loadMem_45ffe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ffe0 = call %struct.Memory* @routine_je_.L_45fffb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ffe0, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_45ffe0, %struct.Memory** %MEMORY

  %loadBr_45ffe0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ffe0 = icmp eq i8 %loadBr_45ffe0, 1
  br i1 %cmpBr_45ffe0, label %block_.L_45fffb, label %block_45ffe6

block_45ffe6:
  ; Code: movslq -0x30(%rbp), %rax	 RIP: 45ffe6	 Bytes: 4
  %loadMem_45ffe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ffe6 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ffe6)
  store %struct.Memory* %call_45ffe6, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 45ffea	 Bytes: 8
  %loadMem_45ffea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ffea = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ffea)
  store %struct.Memory* %call_45ffea, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 45fff2	 Bytes: 3
  %loadMem_45fff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fff2 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fff2)
  store %struct.Memory* %call_45fff2, %struct.Memory** %MEMORY

  ; Code: jne .L_460000	 RIP: 45fff5	 Bytes: 6
  %loadMem_45fff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fff5 = call %struct.Memory* @routine_jne_.L_460000(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fff5, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_45fff5, %struct.Memory** %MEMORY

  %loadBr_45fff5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fff5 = icmp eq i8 %loadBr_45fff5, 1
  br i1 %cmpBr_45fff5, label %block_.L_460000, label %block_.L_45fffb

  ; Code: .L_45fffb:	 RIP: 45fffb	 Bytes: 0
block_.L_45fffb:

  ; Code: jmpq .L_460028	 RIP: 45fffb	 Bytes: 5
  %loadMem_45fffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fffb = call %struct.Memory* @routine_jmpq_.L_460028(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fffb, i64 45, i64 5)
  store %struct.Memory* %call_45fffb, %struct.Memory** %MEMORY

  br label %block_.L_460028

  ; Code: .L_460000:	 RIP: 460000	 Bytes: 0
block_.L_460000:

  ; Code: movq $0x57fb0d, %rdi	 RIP: 460000	 Bytes: 10
  %loadMem_460000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460000 = call %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460000)
  store %struct.Memory* %call_460000, %struct.Memory** %MEMORY

  ; Code: movl $0xaef, %esi	 RIP: 46000a	 Bytes: 5
  %loadMem_46000a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46000a = call %struct.Memory* @routine_movl__0xaef___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46000a)
  store %struct.Memory* %call_46000a, %struct.Memory** %MEMORY

  ; Code: movq $0x57fbff, %rdx	 RIP: 46000f	 Bytes: 10
  %loadMem_46000f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46000f = call %struct.Memory* @routine_movq__0x57fbff___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46000f)
  store %struct.Memory* %call_46000f, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 460019	 Bytes: 5
  %loadMem_460019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460019 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460019)
  store %struct.Memory* %call_460019, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 46001e	 Bytes: 2
  %loadMem_46001e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46001e = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46001e)
  store %struct.Memory* %call_46001e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 460020	 Bytes: 3
  %loadMem_460020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460020 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460020)
  store %struct.Memory* %call_460020, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 460023	 Bytes: 5
  %loadMem1_460023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460023 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460023, i64 -57235, i64 5, i64 5)
  store %struct.Memory* %call1_460023, %struct.Memory** %MEMORY

  %loadMem2_460023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460023 = load i64, i64* %3
  %call2_460023 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_460023, %struct.Memory* %loadMem2_460023)
  store %struct.Memory* %call2_460023, %struct.Memory** %MEMORY

  ; Code: .L_460028:	 RIP: 460028	 Bytes: 0
  br label %block_.L_460028
block_.L_460028:

  ; Code: movl 0xb54ce4, %eax	 RIP: 460028	 Bytes: 7
  %loadMem_460028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460028 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460028)
  store %struct.Memory* %call_460028, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b854, %eax	 RIP: 46002f	 Bytes: 7
  %loadMem_46002f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46002f = call %struct.Memory* @routine_cmpl_0xb8b854___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46002f)
  store %struct.Memory* %call_46002f, %struct.Memory** %MEMORY

  ; Code: jle .L_460079	 RIP: 460036	 Bytes: 6
  %loadMem_460036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460036 = call %struct.Memory* @routine_jle_.L_460079(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460036, i8* %BRANCH_TAKEN, i64 67, i64 6, i64 6)
  store %struct.Memory* %call_460036, %struct.Memory** %MEMORY

  %loadBr_460036 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460036 = icmp eq i8 %loadBr_460036, 1
  br i1 %cmpBr_460036, label %block_.L_460079, label %block_46003c

block_46003c:
  ; Code: jmpq .L_460041	 RIP: 46003c	 Bytes: 5
  %loadMem_46003c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46003c = call %struct.Memory* @routine_jmpq_.L_460041(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46003c, i64 5, i64 5)
  store %struct.Memory* %call_46003c, %struct.Memory** %MEMORY

  br label %block_.L_460041

  ; Code: .L_460041:	 RIP: 460041	 Bytes: 0
block_.L_460041:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 460041	 Bytes: 9
  %loadMem_460041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460041 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460041)
  store %struct.Memory* %call_460041, %struct.Memory** %MEMORY

  ; Code: je .L_46006d	 RIP: 46004a	 Bytes: 6
  %loadMem_46004a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46004a = call %struct.Memory* @routine_je_.L_46006d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46004a, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_46004a, %struct.Memory** %MEMORY

  %loadBr_46004a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46004a = icmp eq i8 %loadBr_46004a, 1
  br i1 %cmpBr_46004a, label %block_.L_46006d, label %block_460050

block_460050:
  ; Code: xorl %eax, %eax	 RIP: 460050	 Bytes: 2
  %loadMem_460050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460050 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460050)
  store %struct.Memory* %call_460050, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 460052	 Bytes: 2
  %loadMem_460052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460052 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460052)
  store %struct.Memory* %call_460052, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %r8d	 RIP: 460054	 Bytes: 3
  %loadMem_460054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460054 = call %struct.Memory* @routine_movl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460054)
  store %struct.Memory* %call_460054, %struct.Memory** %MEMORY

  ; Code: movq -0x498(%rbp), %rdi	 RIP: 460057	 Bytes: 7
  %loadMem_460057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460057 = call %struct.Memory* @routine_movq_MINUS0x498__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460057)
  store %struct.Memory* %call_460057, %struct.Memory** %MEMORY

  ; Code: movl -0x49c(%rbp), %esi	 RIP: 46005e	 Bytes: 6
  %loadMem_46005e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46005e = call %struct.Memory* @routine_movl_MINUS0x49c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46005e)
  store %struct.Memory* %call_46005e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 460064	 Bytes: 2
  %loadMem_460064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460064 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460064)
  store %struct.Memory* %call_460064, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 460066	 Bytes: 2
  %loadMem_460066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460066 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460066)
  store %struct.Memory* %call_460066, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 460068	 Bytes: 5
  %loadMem1_460068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460068 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460068, i64 -295080, i64 5, i64 5)
  store %struct.Memory* %call1_460068, %struct.Memory** %MEMORY

  %loadMem2_460068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460068 = load i64, i64* %3
  %call2_460068 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_460068, %struct.Memory* %loadMem2_460068)
  store %struct.Memory* %call2_460068, %struct.Memory** %MEMORY

  ; Code: .L_46006d:	 RIP: 46006d	 Bytes: 0
  br label %block_.L_46006d
block_.L_46006d:

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 46006d	 Bytes: 7
  %loadMem_46006d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46006d = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46006d)
  store %struct.Memory* %call_46006d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_461376	 RIP: 460074	 Bytes: 5
  %loadMem_460074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460074 = call %struct.Memory* @routine_jmpq_.L_461376(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460074, i64 4866, i64 5)
  store %struct.Memory* %call_460074, %struct.Memory** %MEMORY

  br label %block_.L_461376

  ; Code: .L_460079:	 RIP: 460079	 Bytes: 0
block_.L_460079:

  ; Code: movl $0x1, %edx	 RIP: 460079	 Bytes: 5
  %loadMem_460079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460079 = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460079)
  store %struct.Memory* %call_460079, %struct.Memory** %MEMORY

  ; Code: leaq -0x2d0(%rbp), %rsi	 RIP: 46007e	 Bytes: 7
  %loadMem_46007e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46007e = call %struct.Memory* @routine_leaq_MINUS0x2d0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46007e)
  store %struct.Memory* %call_46007e, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 460085	 Bytes: 3
  %loadMem_460085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460085 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460085)
  store %struct.Memory* %call_460085, %struct.Memory** %MEMORY

  ; Code: callq .chainlinks2	 RIP: 460088	 Bytes: 5
  %loadMem1_460088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460088 = call %struct.Memory* @routine_callq_.chainlinks2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460088, i64 -312424, i64 5, i64 5)
  store %struct.Memory* %call1_460088, %struct.Memory** %MEMORY

  %loadMem2_460088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460088 = load i64, i64* %3
  %call2_460088 = call %struct.Memory* @sub_413c20.chainlinks2(%struct.State* %0, i64  %loadPC_460088, %struct.Memory* %loadMem2_460088)
  store %struct.Memory* %call2_460088, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 46008d	 Bytes: 3
  %loadMem_46008d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46008d = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46008d)
  store %struct.Memory* %call_46008d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2e8(%rbp)	 RIP: 460090	 Bytes: 10
  %loadMem_460090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460090 = call %struct.Memory* @routine_movl__0x0__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460090)
  store %struct.Memory* %call_460090, %struct.Memory** %MEMORY

  ; Code: .L_46009a:	 RIP: 46009a	 Bytes: 0
  br label %block_.L_46009a
block_.L_46009a:

  ; Code: movl -0x2e8(%rbp), %eax	 RIP: 46009a	 Bytes: 6
  %loadMem_46009a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46009a = call %struct.Memory* @routine_movl_MINUS0x2e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46009a)
  store %struct.Memory* %call_46009a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4c(%rbp), %eax	 RIP: 4600a0	 Bytes: 3
  %loadMem_4600a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4600a0 = call %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4600a0)
  store %struct.Memory* %call_4600a0, %struct.Memory** %MEMORY

  ; Code: jge .L_4601c6	 RIP: 4600a3	 Bytes: 6
  %loadMem_4600a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4600a3 = call %struct.Memory* @routine_jge_.L_4601c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4600a3, i8* %BRANCH_TAKEN, i64 291, i64 6, i64 6)
  store %struct.Memory* %call_4600a3, %struct.Memory** %MEMORY

  %loadBr_4600a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4600a3 = icmp eq i8 %loadBr_4600a3, 1
  br i1 %cmpBr_4600a3, label %block_.L_4601c6, label %block_4600a9

block_4600a9:
  ; Code: leaq -0x488(%rbp), %rsi	 RIP: 4600a9	 Bytes: 7
  %loadMem_4600a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4600a9 = call %struct.Memory* @routine_leaq_MINUS0x488__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4600a9)
  store %struct.Memory* %call_4600a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x2e8(%rbp), %rax	 RIP: 4600b0	 Bytes: 7
  %loadMem_4600b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4600b0 = call %struct.Memory* @routine_movslq_MINUS0x2e8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4600b0)
  store %struct.Memory* %call_4600b0, %struct.Memory** %MEMORY

  ; Code: movl -0x2d0(%rbp,%rax,4), %edi	 RIP: 4600b7	 Bytes: 7
  %loadMem_4600b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4600b7 = call %struct.Memory* @routine_movl_MINUS0x2d0__rbp__rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4600b7)
  store %struct.Memory* %call_4600b7, %struct.Memory** %MEMORY

  ; Code: callq .break_chain_moves	 RIP: 4600be	 Bytes: 5
  %loadMem1_4600be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4600be = call %struct.Memory* @routine_callq_.break_chain_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4600be, i64 7378, i64 5, i64 5)
  store %struct.Memory* %call1_4600be, %struct.Memory** %MEMORY

  %loadMem2_4600be = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4600be = load i64, i64* %3
  %call2_4600be = call %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* %0, i64  %loadPC_4600be, %struct.Memory* %loadMem2_4600be)
  store %struct.Memory* %call2_4600be, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %esi	 RIP: 4600c3	 Bytes: 5
  %loadMem_4600c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4600c3 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4600c3)
  store %struct.Memory* %call_4600c3, %struct.Memory** %MEMORY

  ; Code: leaq -0x4a0(%rbp), %rdx	 RIP: 4600c8	 Bytes: 7
  %loadMem_4600c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4600c8 = call %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4600c8)
  store %struct.Memory* %call_4600c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x2e8(%rbp), %rax	 RIP: 4600cf	 Bytes: 7
  %loadMem_4600cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4600cf = call %struct.Memory* @routine_movslq_MINUS0x2e8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4600cf)
  store %struct.Memory* %call_4600cf, %struct.Memory** %MEMORY

  ; Code: movl -0x2d0(%rbp,%rax,4), %edi	 RIP: 4600d6	 Bytes: 7
  %loadMem_4600d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4600d6 = call %struct.Memory* @routine_movl_MINUS0x2d0__rbp__rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4600d6)
  store %struct.Memory* %call_4600d6, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 4600dd	 Bytes: 5
  %loadMem1_4600dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4600dd = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4600dd, i64 -329885, i64 5, i64 5)
  store %struct.Memory* %call1_4600dd, %struct.Memory** %MEMORY

  %loadMem2_4600dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4600dd = load i64, i64* %3
  %call2_4600dd = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_4600dd, %struct.Memory* %loadMem2_4600dd)
  store %struct.Memory* %call2_4600dd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x558(%rbp)	 RIP: 4600e2	 Bytes: 6
  %loadMem_4600e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4600e2 = call %struct.Memory* @routine_movl__eax__MINUS0x558__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4600e2)
  store %struct.Memory* %call_4600e2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4a4(%rbp)	 RIP: 4600e8	 Bytes: 10
  %loadMem_4600e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4600e8 = call %struct.Memory* @routine_movl__0x0__MINUS0x4a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4600e8)
  store %struct.Memory* %call_4600e8, %struct.Memory** %MEMORY

  ; Code: .L_4600f2:	 RIP: 4600f2	 Bytes: 0
  br label %block_.L_4600f2
block_.L_4600f2:

  ; Code: movl -0x4a4(%rbp), %eax	 RIP: 4600f2	 Bytes: 6
  %loadMem_4600f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4600f2 = call %struct.Memory* @routine_movl_MINUS0x4a4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4600f2)
  store %struct.Memory* %call_4600f2, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 4600f8	 Bytes: 6
  %loadMem_4600f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4600f8 = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4600f8)
  store %struct.Memory* %call_4600f8, %struct.Memory** %MEMORY

  ; Code: jge .L_460154	 RIP: 4600fe	 Bytes: 6
  %loadMem_4600fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4600fe = call %struct.Memory* @routine_jge_.L_460154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4600fe, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_4600fe, %struct.Memory** %MEMORY

  %loadBr_4600fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4600fe = icmp eq i8 %loadBr_4600fe, 1
  br i1 %cmpBr_4600fe, label %block_.L_460154, label %block_460104

block_460104:
  ; Code: movslq -0x4a4(%rbp), %rax	 RIP: 460104	 Bytes: 7
  %loadMem_460104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460104 = call %struct.Memory* @routine_movslq_MINUS0x4a4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460104)
  store %struct.Memory* %call_460104, %struct.Memory** %MEMORY

  ; Code: movl -0x488(%rbp,%rax,4), %ecx	 RIP: 46010b	 Bytes: 7
  %loadMem_46010b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46010b = call %struct.Memory* @routine_movl_MINUS0x488__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46010b)
  store %struct.Memory* %call_46010b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4a0(%rbp), %ecx	 RIP: 460112	 Bytes: 6
  %loadMem_460112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460112 = call %struct.Memory* @routine_cmpl_MINUS0x4a0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460112)
  store %struct.Memory* %call_460112, %struct.Memory** %MEMORY

  ; Code: jne .L_46013b	 RIP: 460118	 Bytes: 6
  %loadMem_460118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460118 = call %struct.Memory* @routine_jne_.L_46013b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460118, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_460118, %struct.Memory** %MEMORY

  %loadBr_460118 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460118 = icmp eq i8 %loadBr_460118, 1
  br i1 %cmpBr_460118, label %block_.L_46013b, label %block_46011e

block_46011e:
  ; Code: movslq -0x4a4(%rbp), %rax	 RIP: 46011e	 Bytes: 7
  %loadMem_46011e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46011e = call %struct.Memory* @routine_movslq_MINUS0x4a4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46011e)
  store %struct.Memory* %call_46011e, %struct.Memory** %MEMORY

  ; Code: movl -0x3c0(%rbp,%rax,4), %ecx	 RIP: 460125	 Bytes: 7
  %loadMem_460125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460125 = call %struct.Memory* @routine_movl_MINUS0x3c0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460125)
  store %struct.Memory* %call_460125, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %ecx	 RIP: 46012c	 Bytes: 3
  %loadMem_46012c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46012c = call %struct.Memory* @routine_addl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46012c)
  store %struct.Memory* %call_46012c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3c0(%rbp,%rax,4)	 RIP: 46012f	 Bytes: 7
  %loadMem_46012f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46012f = call %struct.Memory* @routine_movl__ecx__MINUS0x3c0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46012f)
  store %struct.Memory* %call_46012f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_460154	 RIP: 460136	 Bytes: 5
  %loadMem_460136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460136 = call %struct.Memory* @routine_jmpq_.L_460154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460136, i64 30, i64 5)
  store %struct.Memory* %call_460136, %struct.Memory** %MEMORY

  br label %block_.L_460154

  ; Code: .L_46013b:	 RIP: 46013b	 Bytes: 0
block_.L_46013b:

  ; Code: jmpq .L_460140	 RIP: 46013b	 Bytes: 5
  %loadMem_46013b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46013b = call %struct.Memory* @routine_jmpq_.L_460140(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46013b, i64 5, i64 5)
  store %struct.Memory* %call_46013b, %struct.Memory** %MEMORY

  br label %block_.L_460140

  ; Code: .L_460140:	 RIP: 460140	 Bytes: 0
block_.L_460140:

  ; Code: movl -0x4a4(%rbp), %eax	 RIP: 460140	 Bytes: 6
  %loadMem_460140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460140 = call %struct.Memory* @routine_movl_MINUS0x4a4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460140)
  store %struct.Memory* %call_460140, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 460146	 Bytes: 3
  %loadMem_460146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460146 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460146)
  store %struct.Memory* %call_460146, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4a4(%rbp)	 RIP: 460149	 Bytes: 6
  %loadMem_460149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460149 = call %struct.Memory* @routine_movl__eax__MINUS0x4a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460149)
  store %struct.Memory* %call_460149, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4600f2	 RIP: 46014f	 Bytes: 5
  %loadMem_46014f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46014f = call %struct.Memory* @routine_jmpq_.L_4600f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46014f, i64 -93, i64 5)
  store %struct.Memory* %call_46014f, %struct.Memory** %MEMORY

  br label %block_.L_4600f2

  ; Code: .L_460154:	 RIP: 460154	 Bytes: 0
block_.L_460154:

  ; Code: movl -0x4a4(%rbp), %eax	 RIP: 460154	 Bytes: 6
  %loadMem_460154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460154 = call %struct.Memory* @routine_movl_MINUS0x4a4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460154)
  store %struct.Memory* %call_460154, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 46015a	 Bytes: 6
  %loadMem_46015a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46015a = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46015a)
  store %struct.Memory* %call_46015a, %struct.Memory** %MEMORY

  ; Code: jne .L_4601a8	 RIP: 460160	 Bytes: 6
  %loadMem_460160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460160 = call %struct.Memory* @routine_jne_.L_4601a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460160, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_460160, %struct.Memory** %MEMORY

  %loadBr_460160 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460160 = icmp eq i8 %loadBr_460160, 1
  br i1 %cmpBr_460160, label %block_.L_4601a8, label %block_460166

block_460166:
  ; Code: cmpl $0x32, -0x2f8(%rbp)	 RIP: 460166	 Bytes: 7
  %loadMem_460166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460166 = call %struct.Memory* @routine_cmpl__0x32__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460166)
  store %struct.Memory* %call_460166, %struct.Memory** %MEMORY

  ; Code: jge .L_4601a8	 RIP: 46016d	 Bytes: 6
  %loadMem_46016d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46016d = call %struct.Memory* @routine_jge_.L_4601a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46016d, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_46016d, %struct.Memory** %MEMORY

  %loadBr_46016d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46016d = icmp eq i8 %loadBr_46016d, 1
  br i1 %cmpBr_46016d, label %block_.L_4601a8, label %block_460173

block_460173:
  ; Code: movl -0x4a0(%rbp), %eax	 RIP: 460173	 Bytes: 6
  %loadMem_460173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460173 = call %struct.Memory* @routine_movl_MINUS0x4a0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460173)
  store %struct.Memory* %call_460173, %struct.Memory** %MEMORY

  ; Code: movslq -0x2f8(%rbp), %rcx	 RIP: 460179	 Bytes: 7
  %loadMem_460179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460179 = call %struct.Memory* @routine_movslq_MINUS0x2f8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460179)
  store %struct.Memory* %call_460179, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x488(%rbp,%rcx,4)	 RIP: 460180	 Bytes: 7
  %loadMem_460180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460180 = call %struct.Memory* @routine_movl__eax__MINUS0x488__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460180)
  store %struct.Memory* %call_460180, %struct.Memory** %MEMORY

  ; Code: movslq -0x2f8(%rbp), %rcx	 RIP: 460187	 Bytes: 7
  %loadMem_460187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460187 = call %struct.Memory* @routine_movslq_MINUS0x2f8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460187)
  store %struct.Memory* %call_460187, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3c0(%rbp,%rcx,4)	 RIP: 46018e	 Bytes: 11
  %loadMem_46018e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46018e = call %struct.Memory* @routine_movl__0x0__MINUS0x3c0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46018e)
  store %struct.Memory* %call_46018e, %struct.Memory** %MEMORY

  ; Code: movl -0x2f8(%rbp), %eax	 RIP: 460199	 Bytes: 6
  %loadMem_460199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460199 = call %struct.Memory* @routine_movl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460199)
  store %struct.Memory* %call_460199, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46019f	 Bytes: 3
  %loadMem_46019f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46019f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46019f)
  store %struct.Memory* %call_46019f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f8(%rbp)	 RIP: 4601a2	 Bytes: 6
  %loadMem_4601a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601a2 = call %struct.Memory* @routine_movl__eax__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601a2)
  store %struct.Memory* %call_4601a2, %struct.Memory** %MEMORY

  ; Code: .L_4601a8:	 RIP: 4601a8	 Bytes: 0
  br label %block_.L_4601a8
block_.L_4601a8:

  ; Code: jmpq .L_4601ad	 RIP: 4601a8	 Bytes: 5
  %loadMem_4601a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601a8 = call %struct.Memory* @routine_jmpq_.L_4601ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601a8, i64 5, i64 5)
  store %struct.Memory* %call_4601a8, %struct.Memory** %MEMORY

  br label %block_.L_4601ad

  ; Code: .L_4601ad:	 RIP: 4601ad	 Bytes: 0
block_.L_4601ad:

  ; Code: jmpq .L_4601b2	 RIP: 4601ad	 Bytes: 5
  %loadMem_4601ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601ad = call %struct.Memory* @routine_jmpq_.L_4601b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601ad, i64 5, i64 5)
  store %struct.Memory* %call_4601ad, %struct.Memory** %MEMORY

  br label %block_.L_4601b2

  ; Code: .L_4601b2:	 RIP: 4601b2	 Bytes: 0
block_.L_4601b2:

  ; Code: movl -0x2e8(%rbp), %eax	 RIP: 4601b2	 Bytes: 6
  %loadMem_4601b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601b2 = call %struct.Memory* @routine_movl_MINUS0x2e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601b2)
  store %struct.Memory* %call_4601b2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4601b8	 Bytes: 3
  %loadMem_4601b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601b8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601b8)
  store %struct.Memory* %call_4601b8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e8(%rbp)	 RIP: 4601bb	 Bytes: 6
  %loadMem_4601bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601bb = call %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601bb)
  store %struct.Memory* %call_4601bb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46009a	 RIP: 4601c1	 Bytes: 5
  %loadMem_4601c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601c1 = call %struct.Memory* @routine_jmpq_.L_46009a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601c1, i64 -295, i64 5)
  store %struct.Memory* %call_4601c1, %struct.Memory** %MEMORY

  br label %block_.L_46009a

  ; Code: .L_4601c6:	 RIP: 4601c6	 Bytes: 0
block_.L_4601c6:

  ; Code: leaq -0x488(%rbp), %rsi	 RIP: 4601c6	 Bytes: 7
  %loadMem_4601c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601c6 = call %struct.Memory* @routine_leaq_MINUS0x488__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601c6)
  store %struct.Memory* %call_4601c6, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4601cd	 Bytes: 3
  %loadMem_4601cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601cd = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601cd)
  store %struct.Memory* %call_4601cd, %struct.Memory** %MEMORY

  ; Code: callq .double_atari_chain2_moves	 RIP: 4601d0	 Bytes: 5
  %loadMem1_4601d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4601d0 = call %struct.Memory* @routine_callq_.double_atari_chain2_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4601d0, i64 7456, i64 5, i64 5)
  store %struct.Memory* %call1_4601d0, %struct.Memory** %MEMORY

  %loadMem2_4601d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4601d0 = load i64, i64* %3
  %call2_4601d0 = call %struct.Memory* @sub_461ef0.double_atari_chain2_moves(%struct.State* %0, i64  %loadPC_4601d0, %struct.Memory* %loadMem2_4601d0)
  store %struct.Memory* %call2_4601d0, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %esi	 RIP: 4601d5	 Bytes: 5
  %loadMem_4601d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601d5 = call %struct.Memory* @routine_movl__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601d5)
  store %struct.Memory* %call_4601d5, %struct.Memory** %MEMORY

  ; Code: leaq -0x2e4(%rbp), %rdx	 RIP: 4601da	 Bytes: 7
  %loadMem_4601da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601da = call %struct.Memory* @routine_leaq_MINUS0x2e4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601da)
  store %struct.Memory* %call_4601da, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4601e1	 Bytes: 3
  %loadMem_4601e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601e1 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601e1)
  store %struct.Memory* %call_4601e1, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 4601e4	 Bytes: 5
  %loadMem1_4601e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4601e4 = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4601e4, i64 -330148, i64 5, i64 5)
  store %struct.Memory* %call1_4601e4, %struct.Memory** %MEMORY

  %loadMem2_4601e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4601e4 = load i64, i64* %3
  %call2_4601e4 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_4601e4, %struct.Memory* %loadMem2_4601e4)
  store %struct.Memory* %call2_4601e4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2d8(%rbp)	 RIP: 4601e9	 Bytes: 6
  %loadMem_4601e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601e9 = call %struct.Memory* @routine_movl__eax__MINUS0x2d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601e9)
  store %struct.Memory* %call_4601e9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, -0x2d8(%rbp)	 RIP: 4601ef	 Bytes: 7
  %loadMem_4601ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601ef = call %struct.Memory* @routine_cmpl__0x3__MINUS0x2d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601ef)
  store %struct.Memory* %call_4601ef, %struct.Memory** %MEMORY

  ; Code: jne .L_460201	 RIP: 4601f6	 Bytes: 6
  %loadMem_4601f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601f6 = call %struct.Memory* @routine_jne_.L_460201(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601f6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4601f6, %struct.Memory** %MEMORY

  %loadBr_4601f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4601f6 = icmp eq i8 %loadBr_4601f6, 1
  br i1 %cmpBr_4601f6, label %block_.L_460201, label %block_4601fc

block_4601fc:
  ; Code: jmpq .L_460272	 RIP: 4601fc	 Bytes: 5
  %loadMem_4601fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4601fc = call %struct.Memory* @routine_jmpq_.L_460272(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4601fc, i64 118, i64 5)
  store %struct.Memory* %call_4601fc, %struct.Memory** %MEMORY

  br label %block_.L_460272

  ; Code: .L_460201:	 RIP: 460201	 Bytes: 0
block_.L_460201:

  ; Code: movq $0x57fb0d, %rdi	 RIP: 460201	 Bytes: 10
  %loadMem_460201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460201 = call %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460201)
  store %struct.Memory* %call_460201, %struct.Memory** %MEMORY

  ; Code: movl $0xb02, %esi	 RIP: 46020b	 Bytes: 5
  %loadMem_46020b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46020b = call %struct.Memory* @routine_movl__0xb02___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46020b)
  store %struct.Memory* %call_46020b, %struct.Memory** %MEMORY

  ; Code: movq $0x57fd0a, %rdx	 RIP: 460210	 Bytes: 10
  %loadMem_460210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460210 = call %struct.Memory* @routine_movq__0x57fd0a___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460210)
  store %struct.Memory* %call_460210, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 46021a	 Bytes: 5
  %loadMem_46021a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46021a = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46021a)
  store %struct.Memory* %call_46021a, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 46021f	 Bytes: 3
  %loadMem_46021f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46021f = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46021f)
  store %struct.Memory* %call_46021f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x55c(%rbp)	 RIP: 460222	 Bytes: 6
  %loadMem_460222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460222 = call %struct.Memory* @routine_movl__eax__MINUS0x55c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460222)
  store %struct.Memory* %call_460222, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 460228	 Bytes: 2
  %loadMem_460228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460228 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460228)
  store %struct.Memory* %call_460228, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x568(%rbp)	 RIP: 46022a	 Bytes: 7
  %loadMem_46022a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46022a = call %struct.Memory* @routine_movq__rdx__MINUS0x568__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46022a)
  store %struct.Memory* %call_46022a, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 460231	 Bytes: 1
  %loadMem_460231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460231 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460231)
  store %struct.Memory* %call_460231, %struct.Memory** %MEMORY

  ; Code: movl -0x55c(%rbp), %ecx	 RIP: 460232	 Bytes: 6
  %loadMem_460232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460232 = call %struct.Memory* @routine_movl_MINUS0x55c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460232)
  store %struct.Memory* %call_460232, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 460238	 Bytes: 2
  %loadMem_460238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460238 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460238)
  store %struct.Memory* %call_460238, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 46023a	 Bytes: 3
  %loadMem_46023a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46023a = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46023a)
  store %struct.Memory* %call_46023a, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %r8d	 RIP: 46023d	 Bytes: 4
  %loadMem_46023d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46023d = call %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46023d)
  store %struct.Memory* %call_46023d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x56c(%rbp)	 RIP: 460241	 Bytes: 6
  %loadMem_460241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460241 = call %struct.Memory* @routine_movl__eax__MINUS0x56c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460241)
  store %struct.Memory* %call_460241, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 460247	 Bytes: 3
  %loadMem_460247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460247 = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460247)
  store %struct.Memory* %call_460247, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 46024a	 Bytes: 1
  %loadMem_46024a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46024a = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46024a)
  store %struct.Memory* %call_46024a, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 46024b	 Bytes: 2
  %loadMem_46024b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46024b = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46024b)
  store %struct.Memory* %call_46024b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 46024d	 Bytes: 3
  %loadMem_46024d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46024d = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46024d)
  store %struct.Memory* %call_46024d, %struct.Memory** %MEMORY

  ; Code: movq -0x568(%rbp), %r9	 RIP: 460250	 Bytes: 7
  %loadMem_460250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460250 = call %struct.Memory* @routine_movq_MINUS0x568__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460250)
  store %struct.Memory* %call_460250, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x570(%rbp)	 RIP: 460257	 Bytes: 6
  %loadMem_460257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460257 = call %struct.Memory* @routine_movl__edx__MINUS0x570__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460257)
  store %struct.Memory* %call_460257, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdx	 RIP: 46025d	 Bytes: 3
  %loadMem_46025d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46025d = call %struct.Memory* @routine_movq__r9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46025d)
  store %struct.Memory* %call_46025d, %struct.Memory** %MEMORY

  ; Code: movl -0x56c(%rbp), %ecx	 RIP: 460260	 Bytes: 6
  %loadMem_460260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460260 = call %struct.Memory* @routine_movl_MINUS0x56c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460260)
  store %struct.Memory* %call_460260, %struct.Memory** %MEMORY

  ; Code: movl -0x570(%rbp), %r8d	 RIP: 460266	 Bytes: 7
  %loadMem_460266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460266 = call %struct.Memory* @routine_movl_MINUS0x570__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460266)
  store %struct.Memory* %call_460266, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 46026d	 Bytes: 5
  %loadMem1_46026d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46026d = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46026d, i64 -57821, i64 5, i64 5)
  store %struct.Memory* %call1_46026d, %struct.Memory** %MEMORY

  %loadMem2_46026d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46026d = load i64, i64* %3
  %call2_46026d = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_46026d, %struct.Memory* %loadMem2_46026d)
  store %struct.Memory* %call2_46026d, %struct.Memory** %MEMORY

  ; Code: .L_460272:	 RIP: 460272	 Bytes: 0
  br label %block_.L_460272
block_.L_460272:

  ; Code: movl $0x0, -0x2f0(%rbp)	 RIP: 460272	 Bytes: 10
  %loadMem_460272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460272 = call %struct.Memory* @routine_movl__0x0__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460272)
  store %struct.Memory* %call_460272, %struct.Memory** %MEMORY

  ; Code: .L_46027c:	 RIP: 46027c	 Bytes: 0
  br label %block_.L_46027c
block_.L_46027c:

  ; Code: cmpl $0x3, -0x2f0(%rbp)	 RIP: 46027c	 Bytes: 7
  %loadMem_46027c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46027c = call %struct.Memory* @routine_cmpl__0x3__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46027c)
  store %struct.Memory* %call_46027c, %struct.Memory** %MEMORY

  ; Code: jge .L_460535	 RIP: 460283	 Bytes: 6
  %loadMem_460283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460283 = call %struct.Memory* @routine_jge_.L_460535(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460283, i8* %BRANCH_TAKEN, i64 690, i64 6, i64 6)
  store %struct.Memory* %call_460283, %struct.Memory** %MEMORY

  %loadBr_460283 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460283 = icmp eq i8 %loadBr_460283, 1
  br i1 %cmpBr_460283, label %block_.L_460535, label %block_460289

block_460289:
  ; Code: movslq -0x2f0(%rbp), %rax	 RIP: 460289	 Bytes: 7
  %loadMem_460289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460289 = call %struct.Memory* @routine_movslq_MINUS0x2f0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460289)
  store %struct.Memory* %call_460289, %struct.Memory** %MEMORY

  ; Code: movl -0x2e4(%rbp,%rax,4), %ecx	 RIP: 460290	 Bytes: 7
  %loadMem_460290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460290 = call %struct.Memory* @routine_movl_MINUS0x2e4__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460290)
  store %struct.Memory* %call_460290, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4a8(%rbp)	 RIP: 460297	 Bytes: 6
  %loadMem_460297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460297 = call %struct.Memory* @routine_movl__ecx__MINUS0x4a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460297)
  store %struct.Memory* %call_460297, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %ecx	 RIP: 46029d	 Bytes: 7
  %loadMem_46029d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46029d = call %struct.Memory* @routine_movl_0xb54ce4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46029d)
  store %struct.Memory* %call_46029d, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb060b8, %ecx	 RIP: 4602a4	 Bytes: 7
  %loadMem_4602a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602a4 = call %struct.Memory* @routine_cmpl_0xb060b8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602a4)
  store %struct.Memory* %call_4602a4, %struct.Memory** %MEMORY

  ; Code: jle .L_460350	 RIP: 4602ab	 Bytes: 6
  %loadMem_4602ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602ab = call %struct.Memory* @routine_jle_.L_460350(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602ab, i8* %BRANCH_TAKEN, i64 165, i64 6, i64 6)
  store %struct.Memory* %call_4602ab, %struct.Memory** %MEMORY

  %loadBr_4602ab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4602ab = icmp eq i8 %loadBr_4602ab, 1
  br i1 %cmpBr_4602ab, label %block_.L_460350, label %block_4602b1

block_4602b1:
  ; Code: movl 0xb54ce4, %eax	 RIP: 4602b1	 Bytes: 7
  %loadMem_4602b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602b1 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602b1)
  store %struct.Memory* %call_4602b1, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b854, %eax	 RIP: 4602b8	 Bytes: 7
  %loadMem_4602b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602b8 = call %struct.Memory* @routine_cmpl_0xb8b854___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602b8)
  store %struct.Memory* %call_4602b8, %struct.Memory** %MEMORY

  ; Code: jg .L_460339	 RIP: 4602bf	 Bytes: 6
  %loadMem_4602bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602bf = call %struct.Memory* @routine_jg_.L_460339(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602bf, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_4602bf, %struct.Memory** %MEMORY

  %loadBr_4602bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4602bf = icmp eq i8 %loadBr_4602bf, 1
  br i1 %cmpBr_4602bf, label %block_.L_460339, label %block_4602c5

block_4602c5:
  ; Code: movl -0x4a8(%rbp), %eax	 RIP: 4602c5	 Bytes: 6
  %loadMem_4602c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602c5 = call %struct.Memory* @routine_movl_MINUS0x4a8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602c5)
  store %struct.Memory* %call_4602c5, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4602cb	 Bytes: 3
  %loadMem_4602cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602cb = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602cb)
  store %struct.Memory* %call_4602cb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4602ce	 Bytes: 3
  %loadMem_4602ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602ce = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602ce)
  store %struct.Memory* %call_4602ce, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4602d1	 Bytes: 8
  %loadMem_4602d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602d1 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602d1)
  store %struct.Memory* %call_4602d1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x48(%rbp), %eax	 RIP: 4602d9	 Bytes: 3
  %loadMem_4602d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602d9 = call %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602d9)
  store %struct.Memory* %call_4602d9, %struct.Memory** %MEMORY

  ; Code: je .L_460339	 RIP: 4602dc	 Bytes: 6
  %loadMem_4602dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602dc = call %struct.Memory* @routine_je_.L_460339(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602dc, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_4602dc, %struct.Memory** %MEMORY

  %loadBr_4602dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4602dc = icmp eq i8 %loadBr_4602dc, 1
  br i1 %cmpBr_4602dc, label %block_.L_460339, label %block_4602e2

block_4602e2:
  ; Code: movl -0x4a8(%rbp), %eax	 RIP: 4602e2	 Bytes: 6
  %loadMem_4602e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602e2 = call %struct.Memory* @routine_movl_MINUS0x4a8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602e2)
  store %struct.Memory* %call_4602e2, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4602e8	 Bytes: 3
  %loadMem_4602e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602e8 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602e8)
  store %struct.Memory* %call_4602e8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4602eb	 Bytes: 3
  %loadMem_4602eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602eb = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602eb)
  store %struct.Memory* %call_4602eb, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4602ee	 Bytes: 8
  %loadMem_4602ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602ee = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602ee)
  store %struct.Memory* %call_4602ee, %struct.Memory** %MEMORY

  ; Code: cmpl -0x48(%rbp), %eax	 RIP: 4602f6	 Bytes: 3
  %loadMem_4602f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602f6 = call %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602f6)
  store %struct.Memory* %call_4602f6, %struct.Memory** %MEMORY

  ; Code: je .L_460339	 RIP: 4602f9	 Bytes: 6
  %loadMem_4602f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602f9 = call %struct.Memory* @routine_je_.L_460339(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602f9, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_4602f9, %struct.Memory** %MEMORY

  %loadBr_4602f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4602f9 = icmp eq i8 %loadBr_4602f9, 1
  br i1 %cmpBr_4602f9, label %block_.L_460339, label %block_4602ff

block_4602ff:
  ; Code: movl -0x4a8(%rbp), %eax	 RIP: 4602ff	 Bytes: 6
  %loadMem_4602ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4602ff = call %struct.Memory* @routine_movl_MINUS0x4a8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4602ff)
  store %struct.Memory* %call_4602ff, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 460305	 Bytes: 3
  %loadMem_460305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460305 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460305)
  store %struct.Memory* %call_460305, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 460308	 Bytes: 3
  %loadMem_460308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460308 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460308)
  store %struct.Memory* %call_460308, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46030b	 Bytes: 8
  %loadMem_46030b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46030b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46030b)
  store %struct.Memory* %call_46030b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x48(%rbp), %eax	 RIP: 460313	 Bytes: 3
  %loadMem_460313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460313 = call %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460313)
  store %struct.Memory* %call_460313, %struct.Memory** %MEMORY

  ; Code: je .L_460339	 RIP: 460316	 Bytes: 6
  %loadMem_460316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460316 = call %struct.Memory* @routine_je_.L_460339(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460316, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_460316, %struct.Memory** %MEMORY

  %loadBr_460316 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460316 = icmp eq i8 %loadBr_460316, 1
  br i1 %cmpBr_460316, label %block_.L_460339, label %block_46031c

block_46031c:
  ; Code: movl -0x4a8(%rbp), %eax	 RIP: 46031c	 Bytes: 6
  %loadMem_46031c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46031c = call %struct.Memory* @routine_movl_MINUS0x4a8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46031c)
  store %struct.Memory* %call_46031c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 460322	 Bytes: 3
  %loadMem_460322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460322 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460322)
  store %struct.Memory* %call_460322, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 460325	 Bytes: 3
  %loadMem_460325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460325 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460325)
  store %struct.Memory* %call_460325, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 460328	 Bytes: 8
  %loadMem_460328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460328 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460328)
  store %struct.Memory* %call_460328, %struct.Memory** %MEMORY

  ; Code: cmpl -0x48(%rbp), %eax	 RIP: 460330	 Bytes: 3
  %loadMem_460330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460330 = call %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460330)
  store %struct.Memory* %call_460330, %struct.Memory** %MEMORY

  ; Code: jne .L_460350	 RIP: 460333	 Bytes: 6
  %loadMem_460333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460333 = call %struct.Memory* @routine_jne_.L_460350(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460333, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_460333, %struct.Memory** %MEMORY

  %loadBr_460333 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460333 = icmp eq i8 %loadBr_460333, 1
  br i1 %cmpBr_460333, label %block_.L_460350, label %block_.L_460339

  ; Code: .L_460339:	 RIP: 460339	 Bytes: 0
block_.L_460339:

  ; Code: movl -0x4a8(%rbp), %edi	 RIP: 460339	 Bytes: 6
  %loadMem_460339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460339 = call %struct.Memory* @routine_movl_MINUS0x4a8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460339)
  store %struct.Memory* %call_460339, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 46033f	 Bytes: 3
  %loadMem_46033f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46033f = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46033f)
  store %struct.Memory* %call_46033f, %struct.Memory** %MEMORY

  ; Code: callq .is_self_atari	 RIP: 460342	 Bytes: 5
  %loadMem1_460342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460342 = call %struct.Memory* @routine_callq_.is_self_atari(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460342, i64 -311458, i64 5, i64 5)
  store %struct.Memory* %call1_460342, %struct.Memory** %MEMORY

  %loadMem2_460342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460342 = load i64, i64* %3
  %call2_460342 = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64  %loadPC_460342, %struct.Memory* %loadMem2_460342)
  store %struct.Memory* %call2_460342, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 460347	 Bytes: 3
  %loadMem_460347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460347 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460347)
  store %struct.Memory* %call_460347, %struct.Memory** %MEMORY

  ; Code: jne .L_46041f	 RIP: 46034a	 Bytes: 6
  %loadMem_46034a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46034a = call %struct.Memory* @routine_jne_.L_46041f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46034a, i8* %BRANCH_TAKEN, i64 213, i64 6, i64 6)
  store %struct.Memory* %call_46034a, %struct.Memory** %MEMORY

  %loadBr_46034a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46034a = icmp eq i8 %loadBr_46034a, 1
  br i1 %cmpBr_46034a, label %block_.L_46041f, label %block_.L_460350

  ; Code: .L_460350:	 RIP: 460350	 Bytes: 0
block_.L_460350:

  ; Code: jmpq .L_460355	 RIP: 460350	 Bytes: 5
  %loadMem_460350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460350 = call %struct.Memory* @routine_jmpq_.L_460355(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460350, i64 5, i64 5)
  store %struct.Memory* %call_460350, %struct.Memory** %MEMORY

  br label %block_.L_460355

  ; Code: .L_460355:	 RIP: 460355	 Bytes: 0
block_.L_460355:

  ; Code: movl $0x0, -0x4ac(%rbp)	 RIP: 460355	 Bytes: 10
  %loadMem_460355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460355 = call %struct.Memory* @routine_movl__0x0__MINUS0x4ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460355)
  store %struct.Memory* %call_460355, %struct.Memory** %MEMORY

  ; Code: .L_46035f:	 RIP: 46035f	 Bytes: 0
  br label %block_.L_46035f
block_.L_46035f:

  ; Code: movl -0x4ac(%rbp), %eax	 RIP: 46035f	 Bytes: 6
  %loadMem_46035f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46035f = call %struct.Memory* @routine_movl_MINUS0x4ac__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46035f)
  store %struct.Memory* %call_46035f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 460365	 Bytes: 6
  %loadMem_460365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460365 = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460365)
  store %struct.Memory* %call_460365, %struct.Memory** %MEMORY

  ; Code: jge .L_4603c1	 RIP: 46036b	 Bytes: 6
  %loadMem_46036b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46036b = call %struct.Memory* @routine_jge_.L_4603c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46036b, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_46036b, %struct.Memory** %MEMORY

  %loadBr_46036b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46036b = icmp eq i8 %loadBr_46036b, 1
  br i1 %cmpBr_46036b, label %block_.L_4603c1, label %block_460371

block_460371:
  ; Code: movslq -0x4ac(%rbp), %rax	 RIP: 460371	 Bytes: 7
  %loadMem_460371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460371 = call %struct.Memory* @routine_movslq_MINUS0x4ac__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460371)
  store %struct.Memory* %call_460371, %struct.Memory** %MEMORY

  ; Code: movl -0x488(%rbp,%rax,4), %ecx	 RIP: 460378	 Bytes: 7
  %loadMem_460378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460378 = call %struct.Memory* @routine_movl_MINUS0x488__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460378)
  store %struct.Memory* %call_460378, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4a8(%rbp), %ecx	 RIP: 46037f	 Bytes: 6
  %loadMem_46037f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46037f = call %struct.Memory* @routine_cmpl_MINUS0x4a8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46037f)
  store %struct.Memory* %call_46037f, %struct.Memory** %MEMORY

  ; Code: jne .L_4603a8	 RIP: 460385	 Bytes: 6
  %loadMem_460385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460385 = call %struct.Memory* @routine_jne_.L_4603a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460385, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_460385, %struct.Memory** %MEMORY

  %loadBr_460385 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460385 = icmp eq i8 %loadBr_460385, 1
  br i1 %cmpBr_460385, label %block_.L_4603a8, label %block_46038b

block_46038b:
  ; Code: movslq -0x4ac(%rbp), %rax	 RIP: 46038b	 Bytes: 7
  %loadMem_46038b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46038b = call %struct.Memory* @routine_movslq_MINUS0x4ac__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46038b)
  store %struct.Memory* %call_46038b, %struct.Memory** %MEMORY

  ; Code: movl -0x3c0(%rbp,%rax,4), %ecx	 RIP: 460392	 Bytes: 7
  %loadMem_460392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460392 = call %struct.Memory* @routine_movl_MINUS0x3c0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460392)
  store %struct.Memory* %call_460392, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %ecx	 RIP: 460399	 Bytes: 3
  %loadMem_460399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460399 = call %struct.Memory* @routine_addl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460399)
  store %struct.Memory* %call_460399, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3c0(%rbp,%rax,4)	 RIP: 46039c	 Bytes: 7
  %loadMem_46039c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46039c = call %struct.Memory* @routine_movl__ecx__MINUS0x3c0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46039c)
  store %struct.Memory* %call_46039c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4603c1	 RIP: 4603a3	 Bytes: 5
  %loadMem_4603a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603a3 = call %struct.Memory* @routine_jmpq_.L_4603c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603a3, i64 30, i64 5)
  store %struct.Memory* %call_4603a3, %struct.Memory** %MEMORY

  br label %block_.L_4603c1

  ; Code: .L_4603a8:	 RIP: 4603a8	 Bytes: 0
block_.L_4603a8:

  ; Code: jmpq .L_4603ad	 RIP: 4603a8	 Bytes: 5
  %loadMem_4603a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603a8 = call %struct.Memory* @routine_jmpq_.L_4603ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603a8, i64 5, i64 5)
  store %struct.Memory* %call_4603a8, %struct.Memory** %MEMORY

  br label %block_.L_4603ad

  ; Code: .L_4603ad:	 RIP: 4603ad	 Bytes: 0
block_.L_4603ad:

  ; Code: movl -0x4ac(%rbp), %eax	 RIP: 4603ad	 Bytes: 6
  %loadMem_4603ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603ad = call %struct.Memory* @routine_movl_MINUS0x4ac__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603ad)
  store %struct.Memory* %call_4603ad, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4603b3	 Bytes: 3
  %loadMem_4603b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603b3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603b3)
  store %struct.Memory* %call_4603b3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4ac(%rbp)	 RIP: 4603b6	 Bytes: 6
  %loadMem_4603b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603b6 = call %struct.Memory* @routine_movl__eax__MINUS0x4ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603b6)
  store %struct.Memory* %call_4603b6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46035f	 RIP: 4603bc	 Bytes: 5
  %loadMem_4603bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603bc = call %struct.Memory* @routine_jmpq_.L_46035f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603bc, i64 -93, i64 5)
  store %struct.Memory* %call_4603bc, %struct.Memory** %MEMORY

  br label %block_.L_46035f

  ; Code: .L_4603c1:	 RIP: 4603c1	 Bytes: 0
block_.L_4603c1:

  ; Code: movl -0x4ac(%rbp), %eax	 RIP: 4603c1	 Bytes: 6
  %loadMem_4603c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603c1 = call %struct.Memory* @routine_movl_MINUS0x4ac__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603c1)
  store %struct.Memory* %call_4603c1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 4603c7	 Bytes: 6
  %loadMem_4603c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603c7 = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603c7)
  store %struct.Memory* %call_4603c7, %struct.Memory** %MEMORY

  ; Code: jne .L_460415	 RIP: 4603cd	 Bytes: 6
  %loadMem_4603cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603cd = call %struct.Memory* @routine_jne_.L_460415(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603cd, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_4603cd, %struct.Memory** %MEMORY

  %loadBr_4603cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4603cd = icmp eq i8 %loadBr_4603cd, 1
  br i1 %cmpBr_4603cd, label %block_.L_460415, label %block_4603d3

block_4603d3:
  ; Code: cmpl $0x32, -0x2f8(%rbp)	 RIP: 4603d3	 Bytes: 7
  %loadMem_4603d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603d3 = call %struct.Memory* @routine_cmpl__0x32__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603d3)
  store %struct.Memory* %call_4603d3, %struct.Memory** %MEMORY

  ; Code: jge .L_460415	 RIP: 4603da	 Bytes: 6
  %loadMem_4603da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603da = call %struct.Memory* @routine_jge_.L_460415(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603da, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_4603da, %struct.Memory** %MEMORY

  %loadBr_4603da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4603da = icmp eq i8 %loadBr_4603da, 1
  br i1 %cmpBr_4603da, label %block_.L_460415, label %block_4603e0

block_4603e0:
  ; Code: movl -0x4a8(%rbp), %eax	 RIP: 4603e0	 Bytes: 6
  %loadMem_4603e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603e0 = call %struct.Memory* @routine_movl_MINUS0x4a8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603e0)
  store %struct.Memory* %call_4603e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x2f8(%rbp), %rcx	 RIP: 4603e6	 Bytes: 7
  %loadMem_4603e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603e6 = call %struct.Memory* @routine_movslq_MINUS0x2f8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603e6)
  store %struct.Memory* %call_4603e6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x488(%rbp,%rcx,4)	 RIP: 4603ed	 Bytes: 7
  %loadMem_4603ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603ed = call %struct.Memory* @routine_movl__eax__MINUS0x488__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603ed)
  store %struct.Memory* %call_4603ed, %struct.Memory** %MEMORY

  ; Code: movslq -0x2f8(%rbp), %rcx	 RIP: 4603f4	 Bytes: 7
  %loadMem_4603f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603f4 = call %struct.Memory* @routine_movslq_MINUS0x2f8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603f4)
  store %struct.Memory* %call_4603f4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3c0(%rbp,%rcx,4)	 RIP: 4603fb	 Bytes: 11
  %loadMem_4603fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4603fb = call %struct.Memory* @routine_movl__0x0__MINUS0x3c0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4603fb)
  store %struct.Memory* %call_4603fb, %struct.Memory** %MEMORY

  ; Code: movl -0x2f8(%rbp), %eax	 RIP: 460406	 Bytes: 6
  %loadMem_460406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460406 = call %struct.Memory* @routine_movl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460406)
  store %struct.Memory* %call_460406, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46040c	 Bytes: 3
  %loadMem_46040c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46040c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46040c)
  store %struct.Memory* %call_46040c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f8(%rbp)	 RIP: 46040f	 Bytes: 6
  %loadMem_46040f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46040f = call %struct.Memory* @routine_movl__eax__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46040f)
  store %struct.Memory* %call_46040f, %struct.Memory** %MEMORY

  ; Code: .L_460415:	 RIP: 460415	 Bytes: 0
  br label %block_.L_460415
block_.L_460415:

  ; Code: jmpq .L_46041a	 RIP: 460415	 Bytes: 5
  %loadMem_460415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460415 = call %struct.Memory* @routine_jmpq_.L_46041a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460415, i64 5, i64 5)
  store %struct.Memory* %call_460415, %struct.Memory** %MEMORY

  br label %block_.L_46041a

  ; Code: .L_46041a:	 RIP: 46041a	 Bytes: 0
block_.L_46041a:

  ; Code: jmpq .L_46041f	 RIP: 46041a	 Bytes: 5
  %loadMem_46041a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46041a = call %struct.Memory* @routine_jmpq_.L_46041f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46041a, i64 5, i64 5)
  store %struct.Memory* %call_46041a, %struct.Memory** %MEMORY

  br label %block_.L_46041f

  ; Code: .L_46041f:	 RIP: 46041f	 Bytes: 0
block_.L_46041f:

  ; Code: leaq -0x2d4(%rbp), %rdx	 RIP: 46041f	 Bytes: 7
  %loadMem_46041f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46041f = call %struct.Memory* @routine_leaq_MINUS0x2d4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46041f)
  store %struct.Memory* %call_46041f, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 460426	 Bytes: 3
  %loadMem_460426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460426 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460426)
  store %struct.Memory* %call_460426, %struct.Memory** %MEMORY

  ; Code: movl -0x4a8(%rbp), %esi	 RIP: 460429	 Bytes: 6
  %loadMem_460429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460429 = call %struct.Memory* @routine_movl_MINUS0x4a8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460429)
  store %struct.Memory* %call_460429, %struct.Memory** %MEMORY

  ; Code: callq .edge_closing_backfill	 RIP: 46042f	 Bytes: 5
  %loadMem1_46042f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46042f = call %struct.Memory* @routine_callq_.edge_closing_backfill(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46042f, i64 7425, i64 5, i64 5)
  store %struct.Memory* %call1_46042f, %struct.Memory** %MEMORY

  %loadMem2_46042f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46042f = load i64, i64* %3
  %call2_46042f = call %struct.Memory* @sub_462130.edge_closing_backfill(%struct.State* %0, i64  %loadPC_46042f, %struct.Memory* %loadMem2_46042f)
  store %struct.Memory* %call2_46042f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 460434	 Bytes: 3
  %loadMem_460434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460434 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460434)
  store %struct.Memory* %call_460434, %struct.Memory** %MEMORY

  ; Code: je .L_46050c	 RIP: 460437	 Bytes: 6
  %loadMem_460437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460437 = call %struct.Memory* @routine_je_.L_46050c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460437, i8* %BRANCH_TAKEN, i64 213, i64 6, i64 6)
  store %struct.Memory* %call_460437, %struct.Memory** %MEMORY

  %loadBr_460437 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460437 = icmp eq i8 %loadBr_460437, 1
  br i1 %cmpBr_460437, label %block_.L_46050c, label %block_46043d

block_46043d:
  ; Code: jmpq .L_460442	 RIP: 46043d	 Bytes: 5
  %loadMem_46043d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46043d = call %struct.Memory* @routine_jmpq_.L_460442(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46043d, i64 5, i64 5)
  store %struct.Memory* %call_46043d, %struct.Memory** %MEMORY

  br label %block_.L_460442

  ; Code: .L_460442:	 RIP: 460442	 Bytes: 0
block_.L_460442:

  ; Code: movl $0x0, -0x4b0(%rbp)	 RIP: 460442	 Bytes: 10
  %loadMem_460442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460442 = call %struct.Memory* @routine_movl__0x0__MINUS0x4b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460442)
  store %struct.Memory* %call_460442, %struct.Memory** %MEMORY

  ; Code: .L_46044c:	 RIP: 46044c	 Bytes: 0
  br label %block_.L_46044c
block_.L_46044c:

  ; Code: movl -0x4b0(%rbp), %eax	 RIP: 46044c	 Bytes: 6
  %loadMem_46044c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46044c = call %struct.Memory* @routine_movl_MINUS0x4b0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46044c)
  store %struct.Memory* %call_46044c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 460452	 Bytes: 6
  %loadMem_460452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460452 = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460452)
  store %struct.Memory* %call_460452, %struct.Memory** %MEMORY

  ; Code: jge .L_4604ae	 RIP: 460458	 Bytes: 6
  %loadMem_460458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460458 = call %struct.Memory* @routine_jge_.L_4604ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460458, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_460458, %struct.Memory** %MEMORY

  %loadBr_460458 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460458 = icmp eq i8 %loadBr_460458, 1
  br i1 %cmpBr_460458, label %block_.L_4604ae, label %block_46045e

block_46045e:
  ; Code: movslq -0x4b0(%rbp), %rax	 RIP: 46045e	 Bytes: 7
  %loadMem_46045e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46045e = call %struct.Memory* @routine_movslq_MINUS0x4b0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46045e)
  store %struct.Memory* %call_46045e, %struct.Memory** %MEMORY

  ; Code: movl -0x488(%rbp,%rax,4), %ecx	 RIP: 460465	 Bytes: 7
  %loadMem_460465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460465 = call %struct.Memory* @routine_movl_MINUS0x488__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460465)
  store %struct.Memory* %call_460465, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2d4(%rbp), %ecx	 RIP: 46046c	 Bytes: 6
  %loadMem_46046c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46046c = call %struct.Memory* @routine_cmpl_MINUS0x2d4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46046c)
  store %struct.Memory* %call_46046c, %struct.Memory** %MEMORY

  ; Code: jne .L_460495	 RIP: 460472	 Bytes: 6
  %loadMem_460472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460472 = call %struct.Memory* @routine_jne_.L_460495(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460472, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_460472, %struct.Memory** %MEMORY

  %loadBr_460472 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460472 = icmp eq i8 %loadBr_460472, 1
  br i1 %cmpBr_460472, label %block_.L_460495, label %block_460478

block_460478:
  ; Code: movslq -0x4b0(%rbp), %rax	 RIP: 460478	 Bytes: 7
  %loadMem_460478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460478 = call %struct.Memory* @routine_movslq_MINUS0x4b0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460478)
  store %struct.Memory* %call_460478, %struct.Memory** %MEMORY

  ; Code: movl -0x3c0(%rbp,%rax,4), %ecx	 RIP: 46047f	 Bytes: 7
  %loadMem_46047f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46047f = call %struct.Memory* @routine_movl_MINUS0x3c0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46047f)
  store %struct.Memory* %call_46047f, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %ecx	 RIP: 460486	 Bytes: 3
  %loadMem_460486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460486 = call %struct.Memory* @routine_addl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460486)
  store %struct.Memory* %call_460486, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3c0(%rbp,%rax,4)	 RIP: 460489	 Bytes: 7
  %loadMem_460489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460489 = call %struct.Memory* @routine_movl__ecx__MINUS0x3c0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460489)
  store %struct.Memory* %call_460489, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4604ae	 RIP: 460490	 Bytes: 5
  %loadMem_460490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460490 = call %struct.Memory* @routine_jmpq_.L_4604ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460490, i64 30, i64 5)
  store %struct.Memory* %call_460490, %struct.Memory** %MEMORY

  br label %block_.L_4604ae

  ; Code: .L_460495:	 RIP: 460495	 Bytes: 0
block_.L_460495:

  ; Code: jmpq .L_46049a	 RIP: 460495	 Bytes: 5
  %loadMem_460495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460495 = call %struct.Memory* @routine_jmpq_.L_46049a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460495, i64 5, i64 5)
  store %struct.Memory* %call_460495, %struct.Memory** %MEMORY

  br label %block_.L_46049a

  ; Code: .L_46049a:	 RIP: 46049a	 Bytes: 0
block_.L_46049a:

  ; Code: movl -0x4b0(%rbp), %eax	 RIP: 46049a	 Bytes: 6
  %loadMem_46049a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46049a = call %struct.Memory* @routine_movl_MINUS0x4b0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46049a)
  store %struct.Memory* %call_46049a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4604a0	 Bytes: 3
  %loadMem_4604a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604a0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604a0)
  store %struct.Memory* %call_4604a0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4b0(%rbp)	 RIP: 4604a3	 Bytes: 6
  %loadMem_4604a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604a3 = call %struct.Memory* @routine_movl__eax__MINUS0x4b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604a3)
  store %struct.Memory* %call_4604a3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46044c	 RIP: 4604a9	 Bytes: 5
  %loadMem_4604a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604a9 = call %struct.Memory* @routine_jmpq_.L_46044c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604a9, i64 -93, i64 5)
  store %struct.Memory* %call_4604a9, %struct.Memory** %MEMORY

  br label %block_.L_46044c

  ; Code: .L_4604ae:	 RIP: 4604ae	 Bytes: 0
block_.L_4604ae:

  ; Code: movl -0x4b0(%rbp), %eax	 RIP: 4604ae	 Bytes: 6
  %loadMem_4604ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604ae = call %struct.Memory* @routine_movl_MINUS0x4b0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604ae)
  store %struct.Memory* %call_4604ae, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 4604b4	 Bytes: 6
  %loadMem_4604b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604b4 = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604b4)
  store %struct.Memory* %call_4604b4, %struct.Memory** %MEMORY

  ; Code: jne .L_460502	 RIP: 4604ba	 Bytes: 6
  %loadMem_4604ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604ba = call %struct.Memory* @routine_jne_.L_460502(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604ba, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_4604ba, %struct.Memory** %MEMORY

  %loadBr_4604ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4604ba = icmp eq i8 %loadBr_4604ba, 1
  br i1 %cmpBr_4604ba, label %block_.L_460502, label %block_4604c0

block_4604c0:
  ; Code: cmpl $0x32, -0x2f8(%rbp)	 RIP: 4604c0	 Bytes: 7
  %loadMem_4604c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604c0 = call %struct.Memory* @routine_cmpl__0x32__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604c0)
  store %struct.Memory* %call_4604c0, %struct.Memory** %MEMORY

  ; Code: jge .L_460502	 RIP: 4604c7	 Bytes: 6
  %loadMem_4604c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604c7 = call %struct.Memory* @routine_jge_.L_460502(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604c7, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_4604c7, %struct.Memory** %MEMORY

  %loadBr_4604c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4604c7 = icmp eq i8 %loadBr_4604c7, 1
  br i1 %cmpBr_4604c7, label %block_.L_460502, label %block_4604cd

block_4604cd:
  ; Code: movl -0x2d4(%rbp), %eax	 RIP: 4604cd	 Bytes: 6
  %loadMem_4604cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604cd = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604cd)
  store %struct.Memory* %call_4604cd, %struct.Memory** %MEMORY

  ; Code: movslq -0x2f8(%rbp), %rcx	 RIP: 4604d3	 Bytes: 7
  %loadMem_4604d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604d3 = call %struct.Memory* @routine_movslq_MINUS0x2f8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604d3)
  store %struct.Memory* %call_4604d3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x488(%rbp,%rcx,4)	 RIP: 4604da	 Bytes: 7
  %loadMem_4604da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604da = call %struct.Memory* @routine_movl__eax__MINUS0x488__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604da)
  store %struct.Memory* %call_4604da, %struct.Memory** %MEMORY

  ; Code: movslq -0x2f8(%rbp), %rcx	 RIP: 4604e1	 Bytes: 7
  %loadMem_4604e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604e1 = call %struct.Memory* @routine_movslq_MINUS0x2f8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604e1)
  store %struct.Memory* %call_4604e1, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3c0(%rbp,%rcx,4)	 RIP: 4604e8	 Bytes: 11
  %loadMem_4604e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604e8 = call %struct.Memory* @routine_movl__0x0__MINUS0x3c0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604e8)
  store %struct.Memory* %call_4604e8, %struct.Memory** %MEMORY

  ; Code: movl -0x2f8(%rbp), %eax	 RIP: 4604f3	 Bytes: 6
  %loadMem_4604f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604f3 = call %struct.Memory* @routine_movl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604f3)
  store %struct.Memory* %call_4604f3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4604f9	 Bytes: 3
  %loadMem_4604f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604f9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604f9)
  store %struct.Memory* %call_4604f9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f8(%rbp)	 RIP: 4604fc	 Bytes: 6
  %loadMem_4604fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4604fc = call %struct.Memory* @routine_movl__eax__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4604fc)
  store %struct.Memory* %call_4604fc, %struct.Memory** %MEMORY

  ; Code: .L_460502:	 RIP: 460502	 Bytes: 0
  br label %block_.L_460502
block_.L_460502:

  ; Code: jmpq .L_460507	 RIP: 460502	 Bytes: 5
  %loadMem_460502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460502 = call %struct.Memory* @routine_jmpq_.L_460507(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460502, i64 5, i64 5)
  store %struct.Memory* %call_460502, %struct.Memory** %MEMORY

  br label %block_.L_460507

  ; Code: .L_460507:	 RIP: 460507	 Bytes: 0
block_.L_460507:

  ; Code: jmpq .L_46050c	 RIP: 460507	 Bytes: 5
  %loadMem_460507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460507 = call %struct.Memory* @routine_jmpq_.L_46050c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460507, i64 5, i64 5)
  store %struct.Memory* %call_460507, %struct.Memory** %MEMORY

  br label %block_.L_46050c

  ; Code: .L_46050c:	 RIP: 46050c	 Bytes: 0
block_.L_46050c:

  ; Code: leaq -0x488(%rbp), %rdx	 RIP: 46050c	 Bytes: 7
  %loadMem_46050c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46050c = call %struct.Memory* @routine_leaq_MINUS0x488__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46050c)
  store %struct.Memory* %call_46050c, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 460513	 Bytes: 3
  %loadMem_460513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460513 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460513)
  store %struct.Memory* %call_460513, %struct.Memory** %MEMORY

  ; Code: movl -0x4a8(%rbp), %esi	 RIP: 460516	 Bytes: 6
  %loadMem_460516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460516 = call %struct.Memory* @routine_movl_MINUS0x4a8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460516)
  store %struct.Memory* %call_460516, %struct.Memory** %MEMORY

  ; Code: callq .edge_block_moves	 RIP: 46051c	 Bytes: 5
  %loadMem1_46051c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46051c = call %struct.Memory* @routine_callq_.edge_block_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46051c, i64 7892, i64 5, i64 5)
  store %struct.Memory* %call1_46051c, %struct.Memory** %MEMORY

  %loadMem2_46051c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46051c = load i64, i64* %3
  %call2_46051c = call %struct.Memory* @sub_4623f0.edge_block_moves(%struct.State* %0, i64  %loadPC_46051c, %struct.Memory* %loadMem2_46051c)
  store %struct.Memory* %call2_46051c, %struct.Memory** %MEMORY

  ; Code: movl -0x2f0(%rbp), %eax	 RIP: 460521	 Bytes: 6
  %loadMem_460521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460521 = call %struct.Memory* @routine_movl_MINUS0x2f0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460521)
  store %struct.Memory* %call_460521, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 460527	 Bytes: 3
  %loadMem_460527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460527 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460527)
  store %struct.Memory* %call_460527, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f0(%rbp)	 RIP: 46052a	 Bytes: 6
  %loadMem_46052a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46052a = call %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46052a)
  store %struct.Memory* %call_46052a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46027c	 RIP: 460530	 Bytes: 5
  %loadMem_460530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460530 = call %struct.Memory* @routine_jmpq_.L_46027c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460530, i64 -692, i64 5)
  store %struct.Memory* %call_460530, %struct.Memory** %MEMORY

  br label %block_.L_46027c

  ; Code: .L_460535:	 RIP: 460535	 Bytes: 0
block_.L_460535:

  ; Code: leaq -0x488(%rbp), %rcx	 RIP: 460535	 Bytes: 7
  %loadMem_460535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460535 = call %struct.Memory* @routine_leaq_MINUS0x488__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460535)
  store %struct.Memory* %call_460535, %struct.Memory** %MEMORY

  ; Code: leaq -0x2e4(%rbp), %rsi	 RIP: 46053c	 Bytes: 7
  %loadMem_46053c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46053c = call %struct.Memory* @routine_leaq_MINUS0x2e4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46053c)
  store %struct.Memory* %call_46053c, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 460543	 Bytes: 3
  %loadMem_460543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460543 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460543)
  store %struct.Memory* %call_460543, %struct.Memory** %MEMORY

  ; Code: movl -0x2d8(%rbp), %edx	 RIP: 460546	 Bytes: 6
  %loadMem_460546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460546 = call %struct.Memory* @routine_movl_MINUS0x2d8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460546)
  store %struct.Memory* %call_460546, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %r8d	 RIP: 46054c	 Bytes: 4
  %loadMem_46054c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46054c = call %struct.Memory* @routine_movl_MINUS0x48__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46054c)
  store %struct.Memory* %call_46054c, %struct.Memory** %MEMORY

  ; Code: callq .propose_edge_moves	 RIP: 460550	 Bytes: 5
  %loadMem1_460550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460550 = call %struct.Memory* @routine_callq_.propose_edge_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460550, i64 8544, i64 5, i64 5)
  store %struct.Memory* %call1_460550, %struct.Memory** %MEMORY

  %loadMem2_460550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460550 = load i64, i64* %3
  %call2_460550 = call %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* %0, i64  %loadPC_460550, %struct.Memory* %loadMem2_460550)
  store %struct.Memory* %call2_460550, %struct.Memory** %MEMORY

  ; Code: leaq -0x488(%rbp), %rsi	 RIP: 460555	 Bytes: 7
  %loadMem_460555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460555 = call %struct.Memory* @routine_leaq_MINUS0x488__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460555)
  store %struct.Memory* %call_460555, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 46055c	 Bytes: 3
  %loadMem_46055c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46055c = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46055c)
  store %struct.Memory* %call_46055c, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 46055f	 Bytes: 3
  %loadMem_46055f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46055f = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46055f)
  store %struct.Memory* %call_46055f, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 460562	 Bytes: 3
  %loadMem_460562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460562 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460562)
  store %struct.Memory* %call_460562, %struct.Memory** %MEMORY

  ; Code: movq -0x498(%rbp), %rcx	 RIP: 460565	 Bytes: 7
  %loadMem_460565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460565 = call %struct.Memory* @routine_movq_MINUS0x498__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460565)
  store %struct.Memory* %call_460565, %struct.Memory** %MEMORY

  ; Code: callq .order_moves	 RIP: 46056c	 Bytes: 5
  %loadMem1_46056c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46056c = call %struct.Memory* @routine_callq_.order_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46056c, i64 10020, i64 5, i64 5)
  store %struct.Memory* %call1_46056c, %struct.Memory** %MEMORY

  %loadMem2_46056c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46056c = load i64, i64* %3
  %call2_46056c = call %struct.Memory* @sub_462c90.order_moves(%struct.State* %0, i64  %loadPC_46056c, %struct.Memory* %loadMem2_46056c)
  store %struct.Memory* %call2_46056c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2f0(%rbp)	 RIP: 460571	 Bytes: 10
  %loadMem_460571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460571 = call %struct.Memory* @routine_movl__0x0__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460571)
  store %struct.Memory* %call_460571, %struct.Memory** %MEMORY

  ; Code: .L_46057b:	 RIP: 46057b	 Bytes: 0
  br label %block_.L_46057b
block_.L_46057b:

  ; Code: movl -0x2f0(%rbp), %eax	 RIP: 46057b	 Bytes: 6
  %loadMem_46057b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46057b = call %struct.Memory* @routine_movl_MINUS0x2f0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46057b)
  store %struct.Memory* %call_46057b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 460581	 Bytes: 6
  %loadMem_460581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460581 = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460581)
  store %struct.Memory* %call_460581, %struct.Memory** %MEMORY

  ; Code: jge .L_460869	 RIP: 460587	 Bytes: 6
  %loadMem_460587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460587 = call %struct.Memory* @routine_jge_.L_460869(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460587, i8* %BRANCH_TAKEN, i64 738, i64 6, i64 6)
  store %struct.Memory* %call_460587, %struct.Memory** %MEMORY

  %loadBr_460587 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460587 = icmp eq i8 %loadBr_460587, 1
  br i1 %cmpBr_460587, label %block_.L_460869, label %block_46058d

block_46058d:
  ; Code: movl 0xb54ce4, %eax	 RIP: 46058d	 Bytes: 7
  %loadMem_46058d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46058d = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46058d)
  store %struct.Memory* %call_46058d, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb6308c, %eax	 RIP: 460594	 Bytes: 7
  %loadMem_460594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460594 = call %struct.Memory* @routine_cmpl_0xb6308c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460594)
  store %struct.Memory* %call_460594, %struct.Memory** %MEMORY

  ; Code: jl .L_4605b3	 RIP: 46059b	 Bytes: 6
  %loadMem_46059b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46059b = call %struct.Memory* @routine_jl_.L_4605b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46059b, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_46059b, %struct.Memory** %MEMORY

  %loadBr_46059b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46059b = icmp eq i8 %loadBr_46059b, 1
  br i1 %cmpBr_46059b, label %block_.L_4605b3, label %block_4605a1

block_4605a1:
  ; Code: cmpl $0x0, -0x2f0(%rbp)	 RIP: 4605a1	 Bytes: 7
  %loadMem_4605a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605a1 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605a1)
  store %struct.Memory* %call_4605a1, %struct.Memory** %MEMORY

  ; Code: jle .L_4605b3	 RIP: 4605a8	 Bytes: 6
  %loadMem_4605a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605a8 = call %struct.Memory* @routine_jle_.L_4605b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605a8, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4605a8, %struct.Memory** %MEMORY

  %loadBr_4605a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4605a8 = icmp eq i8 %loadBr_4605a8, 1
  br i1 %cmpBr_4605a8, label %block_.L_4605b3, label %block_4605ae

block_4605ae:
  ; Code: jmpq .L_460869	 RIP: 4605ae	 Bytes: 5
  %loadMem_4605ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605ae = call %struct.Memory* @routine_jmpq_.L_460869(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605ae, i64 699, i64 5)
  store %struct.Memory* %call_4605ae, %struct.Memory** %MEMORY

  br label %block_.L_460869

  ; Code: .L_4605b3:	 RIP: 4605b3	 Bytes: 0
block_.L_4605b3:

  ; Code: xorl %eax, %eax	 RIP: 4605b3	 Bytes: 2
  %loadMem_4605b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605b3 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605b3)
  store %struct.Memory* %call_4605b3, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 4605b5	 Bytes: 2
  %loadMem_4605b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605b5 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605b5)
  store %struct.Memory* %call_4605b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x2f0(%rbp), %rdx	 RIP: 4605b7	 Bytes: 7
  %loadMem_4605b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605b7 = call %struct.Memory* @routine_movslq_MINUS0x2f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605b7)
  store %struct.Memory* %call_4605b7, %struct.Memory** %MEMORY

  ; Code: movl -0x488(%rbp,%rdx,4), %eax	 RIP: 4605be	 Bytes: 7
  %loadMem_4605be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605be = call %struct.Memory* @routine_movl_MINUS0x488__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605be)
  store %struct.Memory* %call_4605be, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2d4(%rbp)	 RIP: 4605c5	 Bytes: 6
  %loadMem_4605c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605c5 = call %struct.Memory* @routine_movl__eax__MINUS0x2d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605c5)
  store %struct.Memory* %call_4605c5, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %edi	 RIP: 4605cb	 Bytes: 6
  %loadMem_4605cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605cb = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605cb)
  store %struct.Memory* %call_4605cb, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 4605d1	 Bytes: 3
  %loadMem_4605d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605d1 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605d1)
  store %struct.Memory* %call_4605d1, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 4605d4	 Bytes: 3
  %loadMem_4605d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605d4 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605d4)
  store %struct.Memory* %call_4605d4, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 4605d7	 Bytes: 4
  %loadMem_4605d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605d7 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605d7)
  store %struct.Memory* %call_4605d7, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r9d	 RIP: 4605db	 Bytes: 4
  %loadMem_4605db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605db = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605db)
  store %struct.Memory* %call_4605db, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %r10d	 RIP: 4605df	 Bytes: 8
  %loadMem_4605df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605df = call %struct.Memory* @routine_movl_0xb54ce4___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605df)
  store %struct.Memory* %call_4605df, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b850, %r10d	 RIP: 4605e7	 Bytes: 8
  %loadMem_4605e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605e7 = call %struct.Memory* @routine_cmpl_0xb8b850___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605e7)
  store %struct.Memory* %call_4605e7, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x574(%rbp)	 RIP: 4605ef	 Bytes: 7
  %loadMem_4605ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605ef = call %struct.Memory* @routine_movl__r9d__MINUS0x574__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605ef)
  store %struct.Memory* %call_4605ef, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x578(%rbp)	 RIP: 4605f6	 Bytes: 6
  %loadMem_4605f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605f6 = call %struct.Memory* @routine_movl__edi__MINUS0x578__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605f6)
  store %struct.Memory* %call_4605f6, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x57c(%rbp)	 RIP: 4605fc	 Bytes: 6
  %loadMem_4605fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4605fc = call %struct.Memory* @routine_movl__esi__MINUS0x57c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4605fc)
  store %struct.Memory* %call_4605fc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x580(%rbp)	 RIP: 460602	 Bytes: 6
  %loadMem_460602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460602 = call %struct.Memory* @routine_movl__eax__MINUS0x580__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460602)
  store %struct.Memory* %call_460602, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x584(%rbp)	 RIP: 460608	 Bytes: 7
  %loadMem_460608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460608 = call %struct.Memory* @routine_movl__r8d__MINUS0x584__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460608)
  store %struct.Memory* %call_460608, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x585(%rbp)	 RIP: 46060f	 Bytes: 6
  %loadMem_46060f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46060f = call %struct.Memory* @routine_movb__cl__MINUS0x585__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46060f)
  store %struct.Memory* %call_46060f, %struct.Memory** %MEMORY

  ; Code: jg .L_46062b	 RIP: 460615	 Bytes: 6
  %loadMem_460615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460615 = call %struct.Memory* @routine_jg_.L_46062b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460615, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_460615, %struct.Memory** %MEMORY

  %loadBr_460615 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460615 = icmp eq i8 %loadBr_460615, 1
  br i1 %cmpBr_460615, label %block_.L_46062b, label %block_46061b

block_46061b:
  ; Code: cmpl $0x0, -0x490(%rbp)	 RIP: 46061b	 Bytes: 7
  %loadMem_46061b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46061b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x490__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46061b)
  store %struct.Memory* %call_46061b, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 460622	 Bytes: 3
  %loadMem_460622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460622 = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460622)
  store %struct.Memory* %call_460622, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x585(%rbp)	 RIP: 460625	 Bytes: 6
  %loadMem_460625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460625 = call %struct.Memory* @routine_movb__al__MINUS0x585__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460625)
  store %struct.Memory* %call_460625, %struct.Memory** %MEMORY

  ; Code: .L_46062b:	 RIP: 46062b	 Bytes: 0
  br label %block_.L_46062b
block_.L_46062b:

  ; Code: movb -0x585(%rbp), %al	 RIP: 46062b	 Bytes: 6
  %loadMem_46062b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46062b = call %struct.Memory* @routine_movb_MINUS0x585__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46062b)
  store %struct.Memory* %call_46062b, %struct.Memory** %MEMORY

  ; Code: movq $0x57fe92, %rdx	 RIP: 460631	 Bytes: 10
  %loadMem_460631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460631 = call %struct.Memory* @routine_movq__0x57fe92___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460631)
  store %struct.Memory* %call_460631, %struct.Memory** %MEMORY

  ; Code: leaq -0x4b4(%rbp), %rcx	 RIP: 46063b	 Bytes: 7
  %loadMem_46063b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46063b = call %struct.Memory* @routine_leaq_MINUS0x4b4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46063b)
  store %struct.Memory* %call_46063b, %struct.Memory** %MEMORY

  ; Code: leaq -0x4b8(%rbp), %rsi	 RIP: 460642	 Bytes: 7
  %loadMem_460642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460642 = call %struct.Memory* @routine_leaq_MINUS0x4b8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460642)
  store %struct.Memory* %call_460642, %struct.Memory** %MEMORY

  ; Code: leaq -0x4bc(%rbp), %rdi	 RIP: 460649	 Bytes: 7
  %loadMem_460649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460649 = call %struct.Memory* @routine_leaq_MINUS0x4bc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460649)
  store %struct.Memory* %call_460649, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 460650	 Bytes: 2
  %loadMem_460650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460650 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460650)
  store %struct.Memory* %call_460650, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %r8d	 RIP: 460652	 Bytes: 4
  %loadMem_460652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460652 = call %struct.Memory* @routine_movzbl__al___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460652)
  store %struct.Memory* %call_460652, %struct.Memory** %MEMORY

  ; Code: movl -0x578(%rbp), %r9d	 RIP: 460656	 Bytes: 7
  %loadMem_460656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460656 = call %struct.Memory* @routine_movl_MINUS0x578__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460656)
  store %struct.Memory* %call_460656, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x590(%rbp)	 RIP: 46065d	 Bytes: 7
  %loadMem_46065d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46065d = call %struct.Memory* @routine_movq__rdi__MINUS0x590__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46065d)
  store %struct.Memory* %call_46065d, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edi	 RIP: 460664	 Bytes: 3
  %loadMem_460664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460664 = call %struct.Memory* @routine_movl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460664)
  store %struct.Memory* %call_460664, %struct.Memory** %MEMORY

  ; Code: movl -0x57c(%rbp), %r10d	 RIP: 460667	 Bytes: 7
  %loadMem_460667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460667 = call %struct.Memory* @routine_movl_MINUS0x57c__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460667)
  store %struct.Memory* %call_460667, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x598(%rbp)	 RIP: 46066e	 Bytes: 7
  %loadMem_46066e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46066e = call %struct.Memory* @routine_movq__rsi__MINUS0x598__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46066e)
  store %struct.Memory* %call_46066e, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %esi	 RIP: 460675	 Bytes: 3
  %loadMem_460675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460675 = call %struct.Memory* @routine_movl__r10d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460675)
  store %struct.Memory* %call_460675, %struct.Memory** %MEMORY

  ; Code: movl -0x580(%rbp), %r11d	 RIP: 460678	 Bytes: 7
  %loadMem_460678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460678 = call %struct.Memory* @routine_movl_MINUS0x580__rbp____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460678)
  store %struct.Memory* %call_460678, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x5a0(%rbp)	 RIP: 46067f	 Bytes: 7
  %loadMem_46067f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46067f = call %struct.Memory* @routine_movq__rcx__MINUS0x5a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46067f)
  store %struct.Memory* %call_46067f, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %ecx	 RIP: 460686	 Bytes: 3
  %loadMem_460686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460686 = call %struct.Memory* @routine_movl__r11d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460686)
  store %struct.Memory* %call_460686, %struct.Memory** %MEMORY

  ; Code: movl -0x584(%rbp), %ebx	 RIP: 460689	 Bytes: 6
  %loadMem_460689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460689 = call %struct.Memory* @routine_movl_MINUS0x584__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460689)
  store %struct.Memory* %call_460689, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x5a4(%rbp)	 RIP: 46068f	 Bytes: 7
  %loadMem_46068f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46068f = call %struct.Memory* @routine_movl__r8d__MINUS0x5a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46068f)
  store %struct.Memory* %call_46068f, %struct.Memory** %MEMORY

  ; Code: movl %ebx, %r8d	 RIP: 460696	 Bytes: 3
  %loadMem_460696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460696 = call %struct.Memory* @routine_movl__ebx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460696)
  store %struct.Memory* %call_460696, %struct.Memory** %MEMORY

  ; Code: movl -0x574(%rbp), %r9d	 RIP: 460699	 Bytes: 7
  %loadMem_460699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460699 = call %struct.Memory* @routine_movl_MINUS0x574__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460699)
  store %struct.Memory* %call_460699, %struct.Memory** %MEMORY

  ; Code: movq -0x5a0(%rbp), %r14	 RIP: 4606a0	 Bytes: 7
  %loadMem_4606a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606a0 = call %struct.Memory* @routine_movq_MINUS0x5a0__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606a0)
  store %struct.Memory* %call_4606a0, %struct.Memory** %MEMORY

  ; Code: movq %r14, (%rsp)	 RIP: 4606a7	 Bytes: 4
  %loadMem_4606a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606a7 = call %struct.Memory* @routine_movq__r14____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606a7)
  store %struct.Memory* %call_4606a7, %struct.Memory** %MEMORY

  ; Code: movq -0x598(%rbp), %r15	 RIP: 4606ab	 Bytes: 7
  %loadMem_4606ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606ab = call %struct.Memory* @routine_movq_MINUS0x598__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606ab)
  store %struct.Memory* %call_4606ab, %struct.Memory** %MEMORY

  ; Code: movq %r15, 0x8(%rsp)	 RIP: 4606b2	 Bytes: 5
  %loadMem_4606b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606b2 = call %struct.Memory* @routine_movq__r15__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606b2)
  store %struct.Memory* %call_4606b2, %struct.Memory** %MEMORY

  ; Code: movq -0x590(%rbp), %r12	 RIP: 4606b7	 Bytes: 7
  %loadMem_4606b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606b7 = call %struct.Memory* @routine_movq_MINUS0x590__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606b7)
  store %struct.Memory* %call_4606b7, %struct.Memory** %MEMORY

  ; Code: movq %r12, 0x10(%rsp)	 RIP: 4606be	 Bytes: 5
  %loadMem_4606be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606be = call %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606be)
  store %struct.Memory* %call_4606be, %struct.Memory** %MEMORY

  ; Code: movl -0x5a4(%rbp), %r13d	 RIP: 4606c3	 Bytes: 7
  %loadMem_4606c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606c3 = call %struct.Memory* @routine_movl_MINUS0x5a4__rbp____r13d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606c3)
  store %struct.Memory* %call_4606c3, %struct.Memory** %MEMORY

  ; Code: movl %r13d, 0x18(%rsp)	 RIP: 4606ca	 Bytes: 5
  %loadMem_4606ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606ca = call %struct.Memory* @routine_movl__r13d__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606ca)
  store %struct.Memory* %call_4606ca, %struct.Memory** %MEMORY

  ; Code: callq .komaster_trymove	 RIP: 4606cf	 Bytes: 5
  %loadMem1_4606cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4606cf = call %struct.Memory* @routine_callq_.komaster_trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4606cf, i64 -334047, i64 5, i64 5)
  store %struct.Memory* %call1_4606cf, %struct.Memory** %MEMORY

  %loadMem2_4606cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4606cf = load i64, i64* %3
  %call2_4606cf = call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* %0, i64  %loadPC_4606cf, %struct.Memory* %loadMem2_4606cf)
  store %struct.Memory* %call2_4606cf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4606d4	 Bytes: 3
  %loadMem_4606d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606d4 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606d4)
  store %struct.Memory* %call_4606d4, %struct.Memory** %MEMORY

  ; Code: je .L_460850	 RIP: 4606d7	 Bytes: 6
  %loadMem_4606d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606d7 = call %struct.Memory* @routine_je_.L_460850(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606d7, i8* %BRANCH_TAKEN, i64 377, i64 6, i64 6)
  store %struct.Memory* %call_4606d7, %struct.Memory** %MEMORY

  %loadBr_4606d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4606d7 = icmp eq i8 %loadBr_4606d7, 1
  br i1 %cmpBr_4606d7, label %block_.L_460850, label %block_4606dd

block_4606dd:
  ; Code: cmpl $0x0, -0x4bc(%rbp)	 RIP: 4606dd	 Bytes: 7
  %loadMem_4606dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606dd = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606dd)
  store %struct.Memory* %call_4606dd, %struct.Memory** %MEMORY

  ; Code: jne .L_4607ee	 RIP: 4606e4	 Bytes: 6
  %loadMem_4606e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606e4 = call %struct.Memory* @routine_jne_.L_4607ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606e4, i8* %BRANCH_TAKEN, i64 266, i64 6, i64 6)
  store %struct.Memory* %call_4606e4, %struct.Memory** %MEMORY

  %loadBr_4606e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4606e4 = icmp eq i8 %loadBr_4606e4, 1
  br i1 %cmpBr_4606e4, label %block_.L_4607ee, label %block_4606ea

block_4606ea:
  ; Code: xorl %eax, %eax	 RIP: 4606ea	 Bytes: 2
  %loadMem_4606ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606ea = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606ea)
  store %struct.Memory* %call_4606ea, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4606ec	 Bytes: 2
  %loadMem_4606ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606ec = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606ec)
  store %struct.Memory* %call_4606ec, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4606ee	 Bytes: 3
  %loadMem_4606ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606ee = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606ee)
  store %struct.Memory* %call_4606ee, %struct.Memory** %MEMORY

  ; Code: movl -0x4b4(%rbp), %edx	 RIP: 4606f1	 Bytes: 6
  %loadMem_4606f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606f1 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606f1)
  store %struct.Memory* %call_4606f1, %struct.Memory** %MEMORY

  ; Code: movl -0x4b8(%rbp), %ecx	 RIP: 4606f7	 Bytes: 6
  %loadMem_4606f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4606f7 = call %struct.Memory* @routine_movl_MINUS0x4b8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4606f7)
  store %struct.Memory* %call_4606f7, %struct.Memory** %MEMORY

  ; Code: callq .do_find_defense	 RIP: 4606fd	 Bytes: 5
  %loadMem1_4606fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4606fd = call %struct.Memory* @routine_callq_.do_find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4606fd, i64 12067, i64 5, i64 5)
  store %struct.Memory* %call1_4606fd, %struct.Memory** %MEMORY

  %loadMem2_4606fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4606fd = load i64, i64* %3
  %call2_4606fd = call %struct.Memory* @sub_463620.do_find_defense(%struct.State* %0, i64  %loadPC_4606fd, %struct.Memory* %loadMem2_4606fd)
  store %struct.Memory* %call2_4606fd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2ec(%rbp)	 RIP: 460702	 Bytes: 6
  %loadMem_460702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460702 = call %struct.Memory* @routine_movl__eax__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460702)
  store %struct.Memory* %call_460702, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, -0x2ec(%rbp)	 RIP: 460708	 Bytes: 7
  %loadMem_460708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460708 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460708)
  store %struct.Memory* %call_460708, %struct.Memory** %MEMORY

  ; Code: je .L_4607e4	 RIP: 46070f	 Bytes: 6
  %loadMem_46070f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46070f = call %struct.Memory* @routine_je_.L_4607e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46070f, i8* %BRANCH_TAKEN, i64 213, i64 6, i64 6)
  store %struct.Memory* %call_46070f, %struct.Memory** %MEMORY

  %loadBr_46070f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46070f = icmp eq i8 %loadBr_46070f, 1
  br i1 %cmpBr_46070f, label %block_.L_4607e4, label %block_460715

block_460715:
  ; Code: xorl %eax, %eax	 RIP: 460715	 Bytes: 2
  %loadMem_460715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460715 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460715)
  store %struct.Memory* %call_460715, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 460717	 Bytes: 2
  %loadMem_460717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460717 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460717)
  store %struct.Memory* %call_460717, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 460719	 Bytes: 3
  %loadMem_460719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460719 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460719)
  store %struct.Memory* %call_460719, %struct.Memory** %MEMORY

  ; Code: movl -0x4b4(%rbp), %edx	 RIP: 46071c	 Bytes: 6
  %loadMem_46071c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46071c = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46071c)
  store %struct.Memory* %call_46071c, %struct.Memory** %MEMORY

  ; Code: movl -0x4b8(%rbp), %ecx	 RIP: 460722	 Bytes: 6
  %loadMem_460722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460722 = call %struct.Memory* @routine_movl_MINUS0x4b8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460722)
  store %struct.Memory* %call_460722, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 460728	 Bytes: 5
  %loadMem1_460728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460728 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460728, i64 -10824, i64 5, i64 5)
  store %struct.Memory* %call1_460728, %struct.Memory** %MEMORY

  %loadMem2_460728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460728 = load i64, i64* %3
  %call2_460728 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_460728, %struct.Memory* %loadMem2_460728)
  store %struct.Memory* %call2_460728, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46072d	 Bytes: 3
  %loadMem_46072d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46072d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46072d)
  store %struct.Memory* %call_46072d, %struct.Memory** %MEMORY

  ; Code: je .L_4607e4	 RIP: 460730	 Bytes: 6
  %loadMem_460730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460730 = call %struct.Memory* @routine_je_.L_4607e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460730, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_460730, %struct.Memory** %MEMORY

  %loadBr_460730 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460730 = icmp eq i8 %loadBr_460730, 1
  br i1 %cmpBr_460730, label %block_.L_4607e4, label %block_460736

block_460736:
  ; Code: callq .popgo	 RIP: 460736	 Bytes: 5
  %loadMem1_460736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460736 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460736, i64 -338390, i64 5, i64 5)
  store %struct.Memory* %call1_460736, %struct.Memory** %MEMORY

  %loadMem2_460736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460736 = load i64, i64* %3
  %call2_460736 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_460736, %struct.Memory* %loadMem2_460736)
  store %struct.Memory* %call2_460736, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x2ec(%rbp)	 RIP: 46073b	 Bytes: 7
  %loadMem_46073b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46073b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46073b)
  store %struct.Memory* %call_46073b, %struct.Memory** %MEMORY

  ; Code: jne .L_4607a1	 RIP: 460742	 Bytes: 6
  %loadMem_460742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460742 = call %struct.Memory* @routine_jne_.L_4607a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460742, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_460742, %struct.Memory** %MEMORY

  %loadBr_460742 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460742 = icmp eq i8 %loadBr_460742, 1
  br i1 %cmpBr_460742, label %block_.L_4607a1, label %block_460748

block_460748:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 460748	 Bytes: 5
  %loadMem_460748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460748 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460748)
  store %struct.Memory* %call_460748, %struct.Memory** %MEMORY

  ; Code: je .L_46075f	 RIP: 46074d	 Bytes: 6
  %loadMem_46074d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46074d = call %struct.Memory* @routine_je_.L_46075f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46074d, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_46074d, %struct.Memory** %MEMORY

  %loadBr_46074d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46074d = icmp eq i8 %loadBr_46074d, 1
  br i1 %cmpBr_46074d, label %block_.L_46075f, label %block_460753

block_460753:
  ; Code: movl -0x2d4(%rbp), %eax	 RIP: 460753	 Bytes: 6
  %loadMem_460753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460753 = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460753)
  store %struct.Memory* %call_460753, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 460759	 Bytes: 4
  %loadMem_460759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460759 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460759)
  store %struct.Memory* %call_460759, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 46075d	 Bytes: 2
  %loadMem_46075d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46075d = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46075d)
  store %struct.Memory* %call_46075d, %struct.Memory** %MEMORY

  ; Code: .L_46075f:	 RIP: 46075f	 Bytes: 0
  br label %block_.L_46075f
block_.L_46075f:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 46075f	 Bytes: 9
  %loadMem_46075f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46075f = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46075f)
  store %struct.Memory* %call_46075f, %struct.Memory** %MEMORY

  ; Code: je .L_460795	 RIP: 460768	 Bytes: 6
  %loadMem_460768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460768 = call %struct.Memory* @routine_je_.L_460795(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460768, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_460768, %struct.Memory** %MEMORY

  %loadBr_460768 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460768 = icmp eq i8 %loadBr_460768, 1
  br i1 %cmpBr_460768, label %block_.L_460795, label %block_46076e

block_46076e:
  ; Code: movl $0x5, %ecx	 RIP: 46076e	 Bytes: 5
  %loadMem_46076e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46076e = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46076e)
  store %struct.Memory* %call_46076e, %struct.Memory** %MEMORY

  ; Code: movq $0x57e5fb, %r8	 RIP: 460773	 Bytes: 10
  %loadMem_460773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460773 = call %struct.Memory* @routine_movq__0x57e5fb___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460773)
  store %struct.Memory* %call_460773, %struct.Memory** %MEMORY

  ; Code: movq -0x498(%rbp), %rdi	 RIP: 46077d	 Bytes: 7
  %loadMem_46077d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46077d = call %struct.Memory* @routine_movq_MINUS0x498__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46077d)
  store %struct.Memory* %call_46077d, %struct.Memory** %MEMORY

  ; Code: movl -0x49c(%rbp), %esi	 RIP: 460784	 Bytes: 6
  %loadMem_460784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460784 = call %struct.Memory* @routine_movl_MINUS0x49c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460784)
  store %struct.Memory* %call_460784, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %edx	 RIP: 46078a	 Bytes: 6
  %loadMem_46078a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46078a = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46078a)
  store %struct.Memory* %call_46078a, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 460790	 Bytes: 5
  %loadMem1_460790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460790 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460790, i64 -296912, i64 5, i64 5)
  store %struct.Memory* %call1_460790, %struct.Memory** %MEMORY

  %loadMem2_460790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460790 = load i64, i64* %3
  %call2_460790 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_460790, %struct.Memory* %loadMem2_460790)
  store %struct.Memory* %call2_460790, %struct.Memory** %MEMORY

  ; Code: .L_460795:	 RIP: 460795	 Bytes: 0
  br label %block_.L_460795
block_.L_460795:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 460795	 Bytes: 7
  %loadMem_460795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460795 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460795)
  store %struct.Memory* %call_460795, %struct.Memory** %MEMORY

  ; Code: jmpq .L_461376	 RIP: 46079c	 Bytes: 5
  %loadMem_46079c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46079c = call %struct.Memory* @routine_jmpq_.L_461376(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46079c, i64 3034, i64 5)
  store %struct.Memory* %call_46079c, %struct.Memory** %MEMORY

  br label %block_.L_461376

  ; Code: .L_4607a1:	 RIP: 4607a1	 Bytes: 0
block_.L_4607a1:

  ; Code: movl $0x5, %eax	 RIP: 4607a1	 Bytes: 5
  %loadMem_4607a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607a1 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607a1)
  store %struct.Memory* %call_4607a1, %struct.Memory** %MEMORY

  ; Code: subl -0x2ec(%rbp), %eax	 RIP: 4607a6	 Bytes: 6
  %loadMem_4607a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607a6 = call %struct.Memory* @routine_subl_MINUS0x2ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607a6)
  store %struct.Memory* %call_4607a6, %struct.Memory** %MEMORY

  ; Code: cmpl -0x490(%rbp), %eax	 RIP: 4607ac	 Bytes: 6
  %loadMem_4607ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607ac = call %struct.Memory* @routine_cmpl_MINUS0x490__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607ac)
  store %struct.Memory* %call_4607ac, %struct.Memory** %MEMORY

  ; Code: jle .L_4607d5	 RIP: 4607b2	 Bytes: 6
  %loadMem_4607b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607b2 = call %struct.Memory* @routine_jle_.L_4607d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607b2, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_4607b2, %struct.Memory** %MEMORY

  %loadBr_4607b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4607b2 = icmp eq i8 %loadBr_4607b2, 1
  br i1 %cmpBr_4607b2, label %block_.L_4607d5, label %block_4607b8

block_4607b8:
  ; Code: movl $0x5, %eax	 RIP: 4607b8	 Bytes: 5
  %loadMem_4607b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607b8 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607b8)
  store %struct.Memory* %call_4607b8, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %ecx	 RIP: 4607bd	 Bytes: 6
  %loadMem_4607bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607bd = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607bd)
  store %struct.Memory* %call_4607bd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x48c(%rbp)	 RIP: 4607c3	 Bytes: 6
  %loadMem_4607c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607c3 = call %struct.Memory* @routine_movl__ecx__MINUS0x48c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607c3)
  store %struct.Memory* %call_4607c3, %struct.Memory** %MEMORY

  ; Code: subl -0x2ec(%rbp), %eax	 RIP: 4607c9	 Bytes: 6
  %loadMem_4607c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607c9 = call %struct.Memory* @routine_subl_MINUS0x2ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607c9)
  store %struct.Memory* %call_4607c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x490(%rbp)	 RIP: 4607cf	 Bytes: 6
  %loadMem_4607cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607cf = call %struct.Memory* @routine_movl__eax__MINUS0x490__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607cf)
  store %struct.Memory* %call_4607cf, %struct.Memory** %MEMORY

  ; Code: .L_4607d5:	 RIP: 4607d5	 Bytes: 0
  br label %block_.L_4607d5
block_.L_4607d5:

  ; Code: jmpq .L_4607da	 RIP: 4607d5	 Bytes: 5
  %loadMem_4607d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607d5 = call %struct.Memory* @routine_jmpq_.L_4607da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607d5, i64 5, i64 5)
  store %struct.Memory* %call_4607d5, %struct.Memory** %MEMORY

  br label %block_.L_4607da

  ; Code: .L_4607da:	 RIP: 4607da	 Bytes: 0
block_.L_4607da:

  ; Code: jmpq .L_4607df	 RIP: 4607da	 Bytes: 5
  %loadMem_4607da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607da = call %struct.Memory* @routine_jmpq_.L_4607df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607da, i64 5, i64 5)
  store %struct.Memory* %call_4607da, %struct.Memory** %MEMORY

  br label %block_.L_4607df

  ; Code: .L_4607df:	 RIP: 4607df	 Bytes: 0
block_.L_4607df:

  ; Code: jmpq .L_4607e9	 RIP: 4607df	 Bytes: 5
  %loadMem_4607df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607df = call %struct.Memory* @routine_jmpq_.L_4607e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607df, i64 10, i64 5)
  store %struct.Memory* %call_4607df, %struct.Memory** %MEMORY

  br label %block_.L_4607e9

  ; Code: .L_4607e4:	 RIP: 4607e4	 Bytes: 0
block_.L_4607e4:

  ; Code: callq .popgo	 RIP: 4607e4	 Bytes: 5
  %loadMem1_4607e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4607e4 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4607e4, i64 -338564, i64 5, i64 5)
  store %struct.Memory* %call1_4607e4, %struct.Memory** %MEMORY

  %loadMem2_4607e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4607e4 = load i64, i64* %3
  %call2_4607e4 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_4607e4, %struct.Memory* %loadMem2_4607e4)
  store %struct.Memory* %call2_4607e4, %struct.Memory** %MEMORY

  ; Code: .L_4607e9:	 RIP: 4607e9	 Bytes: 0
  br label %block_.L_4607e9
block_.L_4607e9:

  ; Code: jmpq .L_46084b	 RIP: 4607e9	 Bytes: 5
  %loadMem_4607e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607e9 = call %struct.Memory* @routine_jmpq_.L_46084b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607e9, i64 98, i64 5)
  store %struct.Memory* %call_4607e9, %struct.Memory** %MEMORY

  br label %block_.L_46084b

  ; Code: .L_4607ee:	 RIP: 4607ee	 Bytes: 0
block_.L_4607ee:

  ; Code: xorl %eax, %eax	 RIP: 4607ee	 Bytes: 2
  %loadMem_4607ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607ee = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607ee)
  store %struct.Memory* %call_4607ee, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4607f0	 Bytes: 2
  %loadMem_4607f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607f0 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607f0)
  store %struct.Memory* %call_4607f0, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4607f2	 Bytes: 3
  %loadMem_4607f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607f2 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607f2)
  store %struct.Memory* %call_4607f2, %struct.Memory** %MEMORY

  ; Code: movl -0x4b4(%rbp), %edx	 RIP: 4607f5	 Bytes: 6
  %loadMem_4607f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607f5 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607f5)
  store %struct.Memory* %call_4607f5, %struct.Memory** %MEMORY

  ; Code: movl -0x4b8(%rbp), %ecx	 RIP: 4607fb	 Bytes: 6
  %loadMem_4607fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4607fb = call %struct.Memory* @routine_movl_MINUS0x4b8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4607fb)
  store %struct.Memory* %call_4607fb, %struct.Memory** %MEMORY

  ; Code: callq .do_find_defense	 RIP: 460801	 Bytes: 5
  %loadMem1_460801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460801 = call %struct.Memory* @routine_callq_.do_find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460801, i64 11807, i64 5, i64 5)
  store %struct.Memory* %call1_460801, %struct.Memory** %MEMORY

  %loadMem2_460801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460801 = load i64, i64* %3
  %call2_460801 = call %struct.Memory* @sub_463620.do_find_defense(%struct.State* %0, i64  %loadPC_460801, %struct.Memory* %loadMem2_460801)
  store %struct.Memory* %call2_460801, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 460806	 Bytes: 3
  %loadMem_460806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460806 = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460806)
  store %struct.Memory* %call_460806, %struct.Memory** %MEMORY

  ; Code: je .L_460846	 RIP: 460809	 Bytes: 6
  %loadMem_460809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460809 = call %struct.Memory* @routine_je_.L_460846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460809, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_460809, %struct.Memory** %MEMORY

  %loadBr_460809 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460809 = icmp eq i8 %loadBr_460809, 1
  br i1 %cmpBr_460809, label %block_.L_460846, label %block_46080f

block_46080f:
  ; Code: xorl %eax, %eax	 RIP: 46080f	 Bytes: 2
  %loadMem_46080f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46080f = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46080f)
  store %struct.Memory* %call_46080f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 460811	 Bytes: 2
  %loadMem_460811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460811 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460811)
  store %struct.Memory* %call_460811, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 460813	 Bytes: 3
  %loadMem_460813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460813 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460813)
  store %struct.Memory* %call_460813, %struct.Memory** %MEMORY

  ; Code: movl -0x4b4(%rbp), %edx	 RIP: 460816	 Bytes: 6
  %loadMem_460816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460816 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460816)
  store %struct.Memory* %call_460816, %struct.Memory** %MEMORY

  ; Code: movl -0x4b8(%rbp), %ecx	 RIP: 46081c	 Bytes: 6
  %loadMem_46081c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46081c = call %struct.Memory* @routine_movl_MINUS0x4b8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46081c)
  store %struct.Memory* %call_46081c, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 460822	 Bytes: 5
  %loadMem1_460822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460822 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460822, i64 -11074, i64 5, i64 5)
  store %struct.Memory* %call1_460822, %struct.Memory** %MEMORY

  %loadMem2_460822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460822 = load i64, i64* %3
  %call2_460822 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_460822, %struct.Memory* %loadMem2_460822)
  store %struct.Memory* %call2_460822, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 460827	 Bytes: 3
  %loadMem_460827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460827 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460827)
  store %struct.Memory* %call_460827, %struct.Memory** %MEMORY

  ; Code: je .L_460846	 RIP: 46082a	 Bytes: 6
  %loadMem_46082a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46082a = call %struct.Memory* @routine_je_.L_460846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46082a, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_46082a, %struct.Memory** %MEMORY

  %loadBr_46082a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46082a = icmp eq i8 %loadBr_46082a, 1
  br i1 %cmpBr_46082a, label %block_.L_460846, label %block_460830

block_460830:
  ; Code: movl -0x2d4(%rbp), %eax	 RIP: 460830	 Bytes: 6
  %loadMem_460830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460830 = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460830)
  store %struct.Memory* %call_460830, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48c(%rbp)	 RIP: 460836	 Bytes: 6
  %loadMem_460836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460836 = call %struct.Memory* @routine_movl__eax__MINUS0x48c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460836)
  store %struct.Memory* %call_460836, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x490(%rbp)	 RIP: 46083c	 Bytes: 10
  %loadMem_46083c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46083c = call %struct.Memory* @routine_movl__0x1__MINUS0x490__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46083c)
  store %struct.Memory* %call_46083c, %struct.Memory** %MEMORY

  ; Code: .L_460846:	 RIP: 460846	 Bytes: 0
  br label %block_.L_460846
block_.L_460846:

  ; Code: callq .popgo	 RIP: 460846	 Bytes: 5
  %loadMem1_460846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460846 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460846, i64 -338662, i64 5, i64 5)
  store %struct.Memory* %call1_460846, %struct.Memory** %MEMORY

  %loadMem2_460846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460846 = load i64, i64* %3
  %call2_460846 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_460846, %struct.Memory* %loadMem2_460846)
  store %struct.Memory* %call2_460846, %struct.Memory** %MEMORY

  ; Code: .L_46084b:	 RIP: 46084b	 Bytes: 0
  br label %block_.L_46084b
block_.L_46084b:

  ; Code: jmpq .L_460850	 RIP: 46084b	 Bytes: 5
  %loadMem_46084b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46084b = call %struct.Memory* @routine_jmpq_.L_460850(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46084b, i64 5, i64 5)
  store %struct.Memory* %call_46084b, %struct.Memory** %MEMORY

  br label %block_.L_460850

  ; Code: .L_460850:	 RIP: 460850	 Bytes: 0
block_.L_460850:

  ; Code: jmpq .L_460855	 RIP: 460850	 Bytes: 5
  %loadMem_460850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460850 = call %struct.Memory* @routine_jmpq_.L_460855(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460850, i64 5, i64 5)
  store %struct.Memory* %call_460850, %struct.Memory** %MEMORY

  br label %block_.L_460855

  ; Code: .L_460855:	 RIP: 460855	 Bytes: 0
block_.L_460855:

  ; Code: movl -0x2f0(%rbp), %eax	 RIP: 460855	 Bytes: 6
  %loadMem_460855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460855 = call %struct.Memory* @routine_movl_MINUS0x2f0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460855)
  store %struct.Memory* %call_460855, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46085b	 Bytes: 3
  %loadMem_46085b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46085b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46085b)
  store %struct.Memory* %call_46085b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f0(%rbp)	 RIP: 46085e	 Bytes: 6
  %loadMem_46085e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46085e = call %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46085e)
  store %struct.Memory* %call_46085e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46057b	 RIP: 460864	 Bytes: 5
  %loadMem_460864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460864 = call %struct.Memory* @routine_jmpq_.L_46057b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460864, i64 -745, i64 5)
  store %struct.Memory* %call_460864, %struct.Memory** %MEMORY

  br label %block_.L_46057b

  ; Code: .L_460869:	 RIP: 460869	 Bytes: 0
block_.L_460869:

  ; Code: movl 0xb54ce4, %eax	 RIP: 460869	 Bytes: 7
  %loadMem_460869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460869 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460869)
  store %struct.Memory* %call_460869, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb060b8, %eax	 RIP: 460870	 Bytes: 7
  %loadMem_460870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460870 = call %struct.Memory* @routine_cmpl_0xb060b8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460870)
  store %struct.Memory* %call_460870, %struct.Memory** %MEMORY

  ; Code: jg .L_460950	 RIP: 460877	 Bytes: 6
  %loadMem_460877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460877 = call %struct.Memory* @routine_jg_.L_460950(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460877, i8* %BRANCH_TAKEN, i64 217, i64 6, i64 6)
  store %struct.Memory* %call_460877, %struct.Memory** %MEMORY

  %loadBr_460877 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460877 = icmp eq i8 %loadBr_460877, 1
  br i1 %cmpBr_460877, label %block_.L_460950, label %block_46087d

block_46087d:
  ; Code: leaq -0x2d4(%rbp), %rsi	 RIP: 46087d	 Bytes: 7
  %loadMem_46087d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46087d = call %struct.Memory* @routine_leaq_MINUS0x2d4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46087d)
  store %struct.Memory* %call_46087d, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 460884	 Bytes: 3
  %loadMem_460884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460884 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460884)
  store %struct.Memory* %call_460884, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 460887	 Bytes: 3
  %loadMem_460887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460887 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460887)
  store %struct.Memory* %call_460887, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 46088a	 Bytes: 3
  %loadMem_46088a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46088a = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46088a)
  store %struct.Memory* %call_46088a, %struct.Memory** %MEMORY

  ; Code: callq .find_cap	 RIP: 46088d	 Bytes: 5
  %loadMem1_46088d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46088d = call %struct.Memory* @routine_callq_.find_cap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46088d, i64 12451, i64 5, i64 5)
  store %struct.Memory* %call1_46088d, %struct.Memory** %MEMORY

  %loadMem2_46088d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46088d = load i64, i64* %3
  %call2_46088d = call %struct.Memory* @sub_463930.find_cap(%struct.State* %0, i64  %loadPC_46088d, %struct.Memory* %loadMem2_46088d)
  store %struct.Memory* %call2_46088d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c0(%rbp)	 RIP: 460892	 Bytes: 6
  %loadMem_460892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460892 = call %struct.Memory* @routine_movl__eax__MINUS0x4c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460892)
  store %struct.Memory* %call_460892, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 460898	 Bytes: 5
  %loadMem_460898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460898 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460898)
  store %struct.Memory* %call_460898, %struct.Memory** %MEMORY

  ; Code: subl -0x4c0(%rbp), %eax	 RIP: 46089d	 Bytes: 6
  %loadMem_46089d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46089d = call %struct.Memory* @routine_subl_MINUS0x4c0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46089d)
  store %struct.Memory* %call_46089d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4608a3	 Bytes: 3
  %loadMem_4608a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4608a3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4608a3)
  store %struct.Memory* %call_4608a3, %struct.Memory** %MEMORY

  ; Code: jne .L_460905	 RIP: 4608a6	 Bytes: 6
  %loadMem_4608a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4608a6 = call %struct.Memory* @routine_jne_.L_460905(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4608a6, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_4608a6, %struct.Memory** %MEMORY

  %loadBr_4608a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4608a6 = icmp eq i8 %loadBr_4608a6, 1
  br i1 %cmpBr_4608a6, label %block_.L_460905, label %block_4608ac

block_4608ac:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 4608ac	 Bytes: 5
  %loadMem_4608ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4608ac = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4608ac)
  store %struct.Memory* %call_4608ac, %struct.Memory** %MEMORY

  ; Code: je .L_4608c3	 RIP: 4608b1	 Bytes: 6
  %loadMem_4608b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4608b1 = call %struct.Memory* @routine_je_.L_4608c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4608b1, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4608b1, %struct.Memory** %MEMORY

  %loadBr_4608b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4608b1 = icmp eq i8 %loadBr_4608b1, 1
  br i1 %cmpBr_4608b1, label %block_.L_4608c3, label %block_4608b7

block_4608b7:
  ; Code: movl -0x2d4(%rbp), %eax	 RIP: 4608b7	 Bytes: 6
  %loadMem_4608b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4608b7 = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4608b7)
  store %struct.Memory* %call_4608b7, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 4608bd	 Bytes: 4
  %loadMem_4608bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4608bd = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4608bd)
  store %struct.Memory* %call_4608bd, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 4608c1	 Bytes: 2
  %loadMem_4608c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4608c1 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4608c1)
  store %struct.Memory* %call_4608c1, %struct.Memory** %MEMORY

  ; Code: .L_4608c3:	 RIP: 4608c3	 Bytes: 0
  br label %block_.L_4608c3
block_.L_4608c3:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 4608c3	 Bytes: 9
  %loadMem_4608c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4608c3 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4608c3)
  store %struct.Memory* %call_4608c3, %struct.Memory** %MEMORY

  ; Code: je .L_4608f9	 RIP: 4608cc	 Bytes: 6
  %loadMem_4608cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4608cc = call %struct.Memory* @routine_je_.L_4608f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4608cc, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_4608cc, %struct.Memory** %MEMORY

  %loadBr_4608cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4608cc = icmp eq i8 %loadBr_4608cc, 1
  br i1 %cmpBr_4608cc, label %block_.L_4608f9, label %block_4608d2

block_4608d2:
  ; Code: movl $0x5, %ecx	 RIP: 4608d2	 Bytes: 5
  %loadMem_4608d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4608d2 = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4608d2)
  store %struct.Memory* %call_4608d2, %struct.Memory** %MEMORY

  ; Code: movq $0x57fde6, %r8	 RIP: 4608d7	 Bytes: 10
  %loadMem_4608d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4608d7 = call %struct.Memory* @routine_movq__0x57fde6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4608d7)
  store %struct.Memory* %call_4608d7, %struct.Memory** %MEMORY

  ; Code: movq -0x498(%rbp), %rdi	 RIP: 4608e1	 Bytes: 7
  %loadMem_4608e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4608e1 = call %struct.Memory* @routine_movq_MINUS0x498__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4608e1)
  store %struct.Memory* %call_4608e1, %struct.Memory** %MEMORY

  ; Code: movl -0x49c(%rbp), %esi	 RIP: 4608e8	 Bytes: 6
  %loadMem_4608e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4608e8 = call %struct.Memory* @routine_movl_MINUS0x49c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4608e8)
  store %struct.Memory* %call_4608e8, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %edx	 RIP: 4608ee	 Bytes: 6
  %loadMem_4608ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4608ee = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4608ee)
  store %struct.Memory* %call_4608ee, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 4608f4	 Bytes: 5
  %loadMem1_4608f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4608f4 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4608f4, i64 -297268, i64 5, i64 5)
  store %struct.Memory* %call1_4608f4, %struct.Memory** %MEMORY

  %loadMem2_4608f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4608f4 = load i64, i64* %3
  %call2_4608f4 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_4608f4, %struct.Memory* %loadMem2_4608f4)
  store %struct.Memory* %call2_4608f4, %struct.Memory** %MEMORY

  ; Code: .L_4608f9:	 RIP: 4608f9	 Bytes: 0
  br label %block_.L_4608f9
block_.L_4608f9:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 4608f9	 Bytes: 7
  %loadMem_4608f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4608f9 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4608f9)
  store %struct.Memory* %call_4608f9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_461376	 RIP: 460900	 Bytes: 5
  %loadMem_460900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460900 = call %struct.Memory* @routine_jmpq_.L_461376(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460900, i64 2678, i64 5)
  store %struct.Memory* %call_460900, %struct.Memory** %MEMORY

  br label %block_.L_461376

  ; Code: .L_460905:	 RIP: 460905	 Bytes: 0
block_.L_460905:

  ; Code: movl $0x5, %eax	 RIP: 460905	 Bytes: 5
  %loadMem_460905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460905 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460905)
  store %struct.Memory* %call_460905, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 46090a	 Bytes: 2
  %loadMem_46090a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46090a = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46090a)
  store %struct.Memory* %call_46090a, %struct.Memory** %MEMORY

  ; Code: subl -0x4c0(%rbp), %ecx	 RIP: 46090c	 Bytes: 6
  %loadMem_46090c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46090c = call %struct.Memory* @routine_subl_MINUS0x4c0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46090c)
  store %struct.Memory* %call_46090c, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 460912	 Bytes: 2
  %loadMem_460912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460912 = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460912)
  store %struct.Memory* %call_460912, %struct.Memory** %MEMORY

  ; Code: cmpl -0x490(%rbp), %eax	 RIP: 460914	 Bytes: 6
  %loadMem_460914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460914 = call %struct.Memory* @routine_cmpl_MINUS0x490__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460914)
  store %struct.Memory* %call_460914, %struct.Memory** %MEMORY

  ; Code: jle .L_460941	 RIP: 46091a	 Bytes: 6
  %loadMem_46091a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46091a = call %struct.Memory* @routine_jle_.L_460941(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46091a, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_46091a, %struct.Memory** %MEMORY

  %loadBr_46091a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46091a = icmp eq i8 %loadBr_46091a, 1
  br i1 %cmpBr_46091a, label %block_.L_460941, label %block_460920

block_460920:
  ; Code: movl $0x5, %eax	 RIP: 460920	 Bytes: 5
  %loadMem_460920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460920 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460920)
  store %struct.Memory* %call_460920, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %ecx	 RIP: 460925	 Bytes: 6
  %loadMem_460925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460925 = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460925)
  store %struct.Memory* %call_460925, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x48c(%rbp)	 RIP: 46092b	 Bytes: 6
  %loadMem_46092b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46092b = call %struct.Memory* @routine_movl__ecx__MINUS0x48c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46092b)
  store %struct.Memory* %call_46092b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 460931	 Bytes: 2
  %loadMem_460931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460931 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460931)
  store %struct.Memory* %call_460931, %struct.Memory** %MEMORY

  ; Code: subl -0x4c0(%rbp), %ecx	 RIP: 460933	 Bytes: 6
  %loadMem_460933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460933 = call %struct.Memory* @routine_subl_MINUS0x4c0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460933)
  store %struct.Memory* %call_460933, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 460939	 Bytes: 2
  %loadMem_460939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460939 = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460939)
  store %struct.Memory* %call_460939, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x490(%rbp)	 RIP: 46093b	 Bytes: 6
  %loadMem_46093b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46093b = call %struct.Memory* @routine_movl__eax__MINUS0x490__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46093b)
  store %struct.Memory* %call_46093b, %struct.Memory** %MEMORY

  ; Code: .L_460941:	 RIP: 460941	 Bytes: 0
  br label %block_.L_460941
block_.L_460941:

  ; Code: jmpq .L_460946	 RIP: 460941	 Bytes: 5
  %loadMem_460941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460941 = call %struct.Memory* @routine_jmpq_.L_460946(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460941, i64 5, i64 5)
  store %struct.Memory* %call_460941, %struct.Memory** %MEMORY

  br label %block_.L_460946

  ; Code: .L_460946:	 RIP: 460946	 Bytes: 0
block_.L_460946:

  ; Code: jmpq .L_46094b	 RIP: 460946	 Bytes: 5
  %loadMem_460946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460946 = call %struct.Memory* @routine_jmpq_.L_46094b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460946, i64 5, i64 5)
  store %struct.Memory* %call_460946, %struct.Memory** %MEMORY

  br label %block_.L_46094b

  ; Code: .L_46094b:	 RIP: 46094b	 Bytes: 0
block_.L_46094b:

  ; Code: jmpq .L_460950	 RIP: 46094b	 Bytes: 5
  %loadMem_46094b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46094b = call %struct.Memory* @routine_jmpq_.L_460950(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46094b, i64 5, i64 5)
  store %struct.Memory* %call_46094b, %struct.Memory** %MEMORY

  br label %block_.L_460950

  ; Code: .L_460950:	 RIP: 460950	 Bytes: 0
block_.L_460950:

  ; Code: movl 0xb54ce4, %eax	 RIP: 460950	 Bytes: 7
  %loadMem_460950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460950 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460950)
  store %struct.Memory* %call_460950, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb54ce0, %eax	 RIP: 460957	 Bytes: 7
  %loadMem_460957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460957 = call %struct.Memory* @routine_cmpl_0xb54ce0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460957)
  store %struct.Memory* %call_460957, %struct.Memory** %MEMORY

  ; Code: jg .L_460a37	 RIP: 46095e	 Bytes: 6
  %loadMem_46095e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46095e = call %struct.Memory* @routine_jg_.L_460a37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46095e, i8* %BRANCH_TAKEN, i64 217, i64 6, i64 6)
  store %struct.Memory* %call_46095e, %struct.Memory** %MEMORY

  %loadBr_46095e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46095e = icmp eq i8 %loadBr_46095e, 1
  br i1 %cmpBr_46095e, label %block_.L_460a37, label %block_460964

block_460964:
  ; Code: leaq -0x2d4(%rbp), %rsi	 RIP: 460964	 Bytes: 7
  %loadMem_460964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460964 = call %struct.Memory* @routine_leaq_MINUS0x2d4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460964)
  store %struct.Memory* %call_460964, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 46096b	 Bytes: 3
  %loadMem_46096b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46096b = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46096b)
  store %struct.Memory* %call_46096b, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 46096e	 Bytes: 3
  %loadMem_46096e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46096e = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46096e)
  store %struct.Memory* %call_46096e, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 460971	 Bytes: 3
  %loadMem_460971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460971 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460971)
  store %struct.Memory* %call_460971, %struct.Memory** %MEMORY

  ; Code: callq .draw_back	 RIP: 460974	 Bytes: 5
  %loadMem1_460974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460974 = call %struct.Memory* @routine_callq_.draw_back(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460974, i64 35964, i64 5, i64 5)
  store %struct.Memory* %call1_460974, %struct.Memory** %MEMORY

  %loadMem2_460974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460974 = load i64, i64* %3
  %call2_460974 = call %struct.Memory* @sub_4695f0.draw_back(%struct.State* %0, i64  %loadPC_460974, %struct.Memory* %loadMem2_460974)
  store %struct.Memory* %call2_460974, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c4(%rbp)	 RIP: 460979	 Bytes: 6
  %loadMem_460979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460979 = call %struct.Memory* @routine_movl__eax__MINUS0x4c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460979)
  store %struct.Memory* %call_460979, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 46097f	 Bytes: 5
  %loadMem_46097f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46097f = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46097f)
  store %struct.Memory* %call_46097f, %struct.Memory** %MEMORY

  ; Code: subl -0x4c4(%rbp), %eax	 RIP: 460984	 Bytes: 6
  %loadMem_460984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460984 = call %struct.Memory* @routine_subl_MINUS0x4c4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460984)
  store %struct.Memory* %call_460984, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46098a	 Bytes: 3
  %loadMem_46098a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46098a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46098a)
  store %struct.Memory* %call_46098a, %struct.Memory** %MEMORY

  ; Code: jne .L_4609ec	 RIP: 46098d	 Bytes: 6
  %loadMem_46098d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46098d = call %struct.Memory* @routine_jne_.L_4609ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46098d, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_46098d, %struct.Memory** %MEMORY

  %loadBr_46098d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46098d = icmp eq i8 %loadBr_46098d, 1
  br i1 %cmpBr_46098d, label %block_.L_4609ec, label %block_460993

block_460993:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 460993	 Bytes: 5
  %loadMem_460993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460993 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460993)
  store %struct.Memory* %call_460993, %struct.Memory** %MEMORY

  ; Code: je .L_4609aa	 RIP: 460998	 Bytes: 6
  %loadMem_460998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460998 = call %struct.Memory* @routine_je_.L_4609aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460998, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_460998, %struct.Memory** %MEMORY

  %loadBr_460998 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460998 = icmp eq i8 %loadBr_460998, 1
  br i1 %cmpBr_460998, label %block_.L_4609aa, label %block_46099e

block_46099e:
  ; Code: movl -0x2d4(%rbp), %eax	 RIP: 46099e	 Bytes: 6
  %loadMem_46099e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46099e = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46099e)
  store %struct.Memory* %call_46099e, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 4609a4	 Bytes: 4
  %loadMem_4609a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609a4 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609a4)
  store %struct.Memory* %call_4609a4, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 4609a8	 Bytes: 2
  %loadMem_4609a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609a8 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609a8)
  store %struct.Memory* %call_4609a8, %struct.Memory** %MEMORY

  ; Code: .L_4609aa:	 RIP: 4609aa	 Bytes: 0
  br label %block_.L_4609aa
block_.L_4609aa:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 4609aa	 Bytes: 9
  %loadMem_4609aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609aa = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609aa)
  store %struct.Memory* %call_4609aa, %struct.Memory** %MEMORY

  ; Code: je .L_4609e0	 RIP: 4609b3	 Bytes: 6
  %loadMem_4609b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609b3 = call %struct.Memory* @routine_je_.L_4609e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609b3, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_4609b3, %struct.Memory** %MEMORY

  %loadBr_4609b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4609b3 = icmp eq i8 %loadBr_4609b3, 1
  br i1 %cmpBr_4609b3, label %block_.L_4609e0, label %block_4609b9

block_4609b9:
  ; Code: movl $0x5, %ecx	 RIP: 4609b9	 Bytes: 5
  %loadMem_4609b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609b9 = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609b9)
  store %struct.Memory* %call_4609b9, %struct.Memory** %MEMORY

  ; Code: movq $0x57fdf0, %r8	 RIP: 4609be	 Bytes: 10
  %loadMem_4609be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609be = call %struct.Memory* @routine_movq__0x57fdf0___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609be)
  store %struct.Memory* %call_4609be, %struct.Memory** %MEMORY

  ; Code: movq -0x498(%rbp), %rdi	 RIP: 4609c8	 Bytes: 7
  %loadMem_4609c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609c8 = call %struct.Memory* @routine_movq_MINUS0x498__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609c8)
  store %struct.Memory* %call_4609c8, %struct.Memory** %MEMORY

  ; Code: movl -0x49c(%rbp), %esi	 RIP: 4609cf	 Bytes: 6
  %loadMem_4609cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609cf = call %struct.Memory* @routine_movl_MINUS0x49c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609cf)
  store %struct.Memory* %call_4609cf, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %edx	 RIP: 4609d5	 Bytes: 6
  %loadMem_4609d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609d5 = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609d5)
  store %struct.Memory* %call_4609d5, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 4609db	 Bytes: 5
  %loadMem1_4609db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4609db = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4609db, i64 -297499, i64 5, i64 5)
  store %struct.Memory* %call1_4609db, %struct.Memory** %MEMORY

  %loadMem2_4609db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4609db = load i64, i64* %3
  %call2_4609db = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_4609db, %struct.Memory* %loadMem2_4609db)
  store %struct.Memory* %call2_4609db, %struct.Memory** %MEMORY

  ; Code: .L_4609e0:	 RIP: 4609e0	 Bytes: 0
  br label %block_.L_4609e0
block_.L_4609e0:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 4609e0	 Bytes: 7
  %loadMem_4609e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609e0 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609e0)
  store %struct.Memory* %call_4609e0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_461376	 RIP: 4609e7	 Bytes: 5
  %loadMem_4609e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609e7 = call %struct.Memory* @routine_jmpq_.L_461376(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609e7, i64 2447, i64 5)
  store %struct.Memory* %call_4609e7, %struct.Memory** %MEMORY

  br label %block_.L_461376

  ; Code: .L_4609ec:	 RIP: 4609ec	 Bytes: 0
block_.L_4609ec:

  ; Code: movl $0x5, %eax	 RIP: 4609ec	 Bytes: 5
  %loadMem_4609ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609ec = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609ec)
  store %struct.Memory* %call_4609ec, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4609f1	 Bytes: 2
  %loadMem_4609f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609f1 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609f1)
  store %struct.Memory* %call_4609f1, %struct.Memory** %MEMORY

  ; Code: subl -0x4c4(%rbp), %ecx	 RIP: 4609f3	 Bytes: 6
  %loadMem_4609f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609f3 = call %struct.Memory* @routine_subl_MINUS0x4c4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609f3)
  store %struct.Memory* %call_4609f3, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 4609f9	 Bytes: 2
  %loadMem_4609f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609f9 = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609f9)
  store %struct.Memory* %call_4609f9, %struct.Memory** %MEMORY

  ; Code: cmpl -0x490(%rbp), %eax	 RIP: 4609fb	 Bytes: 6
  %loadMem_4609fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4609fb = call %struct.Memory* @routine_cmpl_MINUS0x490__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4609fb)
  store %struct.Memory* %call_4609fb, %struct.Memory** %MEMORY

  ; Code: jle .L_460a28	 RIP: 460a01	 Bytes: 6
  %loadMem_460a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a01 = call %struct.Memory* @routine_jle_.L_460a28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a01, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_460a01, %struct.Memory** %MEMORY

  %loadBr_460a01 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460a01 = icmp eq i8 %loadBr_460a01, 1
  br i1 %cmpBr_460a01, label %block_.L_460a28, label %block_460a07

block_460a07:
  ; Code: movl $0x5, %eax	 RIP: 460a07	 Bytes: 5
  %loadMem_460a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a07 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a07)
  store %struct.Memory* %call_460a07, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %ecx	 RIP: 460a0c	 Bytes: 6
  %loadMem_460a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a0c = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a0c)
  store %struct.Memory* %call_460a0c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x48c(%rbp)	 RIP: 460a12	 Bytes: 6
  %loadMem_460a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a12 = call %struct.Memory* @routine_movl__ecx__MINUS0x48c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a12)
  store %struct.Memory* %call_460a12, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 460a18	 Bytes: 2
  %loadMem_460a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a18 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a18)
  store %struct.Memory* %call_460a18, %struct.Memory** %MEMORY

  ; Code: subl -0x4c4(%rbp), %ecx	 RIP: 460a1a	 Bytes: 6
  %loadMem_460a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a1a = call %struct.Memory* @routine_subl_MINUS0x4c4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a1a)
  store %struct.Memory* %call_460a1a, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 460a20	 Bytes: 2
  %loadMem_460a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a20 = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a20)
  store %struct.Memory* %call_460a20, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x490(%rbp)	 RIP: 460a22	 Bytes: 6
  %loadMem_460a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a22 = call %struct.Memory* @routine_movl__eax__MINUS0x490__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a22)
  store %struct.Memory* %call_460a22, %struct.Memory** %MEMORY

  ; Code: .L_460a28:	 RIP: 460a28	 Bytes: 0
  br label %block_.L_460a28
block_.L_460a28:

  ; Code: jmpq .L_460a2d	 RIP: 460a28	 Bytes: 5
  %loadMem_460a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a28 = call %struct.Memory* @routine_jmpq_.L_460a2d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a28, i64 5, i64 5)
  store %struct.Memory* %call_460a28, %struct.Memory** %MEMORY

  br label %block_.L_460a2d

  ; Code: .L_460a2d:	 RIP: 460a2d	 Bytes: 0
block_.L_460a2d:

  ; Code: jmpq .L_460a32	 RIP: 460a2d	 Bytes: 5
  %loadMem_460a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a2d = call %struct.Memory* @routine_jmpq_.L_460a32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a2d, i64 5, i64 5)
  store %struct.Memory* %call_460a2d, %struct.Memory** %MEMORY

  br label %block_.L_460a32

  ; Code: .L_460a32:	 RIP: 460a32	 Bytes: 0
block_.L_460a32:

  ; Code: jmpq .L_460a37	 RIP: 460a32	 Bytes: 5
  %loadMem_460a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a32 = call %struct.Memory* @routine_jmpq_.L_460a37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a32, i64 5, i64 5)
  store %struct.Memory* %call_460a32, %struct.Memory** %MEMORY

  br label %block_.L_460a37

  ; Code: .L_460a37:	 RIP: 460a37	 Bytes: 0
block_.L_460a37:

  ; Code: movl 0xb54ce4, %eax	 RIP: 460a37	 Bytes: 7
  %loadMem_460a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a37 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a37)
  store %struct.Memory* %call_460a37, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8af28, %eax	 RIP: 460a3e	 Bytes: 7
  %loadMem_460a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a3e = call %struct.Memory* @routine_cmpl_0xb8af28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a3e)
  store %struct.Memory* %call_460a3e, %struct.Memory** %MEMORY

  ; Code: jg .L_460f6c	 RIP: 460a45	 Bytes: 6
  %loadMem_460a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a45 = call %struct.Memory* @routine_jg_.L_460f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a45, i8* %BRANCH_TAKEN, i64 1319, i64 6, i64 6)
  store %struct.Memory* %call_460a45, %struct.Memory** %MEMORY

  %loadBr_460a45 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460a45 = icmp eq i8 %loadBr_460a45, 1
  br i1 %cmpBr_460a45, label %block_.L_460f6c, label %block_460a4b

block_460a4b:
  ; Code: movl $0x2, %edx	 RIP: 460a4b	 Bytes: 5
  %loadMem_460a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a4b = call %struct.Memory* @routine_movl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a4b)
  store %struct.Memory* %call_460a4b, %struct.Memory** %MEMORY

  ; Code: leaq -0x2d0(%rbp), %rsi	 RIP: 460a50	 Bytes: 7
  %loadMem_460a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a50 = call %struct.Memory* @routine_leaq_MINUS0x2d0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a50)
  store %struct.Memory* %call_460a50, %struct.Memory** %MEMORY

  ; Code: movl -0x2f8(%rbp), %eax	 RIP: 460a57	 Bytes: 6
  %loadMem_460a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a57 = call %struct.Memory* @routine_movl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a57)
  store %struct.Memory* %call_460a57, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c8(%rbp)	 RIP: 460a5d	 Bytes: 6
  %loadMem_460a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a5d = call %struct.Memory* @routine_movl__eax__MINUS0x4c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a5d)
  store %struct.Memory* %call_460a5d, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 460a63	 Bytes: 3
  %loadMem_460a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a63 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a63)
  store %struct.Memory* %call_460a63, %struct.Memory** %MEMORY

  ; Code: callq .chainlinks2	 RIP: 460a66	 Bytes: 5
  %loadMem1_460a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460a66 = call %struct.Memory* @routine_callq_.chainlinks2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460a66, i64 -314950, i64 5, i64 5)
  store %struct.Memory* %call1_460a66, %struct.Memory** %MEMORY

  %loadMem2_460a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460a66 = load i64, i64* %3
  %call2_460a66 = call %struct.Memory* @sub_413c20.chainlinks2(%struct.State* %0, i64  %loadPC_460a66, %struct.Memory* %loadMem2_460a66)
  store %struct.Memory* %call2_460a66, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 460a6b	 Bytes: 3
  %loadMem_460a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a6b = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a6b)
  store %struct.Memory* %call_460a6b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2e8(%rbp)	 RIP: 460a6e	 Bytes: 10
  %loadMem_460a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a6e = call %struct.Memory* @routine_movl__0x0__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a6e)
  store %struct.Memory* %call_460a6e, %struct.Memory** %MEMORY

  ; Code: .L_460a78:	 RIP: 460a78	 Bytes: 0
  br label %block_.L_460a78
block_.L_460a78:

  ; Code: movl -0x2e8(%rbp), %eax	 RIP: 460a78	 Bytes: 6
  %loadMem_460a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a78 = call %struct.Memory* @routine_movl_MINUS0x2e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a78)
  store %struct.Memory* %call_460a78, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4c(%rbp), %eax	 RIP: 460a7e	 Bytes: 3
  %loadMem_460a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a7e = call %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a7e)
  store %struct.Memory* %call_460a7e, %struct.Memory** %MEMORY

  ; Code: jge .L_460c4d	 RIP: 460a81	 Bytes: 6
  %loadMem_460a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a81 = call %struct.Memory* @routine_jge_.L_460c4d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a81, i8* %BRANCH_TAKEN, i64 460, i64 6, i64 6)
  store %struct.Memory* %call_460a81, %struct.Memory** %MEMORY

  %loadBr_460a81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460a81 = icmp eq i8 %loadBr_460a81, 1
  br i1 %cmpBr_460a81, label %block_.L_460c4d, label %block_460a87

block_460a87:
  ; Code: movl $0x2, %esi	 RIP: 460a87	 Bytes: 5
  %loadMem_460a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a87 = call %struct.Memory* @routine_movl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a87)
  store %struct.Memory* %call_460a87, %struct.Memory** %MEMORY

  ; Code: leaq -0x4d0(%rbp), %rdx	 RIP: 460a8c	 Bytes: 7
  %loadMem_460a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a8c = call %struct.Memory* @routine_leaq_MINUS0x4d0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a8c)
  store %struct.Memory* %call_460a8c, %struct.Memory** %MEMORY

  ; Code: movslq -0x2e8(%rbp), %rax	 RIP: 460a93	 Bytes: 7
  %loadMem_460a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a93 = call %struct.Memory* @routine_movslq_MINUS0x2e8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a93)
  store %struct.Memory* %call_460a93, %struct.Memory** %MEMORY

  ; Code: movl -0x2d0(%rbp,%rax,4), %edi	 RIP: 460a9a	 Bytes: 7
  %loadMem_460a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460a9a = call %struct.Memory* @routine_movl_MINUS0x2d0__rbp__rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460a9a)
  store %struct.Memory* %call_460a9a, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 460aa1	 Bytes: 5
  %loadMem1_460aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460aa1 = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460aa1, i64 -332385, i64 5, i64 5)
  store %struct.Memory* %call1_460aa1, %struct.Memory** %MEMORY

  %loadMem2_460aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460aa1 = load i64, i64* %3
  %call2_460aa1 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_460aa1, %struct.Memory* %loadMem2_460aa1)
  store %struct.Memory* %call2_460aa1, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %edx	 RIP: 460aa6	 Bytes: 5
  %loadMem_460aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460aa6 = call %struct.Memory* @routine_movl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460aa6)
  store %struct.Memory* %call_460aa6, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 460aab	 Bytes: 2
  %loadMem_460aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460aab = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460aab)
  store %struct.Memory* %call_460aab, %struct.Memory** %MEMORY

  ; Code: movl %esi, %ecx	 RIP: 460aad	 Bytes: 2
  %loadMem_460aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460aad = call %struct.Memory* @routine_movl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460aad)
  store %struct.Memory* %call_460aad, %struct.Memory** %MEMORY

  ; Code: movl -0x4d0(%rbp), %edi	 RIP: 460aaf	 Bytes: 6
  %loadMem_460aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460aaf = call %struct.Memory* @routine_movl_MINUS0x4d0__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460aaf)
  store %struct.Memory* %call_460aaf, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 460ab5	 Bytes: 3
  %loadMem_460ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ab5 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ab5)
  store %struct.Memory* %call_460ab5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5a8(%rbp)	 RIP: 460ab8	 Bytes: 6
  %loadMem_460ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ab8 = call %struct.Memory* @routine_movl__eax__MINUS0x5a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ab8)
  store %struct.Memory* %call_460ab8, %struct.Memory** %MEMORY

  ; Code: callq .approxlib	 RIP: 460abe	 Bytes: 5
  %loadMem1_460abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460abe = call %struct.Memory* @routine_callq_.approxlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460abe, i64 -324878, i64 5, i64 5)
  store %struct.Memory* %call1_460abe, %struct.Memory** %MEMORY

  %loadMem2_460abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460abe = load i64, i64* %3
  %call2_460abe = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64  %loadPC_460abe, %struct.Memory* %loadMem2_460abe)
  store %struct.Memory* %call2_460abe, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 460ac3	 Bytes: 3
  %loadMem_460ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ac3 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ac3)
  store %struct.Memory* %call_460ac3, %struct.Memory** %MEMORY

  ; Code: jle .L_460af1	 RIP: 460ac6	 Bytes: 6
  %loadMem_460ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ac6 = call %struct.Memory* @routine_jle_.L_460af1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ac6, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_460ac6, %struct.Memory** %MEMORY

  %loadBr_460ac6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460ac6 = icmp eq i8 %loadBr_460ac6, 1
  br i1 %cmpBr_460ac6, label %block_.L_460af1, label %block_460acc

block_460acc:
  ; Code: movl $0x4, %edx	 RIP: 460acc	 Bytes: 5
  %loadMem_460acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460acc = call %struct.Memory* @routine_movl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460acc)
  store %struct.Memory* %call_460acc, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 460ad1	 Bytes: 2
  %loadMem_460ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ad1 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ad1)
  store %struct.Memory* %call_460ad1, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 460ad3	 Bytes: 2
  %loadMem_460ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ad3 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ad3)
  store %struct.Memory* %call_460ad3, %struct.Memory** %MEMORY

  ; Code: movl -0x4cc(%rbp), %edi	 RIP: 460ad5	 Bytes: 6
  %loadMem_460ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ad5 = call %struct.Memory* @routine_movl_MINUS0x4cc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ad5)
  store %struct.Memory* %call_460ad5, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 460adb	 Bytes: 3
  %loadMem_460adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460adb = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460adb)
  store %struct.Memory* %call_460adb, %struct.Memory** %MEMORY

  ; Code: callq .approxlib	 RIP: 460ade	 Bytes: 5
  %loadMem1_460ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460ade = call %struct.Memory* @routine_callq_.approxlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460ade, i64 -324910, i64 5, i64 5)
  store %struct.Memory* %call1_460ade, %struct.Memory** %MEMORY

  %loadMem2_460ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460ade = load i64, i64* %3
  %call2_460ade = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64  %loadPC_460ade, %struct.Memory* %loadMem2_460ade)
  store %struct.Memory* %call2_460ade, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 460ae3	 Bytes: 3
  %loadMem_460ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ae3 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ae3)
  store %struct.Memory* %call_460ae3, %struct.Memory** %MEMORY

  ; Code: jle .L_460af1	 RIP: 460ae6	 Bytes: 6
  %loadMem_460ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ae6 = call %struct.Memory* @routine_jle_.L_460af1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ae6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_460ae6, %struct.Memory** %MEMORY

  %loadBr_460ae6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460ae6 = icmp eq i8 %loadBr_460ae6, 1
  br i1 %cmpBr_460ae6, label %block_.L_460af1, label %block_460aec

block_460aec:
  ; Code: jmpq .L_460c39	 RIP: 460aec	 Bytes: 5
  %loadMem_460aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460aec = call %struct.Memory* @routine_jmpq_.L_460c39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460aec, i64 333, i64 5)
  store %struct.Memory* %call_460aec, %struct.Memory** %MEMORY

  br label %block_.L_460c39

  ; Code: .L_460af1:	 RIP: 460af1	 Bytes: 0
block_.L_460af1:

  ; Code: leaq -0x488(%rbp), %rsi	 RIP: 460af1	 Bytes: 7
  %loadMem_460af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460af1 = call %struct.Memory* @routine_leaq_MINUS0x488__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460af1)
  store %struct.Memory* %call_460af1, %struct.Memory** %MEMORY

  ; Code: movslq -0x2e8(%rbp), %rax	 RIP: 460af8	 Bytes: 7
  %loadMem_460af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460af8 = call %struct.Memory* @routine_movslq_MINUS0x2e8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460af8)
  store %struct.Memory* %call_460af8, %struct.Memory** %MEMORY

  ; Code: movl -0x2d0(%rbp,%rax,4), %edi	 RIP: 460aff	 Bytes: 7
  %loadMem_460aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460aff = call %struct.Memory* @routine_movl_MINUS0x2d0__rbp__rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460aff)
  store %struct.Memory* %call_460aff, %struct.Memory** %MEMORY

  ; Code: callq .break_chain_moves	 RIP: 460b06	 Bytes: 5
  %loadMem1_460b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460b06 = call %struct.Memory* @routine_callq_.break_chain_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460b06, i64 4746, i64 5, i64 5)
  store %struct.Memory* %call1_460b06, %struct.Memory** %MEMORY

  %loadMem2_460b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460b06 = load i64, i64* %3
  %call2_460b06 = call %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* %0, i64  %loadPC_460b06, %struct.Memory* %loadMem2_460b06)
  store %struct.Memory* %call2_460b06, %struct.Memory** %MEMORY

  ; Code: leaq -0x488(%rbp), %rsi	 RIP: 460b0b	 Bytes: 7
  %loadMem_460b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b0b = call %struct.Memory* @routine_leaq_MINUS0x488__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b0b)
  store %struct.Memory* %call_460b0b, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edx	 RIP: 460b12	 Bytes: 5
  %loadMem_460b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b12 = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b12)
  store %struct.Memory* %call_460b12, %struct.Memory** %MEMORY

  ; Code: movslq -0x2e8(%rbp), %rax	 RIP: 460b17	 Bytes: 7
  %loadMem_460b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b17 = call %struct.Memory* @routine_movslq_MINUS0x2e8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b17)
  store %struct.Memory* %call_460b17, %struct.Memory** %MEMORY

  ; Code: movl -0x2d0(%rbp,%rax,4), %edi	 RIP: 460b1e	 Bytes: 7
  %loadMem_460b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b1e = call %struct.Memory* @routine_movl_MINUS0x2d0__rbp__rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b1e)
  store %struct.Memory* %call_460b1e, %struct.Memory** %MEMORY

  ; Code: callq .break_chain2_moves	 RIP: 460b25	 Bytes: 5
  %loadMem1_460b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460b25 = call %struct.Memory* @routine_callq_.break_chain2_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460b25, i64 24459, i64 5, i64 5)
  store %struct.Memory* %call1_460b25, %struct.Memory** %MEMORY

  %loadMem2_460b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460b25 = load i64, i64* %3
  %call2_460b25 = call %struct.Memory* @sub_466ab0.break_chain2_moves(%struct.State* %0, i64  %loadPC_460b25, %struct.Memory* %loadMem2_460b25)
  store %struct.Memory* %call2_460b25, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2f0(%rbp)	 RIP: 460b2a	 Bytes: 10
  %loadMem_460b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b2a = call %struct.Memory* @routine_movl__0x0__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b2a)
  store %struct.Memory* %call_460b2a, %struct.Memory** %MEMORY

  ; Code: .L_460b34:	 RIP: 460b34	 Bytes: 0
  br label %block_.L_460b34
block_.L_460b34:

  ; Code: cmpl $0x2, -0x2f0(%rbp)	 RIP: 460b34	 Bytes: 7
  %loadMem_460b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b34 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b34)
  store %struct.Memory* %call_460b34, %struct.Memory** %MEMORY

  ; Code: jge .L_460c34	 RIP: 460b3b	 Bytes: 6
  %loadMem_460b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b3b = call %struct.Memory* @routine_jge_.L_460c34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b3b, i8* %BRANCH_TAKEN, i64 249, i64 6, i64 6)
  store %struct.Memory* %call_460b3b, %struct.Memory** %MEMORY

  %loadBr_460b3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460b3b = icmp eq i8 %loadBr_460b3b, 1
  br i1 %cmpBr_460b3b, label %block_.L_460c34, label %block_460b41

block_460b41:
  ; Code: jmpq .L_460b46	 RIP: 460b41	 Bytes: 5
  %loadMem_460b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b41 = call %struct.Memory* @routine_jmpq_.L_460b46(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b41, i64 5, i64 5)
  store %struct.Memory* %call_460b41, %struct.Memory** %MEMORY

  br label %block_.L_460b46

  ; Code: .L_460b46:	 RIP: 460b46	 Bytes: 0
block_.L_460b46:

  ; Code: movl $0x0, -0x4d4(%rbp)	 RIP: 460b46	 Bytes: 10
  %loadMem_460b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b46 = call %struct.Memory* @routine_movl__0x0__MINUS0x4d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b46)
  store %struct.Memory* %call_460b46, %struct.Memory** %MEMORY

  ; Code: .L_460b50:	 RIP: 460b50	 Bytes: 0
  br label %block_.L_460b50
block_.L_460b50:

  ; Code: movl -0x4d4(%rbp), %eax	 RIP: 460b50	 Bytes: 6
  %loadMem_460b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b50 = call %struct.Memory* @routine_movl_MINUS0x4d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b50)
  store %struct.Memory* %call_460b50, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 460b56	 Bytes: 6
  %loadMem_460b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b56 = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b56)
  store %struct.Memory* %call_460b56, %struct.Memory** %MEMORY

  ; Code: jge .L_460bba	 RIP: 460b5c	 Bytes: 6
  %loadMem_460b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b5c = call %struct.Memory* @routine_jge_.L_460bba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b5c, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_460b5c, %struct.Memory** %MEMORY

  %loadBr_460b5c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460b5c = icmp eq i8 %loadBr_460b5c, 1
  br i1 %cmpBr_460b5c, label %block_.L_460bba, label %block_460b62

block_460b62:
  ; Code: movslq -0x4d4(%rbp), %rax	 RIP: 460b62	 Bytes: 7
  %loadMem_460b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b62 = call %struct.Memory* @routine_movslq_MINUS0x4d4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b62)
  store %struct.Memory* %call_460b62, %struct.Memory** %MEMORY

  ; Code: movl -0x488(%rbp,%rax,4), %ecx	 RIP: 460b69	 Bytes: 7
  %loadMem_460b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b69 = call %struct.Memory* @routine_movl_MINUS0x488__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b69)
  store %struct.Memory* %call_460b69, %struct.Memory** %MEMORY

  ; Code: movslq -0x2f0(%rbp), %rax	 RIP: 460b70	 Bytes: 7
  %loadMem_460b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b70 = call %struct.Memory* @routine_movslq_MINUS0x2f0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b70)
  store %struct.Memory* %call_460b70, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4d0(%rbp,%rax,4), %ecx	 RIP: 460b77	 Bytes: 7
  %loadMem_460b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b77 = call %struct.Memory* @routine_cmpl_MINUS0x4d0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b77)
  store %struct.Memory* %call_460b77, %struct.Memory** %MEMORY

  ; Code: jne .L_460ba1	 RIP: 460b7e	 Bytes: 6
  %loadMem_460b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b7e = call %struct.Memory* @routine_jne_.L_460ba1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b7e, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_460b7e, %struct.Memory** %MEMORY

  %loadBr_460b7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460b7e = icmp eq i8 %loadBr_460b7e, 1
  br i1 %cmpBr_460b7e, label %block_.L_460ba1, label %block_460b84

block_460b84:
  ; Code: movslq -0x4d4(%rbp), %rax	 RIP: 460b84	 Bytes: 7
  %loadMem_460b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b84 = call %struct.Memory* @routine_movslq_MINUS0x4d4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b84)
  store %struct.Memory* %call_460b84, %struct.Memory** %MEMORY

  ; Code: movl -0x3c0(%rbp,%rax,4), %ecx	 RIP: 460b8b	 Bytes: 7
  %loadMem_460b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b8b = call %struct.Memory* @routine_movl_MINUS0x3c0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b8b)
  store %struct.Memory* %call_460b8b, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %ecx	 RIP: 460b92	 Bytes: 3
  %loadMem_460b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b92 = call %struct.Memory* @routine_addl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b92)
  store %struct.Memory* %call_460b92, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3c0(%rbp,%rax,4)	 RIP: 460b95	 Bytes: 7
  %loadMem_460b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b95 = call %struct.Memory* @routine_movl__ecx__MINUS0x3c0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b95)
  store %struct.Memory* %call_460b95, %struct.Memory** %MEMORY

  ; Code: jmpq .L_460bba	 RIP: 460b9c	 Bytes: 5
  %loadMem_460b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460b9c = call %struct.Memory* @routine_jmpq_.L_460bba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460b9c, i64 30, i64 5)
  store %struct.Memory* %call_460b9c, %struct.Memory** %MEMORY

  br label %block_.L_460bba

  ; Code: .L_460ba1:	 RIP: 460ba1	 Bytes: 0
block_.L_460ba1:

  ; Code: jmpq .L_460ba6	 RIP: 460ba1	 Bytes: 5
  %loadMem_460ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ba1 = call %struct.Memory* @routine_jmpq_.L_460ba6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ba1, i64 5, i64 5)
  store %struct.Memory* %call_460ba1, %struct.Memory** %MEMORY

  br label %block_.L_460ba6

  ; Code: .L_460ba6:	 RIP: 460ba6	 Bytes: 0
block_.L_460ba6:

  ; Code: movl -0x4d4(%rbp), %eax	 RIP: 460ba6	 Bytes: 6
  %loadMem_460ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ba6 = call %struct.Memory* @routine_movl_MINUS0x4d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ba6)
  store %struct.Memory* %call_460ba6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 460bac	 Bytes: 3
  %loadMem_460bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460bac = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460bac)
  store %struct.Memory* %call_460bac, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4d4(%rbp)	 RIP: 460baf	 Bytes: 6
  %loadMem_460baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460baf = call %struct.Memory* @routine_movl__eax__MINUS0x4d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460baf)
  store %struct.Memory* %call_460baf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_460b50	 RIP: 460bb5	 Bytes: 5
  %loadMem_460bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460bb5 = call %struct.Memory* @routine_jmpq_.L_460b50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460bb5, i64 -101, i64 5)
  store %struct.Memory* %call_460bb5, %struct.Memory** %MEMORY

  br label %block_.L_460b50

  ; Code: .L_460bba:	 RIP: 460bba	 Bytes: 0
block_.L_460bba:

  ; Code: movl -0x4d4(%rbp), %eax	 RIP: 460bba	 Bytes: 6
  %loadMem_460bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460bba = call %struct.Memory* @routine_movl_MINUS0x4d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460bba)
  store %struct.Memory* %call_460bba, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 460bc0	 Bytes: 6
  %loadMem_460bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460bc0 = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460bc0)
  store %struct.Memory* %call_460bc0, %struct.Memory** %MEMORY

  ; Code: jne .L_460c16	 RIP: 460bc6	 Bytes: 6
  %loadMem_460bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460bc6 = call %struct.Memory* @routine_jne_.L_460c16(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460bc6, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_460bc6, %struct.Memory** %MEMORY

  %loadBr_460bc6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460bc6 = icmp eq i8 %loadBr_460bc6, 1
  br i1 %cmpBr_460bc6, label %block_.L_460c16, label %block_460bcc

block_460bcc:
  ; Code: cmpl $0x32, -0x2f8(%rbp)	 RIP: 460bcc	 Bytes: 7
  %loadMem_460bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460bcc = call %struct.Memory* @routine_cmpl__0x32__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460bcc)
  store %struct.Memory* %call_460bcc, %struct.Memory** %MEMORY

  ; Code: jge .L_460c16	 RIP: 460bd3	 Bytes: 6
  %loadMem_460bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460bd3 = call %struct.Memory* @routine_jge_.L_460c16(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460bd3, i8* %BRANCH_TAKEN, i64 67, i64 6, i64 6)
  store %struct.Memory* %call_460bd3, %struct.Memory** %MEMORY

  %loadBr_460bd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460bd3 = icmp eq i8 %loadBr_460bd3, 1
  br i1 %cmpBr_460bd3, label %block_.L_460c16, label %block_460bd9

block_460bd9:
  ; Code: movslq -0x2f0(%rbp), %rax	 RIP: 460bd9	 Bytes: 7
  %loadMem_460bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460bd9 = call %struct.Memory* @routine_movslq_MINUS0x2f0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460bd9)
  store %struct.Memory* %call_460bd9, %struct.Memory** %MEMORY

  ; Code: movl -0x4d0(%rbp,%rax,4), %ecx	 RIP: 460be0	 Bytes: 7
  %loadMem_460be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460be0 = call %struct.Memory* @routine_movl_MINUS0x4d0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460be0)
  store %struct.Memory* %call_460be0, %struct.Memory** %MEMORY

  ; Code: movslq -0x2f8(%rbp), %rax	 RIP: 460be7	 Bytes: 7
  %loadMem_460be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460be7 = call %struct.Memory* @routine_movslq_MINUS0x2f8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460be7)
  store %struct.Memory* %call_460be7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x488(%rbp,%rax,4)	 RIP: 460bee	 Bytes: 7
  %loadMem_460bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460bee = call %struct.Memory* @routine_movl__ecx__MINUS0x488__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460bee)
  store %struct.Memory* %call_460bee, %struct.Memory** %MEMORY

  ; Code: movslq -0x2f8(%rbp), %rax	 RIP: 460bf5	 Bytes: 7
  %loadMem_460bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460bf5 = call %struct.Memory* @routine_movslq_MINUS0x2f8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460bf5)
  store %struct.Memory* %call_460bf5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3c0(%rbp,%rax,4)	 RIP: 460bfc	 Bytes: 11
  %loadMem_460bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460bfc = call %struct.Memory* @routine_movl__0x0__MINUS0x3c0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460bfc)
  store %struct.Memory* %call_460bfc, %struct.Memory** %MEMORY

  ; Code: movl -0x2f8(%rbp), %ecx	 RIP: 460c07	 Bytes: 6
  %loadMem_460c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c07 = call %struct.Memory* @routine_movl_MINUS0x2f8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c07)
  store %struct.Memory* %call_460c07, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 460c0d	 Bytes: 3
  %loadMem_460c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c0d = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c0d)
  store %struct.Memory* %call_460c0d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2f8(%rbp)	 RIP: 460c10	 Bytes: 6
  %loadMem_460c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c10 = call %struct.Memory* @routine_movl__ecx__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c10)
  store %struct.Memory* %call_460c10, %struct.Memory** %MEMORY

  ; Code: .L_460c16:	 RIP: 460c16	 Bytes: 0
  br label %block_.L_460c16
block_.L_460c16:

  ; Code: jmpq .L_460c1b	 RIP: 460c16	 Bytes: 5
  %loadMem_460c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c16 = call %struct.Memory* @routine_jmpq_.L_460c1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c16, i64 5, i64 5)
  store %struct.Memory* %call_460c16, %struct.Memory** %MEMORY

  br label %block_.L_460c1b

  ; Code: .L_460c1b:	 RIP: 460c1b	 Bytes: 0
block_.L_460c1b:

  ; Code: jmpq .L_460c20	 RIP: 460c1b	 Bytes: 5
  %loadMem_460c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c1b = call %struct.Memory* @routine_jmpq_.L_460c20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c1b, i64 5, i64 5)
  store %struct.Memory* %call_460c1b, %struct.Memory** %MEMORY

  br label %block_.L_460c20

  ; Code: .L_460c20:	 RIP: 460c20	 Bytes: 0
block_.L_460c20:

  ; Code: movl -0x2f0(%rbp), %eax	 RIP: 460c20	 Bytes: 6
  %loadMem_460c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c20 = call %struct.Memory* @routine_movl_MINUS0x2f0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c20)
  store %struct.Memory* %call_460c20, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 460c26	 Bytes: 3
  %loadMem_460c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c26 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c26)
  store %struct.Memory* %call_460c26, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f0(%rbp)	 RIP: 460c29	 Bytes: 6
  %loadMem_460c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c29 = call %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c29)
  store %struct.Memory* %call_460c29, %struct.Memory** %MEMORY

  ; Code: jmpq .L_460b34	 RIP: 460c2f	 Bytes: 5
  %loadMem_460c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c2f = call %struct.Memory* @routine_jmpq_.L_460b34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c2f, i64 -251, i64 5)
  store %struct.Memory* %call_460c2f, %struct.Memory** %MEMORY

  br label %block_.L_460b34

  ; Code: .L_460c34:	 RIP: 460c34	 Bytes: 0
block_.L_460c34:

  ; Code: jmpq .L_460c39	 RIP: 460c34	 Bytes: 5
  %loadMem_460c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c34 = call %struct.Memory* @routine_jmpq_.L_460c39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c34, i64 5, i64 5)
  store %struct.Memory* %call_460c34, %struct.Memory** %MEMORY

  br label %block_.L_460c39

  ; Code: .L_460c39:	 RIP: 460c39	 Bytes: 0
block_.L_460c39:

  ; Code: movl -0x2e8(%rbp), %eax	 RIP: 460c39	 Bytes: 6
  %loadMem_460c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c39 = call %struct.Memory* @routine_movl_MINUS0x2e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c39)
  store %struct.Memory* %call_460c39, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 460c3f	 Bytes: 3
  %loadMem_460c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c3f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c3f)
  store %struct.Memory* %call_460c3f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e8(%rbp)	 RIP: 460c42	 Bytes: 6
  %loadMem_460c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c42 = call %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c42)
  store %struct.Memory* %call_460c42, %struct.Memory** %MEMORY

  ; Code: jmpq .L_460a78	 RIP: 460c48	 Bytes: 5
  %loadMem_460c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c48 = call %struct.Memory* @routine_jmpq_.L_460a78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c48, i64 -464, i64 5)
  store %struct.Memory* %call_460c48, %struct.Memory** %MEMORY

  br label %block_.L_460a78

  ; Code: .L_460c4d:	 RIP: 460c4d	 Bytes: 0
block_.L_460c4d:

  ; Code: leaq -0x488(%rbp), %rsi	 RIP: 460c4d	 Bytes: 7
  %loadMem_460c4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c4d = call %struct.Memory* @routine_leaq_MINUS0x488__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c4d)
  store %struct.Memory* %call_460c4d, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 460c54	 Bytes: 3
  %loadMem_460c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c54 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c54)
  store %struct.Memory* %call_460c54, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 460c57	 Bytes: 3
  %loadMem_460c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c57 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c57)
  store %struct.Memory* %call_460c57, %struct.Memory** %MEMORY

  ; Code: movq -0x498(%rbp), %rcx	 RIP: 460c5a	 Bytes: 7
  %loadMem_460c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c5a = call %struct.Memory* @routine_movq_MINUS0x498__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c5a)
  store %struct.Memory* %call_460c5a, %struct.Memory** %MEMORY

  ; Code: movl -0x4c8(%rbp), %r8d	 RIP: 460c61	 Bytes: 7
  %loadMem_460c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c61 = call %struct.Memory* @routine_movl_MINUS0x4c8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c61)
  store %struct.Memory* %call_460c61, %struct.Memory** %MEMORY

  ; Code: callq .order_moves	 RIP: 460c68	 Bytes: 5
  %loadMem1_460c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460c68 = call %struct.Memory* @routine_callq_.order_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460c68, i64 8232, i64 5, i64 5)
  store %struct.Memory* %call1_460c68, %struct.Memory** %MEMORY

  %loadMem2_460c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460c68 = load i64, i64* %3
  %call2_460c68 = call %struct.Memory* @sub_462c90.order_moves(%struct.State* %0, i64  %loadPC_460c68, %struct.Memory* %loadMem2_460c68)
  store %struct.Memory* %call2_460c68, %struct.Memory** %MEMORY

  ; Code: movl -0x4c8(%rbp), %edx	 RIP: 460c6d	 Bytes: 6
  %loadMem_460c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c6d = call %struct.Memory* @routine_movl_MINUS0x4c8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c6d)
  store %struct.Memory* %call_460c6d, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2f0(%rbp)	 RIP: 460c73	 Bytes: 6
  %loadMem_460c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c73 = call %struct.Memory* @routine_movl__edx__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c73)
  store %struct.Memory* %call_460c73, %struct.Memory** %MEMORY

  ; Code: .L_460c79:	 RIP: 460c79	 Bytes: 0
  br label %block_.L_460c79
block_.L_460c79:

  ; Code: movl -0x2f0(%rbp), %eax	 RIP: 460c79	 Bytes: 6
  %loadMem_460c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c79 = call %struct.Memory* @routine_movl_MINUS0x2f0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c79)
  store %struct.Memory* %call_460c79, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 460c7f	 Bytes: 6
  %loadMem_460c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c7f = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c7f)
  store %struct.Memory* %call_460c7f, %struct.Memory** %MEMORY

  ; Code: jge .L_460f67	 RIP: 460c85	 Bytes: 6
  %loadMem_460c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c85 = call %struct.Memory* @routine_jge_.L_460f67(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c85, i8* %BRANCH_TAKEN, i64 738, i64 6, i64 6)
  store %struct.Memory* %call_460c85, %struct.Memory** %MEMORY

  %loadBr_460c85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460c85 = icmp eq i8 %loadBr_460c85, 1
  br i1 %cmpBr_460c85, label %block_.L_460f67, label %block_460c8b

block_460c8b:
  ; Code: movl 0xb54ce4, %eax	 RIP: 460c8b	 Bytes: 7
  %loadMem_460c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c8b = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c8b)
  store %struct.Memory* %call_460c8b, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb6308c, %eax	 RIP: 460c92	 Bytes: 7
  %loadMem_460c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c92 = call %struct.Memory* @routine_cmpl_0xb6308c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c92)
  store %struct.Memory* %call_460c92, %struct.Memory** %MEMORY

  ; Code: jl .L_460cb1	 RIP: 460c99	 Bytes: 6
  %loadMem_460c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c99 = call %struct.Memory* @routine_jl_.L_460cb1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c99, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_460c99, %struct.Memory** %MEMORY

  %loadBr_460c99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460c99 = icmp eq i8 %loadBr_460c99, 1
  br i1 %cmpBr_460c99, label %block_.L_460cb1, label %block_460c9f

block_460c9f:
  ; Code: cmpl $0x0, -0x2f0(%rbp)	 RIP: 460c9f	 Bytes: 7
  %loadMem_460c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460c9f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460c9f)
  store %struct.Memory* %call_460c9f, %struct.Memory** %MEMORY

  ; Code: jle .L_460cb1	 RIP: 460ca6	 Bytes: 6
  %loadMem_460ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ca6 = call %struct.Memory* @routine_jle_.L_460cb1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ca6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_460ca6, %struct.Memory** %MEMORY

  %loadBr_460ca6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460ca6 = icmp eq i8 %loadBr_460ca6, 1
  br i1 %cmpBr_460ca6, label %block_.L_460cb1, label %block_460cac

block_460cac:
  ; Code: jmpq .L_460f67	 RIP: 460cac	 Bytes: 5
  %loadMem_460cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460cac = call %struct.Memory* @routine_jmpq_.L_460f67(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460cac, i64 699, i64 5)
  store %struct.Memory* %call_460cac, %struct.Memory** %MEMORY

  br label %block_.L_460f67

  ; Code: .L_460cb1:	 RIP: 460cb1	 Bytes: 0
block_.L_460cb1:

  ; Code: xorl %eax, %eax	 RIP: 460cb1	 Bytes: 2
  %loadMem_460cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460cb1 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460cb1)
  store %struct.Memory* %call_460cb1, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 460cb3	 Bytes: 2
  %loadMem_460cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460cb3 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460cb3)
  store %struct.Memory* %call_460cb3, %struct.Memory** %MEMORY

  ; Code: movslq -0x2f0(%rbp), %rdx	 RIP: 460cb5	 Bytes: 7
  %loadMem_460cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460cb5 = call %struct.Memory* @routine_movslq_MINUS0x2f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460cb5)
  store %struct.Memory* %call_460cb5, %struct.Memory** %MEMORY

  ; Code: movl -0x488(%rbp,%rdx,4), %eax	 RIP: 460cbc	 Bytes: 7
  %loadMem_460cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460cbc = call %struct.Memory* @routine_movl_MINUS0x488__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460cbc)
  store %struct.Memory* %call_460cbc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2d4(%rbp)	 RIP: 460cc3	 Bytes: 6
  %loadMem_460cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460cc3 = call %struct.Memory* @routine_movl__eax__MINUS0x2d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460cc3)
  store %struct.Memory* %call_460cc3, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %edi	 RIP: 460cc9	 Bytes: 6
  %loadMem_460cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460cc9 = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460cc9)
  store %struct.Memory* %call_460cc9, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 460ccf	 Bytes: 3
  %loadMem_460ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ccf = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ccf)
  store %struct.Memory* %call_460ccf, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 460cd2	 Bytes: 3
  %loadMem_460cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460cd2 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460cd2)
  store %struct.Memory* %call_460cd2, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 460cd5	 Bytes: 4
  %loadMem_460cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460cd5 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460cd5)
  store %struct.Memory* %call_460cd5, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r9d	 RIP: 460cd9	 Bytes: 4
  %loadMem_460cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460cd9 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460cd9)
  store %struct.Memory* %call_460cd9, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %r10d	 RIP: 460cdd	 Bytes: 8
  %loadMem_460cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460cdd = call %struct.Memory* @routine_movl_0xb54ce4___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460cdd)
  store %struct.Memory* %call_460cdd, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b850, %r10d	 RIP: 460ce5	 Bytes: 8
  %loadMem_460ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ce5 = call %struct.Memory* @routine_cmpl_0xb8b850___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ce5)
  store %struct.Memory* %call_460ce5, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x5ac(%rbp)	 RIP: 460ced	 Bytes: 7
  %loadMem_460ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ced = call %struct.Memory* @routine_movl__r9d__MINUS0x5ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ced)
  store %struct.Memory* %call_460ced, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x5b0(%rbp)	 RIP: 460cf4	 Bytes: 6
  %loadMem_460cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460cf4 = call %struct.Memory* @routine_movl__edi__MINUS0x5b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460cf4)
  store %struct.Memory* %call_460cf4, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x5b4(%rbp)	 RIP: 460cfa	 Bytes: 6
  %loadMem_460cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460cfa = call %struct.Memory* @routine_movl__esi__MINUS0x5b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460cfa)
  store %struct.Memory* %call_460cfa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5b8(%rbp)	 RIP: 460d00	 Bytes: 6
  %loadMem_460d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d00 = call %struct.Memory* @routine_movl__eax__MINUS0x5b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d00)
  store %struct.Memory* %call_460d00, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x5bc(%rbp)	 RIP: 460d06	 Bytes: 7
  %loadMem_460d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d06 = call %struct.Memory* @routine_movl__r8d__MINUS0x5bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d06)
  store %struct.Memory* %call_460d06, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x5bd(%rbp)	 RIP: 460d0d	 Bytes: 6
  %loadMem_460d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d0d = call %struct.Memory* @routine_movb__cl__MINUS0x5bd__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d0d)
  store %struct.Memory* %call_460d0d, %struct.Memory** %MEMORY

  ; Code: jg .L_460d29	 RIP: 460d13	 Bytes: 6
  %loadMem_460d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d13 = call %struct.Memory* @routine_jg_.L_460d29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d13, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_460d13, %struct.Memory** %MEMORY

  %loadBr_460d13 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460d13 = icmp eq i8 %loadBr_460d13, 1
  br i1 %cmpBr_460d13, label %block_.L_460d29, label %block_460d19

block_460d19:
  ; Code: cmpl $0x0, -0x490(%rbp)	 RIP: 460d19	 Bytes: 7
  %loadMem_460d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d19 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x490__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d19)
  store %struct.Memory* %call_460d19, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 460d20	 Bytes: 3
  %loadMem_460d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d20 = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d20)
  store %struct.Memory* %call_460d20, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x5bd(%rbp)	 RIP: 460d23	 Bytes: 6
  %loadMem_460d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d23 = call %struct.Memory* @routine_movb__al__MINUS0x5bd__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d23)
  store %struct.Memory* %call_460d23, %struct.Memory** %MEMORY

  ; Code: .L_460d29:	 RIP: 460d29	 Bytes: 0
  br label %block_.L_460d29
block_.L_460d29:

  ; Code: movb -0x5bd(%rbp), %al	 RIP: 460d29	 Bytes: 6
  %loadMem_460d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d29 = call %struct.Memory* @routine_movb_MINUS0x5bd__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d29)
  store %struct.Memory* %call_460d29, %struct.Memory** %MEMORY

  ; Code: movq $0x57fdfa, %rdx	 RIP: 460d2f	 Bytes: 10
  %loadMem_460d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d2f = call %struct.Memory* @routine_movq__0x57fdfa___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d2f)
  store %struct.Memory* %call_460d2f, %struct.Memory** %MEMORY

  ; Code: leaq -0x4d8(%rbp), %rcx	 RIP: 460d39	 Bytes: 7
  %loadMem_460d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d39 = call %struct.Memory* @routine_leaq_MINUS0x4d8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d39)
  store %struct.Memory* %call_460d39, %struct.Memory** %MEMORY

  ; Code: leaq -0x4dc(%rbp), %rsi	 RIP: 460d40	 Bytes: 7
  %loadMem_460d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d40 = call %struct.Memory* @routine_leaq_MINUS0x4dc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d40)
  store %struct.Memory* %call_460d40, %struct.Memory** %MEMORY

  ; Code: leaq -0x4e0(%rbp), %rdi	 RIP: 460d47	 Bytes: 7
  %loadMem_460d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d47 = call %struct.Memory* @routine_leaq_MINUS0x4e0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d47)
  store %struct.Memory* %call_460d47, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 460d4e	 Bytes: 2
  %loadMem_460d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d4e = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d4e)
  store %struct.Memory* %call_460d4e, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %r8d	 RIP: 460d50	 Bytes: 4
  %loadMem_460d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d50 = call %struct.Memory* @routine_movzbl__al___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d50)
  store %struct.Memory* %call_460d50, %struct.Memory** %MEMORY

  ; Code: movl -0x5b0(%rbp), %r9d	 RIP: 460d54	 Bytes: 7
  %loadMem_460d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d54 = call %struct.Memory* @routine_movl_MINUS0x5b0__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d54)
  store %struct.Memory* %call_460d54, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x5c8(%rbp)	 RIP: 460d5b	 Bytes: 7
  %loadMem_460d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d5b = call %struct.Memory* @routine_movq__rdi__MINUS0x5c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d5b)
  store %struct.Memory* %call_460d5b, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edi	 RIP: 460d62	 Bytes: 3
  %loadMem_460d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d62 = call %struct.Memory* @routine_movl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d62)
  store %struct.Memory* %call_460d62, %struct.Memory** %MEMORY

  ; Code: movl -0x5b4(%rbp), %r10d	 RIP: 460d65	 Bytes: 7
  %loadMem_460d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d65 = call %struct.Memory* @routine_movl_MINUS0x5b4__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d65)
  store %struct.Memory* %call_460d65, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x5d0(%rbp)	 RIP: 460d6c	 Bytes: 7
  %loadMem_460d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d6c = call %struct.Memory* @routine_movq__rsi__MINUS0x5d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d6c)
  store %struct.Memory* %call_460d6c, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %esi	 RIP: 460d73	 Bytes: 3
  %loadMem_460d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d73 = call %struct.Memory* @routine_movl__r10d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d73)
  store %struct.Memory* %call_460d73, %struct.Memory** %MEMORY

  ; Code: movl -0x5b8(%rbp), %r11d	 RIP: 460d76	 Bytes: 7
  %loadMem_460d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d76 = call %struct.Memory* @routine_movl_MINUS0x5b8__rbp____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d76)
  store %struct.Memory* %call_460d76, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x5d8(%rbp)	 RIP: 460d7d	 Bytes: 7
  %loadMem_460d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d7d = call %struct.Memory* @routine_movq__rcx__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d7d)
  store %struct.Memory* %call_460d7d, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %ecx	 RIP: 460d84	 Bytes: 3
  %loadMem_460d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d84 = call %struct.Memory* @routine_movl__r11d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d84)
  store %struct.Memory* %call_460d84, %struct.Memory** %MEMORY

  ; Code: movl -0x5bc(%rbp), %ebx	 RIP: 460d87	 Bytes: 6
  %loadMem_460d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d87 = call %struct.Memory* @routine_movl_MINUS0x5bc__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d87)
  store %struct.Memory* %call_460d87, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x5dc(%rbp)	 RIP: 460d8d	 Bytes: 7
  %loadMem_460d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d8d = call %struct.Memory* @routine_movl__r8d__MINUS0x5dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d8d)
  store %struct.Memory* %call_460d8d, %struct.Memory** %MEMORY

  ; Code: movl %ebx, %r8d	 RIP: 460d94	 Bytes: 3
  %loadMem_460d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d94 = call %struct.Memory* @routine_movl__ebx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d94)
  store %struct.Memory* %call_460d94, %struct.Memory** %MEMORY

  ; Code: movl -0x5ac(%rbp), %r9d	 RIP: 460d97	 Bytes: 7
  %loadMem_460d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d97 = call %struct.Memory* @routine_movl_MINUS0x5ac__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d97)
  store %struct.Memory* %call_460d97, %struct.Memory** %MEMORY

  ; Code: movq -0x5d8(%rbp), %r14	 RIP: 460d9e	 Bytes: 7
  %loadMem_460d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460d9e = call %struct.Memory* @routine_movq_MINUS0x5d8__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460d9e)
  store %struct.Memory* %call_460d9e, %struct.Memory** %MEMORY

  ; Code: movq %r14, (%rsp)	 RIP: 460da5	 Bytes: 4
  %loadMem_460da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460da5 = call %struct.Memory* @routine_movq__r14____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460da5)
  store %struct.Memory* %call_460da5, %struct.Memory** %MEMORY

  ; Code: movq -0x5d0(%rbp), %r15	 RIP: 460da9	 Bytes: 7
  %loadMem_460da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460da9 = call %struct.Memory* @routine_movq_MINUS0x5d0__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460da9)
  store %struct.Memory* %call_460da9, %struct.Memory** %MEMORY

  ; Code: movq %r15, 0x8(%rsp)	 RIP: 460db0	 Bytes: 5
  %loadMem_460db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460db0 = call %struct.Memory* @routine_movq__r15__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460db0)
  store %struct.Memory* %call_460db0, %struct.Memory** %MEMORY

  ; Code: movq -0x5c8(%rbp), %r12	 RIP: 460db5	 Bytes: 7
  %loadMem_460db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460db5 = call %struct.Memory* @routine_movq_MINUS0x5c8__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460db5)
  store %struct.Memory* %call_460db5, %struct.Memory** %MEMORY

  ; Code: movq %r12, 0x10(%rsp)	 RIP: 460dbc	 Bytes: 5
  %loadMem_460dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460dbc = call %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460dbc)
  store %struct.Memory* %call_460dbc, %struct.Memory** %MEMORY

  ; Code: movl -0x5dc(%rbp), %r13d	 RIP: 460dc1	 Bytes: 7
  %loadMem_460dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460dc1 = call %struct.Memory* @routine_movl_MINUS0x5dc__rbp____r13d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460dc1)
  store %struct.Memory* %call_460dc1, %struct.Memory** %MEMORY

  ; Code: movl %r13d, 0x18(%rsp)	 RIP: 460dc8	 Bytes: 5
  %loadMem_460dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460dc8 = call %struct.Memory* @routine_movl__r13d__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460dc8)
  store %struct.Memory* %call_460dc8, %struct.Memory** %MEMORY

  ; Code: callq .komaster_trymove	 RIP: 460dcd	 Bytes: 5
  %loadMem1_460dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460dcd = call %struct.Memory* @routine_callq_.komaster_trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460dcd, i64 -335837, i64 5, i64 5)
  store %struct.Memory* %call1_460dcd, %struct.Memory** %MEMORY

  %loadMem2_460dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460dcd = load i64, i64* %3
  %call2_460dcd = call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* %0, i64  %loadPC_460dcd, %struct.Memory* %loadMem2_460dcd)
  store %struct.Memory* %call2_460dcd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 460dd2	 Bytes: 3
  %loadMem_460dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460dd2 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460dd2)
  store %struct.Memory* %call_460dd2, %struct.Memory** %MEMORY

  ; Code: je .L_460f4e	 RIP: 460dd5	 Bytes: 6
  %loadMem_460dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460dd5 = call %struct.Memory* @routine_je_.L_460f4e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460dd5, i8* %BRANCH_TAKEN, i64 377, i64 6, i64 6)
  store %struct.Memory* %call_460dd5, %struct.Memory** %MEMORY

  %loadBr_460dd5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460dd5 = icmp eq i8 %loadBr_460dd5, 1
  br i1 %cmpBr_460dd5, label %block_.L_460f4e, label %block_460ddb

block_460ddb:
  ; Code: cmpl $0x0, -0x4e0(%rbp)	 RIP: 460ddb	 Bytes: 7
  %loadMem_460ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ddb = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ddb)
  store %struct.Memory* %call_460ddb, %struct.Memory** %MEMORY

  ; Code: jne .L_460eec	 RIP: 460de2	 Bytes: 6
  %loadMem_460de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460de2 = call %struct.Memory* @routine_jne_.L_460eec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460de2, i8* %BRANCH_TAKEN, i64 266, i64 6, i64 6)
  store %struct.Memory* %call_460de2, %struct.Memory** %MEMORY

  %loadBr_460de2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460de2 = icmp eq i8 %loadBr_460de2, 1
  br i1 %cmpBr_460de2, label %block_.L_460eec, label %block_460de8

block_460de8:
  ; Code: xorl %eax, %eax	 RIP: 460de8	 Bytes: 2
  %loadMem_460de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460de8 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460de8)
  store %struct.Memory* %call_460de8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 460dea	 Bytes: 2
  %loadMem_460dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460dea = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460dea)
  store %struct.Memory* %call_460dea, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 460dec	 Bytes: 3
  %loadMem_460dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460dec = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460dec)
  store %struct.Memory* %call_460dec, %struct.Memory** %MEMORY

  ; Code: movl -0x4d8(%rbp), %edx	 RIP: 460def	 Bytes: 6
  %loadMem_460def = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460def = call %struct.Memory* @routine_movl_MINUS0x4d8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460def)
  store %struct.Memory* %call_460def, %struct.Memory** %MEMORY

  ; Code: movl -0x4dc(%rbp), %ecx	 RIP: 460df5	 Bytes: 6
  %loadMem_460df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460df5 = call %struct.Memory* @routine_movl_MINUS0x4dc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460df5)
  store %struct.Memory* %call_460df5, %struct.Memory** %MEMORY

  ; Code: callq .do_find_defense	 RIP: 460dfb	 Bytes: 5
  %loadMem1_460dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460dfb = call %struct.Memory* @routine_callq_.do_find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460dfb, i64 10277, i64 5, i64 5)
  store %struct.Memory* %call1_460dfb, %struct.Memory** %MEMORY

  %loadMem2_460dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460dfb = load i64, i64* %3
  %call2_460dfb = call %struct.Memory* @sub_463620.do_find_defense(%struct.State* %0, i64  %loadPC_460dfb, %struct.Memory* %loadMem2_460dfb)
  store %struct.Memory* %call2_460dfb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2ec(%rbp)	 RIP: 460e00	 Bytes: 6
  %loadMem_460e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e00 = call %struct.Memory* @routine_movl__eax__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e00)
  store %struct.Memory* %call_460e00, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, -0x2ec(%rbp)	 RIP: 460e06	 Bytes: 7
  %loadMem_460e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e06 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e06)
  store %struct.Memory* %call_460e06, %struct.Memory** %MEMORY

  ; Code: je .L_460ee2	 RIP: 460e0d	 Bytes: 6
  %loadMem_460e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e0d = call %struct.Memory* @routine_je_.L_460ee2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e0d, i8* %BRANCH_TAKEN, i64 213, i64 6, i64 6)
  store %struct.Memory* %call_460e0d, %struct.Memory** %MEMORY

  %loadBr_460e0d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460e0d = icmp eq i8 %loadBr_460e0d, 1
  br i1 %cmpBr_460e0d, label %block_.L_460ee2, label %block_460e13

block_460e13:
  ; Code: xorl %eax, %eax	 RIP: 460e13	 Bytes: 2
  %loadMem_460e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e13 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e13)
  store %struct.Memory* %call_460e13, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 460e15	 Bytes: 2
  %loadMem_460e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e15 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e15)
  store %struct.Memory* %call_460e15, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 460e17	 Bytes: 3
  %loadMem_460e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e17 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e17)
  store %struct.Memory* %call_460e17, %struct.Memory** %MEMORY

  ; Code: movl -0x4d8(%rbp), %edx	 RIP: 460e1a	 Bytes: 6
  %loadMem_460e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e1a = call %struct.Memory* @routine_movl_MINUS0x4d8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e1a)
  store %struct.Memory* %call_460e1a, %struct.Memory** %MEMORY

  ; Code: movl -0x4dc(%rbp), %ecx	 RIP: 460e20	 Bytes: 6
  %loadMem_460e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e20 = call %struct.Memory* @routine_movl_MINUS0x4dc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e20)
  store %struct.Memory* %call_460e20, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 460e26	 Bytes: 5
  %loadMem1_460e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460e26 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460e26, i64 -12614, i64 5, i64 5)
  store %struct.Memory* %call1_460e26, %struct.Memory** %MEMORY

  %loadMem2_460e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460e26 = load i64, i64* %3
  %call2_460e26 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_460e26, %struct.Memory* %loadMem2_460e26)
  store %struct.Memory* %call2_460e26, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 460e2b	 Bytes: 3
  %loadMem_460e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e2b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e2b)
  store %struct.Memory* %call_460e2b, %struct.Memory** %MEMORY

  ; Code: je .L_460ee2	 RIP: 460e2e	 Bytes: 6
  %loadMem_460e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e2e = call %struct.Memory* @routine_je_.L_460ee2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e2e, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_460e2e, %struct.Memory** %MEMORY

  %loadBr_460e2e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460e2e = icmp eq i8 %loadBr_460e2e, 1
  br i1 %cmpBr_460e2e, label %block_.L_460ee2, label %block_460e34

block_460e34:
  ; Code: callq .popgo	 RIP: 460e34	 Bytes: 5
  %loadMem1_460e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460e34 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460e34, i64 -340180, i64 5, i64 5)
  store %struct.Memory* %call1_460e34, %struct.Memory** %MEMORY

  %loadMem2_460e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460e34 = load i64, i64* %3
  %call2_460e34 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_460e34, %struct.Memory* %loadMem2_460e34)
  store %struct.Memory* %call2_460e34, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x2ec(%rbp)	 RIP: 460e39	 Bytes: 7
  %loadMem_460e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e39 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e39)
  store %struct.Memory* %call_460e39, %struct.Memory** %MEMORY

  ; Code: jne .L_460e9f	 RIP: 460e40	 Bytes: 6
  %loadMem_460e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e40 = call %struct.Memory* @routine_jne_.L_460e9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e40, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_460e40, %struct.Memory** %MEMORY

  %loadBr_460e40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460e40 = icmp eq i8 %loadBr_460e40, 1
  br i1 %cmpBr_460e40, label %block_.L_460e9f, label %block_460e46

block_460e46:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 460e46	 Bytes: 5
  %loadMem_460e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e46 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e46)
  store %struct.Memory* %call_460e46, %struct.Memory** %MEMORY

  ; Code: je .L_460e5d	 RIP: 460e4b	 Bytes: 6
  %loadMem_460e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e4b = call %struct.Memory* @routine_je_.L_460e5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e4b, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_460e4b, %struct.Memory** %MEMORY

  %loadBr_460e4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460e4b = icmp eq i8 %loadBr_460e4b, 1
  br i1 %cmpBr_460e4b, label %block_.L_460e5d, label %block_460e51

block_460e51:
  ; Code: movl -0x2d4(%rbp), %eax	 RIP: 460e51	 Bytes: 6
  %loadMem_460e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e51 = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e51)
  store %struct.Memory* %call_460e51, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 460e57	 Bytes: 4
  %loadMem_460e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e57 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e57)
  store %struct.Memory* %call_460e57, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 460e5b	 Bytes: 2
  %loadMem_460e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e5b = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e5b)
  store %struct.Memory* %call_460e5b, %struct.Memory** %MEMORY

  ; Code: .L_460e5d:	 RIP: 460e5d	 Bytes: 0
  br label %block_.L_460e5d
block_.L_460e5d:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 460e5d	 Bytes: 9
  %loadMem_460e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e5d = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e5d)
  store %struct.Memory* %call_460e5d, %struct.Memory** %MEMORY

  ; Code: je .L_460e93	 RIP: 460e66	 Bytes: 6
  %loadMem_460e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e66 = call %struct.Memory* @routine_je_.L_460e93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e66, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_460e66, %struct.Memory** %MEMORY

  %loadBr_460e66 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460e66 = icmp eq i8 %loadBr_460e66, 1
  br i1 %cmpBr_460e66, label %block_.L_460e93, label %block_460e6c

block_460e6c:
  ; Code: movl $0x5, %ecx	 RIP: 460e6c	 Bytes: 5
  %loadMem_460e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e6c = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e6c)
  store %struct.Memory* %call_460e6c, %struct.Memory** %MEMORY

  ; Code: movq $0x57e5fb, %r8	 RIP: 460e71	 Bytes: 10
  %loadMem_460e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e71 = call %struct.Memory* @routine_movq__0x57e5fb___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e71)
  store %struct.Memory* %call_460e71, %struct.Memory** %MEMORY

  ; Code: movq -0x498(%rbp), %rdi	 RIP: 460e7b	 Bytes: 7
  %loadMem_460e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e7b = call %struct.Memory* @routine_movq_MINUS0x498__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e7b)
  store %struct.Memory* %call_460e7b, %struct.Memory** %MEMORY

  ; Code: movl -0x49c(%rbp), %esi	 RIP: 460e82	 Bytes: 6
  %loadMem_460e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e82 = call %struct.Memory* @routine_movl_MINUS0x49c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e82)
  store %struct.Memory* %call_460e82, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %edx	 RIP: 460e88	 Bytes: 6
  %loadMem_460e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e88 = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e88)
  store %struct.Memory* %call_460e88, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 460e8e	 Bytes: 5
  %loadMem1_460e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460e8e = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460e8e, i64 -298702, i64 5, i64 5)
  store %struct.Memory* %call1_460e8e, %struct.Memory** %MEMORY

  %loadMem2_460e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460e8e = load i64, i64* %3
  %call2_460e8e = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_460e8e, %struct.Memory* %loadMem2_460e8e)
  store %struct.Memory* %call2_460e8e, %struct.Memory** %MEMORY

  ; Code: .L_460e93:	 RIP: 460e93	 Bytes: 0
  br label %block_.L_460e93
block_.L_460e93:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 460e93	 Bytes: 7
  %loadMem_460e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e93 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e93)
  store %struct.Memory* %call_460e93, %struct.Memory** %MEMORY

  ; Code: jmpq .L_461376	 RIP: 460e9a	 Bytes: 5
  %loadMem_460e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e9a = call %struct.Memory* @routine_jmpq_.L_461376(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e9a, i64 1244, i64 5)
  store %struct.Memory* %call_460e9a, %struct.Memory** %MEMORY

  br label %block_.L_461376

  ; Code: .L_460e9f:	 RIP: 460e9f	 Bytes: 0
block_.L_460e9f:

  ; Code: movl $0x5, %eax	 RIP: 460e9f	 Bytes: 5
  %loadMem_460e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460e9f = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460e9f)
  store %struct.Memory* %call_460e9f, %struct.Memory** %MEMORY

  ; Code: subl -0x2ec(%rbp), %eax	 RIP: 460ea4	 Bytes: 6
  %loadMem_460ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ea4 = call %struct.Memory* @routine_subl_MINUS0x2ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ea4)
  store %struct.Memory* %call_460ea4, %struct.Memory** %MEMORY

  ; Code: cmpl -0x490(%rbp), %eax	 RIP: 460eaa	 Bytes: 6
  %loadMem_460eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460eaa = call %struct.Memory* @routine_cmpl_MINUS0x490__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460eaa)
  store %struct.Memory* %call_460eaa, %struct.Memory** %MEMORY

  ; Code: jle .L_460ed3	 RIP: 460eb0	 Bytes: 6
  %loadMem_460eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460eb0 = call %struct.Memory* @routine_jle_.L_460ed3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460eb0, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_460eb0, %struct.Memory** %MEMORY

  %loadBr_460eb0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460eb0 = icmp eq i8 %loadBr_460eb0, 1
  br i1 %cmpBr_460eb0, label %block_.L_460ed3, label %block_460eb6

block_460eb6:
  ; Code: movl $0x5, %eax	 RIP: 460eb6	 Bytes: 5
  %loadMem_460eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460eb6 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460eb6)
  store %struct.Memory* %call_460eb6, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %ecx	 RIP: 460ebb	 Bytes: 6
  %loadMem_460ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ebb = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ebb)
  store %struct.Memory* %call_460ebb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x48c(%rbp)	 RIP: 460ec1	 Bytes: 6
  %loadMem_460ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ec1 = call %struct.Memory* @routine_movl__ecx__MINUS0x48c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ec1)
  store %struct.Memory* %call_460ec1, %struct.Memory** %MEMORY

  ; Code: subl -0x2ec(%rbp), %eax	 RIP: 460ec7	 Bytes: 6
  %loadMem_460ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ec7 = call %struct.Memory* @routine_subl_MINUS0x2ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ec7)
  store %struct.Memory* %call_460ec7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x490(%rbp)	 RIP: 460ecd	 Bytes: 6
  %loadMem_460ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ecd = call %struct.Memory* @routine_movl__eax__MINUS0x490__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ecd)
  store %struct.Memory* %call_460ecd, %struct.Memory** %MEMORY

  ; Code: .L_460ed3:	 RIP: 460ed3	 Bytes: 0
  br label %block_.L_460ed3
block_.L_460ed3:

  ; Code: jmpq .L_460ed8	 RIP: 460ed3	 Bytes: 5
  %loadMem_460ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ed3 = call %struct.Memory* @routine_jmpq_.L_460ed8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ed3, i64 5, i64 5)
  store %struct.Memory* %call_460ed3, %struct.Memory** %MEMORY

  br label %block_.L_460ed8

  ; Code: .L_460ed8:	 RIP: 460ed8	 Bytes: 0
block_.L_460ed8:

  ; Code: jmpq .L_460edd	 RIP: 460ed8	 Bytes: 5
  %loadMem_460ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ed8 = call %struct.Memory* @routine_jmpq_.L_460edd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ed8, i64 5, i64 5)
  store %struct.Memory* %call_460ed8, %struct.Memory** %MEMORY

  br label %block_.L_460edd

  ; Code: .L_460edd:	 RIP: 460edd	 Bytes: 0
block_.L_460edd:

  ; Code: jmpq .L_460ee7	 RIP: 460edd	 Bytes: 5
  %loadMem_460edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460edd = call %struct.Memory* @routine_jmpq_.L_460ee7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460edd, i64 10, i64 5)
  store %struct.Memory* %call_460edd, %struct.Memory** %MEMORY

  br label %block_.L_460ee7

  ; Code: .L_460ee2:	 RIP: 460ee2	 Bytes: 0
block_.L_460ee2:

  ; Code: callq .popgo	 RIP: 460ee2	 Bytes: 5
  %loadMem1_460ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460ee2 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460ee2, i64 -340354, i64 5, i64 5)
  store %struct.Memory* %call1_460ee2, %struct.Memory** %MEMORY

  %loadMem2_460ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460ee2 = load i64, i64* %3
  %call2_460ee2 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_460ee2, %struct.Memory* %loadMem2_460ee2)
  store %struct.Memory* %call2_460ee2, %struct.Memory** %MEMORY

  ; Code: .L_460ee7:	 RIP: 460ee7	 Bytes: 0
  br label %block_.L_460ee7
block_.L_460ee7:

  ; Code: jmpq .L_460f49	 RIP: 460ee7	 Bytes: 5
  %loadMem_460ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ee7 = call %struct.Memory* @routine_jmpq_.L_460f49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ee7, i64 98, i64 5)
  store %struct.Memory* %call_460ee7, %struct.Memory** %MEMORY

  br label %block_.L_460f49

  ; Code: .L_460eec:	 RIP: 460eec	 Bytes: 0
block_.L_460eec:

  ; Code: xorl %eax, %eax	 RIP: 460eec	 Bytes: 2
  %loadMem_460eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460eec = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460eec)
  store %struct.Memory* %call_460eec, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 460eee	 Bytes: 2
  %loadMem_460eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460eee = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460eee)
  store %struct.Memory* %call_460eee, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 460ef0	 Bytes: 3
  %loadMem_460ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ef0 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ef0)
  store %struct.Memory* %call_460ef0, %struct.Memory** %MEMORY

  ; Code: movl -0x4d8(%rbp), %edx	 RIP: 460ef3	 Bytes: 6
  %loadMem_460ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ef3 = call %struct.Memory* @routine_movl_MINUS0x4d8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ef3)
  store %struct.Memory* %call_460ef3, %struct.Memory** %MEMORY

  ; Code: movl -0x4dc(%rbp), %ecx	 RIP: 460ef9	 Bytes: 6
  %loadMem_460ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ef9 = call %struct.Memory* @routine_movl_MINUS0x4dc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ef9)
  store %struct.Memory* %call_460ef9, %struct.Memory** %MEMORY

  ; Code: callq .do_find_defense	 RIP: 460eff	 Bytes: 5
  %loadMem1_460eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460eff = call %struct.Memory* @routine_callq_.do_find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460eff, i64 10017, i64 5, i64 5)
  store %struct.Memory* %call1_460eff, %struct.Memory** %MEMORY

  %loadMem2_460eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460eff = load i64, i64* %3
  %call2_460eff = call %struct.Memory* @sub_463620.do_find_defense(%struct.State* %0, i64  %loadPC_460eff, %struct.Memory* %loadMem2_460eff)
  store %struct.Memory* %call2_460eff, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 460f04	 Bytes: 3
  %loadMem_460f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f04 = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f04)
  store %struct.Memory* %call_460f04, %struct.Memory** %MEMORY

  ; Code: je .L_460f44	 RIP: 460f07	 Bytes: 6
  %loadMem_460f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f07 = call %struct.Memory* @routine_je_.L_460f44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f07, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_460f07, %struct.Memory** %MEMORY

  %loadBr_460f07 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460f07 = icmp eq i8 %loadBr_460f07, 1
  br i1 %cmpBr_460f07, label %block_.L_460f44, label %block_460f0d

block_460f0d:
  ; Code: xorl %eax, %eax	 RIP: 460f0d	 Bytes: 2
  %loadMem_460f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f0d = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f0d)
  store %struct.Memory* %call_460f0d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 460f0f	 Bytes: 2
  %loadMem_460f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f0f = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f0f)
  store %struct.Memory* %call_460f0f, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 460f11	 Bytes: 3
  %loadMem_460f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f11 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f11)
  store %struct.Memory* %call_460f11, %struct.Memory** %MEMORY

  ; Code: movl -0x4d8(%rbp), %edx	 RIP: 460f14	 Bytes: 6
  %loadMem_460f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f14 = call %struct.Memory* @routine_movl_MINUS0x4d8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f14)
  store %struct.Memory* %call_460f14, %struct.Memory** %MEMORY

  ; Code: movl -0x4dc(%rbp), %ecx	 RIP: 460f1a	 Bytes: 6
  %loadMem_460f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f1a = call %struct.Memory* @routine_movl_MINUS0x4dc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f1a)
  store %struct.Memory* %call_460f1a, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 460f20	 Bytes: 5
  %loadMem1_460f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460f20 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460f20, i64 -12864, i64 5, i64 5)
  store %struct.Memory* %call1_460f20, %struct.Memory** %MEMORY

  %loadMem2_460f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460f20 = load i64, i64* %3
  %call2_460f20 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_460f20, %struct.Memory* %loadMem2_460f20)
  store %struct.Memory* %call2_460f20, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 460f25	 Bytes: 3
  %loadMem_460f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f25 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f25)
  store %struct.Memory* %call_460f25, %struct.Memory** %MEMORY

  ; Code: je .L_460f44	 RIP: 460f28	 Bytes: 6
  %loadMem_460f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f28 = call %struct.Memory* @routine_je_.L_460f44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f28, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_460f28, %struct.Memory** %MEMORY

  %loadBr_460f28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460f28 = icmp eq i8 %loadBr_460f28, 1
  br i1 %cmpBr_460f28, label %block_.L_460f44, label %block_460f2e

block_460f2e:
  ; Code: movl -0x2d4(%rbp), %eax	 RIP: 460f2e	 Bytes: 6
  %loadMem_460f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f2e = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f2e)
  store %struct.Memory* %call_460f2e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48c(%rbp)	 RIP: 460f34	 Bytes: 6
  %loadMem_460f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f34 = call %struct.Memory* @routine_movl__eax__MINUS0x48c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f34)
  store %struct.Memory* %call_460f34, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x490(%rbp)	 RIP: 460f3a	 Bytes: 10
  %loadMem_460f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f3a = call %struct.Memory* @routine_movl__0x1__MINUS0x490__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f3a)
  store %struct.Memory* %call_460f3a, %struct.Memory** %MEMORY

  ; Code: .L_460f44:	 RIP: 460f44	 Bytes: 0
  br label %block_.L_460f44
block_.L_460f44:

  ; Code: callq .popgo	 RIP: 460f44	 Bytes: 5
  %loadMem1_460f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460f44 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460f44, i64 -340452, i64 5, i64 5)
  store %struct.Memory* %call1_460f44, %struct.Memory** %MEMORY

  %loadMem2_460f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460f44 = load i64, i64* %3
  %call2_460f44 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_460f44, %struct.Memory* %loadMem2_460f44)
  store %struct.Memory* %call2_460f44, %struct.Memory** %MEMORY

  ; Code: .L_460f49:	 RIP: 460f49	 Bytes: 0
  br label %block_.L_460f49
block_.L_460f49:

  ; Code: jmpq .L_460f4e	 RIP: 460f49	 Bytes: 5
  %loadMem_460f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f49 = call %struct.Memory* @routine_jmpq_.L_460f4e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f49, i64 5, i64 5)
  store %struct.Memory* %call_460f49, %struct.Memory** %MEMORY

  br label %block_.L_460f4e

  ; Code: .L_460f4e:	 RIP: 460f4e	 Bytes: 0
block_.L_460f4e:

  ; Code: jmpq .L_460f53	 RIP: 460f4e	 Bytes: 5
  %loadMem_460f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f4e = call %struct.Memory* @routine_jmpq_.L_460f53(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f4e, i64 5, i64 5)
  store %struct.Memory* %call_460f4e, %struct.Memory** %MEMORY

  br label %block_.L_460f53

  ; Code: .L_460f53:	 RIP: 460f53	 Bytes: 0
block_.L_460f53:

  ; Code: movl -0x2f0(%rbp), %eax	 RIP: 460f53	 Bytes: 6
  %loadMem_460f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f53 = call %struct.Memory* @routine_movl_MINUS0x2f0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f53)
  store %struct.Memory* %call_460f53, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 460f59	 Bytes: 3
  %loadMem_460f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f59 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f59)
  store %struct.Memory* %call_460f59, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f0(%rbp)	 RIP: 460f5c	 Bytes: 6
  %loadMem_460f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f5c = call %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f5c)
  store %struct.Memory* %call_460f5c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_460c79	 RIP: 460f62	 Bytes: 5
  %loadMem_460f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f62 = call %struct.Memory* @routine_jmpq_.L_460c79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f62, i64 -745, i64 5)
  store %struct.Memory* %call_460f62, %struct.Memory** %MEMORY

  br label %block_.L_460c79

  ; Code: .L_460f67:	 RIP: 460f67	 Bytes: 0
block_.L_460f67:

  ; Code: jmpq .L_460f6c	 RIP: 460f67	 Bytes: 5
  %loadMem_460f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f67 = call %struct.Memory* @routine_jmpq_.L_460f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f67, i64 5, i64 5)
  store %struct.Memory* %call_460f67, %struct.Memory** %MEMORY

  br label %block_.L_460f6c

  ; Code: .L_460f6c:	 RIP: 460f6c	 Bytes: 0
block_.L_460f6c:

  ; Code: cmpl $0xa, 0x7ae448	 RIP: 460f6c	 Bytes: 8
  %loadMem_460f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f6c = call %struct.Memory* @routine_cmpl__0xa__0x7ae448(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f6c)
  store %struct.Memory* %call_460f6c, %struct.Memory** %MEMORY

  ; Code: jl .L_4612d7	 RIP: 460f74	 Bytes: 6
  %loadMem_460f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f74 = call %struct.Memory* @routine_jl_.L_4612d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f74, i8* %BRANCH_TAKEN, i64 867, i64 6, i64 6)
  store %struct.Memory* %call_460f74, %struct.Memory** %MEMORY

  %loadBr_460f74 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460f74 = icmp eq i8 %loadBr_460f74, 1
  br i1 %cmpBr_460f74, label %block_.L_4612d7, label %block_460f7a

block_460f7a:
  ; Code: movl 0xb54ce4, %eax	 RIP: 460f7a	 Bytes: 7
  %loadMem_460f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f7a = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f7a)
  store %struct.Memory* %call_460f7a, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8af28, %eax	 RIP: 460f81	 Bytes: 7
  %loadMem_460f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f81 = call %struct.Memory* @routine_cmpl_0xb8af28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f81)
  store %struct.Memory* %call_460f81, %struct.Memory** %MEMORY

  ; Code: jg .L_4612d7	 RIP: 460f88	 Bytes: 6
  %loadMem_460f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f88 = call %struct.Memory* @routine_jg_.L_4612d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f88, i8* %BRANCH_TAKEN, i64 847, i64 6, i64 6)
  store %struct.Memory* %call_460f88, %struct.Memory** %MEMORY

  %loadBr_460f88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460f88 = icmp eq i8 %loadBr_460f88, 1
  br i1 %cmpBr_460f88, label %block_.L_4612d7, label %block_460f8e

block_460f8e:
  ; Code: leaq -0x4e4(%rbp), %rsi	 RIP: 460f8e	 Bytes: 7
  %loadMem_460f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f8e = call %struct.Memory* @routine_leaq_MINUS0x4e4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f8e)
  store %struct.Memory* %call_460f8e, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 460f95	 Bytes: 5
  %loadMem_460f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f95 = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f95)
  store %struct.Memory* %call_460f95, %struct.Memory** %MEMORY

  ; Code: leaq -0x550(%rbp), %rdx	 RIP: 460f9a	 Bytes: 7
  %loadMem_460f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460f9a = call %struct.Memory* @routine_leaq_MINUS0x550__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460f9a)
  store %struct.Memory* %call_460f9a, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 460fa1	 Bytes: 3
  %loadMem_460fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460fa1 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460fa1)
  store %struct.Memory* %call_460fa1, %struct.Memory** %MEMORY

  ; Code: callq .find_superstring_liberties	 RIP: 460fa4	 Bytes: 5
  %loadMem1_460fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460fa4 = call %struct.Memory* @routine_callq_.find_superstring_liberties(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460fa4, i64 110860, i64 5, i64 5)
  store %struct.Memory* %call1_460fa4, %struct.Memory** %MEMORY

  %loadMem2_460fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460fa4 = load i64, i64* %3
  %call2_460fa4 = call %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* %0, i64  %loadPC_460fa4, %struct.Memory* %loadMem2_460fa4)
  store %struct.Memory* %call2_460fa4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, -0x4e4(%rbp)	 RIP: 460fa9	 Bytes: 7
  %loadMem_460fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460fa9 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x4e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460fa9)
  store %struct.Memory* %call_460fa9, %struct.Memory** %MEMORY

  ; Code: jg .L_4612d2	 RIP: 460fb0	 Bytes: 6
  %loadMem_460fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460fb0 = call %struct.Memory* @routine_jg_.L_4612d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460fb0, i8* %BRANCH_TAKEN, i64 802, i64 6, i64 6)
  store %struct.Memory* %call_460fb0, %struct.Memory** %MEMORY

  %loadBr_460fb0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460fb0 = icmp eq i8 %loadBr_460fb0, 1
  br i1 %cmpBr_460fb0, label %block_.L_4612d2, label %block_460fb6

block_460fb6:
  ; Code: movl $0x0, -0x2f0(%rbp)	 RIP: 460fb6	 Bytes: 10
  %loadMem_460fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460fb6 = call %struct.Memory* @routine_movl__0x0__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460fb6)
  store %struct.Memory* %call_460fb6, %struct.Memory** %MEMORY

  ; Code: .L_460fc0:	 RIP: 460fc0	 Bytes: 0
  br label %block_.L_460fc0
block_.L_460fc0:

  ; Code: movl -0x2f0(%rbp), %eax	 RIP: 460fc0	 Bytes: 6
  %loadMem_460fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460fc0 = call %struct.Memory* @routine_movl_MINUS0x2f0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460fc0)
  store %struct.Memory* %call_460fc0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4e4(%rbp), %eax	 RIP: 460fc6	 Bytes: 6
  %loadMem_460fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460fc6 = call %struct.Memory* @routine_cmpl_MINUS0x4e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460fc6)
  store %struct.Memory* %call_460fc6, %struct.Memory** %MEMORY

  ; Code: jge .L_4612cd	 RIP: 460fcc	 Bytes: 6
  %loadMem_460fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460fcc = call %struct.Memory* @routine_jge_.L_4612cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460fcc, i8* %BRANCH_TAKEN, i64 769, i64 6, i64 6)
  store %struct.Memory* %call_460fcc, %struct.Memory** %MEMORY

  %loadBr_460fcc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460fcc = icmp eq i8 %loadBr_460fcc, 1
  br i1 %cmpBr_460fcc, label %block_.L_4612cd, label %block_460fd2

block_460fd2:
  ; Code: movslq -0x2f0(%rbp), %rax	 RIP: 460fd2	 Bytes: 7
  %loadMem_460fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460fd2 = call %struct.Memory* @routine_movslq_MINUS0x2f0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460fd2)
  store %struct.Memory* %call_460fd2, %struct.Memory** %MEMORY

  ; Code: movl -0x550(%rbp,%rax,4), %ecx	 RIP: 460fd9	 Bytes: 7
  %loadMem_460fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460fd9 = call %struct.Memory* @routine_movl_MINUS0x550__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460fd9)
  store %struct.Memory* %call_460fd9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x554(%rbp)	 RIP: 460fe0	 Bytes: 6
  %loadMem_460fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460fe0 = call %struct.Memory* @routine_movl__ecx__MINUS0x554__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460fe0)
  store %struct.Memory* %call_460fe0, %struct.Memory** %MEMORY

  ; Code: movl -0x554(%rbp), %edi	 RIP: 460fe6	 Bytes: 6
  %loadMem_460fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460fe6 = call %struct.Memory* @routine_movl_MINUS0x554__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460fe6)
  store %struct.Memory* %call_460fe6, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 460fec	 Bytes: 3
  %loadMem_460fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460fec = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460fec)
  store %struct.Memory* %call_460fec, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_string	 RIP: 460fef	 Bytes: 5
  %loadMem1_460fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_460fef = call %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_460fef, i64 -312639, i64 5, i64 5)
  store %struct.Memory* %call1_460fef, %struct.Memory** %MEMORY

  %loadMem2_460fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_460fef = load i64, i64* %3
  %call2_460fef = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64  %loadPC_460fef, %struct.Memory* %loadMem2_460fef)
  store %struct.Memory* %call2_460fef, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 460ff4	 Bytes: 3
  %loadMem_460ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ff4 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ff4)
  store %struct.Memory* %call_460ff4, %struct.Memory** %MEMORY

  ; Code: je .L_461002	 RIP: 460ff7	 Bytes: 6
  %loadMem_460ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ff7 = call %struct.Memory* @routine_je_.L_461002(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ff7, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_460ff7, %struct.Memory** %MEMORY

  %loadBr_460ff7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_460ff7 = icmp eq i8 %loadBr_460ff7, 1
  br i1 %cmpBr_460ff7, label %block_.L_461002, label %block_460ffd

block_460ffd:
  ; Code: jmpq .L_4612b9	 RIP: 460ffd	 Bytes: 5
  %loadMem_460ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_460ffd = call %struct.Memory* @routine_jmpq_.L_4612b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_460ffd, i64 700, i64 5)
  store %struct.Memory* %call_460ffd, %struct.Memory** %MEMORY

  br label %block_.L_4612b9

  ; Code: .L_461002:	 RIP: 461002	 Bytes: 0
block_.L_461002:

  ; Code: movq $0x57fe04, %rdx	 RIP: 461002	 Bytes: 10
  %loadMem_461002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461002 = call %struct.Memory* @routine_movq__0x57fe04___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461002)
  store %struct.Memory* %call_461002, %struct.Memory** %MEMORY

  ; Code: movl -0x554(%rbp), %edi	 RIP: 46100c	 Bytes: 6
  %loadMem_46100c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46100c = call %struct.Memory* @routine_movl_MINUS0x554__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46100c)
  store %struct.Memory* %call_46100c, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 461012	 Bytes: 3
  %loadMem_461012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461012 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461012)
  store %struct.Memory* %call_461012, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 461015	 Bytes: 3
  %loadMem_461015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461015 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461015)
  store %struct.Memory* %call_461015, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 461018	 Bytes: 4
  %loadMem_461018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461018 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461018)
  store %struct.Memory* %call_461018, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r9d	 RIP: 46101c	 Bytes: 4
  %loadMem_46101c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46101c = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46101c)
  store %struct.Memory* %call_46101c, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 461020	 Bytes: 5
  %loadMem1_461020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461020 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461020, i64 -360944, i64 5, i64 5)
  store %struct.Memory* %call1_461020, %struct.Memory** %MEMORY

  %loadMem2_461020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461020 = load i64, i64* %3
  %call2_461020 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_461020, %struct.Memory* %loadMem2_461020)
  store %struct.Memory* %call2_461020, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 461025	 Bytes: 3
  %loadMem_461025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461025 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461025)
  store %struct.Memory* %call_461025, %struct.Memory** %MEMORY

  ; Code: je .L_4612b4	 RIP: 461028	 Bytes: 6
  %loadMem_461028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461028 = call %struct.Memory* @routine_je_.L_4612b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461028, i8* %BRANCH_TAKEN, i64 652, i64 6, i64 6)
  store %struct.Memory* %call_461028, %struct.Memory** %MEMORY

  %loadBr_461028 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461028 = icmp eq i8 %loadBr_461028, 1
  br i1 %cmpBr_461028, label %block_.L_4612b4, label %block_46102e

block_46102e:
  ; Code: movl -0x554(%rbp), %edi	 RIP: 46102e	 Bytes: 6
  %loadMem_46102e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46102e = call %struct.Memory* @routine_movl_MINUS0x554__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46102e)
  store %struct.Memory* %call_46102e, %struct.Memory** %MEMORY

  ; Code: callq .countlib	 RIP: 461034	 Bytes: 5
  %loadMem1_461034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461034 = call %struct.Memory* @routine_callq_.countlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461034, i64 -334004, i64 5, i64 5)
  store %struct.Memory* %call1_461034, %struct.Memory** %MEMORY

  %loadMem2_461034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461034 = load i64, i64* %3
  %call2_461034 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64  %loadPC_461034, %struct.Memory* %loadMem2_461034)
  store %struct.Memory* %call2_461034, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 461039	 Bytes: 3
  %loadMem_461039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461039 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461039)
  store %struct.Memory* %call_461039, %struct.Memory** %MEMORY

  ; Code: jne .L_4611b7	 RIP: 46103c	 Bytes: 6
  %loadMem_46103c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46103c = call %struct.Memory* @routine_jne_.L_4611b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46103c, i8* %BRANCH_TAKEN, i64 379, i64 6, i64 6)
  store %struct.Memory* %call_46103c, %struct.Memory** %MEMORY

  %loadBr_46103c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46103c = icmp eq i8 %loadBr_46103c, 1
  br i1 %cmpBr_46103c, label %block_.L_4611b7, label %block_461042

block_461042:
  ; Code: movl $0x1, %esi	 RIP: 461042	 Bytes: 5
  %loadMem_461042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461042 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461042)
  store %struct.Memory* %call_461042, %struct.Memory** %MEMORY

  ; Code: leaq -0x2d4(%rbp), %rdx	 RIP: 461047	 Bytes: 7
  %loadMem_461047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461047 = call %struct.Memory* @routine_leaq_MINUS0x2d4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461047)
  store %struct.Memory* %call_461047, %struct.Memory** %MEMORY

  ; Code: movl -0x554(%rbp), %edi	 RIP: 46104e	 Bytes: 6
  %loadMem_46104e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46104e = call %struct.Memory* @routine_movl_MINUS0x554__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46104e)
  store %struct.Memory* %call_46104e, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 461054	 Bytes: 5
  %loadMem1_461054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461054 = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461054, i64 -333844, i64 5, i64 5)
  store %struct.Memory* %call1_461054, %struct.Memory** %MEMORY

  %loadMem2_461054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461054 = load i64, i64* %3
  %call2_461054 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_461054, %struct.Memory* %loadMem2_461054)
  store %struct.Memory* %call2_461054, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %edx	 RIP: 461059	 Bytes: 5
  %loadMem_461059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461059 = call %struct.Memory* @routine_movl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461059)
  store %struct.Memory* %call_461059, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 46105e	 Bytes: 2
  %loadMem_46105e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46105e = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46105e)
  store %struct.Memory* %call_46105e, %struct.Memory** %MEMORY

  ; Code: movl %esi, %ecx	 RIP: 461060	 Bytes: 2
  %loadMem_461060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461060 = call %struct.Memory* @routine_movl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461060)
  store %struct.Memory* %call_461060, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %edi	 RIP: 461062	 Bytes: 6
  %loadMem_461062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461062 = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461062)
  store %struct.Memory* %call_461062, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 461068	 Bytes: 3
  %loadMem_461068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461068 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461068)
  store %struct.Memory* %call_461068, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5e0(%rbp)	 RIP: 46106b	 Bytes: 6
  %loadMem_46106b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46106b = call %struct.Memory* @routine_movl__eax__MINUS0x5e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46106b)
  store %struct.Memory* %call_46106b, %struct.Memory** %MEMORY

  ; Code: callq .approxlib	 RIP: 461071	 Bytes: 5
  %loadMem1_461071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461071 = call %struct.Memory* @routine_callq_.approxlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461071, i64 -326337, i64 5, i64 5)
  store %struct.Memory* %call1_461071, %struct.Memory** %MEMORY

  %loadMem2_461071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461071 = load i64, i64* %3
  %call2_461071 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64  %loadPC_461071, %struct.Memory* %loadMem2_461071)
  store %struct.Memory* %call2_461071, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 461076	 Bytes: 3
  %loadMem_461076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461076 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461076)
  store %struct.Memory* %call_461076, %struct.Memory** %MEMORY

  ; Code: jle .L_4611ad	 RIP: 461079	 Bytes: 6
  %loadMem_461079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461079 = call %struct.Memory* @routine_jle_.L_4611ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461079, i8* %BRANCH_TAKEN, i64 308, i64 6, i64 6)
  store %struct.Memory* %call_461079, %struct.Memory** %MEMORY

  %loadBr_461079 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461079 = icmp eq i8 %loadBr_461079, 1
  br i1 %cmpBr_461079, label %block_.L_4611ad, label %block_46107f

block_46107f:
  ; Code: callq .popgo	 RIP: 46107f	 Bytes: 5
  %loadMem1_46107f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46107f = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46107f, i64 -340767, i64 5, i64 5)
  store %struct.Memory* %call1_46107f, %struct.Memory** %MEMORY

  %loadMem2_46107f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46107f = load i64, i64* %3
  %call2_46107f = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46107f, %struct.Memory* %loadMem2_46107f)
  store %struct.Memory* %call2_46107f, %struct.Memory** %MEMORY

  ; Code: movq $0x57fe0e, %rdx	 RIP: 461084	 Bytes: 10
  %loadMem_461084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461084 = call %struct.Memory* @routine_movq__0x57fe0e___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461084)
  store %struct.Memory* %call_461084, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %edi	 RIP: 46108e	 Bytes: 6
  %loadMem_46108e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46108e = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46108e)
  store %struct.Memory* %call_46108e, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 461094	 Bytes: 3
  %loadMem_461094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461094 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461094)
  store %struct.Memory* %call_461094, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 461097	 Bytes: 3
  %loadMem_461097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461097 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461097)
  store %struct.Memory* %call_461097, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 46109a	 Bytes: 4
  %loadMem_46109a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46109a = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46109a)
  store %struct.Memory* %call_46109a, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r9d	 RIP: 46109e	 Bytes: 4
  %loadMem_46109e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46109e = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46109e)
  store %struct.Memory* %call_46109e, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 4610a2	 Bytes: 5
  %loadMem1_4610a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4610a2 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4610a2, i64 -361074, i64 5, i64 5)
  store %struct.Memory* %call1_4610a2, %struct.Memory** %MEMORY

  %loadMem2_4610a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4610a2 = load i64, i64* %3
  %call2_4610a2 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_4610a2, %struct.Memory* %loadMem2_4610a2)
  store %struct.Memory* %call2_4610a2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4610a7	 Bytes: 3
  %loadMem_4610a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610a7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610a7)
  store %struct.Memory* %call_4610a7, %struct.Memory** %MEMORY

  ; Code: je .L_4611a8	 RIP: 4610aa	 Bytes: 6
  %loadMem_4610aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610aa = call %struct.Memory* @routine_je_.L_4611a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610aa, i8* %BRANCH_TAKEN, i64 254, i64 6, i64 6)
  store %struct.Memory* %call_4610aa, %struct.Memory** %MEMORY

  %loadBr_4610aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4610aa = icmp eq i8 %loadBr_4610aa, 1
  br i1 %cmpBr_4610aa, label %block_.L_4611a8, label %block_4610b0

block_4610b0:
  ; Code: xorl %eax, %eax	 RIP: 4610b0	 Bytes: 2
  %loadMem_4610b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610b0 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610b0)
  store %struct.Memory* %call_4610b0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4610b2	 Bytes: 2
  %loadMem_4610b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610b2 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610b2)
  store %struct.Memory* %call_4610b2, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4610b4	 Bytes: 3
  %loadMem_4610b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610b4 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610b4)
  store %struct.Memory* %call_4610b4, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 4610b7	 Bytes: 3
  %loadMem_4610b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610b7 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610b7)
  store %struct.Memory* %call_4610b7, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 4610ba	 Bytes: 3
  %loadMem_4610ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610ba = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610ba)
  store %struct.Memory* %call_4610ba, %struct.Memory** %MEMORY

  ; Code: callq .do_find_defense	 RIP: 4610bd	 Bytes: 5
  %loadMem1_4610bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4610bd = call %struct.Memory* @routine_callq_.do_find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4610bd, i64 9571, i64 5, i64 5)
  store %struct.Memory* %call1_4610bd, %struct.Memory** %MEMORY

  %loadMem2_4610bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4610bd = load i64, i64* %3
  %call2_4610bd = call %struct.Memory* @sub_463620.do_find_defense(%struct.State* %0, i64  %loadPC_4610bd, %struct.Memory* %loadMem2_4610bd)
  store %struct.Memory* %call2_4610bd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2ec(%rbp)	 RIP: 4610c2	 Bytes: 6
  %loadMem_4610c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610c2 = call %struct.Memory* @routine_movl__eax__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610c2)
  store %struct.Memory* %call_4610c2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, -0x2ec(%rbp)	 RIP: 4610c8	 Bytes: 7
  %loadMem_4610c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610c8 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610c8)
  store %struct.Memory* %call_4610c8, %struct.Memory** %MEMORY

  ; Code: je .L_46119e	 RIP: 4610cf	 Bytes: 6
  %loadMem_4610cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610cf = call %struct.Memory* @routine_je_.L_46119e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610cf, i8* %BRANCH_TAKEN, i64 207, i64 6, i64 6)
  store %struct.Memory* %call_4610cf, %struct.Memory** %MEMORY

  %loadBr_4610cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4610cf = icmp eq i8 %loadBr_4610cf, 1
  br i1 %cmpBr_4610cf, label %block_.L_46119e, label %block_4610d5

block_4610d5:
  ; Code: xorl %eax, %eax	 RIP: 4610d5	 Bytes: 2
  %loadMem_4610d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610d5 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610d5)
  store %struct.Memory* %call_4610d5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4610d7	 Bytes: 2
  %loadMem_4610d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610d7 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610d7)
  store %struct.Memory* %call_4610d7, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4610d9	 Bytes: 3
  %loadMem_4610d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610d9 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610d9)
  store %struct.Memory* %call_4610d9, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 4610dc	 Bytes: 3
  %loadMem_4610dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610dc = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610dc)
  store %struct.Memory* %call_4610dc, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 4610df	 Bytes: 3
  %loadMem_4610df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610df = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610df)
  store %struct.Memory* %call_4610df, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 4610e2	 Bytes: 5
  %loadMem1_4610e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4610e2 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4610e2, i64 -13314, i64 5, i64 5)
  store %struct.Memory* %call1_4610e2, %struct.Memory** %MEMORY

  %loadMem2_4610e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4610e2 = load i64, i64* %3
  %call2_4610e2 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_4610e2, %struct.Memory* %loadMem2_4610e2)
  store %struct.Memory* %call2_4610e2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4610e7	 Bytes: 3
  %loadMem_4610e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610e7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610e7)
  store %struct.Memory* %call_4610e7, %struct.Memory** %MEMORY

  ; Code: je .L_46119e	 RIP: 4610ea	 Bytes: 6
  %loadMem_4610ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610ea = call %struct.Memory* @routine_je_.L_46119e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610ea, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_4610ea, %struct.Memory** %MEMORY

  %loadBr_4610ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4610ea = icmp eq i8 %loadBr_4610ea, 1
  br i1 %cmpBr_4610ea, label %block_.L_46119e, label %block_4610f0

block_4610f0:
  ; Code: callq .popgo	 RIP: 4610f0	 Bytes: 5
  %loadMem1_4610f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4610f0 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4610f0, i64 -340880, i64 5, i64 5)
  store %struct.Memory* %call1_4610f0, %struct.Memory** %MEMORY

  %loadMem2_4610f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4610f0 = load i64, i64* %3
  %call2_4610f0 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_4610f0, %struct.Memory* %loadMem2_4610f0)
  store %struct.Memory* %call2_4610f0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x2ec(%rbp)	 RIP: 4610f5	 Bytes: 7
  %loadMem_4610f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610f5 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610f5)
  store %struct.Memory* %call_4610f5, %struct.Memory** %MEMORY

  ; Code: jne .L_46115b	 RIP: 4610fc	 Bytes: 6
  %loadMem_4610fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4610fc = call %struct.Memory* @routine_jne_.L_46115b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4610fc, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_4610fc, %struct.Memory** %MEMORY

  %loadBr_4610fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4610fc = icmp eq i8 %loadBr_4610fc, 1
  br i1 %cmpBr_4610fc, label %block_.L_46115b, label %block_461102

block_461102:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 461102	 Bytes: 5
  %loadMem_461102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461102 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461102)
  store %struct.Memory* %call_461102, %struct.Memory** %MEMORY

  ; Code: je .L_461119	 RIP: 461107	 Bytes: 6
  %loadMem_461107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461107 = call %struct.Memory* @routine_je_.L_461119(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461107, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_461107, %struct.Memory** %MEMORY

  %loadBr_461107 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461107 = icmp eq i8 %loadBr_461107, 1
  br i1 %cmpBr_461107, label %block_.L_461119, label %block_46110d

block_46110d:
  ; Code: movl -0x2d4(%rbp), %eax	 RIP: 46110d	 Bytes: 6
  %loadMem_46110d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46110d = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46110d)
  store %struct.Memory* %call_46110d, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 461113	 Bytes: 4
  %loadMem_461113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461113 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461113)
  store %struct.Memory* %call_461113, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 461117	 Bytes: 2
  %loadMem_461117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461117 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461117)
  store %struct.Memory* %call_461117, %struct.Memory** %MEMORY

  ; Code: .L_461119:	 RIP: 461119	 Bytes: 0
  br label %block_.L_461119
block_.L_461119:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 461119	 Bytes: 9
  %loadMem_461119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461119 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461119)
  store %struct.Memory* %call_461119, %struct.Memory** %MEMORY

  ; Code: je .L_46114f	 RIP: 461122	 Bytes: 6
  %loadMem_461122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461122 = call %struct.Memory* @routine_je_.L_46114f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461122, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_461122, %struct.Memory** %MEMORY

  %loadBr_461122 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461122 = icmp eq i8 %loadBr_461122, 1
  br i1 %cmpBr_461122, label %block_.L_46114f, label %block_461128

block_461128:
  ; Code: movl $0x5, %ecx	 RIP: 461128	 Bytes: 5
  %loadMem_461128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461128 = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461128)
  store %struct.Memory* %call_461128, %struct.Memory** %MEMORY

  ; Code: movq $0x57e5fb, %r8	 RIP: 46112d	 Bytes: 10
  %loadMem_46112d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46112d = call %struct.Memory* @routine_movq__0x57e5fb___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46112d)
  store %struct.Memory* %call_46112d, %struct.Memory** %MEMORY

  ; Code: movq -0x498(%rbp), %rdi	 RIP: 461137	 Bytes: 7
  %loadMem_461137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461137 = call %struct.Memory* @routine_movq_MINUS0x498__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461137)
  store %struct.Memory* %call_461137, %struct.Memory** %MEMORY

  ; Code: movl -0x49c(%rbp), %esi	 RIP: 46113e	 Bytes: 6
  %loadMem_46113e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46113e = call %struct.Memory* @routine_movl_MINUS0x49c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46113e)
  store %struct.Memory* %call_46113e, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %edx	 RIP: 461144	 Bytes: 6
  %loadMem_461144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461144 = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461144)
  store %struct.Memory* %call_461144, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 46114a	 Bytes: 5
  %loadMem1_46114a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46114a = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46114a, i64 -299402, i64 5, i64 5)
  store %struct.Memory* %call1_46114a, %struct.Memory** %MEMORY

  %loadMem2_46114a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46114a = load i64, i64* %3
  %call2_46114a = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_46114a, %struct.Memory* %loadMem2_46114a)
  store %struct.Memory* %call2_46114a, %struct.Memory** %MEMORY

  ; Code: .L_46114f:	 RIP: 46114f	 Bytes: 0
  br label %block_.L_46114f
block_.L_46114f:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 46114f	 Bytes: 7
  %loadMem_46114f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46114f = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46114f)
  store %struct.Memory* %call_46114f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_461376	 RIP: 461156	 Bytes: 5
  %loadMem_461156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461156 = call %struct.Memory* @routine_jmpq_.L_461376(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461156, i64 544, i64 5)
  store %struct.Memory* %call_461156, %struct.Memory** %MEMORY

  br label %block_.L_461376

  ; Code: .L_46115b:	 RIP: 46115b	 Bytes: 0
block_.L_46115b:

  ; Code: movl $0x5, %eax	 RIP: 46115b	 Bytes: 5
  %loadMem_46115b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46115b = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46115b)
  store %struct.Memory* %call_46115b, %struct.Memory** %MEMORY

  ; Code: subl -0x2ec(%rbp), %eax	 RIP: 461160	 Bytes: 6
  %loadMem_461160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461160 = call %struct.Memory* @routine_subl_MINUS0x2ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461160)
  store %struct.Memory* %call_461160, %struct.Memory** %MEMORY

  ; Code: cmpl -0x490(%rbp), %eax	 RIP: 461166	 Bytes: 6
  %loadMem_461166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461166 = call %struct.Memory* @routine_cmpl_MINUS0x490__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461166)
  store %struct.Memory* %call_461166, %struct.Memory** %MEMORY

  ; Code: jle .L_46118f	 RIP: 46116c	 Bytes: 6
  %loadMem_46116c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46116c = call %struct.Memory* @routine_jle_.L_46118f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46116c, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_46116c, %struct.Memory** %MEMORY

  %loadBr_46116c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46116c = icmp eq i8 %loadBr_46116c, 1
  br i1 %cmpBr_46116c, label %block_.L_46118f, label %block_461172

block_461172:
  ; Code: movl $0x5, %eax	 RIP: 461172	 Bytes: 5
  %loadMem_461172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461172 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461172)
  store %struct.Memory* %call_461172, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %ecx	 RIP: 461177	 Bytes: 6
  %loadMem_461177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461177 = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461177)
  store %struct.Memory* %call_461177, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x48c(%rbp)	 RIP: 46117d	 Bytes: 6
  %loadMem_46117d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46117d = call %struct.Memory* @routine_movl__ecx__MINUS0x48c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46117d)
  store %struct.Memory* %call_46117d, %struct.Memory** %MEMORY

  ; Code: subl -0x2ec(%rbp), %eax	 RIP: 461183	 Bytes: 6
  %loadMem_461183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461183 = call %struct.Memory* @routine_subl_MINUS0x2ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461183)
  store %struct.Memory* %call_461183, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x490(%rbp)	 RIP: 461189	 Bytes: 6
  %loadMem_461189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461189 = call %struct.Memory* @routine_movl__eax__MINUS0x490__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461189)
  store %struct.Memory* %call_461189, %struct.Memory** %MEMORY

  ; Code: .L_46118f:	 RIP: 46118f	 Bytes: 0
  br label %block_.L_46118f
block_.L_46118f:

  ; Code: jmpq .L_461194	 RIP: 46118f	 Bytes: 5
  %loadMem_46118f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46118f = call %struct.Memory* @routine_jmpq_.L_461194(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46118f, i64 5, i64 5)
  store %struct.Memory* %call_46118f, %struct.Memory** %MEMORY

  br label %block_.L_461194

  ; Code: .L_461194:	 RIP: 461194	 Bytes: 0
block_.L_461194:

  ; Code: jmpq .L_461199	 RIP: 461194	 Bytes: 5
  %loadMem_461194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461194 = call %struct.Memory* @routine_jmpq_.L_461199(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461194, i64 5, i64 5)
  store %struct.Memory* %call_461194, %struct.Memory** %MEMORY

  br label %block_.L_461199

  ; Code: .L_461199:	 RIP: 461199	 Bytes: 0
block_.L_461199:

  ; Code: jmpq .L_4611a3	 RIP: 461199	 Bytes: 5
  %loadMem_461199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461199 = call %struct.Memory* @routine_jmpq_.L_4611a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461199, i64 10, i64 5)
  store %struct.Memory* %call_461199, %struct.Memory** %MEMORY

  br label %block_.L_4611a3

  ; Code: .L_46119e:	 RIP: 46119e	 Bytes: 0
block_.L_46119e:

  ; Code: callq .popgo	 RIP: 46119e	 Bytes: 5
  %loadMem1_46119e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46119e = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46119e, i64 -341054, i64 5, i64 5)
  store %struct.Memory* %call1_46119e, %struct.Memory** %MEMORY

  %loadMem2_46119e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46119e = load i64, i64* %3
  %call2_46119e = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46119e, %struct.Memory* %loadMem2_46119e)
  store %struct.Memory* %call2_46119e, %struct.Memory** %MEMORY

  ; Code: .L_4611a3:	 RIP: 4611a3	 Bytes: 0
  br label %block_.L_4611a3
block_.L_4611a3:

  ; Code: jmpq .L_4611a8	 RIP: 4611a3	 Bytes: 5
  %loadMem_4611a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611a3 = call %struct.Memory* @routine_jmpq_.L_4611a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611a3, i64 5, i64 5)
  store %struct.Memory* %call_4611a3, %struct.Memory** %MEMORY

  br label %block_.L_4611a8

  ; Code: .L_4611a8:	 RIP: 4611a8	 Bytes: 0
block_.L_4611a8:

  ; Code: jmpq .L_4611b2	 RIP: 4611a8	 Bytes: 5
  %loadMem_4611a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611a8 = call %struct.Memory* @routine_jmpq_.L_4611b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611a8, i64 10, i64 5)
  store %struct.Memory* %call_4611a8, %struct.Memory** %MEMORY

  br label %block_.L_4611b2

  ; Code: .L_4611ad:	 RIP: 4611ad	 Bytes: 0
block_.L_4611ad:

  ; Code: callq .popgo	 RIP: 4611ad	 Bytes: 5
  %loadMem1_4611ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4611ad = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4611ad, i64 -341069, i64 5, i64 5)
  store %struct.Memory* %call1_4611ad, %struct.Memory** %MEMORY

  %loadMem2_4611ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4611ad = load i64, i64* %3
  %call2_4611ad = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_4611ad, %struct.Memory* %loadMem2_4611ad)
  store %struct.Memory* %call2_4611ad, %struct.Memory** %MEMORY

  ; Code: .L_4611b2:	 RIP: 4611b2	 Bytes: 0
  br label %block_.L_4611b2
block_.L_4611b2:

  ; Code: jmpq .L_4612af	 RIP: 4611b2	 Bytes: 5
  %loadMem_4611b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611b2 = call %struct.Memory* @routine_jmpq_.L_4612af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611b2, i64 253, i64 5)
  store %struct.Memory* %call_4611b2, %struct.Memory** %MEMORY

  br label %block_.L_4612af

  ; Code: .L_4611b7:	 RIP: 4611b7	 Bytes: 0
block_.L_4611b7:

  ; Code: xorl %eax, %eax	 RIP: 4611b7	 Bytes: 2
  %loadMem_4611b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611b7 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611b7)
  store %struct.Memory* %call_4611b7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4611b9	 Bytes: 2
  %loadMem_4611b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611b9 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611b9)
  store %struct.Memory* %call_4611b9, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4611bb	 Bytes: 3
  %loadMem_4611bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611bb = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611bb)
  store %struct.Memory* %call_4611bb, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 4611be	 Bytes: 3
  %loadMem_4611be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611be = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611be)
  store %struct.Memory* %call_4611be, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 4611c1	 Bytes: 3
  %loadMem_4611c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611c1 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611c1)
  store %struct.Memory* %call_4611c1, %struct.Memory** %MEMORY

  ; Code: callq .do_find_defense	 RIP: 4611c4	 Bytes: 5
  %loadMem1_4611c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4611c4 = call %struct.Memory* @routine_callq_.do_find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4611c4, i64 9308, i64 5, i64 5)
  store %struct.Memory* %call1_4611c4, %struct.Memory** %MEMORY

  %loadMem2_4611c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4611c4 = load i64, i64* %3
  %call2_4611c4 = call %struct.Memory* @sub_463620.do_find_defense(%struct.State* %0, i64  %loadPC_4611c4, %struct.Memory* %loadMem2_4611c4)
  store %struct.Memory* %call2_4611c4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2ec(%rbp)	 RIP: 4611c9	 Bytes: 6
  %loadMem_4611c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611c9 = call %struct.Memory* @routine_movl__eax__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611c9)
  store %struct.Memory* %call_4611c9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, -0x2ec(%rbp)	 RIP: 4611cf	 Bytes: 7
  %loadMem_4611cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611cf = call %struct.Memory* @routine_cmpl__0x5__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611cf)
  store %struct.Memory* %call_4611cf, %struct.Memory** %MEMORY

  ; Code: je .L_4612a5	 RIP: 4611d6	 Bytes: 6
  %loadMem_4611d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611d6 = call %struct.Memory* @routine_je_.L_4612a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611d6, i8* %BRANCH_TAKEN, i64 207, i64 6, i64 6)
  store %struct.Memory* %call_4611d6, %struct.Memory** %MEMORY

  %loadBr_4611d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4611d6 = icmp eq i8 %loadBr_4611d6, 1
  br i1 %cmpBr_4611d6, label %block_.L_4612a5, label %block_4611dc

block_4611dc:
  ; Code: xorl %eax, %eax	 RIP: 4611dc	 Bytes: 2
  %loadMem_4611dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611dc = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611dc)
  store %struct.Memory* %call_4611dc, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4611de	 Bytes: 2
  %loadMem_4611de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611de = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611de)
  store %struct.Memory* %call_4611de, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4611e0	 Bytes: 3
  %loadMem_4611e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611e0 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611e0)
  store %struct.Memory* %call_4611e0, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 4611e3	 Bytes: 3
  %loadMem_4611e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611e3 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611e3)
  store %struct.Memory* %call_4611e3, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 4611e6	 Bytes: 3
  %loadMem_4611e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611e6 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611e6)
  store %struct.Memory* %call_4611e6, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 4611e9	 Bytes: 5
  %loadMem1_4611e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4611e9 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4611e9, i64 -13577, i64 5, i64 5)
  store %struct.Memory* %call1_4611e9, %struct.Memory** %MEMORY

  %loadMem2_4611e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4611e9 = load i64, i64* %3
  %call2_4611e9 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_4611e9, %struct.Memory* %loadMem2_4611e9)
  store %struct.Memory* %call2_4611e9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4611ee	 Bytes: 3
  %loadMem_4611ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611ee = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611ee)
  store %struct.Memory* %call_4611ee, %struct.Memory** %MEMORY

  ; Code: je .L_4612a5	 RIP: 4611f1	 Bytes: 6
  %loadMem_4611f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611f1 = call %struct.Memory* @routine_je_.L_4612a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611f1, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_4611f1, %struct.Memory** %MEMORY

  %loadBr_4611f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4611f1 = icmp eq i8 %loadBr_4611f1, 1
  br i1 %cmpBr_4611f1, label %block_.L_4612a5, label %block_4611f7

block_4611f7:
  ; Code: callq .popgo	 RIP: 4611f7	 Bytes: 5
  %loadMem1_4611f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4611f7 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4611f7, i64 -341143, i64 5, i64 5)
  store %struct.Memory* %call1_4611f7, %struct.Memory** %MEMORY

  %loadMem2_4611f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4611f7 = load i64, i64* %3
  %call2_4611f7 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_4611f7, %struct.Memory* %loadMem2_4611f7)
  store %struct.Memory* %call2_4611f7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x2ec(%rbp)	 RIP: 4611fc	 Bytes: 7
  %loadMem_4611fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4611fc = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4611fc)
  store %struct.Memory* %call_4611fc, %struct.Memory** %MEMORY

  ; Code: jne .L_461262	 RIP: 461203	 Bytes: 6
  %loadMem_461203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461203 = call %struct.Memory* @routine_jne_.L_461262(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461203, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_461203, %struct.Memory** %MEMORY

  %loadBr_461203 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461203 = icmp eq i8 %loadBr_461203, 1
  br i1 %cmpBr_461203, label %block_.L_461262, label %block_461209

block_461209:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 461209	 Bytes: 5
  %loadMem_461209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461209 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461209)
  store %struct.Memory* %call_461209, %struct.Memory** %MEMORY

  ; Code: je .L_461220	 RIP: 46120e	 Bytes: 6
  %loadMem_46120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46120e = call %struct.Memory* @routine_je_.L_461220(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46120e, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_46120e, %struct.Memory** %MEMORY

  %loadBr_46120e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46120e = icmp eq i8 %loadBr_46120e, 1
  br i1 %cmpBr_46120e, label %block_.L_461220, label %block_461214

block_461214:
  ; Code: movl -0x554(%rbp), %eax	 RIP: 461214	 Bytes: 6
  %loadMem_461214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461214 = call %struct.Memory* @routine_movl_MINUS0x554__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461214)
  store %struct.Memory* %call_461214, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 46121a	 Bytes: 4
  %loadMem_46121a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46121a = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46121a)
  store %struct.Memory* %call_46121a, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 46121e	 Bytes: 2
  %loadMem_46121e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46121e = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46121e)
  store %struct.Memory* %call_46121e, %struct.Memory** %MEMORY

  ; Code: .L_461220:	 RIP: 461220	 Bytes: 0
  br label %block_.L_461220
block_.L_461220:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 461220	 Bytes: 9
  %loadMem_461220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461220 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461220)
  store %struct.Memory* %call_461220, %struct.Memory** %MEMORY

  ; Code: je .L_461256	 RIP: 461229	 Bytes: 6
  %loadMem_461229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461229 = call %struct.Memory* @routine_je_.L_461256(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461229, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_461229, %struct.Memory** %MEMORY

  %loadBr_461229 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461229 = icmp eq i8 %loadBr_461229, 1
  br i1 %cmpBr_461229, label %block_.L_461256, label %block_46122f

block_46122f:
  ; Code: movl $0x5, %ecx	 RIP: 46122f	 Bytes: 5
  %loadMem_46122f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46122f = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46122f)
  store %struct.Memory* %call_46122f, %struct.Memory** %MEMORY

  ; Code: movq $0x57e5fb, %r8	 RIP: 461234	 Bytes: 10
  %loadMem_461234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461234 = call %struct.Memory* @routine_movq__0x57e5fb___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461234)
  store %struct.Memory* %call_461234, %struct.Memory** %MEMORY

  ; Code: movq -0x498(%rbp), %rdi	 RIP: 46123e	 Bytes: 7
  %loadMem_46123e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46123e = call %struct.Memory* @routine_movq_MINUS0x498__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46123e)
  store %struct.Memory* %call_46123e, %struct.Memory** %MEMORY

  ; Code: movl -0x49c(%rbp), %esi	 RIP: 461245	 Bytes: 6
  %loadMem_461245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461245 = call %struct.Memory* @routine_movl_MINUS0x49c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461245)
  store %struct.Memory* %call_461245, %struct.Memory** %MEMORY

  ; Code: movl -0x554(%rbp), %edx	 RIP: 46124b	 Bytes: 6
  %loadMem_46124b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46124b = call %struct.Memory* @routine_movl_MINUS0x554__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46124b)
  store %struct.Memory* %call_46124b, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 461251	 Bytes: 5
  %loadMem1_461251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461251 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461251, i64 -299665, i64 5, i64 5)
  store %struct.Memory* %call1_461251, %struct.Memory** %MEMORY

  %loadMem2_461251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461251 = load i64, i64* %3
  %call2_461251 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_461251, %struct.Memory* %loadMem2_461251)
  store %struct.Memory* %call2_461251, %struct.Memory** %MEMORY

  ; Code: .L_461256:	 RIP: 461256	 Bytes: 0
  br label %block_.L_461256
block_.L_461256:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 461256	 Bytes: 7
  %loadMem_461256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461256 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461256)
  store %struct.Memory* %call_461256, %struct.Memory** %MEMORY

  ; Code: jmpq .L_461376	 RIP: 46125d	 Bytes: 5
  %loadMem_46125d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46125d = call %struct.Memory* @routine_jmpq_.L_461376(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46125d, i64 281, i64 5)
  store %struct.Memory* %call_46125d, %struct.Memory** %MEMORY

  br label %block_.L_461376

  ; Code: .L_461262:	 RIP: 461262	 Bytes: 0
block_.L_461262:

  ; Code: movl $0x5, %eax	 RIP: 461262	 Bytes: 5
  %loadMem_461262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461262 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461262)
  store %struct.Memory* %call_461262, %struct.Memory** %MEMORY

  ; Code: subl -0x2ec(%rbp), %eax	 RIP: 461267	 Bytes: 6
  %loadMem_461267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461267 = call %struct.Memory* @routine_subl_MINUS0x2ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461267)
  store %struct.Memory* %call_461267, %struct.Memory** %MEMORY

  ; Code: cmpl -0x490(%rbp), %eax	 RIP: 46126d	 Bytes: 6
  %loadMem_46126d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46126d = call %struct.Memory* @routine_cmpl_MINUS0x490__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46126d)
  store %struct.Memory* %call_46126d, %struct.Memory** %MEMORY

  ; Code: jle .L_461296	 RIP: 461273	 Bytes: 6
  %loadMem_461273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461273 = call %struct.Memory* @routine_jle_.L_461296(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461273, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_461273, %struct.Memory** %MEMORY

  %loadBr_461273 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461273 = icmp eq i8 %loadBr_461273, 1
  br i1 %cmpBr_461273, label %block_.L_461296, label %block_461279

block_461279:
  ; Code: movl $0x5, %eax	 RIP: 461279	 Bytes: 5
  %loadMem_461279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461279 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461279)
  store %struct.Memory* %call_461279, %struct.Memory** %MEMORY

  ; Code: movl -0x554(%rbp), %ecx	 RIP: 46127e	 Bytes: 6
  %loadMem_46127e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46127e = call %struct.Memory* @routine_movl_MINUS0x554__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46127e)
  store %struct.Memory* %call_46127e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x48c(%rbp)	 RIP: 461284	 Bytes: 6
  %loadMem_461284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461284 = call %struct.Memory* @routine_movl__ecx__MINUS0x48c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461284)
  store %struct.Memory* %call_461284, %struct.Memory** %MEMORY

  ; Code: subl -0x2ec(%rbp), %eax	 RIP: 46128a	 Bytes: 6
  %loadMem_46128a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46128a = call %struct.Memory* @routine_subl_MINUS0x2ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46128a)
  store %struct.Memory* %call_46128a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x490(%rbp)	 RIP: 461290	 Bytes: 6
  %loadMem_461290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461290 = call %struct.Memory* @routine_movl__eax__MINUS0x490__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461290)
  store %struct.Memory* %call_461290, %struct.Memory** %MEMORY

  ; Code: .L_461296:	 RIP: 461296	 Bytes: 0
  br label %block_.L_461296
block_.L_461296:

  ; Code: jmpq .L_46129b	 RIP: 461296	 Bytes: 5
  %loadMem_461296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461296 = call %struct.Memory* @routine_jmpq_.L_46129b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461296, i64 5, i64 5)
  store %struct.Memory* %call_461296, %struct.Memory** %MEMORY

  br label %block_.L_46129b

  ; Code: .L_46129b:	 RIP: 46129b	 Bytes: 0
block_.L_46129b:

  ; Code: jmpq .L_4612a0	 RIP: 46129b	 Bytes: 5
  %loadMem_46129b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46129b = call %struct.Memory* @routine_jmpq_.L_4612a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46129b, i64 5, i64 5)
  store %struct.Memory* %call_46129b, %struct.Memory** %MEMORY

  br label %block_.L_4612a0

  ; Code: .L_4612a0:	 RIP: 4612a0	 Bytes: 0
block_.L_4612a0:

  ; Code: jmpq .L_4612aa	 RIP: 4612a0	 Bytes: 5
  %loadMem_4612a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612a0 = call %struct.Memory* @routine_jmpq_.L_4612aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612a0, i64 10, i64 5)
  store %struct.Memory* %call_4612a0, %struct.Memory** %MEMORY

  br label %block_.L_4612aa

  ; Code: .L_4612a5:	 RIP: 4612a5	 Bytes: 0
block_.L_4612a5:

  ; Code: callq .popgo	 RIP: 4612a5	 Bytes: 5
  %loadMem1_4612a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4612a5 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4612a5, i64 -341317, i64 5, i64 5)
  store %struct.Memory* %call1_4612a5, %struct.Memory** %MEMORY

  %loadMem2_4612a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4612a5 = load i64, i64* %3
  %call2_4612a5 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_4612a5, %struct.Memory* %loadMem2_4612a5)
  store %struct.Memory* %call2_4612a5, %struct.Memory** %MEMORY

  ; Code: .L_4612aa:	 RIP: 4612aa	 Bytes: 0
  br label %block_.L_4612aa
block_.L_4612aa:

  ; Code: jmpq .L_4612af	 RIP: 4612aa	 Bytes: 5
  %loadMem_4612aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612aa = call %struct.Memory* @routine_jmpq_.L_4612af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612aa, i64 5, i64 5)
  store %struct.Memory* %call_4612aa, %struct.Memory** %MEMORY

  br label %block_.L_4612af

  ; Code: .L_4612af:	 RIP: 4612af	 Bytes: 0
block_.L_4612af:

  ; Code: jmpq .L_4612b4	 RIP: 4612af	 Bytes: 5
  %loadMem_4612af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612af = call %struct.Memory* @routine_jmpq_.L_4612b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612af, i64 5, i64 5)
  store %struct.Memory* %call_4612af, %struct.Memory** %MEMORY

  br label %block_.L_4612b4

  ; Code: .L_4612b4:	 RIP: 4612b4	 Bytes: 0
block_.L_4612b4:

  ; Code: jmpq .L_4612b9	 RIP: 4612b4	 Bytes: 5
  %loadMem_4612b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612b4 = call %struct.Memory* @routine_jmpq_.L_4612b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612b4, i64 5, i64 5)
  store %struct.Memory* %call_4612b4, %struct.Memory** %MEMORY

  br label %block_.L_4612b9

  ; Code: .L_4612b9:	 RIP: 4612b9	 Bytes: 0
block_.L_4612b9:

  ; Code: movl -0x2f0(%rbp), %eax	 RIP: 4612b9	 Bytes: 6
  %loadMem_4612b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612b9 = call %struct.Memory* @routine_movl_MINUS0x2f0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612b9)
  store %struct.Memory* %call_4612b9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4612bf	 Bytes: 3
  %loadMem_4612bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612bf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612bf)
  store %struct.Memory* %call_4612bf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f0(%rbp)	 RIP: 4612c2	 Bytes: 6
  %loadMem_4612c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612c2 = call %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612c2)
  store %struct.Memory* %call_4612c2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_460fc0	 RIP: 4612c8	 Bytes: 5
  %loadMem_4612c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612c8 = call %struct.Memory* @routine_jmpq_.L_460fc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612c8, i64 -776, i64 5)
  store %struct.Memory* %call_4612c8, %struct.Memory** %MEMORY

  br label %block_.L_460fc0

  ; Code: .L_4612cd:	 RIP: 4612cd	 Bytes: 0
block_.L_4612cd:

  ; Code: jmpq .L_4612d2	 RIP: 4612cd	 Bytes: 5
  %loadMem_4612cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612cd = call %struct.Memory* @routine_jmpq_.L_4612d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612cd, i64 5, i64 5)
  store %struct.Memory* %call_4612cd, %struct.Memory** %MEMORY

  br label %block_.L_4612d2

  ; Code: .L_4612d2:	 RIP: 4612d2	 Bytes: 0
block_.L_4612d2:

  ; Code: jmpq .L_4612d7	 RIP: 4612d2	 Bytes: 5
  %loadMem_4612d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612d2 = call %struct.Memory* @routine_jmpq_.L_4612d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612d2, i64 5, i64 5)
  store %struct.Memory* %call_4612d2, %struct.Memory** %MEMORY

  br label %block_.L_4612d7

  ; Code: .L_4612d7:	 RIP: 4612d7	 Bytes: 0
block_.L_4612d7:

  ; Code: jmpq .L_4612dc	 RIP: 4612d7	 Bytes: 5
  %loadMem_4612d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612d7 = call %struct.Memory* @routine_jmpq_.L_4612dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612d7, i64 5, i64 5)
  store %struct.Memory* %call_4612d7, %struct.Memory** %MEMORY

  br label %block_.L_4612dc

  ; Code: .L_4612dc:	 RIP: 4612dc	 Bytes: 0
block_.L_4612dc:

  ; Code: cmpl $0x0, -0x490(%rbp)	 RIP: 4612dc	 Bytes: 7
  %loadMem_4612dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612dc = call %struct.Memory* @routine_cmpl__0x0__MINUS0x490__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612dc)
  store %struct.Memory* %call_4612dc, %struct.Memory** %MEMORY

  ; Code: je .L_46133c	 RIP: 4612e3	 Bytes: 6
  %loadMem_4612e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612e3 = call %struct.Memory* @routine_je_.L_46133c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612e3, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_4612e3, %struct.Memory** %MEMORY

  %loadBr_4612e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4612e3 = icmp eq i8 %loadBr_4612e3, 1
  br i1 %cmpBr_4612e3, label %block_.L_46133c, label %block_4612e9

block_4612e9:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 4612e9	 Bytes: 5
  %loadMem_4612e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612e9 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612e9)
  store %struct.Memory* %call_4612e9, %struct.Memory** %MEMORY

  ; Code: je .L_461300	 RIP: 4612ee	 Bytes: 6
  %loadMem_4612ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612ee = call %struct.Memory* @routine_je_.L_461300(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612ee, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4612ee, %struct.Memory** %MEMORY

  %loadBr_4612ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4612ee = icmp eq i8 %loadBr_4612ee, 1
  br i1 %cmpBr_4612ee, label %block_.L_461300, label %block_4612f4

block_4612f4:
  ; Code: movl -0x48c(%rbp), %eax	 RIP: 4612f4	 Bytes: 6
  %loadMem_4612f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612f4 = call %struct.Memory* @routine_movl_MINUS0x48c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612f4)
  store %struct.Memory* %call_4612f4, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 4612fa	 Bytes: 4
  %loadMem_4612fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612fa = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612fa)
  store %struct.Memory* %call_4612fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 4612fe	 Bytes: 2
  %loadMem_4612fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4612fe = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4612fe)
  store %struct.Memory* %call_4612fe, %struct.Memory** %MEMORY

  ; Code: .L_461300:	 RIP: 461300	 Bytes: 0
  br label %block_.L_461300
block_.L_461300:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 461300	 Bytes: 9
  %loadMem_461300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461300 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461300)
  store %struct.Memory* %call_461300, %struct.Memory** %MEMORY

  ; Code: je .L_461337	 RIP: 461309	 Bytes: 6
  %loadMem_461309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461309 = call %struct.Memory* @routine_je_.L_461337(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461309, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_461309, %struct.Memory** %MEMORY

  %loadBr_461309 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461309 = icmp eq i8 %loadBr_461309, 1
  br i1 %cmpBr_461309, label %block_.L_461337, label %block_46130f

block_46130f:
  ; Code: movq $0x57f60a, %r8	 RIP: 46130f	 Bytes: 10
  %loadMem_46130f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46130f = call %struct.Memory* @routine_movq__0x57f60a___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46130f)
  store %struct.Memory* %call_46130f, %struct.Memory** %MEMORY

  ; Code: movq -0x498(%rbp), %rdi	 RIP: 461319	 Bytes: 7
  %loadMem_461319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461319 = call %struct.Memory* @routine_movq_MINUS0x498__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461319)
  store %struct.Memory* %call_461319, %struct.Memory** %MEMORY

  ; Code: movl -0x49c(%rbp), %esi	 RIP: 461320	 Bytes: 6
  %loadMem_461320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461320 = call %struct.Memory* @routine_movl_MINUS0x49c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461320)
  store %struct.Memory* %call_461320, %struct.Memory** %MEMORY

  ; Code: movl -0x48c(%rbp), %edx	 RIP: 461326	 Bytes: 6
  %loadMem_461326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461326 = call %struct.Memory* @routine_movl_MINUS0x48c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461326)
  store %struct.Memory* %call_461326, %struct.Memory** %MEMORY

  ; Code: movl -0x490(%rbp), %ecx	 RIP: 46132c	 Bytes: 6
  %loadMem_46132c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46132c = call %struct.Memory* @routine_movl_MINUS0x490__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46132c)
  store %struct.Memory* %call_46132c, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 461332	 Bytes: 5
  %loadMem1_461332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461332 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461332, i64 -299890, i64 5, i64 5)
  store %struct.Memory* %call1_461332, %struct.Memory** %MEMORY

  %loadMem2_461332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461332 = load i64, i64* %3
  %call2_461332 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_461332, %struct.Memory* %loadMem2_461332)
  store %struct.Memory* %call2_461332, %struct.Memory** %MEMORY

  ; Code: .L_461337:	 RIP: 461337	 Bytes: 0
  br label %block_.L_461337
block_.L_461337:

  ; Code: jmpq .L_46136d	 RIP: 461337	 Bytes: 5
  %loadMem_461337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461337 = call %struct.Memory* @routine_jmpq_.L_46136d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461337, i64 54, i64 5)
  store %struct.Memory* %call_461337, %struct.Memory** %MEMORY

  br label %block_.L_46136d

  ; Code: .L_46133c:	 RIP: 46133c	 Bytes: 0
block_.L_46133c:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 46133c	 Bytes: 9
  %loadMem_46133c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46133c = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46133c)
  store %struct.Memory* %call_46133c, %struct.Memory** %MEMORY

  ; Code: je .L_461368	 RIP: 461345	 Bytes: 6
  %loadMem_461345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461345 = call %struct.Memory* @routine_je_.L_461368(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461345, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_461345, %struct.Memory** %MEMORY

  %loadBr_461345 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461345 = icmp eq i8 %loadBr_461345, 1
  br i1 %cmpBr_461345, label %block_.L_461368, label %block_46134b

block_46134b:
  ; Code: xorl %eax, %eax	 RIP: 46134b	 Bytes: 2
  %loadMem_46134b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46134b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46134b)
  store %struct.Memory* %call_46134b, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 46134d	 Bytes: 2
  %loadMem_46134d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46134d = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46134d)
  store %struct.Memory* %call_46134d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %r8d	 RIP: 46134f	 Bytes: 3
  %loadMem_46134f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46134f = call %struct.Memory* @routine_movl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46134f)
  store %struct.Memory* %call_46134f, %struct.Memory** %MEMORY

  ; Code: movq -0x498(%rbp), %rdi	 RIP: 461352	 Bytes: 7
  %loadMem_461352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461352 = call %struct.Memory* @routine_movq_MINUS0x498__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461352)
  store %struct.Memory* %call_461352, %struct.Memory** %MEMORY

  ; Code: movl -0x49c(%rbp), %esi	 RIP: 461359	 Bytes: 6
  %loadMem_461359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461359 = call %struct.Memory* @routine_movl_MINUS0x49c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461359)
  store %struct.Memory* %call_461359, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 46135f	 Bytes: 2
  %loadMem_46135f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46135f = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46135f)
  store %struct.Memory* %call_46135f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 461361	 Bytes: 2
  %loadMem_461361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461361 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461361)
  store %struct.Memory* %call_461361, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 461363	 Bytes: 5
  %loadMem1_461363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461363 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461363, i64 -299939, i64 5, i64 5)
  store %struct.Memory* %call1_461363, %struct.Memory** %MEMORY

  %loadMem2_461363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461363 = load i64, i64* %3
  %call2_461363 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_461363, %struct.Memory* %loadMem2_461363)
  store %struct.Memory* %call2_461363, %struct.Memory** %MEMORY

  ; Code: .L_461368:	 RIP: 461368	 Bytes: 0
  br label %block_.L_461368
block_.L_461368:

  ; Code: jmpq .L_46136d	 RIP: 461368	 Bytes: 5
  %loadMem_461368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461368 = call %struct.Memory* @routine_jmpq_.L_46136d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461368, i64 5, i64 5)
  store %struct.Memory* %call_461368, %struct.Memory** %MEMORY

  br label %block_.L_46136d

  ; Code: .L_46136d:	 RIP: 46136d	 Bytes: 0
block_.L_46136d:

  ; Code: movl -0x490(%rbp), %eax	 RIP: 46136d	 Bytes: 6
  %loadMem_46136d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46136d = call %struct.Memory* @routine_movl_MINUS0x490__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46136d)
  store %struct.Memory* %call_46136d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 461373	 Bytes: 3
  %loadMem_461373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461373 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461373)
  store %struct.Memory* %call_461373, %struct.Memory** %MEMORY

  ; Code: .L_461376:	 RIP: 461376	 Bytes: 0
  br label %block_.L_461376
block_.L_461376:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 461376	 Bytes: 3
  %loadMem_461376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461376 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461376)
  store %struct.Memory* %call_461376, %struct.Memory** %MEMORY

  ; Code: addq $0x5d8, %rsp	 RIP: 461379	 Bytes: 7
  %loadMem_461379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461379 = call %struct.Memory* @routine_addq__0x5d8___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461379)
  store %struct.Memory* %call_461379, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 461380	 Bytes: 1
  %loadMem_461380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461380 = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461380)
  store %struct.Memory* %call_461380, %struct.Memory** %MEMORY

  ; Code: popq %r12	 RIP: 461381	 Bytes: 2
  %loadMem_461381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461381 = call %struct.Memory* @routine_popq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461381)
  store %struct.Memory* %call_461381, %struct.Memory** %MEMORY

  ; Code: popq %r13	 RIP: 461383	 Bytes: 2
  %loadMem_461383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461383 = call %struct.Memory* @routine_popq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461383)
  store %struct.Memory* %call_461383, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 461385	 Bytes: 2
  %loadMem_461385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461385 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461385)
  store %struct.Memory* %call_461385, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 461387	 Bytes: 2
  %loadMem_461387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461387 = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461387)
  store %struct.Memory* %call_461387, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 461389	 Bytes: 1
  %loadMem_461389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461389 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461389)
  store %struct.Memory* %call_461389, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 46138a	 Bytes: 1
  %loadMem_46138a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46138a = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46138a)
  store %struct.Memory* %call_46138a, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_46138a
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


define %struct.Memory* @routine_pushq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R15
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R14
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R13
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R12
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 1
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_subq__0x5d8___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1496)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x57fe4e___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x57fe4e_type* @G__0x57fe4e to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x3___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 3)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDI
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

define %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_subl_MINUS0x44__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 68
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl__r8d__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 748
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x48c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1164
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x490__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movq__rax__MINUS0x498__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1176
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
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


define %struct.Memory* @routine_movl__ecx__MINUS0x49c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1180
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0xae23a4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xae23a4_type* @G_0xae23a4 to i64))
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


define %struct.Memory* @routine_movl__ecx__0xae23a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xae23a4_type* @G_0xae23a4 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x2f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 760
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_je_.L_45fffb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
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

define %struct.Memory* @routine_jne_.L_460000(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_460028(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57fb0d_type* @G__0x57fb0d to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xaef___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 2799)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57fbff___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fbff_type* @G__0x57fbff to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4294967295)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__eax___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
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


define %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xb54ce4_type* @G_0xb54ce4 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_cmpl_0xb8b854___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb8b854_type* @G_0xb8b854 to i64))
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

define %struct.Memory* @routine_jle_.L_460079(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_460041(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
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

define %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0ef8_type* @G_0xab0ef8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_46006d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__ecx___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x498__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x49c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_callq_.sgf_trace(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_461376(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x2d0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 720
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.chainlinks2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x2e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x2e8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 744
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_jge_.L_4601c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x488__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x2e8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 744
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2d0__rbp__rax_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -720
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_callq_.break_chain_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_callq_.findlib(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x558__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1368
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x4a4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 760
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_460154(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x4a4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x488__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -1160
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_cmpl_MINUS0x4a0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 1184
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_46013b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x3c0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -960
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_addl__0x0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__MINUS0x3c0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -960
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_460154(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_460140(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl__eax__MINUS0x4a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1188
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4600f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_4601a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x32__MINUS0x2f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 760
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 50)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4601a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x4a0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x2f8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 760
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x488__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -1160
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl__0x0__MINUS0x3c0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -960
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_MINUS0x2f8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 760
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x2f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 760
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4601ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4601b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_46009a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_callq_.double_atari_chain2_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 3)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x2e4__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0x2d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 728
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x3__MINUS0x2d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 728
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_460201(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_460272(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0xb02___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 2818)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57fd0a___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fd0a_type* @G__0x57fd0a to i64))
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




define %struct.Memory* @routine_movl__eax__MINUS0x55c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1372
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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


define %struct.Memory* @routine_movq__rdx__MINUS0x568__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1384
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
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


define %struct.Memory* @routine_movl_MINUS0x55c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1372
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x56c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1388
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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


define %struct.Memory* @routine_movq_MINUS0x568__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1384
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x570__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1392
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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


define %struct.Memory* @routine_movl_MINUS0x56c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1388
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x570__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1392
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__0x0__MINUS0x2f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 752
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x3__MINUS0x2f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 752
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_460535(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x2f0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2e4__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -740
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__ecx__MINUS0x4a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1192
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0xb54ce4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xb54ce4_type* @G_0xb54ce4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl_0xb060b8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb060b8_type* @G_0xb060b8 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_460350(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jg_.L_460339(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x4a8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 72
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_460339(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jne_.L_460350(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x4a8__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.is_self_atari(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_46041f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_460355(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x4ac__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_4603c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x4ac__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl_MINUS0x4a8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 1192
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4603a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_4603c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4603ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x4ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1196
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46035f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_460415(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jge_.L_460415(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_jmpq_.L_46041a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_46041f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_leaq_MINUS0x2d4__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 724
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x4a8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.edge_closing_backfill(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_46050c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_460442(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1200
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x4b0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_4604ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x4b0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl_MINUS0x2d4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 724
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_460495(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_4604ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_46049a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x4b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1200
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46044c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_460502(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jge_.L_460502(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 724
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_jmpq_.L_460507(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_46050c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_leaq_MINUS0x488__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_callq_.edge_block_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_46027c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_leaq_MINUS0x488__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x2e4__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x2d8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 728
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.propose_edge_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x498__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.order_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_460869(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl_0xb6308c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb6308c_type* @G_0xb6308c to i64))
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

define %struct.Memory* @routine_jl_.L_4605b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x2f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 752
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_4605b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_460869(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__al___cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movslq_MINUS0x2f0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 752
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x488__rbp__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1160
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__eax__MINUS0x2d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 724
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 724
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_0xb54ce4___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 ptrtoint( %G_0xb54ce4_type* @G_0xb54ce4 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpl_0xb8b850___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb8b850_type* @G_0xb8b850 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__r9d__MINUS0x574__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1396
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edi__MINUS0x578__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1400
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x57c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1404
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x580__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1408
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x584__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1412
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl__MINUS0x585__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1413
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jg_.L_46062b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x490__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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


define %struct.Memory* @routine_movb__al__MINUS0x585__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1413
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
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

define %struct.Memory* @routine_movb_MINUS0x585__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1413
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__0x57fe92___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fe92_type* @G__0x57fe92 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x4b4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x4b8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x4bc__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1212
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_movzbl__al___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %R8D = bitcast %union.anon* %12 to i32*
  %13 = bitcast i32* %R8D to i64*
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x578__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1400
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdi__MINUS0x590__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1424
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r9d___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x57c__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1404
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x598__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1432
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r10d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x580__rbp____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1408
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x5a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1440
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r11d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R11D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x584__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1412
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r8d__MINUS0x5a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1444
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ebx___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EBX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x574__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1396
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x5a0__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r14____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %R14
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x598__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1432
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r15__0x8__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x590__rbp____r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1424
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %R12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x5a4__rbp____r13d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R13D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1444
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r13d__0x18__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 24
  %14 = load i32, i32* %R13D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.komaster_trymove(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_460850(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x4bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1212
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4607ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x4b4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x4b8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.do_find_defense(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x5__MINUS0x2ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 748
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4607e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_callq_.do_attack(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.popgo(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x2ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 748
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4607a1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_46075f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_je_.L_460795(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x5___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 5)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57e5fb___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57e5fb_type* @G__0x57e5fb to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 724
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x5___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 5)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl_MINUS0x2ec__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 748
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl_MINUS0x490__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_4607d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 724
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x48c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1164
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__eax__MINUS0x490__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4607da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4607df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4607e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_46084b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














define %struct.Memory* @routine_cmpl__0x5___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_460846(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movl__eax__MINUS0x48c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x1__MINUS0x490__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_460850(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_460855(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_46057b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl_0xb060b8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb060b8_type* @G_0xb060b8 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_460950(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x2d4__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 724
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_callq_.find_cap(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x4c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1216
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_subl_MINUS0x4c0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 1216
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_460905(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_4608c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_4608f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57fde6___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57fde6_type* @G__0x57fde6 to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_subl_MINUS0x4c0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1216
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_subl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jle_.L_460941(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_460946(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_46094b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_460950(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl_0xb54ce0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb54ce0_type* @G_0xb54ce0 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_460a37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_callq_.draw_back(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x4c4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1220
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_subl_MINUS0x4c4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 1220
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_4609ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_4609aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_4609e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57fdf0___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57fdf0_type* @G__0x57fdf0 to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_subl_MINUS0x4c4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1220
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_jle_.L_460a28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_460a2d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_460a32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_460a37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl_0xb8af28___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb8af28_type* @G_0xb8af28 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_460f6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 2)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x4c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1224
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_jge_.L_460c4d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x4d0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__0x4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 4)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_xorl__esi___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
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


define %struct.Memory* @routine_movl_MINUS0x4d0__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x5a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1448
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.approxlib(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_460af1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x4cc__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1228
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jmpq_.L_460c39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


















define %struct.Memory* @routine_callq_.break_chain2_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x2__MINUS0x2f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 752
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_460c34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_460b46(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1236
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x4d4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_460bba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x4d4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpl_MINUS0x4d0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %20 = add i64 %17, -1232
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jne_.L_460ba1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_460bba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_460ba6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x4d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1236
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_460b50(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_460c16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jge_.L_460c16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x4d0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -1232
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movslq_MINUS0x2f8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 760
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x488__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -1160
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl__0x0__MINUS0x3c0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %12, -960
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_MINUS0x2f8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 760
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__MINUS0x2f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 760
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_460c1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_460c20(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_460b34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jmpq_.L_460a78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_movl_MINUS0x4c8__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1224
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x4c8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x2f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 752
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jge_.L_460f67(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jl_.L_460cb1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jle_.L_460cb1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_460f67(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


























define %struct.Memory* @routine_movl__r9d__MINUS0x5ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1452
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edi__MINUS0x5b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1456
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x5b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1460
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x5b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1464
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x5bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1468
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movb__cl__MINUS0x5bd__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1469
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jg_.L_460d29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movb__al__MINUS0x5bd__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1469
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x5bd__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1469
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__0x57fdfa___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fdfa_type* @G__0x57fdfa to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x4d8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x4dc__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1244
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x4e0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x5b0__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1456
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdi__MINUS0x5c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1480
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x5b4__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1460
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x5d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1488
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x5b8__rbp____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1464
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x5d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1496
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x5bc__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1468
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r8d__MINUS0x5dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1500
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x5ac__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1452
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x5d8__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1496
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x5d0__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1488
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x5c8__rbp____r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1480
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x5dc__rbp____r13d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R13D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1500
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_je_.L_460f4e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x4e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_460eec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x4d8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x4dc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1244
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_460ee2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_460e9f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_460e5d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_460e93(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jle_.L_460ed3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_460ed8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_460edd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_460ee7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_460f49(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}
















define %struct.Memory* @routine_je_.L_460f44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_jmpq_.L_460f4e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_460f53(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_460c79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_460f6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0xa__0x7ae448(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7ae448_type* @G_0x7ae448 to i64), i64 10)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jl_.L_4612d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_4612d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x4e4__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1252
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_leaq_MINUS0x550__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1360
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.find_superstring_liberties(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x5__MINUS0x4e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1252
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_4612d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl_MINUS0x4e4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1252
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4612cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x550__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -1360
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__ecx__MINUS0x554__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1364
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x554__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1364
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.liberty_of_string(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_461002(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4612b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57fe04___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fe04_type* @G__0x57fe04 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_callq_.trymove(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_4612b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.countlib(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_4611b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movl__eax__MINUS0x5e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1504
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jle_.L_4611ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57fe0e___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fe0e_type* @G__0x57fe0e to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_je_.L_4611a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_je_.L_46119e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_46115b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_461119(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_46114f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jle_.L_46118f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_461194(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_461199(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4611a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_4611a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4611b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_4612af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


















define %struct.Memory* @routine_je_.L_4612a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_461262(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_461220(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x554__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1364
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_461256(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_MINUS0x554__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1364
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_jle_.L_461296(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x554__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1364
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jmpq_.L_46129b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4612a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4612aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jmpq_.L_4612b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jmpq_.L_460fc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4612d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4612d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4612dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_46133c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_461300(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x48c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_461337(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57f60a___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57f60a_type* @G__0x57f60a to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_MINUS0x48c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x490__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_46136d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_461368(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movl_MINUS0x490__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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

define %struct.Memory* @routine_addq__0x5d8___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1496)
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

define %struct.Memory* @routine_popq__rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %RBX)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R12)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R13)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R14)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R15)
  ret %struct.Memory* %11
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

