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

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_46a780.find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_46ada0.defend_both(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0x5800a9_type = type <{ [8 x i8] }>
@G__0x5800a9= global %G__0x5800a9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5800c0_type = type <{ [8 x i8] }>
@G__0x5800c0= global %G__0x5800c0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5800d7_type = type <{ [8 x i8] }>
@G__0x5800d7= global %G__0x5800d7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5800ee_type = type <{ [8 x i8] }>
@G__0x5800ee= global %G__0x5800ee_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x580105_type = type <{ [8 x i8] }>
@G__0x580105= global %G__0x580105_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58011c_type = type <{ [8 x i8] }>
@G__0x58011c= global %G__0x58011c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x580133_type = type <{ [8 x i8] }>
@G__0x580133= global %G__0x580133_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @break_through_helper(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .break_through_helper:	 RIP: 46b820	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 46b820	 Bytes: 1
  %loadMem_46b820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b820 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b820)
  store %struct.Memory* %call_46b820, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 46b821	 Bytes: 3
  %loadMem_46b821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b821 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b821)
  store %struct.Memory* %call_46b821, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 46b824	 Bytes: 1
  %loadMem_46b824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b824 = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b824)
  store %struct.Memory* %call_46b824, %struct.Memory** %MEMORY

  ; Code: subq $0x38, %rsp	 RIP: 46b825	 Bytes: 4
  %loadMem_46b825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b825 = call %struct.Memory* @routine_subq__0x38___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b825)
  store %struct.Memory* %call_46b825, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rbp), %eax	 RIP: 46b829	 Bytes: 3
  %loadMem_46b829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b829 = call %struct.Memory* @routine_movl_0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b829)
  store %struct.Memory* %call_46b829, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rbp), %r10d	 RIP: 46b82c	 Bytes: 4
  %loadMem_46b82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b82c = call %struct.Memory* @routine_movl_0x10__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b82c)
  store %struct.Memory* %call_46b82c, %struct.Memory** %MEMORY

  ; Code: movq $0x5800a9, %r11	 RIP: 46b830	 Bytes: 10
  %loadMem_46b830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b830 = call %struct.Memory* @routine_movq__0x5800a9___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b830)
  store %struct.Memory* %call_46b830, %struct.Memory** %MEMORY

  ; Code: xorl %ebx, %ebx	 RIP: 46b83a	 Bytes: 2
  %loadMem_46b83a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b83a = call %struct.Memory* @routine_xorl__ebx___ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b83a)
  store %struct.Memory* %call_46b83a, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x10(%rbp)	 RIP: 46b83c	 Bytes: 3
  %loadMem_46b83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b83c = call %struct.Memory* @routine_movl__edi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b83c)
  store %struct.Memory* %call_46b83c, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x14(%rbp)	 RIP: 46b83f	 Bytes: 3
  %loadMem_46b83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b83f = call %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b83f)
  store %struct.Memory* %call_46b83f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x18(%rbp)	 RIP: 46b842	 Bytes: 3
  %loadMem_46b842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b842 = call %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b842)
  store %struct.Memory* %call_46b842, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 46b845	 Bytes: 3
  %loadMem_46b845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b845 = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b845)
  store %struct.Memory* %call_46b845, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x20(%rbp)	 RIP: 46b848	 Bytes: 4
  %loadMem_46b848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b848 = call %struct.Memory* @routine_movl__r8d__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b848)
  store %struct.Memory* %call_46b848, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x24(%rbp)	 RIP: 46b84c	 Bytes: 4
  %loadMem_46b84c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b84c = call %struct.Memory* @routine_movl__r9d__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b84c)
  store %struct.Memory* %call_46b84c, %struct.Memory** %MEMORY

  ; Code: movl %r10d, -0x28(%rbp)	 RIP: 46b850	 Bytes: 4
  %loadMem_46b850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b850 = call %struct.Memory* @routine_movl__r10d__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b850)
  store %struct.Memory* %call_46b850, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 46b854	 Bytes: 3
  %loadMem_46b854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b854 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b854)
  store %struct.Memory* %call_46b854, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 46b857	 Bytes: 7
  %loadMem_46b857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b857 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b857)
  store %struct.Memory* %call_46b857, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edi	 RIP: 46b85e	 Bytes: 3
  %loadMem_46b85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b85e = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b85e)
  store %struct.Memory* %call_46b85e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 46b861	 Bytes: 3
  %loadMem_46b861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b861 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b861)
  store %struct.Memory* %call_46b861, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 46b864	 Bytes: 3
  %loadMem_46b864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b864 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b864)
  store %struct.Memory* %call_46b864, %struct.Memory** %MEMORY

  ; Code: movq %r11, %rdx	 RIP: 46b867	 Bytes: 3
  %loadMem_46b867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b867 = call %struct.Memory* @routine_movq__r11___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b867)
  store %struct.Memory* %call_46b867, %struct.Memory** %MEMORY

  ; Code: movl %ebx, %r8d	 RIP: 46b86a	 Bytes: 3
  %loadMem_46b86a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b86a = call %struct.Memory* @routine_movl__ebx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b86a)
  store %struct.Memory* %call_46b86a, %struct.Memory** %MEMORY

  ; Code: movl %ebx, %r9d	 RIP: 46b86d	 Bytes: 3
  %loadMem_46b86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b86d = call %struct.Memory* @routine_movl__ebx___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b86d)
  store %struct.Memory* %call_46b86d, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 46b870	 Bytes: 5
  %loadMem1_46b870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b870 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b870, i64 -404032, i64 5, i64 5)
  store %struct.Memory* %call1_46b870, %struct.Memory** %MEMORY

  %loadMem2_46b870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b870 = load i64, i64* %3
  %call2_46b870 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_46b870, %struct.Memory* %loadMem2_46b870)
  store %struct.Memory* %call2_46b870, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46b875	 Bytes: 3
  %loadMem_46b875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b875 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b875)
  store %struct.Memory* %call_46b875, %struct.Memory** %MEMORY

  ; Code: je .L_46bc12	 RIP: 46b878	 Bytes: 6
  %loadMem_46b878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b878 = call %struct.Memory* @routine_je_.L_46bc12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b878, i8* %BRANCH_TAKEN, i64 922, i64 6, i64 6)
  store %struct.Memory* %call_46b878, %struct.Memory** %MEMORY

  %loadBr_46b878 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b878 = icmp eq i8 %loadBr_46b878, 1
  br i1 %cmpBr_46b878, label %block_.L_46bc12, label %block_46b87e

block_46b87e:
  ; Code: xorl %eax, %eax	 RIP: 46b87e	 Bytes: 2
  %loadMem_46b87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b87e = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b87e)
  store %struct.Memory* %call_46b87e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46b880	 Bytes: 2
  %loadMem_46b880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b880 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b880)
  store %struct.Memory* %call_46b880, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edi	 RIP: 46b882	 Bytes: 3
  %loadMem_46b882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b882 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b882)
  store %struct.Memory* %call_46b882, %struct.Memory** %MEMORY

  ; Code: callq .attack	 RIP: 46b885	 Bytes: 5
  %loadMem1_46b885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b885 = call %struct.Memory* @routine_callq_.attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b885, i64 -56645, i64 5, i64 5)
  store %struct.Memory* %call1_46b885, %struct.Memory** %MEMORY

  %loadMem2_46b885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b885 = load i64, i64* %3
  %call2_46b885 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64  %loadPC_46b885, %struct.Memory* %loadMem2_46b885)
  store %struct.Memory* %call2_46b885, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46b88a	 Bytes: 3
  %loadMem_46b88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b88a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b88a)
  store %struct.Memory* %call_46b88a, %struct.Memory** %MEMORY

  ; Code: jne .L_46bc0d	 RIP: 46b88d	 Bytes: 6
  %loadMem_46b88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b88d = call %struct.Memory* @routine_jne_.L_46bc0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b88d, i8* %BRANCH_TAKEN, i64 896, i64 6, i64 6)
  store %struct.Memory* %call_46b88d, %struct.Memory** %MEMORY

  %loadBr_46b88d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b88d = icmp eq i8 %loadBr_46b88d, 1
  br i1 %cmpBr_46b88d, label %block_.L_46bc0d, label %block_46b893

block_46b893:
  ; Code: leaq -0x34(%rbp), %rsi	 RIP: 46b893	 Bytes: 4
  %loadMem_46b893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b893 = call %struct.Memory* @routine_leaq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b893)
  store %struct.Memory* %call_46b893, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edi	 RIP: 46b897	 Bytes: 3
  %loadMem_46b897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b897 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b897)
  store %struct.Memory* %call_46b897, %struct.Memory** %MEMORY

  ; Code: callq .attack	 RIP: 46b89a	 Bytes: 5
  %loadMem1_46b89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b89a = call %struct.Memory* @routine_callq_.attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b89a, i64 -56666, i64 5, i64 5)
  store %struct.Memory* %call1_46b89a, %struct.Memory** %MEMORY

  %loadMem2_46b89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b89a = load i64, i64* %3
  %call2_46b89a = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64  %loadPC_46b89a, %struct.Memory* %loadMem2_46b89a)
  store %struct.Memory* %call2_46b89a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46b89f	 Bytes: 3
  %loadMem_46b89f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b89f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b89f)
  store %struct.Memory* %call_46b89f, %struct.Memory** %MEMORY

  ; Code: jne .L_46b8b4	 RIP: 46b8a2	 Bytes: 6
  %loadMem_46b8a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8a2 = call %struct.Memory* @routine_jne_.L_46b8b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8a2, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_46b8a2, %struct.Memory** %MEMORY

  %loadBr_46b8a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b8a2 = icmp eq i8 %loadBr_46b8a2, 1
  br i1 %cmpBr_46b8a2, label %block_.L_46b8b4, label %block_46b8a8

block_46b8a8:
  ; Code: movl $0x2, -0x30(%rbp)	 RIP: 46b8a8	 Bytes: 7
  %loadMem_46b8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8a8 = call %struct.Memory* @routine_movl__0x2__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8a8)
  store %struct.Memory* %call_46b8a8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46ba32	 RIP: 46b8af	 Bytes: 5
  %loadMem_46b8af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8af = call %struct.Memory* @routine_jmpq_.L_46ba32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8af, i64 387, i64 5)
  store %struct.Memory* %call_46b8af, %struct.Memory** %MEMORY

  br label %block_.L_46ba32

  ; Code: .L_46b8b4:	 RIP: 46b8b4	 Bytes: 0
block_.L_46b8b4:

  ; Code: movq $0x5800c0, %rdx	 RIP: 46b8b4	 Bytes: 10
  %loadMem_46b8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8b4 = call %struct.Memory* @routine_movq__0x5800c0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8b4)
  store %struct.Memory* %call_46b8b4, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 46b8be	 Bytes: 2
  %loadMem_46b8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8be = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8be)
  store %struct.Memory* %call_46b8be, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 46b8c0	 Bytes: 3
  %loadMem_46b8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8c0 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8c0)
  store %struct.Memory* %call_46b8c0, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %esi	 RIP: 46b8c3	 Bytes: 3
  %loadMem_46b8c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8c3 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8c3)
  store %struct.Memory* %call_46b8c3, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 46b8c6	 Bytes: 3
  %loadMem_46b8c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8c6 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8c6)
  store %struct.Memory* %call_46b8c6, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 46b8c9	 Bytes: 3
  %loadMem_46b8c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8c9 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8c9)
  store %struct.Memory* %call_46b8c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 46b8cc	 Bytes: 3
  %loadMem_46b8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8cc = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8cc)
  store %struct.Memory* %call_46b8cc, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 46b8cf	 Bytes: 5
  %loadMem1_46b8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b8cf = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b8cf, i64 -404127, i64 5, i64 5)
  store %struct.Memory* %call1_46b8cf, %struct.Memory** %MEMORY

  %loadMem2_46b8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b8cf = load i64, i64* %3
  %call2_46b8cf = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_46b8cf, %struct.Memory* %loadMem2_46b8cf)
  store %struct.Memory* %call2_46b8cf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46b8d4	 Bytes: 3
  %loadMem_46b8d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8d4 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8d4)
  store %struct.Memory* %call_46b8d4, %struct.Memory** %MEMORY

  ; Code: je .L_46b91f	 RIP: 46b8d7	 Bytes: 6
  %loadMem_46b8d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8d7 = call %struct.Memory* @routine_je_.L_46b91f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8d7, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_46b8d7, %struct.Memory** %MEMORY

  %loadBr_46b8d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b8d7 = icmp eq i8 %loadBr_46b8d7, 1
  br i1 %cmpBr_46b8d7, label %block_.L_46b91f, label %block_46b8dd

block_46b8dd:
  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 46b8dd	 Bytes: 4
  %loadMem_46b8dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8dd = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8dd)
  store %struct.Memory* %call_46b8dd, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, 0xb89e60(,%rax,1)	 RIP: 46b8e1	 Bytes: 8
  %loadMem_46b8e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8e1 = call %struct.Memory* @routine_cmpb__0x0__0xb89e60___rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8e1)
  store %struct.Memory* %call_46b8e1, %struct.Memory** %MEMORY

  ; Code: je .L_46b904	 RIP: 46b8e9	 Bytes: 6
  %loadMem_46b8e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8e9 = call %struct.Memory* @routine_je_.L_46b904(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8e9, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46b8e9, %struct.Memory** %MEMORY

  %loadBr_46b8e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b8e9 = icmp eq i8 %loadBr_46b8e9, 1
  br i1 %cmpBr_46b8e9, label %block_.L_46b904, label %block_46b8ef

block_46b8ef:
  ; Code: xorl %eax, %eax	 RIP: 46b8ef	 Bytes: 2
  %loadMem_46b8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8ef = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8ef)
  store %struct.Memory* %call_46b8ef, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46b8f1	 Bytes: 2
  %loadMem_46b8f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8f1 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8f1)
  store %struct.Memory* %call_46b8f1, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edi	 RIP: 46b8f3	 Bytes: 3
  %loadMem_46b8f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8f3 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8f3)
  store %struct.Memory* %call_46b8f3, %struct.Memory** %MEMORY

  ; Code: callq .find_defense	 RIP: 46b8f6	 Bytes: 5
  %loadMem1_46b8f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b8f6 = call %struct.Memory* @routine_callq_.find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b8f6, i64 -4470, i64 5, i64 5)
  store %struct.Memory* %call1_46b8f6, %struct.Memory** %MEMORY

  %loadMem2_46b8f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b8f6 = load i64, i64* %3
  %call2_46b8f6 = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64  %loadPC_46b8f6, %struct.Memory* %loadMem2_46b8f6)
  store %struct.Memory* %call2_46b8f6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46b8fb	 Bytes: 3
  %loadMem_46b8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8fb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8fb)
  store %struct.Memory* %call_46b8fb, %struct.Memory** %MEMORY

  ; Code: jne .L_46b91a	 RIP: 46b8fe	 Bytes: 6
  %loadMem_46b8fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b8fe = call %struct.Memory* @routine_jne_.L_46b91a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b8fe, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_46b8fe, %struct.Memory** %MEMORY

  %loadBr_46b8fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b8fe = icmp eq i8 %loadBr_46b8fe, 1
  br i1 %cmpBr_46b8fe, label %block_.L_46b91a, label %block_.L_46b904

  ; Code: .L_46b904:	 RIP: 46b904	 Bytes: 0
block_.L_46b904:

  ; Code: callq .popgo	 RIP: 46b904	 Bytes: 5
  %loadMem1_46b904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b904 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b904, i64 -383908, i64 5, i64 5)
  store %struct.Memory* %call1_46b904, %struct.Memory** %MEMORY

  %loadMem2_46b904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b904 = load i64, i64* %3
  %call2_46b904 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46b904, %struct.Memory* %loadMem2_46b904)
  store %struct.Memory* %call2_46b904, %struct.Memory** %MEMORY

  ; Code: callq .popgo	 RIP: 46b909	 Bytes: 5
  %loadMem1_46b909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b909 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b909, i64 -383913, i64 5, i64 5)
  store %struct.Memory* %call1_46b909, %struct.Memory** %MEMORY

  %loadMem2_46b909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b909 = load i64, i64* %3
  %call2_46b909 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46b909, %struct.Memory* %loadMem2_46b909)
  store %struct.Memory* %call2_46b909, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 46b90e	 Bytes: 7
  %loadMem_46b90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b90e = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b90e)
  store %struct.Memory* %call_46b90e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46bc18	 RIP: 46b915	 Bytes: 5
  %loadMem_46b915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b915 = call %struct.Memory* @routine_jmpq_.L_46bc18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b915, i64 771, i64 5)
  store %struct.Memory* %call_46b915, %struct.Memory** %MEMORY

  br label %block_.L_46bc18

  ; Code: .L_46b91a:	 RIP: 46b91a	 Bytes: 0
block_.L_46b91a:

  ; Code: callq .popgo	 RIP: 46b91a	 Bytes: 5
  %loadMem1_46b91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b91a = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b91a, i64 -383930, i64 5, i64 5)
  store %struct.Memory* %call1_46b91a, %struct.Memory** %MEMORY

  %loadMem2_46b91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b91a = load i64, i64* %3
  %call2_46b91a = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46b91a, %struct.Memory* %loadMem2_46b91a)
  store %struct.Memory* %call2_46b91a, %struct.Memory** %MEMORY

  ; Code: .L_46b91f:	 RIP: 46b91f	 Bytes: 0
  br label %block_.L_46b91f
block_.L_46b91f:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 46b91f	 Bytes: 3
  %loadMem_46b91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b91f = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b91f)
  store %struct.Memory* %call_46b91f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %eax	 RIP: 46b922	 Bytes: 3
  %loadMem_46b922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b922 = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b922)
  store %struct.Memory* %call_46b922, %struct.Memory** %MEMORY

  ; Code: jne .L_46b93c	 RIP: 46b925	 Bytes: 6
  %loadMem_46b925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b925 = call %struct.Memory* @routine_jne_.L_46b93c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b925, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_46b925, %struct.Memory** %MEMORY

  %loadBr_46b925 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b925 = icmp eq i8 %loadBr_46b925, 1
  br i1 %cmpBr_46b925, label %block_.L_46b93c, label %block_46b92b

block_46b92b:
  ; Code: callq .popgo	 RIP: 46b92b	 Bytes: 5
  %loadMem1_46b92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b92b = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b92b, i64 -383947, i64 5, i64 5)
  store %struct.Memory* %call1_46b92b, %struct.Memory** %MEMORY

  %loadMem2_46b92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b92b = load i64, i64* %3
  %call2_46b92b = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46b92b, %struct.Memory* %loadMem2_46b92b)
  store %struct.Memory* %call2_46b92b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 46b930	 Bytes: 7
  %loadMem_46b930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b930 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b930)
  store %struct.Memory* %call_46b930, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46bc18	 RIP: 46b937	 Bytes: 5
  %loadMem_46b937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b937 = call %struct.Memory* @routine_jmpq_.L_46bc18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b937, i64 737, i64 5)
  store %struct.Memory* %call_46b937, %struct.Memory** %MEMORY

  br label %block_.L_46bc18

  ; Code: .L_46b93c:	 RIP: 46b93c	 Bytes: 0
block_.L_46b93c:

  ; Code: movq $0x5800d7, %rdx	 RIP: 46b93c	 Bytes: 10
  %loadMem_46b93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b93c = call %struct.Memory* @routine_movq__0x5800d7___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b93c)
  store %struct.Memory* %call_46b93c, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 46b946	 Bytes: 2
  %loadMem_46b946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b946 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b946)
  store %struct.Memory* %call_46b946, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edi	 RIP: 46b948	 Bytes: 3
  %loadMem_46b948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b948 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b948)
  store %struct.Memory* %call_46b948, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %esi	 RIP: 46b94b	 Bytes: 3
  %loadMem_46b94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b94b = call %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b94b)
  store %struct.Memory* %call_46b94b, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 46b94e	 Bytes: 3
  %loadMem_46b94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b94e = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b94e)
  store %struct.Memory* %call_46b94e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 46b951	 Bytes: 3
  %loadMem_46b951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b951 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b951)
  store %struct.Memory* %call_46b951, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 46b954	 Bytes: 3
  %loadMem_46b954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b954 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b954)
  store %struct.Memory* %call_46b954, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 46b957	 Bytes: 5
  %loadMem1_46b957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b957 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b957, i64 -404263, i64 5, i64 5)
  store %struct.Memory* %call1_46b957, %struct.Memory** %MEMORY

  %loadMem2_46b957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b957 = load i64, i64* %3
  %call2_46b957 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_46b957, %struct.Memory* %loadMem2_46b957)
  store %struct.Memory* %call2_46b957, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46b95c	 Bytes: 3
  %loadMem_46b95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b95c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b95c)
  store %struct.Memory* %call_46b95c, %struct.Memory** %MEMORY

  ; Code: je .L_46ba2d	 RIP: 46b95f	 Bytes: 6
  %loadMem_46b95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b95f = call %struct.Memory* @routine_je_.L_46ba2d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b95f, i8* %BRANCH_TAKEN, i64 206, i64 6, i64 6)
  store %struct.Memory* %call_46b95f, %struct.Memory** %MEMORY

  %loadBr_46b95f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b95f = icmp eq i8 %loadBr_46b95f, 1
  br i1 %cmpBr_46b95f, label %block_.L_46ba2d, label %block_46b965

block_46b965:
  ; Code: movq $0x5800ee, %rdx	 RIP: 46b965	 Bytes: 10
  %loadMem_46b965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b965 = call %struct.Memory* @routine_movq__0x5800ee___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b965)
  store %struct.Memory* %call_46b965, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 46b96f	 Bytes: 2
  %loadMem_46b96f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b96f = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b96f)
  store %struct.Memory* %call_46b96f, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 46b971	 Bytes: 3
  %loadMem_46b971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b971 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b971)
  store %struct.Memory* %call_46b971, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 46b974	 Bytes: 3
  %loadMem_46b974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b974 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b974)
  store %struct.Memory* %call_46b974, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 46b977	 Bytes: 3
  %loadMem_46b977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b977 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b977)
  store %struct.Memory* %call_46b977, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 46b97a	 Bytes: 3
  %loadMem_46b97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b97a = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b97a)
  store %struct.Memory* %call_46b97a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 46b97d	 Bytes: 3
  %loadMem_46b97d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b97d = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b97d)
  store %struct.Memory* %call_46b97d, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 46b980	 Bytes: 5
  %loadMem1_46b980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b980 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b980, i64 -404304, i64 5, i64 5)
  store %struct.Memory* %call1_46b980, %struct.Memory** %MEMORY

  %loadMem2_46b980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b980 = load i64, i64* %3
  %call2_46b980 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_46b980, %struct.Memory* %loadMem2_46b980)
  store %struct.Memory* %call2_46b980, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46b985	 Bytes: 3
  %loadMem_46b985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b985 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b985)
  store %struct.Memory* %call_46b985, %struct.Memory** %MEMORY

  ; Code: je .L_46ba28	 RIP: 46b988	 Bytes: 6
  %loadMem_46b988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b988 = call %struct.Memory* @routine_je_.L_46ba28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b988, i8* %BRANCH_TAKEN, i64 160, i64 6, i64 6)
  store %struct.Memory* %call_46b988, %struct.Memory** %MEMORY

  %loadBr_46b988 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b988 = icmp eq i8 %loadBr_46b988, 1
  br i1 %cmpBr_46b988, label %block_.L_46ba28, label %block_46b98e

block_46b98e:
  ; Code: xorl %eax, %eax	 RIP: 46b98e	 Bytes: 2
  %loadMem_46b98e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b98e = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b98e)
  store %struct.Memory* %call_46b98e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46b990	 Bytes: 2
  %loadMem_46b990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b990 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b990)
  store %struct.Memory* %call_46b990, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 46b992	 Bytes: 3
  %loadMem_46b992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b992 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b992)
  store %struct.Memory* %call_46b992, %struct.Memory** %MEMORY

  ; Code: callq .attack	 RIP: 46b995	 Bytes: 5
  %loadMem1_46b995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b995 = call %struct.Memory* @routine_callq_.attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b995, i64 -56917, i64 5, i64 5)
  store %struct.Memory* %call1_46b995, %struct.Memory** %MEMORY

  %loadMem2_46b995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b995 = load i64, i64* %3
  %call2_46b995 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64  %loadPC_46b995, %struct.Memory* %loadMem2_46b995)
  store %struct.Memory* %call2_46b995, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46b99a	 Bytes: 3
  %loadMem_46b99a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b99a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b99a)
  store %struct.Memory* %call_46b99a, %struct.Memory** %MEMORY

  ; Code: jne .L_46ba08	 RIP: 46b99d	 Bytes: 6
  %loadMem_46b99d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b99d = call %struct.Memory* @routine_jne_.L_46ba08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b99d, i8* %BRANCH_TAKEN, i64 107, i64 6, i64 6)
  store %struct.Memory* %call_46b99d, %struct.Memory** %MEMORY

  %loadBr_46b99d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b99d = icmp eq i8 %loadBr_46b99d, 1
  br i1 %cmpBr_46b99d, label %block_.L_46ba08, label %block_46b9a3

block_46b9a3:
  ; Code: movl $0x2, -0x30(%rbp)	 RIP: 46b9a3	 Bytes: 7
  %loadMem_46b9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b9a3 = call %struct.Memory* @routine_movl__0x2__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b9a3)
  store %struct.Memory* %call_46b9a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 46b9aa	 Bytes: 4
  %loadMem_46b9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b9aa = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b9aa)
  store %struct.Memory* %call_46b9aa, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46b9ae	 Bytes: 8
  %loadMem_46b9ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b9ae = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b9ae)
  store %struct.Memory* %call_46b9ae, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 46b9b6	 Bytes: 3
  %loadMem_46b9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b9b6 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b9b6)
  store %struct.Memory* %call_46b9b6, %struct.Memory** %MEMORY

  ; Code: je .L_46ba03	 RIP: 46b9b9	 Bytes: 6
  %loadMem_46b9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b9b9 = call %struct.Memory* @routine_je_.L_46ba03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b9b9, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_46b9b9, %struct.Memory** %MEMORY

  %loadBr_46b9b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b9b9 = icmp eq i8 %loadBr_46b9b9, 1
  br i1 %cmpBr_46b9b9, label %block_.L_46ba03, label %block_46b9bf

block_46b9bf:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46b9bf	 Bytes: 4
  %loadMem_46b9bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b9bf = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b9bf)
  store %struct.Memory* %call_46b9bf, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46b9c3	 Bytes: 8
  %loadMem_46b9c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b9c3 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b9c3)
  store %struct.Memory* %call_46b9c3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 46b9cb	 Bytes: 3
  %loadMem_46b9cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b9cb = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b9cb)
  store %struct.Memory* %call_46b9cb, %struct.Memory** %MEMORY

  ; Code: je .L_46ba03	 RIP: 46b9ce	 Bytes: 6
  %loadMem_46b9ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b9ce = call %struct.Memory* @routine_je_.L_46ba03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b9ce, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_46b9ce, %struct.Memory** %MEMORY

  %loadBr_46b9ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b9ce = icmp eq i8 %loadBr_46b9ce, 1
  br i1 %cmpBr_46b9ce, label %block_.L_46ba03, label %block_46b9d4

block_46b9d4:
  ; Code: movl -0x14(%rbp), %edi	 RIP: 46b9d4	 Bytes: 3
  %loadMem_46b9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b9d4 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b9d4)
  store %struct.Memory* %call_46b9d4, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %esi	 RIP: 46b9d7	 Bytes: 3
  %loadMem_46b9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b9d7 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b9d7)
  store %struct.Memory* %call_46b9d7, %struct.Memory** %MEMORY

  ; Code: callq .defend_both	 RIP: 46b9da	 Bytes: 5
  %loadMem1_46b9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b9da = call %struct.Memory* @routine_callq_.defend_both(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b9da, i64 -3130, i64 5, i64 5)
  store %struct.Memory* %call1_46b9da, %struct.Memory** %MEMORY

  %loadMem2_46b9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b9da = load i64, i64* %3
  %call2_46b9da = call %struct.Memory* @sub_46ada0.defend_both(%struct.State* %0, i64  %loadPC_46b9da, %struct.Memory* %loadMem2_46b9da)
  store %struct.Memory* %call2_46b9da, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46b9df	 Bytes: 3
  %loadMem_46b9df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b9df = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b9df)
  store %struct.Memory* %call_46b9df, %struct.Memory** %MEMORY

  ; Code: je .L_46ba03	 RIP: 46b9e2	 Bytes: 6
  %loadMem_46b9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b9e2 = call %struct.Memory* @routine_je_.L_46ba03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b9e2, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_46b9e2, %struct.Memory** %MEMORY

  %loadBr_46b9e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b9e2 = icmp eq i8 %loadBr_46b9e2, 1
  br i1 %cmpBr_46b9e2, label %block_.L_46ba03, label %block_46b9e8

block_46b9e8:
  ; Code: callq .popgo	 RIP: 46b9e8	 Bytes: 5
  %loadMem1_46b9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b9e8 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b9e8, i64 -384136, i64 5, i64 5)
  store %struct.Memory* %call1_46b9e8, %struct.Memory** %MEMORY

  %loadMem2_46b9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b9e8 = load i64, i64* %3
  %call2_46b9e8 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46b9e8, %struct.Memory* %loadMem2_46b9e8)
  store %struct.Memory* %call2_46b9e8, %struct.Memory** %MEMORY

  ; Code: callq .popgo	 RIP: 46b9ed	 Bytes: 5
  %loadMem1_46b9ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b9ed = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b9ed, i64 -384141, i64 5, i64 5)
  store %struct.Memory* %call1_46b9ed, %struct.Memory** %MEMORY

  %loadMem2_46b9ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b9ed = load i64, i64* %3
  %call2_46b9ed = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46b9ed, %struct.Memory* %loadMem2_46b9ed)
  store %struct.Memory* %call2_46b9ed, %struct.Memory** %MEMORY

  ; Code: callq .popgo	 RIP: 46b9f2	 Bytes: 5
  %loadMem1_46b9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46b9f2 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46b9f2, i64 -384146, i64 5, i64 5)
  store %struct.Memory* %call1_46b9f2, %struct.Memory** %MEMORY

  %loadMem2_46b9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b9f2 = load i64, i64* %3
  %call2_46b9f2 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46b9f2, %struct.Memory* %loadMem2_46b9f2)
  store %struct.Memory* %call2_46b9f2, %struct.Memory** %MEMORY

  ; Code: movl $0x2, -0xc(%rbp)	 RIP: 46b9f7	 Bytes: 7
  %loadMem_46b9f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b9f7 = call %struct.Memory* @routine_movl__0x2__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b9f7)
  store %struct.Memory* %call_46b9f7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46bc18	 RIP: 46b9fe	 Bytes: 5
  %loadMem_46b9fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46b9fe = call %struct.Memory* @routine_jmpq_.L_46bc18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46b9fe, i64 538, i64 5)
  store %struct.Memory* %call_46b9fe, %struct.Memory** %MEMORY

  br label %block_.L_46bc18

  ; Code: .L_46ba03:	 RIP: 46ba03	 Bytes: 0
block_.L_46ba03:

  ; Code: jmpq .L_46ba23	 RIP: 46ba03	 Bytes: 5
  %loadMem_46ba03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba03 = call %struct.Memory* @routine_jmpq_.L_46ba23(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba03, i64 32, i64 5)
  store %struct.Memory* %call_46ba03, %struct.Memory** %MEMORY

  br label %block_.L_46ba23

  ; Code: .L_46ba08:	 RIP: 46ba08	 Bytes: 0
block_.L_46ba08:

  ; Code: callq .popgo	 RIP: 46ba08	 Bytes: 5
  %loadMem1_46ba08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ba08 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ba08, i64 -384168, i64 5, i64 5)
  store %struct.Memory* %call1_46ba08, %struct.Memory** %MEMORY

  %loadMem2_46ba08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ba08 = load i64, i64* %3
  %call2_46ba08 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46ba08, %struct.Memory* %loadMem2_46ba08)
  store %struct.Memory* %call2_46ba08, %struct.Memory** %MEMORY

  ; Code: callq .popgo	 RIP: 46ba0d	 Bytes: 5
  %loadMem1_46ba0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ba0d = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ba0d, i64 -384173, i64 5, i64 5)
  store %struct.Memory* %call1_46ba0d, %struct.Memory** %MEMORY

  %loadMem2_46ba0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ba0d = load i64, i64* %3
  %call2_46ba0d = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46ba0d, %struct.Memory* %loadMem2_46ba0d)
  store %struct.Memory* %call2_46ba0d, %struct.Memory** %MEMORY

  ; Code: callq .popgo	 RIP: 46ba12	 Bytes: 5
  %loadMem1_46ba12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ba12 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ba12, i64 -384178, i64 5, i64 5)
  store %struct.Memory* %call1_46ba12, %struct.Memory** %MEMORY

  %loadMem2_46ba12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ba12 = load i64, i64* %3
  %call2_46ba12 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46ba12, %struct.Memory* %loadMem2_46ba12)
  store %struct.Memory* %call2_46ba12, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 46ba17	 Bytes: 7
  %loadMem_46ba17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba17 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba17)
  store %struct.Memory* %call_46ba17, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46bc18	 RIP: 46ba1e	 Bytes: 5
  %loadMem_46ba1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba1e = call %struct.Memory* @routine_jmpq_.L_46bc18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba1e, i64 506, i64 5)
  store %struct.Memory* %call_46ba1e, %struct.Memory** %MEMORY

  br label %block_.L_46bc18

  ; Code: .L_46ba23:	 RIP: 46ba23	 Bytes: 0
block_.L_46ba23:

  ; Code: callq .popgo	 RIP: 46ba23	 Bytes: 5
  %loadMem1_46ba23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ba23 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ba23, i64 -384195, i64 5, i64 5)
  store %struct.Memory* %call1_46ba23, %struct.Memory** %MEMORY

  %loadMem2_46ba23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ba23 = load i64, i64* %3
  %call2_46ba23 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46ba23, %struct.Memory* %loadMem2_46ba23)
  store %struct.Memory* %call2_46ba23, %struct.Memory** %MEMORY

  ; Code: .L_46ba28:	 RIP: 46ba28	 Bytes: 0
  br label %block_.L_46ba28
block_.L_46ba28:

  ; Code: callq .popgo	 RIP: 46ba28	 Bytes: 5
  %loadMem1_46ba28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ba28 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ba28, i64 -384200, i64 5, i64 5)
  store %struct.Memory* %call1_46ba28, %struct.Memory** %MEMORY

  %loadMem2_46ba28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ba28 = load i64, i64* %3
  %call2_46ba28 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46ba28, %struct.Memory* %loadMem2_46ba28)
  store %struct.Memory* %call2_46ba28, %struct.Memory** %MEMORY

  ; Code: .L_46ba2d:	 RIP: 46ba2d	 Bytes: 0
  br label %block_.L_46ba2d
block_.L_46ba2d:

  ; Code: jmpq .L_46ba32	 RIP: 46ba2d	 Bytes: 5
  %loadMem_46ba2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba2d = call %struct.Memory* @routine_jmpq_.L_46ba32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba2d, i64 5, i64 5)
  store %struct.Memory* %call_46ba2d, %struct.Memory** %MEMORY

  br label %block_.L_46ba32

  ; Code: .L_46ba32:	 RIP: 46ba32	 Bytes: 0
block_.L_46ba32:

  ; Code: movslq -0x10(%rbp), %rax	 RIP: 46ba32	 Bytes: 4
  %loadMem_46ba32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba32 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba32)
  store %struct.Memory* %call_46ba32, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, 0xb89e60(,%rax,1)	 RIP: 46ba36	 Bytes: 8
  %loadMem_46ba36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba36 = call %struct.Memory* @routine_cmpb__0x0__0xb89e60___rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba36)
  store %struct.Memory* %call_46ba36, %struct.Memory** %MEMORY

  ; Code: je .L_46ba6a	 RIP: 46ba3e	 Bytes: 6
  %loadMem_46ba3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba3e = call %struct.Memory* @routine_je_.L_46ba6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba3e, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_46ba3e, %struct.Memory** %MEMORY

  %loadBr_46ba3e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ba3e = icmp eq i8 %loadBr_46ba3e, 1
  br i1 %cmpBr_46ba3e, label %block_.L_46ba6a, label %block_46ba44

block_46ba44:
  ; Code: movslq -0x14(%rbp), %rax	 RIP: 46ba44	 Bytes: 4
  %loadMem_46ba44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba44 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba44)
  store %struct.Memory* %call_46ba44, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, 0xb89e60(,%rax,1)	 RIP: 46ba48	 Bytes: 8
  %loadMem_46ba48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba48 = call %struct.Memory* @routine_cmpb__0x0__0xb89e60___rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba48)
  store %struct.Memory* %call_46ba48, %struct.Memory** %MEMORY

  ; Code: je .L_46ba6a	 RIP: 46ba50	 Bytes: 6
  %loadMem_46ba50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba50 = call %struct.Memory* @routine_je_.L_46ba6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba50, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_46ba50, %struct.Memory** %MEMORY

  %loadBr_46ba50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ba50 = icmp eq i8 %loadBr_46ba50, 1
  br i1 %cmpBr_46ba50, label %block_.L_46ba6a, label %block_46ba56

block_46ba56:
  ; Code: movl -0x10(%rbp), %edi	 RIP: 46ba56	 Bytes: 3
  %loadMem_46ba56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba56 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba56)
  store %struct.Memory* %call_46ba56, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 46ba59	 Bytes: 3
  %loadMem_46ba59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba59 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba59)
  store %struct.Memory* %call_46ba59, %struct.Memory** %MEMORY

  ; Code: callq .defend_both	 RIP: 46ba5c	 Bytes: 5
  %loadMem1_46ba5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ba5c = call %struct.Memory* @routine_callq_.defend_both(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ba5c, i64 -3260, i64 5, i64 5)
  store %struct.Memory* %call1_46ba5c, %struct.Memory** %MEMORY

  %loadMem2_46ba5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ba5c = load i64, i64* %3
  %call2_46ba5c = call %struct.Memory* @sub_46ada0.defend_both(%struct.State* %0, i64  %loadPC_46ba5c, %struct.Memory* %loadMem2_46ba5c)
  store %struct.Memory* %call2_46ba5c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46ba61	 Bytes: 3
  %loadMem_46ba61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba61 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba61)
  store %struct.Memory* %call_46ba61, %struct.Memory** %MEMORY

  ; Code: jne .L_46ba76	 RIP: 46ba64	 Bytes: 6
  %loadMem_46ba64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba64 = call %struct.Memory* @routine_jne_.L_46ba76(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba64, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_46ba64, %struct.Memory** %MEMORY

  %loadBr_46ba64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ba64 = icmp eq i8 %loadBr_46ba64, 1
  br i1 %cmpBr_46ba64, label %block_.L_46ba76, label %block_.L_46ba6a

  ; Code: .L_46ba6a:	 RIP: 46ba6a	 Bytes: 0
block_.L_46ba6a:

  ; Code: movl $0x5, -0x30(%rbp)	 RIP: 46ba6a	 Bytes: 7
  %loadMem_46ba6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba6a = call %struct.Memory* @routine_movl__0x5__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba6a)
  store %struct.Memory* %call_46ba6a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46bc08	 RIP: 46ba71	 Bytes: 5
  %loadMem_46ba71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba71 = call %struct.Memory* @routine_jmpq_.L_46bc08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba71, i64 407, i64 5)
  store %struct.Memory* %call_46ba71, %struct.Memory** %MEMORY

  br label %block_.L_46bc08

  ; Code: .L_46ba76:	 RIP: 46ba76	 Bytes: 0
block_.L_46ba76:

  ; Code: movq $0x580105, %rdx	 RIP: 46ba76	 Bytes: 10
  %loadMem_46ba76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba76 = call %struct.Memory* @routine_movq__0x580105___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba76)
  store %struct.Memory* %call_46ba76, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 46ba80	 Bytes: 2
  %loadMem_46ba80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba80 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba80)
  store %struct.Memory* %call_46ba80, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x38(%rbp)	 RIP: 46ba82	 Bytes: 7
  %loadMem_46ba82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba82 = call %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba82)
  store %struct.Memory* %call_46ba82, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3c(%rbp)	 RIP: 46ba89	 Bytes: 7
  %loadMem_46ba89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba89 = call %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba89)
  store %struct.Memory* %call_46ba89, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 46ba90	 Bytes: 3
  %loadMem_46ba90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba90 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba90)
  store %struct.Memory* %call_46ba90, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %esi	 RIP: 46ba93	 Bytes: 3
  %loadMem_46ba93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba93 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba93)
  store %struct.Memory* %call_46ba93, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 46ba96	 Bytes: 3
  %loadMem_46ba96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba96 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba96)
  store %struct.Memory* %call_46ba96, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 46ba99	 Bytes: 3
  %loadMem_46ba99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba99 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba99)
  store %struct.Memory* %call_46ba99, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 46ba9c	 Bytes: 3
  %loadMem_46ba9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ba9c = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ba9c)
  store %struct.Memory* %call_46ba9c, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 46ba9f	 Bytes: 5
  %loadMem1_46ba9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ba9f = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ba9f, i64 -404591, i64 5, i64 5)
  store %struct.Memory* %call1_46ba9f, %struct.Memory** %MEMORY

  %loadMem2_46ba9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ba9f = load i64, i64* %3
  %call2_46ba9f = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_46ba9f, %struct.Memory* %loadMem2_46ba9f)
  store %struct.Memory* %call2_46ba9f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46baa4	 Bytes: 3
  %loadMem_46baa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46baa4 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46baa4)
  store %struct.Memory* %call_46baa4, %struct.Memory** %MEMORY

  ; Code: je .L_46baf4	 RIP: 46baa7	 Bytes: 6
  %loadMem_46baa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46baa7 = call %struct.Memory* @routine_je_.L_46baf4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46baa7, i8* %BRANCH_TAKEN, i64 77, i64 6, i64 6)
  store %struct.Memory* %call_46baa7, %struct.Memory** %MEMORY

  %loadBr_46baa7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46baa7 = icmp eq i8 %loadBr_46baa7, 1
  br i1 %cmpBr_46baa7, label %block_.L_46baf4, label %block_46baad

block_46baad:
  ; Code: xorl %eax, %eax	 RIP: 46baad	 Bytes: 2
  %loadMem_46baad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46baad = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46baad)
  store %struct.Memory* %call_46baad, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46baaf	 Bytes: 2
  %loadMem_46baaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46baaf = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46baaf)
  store %struct.Memory* %call_46baaf, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 46bab1	 Bytes: 3
  %loadMem_46bab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bab1 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bab1)
  store %struct.Memory* %call_46bab1, %struct.Memory** %MEMORY

  ; Code: callq .attack	 RIP: 46bab4	 Bytes: 5
  %loadMem1_46bab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46bab4 = call %struct.Memory* @routine_callq_.attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46bab4, i64 -57204, i64 5, i64 5)
  store %struct.Memory* %call1_46bab4, %struct.Memory** %MEMORY

  %loadMem2_46bab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bab4 = load i64, i64* %3
  %call2_46bab4 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64  %loadPC_46bab4, %struct.Memory* %loadMem2_46bab4)
  store %struct.Memory* %call2_46bab4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46bab9	 Bytes: 3
  %loadMem_46bab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bab9 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bab9)
  store %struct.Memory* %call_46bab9, %struct.Memory** %MEMORY

  ; Code: je .L_46bace	 RIP: 46babc	 Bytes: 6
  %loadMem_46babc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46babc = call %struct.Memory* @routine_je_.L_46bace(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46babc, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_46babc, %struct.Memory** %MEMORY

  %loadBr_46babc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46babc = icmp eq i8 %loadBr_46babc, 1
  br i1 %cmpBr_46babc, label %block_.L_46bace, label %block_46bac2

block_46bac2:
  ; Code: movl $0x1, -0x38(%rbp)	 RIP: 46bac2	 Bytes: 7
  %loadMem_46bac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bac2 = call %struct.Memory* @routine_movl__0x1__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bac2)
  store %struct.Memory* %call_46bac2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46baef	 RIP: 46bac9	 Bytes: 5
  %loadMem_46bac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bac9 = call %struct.Memory* @routine_jmpq_.L_46baef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bac9, i64 38, i64 5)
  store %struct.Memory* %call_46bac9, %struct.Memory** %MEMORY

  br label %block_.L_46baef

  ; Code: .L_46bace:	 RIP: 46bace	 Bytes: 0
block_.L_46bace:

  ; Code: xorl %eax, %eax	 RIP: 46bace	 Bytes: 2
  %loadMem_46bace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bace = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bace)
  store %struct.Memory* %call_46bace, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46bad0	 Bytes: 2
  %loadMem_46bad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bad0 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bad0)
  store %struct.Memory* %call_46bad0, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 46bad2	 Bytes: 3
  %loadMem_46bad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bad2 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bad2)
  store %struct.Memory* %call_46bad2, %struct.Memory** %MEMORY

  ; Code: callq .attack	 RIP: 46bad5	 Bytes: 5
  %loadMem1_46bad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46bad5 = call %struct.Memory* @routine_callq_.attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46bad5, i64 -57237, i64 5, i64 5)
  store %struct.Memory* %call1_46bad5, %struct.Memory** %MEMORY

  %loadMem2_46bad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bad5 = load i64, i64* %3
  %call2_46bad5 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64  %loadPC_46bad5, %struct.Memory* %loadMem2_46bad5)
  store %struct.Memory* %call2_46bad5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46bada	 Bytes: 3
  %loadMem_46bada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bada = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bada)
  store %struct.Memory* %call_46bada, %struct.Memory** %MEMORY

  ; Code: je .L_46baea	 RIP: 46badd	 Bytes: 6
  %loadMem_46badd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46badd = call %struct.Memory* @routine_je_.L_46baea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46badd, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_46badd, %struct.Memory** %MEMORY

  %loadBr_46badd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46badd = icmp eq i8 %loadBr_46badd, 1
  br i1 %cmpBr_46badd, label %block_.L_46baea, label %block_46bae3

block_46bae3:
  ; Code: movl $0x1, -0x3c(%rbp)	 RIP: 46bae3	 Bytes: 7
  %loadMem_46bae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bae3 = call %struct.Memory* @routine_movl__0x1__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bae3)
  store %struct.Memory* %call_46bae3, %struct.Memory** %MEMORY

  ; Code: .L_46baea:	 RIP: 46baea	 Bytes: 0
  br label %block_.L_46baea
block_.L_46baea:

  ; Code: jmpq .L_46baef	 RIP: 46baea	 Bytes: 5
  %loadMem_46baea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46baea = call %struct.Memory* @routine_jmpq_.L_46baef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46baea, i64 5, i64 5)
  store %struct.Memory* %call_46baea, %struct.Memory** %MEMORY

  br label %block_.L_46baef

  ; Code: .L_46baef:	 RIP: 46baef	 Bytes: 0
block_.L_46baef:

  ; Code: callq .popgo	 RIP: 46baef	 Bytes: 5
  %loadMem1_46baef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46baef = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46baef, i64 -384399, i64 5, i64 5)
  store %struct.Memory* %call1_46baef, %struct.Memory** %MEMORY

  %loadMem2_46baef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46baef = load i64, i64* %3
  %call2_46baef = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46baef, %struct.Memory* %loadMem2_46baef)
  store %struct.Memory* %call2_46baef, %struct.Memory** %MEMORY

  ; Code: .L_46baf4:	 RIP: 46baf4	 Bytes: 0
  br label %block_.L_46baf4
block_.L_46baf4:

  ; Code: cmpl $0x0, -0x3c(%rbp)	 RIP: 46baf4	 Bytes: 4
  %loadMem_46baf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46baf4 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46baf4)
  store %struct.Memory* %call_46baf4, %struct.Memory** %MEMORY

  ; Code: jne .L_46bb08	 RIP: 46baf8	 Bytes: 6
  %loadMem_46baf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46baf8 = call %struct.Memory* @routine_jne_.L_46bb08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46baf8, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_46baf8, %struct.Memory** %MEMORY

  %loadBr_46baf8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46baf8 = icmp eq i8 %loadBr_46baf8, 1
  br i1 %cmpBr_46baf8, label %block_.L_46bb08, label %block_46bafe

block_46bafe:
  ; Code: cmpl $0x0, -0x38(%rbp)	 RIP: 46bafe	 Bytes: 4
  %loadMem_46bafe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bafe = call %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bafe)
  store %struct.Memory* %call_46bafe, %struct.Memory** %MEMORY

  ; Code: je .L_46bc03	 RIP: 46bb02	 Bytes: 6
  %loadMem_46bb02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb02 = call %struct.Memory* @routine_je_.L_46bc03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb02, i8* %BRANCH_TAKEN, i64 257, i64 6, i64 6)
  store %struct.Memory* %call_46bb02, %struct.Memory** %MEMORY

  %loadBr_46bb02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bb02 = icmp eq i8 %loadBr_46bb02, 1
  br i1 %cmpBr_46bb02, label %block_.L_46bc03, label %block_.L_46bb08

  ; Code: .L_46bb08:	 RIP: 46bb08	 Bytes: 0
block_.L_46bb08:

  ; Code: movl $0x0, -0x40(%rbp)	 RIP: 46bb08	 Bytes: 7
  %loadMem_46bb08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb08 = call %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb08)
  store %struct.Memory* %call_46bb08, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x3c(%rbp)	 RIP: 46bb0f	 Bytes: 4
  %loadMem_46bb0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb0f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb0f)
  store %struct.Memory* %call_46bb0f, %struct.Memory** %MEMORY

  ; Code: je .L_46bb2e	 RIP: 46bb13	 Bytes: 6
  %loadMem_46bb13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb13 = call %struct.Memory* @routine_je_.L_46bb2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb13, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46bb13, %struct.Memory** %MEMORY

  %loadBr_46bb13 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bb13 = icmp eq i8 %loadBr_46bb13, 1
  br i1 %cmpBr_46bb13, label %block_.L_46bb2e, label %block_46bb19

block_46bb19:
  ; Code: leaq -0x40(%rbp), %rsi	 RIP: 46bb19	 Bytes: 4
  %loadMem_46bb19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb19 = call %struct.Memory* @routine_leaq_MINUS0x40__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb19)
  store %struct.Memory* %call_46bb19, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edi	 RIP: 46bb1d	 Bytes: 3
  %loadMem_46bb1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb1d = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb1d)
  store %struct.Memory* %call_46bb1d, %struct.Memory** %MEMORY

  ; Code: callq .find_defense	 RIP: 46bb20	 Bytes: 5
  %loadMem1_46bb20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46bb20 = call %struct.Memory* @routine_callq_.find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46bb20, i64 -5024, i64 5, i64 5)
  store %struct.Memory* %call1_46bb20, %struct.Memory** %MEMORY

  %loadMem2_46bb20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bb20 = load i64, i64* %3
  %call2_46bb20 = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64  %loadPC_46bb20, %struct.Memory* %loadMem2_46bb20)
  store %struct.Memory* %call2_46bb20, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46bb25	 Bytes: 3
  %loadMem_46bb25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb25 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb25)
  store %struct.Memory* %call_46bb25, %struct.Memory** %MEMORY

  ; Code: jne .L_46bb4d	 RIP: 46bb28	 Bytes: 6
  %loadMem_46bb28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb28 = call %struct.Memory* @routine_jne_.L_46bb4d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb28, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_46bb28, %struct.Memory** %MEMORY

  %loadBr_46bb28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bb28 = icmp eq i8 %loadBr_46bb28, 1
  br i1 %cmpBr_46bb28, label %block_.L_46bb4d, label %block_.L_46bb2e

  ; Code: .L_46bb2e:	 RIP: 46bb2e	 Bytes: 0
block_.L_46bb2e:

  ; Code: cmpl $0x0, -0x38(%rbp)	 RIP: 46bb2e	 Bytes: 4
  %loadMem_46bb2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb2e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb2e)
  store %struct.Memory* %call_46bb2e, %struct.Memory** %MEMORY

  ; Code: je .L_46bbf7	 RIP: 46bb32	 Bytes: 6
  %loadMem_46bb32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb32 = call %struct.Memory* @routine_je_.L_46bbf7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb32, i8* %BRANCH_TAKEN, i64 197, i64 6, i64 6)
  store %struct.Memory* %call_46bb32, %struct.Memory** %MEMORY

  %loadBr_46bb32 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bb32 = icmp eq i8 %loadBr_46bb32, 1
  br i1 %cmpBr_46bb32, label %block_.L_46bbf7, label %block_46bb38

block_46bb38:
  ; Code: leaq -0x40(%rbp), %rsi	 RIP: 46bb38	 Bytes: 4
  %loadMem_46bb38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb38 = call %struct.Memory* @routine_leaq_MINUS0x40__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb38)
  store %struct.Memory* %call_46bb38, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 46bb3c	 Bytes: 3
  %loadMem_46bb3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb3c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb3c)
  store %struct.Memory* %call_46bb3c, %struct.Memory** %MEMORY

  ; Code: callq .find_defense	 RIP: 46bb3f	 Bytes: 5
  %loadMem1_46bb3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46bb3f = call %struct.Memory* @routine_callq_.find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46bb3f, i64 -5055, i64 5, i64 5)
  store %struct.Memory* %call1_46bb3f, %struct.Memory** %MEMORY

  %loadMem2_46bb3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bb3f = load i64, i64* %3
  %call2_46bb3f = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64  %loadPC_46bb3f, %struct.Memory* %loadMem2_46bb3f)
  store %struct.Memory* %call2_46bb3f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46bb44	 Bytes: 3
  %loadMem_46bb44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb44 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb44)
  store %struct.Memory* %call_46bb44, %struct.Memory** %MEMORY

  ; Code: je .L_46bbf7	 RIP: 46bb47	 Bytes: 6
  %loadMem_46bb47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb47 = call %struct.Memory* @routine_je_.L_46bbf7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb47, i8* %BRANCH_TAKEN, i64 176, i64 6, i64 6)
  store %struct.Memory* %call_46bb47, %struct.Memory** %MEMORY

  %loadBr_46bb47 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bb47 = icmp eq i8 %loadBr_46bb47, 1
  br i1 %cmpBr_46bb47, label %block_.L_46bbf7, label %block_.L_46bb4d

  ; Code: .L_46bb4d:	 RIP: 46bb4d	 Bytes: 0
block_.L_46bb4d:

  ; Code: cmpl $0x0, -0x40(%rbp)	 RIP: 46bb4d	 Bytes: 4
  %loadMem_46bb4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb4d = call %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb4d)
  store %struct.Memory* %call_46bb4d, %struct.Memory** %MEMORY

  ; Code: je .L_46bbf7	 RIP: 46bb51	 Bytes: 6
  %loadMem_46bb51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb51 = call %struct.Memory* @routine_je_.L_46bbf7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb51, i8* %BRANCH_TAKEN, i64 166, i64 6, i64 6)
  store %struct.Memory* %call_46bb51, %struct.Memory** %MEMORY

  %loadBr_46bb51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bb51 = icmp eq i8 %loadBr_46bb51, 1
  br i1 %cmpBr_46bb51, label %block_.L_46bbf7, label %block_46bb57

block_46bb57:
  ; Code: movq $0x58011c, %rdx	 RIP: 46bb57	 Bytes: 10
  %loadMem_46bb57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb57 = call %struct.Memory* @routine_movq__0x58011c___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb57)
  store %struct.Memory* %call_46bb57, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 46bb61	 Bytes: 2
  %loadMem_46bb61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb61 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb61)
  store %struct.Memory* %call_46bb61, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %edi	 RIP: 46bb63	 Bytes: 3
  %loadMem_46bb63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb63 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb63)
  store %struct.Memory* %call_46bb63, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %esi	 RIP: 46bb66	 Bytes: 3
  %loadMem_46bb66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb66 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb66)
  store %struct.Memory* %call_46bb66, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 46bb69	 Bytes: 3
  %loadMem_46bb69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb69 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb69)
  store %struct.Memory* %call_46bb69, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 46bb6c	 Bytes: 3
  %loadMem_46bb6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb6c = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb6c)
  store %struct.Memory* %call_46bb6c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 46bb6f	 Bytes: 3
  %loadMem_46bb6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb6f = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb6f)
  store %struct.Memory* %call_46bb6f, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 46bb72	 Bytes: 5
  %loadMem1_46bb72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46bb72 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46bb72, i64 -404802, i64 5, i64 5)
  store %struct.Memory* %call1_46bb72, %struct.Memory** %MEMORY

  %loadMem2_46bb72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bb72 = load i64, i64* %3
  %call2_46bb72 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_46bb72, %struct.Memory* %loadMem2_46bb72)
  store %struct.Memory* %call2_46bb72, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46bb77	 Bytes: 3
  %loadMem_46bb77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb77 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb77)
  store %struct.Memory* %call_46bb77, %struct.Memory** %MEMORY

  ; Code: je .L_46bbf7	 RIP: 46bb7a	 Bytes: 6
  %loadMem_46bb7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb7a = call %struct.Memory* @routine_je_.L_46bbf7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb7a, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_46bb7a, %struct.Memory** %MEMORY

  %loadBr_46bb7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bb7a = icmp eq i8 %loadBr_46bb7a, 1
  br i1 %cmpBr_46bb7a, label %block_.L_46bbf7, label %block_46bb80

block_46bb80:
  ; Code: movq $0x580133, %rdx	 RIP: 46bb80	 Bytes: 10
  %loadMem_46bb80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb80 = call %struct.Memory* @routine_movq__0x580133___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb80)
  store %struct.Memory* %call_46bb80, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 46bb8a	 Bytes: 2
  %loadMem_46bb8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb8a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb8a)
  store %struct.Memory* %call_46bb8a, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 46bb8c	 Bytes: 3
  %loadMem_46bb8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb8c = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb8c)
  store %struct.Memory* %call_46bb8c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 46bb8f	 Bytes: 3
  %loadMem_46bb8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb8f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb8f)
  store %struct.Memory* %call_46bb8f, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 46bb92	 Bytes: 3
  %loadMem_46bb92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb92 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb92)
  store %struct.Memory* %call_46bb92, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 46bb95	 Bytes: 3
  %loadMem_46bb95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb95 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb95)
  store %struct.Memory* %call_46bb95, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 46bb98	 Bytes: 3
  %loadMem_46bb98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bb98 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bb98)
  store %struct.Memory* %call_46bb98, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 46bb9b	 Bytes: 5
  %loadMem1_46bb9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46bb9b = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46bb9b, i64 -404843, i64 5, i64 5)
  store %struct.Memory* %call1_46bb9b, %struct.Memory** %MEMORY

  %loadMem2_46bb9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bb9b = load i64, i64* %3
  %call2_46bb9b = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_46bb9b, %struct.Memory* %loadMem2_46bb9b)
  store %struct.Memory* %call2_46bb9b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46bba0	 Bytes: 3
  %loadMem_46bba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bba0 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bba0)
  store %struct.Memory* %call_46bba0, %struct.Memory** %MEMORY

  ; Code: je .L_46bbed	 RIP: 46bba3	 Bytes: 6
  %loadMem_46bba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bba3 = call %struct.Memory* @routine_je_.L_46bbed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bba3, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_46bba3, %struct.Memory** %MEMORY

  %loadBr_46bba3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bba3 = icmp eq i8 %loadBr_46bba3, 1
  br i1 %cmpBr_46bba3, label %block_.L_46bbed, label %block_46bba9

block_46bba9:
  ; Code: movslq -0x14(%rbp), %rax	 RIP: 46bba9	 Bytes: 4
  %loadMem_46bba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bba9 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bba9)
  store %struct.Memory* %call_46bba9, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, 0xb89e60(,%rax,1)	 RIP: 46bbad	 Bytes: 8
  %loadMem_46bbad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bbad = call %struct.Memory* @routine_cmpb__0x0__0xb89e60___rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bbad)
  store %struct.Memory* %call_46bbad, %struct.Memory** %MEMORY

  ; Code: je .L_46bbe1	 RIP: 46bbb5	 Bytes: 6
  %loadMem_46bbb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bbb5 = call %struct.Memory* @routine_je_.L_46bbe1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bbb5, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_46bbb5, %struct.Memory** %MEMORY

  %loadBr_46bbb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bbb5 = icmp eq i8 %loadBr_46bbb5, 1
  br i1 %cmpBr_46bbb5, label %block_.L_46bbe1, label %block_46bbbb

block_46bbbb:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46bbbb	 Bytes: 4
  %loadMem_46bbbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bbbb = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bbbb)
  store %struct.Memory* %call_46bbbb, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, 0xb89e60(,%rax,1)	 RIP: 46bbbf	 Bytes: 8
  %loadMem_46bbbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bbbf = call %struct.Memory* @routine_cmpb__0x0__0xb89e60___rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bbbf)
  store %struct.Memory* %call_46bbbf, %struct.Memory** %MEMORY

  ; Code: je .L_46bbe1	 RIP: 46bbc7	 Bytes: 6
  %loadMem_46bbc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bbc7 = call %struct.Memory* @routine_je_.L_46bbe1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bbc7, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_46bbc7, %struct.Memory** %MEMORY

  %loadBr_46bbc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bbc7 = icmp eq i8 %loadBr_46bbc7, 1
  br i1 %cmpBr_46bbc7, label %block_.L_46bbe1, label %block_46bbcd

block_46bbcd:
  ; Code: movl -0x14(%rbp), %edi	 RIP: 46bbcd	 Bytes: 3
  %loadMem_46bbcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bbcd = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bbcd)
  store %struct.Memory* %call_46bbcd, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %esi	 RIP: 46bbd0	 Bytes: 3
  %loadMem_46bbd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bbd0 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bbd0)
  store %struct.Memory* %call_46bbd0, %struct.Memory** %MEMORY

  ; Code: callq .defend_both	 RIP: 46bbd3	 Bytes: 5
  %loadMem1_46bbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46bbd3 = call %struct.Memory* @routine_callq_.defend_both(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46bbd3, i64 -3635, i64 5, i64 5)
  store %struct.Memory* %call1_46bbd3, %struct.Memory** %MEMORY

  %loadMem2_46bbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bbd3 = load i64, i64* %3
  %call2_46bbd3 = call %struct.Memory* @sub_46ada0.defend_both(%struct.State* %0, i64  %loadPC_46bbd3, %struct.Memory* %loadMem2_46bbd3)
  store %struct.Memory* %call2_46bbd3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46bbd8	 Bytes: 3
  %loadMem_46bbd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bbd8 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bbd8)
  store %struct.Memory* %call_46bbd8, %struct.Memory** %MEMORY

  ; Code: jne .L_46bbe8	 RIP: 46bbdb	 Bytes: 6
  %loadMem_46bbdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bbdb = call %struct.Memory* @routine_jne_.L_46bbe8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bbdb, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_46bbdb, %struct.Memory** %MEMORY

  %loadBr_46bbdb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bbdb = icmp eq i8 %loadBr_46bbdb, 1
  br i1 %cmpBr_46bbdb, label %block_.L_46bbe8, label %block_.L_46bbe1

  ; Code: .L_46bbe1:	 RIP: 46bbe1	 Bytes: 0
block_.L_46bbe1:

  ; Code: movl $0x5, -0x30(%rbp)	 RIP: 46bbe1	 Bytes: 7
  %loadMem_46bbe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bbe1 = call %struct.Memory* @routine_movl__0x5__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bbe1)
  store %struct.Memory* %call_46bbe1, %struct.Memory** %MEMORY

  ; Code: .L_46bbe8:	 RIP: 46bbe8	 Bytes: 0
  br label %block_.L_46bbe8
block_.L_46bbe8:

  ; Code: callq .popgo	 RIP: 46bbe8	 Bytes: 5
  %loadMem1_46bbe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46bbe8 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46bbe8, i64 -384648, i64 5, i64 5)
  store %struct.Memory* %call1_46bbe8, %struct.Memory** %MEMORY

  %loadMem2_46bbe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bbe8 = load i64, i64* %3
  %call2_46bbe8 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46bbe8, %struct.Memory* %loadMem2_46bbe8)
  store %struct.Memory* %call2_46bbe8, %struct.Memory** %MEMORY

  ; Code: .L_46bbed:	 RIP: 46bbed	 Bytes: 0
  br label %block_.L_46bbed
block_.L_46bbed:

  ; Code: callq .popgo	 RIP: 46bbed	 Bytes: 5
  %loadMem1_46bbed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46bbed = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46bbed, i64 -384653, i64 5, i64 5)
  store %struct.Memory* %call1_46bbed, %struct.Memory** %MEMORY

  %loadMem2_46bbed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bbed = load i64, i64* %3
  %call2_46bbed = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46bbed, %struct.Memory* %loadMem2_46bbed)
  store %struct.Memory* %call2_46bbed, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46bbfe	 RIP: 46bbf2	 Bytes: 5
  %loadMem_46bbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bbf2 = call %struct.Memory* @routine_jmpq_.L_46bbfe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bbf2, i64 12, i64 5)
  store %struct.Memory* %call_46bbf2, %struct.Memory** %MEMORY

  br label %block_.L_46bbfe

  ; Code: .L_46bbf7:	 RIP: 46bbf7	 Bytes: 0
block_.L_46bbf7:

  ; Code: movl $0x5, -0x30(%rbp)	 RIP: 46bbf7	 Bytes: 7
  %loadMem_46bbf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bbf7 = call %struct.Memory* @routine_movl__0x5__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bbf7)
  store %struct.Memory* %call_46bbf7, %struct.Memory** %MEMORY

  ; Code: .L_46bbfe:	 RIP: 46bbfe	 Bytes: 0
  br label %block_.L_46bbfe
block_.L_46bbfe:

  ; Code: jmpq .L_46bc03	 RIP: 46bbfe	 Bytes: 5
  %loadMem_46bbfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bbfe = call %struct.Memory* @routine_jmpq_.L_46bc03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bbfe, i64 5, i64 5)
  store %struct.Memory* %call_46bbfe, %struct.Memory** %MEMORY

  br label %block_.L_46bc03

  ; Code: .L_46bc03:	 RIP: 46bc03	 Bytes: 0
block_.L_46bc03:

  ; Code: jmpq .L_46bc08	 RIP: 46bc03	 Bytes: 5
  %loadMem_46bc03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bc03 = call %struct.Memory* @routine_jmpq_.L_46bc08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bc03, i64 5, i64 5)
  store %struct.Memory* %call_46bc03, %struct.Memory** %MEMORY

  br label %block_.L_46bc08

  ; Code: .L_46bc08:	 RIP: 46bc08	 Bytes: 0
block_.L_46bc08:

  ; Code: jmpq .L_46bc0d	 RIP: 46bc08	 Bytes: 5
  %loadMem_46bc08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bc08 = call %struct.Memory* @routine_jmpq_.L_46bc0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bc08, i64 5, i64 5)
  store %struct.Memory* %call_46bc08, %struct.Memory** %MEMORY

  br label %block_.L_46bc0d

  ; Code: .L_46bc0d:	 RIP: 46bc0d	 Bytes: 0
block_.L_46bc0d:

  ; Code: callq .popgo	 RIP: 46bc0d	 Bytes: 5
  %loadMem1_46bc0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46bc0d = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46bc0d, i64 -384685, i64 5, i64 5)
  store %struct.Memory* %call1_46bc0d, %struct.Memory** %MEMORY

  %loadMem2_46bc0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bc0d = load i64, i64* %3
  %call2_46bc0d = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_46bc0d, %struct.Memory* %loadMem2_46bc0d)
  store %struct.Memory* %call2_46bc0d, %struct.Memory** %MEMORY

  ; Code: .L_46bc12:	 RIP: 46bc12	 Bytes: 0
  br label %block_.L_46bc12
block_.L_46bc12:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 46bc12	 Bytes: 3
  %loadMem_46bc12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bc12 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bc12)
  store %struct.Memory* %call_46bc12, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 46bc15	 Bytes: 3
  %loadMem_46bc15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bc15 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bc15)
  store %struct.Memory* %call_46bc15, %struct.Memory** %MEMORY

  ; Code: .L_46bc18:	 RIP: 46bc18	 Bytes: 0
  br label %block_.L_46bc18
block_.L_46bc18:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 46bc18	 Bytes: 3
  %loadMem_46bc18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bc18 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bc18)
  store %struct.Memory* %call_46bc18, %struct.Memory** %MEMORY

  ; Code: addq $0x38, %rsp	 RIP: 46bc1b	 Bytes: 4
  %loadMem_46bc1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bc1b = call %struct.Memory* @routine_addq__0x38___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bc1b)
  store %struct.Memory* %call_46bc1b, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 46bc1f	 Bytes: 1
  %loadMem_46bc1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bc1f = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bc1f)
  store %struct.Memory* %call_46bc1f, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 46bc20	 Bytes: 1
  %loadMem_46bc20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bc20 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bc20)
  store %struct.Memory* %call_46bc20, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 46bc21	 Bytes: 1
  %loadMem_46bc21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46bc21 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46bc21)
  store %struct.Memory* %call_46bc21, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_46bc21
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

define %struct.Memory* @routine_subq__0x38___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 56)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x18__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x10__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x5800a9___r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 ptrtoint( %G__0x5800a9_type* @G__0x5800a9 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_xorl__ebx___ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBX
  %13 = load i32, i32* %EBX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__r8d__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r9d__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r10d__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__r11___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R11
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__ebx___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %EBX
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

define %struct.Memory* @routine_je_.L_46bc12(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.attack(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_46bc0d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x34__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jne_.L_46b8b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x2__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_46ba32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x5800c0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x5800c0_type* @G__0x5800c0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_movl__eax___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_je_.L_46b91f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
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

define %struct.Memory* @routine_cmpb__0x0__0xb89e60___rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12099168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_46b904(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_callq_.find_defense(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_46b91a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_46bc18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 32
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_46b93c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq__0x5800d7___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x5800d7_type* @G__0x5800d7 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_je_.L_46ba2d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x5800ee___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x5800ee_type* @G__0x5800ee to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_je_.L_46ba28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_46ba08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_je_.L_46ba03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.defend_both(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movl__0x2__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_46ba23(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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




define %struct.Memory* @routine_je_.L_46ba6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_jne_.L_46ba76(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x5__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_46bc08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x580105___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x580105_type* @G__0x580105 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_je_.L_46baf4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_46bace(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_46baef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_je_.L_46baea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46bb08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_46bc03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_je_.L_46bb2e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x40__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jne_.L_46bb4d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_46bbf7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x58011c___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x58011c_type* @G__0x58011c to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_MINUS0x40__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_movq__0x580133___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x580133_type* @G__0x580133 to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_je_.L_46bbed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_46bbe1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_46bbe8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_46bbfe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_46bc03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_46bc0d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_addq__0x38___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 56)
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

