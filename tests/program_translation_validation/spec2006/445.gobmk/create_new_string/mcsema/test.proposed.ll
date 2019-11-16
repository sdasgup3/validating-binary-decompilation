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
%G_0x99da00_type = type <{ [4 x i8] }>
@G_0x99da00= global %G_0x99da00_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x99da08_type = type <{ [4 x i8] }>
@G_0x99da08= global %G_0x99da08_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xa0e710_type = type <{ [8 x i8] }>
@G_0xa0e710= global %G_0xa0e710_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x99da00_type = type <{ [8 x i8] }>
@G__0x99da00= global %G__0x99da00_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xa7f430_type = type <{ [8 x i8] }>
@G__0xa7f430= global %G__0xa7f430_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @create_new_string(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .create_new_string:	 RIP: 40a850	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 40a850	 Bytes: 1
  %loadMem_40a850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a850 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a850)
  store %struct.Memory* %call_40a850, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 40a851	 Bytes: 3
  %loadMem_40a851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a851 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a851)
  store %struct.Memory* %call_40a851, %struct.Memory** %MEMORY

  ; Code: movq $0xa7f430, %rax	 RIP: 40a854	 Bytes: 10
  %loadMem_40a854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a854 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a854)
  store %struct.Memory* %call_40a854, %struct.Memory** %MEMORY

  ; Code: movq $0x99da00, %rcx	 RIP: 40a85e	 Bytes: 10
  %loadMem_40a85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a85e = call %struct.Memory* @routine_movq__0x99da00___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a85e)
  store %struct.Memory* %call_40a85e, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %edx	 RIP: 40a868	 Bytes: 5
  %loadMem_40a868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a868 = call %struct.Memory* @routine_movl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a868)
  store %struct.Memory* %call_40a868, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 40a86d	 Bytes: 3
  %loadMem_40a86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a86d = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a86d)
  store %struct.Memory* %call_40a86d, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 40a870	 Bytes: 4
  %loadMem_40a870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a870 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a870)
  store %struct.Memory* %call_40a870, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rsi,1), %edi	 RIP: 40a874	 Bytes: 8
  %loadMem_40a874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a874 = call %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a874)
  store %struct.Memory* %call_40a874, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0xc(%rbp)	 RIP: 40a87c	 Bytes: 3
  %loadMem_40a87c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a87c = call %struct.Memory* @routine_movl__edi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a87c)
  store %struct.Memory* %call_40a87c, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %edx	 RIP: 40a87f	 Bytes: 3
  %loadMem_40a87f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a87f = call %struct.Memory* @routine_subl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a87f)
  store %struct.Memory* %call_40a87f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x10(%rbp)	 RIP: 40a882	 Bytes: 3
  %loadMem_40a882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a882 = call %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a882)
  store %struct.Memory* %call_40a882, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rsi	 RIP: 40a885	 Bytes: 8
  %loadMem_40a885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a885 = call %struct.Memory* @routine_movq_0xa0e710___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a885)
  store %struct.Memory* %call_40a885, %struct.Memory** %MEMORY

  ; Code: movq %rcx, (%rsi)	 RIP: 40a88d	 Bytes: 3
  %loadMem_40a88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a88d = call %struct.Memory* @routine_movq__rcx____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a88d)
  store %struct.Memory* %call_40a88d, %struct.Memory** %MEMORY

  ; Code: movl 0x99da00, %edx	 RIP: 40a890	 Bytes: 7
  %loadMem_40a890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a890 = call %struct.Memory* @routine_movl_0x99da00___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a890)
  store %struct.Memory* %call_40a890, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rcx	 RIP: 40a897	 Bytes: 8
  %loadMem_40a897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a897 = call %struct.Memory* @routine_movq_0xa0e710___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a897)
  store %struct.Memory* %call_40a897, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 40a89f	 Bytes: 3
  %loadMem_40a89f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a89f = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a89f)
  store %struct.Memory* %call_40a89f, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40a8a2	 Bytes: 4
  %loadMem_40a8a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8a2 = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8a2)
  store %struct.Memory* %call_40a8a2, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40a8a6	 Bytes: 8
  %loadMem_40a8a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8a6 = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8a6)
  store %struct.Memory* %call_40a8a6, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8(%rcx)	 RIP: 40a8ae	 Bytes: 3
  %loadMem_40a8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8ae = call %struct.Memory* @routine_movl__edx__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8ae)
  store %struct.Memory* %call_40a8ae, %struct.Memory** %MEMORY

  ; Code: movl 0x99da00, %edx	 RIP: 40a8b1	 Bytes: 7
  %loadMem_40a8b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8b1 = call %struct.Memory* @routine_movl_0x99da00___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8b1)
  store %struct.Memory* %call_40a8b1, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edi	 RIP: 40a8b8	 Bytes: 2
  %loadMem_40a8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8b8 = call %struct.Memory* @routine_movl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8b8)
  store %struct.Memory* %call_40a8b8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edi	 RIP: 40a8ba	 Bytes: 3
  %loadMem_40a8ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8ba = call %struct.Memory* @routine_addl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8ba)
  store %struct.Memory* %call_40a8ba, %struct.Memory** %MEMORY

  ; Code: movl %edi, 0x99da00	 RIP: 40a8bd	 Bytes: 7
  %loadMem_40a8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8bd = call %struct.Memory* @routine_movl__edi__0x99da00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8bd)
  store %struct.Memory* %call_40a8bd, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8(%rbp)	 RIP: 40a8c4	 Bytes: 3
  %loadMem_40a8c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8c4 = call %struct.Memory* @routine_movl__edx__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8c4)
  store %struct.Memory* %call_40a8c4, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 40a8c7	 Bytes: 3
  %loadMem_40a8c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8c7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8c7)
  store %struct.Memory* %call_40a8c7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 40a8ca	 Bytes: 4
  %loadMem_40a8ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8ca = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8ca)
  store %struct.Memory* %call_40a8ca, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xaab3f0(,%rcx,4)	 RIP: 40a8ce	 Bytes: 7
  %loadMem_40a8ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8ce = call %struct.Memory* @routine_movl__edx__0xaab3f0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8ce)
  store %struct.Memory* %call_40a8ce, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 40a8d5	 Bytes: 3
  %loadMem_40a8d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8d5 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8d5)
  store %struct.Memory* %call_40a8d5, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 40a8d8	 Bytes: 4
  %loadMem_40a8d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8d8 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8d8)
  store %struct.Memory* %call_40a8d8, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xaaba30(,%rcx,4)	 RIP: 40a8dc	 Bytes: 7
  %loadMem_40a8dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8dc = call %struct.Memory* @routine_movl__edx__0xaaba30___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8dc)
  store %struct.Memory* %call_40a8dc, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 40a8e3	 Bytes: 3
  %loadMem_40a8e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8e3 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8e3)
  store %struct.Memory* %call_40a8e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40a8e6	 Bytes: 4
  %loadMem_40a8e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8e6 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8e6)
  store %struct.Memory* %call_40a8e6, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a8ea	 Bytes: 7
  %loadMem_40a8ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8ea = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8ea)
  store %struct.Memory* %call_40a8ea, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40a8f1	 Bytes: 3
  %loadMem_40a8f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8f1 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8f1)
  store %struct.Memory* %call_40a8f1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 40a8f4	 Bytes: 3
  %loadMem_40a8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8f4 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8f4)
  store %struct.Memory* %call_40a8f4, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rsi)	 RIP: 40a8f7	 Bytes: 2
  %loadMem_40a8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8f7 = call %struct.Memory* @routine_movl__edx____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8f7)
  store %struct.Memory* %call_40a8f7, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40a8f9	 Bytes: 4
  %loadMem_40a8f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8f9 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8f9)
  store %struct.Memory* %call_40a8f9, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a8fd	 Bytes: 7
  %loadMem_40a8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a8fd = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a8fd)
  store %struct.Memory* %call_40a8fd, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40a904	 Bytes: 3
  %loadMem_40a904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a904 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a904)
  store %struct.Memory* %call_40a904, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 40a907	 Bytes: 3
  %loadMem_40a907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a907 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a907)
  store %struct.Memory* %call_40a907, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x4(%rsi)	 RIP: 40a90a	 Bytes: 7
  %loadMem_40a90a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a90a = call %struct.Memory* @routine_movl__0x1__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a90a)
  store %struct.Memory* %call_40a90a, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 40a911	 Bytes: 3
  %loadMem_40a911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a911 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a911)
  store %struct.Memory* %call_40a911, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40a914	 Bytes: 4
  %loadMem_40a914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a914 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a914)
  store %struct.Memory* %call_40a914, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a918	 Bytes: 7
  %loadMem_40a918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a918 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a918)
  store %struct.Memory* %call_40a918, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40a91f	 Bytes: 3
  %loadMem_40a91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a91f = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a91f)
  store %struct.Memory* %call_40a91f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 40a922	 Bytes: 3
  %loadMem_40a922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a922 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a922)
  store %struct.Memory* %call_40a922, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8(%rsi)	 RIP: 40a925	 Bytes: 3
  %loadMem_40a925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a925 = call %struct.Memory* @routine_movl__edx__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a925)
  store %struct.Memory* %call_40a925, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40a928	 Bytes: 4
  %loadMem_40a928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a928 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a928)
  store %struct.Memory* %call_40a928, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a92c	 Bytes: 7
  %loadMem_40a92c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a92c = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a92c)
  store %struct.Memory* %call_40a92c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40a933	 Bytes: 3
  %loadMem_40a933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a933 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a933)
  store %struct.Memory* %call_40a933, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 40a936	 Bytes: 3
  %loadMem_40a936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a936 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a936)
  store %struct.Memory* %call_40a936, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0xc(%rsi)	 RIP: 40a939	 Bytes: 7
  %loadMem_40a939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a939 = call %struct.Memory* @routine_movl__0x0__0xc__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a939)
  store %struct.Memory* %call_40a939, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40a940	 Bytes: 4
  %loadMem_40a940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a940 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a940)
  store %struct.Memory* %call_40a940, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a944	 Bytes: 7
  %loadMem_40a944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a944 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a944)
  store %struct.Memory* %call_40a944, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40a94b	 Bytes: 3
  %loadMem_40a94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a94b = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a94b)
  store %struct.Memory* %call_40a94b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 40a94e	 Bytes: 3
  %loadMem_40a94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a94e = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a94e)
  store %struct.Memory* %call_40a94e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x60(%rsi)	 RIP: 40a951	 Bytes: 7
  %loadMem_40a951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a951 = call %struct.Memory* @routine_movl__0x0__0x60__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a951)
  store %struct.Memory* %call_40a951, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40a958	 Bytes: 4
  %loadMem_40a958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a958 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a958)
  store %struct.Memory* %call_40a958, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a95c	 Bytes: 7
  %loadMem_40a95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a95c = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a95c)
  store %struct.Memory* %call_40a95c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40a963	 Bytes: 3
  %loadMem_40a963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a963 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a963)
  store %struct.Memory* %call_40a963, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x2e4(%rax)	 RIP: 40a966	 Bytes: 10
  %loadMem_40a966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a966 = call %struct.Memory* @routine_movl__0x0__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a966)
  store %struct.Memory* %call_40a966, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %edx	 RIP: 40a970	 Bytes: 7
  %loadMem_40a970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a970 = call %struct.Memory* @routine_movl_0x99da08___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a970)
  store %struct.Memory* %call_40a970, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40a977	 Bytes: 3
  %loadMem_40a977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a977 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a977)
  store %struct.Memory* %call_40a977, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x99da08	 RIP: 40a97a	 Bytes: 7
  %loadMem_40a97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a97a = call %struct.Memory* @routine_movl__edx__0x99da08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a97a)
  store %struct.Memory* %call_40a97a, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 40a981	 Bytes: 3
  %loadMem_40a981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a981 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a981)
  store %struct.Memory* %call_40a981, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %edx	 RIP: 40a984	 Bytes: 3
  %loadMem_40a984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a984 = call %struct.Memory* @routine_addl__0x14___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a984)
  store %struct.Memory* %call_40a984, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rax	 RIP: 40a987	 Bytes: 3
  %loadMem_40a987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a987 = call %struct.Memory* @routine_movslq__edx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a987)
  store %struct.Memory* %call_40a987, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 40a98a	 Bytes: 8
  %loadMem_40a98a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a98a = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a98a)
  store %struct.Memory* %call_40a98a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 40a992	 Bytes: 3
  %loadMem_40a992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a992 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a992)
  store %struct.Memory* %call_40a992, %struct.Memory** %MEMORY

  ; Code: jne .L_40aa1f	 RIP: 40a995	 Bytes: 6
  %loadMem_40a995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a995 = call %struct.Memory* @routine_jne_.L_40aa1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a995, i8* %BRANCH_TAKEN, i64 138, i64 6, i64 6)
  store %struct.Memory* %call_40a995, %struct.Memory** %MEMORY

  %loadBr_40a995 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a995 = icmp eq i8 %loadBr_40a995, 1
  br i1 %cmpBr_40a995, label %block_.L_40aa1f, label %block_40a99b

block_40a99b:
  ; Code: jmpq .L_40a9a0	 RIP: 40a99b	 Bytes: 5
  %loadMem_40a99b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a99b = call %struct.Memory* @routine_jmpq_.L_40a9a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a99b, i64 5, i64 5)
  store %struct.Memory* %call_40a99b, %struct.Memory** %MEMORY

  br label %block_.L_40a9a0

  ; Code: .L_40a9a0:	 RIP: 40a9a0	 Bytes: 0
block_.L_40a9a0:

  ; Code: movq $0xa7f430, %rax	 RIP: 40a9a0	 Bytes: 10
  %loadMem_40a9a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9a0 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9a0)
  store %struct.Memory* %call_40a9a0, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40a9aa	 Bytes: 4
  %loadMem_40a9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9aa = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9aa)
  store %struct.Memory* %call_40a9aa, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a9ae	 Bytes: 7
  %loadMem_40a9ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9ae = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9ae)
  store %struct.Memory* %call_40a9ae, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40a9b5	 Bytes: 3
  %loadMem_40a9b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9b5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9b5)
  store %struct.Memory* %call_40a9b5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 40a9b8	 Bytes: 4
  %loadMem_40a9b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9b8 = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9b8)
  store %struct.Memory* %call_40a9b8, %struct.Memory** %MEMORY

  ; Code: jge .L_40a9f9	 RIP: 40a9bc	 Bytes: 6
  %loadMem_40a9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9bc = call %struct.Memory* @routine_jge_.L_40a9f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9bc, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_40a9bc, %struct.Memory** %MEMORY

  %loadBr_40a9bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a9bc = icmp eq i8 %loadBr_40a9bc, 1
  br i1 %cmpBr_40a9bc, label %block_.L_40a9f9, label %block_40a9c2

block_40a9c2:
  ; Code: movq $0xa7f430, %rax	 RIP: 40a9c2	 Bytes: 10
  %loadMem_40a9c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9c2 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9c2)
  store %struct.Memory* %call_40a9c2, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40a9cc	 Bytes: 3
  %loadMem_40a9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9cc = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9cc)
  store %struct.Memory* %call_40a9cc, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40a9cf	 Bytes: 3
  %loadMem_40a9cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9cf = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9cf)
  store %struct.Memory* %call_40a9cf, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40a9d2	 Bytes: 4
  %loadMem_40a9d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9d2 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9d2)
  store %struct.Memory* %call_40a9d2, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40a9d6	 Bytes: 7
  %loadMem_40a9d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9d6 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9d6)
  store %struct.Memory* %call_40a9d6, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40a9dd	 Bytes: 3
  %loadMem_40a9dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9dd = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9dd)
  store %struct.Memory* %call_40a9dd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40a9e0	 Bytes: 3
  %loadMem_40a9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9e0 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9e0)
  store %struct.Memory* %call_40a9e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40a9e3	 Bytes: 4
  %loadMem_40a9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9e3 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9e3)
  store %struct.Memory* %call_40a9e3, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40a9e7	 Bytes: 7
  %loadMem_40a9e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9e7 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9e7)
  store %struct.Memory* %call_40a9e7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40a9ee	 Bytes: 3
  %loadMem_40a9ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9ee = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9ee)
  store %struct.Memory* %call_40a9ee, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 40a9f1	 Bytes: 4
  %loadMem_40a9f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9f1 = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9f1)
  store %struct.Memory* %call_40a9f1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 40a9f5	 Bytes: 4
  %loadMem_40a9f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9f5 = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9f5)
  store %struct.Memory* %call_40a9f5, %struct.Memory** %MEMORY

  ; Code: .L_40a9f9:	 RIP: 40a9f9	 Bytes: 0
  br label %block_.L_40a9f9
block_.L_40a9f9:

  ; Code: movq $0xa7f430, %rax	 RIP: 40a9f9	 Bytes: 10
  %loadMem_40a9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a9f9 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a9f9)
  store %struct.Memory* %call_40a9f9, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40aa03	 Bytes: 4
  %loadMem_40aa03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa03 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa03)
  store %struct.Memory* %call_40aa03, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40aa07	 Bytes: 7
  %loadMem_40aa07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa07 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa07)
  store %struct.Memory* %call_40aa07, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40aa0e	 Bytes: 3
  %loadMem_40aa0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa0e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa0e)
  store %struct.Memory* %call_40aa0e, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40aa11	 Bytes: 3
  %loadMem_40aa11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa11 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa11)
  store %struct.Memory* %call_40aa11, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40aa14	 Bytes: 3
  %loadMem_40aa14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa14 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa14)
  store %struct.Memory* %call_40aa14, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 40aa17	 Bytes: 3
  %loadMem_40aa17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa17 = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa17)
  store %struct.Memory* %call_40aa17, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40ab96	 RIP: 40aa1a	 Bytes: 5
  %loadMem_40aa1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa1a = call %struct.Memory* @routine_jmpq_.L_40ab96(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa1a, i64 380, i64 5)
  store %struct.Memory* %call_40aa1a, %struct.Memory** %MEMORY

  br label %block_.L_40ab96

  ; Code: .L_40aa1f:	 RIP: 40aa1f	 Bytes: 0
block_.L_40aa1f:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40aa1f	 Bytes: 3
  %loadMem_40aa1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa1f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa1f)
  store %struct.Memory* %call_40aa1f, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40aa22	 Bytes: 3
  %loadMem_40aa22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa22 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa22)
  store %struct.Memory* %call_40aa22, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40aa25	 Bytes: 3
  %loadMem_40aa25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa25 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa25)
  store %struct.Memory* %call_40aa25, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40aa28	 Bytes: 8
  %loadMem_40aa28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa28 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa28)
  store %struct.Memory* %call_40aa28, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 40aa30	 Bytes: 3
  %loadMem_40aa30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa30 = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa30)
  store %struct.Memory* %call_40aa30, %struct.Memory** %MEMORY

  ; Code: jne .L_40ab91	 RIP: 40aa33	 Bytes: 6
  %loadMem_40aa33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa33 = call %struct.Memory* @routine_jne_.L_40ab91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa33, i8* %BRANCH_TAKEN, i64 350, i64 6, i64 6)
  store %struct.Memory* %call_40aa33, %struct.Memory** %MEMORY

  %loadBr_40aa33 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40aa33 = icmp eq i8 %loadBr_40aa33, 1
  br i1 %cmpBr_40aa33, label %block_.L_40ab91, label %block_40aa39

block_40aa39:
  ; Code: movq $0xa7f430, %rax	 RIP: 40aa39	 Bytes: 10
  %loadMem_40aa39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa39 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa39)
  store %struct.Memory* %call_40aa39, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40aa43	 Bytes: 3
  %loadMem_40aa43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa43 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa43)
  store %struct.Memory* %call_40aa43, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40aa46	 Bytes: 3
  %loadMem_40aa46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa46 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa46)
  store %struct.Memory* %call_40aa46, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40aa49	 Bytes: 3
  %loadMem_40aa49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa49 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa49)
  store %struct.Memory* %call_40aa49, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40aa4c	 Bytes: 8
  %loadMem_40aa4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa4c = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa4c)
  store %struct.Memory* %call_40aa4c, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40aa54	 Bytes: 7
  %loadMem_40aa54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa54 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa54)
  store %struct.Memory* %call_40aa54, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40aa5b	 Bytes: 3
  %loadMem_40aa5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa5b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa5b)
  store %struct.Memory* %call_40aa5b, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40aa5e	 Bytes: 6
  %loadMem_40aa5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa5e = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa5e)
  store %struct.Memory* %call_40aa5e, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40aa64	 Bytes: 7
  %loadMem_40aa64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa64 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa64)
  store %struct.Memory* %call_40aa64, %struct.Memory** %MEMORY

  ; Code: je .L_40ab91	 RIP: 40aa6b	 Bytes: 6
  %loadMem_40aa6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa6b = call %struct.Memory* @routine_je_.L_40ab91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa6b, i8* %BRANCH_TAKEN, i64 294, i64 6, i64 6)
  store %struct.Memory* %call_40aa6b, %struct.Memory** %MEMORY

  %loadBr_40aa6b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40aa6b = icmp eq i8 %loadBr_40aa6b, 1
  br i1 %cmpBr_40aa6b, label %block_.L_40ab91, label %block_40aa71

block_40aa71:
  ; Code: movq $0xa7f430, %rax	 RIP: 40aa71	 Bytes: 10
  %loadMem_40aa71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa71 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa71)
  store %struct.Memory* %call_40aa71, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40aa7b	 Bytes: 3
  %loadMem_40aa7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa7b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa7b)
  store %struct.Memory* %call_40aa7b, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40aa7e	 Bytes: 3
  %loadMem_40aa7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa7e = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa7e)
  store %struct.Memory* %call_40aa7e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40aa81	 Bytes: 3
  %loadMem_40aa81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa81 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa81)
  store %struct.Memory* %call_40aa81, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40aa84	 Bytes: 7
  %loadMem_40aa84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa84 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa84)
  store %struct.Memory* %call_40aa84, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 40aa8b	 Bytes: 3
  %loadMem_40aa8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa8b = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa8b)
  store %struct.Memory* %call_40aa8b, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40aa8e	 Bytes: 3
  %loadMem_40aa8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa8e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa8e)
  store %struct.Memory* %call_40aa8e, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40aa91	 Bytes: 3
  %loadMem_40aa91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa91 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa91)
  store %struct.Memory* %call_40aa91, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40aa94	 Bytes: 3
  %loadMem_40aa94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa94 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa94)
  store %struct.Memory* %call_40aa94, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40aa97	 Bytes: 7
  %loadMem_40aa97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa97 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa97)
  store %struct.Memory* %call_40aa97, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40aa9e	 Bytes: 4
  %loadMem_40aa9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aa9e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aa9e)
  store %struct.Memory* %call_40aa9e, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40aaa2	 Bytes: 7
  %loadMem_40aaa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aaa2 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aaa2)
  store %struct.Memory* %call_40aaa2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40aaa9	 Bytes: 3
  %loadMem_40aaa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aaa9 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aaa9)
  store %struct.Memory* %call_40aaa9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40aaac	 Bytes: 3
  %loadMem_40aaac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aaac = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aaac)
  store %struct.Memory* %call_40aaac, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40aaaf	 Bytes: 4
  %loadMem_40aaaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aaaf = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aaaf)
  store %struct.Memory* %call_40aaaf, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40aab3	 Bytes: 7
  %loadMem_40aab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aab3 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aab3)
  store %struct.Memory* %call_40aab3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40aaba	 Bytes: 3
  %loadMem_40aaba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aaba = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aaba)
  store %struct.Memory* %call_40aaba, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40aabd	 Bytes: 3
  %loadMem_40aabd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aabd = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aabd)
  store %struct.Memory* %call_40aabd, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40aac0	 Bytes: 4
  %loadMem_40aac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aac0 = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aac0)
  store %struct.Memory* %call_40aac0, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40aac4	 Bytes: 3
  %loadMem_40aac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aac4 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aac4)
  store %struct.Memory* %call_40aac4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40aac7	 Bytes: 4
  %loadMem_40aac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aac7 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aac7)
  store %struct.Memory* %call_40aac7, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40aacb	 Bytes: 4
  %loadMem_40aacb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aacb = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aacb)
  store %struct.Memory* %call_40aacb, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40aacf	 Bytes: 3
  %loadMem_40aacf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aacf = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aacf)
  store %struct.Memory* %call_40aacf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40aad2	 Bytes: 4
  %loadMem_40aad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aad2 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aad2)
  store %struct.Memory* %call_40aad2, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40aad6	 Bytes: 4
  %loadMem_40aad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aad6 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aad6)
  store %struct.Memory* %call_40aad6, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40aada	 Bytes: 7
  %loadMem_40aada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aada = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aada)
  store %struct.Memory* %call_40aada, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40aae1	 Bytes: 3
  %loadMem_40aae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aae1 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aae1)
  store %struct.Memory* %call_40aae1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40aae4	 Bytes: 3
  %loadMem_40aae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aae4 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aae4)
  store %struct.Memory* %call_40aae4, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40aae7	 Bytes: 4
  %loadMem_40aae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aae7 = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aae7)
  store %struct.Memory* %call_40aae7, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40aaeb	 Bytes: 8
  %loadMem_40aaeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aaeb = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aaeb)
  store %struct.Memory* %call_40aaeb, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40aaf3	 Bytes: 3
  %loadMem_40aaf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aaf3 = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aaf3)
  store %struct.Memory* %call_40aaf3, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40aaf6	 Bytes: 4
  %loadMem_40aaf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aaf6 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aaf6)
  store %struct.Memory* %call_40aaf6, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40aafa	 Bytes: 7
  %loadMem_40aafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aafa = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aafa)
  store %struct.Memory* %call_40aafa, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40ab01	 Bytes: 3
  %loadMem_40ab01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab01 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab01)
  store %struct.Memory* %call_40ab01, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40ab04	 Bytes: 3
  %loadMem_40ab04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab04 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab04)
  store %struct.Memory* %call_40ab04, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40ab07	 Bytes: 3
  %loadMem_40ab07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab07 = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab07)
  store %struct.Memory* %call_40ab07, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40ab0a	 Bytes: 8
  %loadMem_40ab0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab0a = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab0a)
  store %struct.Memory* %call_40ab0a, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40ab12	 Bytes: 3
  %loadMem_40ab12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab12 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab12)
  store %struct.Memory* %call_40ab12, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40ab15	 Bytes: 4
  %loadMem_40ab15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab15 = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab15)
  store %struct.Memory* %call_40ab15, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40ab19	 Bytes: 8
  %loadMem_40ab19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab19 = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab19)
  store %struct.Memory* %call_40ab19, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40ab21	 Bytes: 3
  %loadMem_40ab21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab21 = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab21)
  store %struct.Memory* %call_40ab21, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40ab24	 Bytes: 4
  %loadMem_40ab24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab24 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab24)
  store %struct.Memory* %call_40ab24, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40ab28	 Bytes: 7
  %loadMem_40ab28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab28 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab28)
  store %struct.Memory* %call_40ab28, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40ab2f	 Bytes: 4
  %loadMem_40ab2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab2f = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab2f)
  store %struct.Memory* %call_40ab2f, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ab33	 Bytes: 7
  %loadMem_40ab33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab33 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab33)
  store %struct.Memory* %call_40ab33, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40ab3a	 Bytes: 3
  %loadMem_40ab3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab3a = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab3a)
  store %struct.Memory* %call_40ab3a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40ab3d	 Bytes: 3
  %loadMem_40ab3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab3d = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab3d)
  store %struct.Memory* %call_40ab3d, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 40ab40	 Bytes: 4
  %loadMem_40ab40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab40 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab40)
  store %struct.Memory* %call_40ab40, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ab44	 Bytes: 7
  %loadMem_40ab44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab44 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab44)
  store %struct.Memory* %call_40ab44, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40ab4b	 Bytes: 3
  %loadMem_40ab4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab4b = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab4b)
  store %struct.Memory* %call_40ab4b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40ab4e	 Bytes: 3
  %loadMem_40ab4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab4e = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab4e)
  store %struct.Memory* %call_40ab4e, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40ab51	 Bytes: 4
  %loadMem_40ab51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab51 = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab51)
  store %struct.Memory* %call_40ab51, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40ab55	 Bytes: 3
  %loadMem_40ab55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab55 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab55)
  store %struct.Memory* %call_40ab55, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40ab58	 Bytes: 4
  %loadMem_40ab58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab58 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab58)
  store %struct.Memory* %call_40ab58, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40ab5c	 Bytes: 4
  %loadMem_40ab5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab5c = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab5c)
  store %struct.Memory* %call_40ab5c, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40ab60	 Bytes: 3
  %loadMem_40ab60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab60 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab60)
  store %struct.Memory* %call_40ab60, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40ab63	 Bytes: 4
  %loadMem_40ab63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab63 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab63)
  store %struct.Memory* %call_40ab63, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 40ab67	 Bytes: 7
  %loadMem_40ab67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab67 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab67)
  store %struct.Memory* %call_40ab67, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40ab6e	 Bytes: 4
  %loadMem_40ab6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab6e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab6e)
  store %struct.Memory* %call_40ab6e, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %r8d	 RIP: 40ab72	 Bytes: 4
  %loadMem_40ab72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab72 = call %struct.Memory* @routine_addl__0x14___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab72)
  store %struct.Memory* %call_40ab72, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40ab76	 Bytes: 3
  %loadMem_40ab76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab76 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab76)
  store %struct.Memory* %call_40ab76, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40ab79	 Bytes: 8
  %loadMem_40ab79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab79 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab79)
  store %struct.Memory* %call_40ab79, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ab81	 Bytes: 7
  %loadMem_40ab81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab81 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab81)
  store %struct.Memory* %call_40ab81, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40ab88	 Bytes: 3
  %loadMem_40ab88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab88 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab88)
  store %struct.Memory* %call_40ab88, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 40ab8b	 Bytes: 6
  %loadMem_40ab8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab8b = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab8b)
  store %struct.Memory* %call_40ab8b, %struct.Memory** %MEMORY

  ; Code: .L_40ab91:	 RIP: 40ab91	 Bytes: 0
  br label %block_.L_40ab91
block_.L_40ab91:

  ; Code: jmpq .L_40ab96	 RIP: 40ab91	 Bytes: 5
  %loadMem_40ab91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab91 = call %struct.Memory* @routine_jmpq_.L_40ab96(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab91, i64 5, i64 5)
  store %struct.Memory* %call_40ab91, %struct.Memory** %MEMORY

  br label %block_.L_40ab96

  ; Code: .L_40ab96:	 RIP: 40ab96	 Bytes: 0
block_.L_40ab96:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40ab96	 Bytes: 3
  %loadMem_40ab96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab96 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab96)
  store %struct.Memory* %call_40ab96, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40ab99	 Bytes: 3
  %loadMem_40ab99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab99 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab99)
  store %struct.Memory* %call_40ab99, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ab9c	 Bytes: 3
  %loadMem_40ab9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab9c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab9c)
  store %struct.Memory* %call_40ab9c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40ab9f	 Bytes: 8
  %loadMem_40ab9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ab9f = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ab9f)
  store %struct.Memory* %call_40ab9f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 40aba7	 Bytes: 3
  %loadMem_40aba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aba7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aba7)
  store %struct.Memory* %call_40aba7, %struct.Memory** %MEMORY

  ; Code: jne .L_40ac34	 RIP: 40abaa	 Bytes: 6
  %loadMem_40abaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abaa = call %struct.Memory* @routine_jne_.L_40ac34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abaa, i8* %BRANCH_TAKEN, i64 138, i64 6, i64 6)
  store %struct.Memory* %call_40abaa, %struct.Memory** %MEMORY

  %loadBr_40abaa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40abaa = icmp eq i8 %loadBr_40abaa, 1
  br i1 %cmpBr_40abaa, label %block_.L_40ac34, label %block_40abb0

block_40abb0:
  ; Code: jmpq .L_40abb5	 RIP: 40abb0	 Bytes: 5
  %loadMem_40abb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abb0 = call %struct.Memory* @routine_jmpq_.L_40abb5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abb0, i64 5, i64 5)
  store %struct.Memory* %call_40abb0, %struct.Memory** %MEMORY

  br label %block_.L_40abb5

  ; Code: .L_40abb5:	 RIP: 40abb5	 Bytes: 0
block_.L_40abb5:

  ; Code: movq $0xa7f430, %rax	 RIP: 40abb5	 Bytes: 10
  %loadMem_40abb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abb5 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abb5)
  store %struct.Memory* %call_40abb5, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40abbf	 Bytes: 4
  %loadMem_40abbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abbf = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abbf)
  store %struct.Memory* %call_40abbf, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40abc3	 Bytes: 7
  %loadMem_40abc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abc3 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abc3)
  store %struct.Memory* %call_40abc3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40abca	 Bytes: 3
  %loadMem_40abca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abca = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abca)
  store %struct.Memory* %call_40abca, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 40abcd	 Bytes: 4
  %loadMem_40abcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abcd = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abcd)
  store %struct.Memory* %call_40abcd, %struct.Memory** %MEMORY

  ; Code: jge .L_40ac0e	 RIP: 40abd1	 Bytes: 6
  %loadMem_40abd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abd1 = call %struct.Memory* @routine_jge_.L_40ac0e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abd1, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_40abd1, %struct.Memory** %MEMORY

  %loadBr_40abd1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40abd1 = icmp eq i8 %loadBr_40abd1, 1
  br i1 %cmpBr_40abd1, label %block_.L_40ac0e, label %block_40abd7

block_40abd7:
  ; Code: movq $0xa7f430, %rax	 RIP: 40abd7	 Bytes: 10
  %loadMem_40abd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abd7 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abd7)
  store %struct.Memory* %call_40abd7, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40abe1	 Bytes: 3
  %loadMem_40abe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abe1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abe1)
  store %struct.Memory* %call_40abe1, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40abe4	 Bytes: 3
  %loadMem_40abe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abe4 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abe4)
  store %struct.Memory* %call_40abe4, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40abe7	 Bytes: 4
  %loadMem_40abe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abe7 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abe7)
  store %struct.Memory* %call_40abe7, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40abeb	 Bytes: 7
  %loadMem_40abeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abeb = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abeb)
  store %struct.Memory* %call_40abeb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40abf2	 Bytes: 3
  %loadMem_40abf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abf2 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abf2)
  store %struct.Memory* %call_40abf2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40abf5	 Bytes: 3
  %loadMem_40abf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abf5 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abf5)
  store %struct.Memory* %call_40abf5, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40abf8	 Bytes: 4
  %loadMem_40abf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abf8 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abf8)
  store %struct.Memory* %call_40abf8, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40abfc	 Bytes: 7
  %loadMem_40abfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40abfc = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40abfc)
  store %struct.Memory* %call_40abfc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40ac03	 Bytes: 3
  %loadMem_40ac03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac03 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac03)
  store %struct.Memory* %call_40ac03, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 40ac06	 Bytes: 4
  %loadMem_40ac06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac06 = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac06)
  store %struct.Memory* %call_40ac06, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 40ac0a	 Bytes: 4
  %loadMem_40ac0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac0a = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac0a)
  store %struct.Memory* %call_40ac0a, %struct.Memory** %MEMORY

  ; Code: .L_40ac0e:	 RIP: 40ac0e	 Bytes: 0
  br label %block_.L_40ac0e
block_.L_40ac0e:

  ; Code: movq $0xa7f430, %rax	 RIP: 40ac0e	 Bytes: 10
  %loadMem_40ac0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac0e = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac0e)
  store %struct.Memory* %call_40ac0e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40ac18	 Bytes: 4
  %loadMem_40ac18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac18 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac18)
  store %struct.Memory* %call_40ac18, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40ac1c	 Bytes: 7
  %loadMem_40ac1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac1c = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac1c)
  store %struct.Memory* %call_40ac1c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40ac23	 Bytes: 3
  %loadMem_40ac23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac23 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac23)
  store %struct.Memory* %call_40ac23, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40ac26	 Bytes: 3
  %loadMem_40ac26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac26 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac26)
  store %struct.Memory* %call_40ac26, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40ac29	 Bytes: 3
  %loadMem_40ac29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac29 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac29)
  store %struct.Memory* %call_40ac29, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 40ac2c	 Bytes: 3
  %loadMem_40ac2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac2c = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac2c)
  store %struct.Memory* %call_40ac2c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40adab	 RIP: 40ac2f	 Bytes: 5
  %loadMem_40ac2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac2f = call %struct.Memory* @routine_jmpq_.L_40adab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac2f, i64 380, i64 5)
  store %struct.Memory* %call_40ac2f, %struct.Memory** %MEMORY

  br label %block_.L_40adab

  ; Code: .L_40ac34:	 RIP: 40ac34	 Bytes: 0
block_.L_40ac34:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40ac34	 Bytes: 3
  %loadMem_40ac34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac34 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac34)
  store %struct.Memory* %call_40ac34, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40ac37	 Bytes: 3
  %loadMem_40ac37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac37 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac37)
  store %struct.Memory* %call_40ac37, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ac3a	 Bytes: 3
  %loadMem_40ac3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac3a = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac3a)
  store %struct.Memory* %call_40ac3a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40ac3d	 Bytes: 8
  %loadMem_40ac3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac3d = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac3d)
  store %struct.Memory* %call_40ac3d, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 40ac45	 Bytes: 3
  %loadMem_40ac45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac45 = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac45)
  store %struct.Memory* %call_40ac45, %struct.Memory** %MEMORY

  ; Code: jne .L_40ada6	 RIP: 40ac48	 Bytes: 6
  %loadMem_40ac48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac48 = call %struct.Memory* @routine_jne_.L_40ada6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac48, i8* %BRANCH_TAKEN, i64 350, i64 6, i64 6)
  store %struct.Memory* %call_40ac48, %struct.Memory** %MEMORY

  %loadBr_40ac48 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ac48 = icmp eq i8 %loadBr_40ac48, 1
  br i1 %cmpBr_40ac48, label %block_.L_40ada6, label %block_40ac4e

block_40ac4e:
  ; Code: movq $0xa7f430, %rax	 RIP: 40ac4e	 Bytes: 10
  %loadMem_40ac4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac4e = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac4e)
  store %struct.Memory* %call_40ac4e, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40ac58	 Bytes: 3
  %loadMem_40ac58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac58 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac58)
  store %struct.Memory* %call_40ac58, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40ac5b	 Bytes: 3
  %loadMem_40ac5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac5b = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac5b)
  store %struct.Memory* %call_40ac5b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40ac5e	 Bytes: 3
  %loadMem_40ac5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac5e = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac5e)
  store %struct.Memory* %call_40ac5e, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40ac61	 Bytes: 8
  %loadMem_40ac61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac61 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac61)
  store %struct.Memory* %call_40ac61, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ac69	 Bytes: 7
  %loadMem_40ac69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac69 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac69)
  store %struct.Memory* %call_40ac69, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40ac70	 Bytes: 3
  %loadMem_40ac70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac70 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac70)
  store %struct.Memory* %call_40ac70, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40ac73	 Bytes: 6
  %loadMem_40ac73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac73 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac73)
  store %struct.Memory* %call_40ac73, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40ac79	 Bytes: 7
  %loadMem_40ac79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac79 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac79)
  store %struct.Memory* %call_40ac79, %struct.Memory** %MEMORY

  ; Code: je .L_40ada6	 RIP: 40ac80	 Bytes: 6
  %loadMem_40ac80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac80 = call %struct.Memory* @routine_je_.L_40ada6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac80, i8* %BRANCH_TAKEN, i64 294, i64 6, i64 6)
  store %struct.Memory* %call_40ac80, %struct.Memory** %MEMORY

  %loadBr_40ac80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ac80 = icmp eq i8 %loadBr_40ac80, 1
  br i1 %cmpBr_40ac80, label %block_.L_40ada6, label %block_40ac86

block_40ac86:
  ; Code: movq $0xa7f430, %rax	 RIP: 40ac86	 Bytes: 10
  %loadMem_40ac86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac86 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac86)
  store %struct.Memory* %call_40ac86, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40ac90	 Bytes: 3
  %loadMem_40ac90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac90 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac90)
  store %struct.Memory* %call_40ac90, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40ac93	 Bytes: 3
  %loadMem_40ac93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac93 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac93)
  store %struct.Memory* %call_40ac93, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40ac96	 Bytes: 3
  %loadMem_40ac96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac96 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac96)
  store %struct.Memory* %call_40ac96, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40ac99	 Bytes: 7
  %loadMem_40ac99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ac99 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ac99)
  store %struct.Memory* %call_40ac99, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 40aca0	 Bytes: 3
  %loadMem_40aca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aca0 = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aca0)
  store %struct.Memory* %call_40aca0, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40aca3	 Bytes: 3
  %loadMem_40aca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aca3 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aca3)
  store %struct.Memory* %call_40aca3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40aca6	 Bytes: 3
  %loadMem_40aca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aca6 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aca6)
  store %struct.Memory* %call_40aca6, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40aca9	 Bytes: 3
  %loadMem_40aca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aca9 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aca9)
  store %struct.Memory* %call_40aca9, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40acac	 Bytes: 7
  %loadMem_40acac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40acac = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40acac)
  store %struct.Memory* %call_40acac, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40acb3	 Bytes: 4
  %loadMem_40acb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40acb3 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40acb3)
  store %struct.Memory* %call_40acb3, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40acb7	 Bytes: 7
  %loadMem_40acb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40acb7 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40acb7)
  store %struct.Memory* %call_40acb7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40acbe	 Bytes: 3
  %loadMem_40acbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40acbe = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40acbe)
  store %struct.Memory* %call_40acbe, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40acc1	 Bytes: 3
  %loadMem_40acc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40acc1 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40acc1)
  store %struct.Memory* %call_40acc1, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40acc4	 Bytes: 4
  %loadMem_40acc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40acc4 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40acc4)
  store %struct.Memory* %call_40acc4, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40acc8	 Bytes: 7
  %loadMem_40acc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40acc8 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40acc8)
  store %struct.Memory* %call_40acc8, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40accf	 Bytes: 3
  %loadMem_40accf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40accf = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40accf)
  store %struct.Memory* %call_40accf, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40acd2	 Bytes: 3
  %loadMem_40acd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40acd2 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40acd2)
  store %struct.Memory* %call_40acd2, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40acd5	 Bytes: 4
  %loadMem_40acd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40acd5 = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40acd5)
  store %struct.Memory* %call_40acd5, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40acd9	 Bytes: 3
  %loadMem_40acd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40acd9 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40acd9)
  store %struct.Memory* %call_40acd9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40acdc	 Bytes: 4
  %loadMem_40acdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40acdc = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40acdc)
  store %struct.Memory* %call_40acdc, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40ace0	 Bytes: 4
  %loadMem_40ace0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ace0 = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ace0)
  store %struct.Memory* %call_40ace0, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40ace4	 Bytes: 3
  %loadMem_40ace4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ace4 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ace4)
  store %struct.Memory* %call_40ace4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40ace7	 Bytes: 4
  %loadMem_40ace7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ace7 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ace7)
  store %struct.Memory* %call_40ace7, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40aceb	 Bytes: 4
  %loadMem_40aceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aceb = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aceb)
  store %struct.Memory* %call_40aceb, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40acef	 Bytes: 7
  %loadMem_40acef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40acef = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40acef)
  store %struct.Memory* %call_40acef, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40acf6	 Bytes: 3
  %loadMem_40acf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40acf6 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40acf6)
  store %struct.Memory* %call_40acf6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40acf9	 Bytes: 3
  %loadMem_40acf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40acf9 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40acf9)
  store %struct.Memory* %call_40acf9, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40acfc	 Bytes: 4
  %loadMem_40acfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40acfc = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40acfc)
  store %struct.Memory* %call_40acfc, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40ad00	 Bytes: 8
  %loadMem_40ad00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad00 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad00)
  store %struct.Memory* %call_40ad00, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40ad08	 Bytes: 3
  %loadMem_40ad08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad08 = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad08)
  store %struct.Memory* %call_40ad08, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40ad0b	 Bytes: 4
  %loadMem_40ad0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad0b = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad0b)
  store %struct.Memory* %call_40ad0b, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ad0f	 Bytes: 7
  %loadMem_40ad0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad0f = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad0f)
  store %struct.Memory* %call_40ad0f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40ad16	 Bytes: 3
  %loadMem_40ad16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad16 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad16)
  store %struct.Memory* %call_40ad16, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40ad19	 Bytes: 3
  %loadMem_40ad19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad19 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad19)
  store %struct.Memory* %call_40ad19, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40ad1c	 Bytes: 3
  %loadMem_40ad1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad1c = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad1c)
  store %struct.Memory* %call_40ad1c, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40ad1f	 Bytes: 8
  %loadMem_40ad1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad1f = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad1f)
  store %struct.Memory* %call_40ad1f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40ad27	 Bytes: 3
  %loadMem_40ad27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad27 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad27)
  store %struct.Memory* %call_40ad27, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40ad2a	 Bytes: 4
  %loadMem_40ad2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad2a = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad2a)
  store %struct.Memory* %call_40ad2a, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40ad2e	 Bytes: 8
  %loadMem_40ad2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad2e = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad2e)
  store %struct.Memory* %call_40ad2e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40ad36	 Bytes: 3
  %loadMem_40ad36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad36 = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad36)
  store %struct.Memory* %call_40ad36, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40ad39	 Bytes: 4
  %loadMem_40ad39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad39 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad39)
  store %struct.Memory* %call_40ad39, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40ad3d	 Bytes: 7
  %loadMem_40ad3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad3d = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad3d)
  store %struct.Memory* %call_40ad3d, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40ad44	 Bytes: 4
  %loadMem_40ad44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad44 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad44)
  store %struct.Memory* %call_40ad44, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ad48	 Bytes: 7
  %loadMem_40ad48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad48 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad48)
  store %struct.Memory* %call_40ad48, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40ad4f	 Bytes: 3
  %loadMem_40ad4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad4f = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad4f)
  store %struct.Memory* %call_40ad4f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40ad52	 Bytes: 3
  %loadMem_40ad52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad52 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad52)
  store %struct.Memory* %call_40ad52, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40ad55	 Bytes: 4
  %loadMem_40ad55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad55 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad55)
  store %struct.Memory* %call_40ad55, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ad59	 Bytes: 7
  %loadMem_40ad59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad59 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad59)
  store %struct.Memory* %call_40ad59, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40ad60	 Bytes: 3
  %loadMem_40ad60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad60 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad60)
  store %struct.Memory* %call_40ad60, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40ad63	 Bytes: 3
  %loadMem_40ad63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad63 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad63)
  store %struct.Memory* %call_40ad63, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40ad66	 Bytes: 4
  %loadMem_40ad66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad66 = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad66)
  store %struct.Memory* %call_40ad66, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40ad6a	 Bytes: 3
  %loadMem_40ad6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad6a = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad6a)
  store %struct.Memory* %call_40ad6a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40ad6d	 Bytes: 4
  %loadMem_40ad6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad6d = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad6d)
  store %struct.Memory* %call_40ad6d, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40ad71	 Bytes: 4
  %loadMem_40ad71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad71 = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad71)
  store %struct.Memory* %call_40ad71, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40ad75	 Bytes: 3
  %loadMem_40ad75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad75 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad75)
  store %struct.Memory* %call_40ad75, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40ad78	 Bytes: 4
  %loadMem_40ad78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad78 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad78)
  store %struct.Memory* %call_40ad78, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 40ad7c	 Bytes: 7
  %loadMem_40ad7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad7c = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad7c)
  store %struct.Memory* %call_40ad7c, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40ad83	 Bytes: 4
  %loadMem_40ad83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad83 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad83)
  store %struct.Memory* %call_40ad83, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %r8d	 RIP: 40ad87	 Bytes: 4
  %loadMem_40ad87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad87 = call %struct.Memory* @routine_subl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad87)
  store %struct.Memory* %call_40ad87, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40ad8b	 Bytes: 3
  %loadMem_40ad8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad8b = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad8b)
  store %struct.Memory* %call_40ad8b, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40ad8e	 Bytes: 8
  %loadMem_40ad8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad8e = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad8e)
  store %struct.Memory* %call_40ad8e, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ad96	 Bytes: 7
  %loadMem_40ad96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad96 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad96)
  store %struct.Memory* %call_40ad96, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40ad9d	 Bytes: 3
  %loadMem_40ad9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ad9d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ad9d)
  store %struct.Memory* %call_40ad9d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 40ada0	 Bytes: 6
  %loadMem_40ada0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ada0 = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ada0)
  store %struct.Memory* %call_40ada0, %struct.Memory** %MEMORY

  ; Code: .L_40ada6:	 RIP: 40ada6	 Bytes: 0
  br label %block_.L_40ada6
block_.L_40ada6:

  ; Code: jmpq .L_40adab	 RIP: 40ada6	 Bytes: 5
  %loadMem_40ada6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ada6 = call %struct.Memory* @routine_jmpq_.L_40adab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ada6, i64 5, i64 5)
  store %struct.Memory* %call_40ada6, %struct.Memory** %MEMORY

  br label %block_.L_40adab

  ; Code: .L_40adab:	 RIP: 40adab	 Bytes: 0
block_.L_40adab:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40adab	 Bytes: 3
  %loadMem_40adab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40adab = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40adab)
  store %struct.Memory* %call_40adab, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40adae	 Bytes: 3
  %loadMem_40adae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40adae = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40adae)
  store %struct.Memory* %call_40adae, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40adb1	 Bytes: 3
  %loadMem_40adb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40adb1 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40adb1)
  store %struct.Memory* %call_40adb1, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40adb4	 Bytes: 8
  %loadMem_40adb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40adb4 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40adb4)
  store %struct.Memory* %call_40adb4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 40adbc	 Bytes: 3
  %loadMem_40adbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40adbc = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40adbc)
  store %struct.Memory* %call_40adbc, %struct.Memory** %MEMORY

  ; Code: jne .L_40ae49	 RIP: 40adbf	 Bytes: 6
  %loadMem_40adbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40adbf = call %struct.Memory* @routine_jne_.L_40ae49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40adbf, i8* %BRANCH_TAKEN, i64 138, i64 6, i64 6)
  store %struct.Memory* %call_40adbf, %struct.Memory** %MEMORY

  %loadBr_40adbf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40adbf = icmp eq i8 %loadBr_40adbf, 1
  br i1 %cmpBr_40adbf, label %block_.L_40ae49, label %block_40adc5

block_40adc5:
  ; Code: jmpq .L_40adca	 RIP: 40adc5	 Bytes: 5
  %loadMem_40adc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40adc5 = call %struct.Memory* @routine_jmpq_.L_40adca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40adc5, i64 5, i64 5)
  store %struct.Memory* %call_40adc5, %struct.Memory** %MEMORY

  br label %block_.L_40adca

  ; Code: .L_40adca:	 RIP: 40adca	 Bytes: 0
block_.L_40adca:

  ; Code: movq $0xa7f430, %rax	 RIP: 40adca	 Bytes: 10
  %loadMem_40adca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40adca = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40adca)
  store %struct.Memory* %call_40adca, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40add4	 Bytes: 4
  %loadMem_40add4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40add4 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40add4)
  store %struct.Memory* %call_40add4, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40add8	 Bytes: 7
  %loadMem_40add8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40add8 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40add8)
  store %struct.Memory* %call_40add8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40addf	 Bytes: 3
  %loadMem_40addf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40addf = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40addf)
  store %struct.Memory* %call_40addf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 40ade2	 Bytes: 4
  %loadMem_40ade2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ade2 = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ade2)
  store %struct.Memory* %call_40ade2, %struct.Memory** %MEMORY

  ; Code: jge .L_40ae23	 RIP: 40ade6	 Bytes: 6
  %loadMem_40ade6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ade6 = call %struct.Memory* @routine_jge_.L_40ae23(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ade6, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_40ade6, %struct.Memory** %MEMORY

  %loadBr_40ade6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ade6 = icmp eq i8 %loadBr_40ade6, 1
  br i1 %cmpBr_40ade6, label %block_.L_40ae23, label %block_40adec

block_40adec:
  ; Code: movq $0xa7f430, %rax	 RIP: 40adec	 Bytes: 10
  %loadMem_40adec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40adec = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40adec)
  store %struct.Memory* %call_40adec, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40adf6	 Bytes: 3
  %loadMem_40adf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40adf6 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40adf6)
  store %struct.Memory* %call_40adf6, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 40adf9	 Bytes: 3
  %loadMem_40adf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40adf9 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40adf9)
  store %struct.Memory* %call_40adf9, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40adfc	 Bytes: 4
  %loadMem_40adfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40adfc = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40adfc)
  store %struct.Memory* %call_40adfc, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ae00	 Bytes: 7
  %loadMem_40ae00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae00 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae00)
  store %struct.Memory* %call_40ae00, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40ae07	 Bytes: 3
  %loadMem_40ae07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae07 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae07)
  store %struct.Memory* %call_40ae07, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40ae0a	 Bytes: 3
  %loadMem_40ae0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae0a = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae0a)
  store %struct.Memory* %call_40ae0a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40ae0d	 Bytes: 4
  %loadMem_40ae0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae0d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae0d)
  store %struct.Memory* %call_40ae0d, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ae11	 Bytes: 7
  %loadMem_40ae11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae11 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae11)
  store %struct.Memory* %call_40ae11, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40ae18	 Bytes: 3
  %loadMem_40ae18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae18 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae18)
  store %struct.Memory* %call_40ae18, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 40ae1b	 Bytes: 4
  %loadMem_40ae1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae1b = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae1b)
  store %struct.Memory* %call_40ae1b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 40ae1f	 Bytes: 4
  %loadMem_40ae1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae1f = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae1f)
  store %struct.Memory* %call_40ae1f, %struct.Memory** %MEMORY

  ; Code: .L_40ae23:	 RIP: 40ae23	 Bytes: 0
  br label %block_.L_40ae23
block_.L_40ae23:

  ; Code: movq $0xa7f430, %rax	 RIP: 40ae23	 Bytes: 10
  %loadMem_40ae23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae23 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae23)
  store %struct.Memory* %call_40ae23, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40ae2d	 Bytes: 4
  %loadMem_40ae2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae2d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae2d)
  store %struct.Memory* %call_40ae2d, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40ae31	 Bytes: 7
  %loadMem_40ae31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae31 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae31)
  store %struct.Memory* %call_40ae31, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40ae38	 Bytes: 3
  %loadMem_40ae38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae38 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae38)
  store %struct.Memory* %call_40ae38, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40ae3b	 Bytes: 3
  %loadMem_40ae3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae3b = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae3b)
  store %struct.Memory* %call_40ae3b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40ae3e	 Bytes: 3
  %loadMem_40ae3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae3e = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae3e)
  store %struct.Memory* %call_40ae3e, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 40ae41	 Bytes: 3
  %loadMem_40ae41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae41 = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae41)
  store %struct.Memory* %call_40ae41, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40afc0	 RIP: 40ae44	 Bytes: 5
  %loadMem_40ae44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae44 = call %struct.Memory* @routine_jmpq_.L_40afc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae44, i64 380, i64 5)
  store %struct.Memory* %call_40ae44, %struct.Memory** %MEMORY

  br label %block_.L_40afc0

  ; Code: .L_40ae49:	 RIP: 40ae49	 Bytes: 0
block_.L_40ae49:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40ae49	 Bytes: 3
  %loadMem_40ae49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae49 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae49)
  store %struct.Memory* %call_40ae49, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40ae4c	 Bytes: 3
  %loadMem_40ae4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae4c = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae4c)
  store %struct.Memory* %call_40ae4c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ae4f	 Bytes: 3
  %loadMem_40ae4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae4f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae4f)
  store %struct.Memory* %call_40ae4f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40ae52	 Bytes: 8
  %loadMem_40ae52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae52 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae52)
  store %struct.Memory* %call_40ae52, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 40ae5a	 Bytes: 3
  %loadMem_40ae5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae5a = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae5a)
  store %struct.Memory* %call_40ae5a, %struct.Memory** %MEMORY

  ; Code: jne .L_40afbb	 RIP: 40ae5d	 Bytes: 6
  %loadMem_40ae5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae5d = call %struct.Memory* @routine_jne_.L_40afbb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae5d, i8* %BRANCH_TAKEN, i64 350, i64 6, i64 6)
  store %struct.Memory* %call_40ae5d, %struct.Memory** %MEMORY

  %loadBr_40ae5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ae5d = icmp eq i8 %loadBr_40ae5d, 1
  br i1 %cmpBr_40ae5d, label %block_.L_40afbb, label %block_40ae63

block_40ae63:
  ; Code: movq $0xa7f430, %rax	 RIP: 40ae63	 Bytes: 10
  %loadMem_40ae63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae63 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae63)
  store %struct.Memory* %call_40ae63, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40ae6d	 Bytes: 3
  %loadMem_40ae6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae6d = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae6d)
  store %struct.Memory* %call_40ae6d, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 40ae70	 Bytes: 3
  %loadMem_40ae70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae70 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae70)
  store %struct.Memory* %call_40ae70, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40ae73	 Bytes: 3
  %loadMem_40ae73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae73 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae73)
  store %struct.Memory* %call_40ae73, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40ae76	 Bytes: 8
  %loadMem_40ae76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae76 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae76)
  store %struct.Memory* %call_40ae76, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ae7e	 Bytes: 7
  %loadMem_40ae7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae7e = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae7e)
  store %struct.Memory* %call_40ae7e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40ae85	 Bytes: 3
  %loadMem_40ae85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae85 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae85)
  store %struct.Memory* %call_40ae85, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40ae88	 Bytes: 6
  %loadMem_40ae88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae88 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae88)
  store %struct.Memory* %call_40ae88, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40ae8e	 Bytes: 7
  %loadMem_40ae8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae8e = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae8e)
  store %struct.Memory* %call_40ae8e, %struct.Memory** %MEMORY

  ; Code: je .L_40afbb	 RIP: 40ae95	 Bytes: 6
  %loadMem_40ae95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae95 = call %struct.Memory* @routine_je_.L_40afbb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae95, i8* %BRANCH_TAKEN, i64 294, i64 6, i64 6)
  store %struct.Memory* %call_40ae95, %struct.Memory** %MEMORY

  %loadBr_40ae95 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ae95 = icmp eq i8 %loadBr_40ae95, 1
  br i1 %cmpBr_40ae95, label %block_.L_40afbb, label %block_40ae9b

block_40ae9b:
  ; Code: movq $0xa7f430, %rax	 RIP: 40ae9b	 Bytes: 10
  %loadMem_40ae9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ae9b = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ae9b)
  store %struct.Memory* %call_40ae9b, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40aea5	 Bytes: 3
  %loadMem_40aea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aea5 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aea5)
  store %struct.Memory* %call_40aea5, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 40aea8	 Bytes: 3
  %loadMem_40aea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aea8 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aea8)
  store %struct.Memory* %call_40aea8, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40aeab	 Bytes: 3
  %loadMem_40aeab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aeab = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aeab)
  store %struct.Memory* %call_40aeab, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40aeae	 Bytes: 7
  %loadMem_40aeae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aeae = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aeae)
  store %struct.Memory* %call_40aeae, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 40aeb5	 Bytes: 3
  %loadMem_40aeb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aeb5 = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aeb5)
  store %struct.Memory* %call_40aeb5, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40aeb8	 Bytes: 3
  %loadMem_40aeb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aeb8 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aeb8)
  store %struct.Memory* %call_40aeb8, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 40aebb	 Bytes: 3
  %loadMem_40aebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aebb = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aebb)
  store %struct.Memory* %call_40aebb, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40aebe	 Bytes: 3
  %loadMem_40aebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aebe = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aebe)
  store %struct.Memory* %call_40aebe, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40aec1	 Bytes: 7
  %loadMem_40aec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aec1 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aec1)
  store %struct.Memory* %call_40aec1, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40aec8	 Bytes: 4
  %loadMem_40aec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aec8 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aec8)
  store %struct.Memory* %call_40aec8, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40aecc	 Bytes: 7
  %loadMem_40aecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aecc = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aecc)
  store %struct.Memory* %call_40aecc, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40aed3	 Bytes: 3
  %loadMem_40aed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aed3 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aed3)
  store %struct.Memory* %call_40aed3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40aed6	 Bytes: 3
  %loadMem_40aed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aed6 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aed6)
  store %struct.Memory* %call_40aed6, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40aed9	 Bytes: 4
  %loadMem_40aed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aed9 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aed9)
  store %struct.Memory* %call_40aed9, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40aedd	 Bytes: 7
  %loadMem_40aedd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aedd = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aedd)
  store %struct.Memory* %call_40aedd, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40aee4	 Bytes: 3
  %loadMem_40aee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aee4 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aee4)
  store %struct.Memory* %call_40aee4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40aee7	 Bytes: 3
  %loadMem_40aee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aee7 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aee7)
  store %struct.Memory* %call_40aee7, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40aeea	 Bytes: 4
  %loadMem_40aeea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aeea = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aeea)
  store %struct.Memory* %call_40aeea, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40aeee	 Bytes: 3
  %loadMem_40aeee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aeee = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aeee)
  store %struct.Memory* %call_40aeee, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40aef1	 Bytes: 4
  %loadMem_40aef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aef1 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aef1)
  store %struct.Memory* %call_40aef1, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40aef5	 Bytes: 4
  %loadMem_40aef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aef5 = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aef5)
  store %struct.Memory* %call_40aef5, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40aef9	 Bytes: 3
  %loadMem_40aef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aef9 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aef9)
  store %struct.Memory* %call_40aef9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40aefc	 Bytes: 4
  %loadMem_40aefc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aefc = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aefc)
  store %struct.Memory* %call_40aefc, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 40af00	 Bytes: 4
  %loadMem_40af00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af00 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af00)
  store %struct.Memory* %call_40af00, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40af04	 Bytes: 7
  %loadMem_40af04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af04 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af04)
  store %struct.Memory* %call_40af04, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40af0b	 Bytes: 3
  %loadMem_40af0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af0b = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af0b)
  store %struct.Memory* %call_40af0b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40af0e	 Bytes: 3
  %loadMem_40af0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af0e = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af0e)
  store %struct.Memory* %call_40af0e, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40af11	 Bytes: 4
  %loadMem_40af11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af11 = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af11)
  store %struct.Memory* %call_40af11, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40af15	 Bytes: 8
  %loadMem_40af15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af15 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af15)
  store %struct.Memory* %call_40af15, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40af1d	 Bytes: 3
  %loadMem_40af1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af1d = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af1d)
  store %struct.Memory* %call_40af1d, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 40af20	 Bytes: 4
  %loadMem_40af20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af20 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af20)
  store %struct.Memory* %call_40af20, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40af24	 Bytes: 7
  %loadMem_40af24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af24 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af24)
  store %struct.Memory* %call_40af24, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40af2b	 Bytes: 3
  %loadMem_40af2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af2b = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af2b)
  store %struct.Memory* %call_40af2b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40af2e	 Bytes: 3
  %loadMem_40af2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af2e = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af2e)
  store %struct.Memory* %call_40af2e, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40af31	 Bytes: 3
  %loadMem_40af31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af31 = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af31)
  store %struct.Memory* %call_40af31, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40af34	 Bytes: 8
  %loadMem_40af34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af34 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af34)
  store %struct.Memory* %call_40af34, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40af3c	 Bytes: 3
  %loadMem_40af3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af3c = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af3c)
  store %struct.Memory* %call_40af3c, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40af3f	 Bytes: 4
  %loadMem_40af3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af3f = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af3f)
  store %struct.Memory* %call_40af3f, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40af43	 Bytes: 8
  %loadMem_40af43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af43 = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af43)
  store %struct.Memory* %call_40af43, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40af4b	 Bytes: 3
  %loadMem_40af4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af4b = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af4b)
  store %struct.Memory* %call_40af4b, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40af4e	 Bytes: 4
  %loadMem_40af4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af4e = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af4e)
  store %struct.Memory* %call_40af4e, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40af52	 Bytes: 7
  %loadMem_40af52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af52 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af52)
  store %struct.Memory* %call_40af52, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 40af59	 Bytes: 4
  %loadMem_40af59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af59 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af59)
  store %struct.Memory* %call_40af59, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40af5d	 Bytes: 7
  %loadMem_40af5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af5d = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af5d)
  store %struct.Memory* %call_40af5d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40af64	 Bytes: 3
  %loadMem_40af64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af64 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af64)
  store %struct.Memory* %call_40af64, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40af67	 Bytes: 3
  %loadMem_40af67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af67 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af67)
  store %struct.Memory* %call_40af67, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 40af6a	 Bytes: 4
  %loadMem_40af6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af6a = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af6a)
  store %struct.Memory* %call_40af6a, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40af6e	 Bytes: 7
  %loadMem_40af6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af6e = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af6e)
  store %struct.Memory* %call_40af6e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40af75	 Bytes: 3
  %loadMem_40af75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af75 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af75)
  store %struct.Memory* %call_40af75, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40af78	 Bytes: 3
  %loadMem_40af78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af78 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af78)
  store %struct.Memory* %call_40af78, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40af7b	 Bytes: 4
  %loadMem_40af7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af7b = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af7b)
  store %struct.Memory* %call_40af7b, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40af7f	 Bytes: 3
  %loadMem_40af7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af7f = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af7f)
  store %struct.Memory* %call_40af7f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40af82	 Bytes: 4
  %loadMem_40af82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af82 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af82)
  store %struct.Memory* %call_40af82, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40af86	 Bytes: 4
  %loadMem_40af86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af86 = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af86)
  store %struct.Memory* %call_40af86, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40af8a	 Bytes: 3
  %loadMem_40af8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af8a = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af8a)
  store %struct.Memory* %call_40af8a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40af8d	 Bytes: 4
  %loadMem_40af8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af8d = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af8d)
  store %struct.Memory* %call_40af8d, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 40af91	 Bytes: 7
  %loadMem_40af91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af91 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af91)
  store %struct.Memory* %call_40af91, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40af98	 Bytes: 4
  %loadMem_40af98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af98 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af98)
  store %struct.Memory* %call_40af98, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %r8d	 RIP: 40af9c	 Bytes: 4
  %loadMem_40af9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40af9c = call %struct.Memory* @routine_subl__0x14___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40af9c)
  store %struct.Memory* %call_40af9c, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40afa0	 Bytes: 3
  %loadMem_40afa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afa0 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afa0)
  store %struct.Memory* %call_40afa0, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40afa3	 Bytes: 8
  %loadMem_40afa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afa3 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afa3)
  store %struct.Memory* %call_40afa3, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40afab	 Bytes: 7
  %loadMem_40afab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afab = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afab)
  store %struct.Memory* %call_40afab, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40afb2	 Bytes: 3
  %loadMem_40afb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afb2 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afb2)
  store %struct.Memory* %call_40afb2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 40afb5	 Bytes: 6
  %loadMem_40afb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afb5 = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afb5)
  store %struct.Memory* %call_40afb5, %struct.Memory** %MEMORY

  ; Code: .L_40afbb:	 RIP: 40afbb	 Bytes: 0
  br label %block_.L_40afbb
block_.L_40afbb:

  ; Code: jmpq .L_40afc0	 RIP: 40afbb	 Bytes: 5
  %loadMem_40afbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afbb = call %struct.Memory* @routine_jmpq_.L_40afc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afbb, i64 5, i64 5)
  store %struct.Memory* %call_40afbb, %struct.Memory** %MEMORY

  br label %block_.L_40afc0

  ; Code: .L_40afc0:	 RIP: 40afc0	 Bytes: 0
block_.L_40afc0:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40afc0	 Bytes: 3
  %loadMem_40afc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afc0 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afc0)
  store %struct.Memory* %call_40afc0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40afc3	 Bytes: 3
  %loadMem_40afc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afc3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afc3)
  store %struct.Memory* %call_40afc3, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40afc6	 Bytes: 3
  %loadMem_40afc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afc6 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afc6)
  store %struct.Memory* %call_40afc6, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40afc9	 Bytes: 8
  %loadMem_40afc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afc9 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afc9)
  store %struct.Memory* %call_40afc9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 40afd1	 Bytes: 3
  %loadMem_40afd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afd1 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afd1)
  store %struct.Memory* %call_40afd1, %struct.Memory** %MEMORY

  ; Code: jne .L_40b05e	 RIP: 40afd4	 Bytes: 6
  %loadMem_40afd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afd4 = call %struct.Memory* @routine_jne_.L_40b05e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afd4, i8* %BRANCH_TAKEN, i64 138, i64 6, i64 6)
  store %struct.Memory* %call_40afd4, %struct.Memory** %MEMORY

  %loadBr_40afd4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40afd4 = icmp eq i8 %loadBr_40afd4, 1
  br i1 %cmpBr_40afd4, label %block_.L_40b05e, label %block_40afda

block_40afda:
  ; Code: jmpq .L_40afdf	 RIP: 40afda	 Bytes: 5
  %loadMem_40afda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afda = call %struct.Memory* @routine_jmpq_.L_40afdf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afda, i64 5, i64 5)
  store %struct.Memory* %call_40afda, %struct.Memory** %MEMORY

  br label %block_.L_40afdf

  ; Code: .L_40afdf:	 RIP: 40afdf	 Bytes: 0
block_.L_40afdf:

  ; Code: movq $0xa7f430, %rax	 RIP: 40afdf	 Bytes: 10
  %loadMem_40afdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afdf = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afdf)
  store %struct.Memory* %call_40afdf, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40afe9	 Bytes: 4
  %loadMem_40afe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afe9 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afe9)
  store %struct.Memory* %call_40afe9, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40afed	 Bytes: 7
  %loadMem_40afed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40afed = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40afed)
  store %struct.Memory* %call_40afed, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40aff4	 Bytes: 3
  %loadMem_40aff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aff4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aff4)
  store %struct.Memory* %call_40aff4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 40aff7	 Bytes: 4
  %loadMem_40aff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40aff7 = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40aff7)
  store %struct.Memory* %call_40aff7, %struct.Memory** %MEMORY

  ; Code: jge .L_40b038	 RIP: 40affb	 Bytes: 6
  %loadMem_40affb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40affb = call %struct.Memory* @routine_jge_.L_40b038(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40affb, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_40affb, %struct.Memory** %MEMORY

  %loadBr_40affb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40affb = icmp eq i8 %loadBr_40affb, 1
  br i1 %cmpBr_40affb, label %block_.L_40b038, label %block_40b001

block_40b001:
  ; Code: movq $0xa7f430, %rax	 RIP: 40b001	 Bytes: 10
  %loadMem_40b001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b001 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b001)
  store %struct.Memory* %call_40b001, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40b00b	 Bytes: 3
  %loadMem_40b00b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b00b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b00b)
  store %struct.Memory* %call_40b00b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40b00e	 Bytes: 3
  %loadMem_40b00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b00e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b00e)
  store %struct.Memory* %call_40b00e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b011	 Bytes: 4
  %loadMem_40b011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b011 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b011)
  store %struct.Memory* %call_40b011, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b015	 Bytes: 7
  %loadMem_40b015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b015 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b015)
  store %struct.Memory* %call_40b015, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b01c	 Bytes: 3
  %loadMem_40b01c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b01c = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b01c)
  store %struct.Memory* %call_40b01c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b01f	 Bytes: 3
  %loadMem_40b01f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b01f = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b01f)
  store %struct.Memory* %call_40b01f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b022	 Bytes: 4
  %loadMem_40b022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b022 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b022)
  store %struct.Memory* %call_40b022, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b026	 Bytes: 7
  %loadMem_40b026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b026 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b026)
  store %struct.Memory* %call_40b026, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40b02d	 Bytes: 3
  %loadMem_40b02d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b02d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b02d)
  store %struct.Memory* %call_40b02d, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 40b030	 Bytes: 4
  %loadMem_40b030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b030 = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b030)
  store %struct.Memory* %call_40b030, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 40b034	 Bytes: 4
  %loadMem_40b034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b034 = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b034)
  store %struct.Memory* %call_40b034, %struct.Memory** %MEMORY

  ; Code: .L_40b038:	 RIP: 40b038	 Bytes: 0
  br label %block_.L_40b038
block_.L_40b038:

  ; Code: movq $0xa7f430, %rax	 RIP: 40b038	 Bytes: 10
  %loadMem_40b038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b038 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b038)
  store %struct.Memory* %call_40b038, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40b042	 Bytes: 4
  %loadMem_40b042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b042 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b042)
  store %struct.Memory* %call_40b042, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40b046	 Bytes: 7
  %loadMem_40b046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b046 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b046)
  store %struct.Memory* %call_40b046, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40b04d	 Bytes: 3
  %loadMem_40b04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b04d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b04d)
  store %struct.Memory* %call_40b04d, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40b050	 Bytes: 3
  %loadMem_40b050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b050 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b050)
  store %struct.Memory* %call_40b050, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40b053	 Bytes: 3
  %loadMem_40b053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b053 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b053)
  store %struct.Memory* %call_40b053, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 40b056	 Bytes: 3
  %loadMem_40b056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b056 = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b056)
  store %struct.Memory* %call_40b056, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40b1a8	 RIP: 40b059	 Bytes: 5
  %loadMem_40b059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b059 = call %struct.Memory* @routine_jmpq_.L_40b1a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b059, i64 335, i64 5)
  store %struct.Memory* %call_40b059, %struct.Memory** %MEMORY

  br label %block_.L_40b1a8

  ; Code: .L_40b05e:	 RIP: 40b05e	 Bytes: 0
block_.L_40b05e:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b05e	 Bytes: 3
  %loadMem_40b05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b05e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b05e)
  store %struct.Memory* %call_40b05e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40b061	 Bytes: 3
  %loadMem_40b061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b061 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b061)
  store %struct.Memory* %call_40b061, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b064	 Bytes: 3
  %loadMem_40b064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b064 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b064)
  store %struct.Memory* %call_40b064, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40b067	 Bytes: 8
  %loadMem_40b067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b067 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b067)
  store %struct.Memory* %call_40b067, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 40b06f	 Bytes: 3
  %loadMem_40b06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b06f = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b06f)
  store %struct.Memory* %call_40b06f, %struct.Memory** %MEMORY

  ; Code: jne .L_40b1a3	 RIP: 40b072	 Bytes: 6
  %loadMem_40b072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b072 = call %struct.Memory* @routine_jne_.L_40b1a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b072, i8* %BRANCH_TAKEN, i64 305, i64 6, i64 6)
  store %struct.Memory* %call_40b072, %struct.Memory** %MEMORY

  %loadBr_40b072 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b072 = icmp eq i8 %loadBr_40b072, 1
  br i1 %cmpBr_40b072, label %block_.L_40b1a3, label %block_40b078

block_40b078:
  ; Code: movq $0xa7f430, %rax	 RIP: 40b078	 Bytes: 10
  %loadMem_40b078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b078 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b078)
  store %struct.Memory* %call_40b078, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40b082	 Bytes: 3
  %loadMem_40b082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b082 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b082)
  store %struct.Memory* %call_40b082, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40b085	 Bytes: 3
  %loadMem_40b085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b085 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b085)
  store %struct.Memory* %call_40b085, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40b088	 Bytes: 3
  %loadMem_40b088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b088 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b088)
  store %struct.Memory* %call_40b088, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40b08b	 Bytes: 8
  %loadMem_40b08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b08b = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b08b)
  store %struct.Memory* %call_40b08b, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b093	 Bytes: 7
  %loadMem_40b093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b093 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b093)
  store %struct.Memory* %call_40b093, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40b09a	 Bytes: 3
  %loadMem_40b09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b09a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b09a)
  store %struct.Memory* %call_40b09a, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40b09d	 Bytes: 6
  %loadMem_40b09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b09d = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b09d)
  store %struct.Memory* %call_40b09d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40b0a3	 Bytes: 7
  %loadMem_40b0a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0a3 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0a3)
  store %struct.Memory* %call_40b0a3, %struct.Memory** %MEMORY

  ; Code: je .L_40b1a3	 RIP: 40b0aa	 Bytes: 6
  %loadMem_40b0aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0aa = call %struct.Memory* @routine_je_.L_40b1a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0aa, i8* %BRANCH_TAKEN, i64 249, i64 6, i64 6)
  store %struct.Memory* %call_40b0aa, %struct.Memory** %MEMORY

  %loadBr_40b0aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b0aa = icmp eq i8 %loadBr_40b0aa, 1
  br i1 %cmpBr_40b0aa, label %block_.L_40b1a3, label %block_40b0b0

block_40b0b0:
  ; Code: movq $0xa7f430, %rax	 RIP: 40b0b0	 Bytes: 10
  %loadMem_40b0b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0b0 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0b0)
  store %struct.Memory* %call_40b0b0, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40b0ba	 Bytes: 3
  %loadMem_40b0ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0ba = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0ba)
  store %struct.Memory* %call_40b0ba, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40b0bd	 Bytes: 3
  %loadMem_40b0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0bd = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0bd)
  store %struct.Memory* %call_40b0bd, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40b0c0	 Bytes: 3
  %loadMem_40b0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0c0 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0c0)
  store %struct.Memory* %call_40b0c0, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40b0c3	 Bytes: 7
  %loadMem_40b0c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0c3 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0c3)
  store %struct.Memory* %call_40b0c3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 40b0ca	 Bytes: 3
  %loadMem_40b0ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0ca = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0ca)
  store %struct.Memory* %call_40b0ca, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40b0cd	 Bytes: 3
  %loadMem_40b0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0cd = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0cd)
  store %struct.Memory* %call_40b0cd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40b0d0	 Bytes: 3
  %loadMem_40b0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0d0 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0d0)
  store %struct.Memory* %call_40b0d0, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40b0d3	 Bytes: 3
  %loadMem_40b0d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0d3 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0d3)
  store %struct.Memory* %call_40b0d3, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40b0d6	 Bytes: 7
  %loadMem_40b0d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0d6 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0d6)
  store %struct.Memory* %call_40b0d6, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b0dd	 Bytes: 4
  %loadMem_40b0dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0dd = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0dd)
  store %struct.Memory* %call_40b0dd, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b0e1	 Bytes: 7
  %loadMem_40b0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0e1 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0e1)
  store %struct.Memory* %call_40b0e1, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b0e8	 Bytes: 3
  %loadMem_40b0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0e8 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0e8)
  store %struct.Memory* %call_40b0e8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b0eb	 Bytes: 3
  %loadMem_40b0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0eb = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0eb)
  store %struct.Memory* %call_40b0eb, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b0ee	 Bytes: 4
  %loadMem_40b0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0ee = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0ee)
  store %struct.Memory* %call_40b0ee, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b0f2	 Bytes: 7
  %loadMem_40b0f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0f2 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0f2)
  store %struct.Memory* %call_40b0f2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40b0f9	 Bytes: 3
  %loadMem_40b0f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0f9 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0f9)
  store %struct.Memory* %call_40b0f9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40b0fc	 Bytes: 3
  %loadMem_40b0fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0fc = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0fc)
  store %struct.Memory* %call_40b0fc, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40b0ff	 Bytes: 4
  %loadMem_40b0ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b0ff = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b0ff)
  store %struct.Memory* %call_40b0ff, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40b103	 Bytes: 3
  %loadMem_40b103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b103 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b103)
  store %struct.Memory* %call_40b103, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40b106	 Bytes: 4
  %loadMem_40b106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b106 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b106)
  store %struct.Memory* %call_40b106, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40b10a	 Bytes: 4
  %loadMem_40b10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b10a = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b10a)
  store %struct.Memory* %call_40b10a, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40b10e	 Bytes: 3
  %loadMem_40b10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b10e = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b10e)
  store %struct.Memory* %call_40b10e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40b111	 Bytes: 4
  %loadMem_40b111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b111 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b111)
  store %struct.Memory* %call_40b111, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40b115	 Bytes: 4
  %loadMem_40b115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b115 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b115)
  store %struct.Memory* %call_40b115, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b119	 Bytes: 7
  %loadMem_40b119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b119 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b119)
  store %struct.Memory* %call_40b119, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b120	 Bytes: 3
  %loadMem_40b120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b120 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b120)
  store %struct.Memory* %call_40b120, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b123	 Bytes: 3
  %loadMem_40b123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b123 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b123)
  store %struct.Memory* %call_40b123, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40b126	 Bytes: 4
  %loadMem_40b126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b126 = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b126)
  store %struct.Memory* %call_40b126, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40b12a	 Bytes: 8
  %loadMem_40b12a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b12a = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b12a)
  store %struct.Memory* %call_40b12a, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40b132	 Bytes: 3
  %loadMem_40b132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b132 = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b132)
  store %struct.Memory* %call_40b132, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40b135	 Bytes: 4
  %loadMem_40b135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b135 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b135)
  store %struct.Memory* %call_40b135, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b139	 Bytes: 7
  %loadMem_40b139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b139 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b139)
  store %struct.Memory* %call_40b139, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b140	 Bytes: 3
  %loadMem_40b140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b140 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b140)
  store %struct.Memory* %call_40b140, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b143	 Bytes: 3
  %loadMem_40b143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b143 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b143)
  store %struct.Memory* %call_40b143, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40b146	 Bytes: 3
  %loadMem_40b146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b146 = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b146)
  store %struct.Memory* %call_40b146, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40b149	 Bytes: 8
  %loadMem_40b149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b149 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b149)
  store %struct.Memory* %call_40b149, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40b151	 Bytes: 3
  %loadMem_40b151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b151 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b151)
  store %struct.Memory* %call_40b151, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40b154	 Bytes: 4
  %loadMem_40b154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b154 = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b154)
  store %struct.Memory* %call_40b154, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40b158	 Bytes: 8
  %loadMem_40b158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b158 = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b158)
  store %struct.Memory* %call_40b158, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40b160	 Bytes: 3
  %loadMem_40b160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b160 = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b160)
  store %struct.Memory* %call_40b160, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40b163	 Bytes: 4
  %loadMem_40b163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b163 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b163)
  store %struct.Memory* %call_40b163, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40b167	 Bytes: 7
  %loadMem_40b167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b167 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b167)
  store %struct.Memory* %call_40b167, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40b16e	 Bytes: 4
  %loadMem_40b16e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b16e = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b16e)
  store %struct.Memory* %call_40b16e, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b172	 Bytes: 7
  %loadMem_40b172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b172 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b172)
  store %struct.Memory* %call_40b172, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b179	 Bytes: 3
  %loadMem_40b179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b179 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b179)
  store %struct.Memory* %call_40b179, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b17c	 Bytes: 3
  %loadMem_40b17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b17c = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b17c)
  store %struct.Memory* %call_40b17c, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40b17f	 Bytes: 4
  %loadMem_40b17f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b17f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b17f)
  store %struct.Memory* %call_40b17f, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b183	 Bytes: 7
  %loadMem_40b183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b183 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b183)
  store %struct.Memory* %call_40b183, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40b18a	 Bytes: 3
  %loadMem_40b18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b18a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b18a)
  store %struct.Memory* %call_40b18a, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rax), %r8d	 RIP: 40b18d	 Bytes: 4
  %loadMem_40b18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b18d = call %struct.Memory* @routine_movl_0x60__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b18d)
  store %struct.Memory* %call_40b18d, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40b191	 Bytes: 3
  %loadMem_40b191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b191 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b191)
  store %struct.Memory* %call_40b191, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40b194	 Bytes: 4
  %loadMem_40b194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b194 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b194)
  store %struct.Memory* %call_40b194, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rax)	 RIP: 40b198	 Bytes: 4
  %loadMem_40b198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b198 = call %struct.Memory* @routine_movl__r9d__0x60__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b198)
  store %struct.Memory* %call_40b198, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rax	 RIP: 40b19c	 Bytes: 3
  %loadMem_40b19c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b19c = call %struct.Memory* @routine_movslq__r8d___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b19c)
  store %struct.Memory* %call_40b19c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rax,4)	 RIP: 40b19f	 Bytes: 4
  %loadMem_40b19f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b19f = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b19f)
  store %struct.Memory* %call_40b19f, %struct.Memory** %MEMORY

  ; Code: .L_40b1a3:	 RIP: 40b1a3	 Bytes: 0
  br label %block_.L_40b1a3
block_.L_40b1a3:

  ; Code: jmpq .L_40b1a8	 RIP: 40b1a3	 Bytes: 5
  %loadMem_40b1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1a3 = call %struct.Memory* @routine_jmpq_.L_40b1a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1a3, i64 5, i64 5)
  store %struct.Memory* %call_40b1a3, %struct.Memory** %MEMORY

  br label %block_.L_40b1a8

  ; Code: .L_40b1a8:	 RIP: 40b1a8	 Bytes: 0
block_.L_40b1a8:

  ; Code: popq %rbp	 RIP: 40b1a8	 Bytes: 1
  %loadMem_40b1a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1a8 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1a8)
  store %struct.Memory* %call_40b1a8, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40b1a9	 Bytes: 1
  %loadMem_40b1a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1a9 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1a9)
  store %struct.Memory* %call_40b1a9, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40b1a9
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq__0x99da00___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x99da00_type* @G__0x99da00 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x3___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 3)
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_subl_MINUS0xc__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0xa0e710___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xa0e710_type* @G_0xa0e710 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rcx____rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movl_0x99da00___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x99da00_type* @G_0x99da00 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0xa0e710___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xa0e710_type* @G_0xa0e710 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rcx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
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


define %struct.Memory* @routine_movl__edx__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_movl__edx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__edx__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__edx__0xaab3f0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_movl__edx__0xaaba30___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11188784
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_addq__rcx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx____rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EDX
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












define %struct.Memory* @routine_movl__edx__0x8__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EDX
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


define %struct.Memory* @routine_movl__0x0__0x2e4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 740
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x99da08___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__edx__0x99da08(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_addl__0x14___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 20)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__edx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_jne_.L_40aa1f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_40a9a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_jge_.L_40a9f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40ab96(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jne_.L_40ab91(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_40ab91(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jne_.L_40ac34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40abb5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_40ac0e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































define %struct.Memory* @routine_jmpq_.L_40adab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_40ada6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_40ada6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






































define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_jne_.L_40ae49(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40adca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_40ae23(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































define %struct.Memory* @routine_jmpq_.L_40afc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_40afbb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_40afbb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






































define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_jne_.L_40b05e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40afdf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_40b038(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































define %struct.Memory* @routine_jmpq_.L_40b1a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_40b1a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_40b1a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






































define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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

