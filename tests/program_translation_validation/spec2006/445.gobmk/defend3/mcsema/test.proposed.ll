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
declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4669b0.break_chain2_efficient_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_467690.edge_clamp_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_467aa0.hane_rescue_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_462c90.order_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_45dce0.do_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_467d90.special_rescue3_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4680d0.special_rescue_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_468270.superstring_breakchain_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_466a20.break_chain2_defense_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_468450.special_rescue5_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4688d0.special_rescue6_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_468d50.break_chain3_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x7ae448_type = type <{ [1 x i8] }>
@G_0x7ae448= global %G_0x7ae448_type <{ [1 x i8] c"\00" }>
%G_0xab0ef8_type = type <{ [1 x i8] }>
@G_0xab0ef8= global %G_0xab0ef8_type <{ [1 x i8] c"\00" }>
%G_0xae23a4_type = type <{ [4 x i8] }>
@G_0xae23a4= global %G_0xae23a4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb060b8_type = type <{ [4 x i8] }>
@G_0xb060b8= global %G_0xb060b8_type <{ [4 x i8] c"\00\00\00\00" }>
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
%G__0x57a741_type = type <{ [8 x i8] }>
@G__0x57a741= global %G__0x57a741_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f60a_type = type <{ [8 x i8] }>
@G__0x57f60a= global %G__0x57f60a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
@G__0x57fb0d= global %G__0x57fb0d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fbff_type = type <{ [8 x i8] }>
@G__0x57fbff= global %G__0x57fbff_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fc87_type = type <{ [8 x i8] }>
@G__0x57fc87= global %G__0x57fc87_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fcb0_type = type <{ [8 x i8] }>
@G__0x57fcb0= global %G__0x57fcb0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fcc3_type = type <{ [8 x i8] }>
@G__0x57fcc3= global %G__0x57fcc3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fccd_type = type <{ [8 x i8] }>
@G__0x57fccd= global %G__0x57fccd_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fd0a_type = type <{ [8 x i8] }>
@G__0x57fd0a= global %G__0x57fd0a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @defend3(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .defend3:	 RIP: 465550	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 465550	 Bytes: 1
  %loadMem_465550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465550 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465550)
  store %struct.Memory* %call_465550, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 465551	 Bytes: 3
  %loadMem_465551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465551 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465551)
  store %struct.Memory* %call_465551, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 465554	 Bytes: 2
  %loadMem_465554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465554 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465554)
  store %struct.Memory* %call_465554, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 465556	 Bytes: 2
  %loadMem_465556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465556 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465556)
  store %struct.Memory* %call_465556, %struct.Memory** %MEMORY

  ; Code: pushq %r13	 RIP: 465558	 Bytes: 2
  %loadMem_465558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465558 = call %struct.Memory* @routine_pushq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465558)
  store %struct.Memory* %call_465558, %struct.Memory** %MEMORY

  ; Code: pushq %r12	 RIP: 46555a	 Bytes: 2
  %loadMem_46555a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46555a = call %struct.Memory* @routine_pushq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46555a)
  store %struct.Memory* %call_46555a, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 46555c	 Bytes: 1
  %loadMem_46555c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46555c = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46555c)
  store %struct.Memory* %call_46555c, %struct.Memory** %MEMORY

  ; Code: subq $0x368, %rsp	 RIP: 46555d	 Bytes: 7
  %loadMem_46555d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46555d = call %struct.Memory* @routine_subq__0x368___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46555d)
  store %struct.Memory* %call_46555d, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 465564	 Bytes: 5
  %loadMem_465564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465564 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465564)
  store %struct.Memory* %call_465564, %struct.Memory** %MEMORY

  ; Code: movq $0x57a741, %r8	 RIP: 465569	 Bytes: 10
  %loadMem_465569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465569 = call %struct.Memory* @routine_movq__0x57a741___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465569)
  store %struct.Memory* %call_465569, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x30(%rbp)	 RIP: 465573	 Bytes: 3
  %loadMem_465573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465573 = call %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465573)
  store %struct.Memory* %call_465573, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x38(%rbp)	 RIP: 465576	 Bytes: 4
  %loadMem_465576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465576 = call %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465576)
  store %struct.Memory* %call_465576, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3c(%rbp)	 RIP: 46557a	 Bytes: 3
  %loadMem_46557a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46557a = call %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46557a)
  store %struct.Memory* %call_46557a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x40(%rbp)	 RIP: 46557d	 Bytes: 3
  %loadMem_46557d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46557d = call %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46557d)
  store %struct.Memory* %call_46557d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1f8(%rbp)	 RIP: 465580	 Bytes: 10
  %loadMem_465580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465580 = call %struct.Memory* @routine_movl__0x0__MINUS0x1f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465580)
  store %struct.Memory* %call_465580, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1fc(%rbp)	 RIP: 46558a	 Bytes: 10
  %loadMem_46558a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46558a = call %struct.Memory* @routine_movl__0x0__MINUS0x1fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46558a)
  store %struct.Memory* %call_46558a, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x208(%rbp)	 RIP: 465594	 Bytes: 7
  %loadMem_465594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465594 = call %struct.Memory* @routine_movq__r8__MINUS0x208__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465594)
  store %struct.Memory* %call_465594, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 46559b	 Bytes: 3
  %loadMem_46559b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46559b = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46559b)
  store %struct.Memory* %call_46559b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20c(%rbp)	 RIP: 46559e	 Bytes: 6
  %loadMem_46559e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46559e = call %struct.Memory* @routine_movl__ecx__MINUS0x20c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46559e)
  store %struct.Memory* %call_46559e, %struct.Memory** %MEMORY

  ; Code: movl 0xae23a4, %ecx	 RIP: 4655a4	 Bytes: 7
  %loadMem_4655a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655a4 = call %struct.Memory* @routine_movl_0xae23a4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655a4)
  store %struct.Memory* %call_4655a4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4655ab	 Bytes: 3
  %loadMem_4655ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655ab = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655ab)
  store %struct.Memory* %call_4655ab, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xae23a4	 RIP: 4655ae	 Bytes: 7
  %loadMem_4655ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655ae = call %struct.Memory* @routine_movl__ecx__0xae23a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655ae)
  store %struct.Memory* %call_4655ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 4655b5	 Bytes: 4
  %loadMem_4655b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655b5 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655b5)
  store %struct.Memory* %call_4655b5, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rsi,1), %ecx	 RIP: 4655b9	 Bytes: 8
  %loadMem_4655b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655b9 = call %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655b9)
  store %struct.Memory* %call_4655b9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x44(%rbp)	 RIP: 4655c1	 Bytes: 3
  %loadMem_4655c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655c1 = call %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655c1)
  store %struct.Memory* %call_4655c1, %struct.Memory** %MEMORY

  ; Code: subl -0x44(%rbp), %eax	 RIP: 4655c4	 Bytes: 3
  %loadMem_4655c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655c4 = call %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655c4)
  store %struct.Memory* %call_4655c4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 4655c7	 Bytes: 3
  %loadMem_4655c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655c7 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655c7)
  store %struct.Memory* %call_4655c7, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 4655ca	 Bytes: 4
  %loadMem_4655ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655ca = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655ca)
  store %struct.Memory* %call_4655ca, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rsi,1), %eax	 RIP: 4655ce	 Bytes: 8
  %loadMem_4655ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655ce = call %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655ce)
  store %struct.Memory* %call_4655ce, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 4655d6	 Bytes: 3
  %loadMem_4655d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655d6 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655d6)
  store %struct.Memory* %call_4655d6, %struct.Memory** %MEMORY

  ; Code: je .L_4655f4	 RIP: 4655d9	 Bytes: 6
  %loadMem_4655d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655d9 = call %struct.Memory* @routine_je_.L_4655f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655d9, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4655d9, %struct.Memory** %MEMORY

  %loadBr_4655d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4655d9 = icmp eq i8 %loadBr_4655d9, 1
  br i1 %cmpBr_4655d9, label %block_.L_4655f4, label %block_4655df

block_4655df:
  ; Code: movslq -0x30(%rbp), %rax	 RIP: 4655df	 Bytes: 4
  %loadMem_4655df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655df = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655df)
  store %struct.Memory* %call_4655df, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4655e3	 Bytes: 8
  %loadMem_4655e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655e3 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655e3)
  store %struct.Memory* %call_4655e3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 4655eb	 Bytes: 3
  %loadMem_4655eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655eb = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655eb)
  store %struct.Memory* %call_4655eb, %struct.Memory** %MEMORY

  ; Code: jne .L_4655f9	 RIP: 4655ee	 Bytes: 6
  %loadMem_4655ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655ee = call %struct.Memory* @routine_jne_.L_4655f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655ee, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4655ee, %struct.Memory** %MEMORY

  %loadBr_4655ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4655ee = icmp eq i8 %loadBr_4655ee, 1
  br i1 %cmpBr_4655ee, label %block_.L_4655f9, label %block_.L_4655f4

  ; Code: .L_4655f4:	 RIP: 4655f4	 Bytes: 0
block_.L_4655f4:

  ; Code: jmpq .L_465621	 RIP: 4655f4	 Bytes: 5
  %loadMem_4655f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655f4 = call %struct.Memory* @routine_jmpq_.L_465621(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655f4, i64 45, i64 5)
  store %struct.Memory* %call_4655f4, %struct.Memory** %MEMORY

  br label %block_.L_465621

  ; Code: .L_4655f9:	 RIP: 4655f9	 Bytes: 0
block_.L_4655f9:

  ; Code: movq $0x57fb0d, %rdi	 RIP: 4655f9	 Bytes: 10
  %loadMem_4655f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4655f9 = call %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4655f9)
  store %struct.Memory* %call_4655f9, %struct.Memory** %MEMORY

  ; Code: movl $0x580, %esi	 RIP: 465603	 Bytes: 5
  %loadMem_465603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465603 = call %struct.Memory* @routine_movl__0x580___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465603)
  store %struct.Memory* %call_465603, %struct.Memory** %MEMORY

  ; Code: movq $0x57fbff, %rdx	 RIP: 465608	 Bytes: 10
  %loadMem_465608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465608 = call %struct.Memory* @routine_movq__0x57fbff___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465608)
  store %struct.Memory* %call_465608, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 465612	 Bytes: 5
  %loadMem_465612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465612 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465612)
  store %struct.Memory* %call_465612, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 465617	 Bytes: 2
  %loadMem_465617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465617 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465617)
  store %struct.Memory* %call_465617, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 465619	 Bytes: 3
  %loadMem_465619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465619 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465619)
  store %struct.Memory* %call_465619, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 46561c	 Bytes: 5
  %loadMem1_46561c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46561c = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46561c, i64 -79244, i64 5, i64 5)
  store %struct.Memory* %call1_46561c, %struct.Memory** %MEMORY

  %loadMem2_46561c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46561c = load i64, i64* %3
  %call2_46561c = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_46561c, %struct.Memory* %loadMem2_46561c)
  store %struct.Memory* %call2_46561c, %struct.Memory** %MEMORY

  ; Code: .L_465621:	 RIP: 465621	 Bytes: 0
  br label %block_.L_465621
block_.L_465621:

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465621	 Bytes: 3
  %loadMem_465621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465621 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465621)
  store %struct.Memory* %call_465621, %struct.Memory** %MEMORY

  ; Code: callq .countlib	 RIP: 465624	 Bytes: 5
  %loadMem1_465624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465624 = call %struct.Memory* @routine_callq_.countlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465624, i64 -351908, i64 5, i64 5)
  store %struct.Memory* %call1_465624, %struct.Memory** %MEMORY

  %loadMem2_465624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465624 = load i64, i64* %3
  %call2_465624 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64  %loadPC_465624, %struct.Memory* %loadMem2_465624)
  store %struct.Memory* %call2_465624, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 465629	 Bytes: 3
  %loadMem_465629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465629 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465629)
  store %struct.Memory* %call_465629, %struct.Memory** %MEMORY

  ; Code: jne .L_465637	 RIP: 46562c	 Bytes: 6
  %loadMem_46562c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46562c = call %struct.Memory* @routine_jne_.L_465637(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46562c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46562c, %struct.Memory** %MEMORY

  %loadBr_46562c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46562c = icmp eq i8 %loadBr_46562c, 1
  br i1 %cmpBr_46562c, label %block_.L_465637, label %block_465632

block_465632:
  ; Code: jmpq .L_46565f	 RIP: 465632	 Bytes: 5
  %loadMem_465632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465632 = call %struct.Memory* @routine_jmpq_.L_46565f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465632, i64 45, i64 5)
  store %struct.Memory* %call_465632, %struct.Memory** %MEMORY

  br label %block_.L_46565f

  ; Code: .L_465637:	 RIP: 465637	 Bytes: 0
block_.L_465637:

  ; Code: movq $0x57fb0d, %rdi	 RIP: 465637	 Bytes: 10
  %loadMem_465637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465637 = call %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465637)
  store %struct.Memory* %call_465637, %struct.Memory** %MEMORY

  ; Code: movl $0x581, %esi	 RIP: 465641	 Bytes: 5
  %loadMem_465641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465641 = call %struct.Memory* @routine_movl__0x581___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465641)
  store %struct.Memory* %call_465641, %struct.Memory** %MEMORY

  ; Code: movq $0x57fcb0, %rdx	 RIP: 465646	 Bytes: 10
  %loadMem_465646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465646 = call %struct.Memory* @routine_movq__0x57fcb0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465646)
  store %struct.Memory* %call_465646, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 465650	 Bytes: 5
  %loadMem_465650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465650 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465650)
  store %struct.Memory* %call_465650, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 465655	 Bytes: 2
  %loadMem_465655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465655 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465655)
  store %struct.Memory* %call_465655, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 465657	 Bytes: 3
  %loadMem_465657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465657 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465657)
  store %struct.Memory* %call_465657, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 46565a	 Bytes: 5
  %loadMem1_46565a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46565a = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46565a, i64 -79306, i64 5, i64 5)
  store %struct.Memory* %call1_46565a, %struct.Memory** %MEMORY

  %loadMem2_46565a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46565a = load i64, i64* %3
  %call2_46565a = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_46565a, %struct.Memory* %loadMem2_46565a)
  store %struct.Memory* %call2_46565a, %struct.Memory** %MEMORY

  ; Code: .L_46565f:	 RIP: 46565f	 Bytes: 0
  br label %block_.L_46565f
block_.L_46565f:

  ; Code: movl $0x3, %esi	 RIP: 46565f	 Bytes: 5
  %loadMem_46565f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46565f = call %struct.Memory* @routine_movl__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46565f)
  store %struct.Memory* %call_46565f, %struct.Memory** %MEMORY

  ; Code: leaq -0x5c(%rbp), %rdx	 RIP: 465664	 Bytes: 4
  %loadMem_465664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465664 = call %struct.Memory* @routine_leaq_MINUS0x5c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465664)
  store %struct.Memory* %call_465664, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465668	 Bytes: 3
  %loadMem_465668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465668 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465668)
  store %struct.Memory* %call_465668, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 46566b	 Bytes: 5
  %loadMem1_46566b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46566b = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46566b, i64 -351787, i64 5, i64 5)
  store %struct.Memory* %call1_46566b, %struct.Memory** %MEMORY

  %loadMem2_46566b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46566b = load i64, i64* %3
  %call2_46566b = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_46566b, %struct.Memory* %loadMem2_46566b)
  store %struct.Memory* %call2_46566b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 465670	 Bytes: 3
  %loadMem_465670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465670 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465670)
  store %struct.Memory* %call_465670, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, -0x50(%rbp)	 RIP: 465673	 Bytes: 4
  %loadMem_465673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465673 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465673)
  store %struct.Memory* %call_465673, %struct.Memory** %MEMORY

  ; Code: jne .L_465682	 RIP: 465677	 Bytes: 6
  %loadMem_465677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465677 = call %struct.Memory* @routine_jne_.L_465682(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465677, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_465677, %struct.Memory** %MEMORY

  %loadBr_465677 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465677 = icmp eq i8 %loadBr_465677, 1
  br i1 %cmpBr_465677, label %block_.L_465682, label %block_46567d

block_46567d:
  ; Code: jmpq .L_4656f3	 RIP: 46567d	 Bytes: 5
  %loadMem_46567d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46567d = call %struct.Memory* @routine_jmpq_.L_4656f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46567d, i64 118, i64 5)
  store %struct.Memory* %call_46567d, %struct.Memory** %MEMORY

  br label %block_.L_4656f3

  ; Code: .L_465682:	 RIP: 465682	 Bytes: 0
block_.L_465682:

  ; Code: movq $0x57fb0d, %rdi	 RIP: 465682	 Bytes: 10
  %loadMem_465682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465682 = call %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465682)
  store %struct.Memory* %call_465682, %struct.Memory** %MEMORY

  ; Code: movl $0x584, %esi	 RIP: 46568c	 Bytes: 5
  %loadMem_46568c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46568c = call %struct.Memory* @routine_movl__0x584___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46568c)
  store %struct.Memory* %call_46568c, %struct.Memory** %MEMORY

  ; Code: movq $0x57fd0a, %rdx	 RIP: 465691	 Bytes: 10
  %loadMem_465691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465691 = call %struct.Memory* @routine_movq__0x57fd0a___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465691)
  store %struct.Memory* %call_465691, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 46569b	 Bytes: 5
  %loadMem_46569b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46569b = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46569b)
  store %struct.Memory* %call_46569b, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 4656a0	 Bytes: 3
  %loadMem_4656a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656a0 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656a0)
  store %struct.Memory* %call_4656a0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2b0(%rbp)	 RIP: 4656a3	 Bytes: 6
  %loadMem_4656a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656a3 = call %struct.Memory* @routine_movl__eax__MINUS0x2b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656a3)
  store %struct.Memory* %call_4656a3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 4656a9	 Bytes: 2
  %loadMem_4656a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656a9 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656a9)
  store %struct.Memory* %call_4656a9, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x2b8(%rbp)	 RIP: 4656ab	 Bytes: 7
  %loadMem_4656ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656ab = call %struct.Memory* @routine_movq__rdx__MINUS0x2b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656ab)
  store %struct.Memory* %call_4656ab, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4656b2	 Bytes: 1
  %loadMem_4656b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656b2 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656b2)
  store %struct.Memory* %call_4656b2, %struct.Memory** %MEMORY

  ; Code: movl -0x2b0(%rbp), %ecx	 RIP: 4656b3	 Bytes: 6
  %loadMem_4656b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656b3 = call %struct.Memory* @routine_movl_MINUS0x2b0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656b3)
  store %struct.Memory* %call_4656b3, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4656b9	 Bytes: 2
  %loadMem_4656b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656b9 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656b9)
  store %struct.Memory* %call_4656b9, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4656bb	 Bytes: 3
  %loadMem_4656bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656bb = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656bb)
  store %struct.Memory* %call_4656bb, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %r8d	 RIP: 4656be	 Bytes: 4
  %loadMem_4656be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656be = call %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656be)
  store %struct.Memory* %call_4656be, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2bc(%rbp)	 RIP: 4656c2	 Bytes: 6
  %loadMem_4656c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656c2 = call %struct.Memory* @routine_movl__eax__MINUS0x2bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656c2)
  store %struct.Memory* %call_4656c2, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 4656c8	 Bytes: 3
  %loadMem_4656c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656c8 = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656c8)
  store %struct.Memory* %call_4656c8, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4656cb	 Bytes: 1
  %loadMem_4656cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656cb = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656cb)
  store %struct.Memory* %call_4656cb, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4656cc	 Bytes: 2
  %loadMem_4656cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656cc = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656cc)
  store %struct.Memory* %call_4656cc, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 4656ce	 Bytes: 3
  %loadMem_4656ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656ce = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656ce)
  store %struct.Memory* %call_4656ce, %struct.Memory** %MEMORY

  ; Code: movq -0x2b8(%rbp), %r9	 RIP: 4656d1	 Bytes: 7
  %loadMem_4656d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656d1 = call %struct.Memory* @routine_movq_MINUS0x2b8__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656d1)
  store %struct.Memory* %call_4656d1, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c0(%rbp)	 RIP: 4656d8	 Bytes: 6
  %loadMem_4656d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656d8 = call %struct.Memory* @routine_movl__edx__MINUS0x2c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656d8)
  store %struct.Memory* %call_4656d8, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdx	 RIP: 4656de	 Bytes: 3
  %loadMem_4656de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656de = call %struct.Memory* @routine_movq__r9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656de)
  store %struct.Memory* %call_4656de, %struct.Memory** %MEMORY

  ; Code: movl -0x2bc(%rbp), %ecx	 RIP: 4656e1	 Bytes: 6
  %loadMem_4656e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656e1 = call %struct.Memory* @routine_movl_MINUS0x2bc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656e1)
  store %struct.Memory* %call_4656e1, %struct.Memory** %MEMORY

  ; Code: movl -0x2c0(%rbp), %r8d	 RIP: 4656e7	 Bytes: 7
  %loadMem_4656e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656e7 = call %struct.Memory* @routine_movl_MINUS0x2c0__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656e7)
  store %struct.Memory* %call_4656e7, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 4656ee	 Bytes: 5
  %loadMem1_4656ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4656ee = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4656ee, i64 -79454, i64 5, i64 5)
  store %struct.Memory* %call1_4656ee, %struct.Memory** %MEMORY

  %loadMem2_4656ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4656ee = load i64, i64* %3
  %call2_4656ee = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_4656ee, %struct.Memory* %loadMem2_4656ee)
  store %struct.Memory* %call2_4656ee, %struct.Memory** %MEMORY

  ; Code: .L_4656f3:	 RIP: 4656f3	 Bytes: 0
  br label %block_.L_4656f3
block_.L_4656f3:

  ; Code: movl $0x0, -0x200(%rbp)	 RIP: 4656f3	 Bytes: 10
  %loadMem_4656f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656f3 = call %struct.Memory* @routine_movl__0x0__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656f3)
  store %struct.Memory* %call_4656f3, %struct.Memory** %MEMORY

  ; Code: .L_4656fd:	 RIP: 4656fd	 Bytes: 0
  br label %block_.L_4656fd
block_.L_4656fd:

  ; Code: movl -0x200(%rbp), %eax	 RIP: 4656fd	 Bytes: 6
  %loadMem_4656fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4656fd = call %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4656fd)
  store %struct.Memory* %call_4656fd, %struct.Memory** %MEMORY

  ; Code: cmpl -0x50(%rbp), %eax	 RIP: 465703	 Bytes: 3
  %loadMem_465703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465703 = call %struct.Memory* @routine_cmpl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465703)
  store %struct.Memory* %call_465703, %struct.Memory** %MEMORY

  ; Code: jge .L_46574b	 RIP: 465706	 Bytes: 6
  %loadMem_465706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465706 = call %struct.Memory* @routine_jge_.L_46574b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465706, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_465706, %struct.Memory** %MEMORY

  %loadBr_465706 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465706 = icmp eq i8 %loadBr_465706, 1
  br i1 %cmpBr_465706, label %block_.L_46574b, label %block_46570c

block_46570c:
  ; Code: movslq -0x200(%rbp), %rax	 RIP: 46570c	 Bytes: 7
  %loadMem_46570c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46570c = call %struct.Memory* @routine_movslq_MINUS0x200__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46570c)
  store %struct.Memory* %call_46570c, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp,%rax,4), %ecx	 RIP: 465713	 Bytes: 4
  %loadMem_465713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465713 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465713)
  store %struct.Memory* %call_465713, %struct.Memory** %MEMORY

  ; Code: movslq -0x200(%rbp), %rax	 RIP: 465717	 Bytes: 7
  %loadMem_465717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465717 = call %struct.Memory* @routine_movslq_MINUS0x200__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465717)
  store %struct.Memory* %call_465717, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1f0(%rbp,%rax,4)	 RIP: 46571e	 Bytes: 7
  %loadMem_46571e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46571e = call %struct.Memory* @routine_movl__ecx__MINUS0x1f0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46571e)
  store %struct.Memory* %call_46571e, %struct.Memory** %MEMORY

  ; Code: movslq -0x200(%rbp), %rax	 RIP: 465725	 Bytes: 7
  %loadMem_465725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465725 = call %struct.Memory* @routine_movslq_MINUS0x200__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465725)
  store %struct.Memory* %call_465725, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x128(%rbp,%rax,4)	 RIP: 46572c	 Bytes: 11
  %loadMem_46572c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46572c = call %struct.Memory* @routine_movl__0x0__MINUS0x128__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46572c)
  store %struct.Memory* %call_46572c, %struct.Memory** %MEMORY

  ; Code: movl -0x200(%rbp), %eax	 RIP: 465737	 Bytes: 6
  %loadMem_465737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465737 = call %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465737)
  store %struct.Memory* %call_465737, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46573d	 Bytes: 3
  %loadMem_46573d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46573d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46573d)
  store %struct.Memory* %call_46573d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x200(%rbp)	 RIP: 465740	 Bytes: 6
  %loadMem_465740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465740 = call %struct.Memory* @routine_movl__eax__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465740)
  store %struct.Memory* %call_465740, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4656fd	 RIP: 465746	 Bytes: 5
  %loadMem_465746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465746 = call %struct.Memory* @routine_jmpq_.L_4656fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465746, i64 -73, i64 5)
  store %struct.Memory* %call_465746, %struct.Memory** %MEMORY

  br label %block_.L_4656fd

  ; Code: .L_46574b:	 RIP: 46574b	 Bytes: 0
block_.L_46574b:

  ; Code: leaq -0x1f0(%rbp), %rsi	 RIP: 46574b	 Bytes: 7
  %loadMem_46574b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46574b = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46574b)
  store %struct.Memory* %call_46574b, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 465752	 Bytes: 3
  %loadMem_465752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465752 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465752)
  store %struct.Memory* %call_465752, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 465755	 Bytes: 3
  %loadMem_465755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465755 = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465755)
  store %struct.Memory* %call_465755, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465758	 Bytes: 3
  %loadMem_465758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465758 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465758)
  store %struct.Memory* %call_465758, %struct.Memory** %MEMORY

  ; Code: callq .break_chain_moves	 RIP: 46575b	 Bytes: 5
  %loadMem1_46575b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46575b = call %struct.Memory* @routine_callq_.break_chain_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46575b, i64 -14795, i64 5, i64 5)
  store %struct.Memory* %call1_46575b, %struct.Memory** %MEMORY

  %loadMem2_46575b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46575b = load i64, i64* %3
  %call2_46575b = call %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* %0, i64  %loadPC_46575b, %struct.Memory* %loadMem2_46575b)
  store %struct.Memory* %call2_46575b, %struct.Memory** %MEMORY

  ; Code: leaq -0x1f0(%rbp), %rsi	 RIP: 465760	 Bytes: 7
  %loadMem_465760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465760 = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465760)
  store %struct.Memory* %call_465760, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465767	 Bytes: 3
  %loadMem_465767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465767 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465767)
  store %struct.Memory* %call_465767, %struct.Memory** %MEMORY

  ; Code: callq .break_chain2_efficient_moves	 RIP: 46576a	 Bytes: 5
  %loadMem1_46576a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46576a = call %struct.Memory* @routine_callq_.break_chain2_efficient_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46576a, i64 4678, i64 5, i64 5)
  store %struct.Memory* %call1_46576a, %struct.Memory** %MEMORY

  %loadMem2_46576a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46576a = load i64, i64* %3
  %call2_46576a = call %struct.Memory* @sub_4669b0.break_chain2_efficient_moves(%struct.State* %0, i64  %loadPC_46576a, %struct.Memory* %loadMem2_46576a)
  store %struct.Memory* %call2_46576a, %struct.Memory** %MEMORY

  ; Code: leaq -0x1f0(%rbp), %rcx	 RIP: 46576f	 Bytes: 7
  %loadMem_46576f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46576f = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46576f)
  store %struct.Memory* %call_46576f, %struct.Memory** %MEMORY

  ; Code: leaq -0x5c(%rbp), %rsi	 RIP: 465776	 Bytes: 4
  %loadMem_465776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465776 = call %struct.Memory* @routine_leaq_MINUS0x5c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465776)
  store %struct.Memory* %call_465776, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 46577a	 Bytes: 3
  %loadMem_46577a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46577a = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46577a)
  store %struct.Memory* %call_46577a, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edx	 RIP: 46577d	 Bytes: 3
  %loadMem_46577d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46577d = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46577d)
  store %struct.Memory* %call_46577d, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %r8d	 RIP: 465780	 Bytes: 4
  %loadMem_465780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465780 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465780)
  store %struct.Memory* %call_465780, %struct.Memory** %MEMORY

  ; Code: callq .propose_edge_moves	 RIP: 465784	 Bytes: 5
  %loadMem1_465784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465784 = call %struct.Memory* @routine_callq_.propose_edge_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465784, i64 -12500, i64 5, i64 5)
  store %struct.Memory* %call1_465784, %struct.Memory** %MEMORY

  %loadMem2_465784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465784 = load i64, i64* %3
  %call2_465784 = call %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* %0, i64  %loadPC_465784, %struct.Memory* %loadMem2_465784)
  store %struct.Memory* %call2_465784, %struct.Memory** %MEMORY

  ; Code: leaq -0x1f0(%rbp), %rsi	 RIP: 465789	 Bytes: 7
  %loadMem_465789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465789 = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465789)
  store %struct.Memory* %call_465789, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465790	 Bytes: 3
  %loadMem_465790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465790 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465790)
  store %struct.Memory* %call_465790, %struct.Memory** %MEMORY

  ; Code: callq .edge_clamp_moves	 RIP: 465793	 Bytes: 5
  %loadMem1_465793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465793 = call %struct.Memory* @routine_callq_.edge_clamp_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465793, i64 7933, i64 5, i64 5)
  store %struct.Memory* %call1_465793, %struct.Memory** %MEMORY

  %loadMem2_465793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465793 = load i64, i64* %3
  %call2_465793 = call %struct.Memory* @sub_467690.edge_clamp_moves(%struct.State* %0, i64  %loadPC_465793, %struct.Memory* %loadMem2_465793)
  store %struct.Memory* %call2_465793, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %eax	 RIP: 465798	 Bytes: 7
  %loadMem_465798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465798 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465798)
  store %struct.Memory* %call_465798, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8af28, %eax	 RIP: 46579f	 Bytes: 7
  %loadMem_46579f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46579f = call %struct.Memory* @routine_cmpl_0xb8af28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46579f)
  store %struct.Memory* %call_46579f, %struct.Memory** %MEMORY

  ; Code: jg .L_4657bf	 RIP: 4657a6	 Bytes: 6
  %loadMem_4657a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4657a6 = call %struct.Memory* @routine_jg_.L_4657bf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4657a6, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4657a6, %struct.Memory** %MEMORY

  %loadBr_4657a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4657a6 = icmp eq i8 %loadBr_4657a6, 1
  br i1 %cmpBr_4657a6, label %block_.L_4657bf, label %block_4657ac

block_4657ac:
  ; Code: leaq -0x1f0(%rbp), %rdx	 RIP: 4657ac	 Bytes: 7
  %loadMem_4657ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4657ac = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4657ac)
  store %struct.Memory* %call_4657ac, %struct.Memory** %MEMORY

  ; Code: leaq -0x5c(%rbp), %rsi	 RIP: 4657b3	 Bytes: 4
  %loadMem_4657b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4657b3 = call %struct.Memory* @routine_leaq_MINUS0x5c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4657b3)
  store %struct.Memory* %call_4657b3, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4657b7	 Bytes: 3
  %loadMem_4657b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4657b7 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4657b7)
  store %struct.Memory* %call_4657b7, %struct.Memory** %MEMORY

  ; Code: callq .hane_rescue_moves	 RIP: 4657ba	 Bytes: 5
  %loadMem1_4657ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4657ba = call %struct.Memory* @routine_callq_.hane_rescue_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4657ba, i64 8934, i64 5, i64 5)
  store %struct.Memory* %call1_4657ba, %struct.Memory** %MEMORY

  %loadMem2_4657ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4657ba = load i64, i64* %3
  %call2_4657ba = call %struct.Memory* @sub_467aa0.hane_rescue_moves(%struct.State* %0, i64  %loadPC_4657ba, %struct.Memory* %loadMem2_4657ba)
  store %struct.Memory* %call2_4657ba, %struct.Memory** %MEMORY

  ; Code: .L_4657bf:	 RIP: 4657bf	 Bytes: 0
  br label %block_.L_4657bf
block_.L_4657bf:

  ; Code: leaq -0x1f0(%rbp), %rsi	 RIP: 4657bf	 Bytes: 7
  %loadMem_4657bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4657bf = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4657bf)
  store %struct.Memory* %call_4657bf, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 4657c6	 Bytes: 3
  %loadMem_4657c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4657c6 = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4657c6)
  store %struct.Memory* %call_4657c6, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4657c9	 Bytes: 3
  %loadMem_4657c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4657c9 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4657c9)
  store %struct.Memory* %call_4657c9, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %edx	 RIP: 4657cc	 Bytes: 3
  %loadMem_4657cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4657cc = call %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4657cc)
  store %struct.Memory* %call_4657cc, %struct.Memory** %MEMORY

  ; Code: movq -0x208(%rbp), %rcx	 RIP: 4657cf	 Bytes: 7
  %loadMem_4657cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4657cf = call %struct.Memory* @routine_movq_MINUS0x208__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4657cf)
  store %struct.Memory* %call_4657cf, %struct.Memory** %MEMORY

  ; Code: callq .order_moves	 RIP: 4657d6	 Bytes: 5
  %loadMem1_4657d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4657d6 = call %struct.Memory* @routine_callq_.order_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4657d6, i64 -11078, i64 5, i64 5)
  store %struct.Memory* %call1_4657d6, %struct.Memory** %MEMORY

  %loadMem2_4657d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4657d6 = load i64, i64* %3
  %call2_4657d6 = call %struct.Memory* @sub_462c90.order_moves(%struct.State* %0, i64  %loadPC_4657d6, %struct.Memory* %loadMem2_4657d6)
  store %struct.Memory* %call2_4657d6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x200(%rbp)	 RIP: 4657db	 Bytes: 10
  %loadMem_4657db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4657db = call %struct.Memory* @routine_movl__0x0__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4657db)
  store %struct.Memory* %call_4657db, %struct.Memory** %MEMORY

  ; Code: .L_4657e5:	 RIP: 4657e5	 Bytes: 0
  br label %block_.L_4657e5
block_.L_4657e5:

  ; Code: movl -0x200(%rbp), %eax	 RIP: 4657e5	 Bytes: 6
  %loadMem_4657e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4657e5 = call %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4657e5)
  store %struct.Memory* %call_4657e5, %struct.Memory** %MEMORY

  ; Code: cmpl -0x60(%rbp), %eax	 RIP: 4657eb	 Bytes: 3
  %loadMem_4657eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4657eb = call %struct.Memory* @routine_cmpl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4657eb)
  store %struct.Memory* %call_4657eb, %struct.Memory** %MEMORY

  ; Code: jge .L_465a65	 RIP: 4657ee	 Bytes: 6
  %loadMem_4657ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4657ee = call %struct.Memory* @routine_jge_.L_465a65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4657ee, i8* %BRANCH_TAKEN, i64 631, i64 6, i64 6)
  store %struct.Memory* %call_4657ee, %struct.Memory** %MEMORY

  %loadBr_4657ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4657ee = icmp eq i8 %loadBr_4657ee, 1
  br i1 %cmpBr_4657ee, label %block_.L_465a65, label %block_4657f4

block_4657f4:
  ; Code: movl 0xb54ce4, %eax	 RIP: 4657f4	 Bytes: 7
  %loadMem_4657f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4657f4 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4657f4)
  store %struct.Memory* %call_4657f4, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb6308c, %eax	 RIP: 4657fb	 Bytes: 7
  %loadMem_4657fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4657fb = call %struct.Memory* @routine_cmpl_0xb6308c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4657fb)
  store %struct.Memory* %call_4657fb, %struct.Memory** %MEMORY

  ; Code: jl .L_46581a	 RIP: 465802	 Bytes: 6
  %loadMem_465802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465802 = call %struct.Memory* @routine_jl_.L_46581a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465802, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_465802, %struct.Memory** %MEMORY

  %loadBr_465802 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465802 = icmp eq i8 %loadBr_465802, 1
  br i1 %cmpBr_465802, label %block_.L_46581a, label %block_465808

block_465808:
  ; Code: cmpl $0x0, -0x200(%rbp)	 RIP: 465808	 Bytes: 7
  %loadMem_465808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465808 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465808)
  store %struct.Memory* %call_465808, %struct.Memory** %MEMORY

  ; Code: jle .L_46581a	 RIP: 46580f	 Bytes: 6
  %loadMem_46580f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46580f = call %struct.Memory* @routine_jle_.L_46581a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46580f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46580f, %struct.Memory** %MEMORY

  %loadBr_46580f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46580f = icmp eq i8 %loadBr_46580f, 1
  br i1 %cmpBr_46580f, label %block_.L_46581a, label %block_465815

block_465815:
  ; Code: jmpq .L_465a65	 RIP: 465815	 Bytes: 5
  %loadMem_465815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465815 = call %struct.Memory* @routine_jmpq_.L_465a65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465815, i64 592, i64 5)
  store %struct.Memory* %call_465815, %struct.Memory** %MEMORY

  br label %block_.L_465a65

  ; Code: .L_46581a:	 RIP: 46581a	 Bytes: 0
block_.L_46581a:

  ; Code: xorl %eax, %eax	 RIP: 46581a	 Bytes: 2
  %loadMem_46581a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46581a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46581a)
  store %struct.Memory* %call_46581a, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 46581c	 Bytes: 2
  %loadMem_46581c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46581c = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46581c)
  store %struct.Memory* %call_46581c, %struct.Memory** %MEMORY

  ; Code: movslq -0x200(%rbp), %rdx	 RIP: 46581e	 Bytes: 7
  %loadMem_46581e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46581e = call %struct.Memory* @routine_movslq_MINUS0x200__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46581e)
  store %struct.Memory* %call_46581e, %struct.Memory** %MEMORY

  ; Code: movl -0x1f0(%rbp,%rdx,4), %eax	 RIP: 465825	 Bytes: 7
  %loadMem_465825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465825 = call %struct.Memory* @routine_movl_MINUS0x1f0__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465825)
  store %struct.Memory* %call_465825, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 46582c	 Bytes: 3
  %loadMem_46582c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46582c = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46582c)
  store %struct.Memory* %call_46582c, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edi	 RIP: 46582f	 Bytes: 3
  %loadMem_46582f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46582f = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46582f)
  store %struct.Memory* %call_46582f, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 465832	 Bytes: 3
  %loadMem_465832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465832 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465832)
  store %struct.Memory* %call_465832, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 465835	 Bytes: 3
  %loadMem_465835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465835 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465835)
  store %struct.Memory* %call_465835, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 465838	 Bytes: 4
  %loadMem_465838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465838 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465838)
  store %struct.Memory* %call_465838, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r9d	 RIP: 46583c	 Bytes: 4
  %loadMem_46583c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46583c = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46583c)
  store %struct.Memory* %call_46583c, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %r10d	 RIP: 465840	 Bytes: 8
  %loadMem_465840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465840 = call %struct.Memory* @routine_movl_0xb54ce4___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465840)
  store %struct.Memory* %call_465840, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b850, %r10d	 RIP: 465848	 Bytes: 8
  %loadMem_465848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465848 = call %struct.Memory* @routine_cmpl_0xb8b850___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465848)
  store %struct.Memory* %call_465848, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x2c4(%rbp)	 RIP: 465850	 Bytes: 7
  %loadMem_465850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465850 = call %struct.Memory* @routine_movl__r9d__MINUS0x2c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465850)
  store %struct.Memory* %call_465850, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x2c8(%rbp)	 RIP: 465857	 Bytes: 6
  %loadMem_465857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465857 = call %struct.Memory* @routine_movl__edi__MINUS0x2c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465857)
  store %struct.Memory* %call_465857, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x2cc(%rbp)	 RIP: 46585d	 Bytes: 6
  %loadMem_46585d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46585d = call %struct.Memory* @routine_movl__esi__MINUS0x2cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46585d)
  store %struct.Memory* %call_46585d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2d0(%rbp)	 RIP: 465863	 Bytes: 6
  %loadMem_465863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465863 = call %struct.Memory* @routine_movl__eax__MINUS0x2d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465863)
  store %struct.Memory* %call_465863, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x2d4(%rbp)	 RIP: 465869	 Bytes: 7
  %loadMem_465869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465869 = call %struct.Memory* @routine_movl__r8d__MINUS0x2d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465869)
  store %struct.Memory* %call_465869, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x2d5(%rbp)	 RIP: 465870	 Bytes: 6
  %loadMem_465870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465870 = call %struct.Memory* @routine_movb__cl__MINUS0x2d5__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465870)
  store %struct.Memory* %call_465870, %struct.Memory** %MEMORY

  ; Code: jg .L_46588c	 RIP: 465876	 Bytes: 6
  %loadMem_465876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465876 = call %struct.Memory* @routine_jg_.L_46588c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465876, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_465876, %struct.Memory** %MEMORY

  %loadBr_465876 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465876 = icmp eq i8 %loadBr_465876, 1
  br i1 %cmpBr_465876, label %block_.L_46588c, label %block_46587c

block_46587c:
  ; Code: cmpl $0x0, -0x1fc(%rbp)	 RIP: 46587c	 Bytes: 7
  %loadMem_46587c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46587c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46587c)
  store %struct.Memory* %call_46587c, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 465883	 Bytes: 3
  %loadMem_465883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465883 = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465883)
  store %struct.Memory* %call_465883, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x2d5(%rbp)	 RIP: 465886	 Bytes: 6
  %loadMem_465886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465886 = call %struct.Memory* @routine_movb__al__MINUS0x2d5__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465886)
  store %struct.Memory* %call_465886, %struct.Memory** %MEMORY

  ; Code: .L_46588c:	 RIP: 46588c	 Bytes: 0
  br label %block_.L_46588c
block_.L_46588c:

  ; Code: movb -0x2d5(%rbp), %al	 RIP: 46588c	 Bytes: 6
  %loadMem_46588c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46588c = call %struct.Memory* @routine_movb_MINUS0x2d5__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46588c)
  store %struct.Memory* %call_46588c, %struct.Memory** %MEMORY

  ; Code: movq $0x57fcc3, %rdx	 RIP: 465892	 Bytes: 10
  %loadMem_465892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465892 = call %struct.Memory* @routine_movq__0x57fcc3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465892)
  store %struct.Memory* %call_465892, %struct.Memory** %MEMORY

  ; Code: leaq -0x210(%rbp), %rcx	 RIP: 46589c	 Bytes: 7
  %loadMem_46589c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46589c = call %struct.Memory* @routine_leaq_MINUS0x210__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46589c)
  store %struct.Memory* %call_46589c, %struct.Memory** %MEMORY

  ; Code: leaq -0x214(%rbp), %rsi	 RIP: 4658a3	 Bytes: 7
  %loadMem_4658a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658a3 = call %struct.Memory* @routine_leaq_MINUS0x214__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658a3)
  store %struct.Memory* %call_4658a3, %struct.Memory** %MEMORY

  ; Code: leaq -0x218(%rbp), %rdi	 RIP: 4658aa	 Bytes: 7
  %loadMem_4658aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658aa = call %struct.Memory* @routine_leaq_MINUS0x218__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658aa)
  store %struct.Memory* %call_4658aa, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 4658b1	 Bytes: 2
  %loadMem_4658b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658b1 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658b1)
  store %struct.Memory* %call_4658b1, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %r8d	 RIP: 4658b3	 Bytes: 4
  %loadMem_4658b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658b3 = call %struct.Memory* @routine_movzbl__al___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658b3)
  store %struct.Memory* %call_4658b3, %struct.Memory** %MEMORY

  ; Code: movl -0x2c8(%rbp), %r9d	 RIP: 4658b7	 Bytes: 7
  %loadMem_4658b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658b7 = call %struct.Memory* @routine_movl_MINUS0x2c8__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658b7)
  store %struct.Memory* %call_4658b7, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x2e0(%rbp)	 RIP: 4658be	 Bytes: 7
  %loadMem_4658be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658be = call %struct.Memory* @routine_movq__rdi__MINUS0x2e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658be)
  store %struct.Memory* %call_4658be, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edi	 RIP: 4658c5	 Bytes: 3
  %loadMem_4658c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658c5 = call %struct.Memory* @routine_movl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658c5)
  store %struct.Memory* %call_4658c5, %struct.Memory** %MEMORY

  ; Code: movl -0x2cc(%rbp), %r10d	 RIP: 4658c8	 Bytes: 7
  %loadMem_4658c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658c8 = call %struct.Memory* @routine_movl_MINUS0x2cc__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658c8)
  store %struct.Memory* %call_4658c8, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x2e8(%rbp)	 RIP: 4658cf	 Bytes: 7
  %loadMem_4658cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658cf = call %struct.Memory* @routine_movq__rsi__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658cf)
  store %struct.Memory* %call_4658cf, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %esi	 RIP: 4658d6	 Bytes: 3
  %loadMem_4658d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658d6 = call %struct.Memory* @routine_movl__r10d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658d6)
  store %struct.Memory* %call_4658d6, %struct.Memory** %MEMORY

  ; Code: movl -0x2d0(%rbp), %r11d	 RIP: 4658d9	 Bytes: 7
  %loadMem_4658d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658d9 = call %struct.Memory* @routine_movl_MINUS0x2d0__rbp____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658d9)
  store %struct.Memory* %call_4658d9, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x2f0(%rbp)	 RIP: 4658e0	 Bytes: 7
  %loadMem_4658e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658e0 = call %struct.Memory* @routine_movq__rcx__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658e0)
  store %struct.Memory* %call_4658e0, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %ecx	 RIP: 4658e7	 Bytes: 3
  %loadMem_4658e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658e7 = call %struct.Memory* @routine_movl__r11d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658e7)
  store %struct.Memory* %call_4658e7, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %ebx	 RIP: 4658ea	 Bytes: 6
  %loadMem_4658ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658ea = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658ea)
  store %struct.Memory* %call_4658ea, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x2f4(%rbp)	 RIP: 4658f0	 Bytes: 7
  %loadMem_4658f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658f0 = call %struct.Memory* @routine_movl__r8d__MINUS0x2f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658f0)
  store %struct.Memory* %call_4658f0, %struct.Memory** %MEMORY

  ; Code: movl %ebx, %r8d	 RIP: 4658f7	 Bytes: 3
  %loadMem_4658f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658f7 = call %struct.Memory* @routine_movl__ebx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658f7)
  store %struct.Memory* %call_4658f7, %struct.Memory** %MEMORY

  ; Code: movl -0x2c4(%rbp), %r9d	 RIP: 4658fa	 Bytes: 7
  %loadMem_4658fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4658fa = call %struct.Memory* @routine_movl_MINUS0x2c4__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4658fa)
  store %struct.Memory* %call_4658fa, %struct.Memory** %MEMORY

  ; Code: movq -0x2f0(%rbp), %r14	 RIP: 465901	 Bytes: 7
  %loadMem_465901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465901 = call %struct.Memory* @routine_movq_MINUS0x2f0__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465901)
  store %struct.Memory* %call_465901, %struct.Memory** %MEMORY

  ; Code: movq %r14, (%rsp)	 RIP: 465908	 Bytes: 4
  %loadMem_465908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465908 = call %struct.Memory* @routine_movq__r14____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465908)
  store %struct.Memory* %call_465908, %struct.Memory** %MEMORY

  ; Code: movq -0x2e8(%rbp), %r15	 RIP: 46590c	 Bytes: 7
  %loadMem_46590c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46590c = call %struct.Memory* @routine_movq_MINUS0x2e8__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46590c)
  store %struct.Memory* %call_46590c, %struct.Memory** %MEMORY

  ; Code: movq %r15, 0x8(%rsp)	 RIP: 465913	 Bytes: 5
  %loadMem_465913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465913 = call %struct.Memory* @routine_movq__r15__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465913)
  store %struct.Memory* %call_465913, %struct.Memory** %MEMORY

  ; Code: movq -0x2e0(%rbp), %r12	 RIP: 465918	 Bytes: 7
  %loadMem_465918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465918 = call %struct.Memory* @routine_movq_MINUS0x2e0__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465918)
  store %struct.Memory* %call_465918, %struct.Memory** %MEMORY

  ; Code: movq %r12, 0x10(%rsp)	 RIP: 46591f	 Bytes: 5
  %loadMem_46591f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46591f = call %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46591f)
  store %struct.Memory* %call_46591f, %struct.Memory** %MEMORY

  ; Code: movl -0x2f4(%rbp), %r13d	 RIP: 465924	 Bytes: 7
  %loadMem_465924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465924 = call %struct.Memory* @routine_movl_MINUS0x2f4__rbp____r13d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465924)
  store %struct.Memory* %call_465924, %struct.Memory** %MEMORY

  ; Code: movl %r13d, 0x18(%rsp)	 RIP: 46592b	 Bytes: 5
  %loadMem_46592b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46592b = call %struct.Memory* @routine_movl__r13d__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46592b)
  store %struct.Memory* %call_46592b, %struct.Memory** %MEMORY

  ; Code: callq .komaster_trymove	 RIP: 465930	 Bytes: 5
  %loadMem1_465930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465930 = call %struct.Memory* @routine_callq_.komaster_trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465930, i64 -355136, i64 5, i64 5)
  store %struct.Memory* %call1_465930, %struct.Memory** %MEMORY

  %loadMem2_465930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465930 = load i64, i64* %3
  %call2_465930 = call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* %0, i64  %loadPC_465930, %struct.Memory* %loadMem2_465930)
  store %struct.Memory* %call2_465930, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 465935	 Bytes: 3
  %loadMem_465935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465935 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465935)
  store %struct.Memory* %call_465935, %struct.Memory** %MEMORY

  ; Code: je .L_465a4c	 RIP: 465938	 Bytes: 6
  %loadMem_465938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465938 = call %struct.Memory* @routine_je_.L_465a4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465938, i8* %BRANCH_TAKEN, i64 276, i64 6, i64 6)
  store %struct.Memory* %call_465938, %struct.Memory** %MEMORY

  %loadBr_465938 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465938 = icmp eq i8 %loadBr_465938, 1
  br i1 %cmpBr_465938, label %block_.L_465a4c, label %block_46593e

block_46593e:
  ; Code: cmpl $0x0, -0x218(%rbp)	 RIP: 46593e	 Bytes: 7
  %loadMem_46593e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46593e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x218__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46593e)
  store %struct.Memory* %call_46593e, %struct.Memory** %MEMORY

  ; Code: jne .L_465a0e	 RIP: 465945	 Bytes: 6
  %loadMem_465945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465945 = call %struct.Memory* @routine_jne_.L_465a0e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465945, i8* %BRANCH_TAKEN, i64 201, i64 6, i64 6)
  store %struct.Memory* %call_465945, %struct.Memory** %MEMORY

  %loadBr_465945 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465945 = icmp eq i8 %loadBr_465945, 1
  br i1 %cmpBr_465945, label %block_.L_465a0e, label %block_46594b

block_46594b:
  ; Code: xorl %eax, %eax	 RIP: 46594b	 Bytes: 2
  %loadMem_46594b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46594b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46594b)
  store %struct.Memory* %call_46594b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46594d	 Bytes: 2
  %loadMem_46594d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46594d = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46594d)
  store %struct.Memory* %call_46594d, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 46594f	 Bytes: 3
  %loadMem_46594f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46594f = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46594f)
  store %struct.Memory* %call_46594f, %struct.Memory** %MEMORY

  ; Code: movl -0x210(%rbp), %edx	 RIP: 465952	 Bytes: 6
  %loadMem_465952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465952 = call %struct.Memory* @routine_movl_MINUS0x210__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465952)
  store %struct.Memory* %call_465952, %struct.Memory** %MEMORY

  ; Code: movl -0x214(%rbp), %ecx	 RIP: 465958	 Bytes: 6
  %loadMem_465958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465958 = call %struct.Memory* @routine_movl_MINUS0x214__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465958)
  store %struct.Memory* %call_465958, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 46595e	 Bytes: 5
  %loadMem1_46595e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46595e = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46595e, i64 -31870, i64 5, i64 5)
  store %struct.Memory* %call1_46595e, %struct.Memory** %MEMORY

  %loadMem2_46595e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46595e = load i64, i64* %3
  %call2_46595e = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_46595e, %struct.Memory* %loadMem2_46595e)
  store %struct.Memory* %call2_46595e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x21c(%rbp)	 RIP: 465963	 Bytes: 6
  %loadMem_465963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465963 = call %struct.Memory* @routine_movl__eax__MINUS0x21c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465963)
  store %struct.Memory* %call_465963, %struct.Memory** %MEMORY

  ; Code: callq .popgo	 RIP: 465969	 Bytes: 5
  %loadMem1_465969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465969 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465969, i64 -359433, i64 5, i64 5)
  store %struct.Memory* %call1_465969, %struct.Memory** %MEMORY

  %loadMem2_465969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465969 = load i64, i64* %3
  %call2_465969 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_465969, %struct.Memory* %loadMem2_465969)
  store %struct.Memory* %call2_465969, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x21c(%rbp)	 RIP: 46596e	 Bytes: 7
  %loadMem_46596e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46596e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x21c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46596e)
  store %struct.Memory* %call_46596e, %struct.Memory** %MEMORY

  ; Code: jne .L_4659ce	 RIP: 465975	 Bytes: 6
  %loadMem_465975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465975 = call %struct.Memory* @routine_jne_.L_4659ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465975, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_465975, %struct.Memory** %MEMORY

  %loadBr_465975 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465975 = icmp eq i8 %loadBr_465975, 1
  br i1 %cmpBr_465975, label %block_.L_4659ce, label %block_46597b

block_46597b:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 46597b	 Bytes: 5
  %loadMem_46597b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46597b = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46597b)
  store %struct.Memory* %call_46597b, %struct.Memory** %MEMORY

  ; Code: je .L_46598f	 RIP: 465980	 Bytes: 6
  %loadMem_465980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465980 = call %struct.Memory* @routine_je_.L_46598f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465980, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_465980, %struct.Memory** %MEMORY

  %loadBr_465980 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465980 = icmp eq i8 %loadBr_465980, 1
  br i1 %cmpBr_465980, label %block_.L_46598f, label %block_465986

block_465986:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 465986	 Bytes: 3
  %loadMem_465986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465986 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465986)
  store %struct.Memory* %call_465986, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 465989	 Bytes: 4
  %loadMem_465989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465989 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465989)
  store %struct.Memory* %call_465989, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 46598d	 Bytes: 2
  %loadMem_46598d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46598d = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46598d)
  store %struct.Memory* %call_46598d, %struct.Memory** %MEMORY

  ; Code: .L_46598f:	 RIP: 46598f	 Bytes: 0
  br label %block_.L_46598f
block_.L_46598f:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 46598f	 Bytes: 9
  %loadMem_46598f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46598f = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46598f)
  store %struct.Memory* %call_46598f, %struct.Memory** %MEMORY

  ; Code: je .L_4659c2	 RIP: 465998	 Bytes: 6
  %loadMem_465998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465998 = call %struct.Memory* @routine_je_.L_4659c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465998, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_465998, %struct.Memory** %MEMORY

  %loadBr_465998 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465998 = icmp eq i8 %loadBr_465998, 1
  br i1 %cmpBr_465998, label %block_.L_4659c2, label %block_46599e

block_46599e:
  ; Code: movl $0x5, %ecx	 RIP: 46599e	 Bytes: 5
  %loadMem_46599e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46599e = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46599e)
  store %struct.Memory* %call_46599e, %struct.Memory** %MEMORY

  ; Code: movq $0x57fc87, %r8	 RIP: 4659a3	 Bytes: 10
  %loadMem_4659a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659a3 = call %struct.Memory* @routine_movq__0x57fc87___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659a3)
  store %struct.Memory* %call_4659a3, %struct.Memory** %MEMORY

  ; Code: movq -0x208(%rbp), %rdi	 RIP: 4659ad	 Bytes: 7
  %loadMem_4659ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659ad = call %struct.Memory* @routine_movq_MINUS0x208__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659ad)
  store %struct.Memory* %call_4659ad, %struct.Memory** %MEMORY

  ; Code: movl -0x20c(%rbp), %esi	 RIP: 4659b4	 Bytes: 6
  %loadMem_4659b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659b4 = call %struct.Memory* @routine_movl_MINUS0x20c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659b4)
  store %struct.Memory* %call_4659b4, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 4659ba	 Bytes: 3
  %loadMem_4659ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659ba = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659ba)
  store %struct.Memory* %call_4659ba, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 4659bd	 Bytes: 5
  %loadMem1_4659bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4659bd = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4659bd, i64 -317949, i64 5, i64 5)
  store %struct.Memory* %call1_4659bd, %struct.Memory** %MEMORY

  %loadMem2_4659bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4659bd = load i64, i64* %3
  %call2_4659bd = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_4659bd, %struct.Memory* %loadMem2_4659bd)
  store %struct.Memory* %call2_4659bd, %struct.Memory** %MEMORY

  ; Code: .L_4659c2:	 RIP: 4659c2	 Bytes: 0
  br label %block_.L_4659c2
block_.L_4659c2:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 4659c2	 Bytes: 7
  %loadMem_4659c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659c2 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659c2)
  store %struct.Memory* %call_4659c2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46639f	 RIP: 4659c9	 Bytes: 5
  %loadMem_4659c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659c9 = call %struct.Memory* @routine_jmpq_.L_46639f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659c9, i64 2518, i64 5)
  store %struct.Memory* %call_4659c9, %struct.Memory** %MEMORY

  br label %block_.L_46639f

  ; Code: .L_4659ce:	 RIP: 4659ce	 Bytes: 0
block_.L_4659ce:

  ; Code: movl $0x5, %eax	 RIP: 4659ce	 Bytes: 5
  %loadMem_4659ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659ce = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659ce)
  store %struct.Memory* %call_4659ce, %struct.Memory** %MEMORY

  ; Code: subl -0x21c(%rbp), %eax	 RIP: 4659d3	 Bytes: 6
  %loadMem_4659d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659d3 = call %struct.Memory* @routine_subl_MINUS0x21c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659d3)
  store %struct.Memory* %call_4659d3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1fc(%rbp), %eax	 RIP: 4659d9	 Bytes: 6
  %loadMem_4659d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659d9 = call %struct.Memory* @routine_cmpl_MINUS0x1fc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659d9)
  store %struct.Memory* %call_4659d9, %struct.Memory** %MEMORY

  ; Code: jle .L_4659ff	 RIP: 4659df	 Bytes: 6
  %loadMem_4659df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659df = call %struct.Memory* @routine_jle_.L_4659ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659df, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_4659df, %struct.Memory** %MEMORY

  %loadBr_4659df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4659df = icmp eq i8 %loadBr_4659df, 1
  br i1 %cmpBr_4659df, label %block_.L_4659ff, label %block_4659e5

block_4659e5:
  ; Code: movl $0x5, %eax	 RIP: 4659e5	 Bytes: 5
  %loadMem_4659e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659e5 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659e5)
  store %struct.Memory* %call_4659e5, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 4659ea	 Bytes: 3
  %loadMem_4659ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659ea = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659ea)
  store %struct.Memory* %call_4659ea, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1f8(%rbp)	 RIP: 4659ed	 Bytes: 6
  %loadMem_4659ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659ed = call %struct.Memory* @routine_movl__ecx__MINUS0x1f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659ed)
  store %struct.Memory* %call_4659ed, %struct.Memory** %MEMORY

  ; Code: subl -0x21c(%rbp), %eax	 RIP: 4659f3	 Bytes: 6
  %loadMem_4659f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659f3 = call %struct.Memory* @routine_subl_MINUS0x21c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659f3)
  store %struct.Memory* %call_4659f3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1fc(%rbp)	 RIP: 4659f9	 Bytes: 6
  %loadMem_4659f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659f9 = call %struct.Memory* @routine_movl__eax__MINUS0x1fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659f9)
  store %struct.Memory* %call_4659f9, %struct.Memory** %MEMORY

  ; Code: .L_4659ff:	 RIP: 4659ff	 Bytes: 0
  br label %block_.L_4659ff
block_.L_4659ff:

  ; Code: jmpq .L_465a04	 RIP: 4659ff	 Bytes: 5
  %loadMem_4659ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4659ff = call %struct.Memory* @routine_jmpq_.L_465a04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4659ff, i64 5, i64 5)
  store %struct.Memory* %call_4659ff, %struct.Memory** %MEMORY

  br label %block_.L_465a04

  ; Code: .L_465a04:	 RIP: 465a04	 Bytes: 0
block_.L_465a04:

  ; Code: jmpq .L_465a09	 RIP: 465a04	 Bytes: 5
  %loadMem_465a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a04 = call %struct.Memory* @routine_jmpq_.L_465a09(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a04, i64 5, i64 5)
  store %struct.Memory* %call_465a04, %struct.Memory** %MEMORY

  br label %block_.L_465a09

  ; Code: .L_465a09:	 RIP: 465a09	 Bytes: 0
block_.L_465a09:

  ; Code: jmpq .L_465a47	 RIP: 465a09	 Bytes: 5
  %loadMem_465a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a09 = call %struct.Memory* @routine_jmpq_.L_465a47(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a09, i64 62, i64 5)
  store %struct.Memory* %call_465a09, %struct.Memory** %MEMORY

  br label %block_.L_465a47

  ; Code: .L_465a0e:	 RIP: 465a0e	 Bytes: 0
block_.L_465a0e:

  ; Code: xorl %eax, %eax	 RIP: 465a0e	 Bytes: 2
  %loadMem_465a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a0e = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a0e)
  store %struct.Memory* %call_465a0e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 465a10	 Bytes: 2
  %loadMem_465a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a10 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a10)
  store %struct.Memory* %call_465a10, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465a12	 Bytes: 3
  %loadMem_465a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a12 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a12)
  store %struct.Memory* %call_465a12, %struct.Memory** %MEMORY

  ; Code: movl -0x210(%rbp), %edx	 RIP: 465a15	 Bytes: 6
  %loadMem_465a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a15 = call %struct.Memory* @routine_movl_MINUS0x210__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a15)
  store %struct.Memory* %call_465a15, %struct.Memory** %MEMORY

  ; Code: movl -0x214(%rbp), %ecx	 RIP: 465a1b	 Bytes: 6
  %loadMem_465a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a1b = call %struct.Memory* @routine_movl_MINUS0x214__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a1b)
  store %struct.Memory* %call_465a1b, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 465a21	 Bytes: 5
  %loadMem1_465a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465a21 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465a21, i64 -32065, i64 5, i64 5)
  store %struct.Memory* %call1_465a21, %struct.Memory** %MEMORY

  %loadMem2_465a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465a21 = load i64, i64* %3
  %call2_465a21 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_465a21, %struct.Memory* %loadMem2_465a21)
  store %struct.Memory* %call2_465a21, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 465a26	 Bytes: 3
  %loadMem_465a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a26 = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a26)
  store %struct.Memory* %call_465a26, %struct.Memory** %MEMORY

  ; Code: je .L_465a42	 RIP: 465a29	 Bytes: 6
  %loadMem_465a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a29 = call %struct.Memory* @routine_je_.L_465a42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a29, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_465a29, %struct.Memory** %MEMORY

  %loadBr_465a29 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465a29 = icmp eq i8 %loadBr_465a29, 1
  br i1 %cmpBr_465a29, label %block_.L_465a42, label %block_465a2f

block_465a2f:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 465a2f	 Bytes: 3
  %loadMem_465a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a2f = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a2f)
  store %struct.Memory* %call_465a2f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1f8(%rbp)	 RIP: 465a32	 Bytes: 6
  %loadMem_465a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a32 = call %struct.Memory* @routine_movl__eax__MINUS0x1f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a32)
  store %struct.Memory* %call_465a32, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x1fc(%rbp)	 RIP: 465a38	 Bytes: 10
  %loadMem_465a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a38 = call %struct.Memory* @routine_movl__0x1__MINUS0x1fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a38)
  store %struct.Memory* %call_465a38, %struct.Memory** %MEMORY

  ; Code: .L_465a42:	 RIP: 465a42	 Bytes: 0
  br label %block_.L_465a42
block_.L_465a42:

  ; Code: callq .popgo	 RIP: 465a42	 Bytes: 5
  %loadMem1_465a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465a42 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465a42, i64 -359650, i64 5, i64 5)
  store %struct.Memory* %call1_465a42, %struct.Memory** %MEMORY

  %loadMem2_465a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465a42 = load i64, i64* %3
  %call2_465a42 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_465a42, %struct.Memory* %loadMem2_465a42)
  store %struct.Memory* %call2_465a42, %struct.Memory** %MEMORY

  ; Code: .L_465a47:	 RIP: 465a47	 Bytes: 0
  br label %block_.L_465a47
block_.L_465a47:

  ; Code: jmpq .L_465a4c	 RIP: 465a47	 Bytes: 5
  %loadMem_465a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a47 = call %struct.Memory* @routine_jmpq_.L_465a4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a47, i64 5, i64 5)
  store %struct.Memory* %call_465a47, %struct.Memory** %MEMORY

  br label %block_.L_465a4c

  ; Code: .L_465a4c:	 RIP: 465a4c	 Bytes: 0
block_.L_465a4c:

  ; Code: jmpq .L_465a51	 RIP: 465a4c	 Bytes: 5
  %loadMem_465a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a4c = call %struct.Memory* @routine_jmpq_.L_465a51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a4c, i64 5, i64 5)
  store %struct.Memory* %call_465a4c, %struct.Memory** %MEMORY

  br label %block_.L_465a51

  ; Code: .L_465a51:	 RIP: 465a51	 Bytes: 0
block_.L_465a51:

  ; Code: movl -0x200(%rbp), %eax	 RIP: 465a51	 Bytes: 6
  %loadMem_465a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a51 = call %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a51)
  store %struct.Memory* %call_465a51, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 465a57	 Bytes: 3
  %loadMem_465a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a57 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a57)
  store %struct.Memory* %call_465a57, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x200(%rbp)	 RIP: 465a5a	 Bytes: 6
  %loadMem_465a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a5a = call %struct.Memory* @routine_movl__eax__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a5a)
  store %struct.Memory* %call_465a5a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4657e5	 RIP: 465a60	 Bytes: 5
  %loadMem_465a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a60 = call %struct.Memory* @routine_jmpq_.L_4657e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a60, i64 -635, i64 5)
  store %struct.Memory* %call_465a60, %struct.Memory** %MEMORY

  br label %block_.L_4657e5

  ; Code: .L_465a65:	 RIP: 465a65	 Bytes: 0
block_.L_465a65:

  ; Code: movl -0x60(%rbp), %eax	 RIP: 465a65	 Bytes: 3
  %loadMem_465a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a65 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a65)
  store %struct.Memory* %call_465a65, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1f4(%rbp)	 RIP: 465a68	 Bytes: 6
  %loadMem_465a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a68 = call %struct.Memory* @routine_movl__eax__MINUS0x1f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a68)
  store %struct.Memory* %call_465a68, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %eax	 RIP: 465a6e	 Bytes: 7
  %loadMem_465a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a6e = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a6e)
  store %struct.Memory* %call_465a6e, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb060b8, %eax	 RIP: 465a75	 Bytes: 7
  %loadMem_465a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a75 = call %struct.Memory* @routine_cmpl_0xb060b8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a75)
  store %struct.Memory* %call_465a75, %struct.Memory** %MEMORY

  ; Code: jg .L_465a95	 RIP: 465a7c	 Bytes: 6
  %loadMem_465a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a7c = call %struct.Memory* @routine_jg_.L_465a95(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a7c, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_465a7c, %struct.Memory** %MEMORY

  %loadBr_465a7c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465a7c = icmp eq i8 %loadBr_465a7c, 1
  br i1 %cmpBr_465a7c, label %block_.L_465a95, label %block_465a82

block_465a82:
  ; Code: leaq -0x1f0(%rbp), %rdx	 RIP: 465a82	 Bytes: 7
  %loadMem_465a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a82 = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a82)
  store %struct.Memory* %call_465a82, %struct.Memory** %MEMORY

  ; Code: leaq -0x5c(%rbp), %rsi	 RIP: 465a89	 Bytes: 4
  %loadMem_465a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a89 = call %struct.Memory* @routine_leaq_MINUS0x5c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a89)
  store %struct.Memory* %call_465a89, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465a8d	 Bytes: 3
  %loadMem_465a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a8d = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a8d)
  store %struct.Memory* %call_465a8d, %struct.Memory** %MEMORY

  ; Code: callq .special_rescue3_moves	 RIP: 465a90	 Bytes: 5
  %loadMem1_465a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465a90 = call %struct.Memory* @routine_callq_.special_rescue3_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465a90, i64 8960, i64 5, i64 5)
  store %struct.Memory* %call1_465a90, %struct.Memory** %MEMORY

  %loadMem2_465a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465a90 = load i64, i64* %3
  %call2_465a90 = call %struct.Memory* @sub_467d90.special_rescue3_moves(%struct.State* %0, i64  %loadPC_465a90, %struct.Memory* %loadMem2_465a90)
  store %struct.Memory* %call2_465a90, %struct.Memory** %MEMORY

  ; Code: .L_465a95:	 RIP: 465a95	 Bytes: 0
  br label %block_.L_465a95
block_.L_465a95:

  ; Code: movl 0xb54ce4, %eax	 RIP: 465a95	 Bytes: 7
  %loadMem_465a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a95 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a95)
  store %struct.Memory* %call_465a95, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b854, %eax	 RIP: 465a9c	 Bytes: 7
  %loadMem_465a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465a9c = call %struct.Memory* @routine_cmpl_0xb8b854___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465a9c)
  store %struct.Memory* %call_465a9c, %struct.Memory** %MEMORY

  ; Code: jg .L_465af5	 RIP: 465aa3	 Bytes: 6
  %loadMem_465aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465aa3 = call %struct.Memory* @routine_jg_.L_465af5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465aa3, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_465aa3, %struct.Memory** %MEMORY

  %loadBr_465aa3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465aa3 = icmp eq i8 %loadBr_465aa3, 1
  br i1 %cmpBr_465aa3, label %block_.L_465af5, label %block_465aa9

block_465aa9:
  ; Code: movl $0x0, -0x200(%rbp)	 RIP: 465aa9	 Bytes: 10
  %loadMem_465aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465aa9 = call %struct.Memory* @routine_movl__0x0__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465aa9)
  store %struct.Memory* %call_465aa9, %struct.Memory** %MEMORY

  ; Code: .L_465ab3:	 RIP: 465ab3	 Bytes: 0
  br label %block_.L_465ab3
block_.L_465ab3:

  ; Code: movl -0x200(%rbp), %eax	 RIP: 465ab3	 Bytes: 6
  %loadMem_465ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ab3 = call %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ab3)
  store %struct.Memory* %call_465ab3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x50(%rbp), %eax	 RIP: 465ab9	 Bytes: 3
  %loadMem_465ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ab9 = call %struct.Memory* @routine_cmpl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ab9)
  store %struct.Memory* %call_465ab9, %struct.Memory** %MEMORY

  ; Code: jge .L_465af0	 RIP: 465abc	 Bytes: 6
  %loadMem_465abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465abc = call %struct.Memory* @routine_jge_.L_465af0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465abc, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_465abc, %struct.Memory** %MEMORY

  %loadBr_465abc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465abc = icmp eq i8 %loadBr_465abc, 1
  br i1 %cmpBr_465abc, label %block_.L_465af0, label %block_465ac2

block_465ac2:
  ; Code: leaq -0x1f0(%rbp), %rdx	 RIP: 465ac2	 Bytes: 7
  %loadMem_465ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ac2 = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ac2)
  store %struct.Memory* %call_465ac2, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465ac9	 Bytes: 3
  %loadMem_465ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ac9 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ac9)
  store %struct.Memory* %call_465ac9, %struct.Memory** %MEMORY

  ; Code: movslq -0x200(%rbp), %rax	 RIP: 465acc	 Bytes: 7
  %loadMem_465acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465acc = call %struct.Memory* @routine_movslq_MINUS0x200__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465acc)
  store %struct.Memory* %call_465acc, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp,%rax,4), %esi	 RIP: 465ad3	 Bytes: 4
  %loadMem_465ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ad3 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp__rax_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ad3)
  store %struct.Memory* %call_465ad3, %struct.Memory** %MEMORY

  ; Code: callq .special_rescue_moves	 RIP: 465ad7	 Bytes: 5
  %loadMem1_465ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465ad7 = call %struct.Memory* @routine_callq_.special_rescue_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465ad7, i64 9721, i64 5, i64 5)
  store %struct.Memory* %call1_465ad7, %struct.Memory** %MEMORY

  %loadMem2_465ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465ad7 = load i64, i64* %3
  %call2_465ad7 = call %struct.Memory* @sub_4680d0.special_rescue_moves(%struct.State* %0, i64  %loadPC_465ad7, %struct.Memory* %loadMem2_465ad7)
  store %struct.Memory* %call2_465ad7, %struct.Memory** %MEMORY

  ; Code: movl -0x200(%rbp), %eax	 RIP: 465adc	 Bytes: 6
  %loadMem_465adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465adc = call %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465adc)
  store %struct.Memory* %call_465adc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 465ae2	 Bytes: 3
  %loadMem_465ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ae2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ae2)
  store %struct.Memory* %call_465ae2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x200(%rbp)	 RIP: 465ae5	 Bytes: 6
  %loadMem_465ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ae5 = call %struct.Memory* @routine_movl__eax__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ae5)
  store %struct.Memory* %call_465ae5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_465ab3	 RIP: 465aeb	 Bytes: 5
  %loadMem_465aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465aeb = call %struct.Memory* @routine_jmpq_.L_465ab3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465aeb, i64 -56, i64 5)
  store %struct.Memory* %call_465aeb, %struct.Memory** %MEMORY

  br label %block_.L_465ab3

  ; Code: .L_465af0:	 RIP: 465af0	 Bytes: 0
block_.L_465af0:

  ; Code: jmpq .L_465af5	 RIP: 465af0	 Bytes: 5
  %loadMem_465af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465af0 = call %struct.Memory* @routine_jmpq_.L_465af5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465af0, i64 5, i64 5)
  store %struct.Memory* %call_465af0, %struct.Memory** %MEMORY

  br label %block_.L_465af5

  ; Code: .L_465af5:	 RIP: 465af5	 Bytes: 0
block_.L_465af5:

  ; Code: cmpl $0xa, 0x7ae448	 RIP: 465af5	 Bytes: 8
  %loadMem_465af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465af5 = call %struct.Memory* @routine_cmpl__0xa__0x7ae448(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465af5)
  store %struct.Memory* %call_465af5, %struct.Memory** %MEMORY

  ; Code: jl .L_465b2b	 RIP: 465afd	 Bytes: 6
  %loadMem_465afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465afd = call %struct.Memory* @routine_jl_.L_465b2b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465afd, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_465afd, %struct.Memory** %MEMORY

  %loadBr_465afd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465afd = icmp eq i8 %loadBr_465afd, 1
  br i1 %cmpBr_465afd, label %block_.L_465b2b, label %block_465b03

block_465b03:
  ; Code: movl 0xb54ce4, %eax	 RIP: 465b03	 Bytes: 7
  %loadMem_465b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b03 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b03)
  store %struct.Memory* %call_465b03, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8af28, %eax	 RIP: 465b0a	 Bytes: 7
  %loadMem_465b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b0a = call %struct.Memory* @routine_cmpl_0xb8af28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b0a)
  store %struct.Memory* %call_465b0a, %struct.Memory** %MEMORY

  ; Code: jg .L_465b2b	 RIP: 465b11	 Bytes: 6
  %loadMem_465b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b11 = call %struct.Memory* @routine_jg_.L_465b2b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b11, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_465b11, %struct.Memory** %MEMORY

  %loadBr_465b11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465b11 = icmp eq i8 %loadBr_465b11, 1
  br i1 %cmpBr_465b11, label %block_.L_465b2b, label %block_465b17

block_465b17:
  ; Code: movl $0x4, %esi	 RIP: 465b17	 Bytes: 5
  %loadMem_465b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b17 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b17)
  store %struct.Memory* %call_465b17, %struct.Memory** %MEMORY

  ; Code: leaq -0x1f0(%rbp), %rdx	 RIP: 465b1c	 Bytes: 7
  %loadMem_465b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b1c = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b1c)
  store %struct.Memory* %call_465b1c, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465b23	 Bytes: 3
  %loadMem_465b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b23 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b23)
  store %struct.Memory* %call_465b23, %struct.Memory** %MEMORY

  ; Code: callq .superstring_breakchain_moves	 RIP: 465b26	 Bytes: 5
  %loadMem1_465b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465b26 = call %struct.Memory* @routine_callq_.superstring_breakchain_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465b26, i64 10058, i64 5, i64 5)
  store %struct.Memory* %call1_465b26, %struct.Memory** %MEMORY

  %loadMem2_465b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465b26 = load i64, i64* %3
  %call2_465b26 = call %struct.Memory* @sub_468270.superstring_breakchain_moves(%struct.State* %0, i64  %loadPC_465b26, %struct.Memory* %loadMem2_465b26)
  store %struct.Memory* %call2_465b26, %struct.Memory** %MEMORY

  ; Code: .L_465b2b:	 RIP: 465b2b	 Bytes: 0
  br label %block_.L_465b2b
block_.L_465b2b:

  ; Code: movl 0xb54ce4, %eax	 RIP: 465b2b	 Bytes: 7
  %loadMem_465b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b2b = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b2b)
  store %struct.Memory* %call_465b2b, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8af28, %eax	 RIP: 465b32	 Bytes: 7
  %loadMem_465b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b32 = call %struct.Memory* @routine_cmpl_0xb8af28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b32)
  store %struct.Memory* %call_465b32, %struct.Memory** %MEMORY

  ; Code: jg .L_465b4e	 RIP: 465b39	 Bytes: 6
  %loadMem_465b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b39 = call %struct.Memory* @routine_jg_.L_465b4e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b39, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_465b39, %struct.Memory** %MEMORY

  %loadBr_465b39 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465b39 = icmp eq i8 %loadBr_465b39, 1
  br i1 %cmpBr_465b39, label %block_.L_465b4e, label %block_465b3f

block_465b3f:
  ; Code: leaq -0x1f0(%rbp), %rsi	 RIP: 465b3f	 Bytes: 7
  %loadMem_465b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b3f = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b3f)
  store %struct.Memory* %call_465b3f, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465b46	 Bytes: 3
  %loadMem_465b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b46 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b46)
  store %struct.Memory* %call_465b46, %struct.Memory** %MEMORY

  ; Code: callq .break_chain2_defense_moves	 RIP: 465b49	 Bytes: 5
  %loadMem1_465b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465b49 = call %struct.Memory* @routine_callq_.break_chain2_defense_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465b49, i64 3799, i64 5, i64 5)
  store %struct.Memory* %call1_465b49, %struct.Memory** %MEMORY

  %loadMem2_465b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465b49 = load i64, i64* %3
  %call2_465b49 = call %struct.Memory* @sub_466a20.break_chain2_defense_moves(%struct.State* %0, i64  %loadPC_465b49, %struct.Memory* %loadMem2_465b49)
  store %struct.Memory* %call2_465b49, %struct.Memory** %MEMORY

  ; Code: .L_465b4e:	 RIP: 465b4e	 Bytes: 0
  br label %block_.L_465b4e
block_.L_465b4e:

  ; Code: movl 0xb54ce4, %eax	 RIP: 465b4e	 Bytes: 7
  %loadMem_465b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b4e = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b4e)
  store %struct.Memory* %call_465b4e, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb060b8, %eax	 RIP: 465b55	 Bytes: 7
  %loadMem_465b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b55 = call %struct.Memory* @routine_cmpl_0xb060b8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b55)
  store %struct.Memory* %call_465b55, %struct.Memory** %MEMORY

  ; Code: jg .L_465b88	 RIP: 465b5c	 Bytes: 6
  %loadMem_465b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b5c = call %struct.Memory* @routine_jg_.L_465b88(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b5c, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_465b5c, %struct.Memory** %MEMORY

  %loadBr_465b5c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465b5c = icmp eq i8 %loadBr_465b5c, 1
  br i1 %cmpBr_465b5c, label %block_.L_465b88, label %block_465b62

block_465b62:
  ; Code: leaq -0x1f0(%rbp), %rdx	 RIP: 465b62	 Bytes: 7
  %loadMem_465b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b62 = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b62)
  store %struct.Memory* %call_465b62, %struct.Memory** %MEMORY

  ; Code: leaq -0x5c(%rbp), %rsi	 RIP: 465b69	 Bytes: 4
  %loadMem_465b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b69 = call %struct.Memory* @routine_leaq_MINUS0x5c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b69)
  store %struct.Memory* %call_465b69, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465b6d	 Bytes: 3
  %loadMem_465b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b6d = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b6d)
  store %struct.Memory* %call_465b6d, %struct.Memory** %MEMORY

  ; Code: callq .special_rescue5_moves	 RIP: 465b70	 Bytes: 5
  %loadMem1_465b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465b70 = call %struct.Memory* @routine_callq_.special_rescue5_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465b70, i64 10464, i64 5, i64 5)
  store %struct.Memory* %call1_465b70, %struct.Memory** %MEMORY

  %loadMem2_465b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465b70 = load i64, i64* %3
  %call2_465b70 = call %struct.Memory* @sub_468450.special_rescue5_moves(%struct.State* %0, i64  %loadPC_465b70, %struct.Memory* %loadMem2_465b70)
  store %struct.Memory* %call2_465b70, %struct.Memory** %MEMORY

  ; Code: leaq -0x1f0(%rbp), %rdx	 RIP: 465b75	 Bytes: 7
  %loadMem_465b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b75 = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b75)
  store %struct.Memory* %call_465b75, %struct.Memory** %MEMORY

  ; Code: leaq -0x5c(%rbp), %rsi	 RIP: 465b7c	 Bytes: 4
  %loadMem_465b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b7c = call %struct.Memory* @routine_leaq_MINUS0x5c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b7c)
  store %struct.Memory* %call_465b7c, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465b80	 Bytes: 3
  %loadMem_465b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b80 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b80)
  store %struct.Memory* %call_465b80, %struct.Memory** %MEMORY

  ; Code: callq .special_rescue6_moves	 RIP: 465b83	 Bytes: 5
  %loadMem1_465b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465b83 = call %struct.Memory* @routine_callq_.special_rescue6_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465b83, i64 11597, i64 5, i64 5)
  store %struct.Memory* %call1_465b83, %struct.Memory** %MEMORY

  %loadMem2_465b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465b83 = load i64, i64* %3
  %call2_465b83 = call %struct.Memory* @sub_4688d0.special_rescue6_moves(%struct.State* %0, i64  %loadPC_465b83, %struct.Memory* %loadMem2_465b83)
  store %struct.Memory* %call2_465b83, %struct.Memory** %MEMORY

  ; Code: .L_465b88:	 RIP: 465b88	 Bytes: 0
  br label %block_.L_465b88
block_.L_465b88:

  ; Code: leaq -0x1f0(%rbp), %rsi	 RIP: 465b88	 Bytes: 7
  %loadMem_465b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b88 = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b88)
  store %struct.Memory* %call_465b88, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465b8f	 Bytes: 3
  %loadMem_465b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b8f = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b8f)
  store %struct.Memory* %call_465b8f, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 465b92	 Bytes: 3
  %loadMem_465b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b92 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b92)
  store %struct.Memory* %call_465b92, %struct.Memory** %MEMORY

  ; Code: movq -0x208(%rbp), %rcx	 RIP: 465b95	 Bytes: 7
  %loadMem_465b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b95 = call %struct.Memory* @routine_movq_MINUS0x208__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b95)
  store %struct.Memory* %call_465b95, %struct.Memory** %MEMORY

  ; Code: movl -0x1f4(%rbp), %r8d	 RIP: 465b9c	 Bytes: 7
  %loadMem_465b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465b9c = call %struct.Memory* @routine_movl_MINUS0x1f4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465b9c)
  store %struct.Memory* %call_465b9c, %struct.Memory** %MEMORY

  ; Code: callq .order_moves	 RIP: 465ba3	 Bytes: 5
  %loadMem1_465ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465ba3 = call %struct.Memory* @routine_callq_.order_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465ba3, i64 -12051, i64 5, i64 5)
  store %struct.Memory* %call1_465ba3, %struct.Memory** %MEMORY

  %loadMem2_465ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465ba3 = load i64, i64* %3
  %call2_465ba3 = call %struct.Memory* @sub_462c90.order_moves(%struct.State* %0, i64  %loadPC_465ba3, %struct.Memory* %loadMem2_465ba3)
  store %struct.Memory* %call2_465ba3, %struct.Memory** %MEMORY

  ; Code: movl -0x1f4(%rbp), %edx	 RIP: 465ba8	 Bytes: 6
  %loadMem_465ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ba8 = call %struct.Memory* @routine_movl_MINUS0x1f4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ba8)
  store %struct.Memory* %call_465ba8, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x200(%rbp)	 RIP: 465bae	 Bytes: 6
  %loadMem_465bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465bae = call %struct.Memory* @routine_movl__edx__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465bae)
  store %struct.Memory* %call_465bae, %struct.Memory** %MEMORY

  ; Code: .L_465bb4:	 RIP: 465bb4	 Bytes: 0
  br label %block_.L_465bb4
block_.L_465bb4:

  ; Code: movl -0x200(%rbp), %eax	 RIP: 465bb4	 Bytes: 6
  %loadMem_465bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465bb4 = call %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465bb4)
  store %struct.Memory* %call_465bb4, %struct.Memory** %MEMORY

  ; Code: cmpl -0x60(%rbp), %eax	 RIP: 465bba	 Bytes: 3
  %loadMem_465bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465bba = call %struct.Memory* @routine_cmpl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465bba)
  store %struct.Memory* %call_465bba, %struct.Memory** %MEMORY

  ; Code: jge .L_465e0e	 RIP: 465bbd	 Bytes: 6
  %loadMem_465bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465bbd = call %struct.Memory* @routine_jge_.L_465e0e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465bbd, i8* %BRANCH_TAKEN, i64 593, i64 6, i64 6)
  store %struct.Memory* %call_465bbd, %struct.Memory** %MEMORY

  %loadBr_465bbd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465bbd = icmp eq i8 %loadBr_465bbd, 1
  br i1 %cmpBr_465bbd, label %block_.L_465e0e, label %block_465bc3

block_465bc3:
  ; Code: xorl %eax, %eax	 RIP: 465bc3	 Bytes: 2
  %loadMem_465bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465bc3 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465bc3)
  store %struct.Memory* %call_465bc3, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 465bc5	 Bytes: 2
  %loadMem_465bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465bc5 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465bc5)
  store %struct.Memory* %call_465bc5, %struct.Memory** %MEMORY

  ; Code: movslq -0x200(%rbp), %rdx	 RIP: 465bc7	 Bytes: 7
  %loadMem_465bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465bc7 = call %struct.Memory* @routine_movslq_MINUS0x200__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465bc7)
  store %struct.Memory* %call_465bc7, %struct.Memory** %MEMORY

  ; Code: movl -0x1f0(%rbp,%rdx,4), %eax	 RIP: 465bce	 Bytes: 7
  %loadMem_465bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465bce = call %struct.Memory* @routine_movl_MINUS0x1f0__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465bce)
  store %struct.Memory* %call_465bce, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 465bd5	 Bytes: 3
  %loadMem_465bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465bd5 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465bd5)
  store %struct.Memory* %call_465bd5, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edi	 RIP: 465bd8	 Bytes: 3
  %loadMem_465bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465bd8 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465bd8)
  store %struct.Memory* %call_465bd8, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 465bdb	 Bytes: 3
  %loadMem_465bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465bdb = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465bdb)
  store %struct.Memory* %call_465bdb, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 465bde	 Bytes: 3
  %loadMem_465bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465bde = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465bde)
  store %struct.Memory* %call_465bde, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 465be1	 Bytes: 4
  %loadMem_465be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465be1 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465be1)
  store %struct.Memory* %call_465be1, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r9d	 RIP: 465be5	 Bytes: 4
  %loadMem_465be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465be5 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465be5)
  store %struct.Memory* %call_465be5, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %r10d	 RIP: 465be9	 Bytes: 8
  %loadMem_465be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465be9 = call %struct.Memory* @routine_movl_0xb54ce4___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465be9)
  store %struct.Memory* %call_465be9, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b850, %r10d	 RIP: 465bf1	 Bytes: 8
  %loadMem_465bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465bf1 = call %struct.Memory* @routine_cmpl_0xb8b850___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465bf1)
  store %struct.Memory* %call_465bf1, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x2f8(%rbp)	 RIP: 465bf9	 Bytes: 7
  %loadMem_465bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465bf9 = call %struct.Memory* @routine_movl__r9d__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465bf9)
  store %struct.Memory* %call_465bf9, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x2fc(%rbp)	 RIP: 465c00	 Bytes: 6
  %loadMem_465c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c00 = call %struct.Memory* @routine_movl__edi__MINUS0x2fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c00)
  store %struct.Memory* %call_465c00, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x300(%rbp)	 RIP: 465c06	 Bytes: 6
  %loadMem_465c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c06 = call %struct.Memory* @routine_movl__esi__MINUS0x300__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c06)
  store %struct.Memory* %call_465c06, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x304(%rbp)	 RIP: 465c0c	 Bytes: 6
  %loadMem_465c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c0c = call %struct.Memory* @routine_movl__eax__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c0c)
  store %struct.Memory* %call_465c0c, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x308(%rbp)	 RIP: 465c12	 Bytes: 7
  %loadMem_465c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c12 = call %struct.Memory* @routine_movl__r8d__MINUS0x308__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c12)
  store %struct.Memory* %call_465c12, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x309(%rbp)	 RIP: 465c19	 Bytes: 6
  %loadMem_465c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c19 = call %struct.Memory* @routine_movb__cl__MINUS0x309__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c19)
  store %struct.Memory* %call_465c19, %struct.Memory** %MEMORY

  ; Code: jg .L_465c35	 RIP: 465c1f	 Bytes: 6
  %loadMem_465c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c1f = call %struct.Memory* @routine_jg_.L_465c35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c1f, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_465c1f, %struct.Memory** %MEMORY

  %loadBr_465c1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465c1f = icmp eq i8 %loadBr_465c1f, 1
  br i1 %cmpBr_465c1f, label %block_.L_465c35, label %block_465c25

block_465c25:
  ; Code: cmpl $0x0, -0x1fc(%rbp)	 RIP: 465c25	 Bytes: 7
  %loadMem_465c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c25 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c25)
  store %struct.Memory* %call_465c25, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 465c2c	 Bytes: 3
  %loadMem_465c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c2c = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c2c)
  store %struct.Memory* %call_465c2c, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x309(%rbp)	 RIP: 465c2f	 Bytes: 6
  %loadMem_465c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c2f = call %struct.Memory* @routine_movb__al__MINUS0x309__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c2f)
  store %struct.Memory* %call_465c2f, %struct.Memory** %MEMORY

  ; Code: .L_465c35:	 RIP: 465c35	 Bytes: 0
  br label %block_.L_465c35
block_.L_465c35:

  ; Code: movb -0x309(%rbp), %al	 RIP: 465c35	 Bytes: 6
  %loadMem_465c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c35 = call %struct.Memory* @routine_movb_MINUS0x309__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c35)
  store %struct.Memory* %call_465c35, %struct.Memory** %MEMORY

  ; Code: movq $0x57fccd, %rdx	 RIP: 465c3b	 Bytes: 10
  %loadMem_465c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c3b = call %struct.Memory* @routine_movq__0x57fccd___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c3b)
  store %struct.Memory* %call_465c3b, %struct.Memory** %MEMORY

  ; Code: leaq -0x220(%rbp), %rcx	 RIP: 465c45	 Bytes: 7
  %loadMem_465c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c45 = call %struct.Memory* @routine_leaq_MINUS0x220__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c45)
  store %struct.Memory* %call_465c45, %struct.Memory** %MEMORY

  ; Code: leaq -0x224(%rbp), %rsi	 RIP: 465c4c	 Bytes: 7
  %loadMem_465c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c4c = call %struct.Memory* @routine_leaq_MINUS0x224__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c4c)
  store %struct.Memory* %call_465c4c, %struct.Memory** %MEMORY

  ; Code: leaq -0x228(%rbp), %rdi	 RIP: 465c53	 Bytes: 7
  %loadMem_465c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c53 = call %struct.Memory* @routine_leaq_MINUS0x228__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c53)
  store %struct.Memory* %call_465c53, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 465c5a	 Bytes: 2
  %loadMem_465c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c5a = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c5a)
  store %struct.Memory* %call_465c5a, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %r8d	 RIP: 465c5c	 Bytes: 4
  %loadMem_465c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c5c = call %struct.Memory* @routine_movzbl__al___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c5c)
  store %struct.Memory* %call_465c5c, %struct.Memory** %MEMORY

  ; Code: movl -0x2fc(%rbp), %r9d	 RIP: 465c60	 Bytes: 7
  %loadMem_465c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c60 = call %struct.Memory* @routine_movl_MINUS0x2fc__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c60)
  store %struct.Memory* %call_465c60, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x318(%rbp)	 RIP: 465c67	 Bytes: 7
  %loadMem_465c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c67 = call %struct.Memory* @routine_movq__rdi__MINUS0x318__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c67)
  store %struct.Memory* %call_465c67, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edi	 RIP: 465c6e	 Bytes: 3
  %loadMem_465c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c6e = call %struct.Memory* @routine_movl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c6e)
  store %struct.Memory* %call_465c6e, %struct.Memory** %MEMORY

  ; Code: movl -0x300(%rbp), %r10d	 RIP: 465c71	 Bytes: 7
  %loadMem_465c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c71 = call %struct.Memory* @routine_movl_MINUS0x300__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c71)
  store %struct.Memory* %call_465c71, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x320(%rbp)	 RIP: 465c78	 Bytes: 7
  %loadMem_465c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c78 = call %struct.Memory* @routine_movq__rsi__MINUS0x320__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c78)
  store %struct.Memory* %call_465c78, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %esi	 RIP: 465c7f	 Bytes: 3
  %loadMem_465c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c7f = call %struct.Memory* @routine_movl__r10d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c7f)
  store %struct.Memory* %call_465c7f, %struct.Memory** %MEMORY

  ; Code: movl -0x304(%rbp), %r11d	 RIP: 465c82	 Bytes: 7
  %loadMem_465c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c82 = call %struct.Memory* @routine_movl_MINUS0x304__rbp____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c82)
  store %struct.Memory* %call_465c82, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x328(%rbp)	 RIP: 465c89	 Bytes: 7
  %loadMem_465c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c89 = call %struct.Memory* @routine_movq__rcx__MINUS0x328__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c89)
  store %struct.Memory* %call_465c89, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %ecx	 RIP: 465c90	 Bytes: 3
  %loadMem_465c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c90 = call %struct.Memory* @routine_movl__r11d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c90)
  store %struct.Memory* %call_465c90, %struct.Memory** %MEMORY

  ; Code: movl -0x308(%rbp), %ebx	 RIP: 465c93	 Bytes: 6
  %loadMem_465c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c93 = call %struct.Memory* @routine_movl_MINUS0x308__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c93)
  store %struct.Memory* %call_465c93, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x32c(%rbp)	 RIP: 465c99	 Bytes: 7
  %loadMem_465c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465c99 = call %struct.Memory* @routine_movl__r8d__MINUS0x32c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465c99)
  store %struct.Memory* %call_465c99, %struct.Memory** %MEMORY

  ; Code: movl %ebx, %r8d	 RIP: 465ca0	 Bytes: 3
  %loadMem_465ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ca0 = call %struct.Memory* @routine_movl__ebx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ca0)
  store %struct.Memory* %call_465ca0, %struct.Memory** %MEMORY

  ; Code: movl -0x2f8(%rbp), %r9d	 RIP: 465ca3	 Bytes: 7
  %loadMem_465ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ca3 = call %struct.Memory* @routine_movl_MINUS0x2f8__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ca3)
  store %struct.Memory* %call_465ca3, %struct.Memory** %MEMORY

  ; Code: movq -0x328(%rbp), %r14	 RIP: 465caa	 Bytes: 7
  %loadMem_465caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465caa = call %struct.Memory* @routine_movq_MINUS0x328__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465caa)
  store %struct.Memory* %call_465caa, %struct.Memory** %MEMORY

  ; Code: movq %r14, (%rsp)	 RIP: 465cb1	 Bytes: 4
  %loadMem_465cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465cb1 = call %struct.Memory* @routine_movq__r14____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465cb1)
  store %struct.Memory* %call_465cb1, %struct.Memory** %MEMORY

  ; Code: movq -0x320(%rbp), %r15	 RIP: 465cb5	 Bytes: 7
  %loadMem_465cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465cb5 = call %struct.Memory* @routine_movq_MINUS0x320__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465cb5)
  store %struct.Memory* %call_465cb5, %struct.Memory** %MEMORY

  ; Code: movq %r15, 0x8(%rsp)	 RIP: 465cbc	 Bytes: 5
  %loadMem_465cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465cbc = call %struct.Memory* @routine_movq__r15__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465cbc)
  store %struct.Memory* %call_465cbc, %struct.Memory** %MEMORY

  ; Code: movq -0x318(%rbp), %r12	 RIP: 465cc1	 Bytes: 7
  %loadMem_465cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465cc1 = call %struct.Memory* @routine_movq_MINUS0x318__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465cc1)
  store %struct.Memory* %call_465cc1, %struct.Memory** %MEMORY

  ; Code: movq %r12, 0x10(%rsp)	 RIP: 465cc8	 Bytes: 5
  %loadMem_465cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465cc8 = call %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465cc8)
  store %struct.Memory* %call_465cc8, %struct.Memory** %MEMORY

  ; Code: movl -0x32c(%rbp), %r13d	 RIP: 465ccd	 Bytes: 7
  %loadMem_465ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ccd = call %struct.Memory* @routine_movl_MINUS0x32c__rbp____r13d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ccd)
  store %struct.Memory* %call_465ccd, %struct.Memory** %MEMORY

  ; Code: movl %r13d, 0x18(%rsp)	 RIP: 465cd4	 Bytes: 5
  %loadMem_465cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465cd4 = call %struct.Memory* @routine_movl__r13d__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465cd4)
  store %struct.Memory* %call_465cd4, %struct.Memory** %MEMORY

  ; Code: callq .komaster_trymove	 RIP: 465cd9	 Bytes: 5
  %loadMem1_465cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465cd9 = call %struct.Memory* @routine_callq_.komaster_trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465cd9, i64 -356073, i64 5, i64 5)
  store %struct.Memory* %call1_465cd9, %struct.Memory** %MEMORY

  %loadMem2_465cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465cd9 = load i64, i64* %3
  %call2_465cd9 = call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* %0, i64  %loadPC_465cd9, %struct.Memory* %loadMem2_465cd9)
  store %struct.Memory* %call2_465cd9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 465cde	 Bytes: 3
  %loadMem_465cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465cde = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465cde)
  store %struct.Memory* %call_465cde, %struct.Memory** %MEMORY

  ; Code: je .L_465df5	 RIP: 465ce1	 Bytes: 6
  %loadMem_465ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ce1 = call %struct.Memory* @routine_je_.L_465df5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ce1, i8* %BRANCH_TAKEN, i64 276, i64 6, i64 6)
  store %struct.Memory* %call_465ce1, %struct.Memory** %MEMORY

  %loadBr_465ce1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465ce1 = icmp eq i8 %loadBr_465ce1, 1
  br i1 %cmpBr_465ce1, label %block_.L_465df5, label %block_465ce7

block_465ce7:
  ; Code: cmpl $0x0, -0x228(%rbp)	 RIP: 465ce7	 Bytes: 7
  %loadMem_465ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ce7 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ce7)
  store %struct.Memory* %call_465ce7, %struct.Memory** %MEMORY

  ; Code: jne .L_465db7	 RIP: 465cee	 Bytes: 6
  %loadMem_465cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465cee = call %struct.Memory* @routine_jne_.L_465db7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465cee, i8* %BRANCH_TAKEN, i64 201, i64 6, i64 6)
  store %struct.Memory* %call_465cee, %struct.Memory** %MEMORY

  %loadBr_465cee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465cee = icmp eq i8 %loadBr_465cee, 1
  br i1 %cmpBr_465cee, label %block_.L_465db7, label %block_465cf4

block_465cf4:
  ; Code: xorl %eax, %eax	 RIP: 465cf4	 Bytes: 2
  %loadMem_465cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465cf4 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465cf4)
  store %struct.Memory* %call_465cf4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 465cf6	 Bytes: 2
  %loadMem_465cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465cf6 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465cf6)
  store %struct.Memory* %call_465cf6, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465cf8	 Bytes: 3
  %loadMem_465cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465cf8 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465cf8)
  store %struct.Memory* %call_465cf8, %struct.Memory** %MEMORY

  ; Code: movl -0x220(%rbp), %edx	 RIP: 465cfb	 Bytes: 6
  %loadMem_465cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465cfb = call %struct.Memory* @routine_movl_MINUS0x220__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465cfb)
  store %struct.Memory* %call_465cfb, %struct.Memory** %MEMORY

  ; Code: movl -0x224(%rbp), %ecx	 RIP: 465d01	 Bytes: 6
  %loadMem_465d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d01 = call %struct.Memory* @routine_movl_MINUS0x224__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d01)
  store %struct.Memory* %call_465d01, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 465d07	 Bytes: 5
  %loadMem1_465d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465d07 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465d07, i64 -32807, i64 5, i64 5)
  store %struct.Memory* %call1_465d07, %struct.Memory** %MEMORY

  %loadMem2_465d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465d07 = load i64, i64* %3
  %call2_465d07 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_465d07, %struct.Memory* %loadMem2_465d07)
  store %struct.Memory* %call2_465d07, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x22c(%rbp)	 RIP: 465d0c	 Bytes: 6
  %loadMem_465d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d0c = call %struct.Memory* @routine_movl__eax__MINUS0x22c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d0c)
  store %struct.Memory* %call_465d0c, %struct.Memory** %MEMORY

  ; Code: callq .popgo	 RIP: 465d12	 Bytes: 5
  %loadMem1_465d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465d12 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465d12, i64 -360370, i64 5, i64 5)
  store %struct.Memory* %call1_465d12, %struct.Memory** %MEMORY

  %loadMem2_465d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465d12 = load i64, i64* %3
  %call2_465d12 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_465d12, %struct.Memory* %loadMem2_465d12)
  store %struct.Memory* %call2_465d12, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x22c(%rbp)	 RIP: 465d17	 Bytes: 7
  %loadMem_465d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d17 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x22c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d17)
  store %struct.Memory* %call_465d17, %struct.Memory** %MEMORY

  ; Code: jne .L_465d77	 RIP: 465d1e	 Bytes: 6
  %loadMem_465d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d1e = call %struct.Memory* @routine_jne_.L_465d77(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d1e, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_465d1e, %struct.Memory** %MEMORY

  %loadBr_465d1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465d1e = icmp eq i8 %loadBr_465d1e, 1
  br i1 %cmpBr_465d1e, label %block_.L_465d77, label %block_465d24

block_465d24:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 465d24	 Bytes: 5
  %loadMem_465d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d24 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d24)
  store %struct.Memory* %call_465d24, %struct.Memory** %MEMORY

  ; Code: je .L_465d38	 RIP: 465d29	 Bytes: 6
  %loadMem_465d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d29 = call %struct.Memory* @routine_je_.L_465d38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d29, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_465d29, %struct.Memory** %MEMORY

  %loadBr_465d29 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465d29 = icmp eq i8 %loadBr_465d29, 1
  br i1 %cmpBr_465d29, label %block_.L_465d38, label %block_465d2f

block_465d2f:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 465d2f	 Bytes: 3
  %loadMem_465d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d2f = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d2f)
  store %struct.Memory* %call_465d2f, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 465d32	 Bytes: 4
  %loadMem_465d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d32 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d32)
  store %struct.Memory* %call_465d32, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 465d36	 Bytes: 2
  %loadMem_465d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d36 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d36)
  store %struct.Memory* %call_465d36, %struct.Memory** %MEMORY

  ; Code: .L_465d38:	 RIP: 465d38	 Bytes: 0
  br label %block_.L_465d38
block_.L_465d38:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 465d38	 Bytes: 9
  %loadMem_465d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d38 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d38)
  store %struct.Memory* %call_465d38, %struct.Memory** %MEMORY

  ; Code: je .L_465d6b	 RIP: 465d41	 Bytes: 6
  %loadMem_465d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d41 = call %struct.Memory* @routine_je_.L_465d6b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d41, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_465d41, %struct.Memory** %MEMORY

  %loadBr_465d41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465d41 = icmp eq i8 %loadBr_465d41, 1
  br i1 %cmpBr_465d41, label %block_.L_465d6b, label %block_465d47

block_465d47:
  ; Code: movl $0x5, %ecx	 RIP: 465d47	 Bytes: 5
  %loadMem_465d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d47 = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d47)
  store %struct.Memory* %call_465d47, %struct.Memory** %MEMORY

  ; Code: movq $0x57fc87, %r8	 RIP: 465d4c	 Bytes: 10
  %loadMem_465d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d4c = call %struct.Memory* @routine_movq__0x57fc87___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d4c)
  store %struct.Memory* %call_465d4c, %struct.Memory** %MEMORY

  ; Code: movq -0x208(%rbp), %rdi	 RIP: 465d56	 Bytes: 7
  %loadMem_465d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d56 = call %struct.Memory* @routine_movq_MINUS0x208__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d56)
  store %struct.Memory* %call_465d56, %struct.Memory** %MEMORY

  ; Code: movl -0x20c(%rbp), %esi	 RIP: 465d5d	 Bytes: 6
  %loadMem_465d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d5d = call %struct.Memory* @routine_movl_MINUS0x20c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d5d)
  store %struct.Memory* %call_465d5d, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 465d63	 Bytes: 3
  %loadMem_465d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d63 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d63)
  store %struct.Memory* %call_465d63, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 465d66	 Bytes: 5
  %loadMem1_465d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465d66 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465d66, i64 -318886, i64 5, i64 5)
  store %struct.Memory* %call1_465d66, %struct.Memory** %MEMORY

  %loadMem2_465d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465d66 = load i64, i64* %3
  %call2_465d66 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_465d66, %struct.Memory* %loadMem2_465d66)
  store %struct.Memory* %call2_465d66, %struct.Memory** %MEMORY

  ; Code: .L_465d6b:	 RIP: 465d6b	 Bytes: 0
  br label %block_.L_465d6b
block_.L_465d6b:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 465d6b	 Bytes: 7
  %loadMem_465d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d6b = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d6b)
  store %struct.Memory* %call_465d6b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46639f	 RIP: 465d72	 Bytes: 5
  %loadMem_465d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d72 = call %struct.Memory* @routine_jmpq_.L_46639f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d72, i64 1581, i64 5)
  store %struct.Memory* %call_465d72, %struct.Memory** %MEMORY

  br label %block_.L_46639f

  ; Code: .L_465d77:	 RIP: 465d77	 Bytes: 0
block_.L_465d77:

  ; Code: movl $0x5, %eax	 RIP: 465d77	 Bytes: 5
  %loadMem_465d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d77 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d77)
  store %struct.Memory* %call_465d77, %struct.Memory** %MEMORY

  ; Code: subl -0x22c(%rbp), %eax	 RIP: 465d7c	 Bytes: 6
  %loadMem_465d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d7c = call %struct.Memory* @routine_subl_MINUS0x22c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d7c)
  store %struct.Memory* %call_465d7c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1fc(%rbp), %eax	 RIP: 465d82	 Bytes: 6
  %loadMem_465d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d82 = call %struct.Memory* @routine_cmpl_MINUS0x1fc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d82)
  store %struct.Memory* %call_465d82, %struct.Memory** %MEMORY

  ; Code: jle .L_465da8	 RIP: 465d88	 Bytes: 6
  %loadMem_465d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d88 = call %struct.Memory* @routine_jle_.L_465da8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d88, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_465d88, %struct.Memory** %MEMORY

  %loadBr_465d88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465d88 = icmp eq i8 %loadBr_465d88, 1
  br i1 %cmpBr_465d88, label %block_.L_465da8, label %block_465d8e

block_465d8e:
  ; Code: movl $0x5, %eax	 RIP: 465d8e	 Bytes: 5
  %loadMem_465d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d8e = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d8e)
  store %struct.Memory* %call_465d8e, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 465d93	 Bytes: 3
  %loadMem_465d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d93 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d93)
  store %struct.Memory* %call_465d93, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1f8(%rbp)	 RIP: 465d96	 Bytes: 6
  %loadMem_465d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d96 = call %struct.Memory* @routine_movl__ecx__MINUS0x1f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d96)
  store %struct.Memory* %call_465d96, %struct.Memory** %MEMORY

  ; Code: subl -0x22c(%rbp), %eax	 RIP: 465d9c	 Bytes: 6
  %loadMem_465d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465d9c = call %struct.Memory* @routine_subl_MINUS0x22c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465d9c)
  store %struct.Memory* %call_465d9c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1fc(%rbp)	 RIP: 465da2	 Bytes: 6
  %loadMem_465da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465da2 = call %struct.Memory* @routine_movl__eax__MINUS0x1fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465da2)
  store %struct.Memory* %call_465da2, %struct.Memory** %MEMORY

  ; Code: .L_465da8:	 RIP: 465da8	 Bytes: 0
  br label %block_.L_465da8
block_.L_465da8:

  ; Code: jmpq .L_465dad	 RIP: 465da8	 Bytes: 5
  %loadMem_465da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465da8 = call %struct.Memory* @routine_jmpq_.L_465dad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465da8, i64 5, i64 5)
  store %struct.Memory* %call_465da8, %struct.Memory** %MEMORY

  br label %block_.L_465dad

  ; Code: .L_465dad:	 RIP: 465dad	 Bytes: 0
block_.L_465dad:

  ; Code: jmpq .L_465db2	 RIP: 465dad	 Bytes: 5
  %loadMem_465dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465dad = call %struct.Memory* @routine_jmpq_.L_465db2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465dad, i64 5, i64 5)
  store %struct.Memory* %call_465dad, %struct.Memory** %MEMORY

  br label %block_.L_465db2

  ; Code: .L_465db2:	 RIP: 465db2	 Bytes: 0
block_.L_465db2:

  ; Code: jmpq .L_465df0	 RIP: 465db2	 Bytes: 5
  %loadMem_465db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465db2 = call %struct.Memory* @routine_jmpq_.L_465df0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465db2, i64 62, i64 5)
  store %struct.Memory* %call_465db2, %struct.Memory** %MEMORY

  br label %block_.L_465df0

  ; Code: .L_465db7:	 RIP: 465db7	 Bytes: 0
block_.L_465db7:

  ; Code: xorl %eax, %eax	 RIP: 465db7	 Bytes: 2
  %loadMem_465db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465db7 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465db7)
  store %struct.Memory* %call_465db7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 465db9	 Bytes: 2
  %loadMem_465db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465db9 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465db9)
  store %struct.Memory* %call_465db9, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465dbb	 Bytes: 3
  %loadMem_465dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465dbb = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465dbb)
  store %struct.Memory* %call_465dbb, %struct.Memory** %MEMORY

  ; Code: movl -0x220(%rbp), %edx	 RIP: 465dbe	 Bytes: 6
  %loadMem_465dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465dbe = call %struct.Memory* @routine_movl_MINUS0x220__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465dbe)
  store %struct.Memory* %call_465dbe, %struct.Memory** %MEMORY

  ; Code: movl -0x224(%rbp), %ecx	 RIP: 465dc4	 Bytes: 6
  %loadMem_465dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465dc4 = call %struct.Memory* @routine_movl_MINUS0x224__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465dc4)
  store %struct.Memory* %call_465dc4, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 465dca	 Bytes: 5
  %loadMem1_465dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465dca = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465dca, i64 -33002, i64 5, i64 5)
  store %struct.Memory* %call1_465dca, %struct.Memory** %MEMORY

  %loadMem2_465dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465dca = load i64, i64* %3
  %call2_465dca = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_465dca, %struct.Memory* %loadMem2_465dca)
  store %struct.Memory* %call2_465dca, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 465dcf	 Bytes: 3
  %loadMem_465dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465dcf = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465dcf)
  store %struct.Memory* %call_465dcf, %struct.Memory** %MEMORY

  ; Code: je .L_465deb	 RIP: 465dd2	 Bytes: 6
  %loadMem_465dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465dd2 = call %struct.Memory* @routine_je_.L_465deb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465dd2, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_465dd2, %struct.Memory** %MEMORY

  %loadBr_465dd2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465dd2 = icmp eq i8 %loadBr_465dd2, 1
  br i1 %cmpBr_465dd2, label %block_.L_465deb, label %block_465dd8

block_465dd8:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 465dd8	 Bytes: 3
  %loadMem_465dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465dd8 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465dd8)
  store %struct.Memory* %call_465dd8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1f8(%rbp)	 RIP: 465ddb	 Bytes: 6
  %loadMem_465ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ddb = call %struct.Memory* @routine_movl__eax__MINUS0x1f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ddb)
  store %struct.Memory* %call_465ddb, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x1fc(%rbp)	 RIP: 465de1	 Bytes: 10
  %loadMem_465de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465de1 = call %struct.Memory* @routine_movl__0x1__MINUS0x1fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465de1)
  store %struct.Memory* %call_465de1, %struct.Memory** %MEMORY

  ; Code: .L_465deb:	 RIP: 465deb	 Bytes: 0
  br label %block_.L_465deb
block_.L_465deb:

  ; Code: callq .popgo	 RIP: 465deb	 Bytes: 5
  %loadMem1_465deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465deb = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465deb, i64 -360587, i64 5, i64 5)
  store %struct.Memory* %call1_465deb, %struct.Memory** %MEMORY

  %loadMem2_465deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465deb = load i64, i64* %3
  %call2_465deb = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_465deb, %struct.Memory* %loadMem2_465deb)
  store %struct.Memory* %call2_465deb, %struct.Memory** %MEMORY

  ; Code: .L_465df0:	 RIP: 465df0	 Bytes: 0
  br label %block_.L_465df0
block_.L_465df0:

  ; Code: jmpq .L_465df5	 RIP: 465df0	 Bytes: 5
  %loadMem_465df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465df0 = call %struct.Memory* @routine_jmpq_.L_465df5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465df0, i64 5, i64 5)
  store %struct.Memory* %call_465df0, %struct.Memory** %MEMORY

  br label %block_.L_465df5

  ; Code: .L_465df5:	 RIP: 465df5	 Bytes: 0
block_.L_465df5:

  ; Code: jmpq .L_465dfa	 RIP: 465df5	 Bytes: 5
  %loadMem_465df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465df5 = call %struct.Memory* @routine_jmpq_.L_465dfa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465df5, i64 5, i64 5)
  store %struct.Memory* %call_465df5, %struct.Memory** %MEMORY

  br label %block_.L_465dfa

  ; Code: .L_465dfa:	 RIP: 465dfa	 Bytes: 0
block_.L_465dfa:

  ; Code: movl -0x200(%rbp), %eax	 RIP: 465dfa	 Bytes: 6
  %loadMem_465dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465dfa = call %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465dfa)
  store %struct.Memory* %call_465dfa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 465e00	 Bytes: 3
  %loadMem_465e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e00 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e00)
  store %struct.Memory* %call_465e00, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x200(%rbp)	 RIP: 465e03	 Bytes: 6
  %loadMem_465e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e03 = call %struct.Memory* @routine_movl__eax__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e03)
  store %struct.Memory* %call_465e03, %struct.Memory** %MEMORY

  ; Code: jmpq .L_465bb4	 RIP: 465e09	 Bytes: 5
  %loadMem_465e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e09 = call %struct.Memory* @routine_jmpq_.L_465bb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e09, i64 -597, i64 5)
  store %struct.Memory* %call_465e09, %struct.Memory** %MEMORY

  br label %block_.L_465bb4

  ; Code: .L_465e0e:	 RIP: 465e0e	 Bytes: 0
block_.L_465e0e:

  ; Code: movl -0x60(%rbp), %eax	 RIP: 465e0e	 Bytes: 3
  %loadMem_465e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e0e = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e0e)
  store %struct.Memory* %call_465e0e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1f4(%rbp)	 RIP: 465e11	 Bytes: 6
  %loadMem_465e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e11 = call %struct.Memory* @routine_movl__eax__MINUS0x1f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e11)
  store %struct.Memory* %call_465e11, %struct.Memory** %MEMORY

  ; Code: cmpl $0xa, 0x7ae448	 RIP: 465e17	 Bytes: 8
  %loadMem_465e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e17 = call %struct.Memory* @routine_cmpl__0xa__0x7ae448(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e17)
  store %struct.Memory* %call_465e17, %struct.Memory** %MEMORY

  ; Code: jl .L_46600d	 RIP: 465e1f	 Bytes: 6
  %loadMem_465e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e1f = call %struct.Memory* @routine_jl_.L_46600d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e1f, i8* %BRANCH_TAKEN, i64 494, i64 6, i64 6)
  store %struct.Memory* %call_465e1f, %struct.Memory** %MEMORY

  %loadBr_465e1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465e1f = icmp eq i8 %loadBr_465e1f, 1
  br i1 %cmpBr_465e1f, label %block_.L_46600d, label %block_465e25

block_465e25:
  ; Code: movl 0xb54ce4, %eax	 RIP: 465e25	 Bytes: 7
  %loadMem_465e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e25 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e25)
  store %struct.Memory* %call_465e25, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8af28, %eax	 RIP: 465e2c	 Bytes: 7
  %loadMem_465e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e2c = call %struct.Memory* @routine_cmpl_0xb8af28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e2c)
  store %struct.Memory* %call_465e2c, %struct.Memory** %MEMORY

  ; Code: jg .L_46600d	 RIP: 465e33	 Bytes: 6
  %loadMem_465e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e33 = call %struct.Memory* @routine_jg_.L_46600d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e33, i8* %BRANCH_TAKEN, i64 474, i64 6, i64 6)
  store %struct.Memory* %call_465e33, %struct.Memory** %MEMORY

  %loadBr_465e33 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465e33 = icmp eq i8 %loadBr_465e33, 1
  br i1 %cmpBr_465e33, label %block_.L_46600d, label %block_465e39

block_465e39:
  ; Code: leaq -0x230(%rbp), %rsi	 RIP: 465e39	 Bytes: 7
  %loadMem_465e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e39 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e39)
  store %struct.Memory* %call_465e39, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 465e40	 Bytes: 5
  %loadMem_465e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e40 = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e40)
  store %struct.Memory* %call_465e40, %struct.Memory** %MEMORY

  ; Code: leaq -0x290(%rbp), %rdx	 RIP: 465e45	 Bytes: 7
  %loadMem_465e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e45 = call %struct.Memory* @routine_leaq_MINUS0x290__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e45)
  store %struct.Memory* %call_465e45, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465e4c	 Bytes: 3
  %loadMem_465e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e4c = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e4c)
  store %struct.Memory* %call_465e4c, %struct.Memory** %MEMORY

  ; Code: callq .find_superstring_liberties	 RIP: 465e4f	 Bytes: 5
  %loadMem1_465e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465e4f = call %struct.Memory* @routine_callq_.find_superstring_liberties(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465e4f, i64 90721, i64 5, i64 5)
  store %struct.Memory* %call1_465e4f, %struct.Memory** %MEMORY

  %loadMem2_465e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465e4f = load i64, i64* %3
  %call2_465e4f = call %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* %0, i64  %loadPC_465e4f, %struct.Memory* %loadMem2_465e4f)
  store %struct.Memory* %call2_465e4f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x200(%rbp)	 RIP: 465e54	 Bytes: 10
  %loadMem_465e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e54 = call %struct.Memory* @routine_movl__0x0__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e54)
  store %struct.Memory* %call_465e54, %struct.Memory** %MEMORY

  ; Code: .L_465e5e:	 RIP: 465e5e	 Bytes: 0
  br label %block_.L_465e5e
block_.L_465e5e:

  ; Code: movl -0x200(%rbp), %eax	 RIP: 465e5e	 Bytes: 6
  %loadMem_465e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e5e = call %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e5e)
  store %struct.Memory* %call_465e5e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x230(%rbp), %eax	 RIP: 465e64	 Bytes: 6
  %loadMem_465e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e64 = call %struct.Memory* @routine_cmpl_MINUS0x230__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e64)
  store %struct.Memory* %call_465e64, %struct.Memory** %MEMORY

  ; Code: jge .L_465f93	 RIP: 465e6a	 Bytes: 6
  %loadMem_465e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e6a = call %struct.Memory* @routine_jge_.L_465f93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e6a, i8* %BRANCH_TAKEN, i64 297, i64 6, i64 6)
  store %struct.Memory* %call_465e6a, %struct.Memory** %MEMORY

  %loadBr_465e6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465e6a = icmp eq i8 %loadBr_465e6a, 1
  br i1 %cmpBr_465e6a, label %block_.L_465f93, label %block_465e70

block_465e70:
  ; Code: movslq -0x200(%rbp), %rax	 RIP: 465e70	 Bytes: 7
  %loadMem_465e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e70 = call %struct.Memory* @routine_movslq_MINUS0x200__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e70)
  store %struct.Memory* %call_465e70, %struct.Memory** %MEMORY

  ; Code: movl -0x290(%rbp,%rax,4), %ecx	 RIP: 465e77	 Bytes: 7
  %loadMem_465e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e77 = call %struct.Memory* @routine_movl_MINUS0x290__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e77)
  store %struct.Memory* %call_465e77, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x294(%rbp)	 RIP: 465e7e	 Bytes: 6
  %loadMem_465e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e7e = call %struct.Memory* @routine_movl__ecx__MINUS0x294__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e7e)
  store %struct.Memory* %call_465e7e, %struct.Memory** %MEMORY

  ; Code: movl -0x294(%rbp), %edi	 RIP: 465e84	 Bytes: 6
  %loadMem_465e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e84 = call %struct.Memory* @routine_movl_MINUS0x294__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e84)
  store %struct.Memory* %call_465e84, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 465e8a	 Bytes: 3
  %loadMem_465e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e8a = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e8a)
  store %struct.Memory* %call_465e8a, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_string	 RIP: 465e8d	 Bytes: 5
  %loadMem1_465e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465e8d = call %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465e8d, i64 -332765, i64 5, i64 5)
  store %struct.Memory* %call1_465e8d, %struct.Memory** %MEMORY

  %loadMem2_465e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465e8d = load i64, i64* %3
  %call2_465e8d = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64  %loadPC_465e8d, %struct.Memory* %loadMem2_465e8d)
  store %struct.Memory* %call2_465e8d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 465e92	 Bytes: 3
  %loadMem_465e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e92 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e92)
  store %struct.Memory* %call_465e92, %struct.Memory** %MEMORY

  ; Code: je .L_465ea0	 RIP: 465e95	 Bytes: 6
  %loadMem_465e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e95 = call %struct.Memory* @routine_je_.L_465ea0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e95, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_465e95, %struct.Memory** %MEMORY

  %loadBr_465e95 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465e95 = icmp eq i8 %loadBr_465e95, 1
  br i1 %cmpBr_465e95, label %block_.L_465ea0, label %block_465e9b

block_465e9b:
  ; Code: jmpq .L_465f7f	 RIP: 465e9b	 Bytes: 5
  %loadMem_465e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465e9b = call %struct.Memory* @routine_jmpq_.L_465f7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465e9b, i64 228, i64 5)
  store %struct.Memory* %call_465e9b, %struct.Memory** %MEMORY

  br label %block_.L_465f7f

  ; Code: .L_465ea0:	 RIP: 465ea0	 Bytes: 0
block_.L_465ea0:

  ; Code: movl $0x2, %edx	 RIP: 465ea0	 Bytes: 5
  %loadMem_465ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ea0 = call %struct.Memory* @routine_movl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ea0)
  store %struct.Memory* %call_465ea0, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 465ea5	 Bytes: 2
  %loadMem_465ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ea5 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ea5)
  store %struct.Memory* %call_465ea5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 465ea7	 Bytes: 2
  %loadMem_465ea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ea7 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ea7)
  store %struct.Memory* %call_465ea7, %struct.Memory** %MEMORY

  ; Code: movl -0x294(%rbp), %edi	 RIP: 465ea9	 Bytes: 6
  %loadMem_465ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ea9 = call %struct.Memory* @routine_movl_MINUS0x294__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ea9)
  store %struct.Memory* %call_465ea9, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 465eaf	 Bytes: 3
  %loadMem_465eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465eaf = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465eaf)
  store %struct.Memory* %call_465eaf, %struct.Memory** %MEMORY

  ; Code: callq .approxlib	 RIP: 465eb2	 Bytes: 5
  %loadMem1_465eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465eb2 = call %struct.Memory* @routine_callq_.approxlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465eb2, i64 -346370, i64 5, i64 5)
  store %struct.Memory* %call1_465eb2, %struct.Memory** %MEMORY

  %loadMem2_465eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465eb2 = load i64, i64* %3
  %call2_465eb2 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64  %loadPC_465eb2, %struct.Memory* %loadMem2_465eb2)
  store %struct.Memory* %call2_465eb2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 465eb7	 Bytes: 3
  %loadMem_465eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465eb7 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465eb7)
  store %struct.Memory* %call_465eb7, %struct.Memory** %MEMORY

  ; Code: jle .L_465f7a	 RIP: 465eba	 Bytes: 6
  %loadMem_465eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465eba = call %struct.Memory* @routine_jle_.L_465f7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465eba, i8* %BRANCH_TAKEN, i64 192, i64 6, i64 6)
  store %struct.Memory* %call_465eba, %struct.Memory** %MEMORY

  %loadBr_465eba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465eba = icmp eq i8 %loadBr_465eba, 1
  br i1 %cmpBr_465eba, label %block_.L_465f7a, label %block_465ec0

block_465ec0:
  ; Code: jmpq .L_465ec5	 RIP: 465ec0	 Bytes: 5
  %loadMem_465ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ec0 = call %struct.Memory* @routine_jmpq_.L_465ec5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ec0, i64 5, i64 5)
  store %struct.Memory* %call_465ec0, %struct.Memory** %MEMORY

  br label %block_.L_465ec5

  ; Code: .L_465ec5:	 RIP: 465ec5	 Bytes: 0
block_.L_465ec5:

  ; Code: movl $0x0, -0x298(%rbp)	 RIP: 465ec5	 Bytes: 10
  %loadMem_465ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ec5 = call %struct.Memory* @routine_movl__0x0__MINUS0x298__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ec5)
  store %struct.Memory* %call_465ec5, %struct.Memory** %MEMORY

  ; Code: .L_465ecf:	 RIP: 465ecf	 Bytes: 0
  br label %block_.L_465ecf
block_.L_465ecf:

  ; Code: movl -0x298(%rbp), %eax	 RIP: 465ecf	 Bytes: 6
  %loadMem_465ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ecf = call %struct.Memory* @routine_movl_MINUS0x298__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ecf)
  store %struct.Memory* %call_465ecf, %struct.Memory** %MEMORY

  ; Code: cmpl -0x60(%rbp), %eax	 RIP: 465ed5	 Bytes: 3
  %loadMem_465ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ed5 = call %struct.Memory* @routine_cmpl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ed5)
  store %struct.Memory* %call_465ed5, %struct.Memory** %MEMORY

  ; Code: jge .L_465f2e	 RIP: 465ed8	 Bytes: 6
  %loadMem_465ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ed8 = call %struct.Memory* @routine_jge_.L_465f2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ed8, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_465ed8, %struct.Memory** %MEMORY

  %loadBr_465ed8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465ed8 = icmp eq i8 %loadBr_465ed8, 1
  br i1 %cmpBr_465ed8, label %block_.L_465f2e, label %block_465ede

block_465ede:
  ; Code: movslq -0x298(%rbp), %rax	 RIP: 465ede	 Bytes: 7
  %loadMem_465ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ede = call %struct.Memory* @routine_movslq_MINUS0x298__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ede)
  store %struct.Memory* %call_465ede, %struct.Memory** %MEMORY

  ; Code: movl -0x1f0(%rbp,%rax,4), %ecx	 RIP: 465ee5	 Bytes: 7
  %loadMem_465ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ee5 = call %struct.Memory* @routine_movl_MINUS0x1f0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ee5)
  store %struct.Memory* %call_465ee5, %struct.Memory** %MEMORY

  ; Code: cmpl -0x294(%rbp), %ecx	 RIP: 465eec	 Bytes: 6
  %loadMem_465eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465eec = call %struct.Memory* @routine_cmpl_MINUS0x294__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465eec)
  store %struct.Memory* %call_465eec, %struct.Memory** %MEMORY

  ; Code: jne .L_465f15	 RIP: 465ef2	 Bytes: 6
  %loadMem_465ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ef2 = call %struct.Memory* @routine_jne_.L_465f15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ef2, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_465ef2, %struct.Memory** %MEMORY

  %loadBr_465ef2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465ef2 = icmp eq i8 %loadBr_465ef2, 1
  br i1 %cmpBr_465ef2, label %block_.L_465f15, label %block_465ef8

block_465ef8:
  ; Code: movslq -0x298(%rbp), %rax	 RIP: 465ef8	 Bytes: 7
  %loadMem_465ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ef8 = call %struct.Memory* @routine_movslq_MINUS0x298__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ef8)
  store %struct.Memory* %call_465ef8, %struct.Memory** %MEMORY

  ; Code: movl -0x128(%rbp,%rax,4), %ecx	 RIP: 465eff	 Bytes: 7
  %loadMem_465eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465eff = call %struct.Memory* @routine_movl_MINUS0x128__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465eff)
  store %struct.Memory* %call_465eff, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %ecx	 RIP: 465f06	 Bytes: 3
  %loadMem_465f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f06 = call %struct.Memory* @routine_addl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f06)
  store %struct.Memory* %call_465f06, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x128(%rbp,%rax,4)	 RIP: 465f09	 Bytes: 7
  %loadMem_465f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f09 = call %struct.Memory* @routine_movl__ecx__MINUS0x128__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f09)
  store %struct.Memory* %call_465f09, %struct.Memory** %MEMORY

  ; Code: jmpq .L_465f2e	 RIP: 465f10	 Bytes: 5
  %loadMem_465f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f10 = call %struct.Memory* @routine_jmpq_.L_465f2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f10, i64 30, i64 5)
  store %struct.Memory* %call_465f10, %struct.Memory** %MEMORY

  br label %block_.L_465f2e

  ; Code: .L_465f15:	 RIP: 465f15	 Bytes: 0
block_.L_465f15:

  ; Code: jmpq .L_465f1a	 RIP: 465f15	 Bytes: 5
  %loadMem_465f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f15 = call %struct.Memory* @routine_jmpq_.L_465f1a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f15, i64 5, i64 5)
  store %struct.Memory* %call_465f15, %struct.Memory** %MEMORY

  br label %block_.L_465f1a

  ; Code: .L_465f1a:	 RIP: 465f1a	 Bytes: 0
block_.L_465f1a:

  ; Code: movl -0x298(%rbp), %eax	 RIP: 465f1a	 Bytes: 6
  %loadMem_465f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f1a = call %struct.Memory* @routine_movl_MINUS0x298__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f1a)
  store %struct.Memory* %call_465f1a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 465f20	 Bytes: 3
  %loadMem_465f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f20 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f20)
  store %struct.Memory* %call_465f20, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x298(%rbp)	 RIP: 465f23	 Bytes: 6
  %loadMem_465f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f23 = call %struct.Memory* @routine_movl__eax__MINUS0x298__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f23)
  store %struct.Memory* %call_465f23, %struct.Memory** %MEMORY

  ; Code: jmpq .L_465ecf	 RIP: 465f29	 Bytes: 5
  %loadMem_465f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f29 = call %struct.Memory* @routine_jmpq_.L_465ecf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f29, i64 -90, i64 5)
  store %struct.Memory* %call_465f29, %struct.Memory** %MEMORY

  br label %block_.L_465ecf

  ; Code: .L_465f2e:	 RIP: 465f2e	 Bytes: 0
block_.L_465f2e:

  ; Code: movl -0x298(%rbp), %eax	 RIP: 465f2e	 Bytes: 6
  %loadMem_465f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f2e = call %struct.Memory* @routine_movl_MINUS0x298__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f2e)
  store %struct.Memory* %call_465f2e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x60(%rbp), %eax	 RIP: 465f34	 Bytes: 3
  %loadMem_465f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f34 = call %struct.Memory* @routine_cmpl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f34)
  store %struct.Memory* %call_465f34, %struct.Memory** %MEMORY

  ; Code: jne .L_465f70	 RIP: 465f37	 Bytes: 6
  %loadMem_465f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f37 = call %struct.Memory* @routine_jne_.L_465f70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f37, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_465f37, %struct.Memory** %MEMORY

  %loadBr_465f37 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465f37 = icmp eq i8 %loadBr_465f37, 1
  br i1 %cmpBr_465f37, label %block_.L_465f70, label %block_465f3d

block_465f3d:
  ; Code: cmpl $0x32, -0x60(%rbp)	 RIP: 465f3d	 Bytes: 4
  %loadMem_465f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f3d = call %struct.Memory* @routine_cmpl__0x32__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f3d)
  store %struct.Memory* %call_465f3d, %struct.Memory** %MEMORY

  ; Code: jge .L_465f70	 RIP: 465f41	 Bytes: 6
  %loadMem_465f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f41 = call %struct.Memory* @routine_jge_.L_465f70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f41, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_465f41, %struct.Memory** %MEMORY

  %loadBr_465f41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465f41 = icmp eq i8 %loadBr_465f41, 1
  br i1 %cmpBr_465f41, label %block_.L_465f70, label %block_465f47

block_465f47:
  ; Code: movl -0x294(%rbp), %eax	 RIP: 465f47	 Bytes: 6
  %loadMem_465f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f47 = call %struct.Memory* @routine_movl_MINUS0x294__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f47)
  store %struct.Memory* %call_465f47, %struct.Memory** %MEMORY

  ; Code: movslq -0x60(%rbp), %rcx	 RIP: 465f4d	 Bytes: 4
  %loadMem_465f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f4d = call %struct.Memory* @routine_movslq_MINUS0x60__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f4d)
  store %struct.Memory* %call_465f4d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1f0(%rbp,%rcx,4)	 RIP: 465f51	 Bytes: 7
  %loadMem_465f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f51 = call %struct.Memory* @routine_movl__eax__MINUS0x1f0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f51)
  store %struct.Memory* %call_465f51, %struct.Memory** %MEMORY

  ; Code: movslq -0x60(%rbp), %rcx	 RIP: 465f58	 Bytes: 4
  %loadMem_465f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f58 = call %struct.Memory* @routine_movslq_MINUS0x60__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f58)
  store %struct.Memory* %call_465f58, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x128(%rbp,%rcx,4)	 RIP: 465f5c	 Bytes: 11
  %loadMem_465f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f5c = call %struct.Memory* @routine_movl__0x0__MINUS0x128__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f5c)
  store %struct.Memory* %call_465f5c, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %eax	 RIP: 465f67	 Bytes: 3
  %loadMem_465f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f67 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f67)
  store %struct.Memory* %call_465f67, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 465f6a	 Bytes: 3
  %loadMem_465f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f6a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f6a)
  store %struct.Memory* %call_465f6a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 465f6d	 Bytes: 3
  %loadMem_465f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f6d = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f6d)
  store %struct.Memory* %call_465f6d, %struct.Memory** %MEMORY

  ; Code: .L_465f70:	 RIP: 465f70	 Bytes: 0
  br label %block_.L_465f70
block_.L_465f70:

  ; Code: jmpq .L_465f75	 RIP: 465f70	 Bytes: 5
  %loadMem_465f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f70 = call %struct.Memory* @routine_jmpq_.L_465f75(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f70, i64 5, i64 5)
  store %struct.Memory* %call_465f70, %struct.Memory** %MEMORY

  br label %block_.L_465f75

  ; Code: .L_465f75:	 RIP: 465f75	 Bytes: 0
block_.L_465f75:

  ; Code: jmpq .L_465f7a	 RIP: 465f75	 Bytes: 5
  %loadMem_465f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f75 = call %struct.Memory* @routine_jmpq_.L_465f7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f75, i64 5, i64 5)
  store %struct.Memory* %call_465f75, %struct.Memory** %MEMORY

  br label %block_.L_465f7a

  ; Code: .L_465f7a:	 RIP: 465f7a	 Bytes: 0
block_.L_465f7a:

  ; Code: jmpq .L_465f7f	 RIP: 465f7a	 Bytes: 5
  %loadMem_465f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f7a = call %struct.Memory* @routine_jmpq_.L_465f7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f7a, i64 5, i64 5)
  store %struct.Memory* %call_465f7a, %struct.Memory** %MEMORY

  br label %block_.L_465f7f

  ; Code: .L_465f7f:	 RIP: 465f7f	 Bytes: 0
block_.L_465f7f:

  ; Code: movl -0x200(%rbp), %eax	 RIP: 465f7f	 Bytes: 6
  %loadMem_465f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f7f = call %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f7f)
  store %struct.Memory* %call_465f7f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 465f85	 Bytes: 3
  %loadMem_465f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f85 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f85)
  store %struct.Memory* %call_465f85, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x200(%rbp)	 RIP: 465f88	 Bytes: 6
  %loadMem_465f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f88 = call %struct.Memory* @routine_movl__eax__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f88)
  store %struct.Memory* %call_465f88, %struct.Memory** %MEMORY

  ; Code: jmpq .L_465e5e	 RIP: 465f8e	 Bytes: 5
  %loadMem_465f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f8e = call %struct.Memory* @routine_jmpq_.L_465e5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f8e, i64 -304, i64 5)
  store %struct.Memory* %call_465f8e, %struct.Memory** %MEMORY

  br label %block_.L_465e5e

  ; Code: .L_465f93:	 RIP: 465f93	 Bytes: 0
block_.L_465f93:

  ; Code: movl $0x0, -0x200(%rbp)	 RIP: 465f93	 Bytes: 10
  %loadMem_465f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f93 = call %struct.Memory* @routine_movl__0x0__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f93)
  store %struct.Memory* %call_465f93, %struct.Memory** %MEMORY

  ; Code: .L_465f9d:	 RIP: 465f9d	 Bytes: 0
  br label %block_.L_465f9d
block_.L_465f9d:

  ; Code: movl -0x200(%rbp), %eax	 RIP: 465f9d	 Bytes: 6
  %loadMem_465f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465f9d = call %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465f9d)
  store %struct.Memory* %call_465f9d, %struct.Memory** %MEMORY

  ; Code: cmpl -0x230(%rbp), %eax	 RIP: 465fa3	 Bytes: 6
  %loadMem_465fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465fa3 = call %struct.Memory* @routine_cmpl_MINUS0x230__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465fa3)
  store %struct.Memory* %call_465fa3, %struct.Memory** %MEMORY

  ; Code: jge .L_466008	 RIP: 465fa9	 Bytes: 6
  %loadMem_465fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465fa9 = call %struct.Memory* @routine_jge_.L_466008(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465fa9, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_465fa9, %struct.Memory** %MEMORY

  %loadBr_465fa9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465fa9 = icmp eq i8 %loadBr_465fa9, 1
  br i1 %cmpBr_465fa9, label %block_.L_466008, label %block_465faf

block_465faf:
  ; Code: movslq -0x200(%rbp), %rax	 RIP: 465faf	 Bytes: 7
  %loadMem_465faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465faf = call %struct.Memory* @routine_movslq_MINUS0x200__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465faf)
  store %struct.Memory* %call_465faf, %struct.Memory** %MEMORY

  ; Code: movl -0x290(%rbp,%rax,4), %ecx	 RIP: 465fb6	 Bytes: 7
  %loadMem_465fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465fb6 = call %struct.Memory* @routine_movl_MINUS0x290__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465fb6)
  store %struct.Memory* %call_465fb6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x29c(%rbp)	 RIP: 465fbd	 Bytes: 6
  %loadMem_465fbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465fbd = call %struct.Memory* @routine_movl__ecx__MINUS0x29c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465fbd)
  store %struct.Memory* %call_465fbd, %struct.Memory** %MEMORY

  ; Code: movl -0x29c(%rbp), %edi	 RIP: 465fc3	 Bytes: 6
  %loadMem_465fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465fc3 = call %struct.Memory* @routine_movl_MINUS0x29c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465fc3)
  store %struct.Memory* %call_465fc3, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 465fc9	 Bytes: 3
  %loadMem_465fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465fc9 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465fc9)
  store %struct.Memory* %call_465fc9, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_string	 RIP: 465fcc	 Bytes: 5
  %loadMem1_465fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465fcc = call %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465fcc, i64 -333084, i64 5, i64 5)
  store %struct.Memory* %call1_465fcc, %struct.Memory** %MEMORY

  %loadMem2_465fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465fcc = load i64, i64* %3
  %call2_465fcc = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64  %loadPC_465fcc, %struct.Memory* %loadMem2_465fcc)
  store %struct.Memory* %call2_465fcc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 465fd1	 Bytes: 3
  %loadMem_465fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465fd1 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465fd1)
  store %struct.Memory* %call_465fd1, %struct.Memory** %MEMORY

  ; Code: je .L_465fdf	 RIP: 465fd4	 Bytes: 6
  %loadMem_465fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465fd4 = call %struct.Memory* @routine_je_.L_465fdf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465fd4, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_465fd4, %struct.Memory** %MEMORY

  %loadBr_465fd4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465fd4 = icmp eq i8 %loadBr_465fd4, 1
  br i1 %cmpBr_465fd4, label %block_.L_465fdf, label %block_465fda

block_465fda:
  ; Code: jmpq .L_465ff4	 RIP: 465fda	 Bytes: 5
  %loadMem_465fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465fda = call %struct.Memory* @routine_jmpq_.L_465ff4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465fda, i64 26, i64 5)
  store %struct.Memory* %call_465fda, %struct.Memory** %MEMORY

  br label %block_.L_465ff4

  ; Code: .L_465fdf:	 RIP: 465fdf	 Bytes: 0
block_.L_465fdf:

  ; Code: leaq -0x1f0(%rbp), %rdx	 RIP: 465fdf	 Bytes: 7
  %loadMem_465fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465fdf = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465fdf)
  store %struct.Memory* %call_465fdf, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465fe6	 Bytes: 3
  %loadMem_465fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465fe6 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465fe6)
  store %struct.Memory* %call_465fe6, %struct.Memory** %MEMORY

  ; Code: movl -0x29c(%rbp), %esi	 RIP: 465fe9	 Bytes: 6
  %loadMem_465fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465fe9 = call %struct.Memory* @routine_movl_MINUS0x29c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465fe9)
  store %struct.Memory* %call_465fe9, %struct.Memory** %MEMORY

  ; Code: callq .special_rescue_moves	 RIP: 465fef	 Bytes: 5
  %loadMem1_465fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465fef = call %struct.Memory* @routine_callq_.special_rescue_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465fef, i64 8417, i64 5, i64 5)
  store %struct.Memory* %call1_465fef, %struct.Memory** %MEMORY

  %loadMem2_465fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465fef = load i64, i64* %3
  %call2_465fef = call %struct.Memory* @sub_4680d0.special_rescue_moves(%struct.State* %0, i64  %loadPC_465fef, %struct.Memory* %loadMem2_465fef)
  store %struct.Memory* %call2_465fef, %struct.Memory** %MEMORY

  ; Code: .L_465ff4:	 RIP: 465ff4	 Bytes: 0
  br label %block_.L_465ff4
block_.L_465ff4:

  ; Code: movl -0x200(%rbp), %eax	 RIP: 465ff4	 Bytes: 6
  %loadMem_465ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ff4 = call %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ff4)
  store %struct.Memory* %call_465ff4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 465ffa	 Bytes: 3
  %loadMem_465ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ffa = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ffa)
  store %struct.Memory* %call_465ffa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x200(%rbp)	 RIP: 465ffd	 Bytes: 6
  %loadMem_465ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465ffd = call %struct.Memory* @routine_movl__eax__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465ffd)
  store %struct.Memory* %call_465ffd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_465f9d	 RIP: 466003	 Bytes: 5
  %loadMem_466003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466003 = call %struct.Memory* @routine_jmpq_.L_465f9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466003, i64 -102, i64 5)
  store %struct.Memory* %call_466003, %struct.Memory** %MEMORY

  br label %block_.L_465f9d

  ; Code: .L_466008:	 RIP: 466008	 Bytes: 0
block_.L_466008:

  ; Code: jmpq .L_46600d	 RIP: 466008	 Bytes: 5
  %loadMem_466008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466008 = call %struct.Memory* @routine_jmpq_.L_46600d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466008, i64 5, i64 5)
  store %struct.Memory* %call_466008, %struct.Memory** %MEMORY

  br label %block_.L_46600d

  ; Code: .L_46600d:	 RIP: 46600d	 Bytes: 0
block_.L_46600d:

  ; Code: movl 0xb54ce4, %eax	 RIP: 46600d	 Bytes: 7
  %loadMem_46600d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46600d = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46600d)
  store %struct.Memory* %call_46600d, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8af28, %eax	 RIP: 466014	 Bytes: 7
  %loadMem_466014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466014 = call %struct.Memory* @routine_cmpl_0xb8af28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466014)
  store %struct.Memory* %call_466014, %struct.Memory** %MEMORY

  ; Code: jg .L_466030	 RIP: 46601b	 Bytes: 6
  %loadMem_46601b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46601b = call %struct.Memory* @routine_jg_.L_466030(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46601b, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_46601b, %struct.Memory** %MEMORY

  %loadBr_46601b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46601b = icmp eq i8 %loadBr_46601b, 1
  br i1 %cmpBr_46601b, label %block_.L_466030, label %block_466021

block_466021:
  ; Code: leaq -0x1f0(%rbp), %rsi	 RIP: 466021	 Bytes: 7
  %loadMem_466021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466021 = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466021)
  store %struct.Memory* %call_466021, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 466028	 Bytes: 3
  %loadMem_466028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466028 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466028)
  store %struct.Memory* %call_466028, %struct.Memory** %MEMORY

  ; Code: callq .break_chain3_moves	 RIP: 46602b	 Bytes: 5
  %loadMem1_46602b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46602b = call %struct.Memory* @routine_callq_.break_chain3_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46602b, i64 11557, i64 5, i64 5)
  store %struct.Memory* %call1_46602b, %struct.Memory** %MEMORY

  %loadMem2_46602b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46602b = load i64, i64* %3
  %call2_46602b = call %struct.Memory* @sub_468d50.break_chain3_moves(%struct.State* %0, i64  %loadPC_46602b, %struct.Memory* %loadMem2_46602b)
  store %struct.Memory* %call2_46602b, %struct.Memory** %MEMORY

  ; Code: .L_466030:	 RIP: 466030	 Bytes: 0
  br label %block_.L_466030
block_.L_466030:

  ; Code: leaq -0x1f0(%rbp), %rsi	 RIP: 466030	 Bytes: 7
  %loadMem_466030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466030 = call %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466030)
  store %struct.Memory* %call_466030, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 466037	 Bytes: 3
  %loadMem_466037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466037 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466037)
  store %struct.Memory* %call_466037, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 46603a	 Bytes: 3
  %loadMem_46603a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46603a = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46603a)
  store %struct.Memory* %call_46603a, %struct.Memory** %MEMORY

  ; Code: movq -0x208(%rbp), %rcx	 RIP: 46603d	 Bytes: 7
  %loadMem_46603d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46603d = call %struct.Memory* @routine_movq_MINUS0x208__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46603d)
  store %struct.Memory* %call_46603d, %struct.Memory** %MEMORY

  ; Code: movl -0x1f4(%rbp), %r8d	 RIP: 466044	 Bytes: 7
  %loadMem_466044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466044 = call %struct.Memory* @routine_movl_MINUS0x1f4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466044)
  store %struct.Memory* %call_466044, %struct.Memory** %MEMORY

  ; Code: callq .order_moves	 RIP: 46604b	 Bytes: 5
  %loadMem1_46604b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46604b = call %struct.Memory* @routine_callq_.order_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46604b, i64 -13243, i64 5, i64 5)
  store %struct.Memory* %call1_46604b, %struct.Memory** %MEMORY

  %loadMem2_46604b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46604b = load i64, i64* %3
  %call2_46604b = call %struct.Memory* @sub_462c90.order_moves(%struct.State* %0, i64  %loadPC_46604b, %struct.Memory* %loadMem2_46604b)
  store %struct.Memory* %call2_46604b, %struct.Memory** %MEMORY

  ; Code: movl -0x1f4(%rbp), %edx	 RIP: 466050	 Bytes: 6
  %loadMem_466050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466050 = call %struct.Memory* @routine_movl_MINUS0x1f4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466050)
  store %struct.Memory* %call_466050, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x200(%rbp)	 RIP: 466056	 Bytes: 6
  %loadMem_466056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466056 = call %struct.Memory* @routine_movl__edx__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466056)
  store %struct.Memory* %call_466056, %struct.Memory** %MEMORY

  ; Code: .L_46605c:	 RIP: 46605c	 Bytes: 0
  br label %block_.L_46605c
block_.L_46605c:

  ; Code: movl -0x200(%rbp), %eax	 RIP: 46605c	 Bytes: 6
  %loadMem_46605c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46605c = call %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46605c)
  store %struct.Memory* %call_46605c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x60(%rbp), %eax	 RIP: 466062	 Bytes: 3
  %loadMem_466062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466062 = call %struct.Memory* @routine_cmpl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466062)
  store %struct.Memory* %call_466062, %struct.Memory** %MEMORY

  ; Code: jge .L_4662b6	 RIP: 466065	 Bytes: 6
  %loadMem_466065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466065 = call %struct.Memory* @routine_jge_.L_4662b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466065, i8* %BRANCH_TAKEN, i64 593, i64 6, i64 6)
  store %struct.Memory* %call_466065, %struct.Memory** %MEMORY

  %loadBr_466065 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466065 = icmp eq i8 %loadBr_466065, 1
  br i1 %cmpBr_466065, label %block_.L_4662b6, label %block_46606b

block_46606b:
  ; Code: xorl %eax, %eax	 RIP: 46606b	 Bytes: 2
  %loadMem_46606b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46606b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46606b)
  store %struct.Memory* %call_46606b, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 46606d	 Bytes: 2
  %loadMem_46606d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46606d = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46606d)
  store %struct.Memory* %call_46606d, %struct.Memory** %MEMORY

  ; Code: movslq -0x200(%rbp), %rdx	 RIP: 46606f	 Bytes: 7
  %loadMem_46606f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46606f = call %struct.Memory* @routine_movslq_MINUS0x200__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46606f)
  store %struct.Memory* %call_46606f, %struct.Memory** %MEMORY

  ; Code: movl -0x1f0(%rbp,%rdx,4), %eax	 RIP: 466076	 Bytes: 7
  %loadMem_466076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466076 = call %struct.Memory* @routine_movl_MINUS0x1f0__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466076)
  store %struct.Memory* %call_466076, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 46607d	 Bytes: 3
  %loadMem_46607d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46607d = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46607d)
  store %struct.Memory* %call_46607d, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edi	 RIP: 466080	 Bytes: 3
  %loadMem_466080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466080 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466080)
  store %struct.Memory* %call_466080, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 466083	 Bytes: 3
  %loadMem_466083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466083 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466083)
  store %struct.Memory* %call_466083, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 466086	 Bytes: 3
  %loadMem_466086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466086 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466086)
  store %struct.Memory* %call_466086, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 466089	 Bytes: 4
  %loadMem_466089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466089 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466089)
  store %struct.Memory* %call_466089, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r9d	 RIP: 46608d	 Bytes: 4
  %loadMem_46608d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46608d = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46608d)
  store %struct.Memory* %call_46608d, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %r10d	 RIP: 466091	 Bytes: 8
  %loadMem_466091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466091 = call %struct.Memory* @routine_movl_0xb54ce4___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466091)
  store %struct.Memory* %call_466091, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b850, %r10d	 RIP: 466099	 Bytes: 8
  %loadMem_466099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466099 = call %struct.Memory* @routine_cmpl_0xb8b850___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466099)
  store %struct.Memory* %call_466099, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x330(%rbp)	 RIP: 4660a1	 Bytes: 7
  %loadMem_4660a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4660a1 = call %struct.Memory* @routine_movl__r9d__MINUS0x330__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4660a1)
  store %struct.Memory* %call_4660a1, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x334(%rbp)	 RIP: 4660a8	 Bytes: 6
  %loadMem_4660a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4660a8 = call %struct.Memory* @routine_movl__edi__MINUS0x334__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4660a8)
  store %struct.Memory* %call_4660a8, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x338(%rbp)	 RIP: 4660ae	 Bytes: 6
  %loadMem_4660ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4660ae = call %struct.Memory* @routine_movl__esi__MINUS0x338__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4660ae)
  store %struct.Memory* %call_4660ae, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x33c(%rbp)	 RIP: 4660b4	 Bytes: 6
  %loadMem_4660b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4660b4 = call %struct.Memory* @routine_movl__eax__MINUS0x33c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4660b4)
  store %struct.Memory* %call_4660b4, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x340(%rbp)	 RIP: 4660ba	 Bytes: 7
  %loadMem_4660ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4660ba = call %struct.Memory* @routine_movl__r8d__MINUS0x340__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4660ba)
  store %struct.Memory* %call_4660ba, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x341(%rbp)	 RIP: 4660c1	 Bytes: 6
  %loadMem_4660c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4660c1 = call %struct.Memory* @routine_movb__cl__MINUS0x341__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4660c1)
  store %struct.Memory* %call_4660c1, %struct.Memory** %MEMORY

  ; Code: jg .L_4660dd	 RIP: 4660c7	 Bytes: 6
  %loadMem_4660c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4660c7 = call %struct.Memory* @routine_jg_.L_4660dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4660c7, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4660c7, %struct.Memory** %MEMORY

  %loadBr_4660c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4660c7 = icmp eq i8 %loadBr_4660c7, 1
  br i1 %cmpBr_4660c7, label %block_.L_4660dd, label %block_4660cd

block_4660cd:
  ; Code: cmpl $0x0, -0x1fc(%rbp)	 RIP: 4660cd	 Bytes: 7
  %loadMem_4660cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4660cd = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4660cd)
  store %struct.Memory* %call_4660cd, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 4660d4	 Bytes: 3
  %loadMem_4660d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4660d4 = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4660d4)
  store %struct.Memory* %call_4660d4, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x341(%rbp)	 RIP: 4660d7	 Bytes: 6
  %loadMem_4660d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4660d7 = call %struct.Memory* @routine_movb__al__MINUS0x341__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4660d7)
  store %struct.Memory* %call_4660d7, %struct.Memory** %MEMORY

  ; Code: .L_4660dd:	 RIP: 4660dd	 Bytes: 0
  br label %block_.L_4660dd
block_.L_4660dd:

  ; Code: movb -0x341(%rbp), %al	 RIP: 4660dd	 Bytes: 6
  %loadMem_4660dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4660dd = call %struct.Memory* @routine_movb_MINUS0x341__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4660dd)
  store %struct.Memory* %call_4660dd, %struct.Memory** %MEMORY

  ; Code: movq $0x57fccd, %rdx	 RIP: 4660e3	 Bytes: 10
  %loadMem_4660e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4660e3 = call %struct.Memory* @routine_movq__0x57fccd___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4660e3)
  store %struct.Memory* %call_4660e3, %struct.Memory** %MEMORY

  ; Code: leaq -0x2a0(%rbp), %rcx	 RIP: 4660ed	 Bytes: 7
  %loadMem_4660ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4660ed = call %struct.Memory* @routine_leaq_MINUS0x2a0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4660ed)
  store %struct.Memory* %call_4660ed, %struct.Memory** %MEMORY

  ; Code: leaq -0x2a4(%rbp), %rsi	 RIP: 4660f4	 Bytes: 7
  %loadMem_4660f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4660f4 = call %struct.Memory* @routine_leaq_MINUS0x2a4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4660f4)
  store %struct.Memory* %call_4660f4, %struct.Memory** %MEMORY

  ; Code: leaq -0x2a8(%rbp), %rdi	 RIP: 4660fb	 Bytes: 7
  %loadMem_4660fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4660fb = call %struct.Memory* @routine_leaq_MINUS0x2a8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4660fb)
  store %struct.Memory* %call_4660fb, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 466102	 Bytes: 2
  %loadMem_466102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466102 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466102)
  store %struct.Memory* %call_466102, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %r8d	 RIP: 466104	 Bytes: 4
  %loadMem_466104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466104 = call %struct.Memory* @routine_movzbl__al___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466104)
  store %struct.Memory* %call_466104, %struct.Memory** %MEMORY

  ; Code: movl -0x334(%rbp), %r9d	 RIP: 466108	 Bytes: 7
  %loadMem_466108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466108 = call %struct.Memory* @routine_movl_MINUS0x334__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466108)
  store %struct.Memory* %call_466108, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x350(%rbp)	 RIP: 46610f	 Bytes: 7
  %loadMem_46610f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46610f = call %struct.Memory* @routine_movq__rdi__MINUS0x350__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46610f)
  store %struct.Memory* %call_46610f, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edi	 RIP: 466116	 Bytes: 3
  %loadMem_466116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466116 = call %struct.Memory* @routine_movl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466116)
  store %struct.Memory* %call_466116, %struct.Memory** %MEMORY

  ; Code: movl -0x338(%rbp), %r10d	 RIP: 466119	 Bytes: 7
  %loadMem_466119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466119 = call %struct.Memory* @routine_movl_MINUS0x338__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466119)
  store %struct.Memory* %call_466119, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x358(%rbp)	 RIP: 466120	 Bytes: 7
  %loadMem_466120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466120 = call %struct.Memory* @routine_movq__rsi__MINUS0x358__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466120)
  store %struct.Memory* %call_466120, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %esi	 RIP: 466127	 Bytes: 3
  %loadMem_466127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466127 = call %struct.Memory* @routine_movl__r10d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466127)
  store %struct.Memory* %call_466127, %struct.Memory** %MEMORY

  ; Code: movl -0x33c(%rbp), %r11d	 RIP: 46612a	 Bytes: 7
  %loadMem_46612a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46612a = call %struct.Memory* @routine_movl_MINUS0x33c__rbp____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46612a)
  store %struct.Memory* %call_46612a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x360(%rbp)	 RIP: 466131	 Bytes: 7
  %loadMem_466131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466131 = call %struct.Memory* @routine_movq__rcx__MINUS0x360__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466131)
  store %struct.Memory* %call_466131, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %ecx	 RIP: 466138	 Bytes: 3
  %loadMem_466138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466138 = call %struct.Memory* @routine_movl__r11d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466138)
  store %struct.Memory* %call_466138, %struct.Memory** %MEMORY

  ; Code: movl -0x340(%rbp), %ebx	 RIP: 46613b	 Bytes: 6
  %loadMem_46613b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46613b = call %struct.Memory* @routine_movl_MINUS0x340__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46613b)
  store %struct.Memory* %call_46613b, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x364(%rbp)	 RIP: 466141	 Bytes: 7
  %loadMem_466141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466141 = call %struct.Memory* @routine_movl__r8d__MINUS0x364__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466141)
  store %struct.Memory* %call_466141, %struct.Memory** %MEMORY

  ; Code: movl %ebx, %r8d	 RIP: 466148	 Bytes: 3
  %loadMem_466148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466148 = call %struct.Memory* @routine_movl__ebx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466148)
  store %struct.Memory* %call_466148, %struct.Memory** %MEMORY

  ; Code: movl -0x330(%rbp), %r9d	 RIP: 46614b	 Bytes: 7
  %loadMem_46614b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46614b = call %struct.Memory* @routine_movl_MINUS0x330__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46614b)
  store %struct.Memory* %call_46614b, %struct.Memory** %MEMORY

  ; Code: movq -0x360(%rbp), %r14	 RIP: 466152	 Bytes: 7
  %loadMem_466152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466152 = call %struct.Memory* @routine_movq_MINUS0x360__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466152)
  store %struct.Memory* %call_466152, %struct.Memory** %MEMORY

  ; Code: movq %r14, (%rsp)	 RIP: 466159	 Bytes: 4
  %loadMem_466159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466159 = call %struct.Memory* @routine_movq__r14____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466159)
  store %struct.Memory* %call_466159, %struct.Memory** %MEMORY

  ; Code: movq -0x358(%rbp), %r15	 RIP: 46615d	 Bytes: 7
  %loadMem_46615d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46615d = call %struct.Memory* @routine_movq_MINUS0x358__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46615d)
  store %struct.Memory* %call_46615d, %struct.Memory** %MEMORY

  ; Code: movq %r15, 0x8(%rsp)	 RIP: 466164	 Bytes: 5
  %loadMem_466164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466164 = call %struct.Memory* @routine_movq__r15__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466164)
  store %struct.Memory* %call_466164, %struct.Memory** %MEMORY

  ; Code: movq -0x350(%rbp), %r12	 RIP: 466169	 Bytes: 7
  %loadMem_466169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466169 = call %struct.Memory* @routine_movq_MINUS0x350__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466169)
  store %struct.Memory* %call_466169, %struct.Memory** %MEMORY

  ; Code: movq %r12, 0x10(%rsp)	 RIP: 466170	 Bytes: 5
  %loadMem_466170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466170 = call %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466170)
  store %struct.Memory* %call_466170, %struct.Memory** %MEMORY

  ; Code: movl -0x364(%rbp), %r13d	 RIP: 466175	 Bytes: 7
  %loadMem_466175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466175 = call %struct.Memory* @routine_movl_MINUS0x364__rbp____r13d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466175)
  store %struct.Memory* %call_466175, %struct.Memory** %MEMORY

  ; Code: movl %r13d, 0x18(%rsp)	 RIP: 46617c	 Bytes: 5
  %loadMem_46617c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46617c = call %struct.Memory* @routine_movl__r13d__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46617c)
  store %struct.Memory* %call_46617c, %struct.Memory** %MEMORY

  ; Code: callq .komaster_trymove	 RIP: 466181	 Bytes: 5
  %loadMem1_466181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_466181 = call %struct.Memory* @routine_callq_.komaster_trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_466181, i64 -357265, i64 5, i64 5)
  store %struct.Memory* %call1_466181, %struct.Memory** %MEMORY

  %loadMem2_466181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466181 = load i64, i64* %3
  %call2_466181 = call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* %0, i64  %loadPC_466181, %struct.Memory* %loadMem2_466181)
  store %struct.Memory* %call2_466181, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 466186	 Bytes: 3
  %loadMem_466186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466186 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466186)
  store %struct.Memory* %call_466186, %struct.Memory** %MEMORY

  ; Code: je .L_46629d	 RIP: 466189	 Bytes: 6
  %loadMem_466189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466189 = call %struct.Memory* @routine_je_.L_46629d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466189, i8* %BRANCH_TAKEN, i64 276, i64 6, i64 6)
  store %struct.Memory* %call_466189, %struct.Memory** %MEMORY

  %loadBr_466189 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466189 = icmp eq i8 %loadBr_466189, 1
  br i1 %cmpBr_466189, label %block_.L_46629d, label %block_46618f

block_46618f:
  ; Code: cmpl $0x0, -0x2a8(%rbp)	 RIP: 46618f	 Bytes: 7
  %loadMem_46618f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46618f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46618f)
  store %struct.Memory* %call_46618f, %struct.Memory** %MEMORY

  ; Code: jne .L_46625f	 RIP: 466196	 Bytes: 6
  %loadMem_466196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466196 = call %struct.Memory* @routine_jne_.L_46625f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466196, i8* %BRANCH_TAKEN, i64 201, i64 6, i64 6)
  store %struct.Memory* %call_466196, %struct.Memory** %MEMORY

  %loadBr_466196 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466196 = icmp eq i8 %loadBr_466196, 1
  br i1 %cmpBr_466196, label %block_.L_46625f, label %block_46619c

block_46619c:
  ; Code: xorl %eax, %eax	 RIP: 46619c	 Bytes: 2
  %loadMem_46619c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46619c = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46619c)
  store %struct.Memory* %call_46619c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46619e	 Bytes: 2
  %loadMem_46619e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46619e = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46619e)
  store %struct.Memory* %call_46619e, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4661a0	 Bytes: 3
  %loadMem_4661a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661a0 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661a0)
  store %struct.Memory* %call_4661a0, %struct.Memory** %MEMORY

  ; Code: movl -0x2a0(%rbp), %edx	 RIP: 4661a3	 Bytes: 6
  %loadMem_4661a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661a3 = call %struct.Memory* @routine_movl_MINUS0x2a0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661a3)
  store %struct.Memory* %call_4661a3, %struct.Memory** %MEMORY

  ; Code: movl -0x2a4(%rbp), %ecx	 RIP: 4661a9	 Bytes: 6
  %loadMem_4661a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661a9 = call %struct.Memory* @routine_movl_MINUS0x2a4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661a9)
  store %struct.Memory* %call_4661a9, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 4661af	 Bytes: 5
  %loadMem1_4661af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4661af = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4661af, i64 -33999, i64 5, i64 5)
  store %struct.Memory* %call1_4661af, %struct.Memory** %MEMORY

  %loadMem2_4661af = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4661af = load i64, i64* %3
  %call2_4661af = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_4661af, %struct.Memory* %loadMem2_4661af)
  store %struct.Memory* %call2_4661af, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2ac(%rbp)	 RIP: 4661b4	 Bytes: 6
  %loadMem_4661b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661b4 = call %struct.Memory* @routine_movl__eax__MINUS0x2ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661b4)
  store %struct.Memory* %call_4661b4, %struct.Memory** %MEMORY

  ; Code: callq .popgo	 RIP: 4661ba	 Bytes: 5
  %loadMem1_4661ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4661ba = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4661ba, i64 -361562, i64 5, i64 5)
  store %struct.Memory* %call1_4661ba, %struct.Memory** %MEMORY

  %loadMem2_4661ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4661ba = load i64, i64* %3
  %call2_4661ba = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_4661ba, %struct.Memory* %loadMem2_4661ba)
  store %struct.Memory* %call2_4661ba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x2ac(%rbp)	 RIP: 4661bf	 Bytes: 7
  %loadMem_4661bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661bf = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661bf)
  store %struct.Memory* %call_4661bf, %struct.Memory** %MEMORY

  ; Code: jne .L_46621f	 RIP: 4661c6	 Bytes: 6
  %loadMem_4661c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661c6 = call %struct.Memory* @routine_jne_.L_46621f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661c6, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_4661c6, %struct.Memory** %MEMORY

  %loadBr_4661c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4661c6 = icmp eq i8 %loadBr_4661c6, 1
  br i1 %cmpBr_4661c6, label %block_.L_46621f, label %block_4661cc

block_4661cc:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 4661cc	 Bytes: 5
  %loadMem_4661cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661cc = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661cc)
  store %struct.Memory* %call_4661cc, %struct.Memory** %MEMORY

  ; Code: je .L_4661e0	 RIP: 4661d1	 Bytes: 6
  %loadMem_4661d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661d1 = call %struct.Memory* @routine_je_.L_4661e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661d1, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_4661d1, %struct.Memory** %MEMORY

  %loadBr_4661d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4661d1 = icmp eq i8 %loadBr_4661d1, 1
  br i1 %cmpBr_4661d1, label %block_.L_4661e0, label %block_4661d7

block_4661d7:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 4661d7	 Bytes: 3
  %loadMem_4661d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661d7 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661d7)
  store %struct.Memory* %call_4661d7, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 4661da	 Bytes: 4
  %loadMem_4661da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661da = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661da)
  store %struct.Memory* %call_4661da, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 4661de	 Bytes: 2
  %loadMem_4661de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661de = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661de)
  store %struct.Memory* %call_4661de, %struct.Memory** %MEMORY

  ; Code: .L_4661e0:	 RIP: 4661e0	 Bytes: 0
  br label %block_.L_4661e0
block_.L_4661e0:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 4661e0	 Bytes: 9
  %loadMem_4661e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661e0 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661e0)
  store %struct.Memory* %call_4661e0, %struct.Memory** %MEMORY

  ; Code: je .L_466213	 RIP: 4661e9	 Bytes: 6
  %loadMem_4661e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661e9 = call %struct.Memory* @routine_je_.L_466213(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661e9, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_4661e9, %struct.Memory** %MEMORY

  %loadBr_4661e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4661e9 = icmp eq i8 %loadBr_4661e9, 1
  br i1 %cmpBr_4661e9, label %block_.L_466213, label %block_4661ef

block_4661ef:
  ; Code: movl $0x5, %ecx	 RIP: 4661ef	 Bytes: 5
  %loadMem_4661ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661ef = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661ef)
  store %struct.Memory* %call_4661ef, %struct.Memory** %MEMORY

  ; Code: movq $0x57fc87, %r8	 RIP: 4661f4	 Bytes: 10
  %loadMem_4661f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661f4 = call %struct.Memory* @routine_movq__0x57fc87___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661f4)
  store %struct.Memory* %call_4661f4, %struct.Memory** %MEMORY

  ; Code: movq -0x208(%rbp), %rdi	 RIP: 4661fe	 Bytes: 7
  %loadMem_4661fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4661fe = call %struct.Memory* @routine_movq_MINUS0x208__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4661fe)
  store %struct.Memory* %call_4661fe, %struct.Memory** %MEMORY

  ; Code: movl -0x20c(%rbp), %esi	 RIP: 466205	 Bytes: 6
  %loadMem_466205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466205 = call %struct.Memory* @routine_movl_MINUS0x20c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466205)
  store %struct.Memory* %call_466205, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 46620b	 Bytes: 3
  %loadMem_46620b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46620b = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46620b)
  store %struct.Memory* %call_46620b, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 46620e	 Bytes: 5
  %loadMem1_46620e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46620e = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46620e, i64 -320078, i64 5, i64 5)
  store %struct.Memory* %call1_46620e, %struct.Memory** %MEMORY

  %loadMem2_46620e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46620e = load i64, i64* %3
  %call2_46620e = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_46620e, %struct.Memory* %loadMem2_46620e)
  store %struct.Memory* %call2_46620e, %struct.Memory** %MEMORY

  ; Code: .L_466213:	 RIP: 466213	 Bytes: 0
  br label %block_.L_466213
block_.L_466213:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 466213	 Bytes: 7
  %loadMem_466213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466213 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466213)
  store %struct.Memory* %call_466213, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46639f	 RIP: 46621a	 Bytes: 5
  %loadMem_46621a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46621a = call %struct.Memory* @routine_jmpq_.L_46639f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46621a, i64 389, i64 5)
  store %struct.Memory* %call_46621a, %struct.Memory** %MEMORY

  br label %block_.L_46639f

  ; Code: .L_46621f:	 RIP: 46621f	 Bytes: 0
block_.L_46621f:

  ; Code: movl $0x5, %eax	 RIP: 46621f	 Bytes: 5
  %loadMem_46621f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46621f = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46621f)
  store %struct.Memory* %call_46621f, %struct.Memory** %MEMORY

  ; Code: subl -0x2ac(%rbp), %eax	 RIP: 466224	 Bytes: 6
  %loadMem_466224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466224 = call %struct.Memory* @routine_subl_MINUS0x2ac__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466224)
  store %struct.Memory* %call_466224, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1fc(%rbp), %eax	 RIP: 46622a	 Bytes: 6
  %loadMem_46622a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46622a = call %struct.Memory* @routine_cmpl_MINUS0x1fc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46622a)
  store %struct.Memory* %call_46622a, %struct.Memory** %MEMORY

  ; Code: jle .L_466250	 RIP: 466230	 Bytes: 6
  %loadMem_466230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466230 = call %struct.Memory* @routine_jle_.L_466250(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466230, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_466230, %struct.Memory** %MEMORY

  %loadBr_466230 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466230 = icmp eq i8 %loadBr_466230, 1
  br i1 %cmpBr_466230, label %block_.L_466250, label %block_466236

block_466236:
  ; Code: movl $0x5, %eax	 RIP: 466236	 Bytes: 5
  %loadMem_466236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466236 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466236)
  store %struct.Memory* %call_466236, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 46623b	 Bytes: 3
  %loadMem_46623b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46623b = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46623b)
  store %struct.Memory* %call_46623b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1f8(%rbp)	 RIP: 46623e	 Bytes: 6
  %loadMem_46623e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46623e = call %struct.Memory* @routine_movl__ecx__MINUS0x1f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46623e)
  store %struct.Memory* %call_46623e, %struct.Memory** %MEMORY

  ; Code: subl -0x2ac(%rbp), %eax	 RIP: 466244	 Bytes: 6
  %loadMem_466244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466244 = call %struct.Memory* @routine_subl_MINUS0x2ac__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466244)
  store %struct.Memory* %call_466244, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1fc(%rbp)	 RIP: 46624a	 Bytes: 6
  %loadMem_46624a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46624a = call %struct.Memory* @routine_movl__eax__MINUS0x1fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46624a)
  store %struct.Memory* %call_46624a, %struct.Memory** %MEMORY

  ; Code: .L_466250:	 RIP: 466250	 Bytes: 0
  br label %block_.L_466250
block_.L_466250:

  ; Code: jmpq .L_466255	 RIP: 466250	 Bytes: 5
  %loadMem_466250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466250 = call %struct.Memory* @routine_jmpq_.L_466255(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466250, i64 5, i64 5)
  store %struct.Memory* %call_466250, %struct.Memory** %MEMORY

  br label %block_.L_466255

  ; Code: .L_466255:	 RIP: 466255	 Bytes: 0
block_.L_466255:

  ; Code: jmpq .L_46625a	 RIP: 466255	 Bytes: 5
  %loadMem_466255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466255 = call %struct.Memory* @routine_jmpq_.L_46625a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466255, i64 5, i64 5)
  store %struct.Memory* %call_466255, %struct.Memory** %MEMORY

  br label %block_.L_46625a

  ; Code: .L_46625a:	 RIP: 46625a	 Bytes: 0
block_.L_46625a:

  ; Code: jmpq .L_466298	 RIP: 46625a	 Bytes: 5
  %loadMem_46625a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46625a = call %struct.Memory* @routine_jmpq_.L_466298(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46625a, i64 62, i64 5)
  store %struct.Memory* %call_46625a, %struct.Memory** %MEMORY

  br label %block_.L_466298

  ; Code: .L_46625f:	 RIP: 46625f	 Bytes: 0
block_.L_46625f:

  ; Code: xorl %eax, %eax	 RIP: 46625f	 Bytes: 2
  %loadMem_46625f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46625f = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46625f)
  store %struct.Memory* %call_46625f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 466261	 Bytes: 2
  %loadMem_466261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466261 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466261)
  store %struct.Memory* %call_466261, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 466263	 Bytes: 3
  %loadMem_466263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466263 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466263)
  store %struct.Memory* %call_466263, %struct.Memory** %MEMORY

  ; Code: movl -0x2a0(%rbp), %edx	 RIP: 466266	 Bytes: 6
  %loadMem_466266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466266 = call %struct.Memory* @routine_movl_MINUS0x2a0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466266)
  store %struct.Memory* %call_466266, %struct.Memory** %MEMORY

  ; Code: movl -0x2a4(%rbp), %ecx	 RIP: 46626c	 Bytes: 6
  %loadMem_46626c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46626c = call %struct.Memory* @routine_movl_MINUS0x2a4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46626c)
  store %struct.Memory* %call_46626c, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 466272	 Bytes: 5
  %loadMem1_466272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_466272 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_466272, i64 -34194, i64 5, i64 5)
  store %struct.Memory* %call1_466272, %struct.Memory** %MEMORY

  %loadMem2_466272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466272 = load i64, i64* %3
  %call2_466272 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_466272, %struct.Memory* %loadMem2_466272)
  store %struct.Memory* %call2_466272, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 466277	 Bytes: 3
  %loadMem_466277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466277 = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466277)
  store %struct.Memory* %call_466277, %struct.Memory** %MEMORY

  ; Code: je .L_466293	 RIP: 46627a	 Bytes: 6
  %loadMem_46627a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46627a = call %struct.Memory* @routine_je_.L_466293(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46627a, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_46627a, %struct.Memory** %MEMORY

  %loadBr_46627a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46627a = icmp eq i8 %loadBr_46627a, 1
  br i1 %cmpBr_46627a, label %block_.L_466293, label %block_466280

block_466280:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 466280	 Bytes: 3
  %loadMem_466280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466280 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466280)
  store %struct.Memory* %call_466280, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1f8(%rbp)	 RIP: 466283	 Bytes: 6
  %loadMem_466283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466283 = call %struct.Memory* @routine_movl__eax__MINUS0x1f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466283)
  store %struct.Memory* %call_466283, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x1fc(%rbp)	 RIP: 466289	 Bytes: 10
  %loadMem_466289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466289 = call %struct.Memory* @routine_movl__0x1__MINUS0x1fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466289)
  store %struct.Memory* %call_466289, %struct.Memory** %MEMORY

  ; Code: .L_466293:	 RIP: 466293	 Bytes: 0
  br label %block_.L_466293
block_.L_466293:

  ; Code: callq .popgo	 RIP: 466293	 Bytes: 5
  %loadMem1_466293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_466293 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_466293, i64 -361779, i64 5, i64 5)
  store %struct.Memory* %call1_466293, %struct.Memory** %MEMORY

  %loadMem2_466293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466293 = load i64, i64* %3
  %call2_466293 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_466293, %struct.Memory* %loadMem2_466293)
  store %struct.Memory* %call2_466293, %struct.Memory** %MEMORY

  ; Code: .L_466298:	 RIP: 466298	 Bytes: 0
  br label %block_.L_466298
block_.L_466298:

  ; Code: jmpq .L_46629d	 RIP: 466298	 Bytes: 5
  %loadMem_466298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466298 = call %struct.Memory* @routine_jmpq_.L_46629d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466298, i64 5, i64 5)
  store %struct.Memory* %call_466298, %struct.Memory** %MEMORY

  br label %block_.L_46629d

  ; Code: .L_46629d:	 RIP: 46629d	 Bytes: 0
block_.L_46629d:

  ; Code: jmpq .L_4662a2	 RIP: 46629d	 Bytes: 5
  %loadMem_46629d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46629d = call %struct.Memory* @routine_jmpq_.L_4662a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46629d, i64 5, i64 5)
  store %struct.Memory* %call_46629d, %struct.Memory** %MEMORY

  br label %block_.L_4662a2

  ; Code: .L_4662a2:	 RIP: 4662a2	 Bytes: 0
block_.L_4662a2:

  ; Code: movl -0x200(%rbp), %eax	 RIP: 4662a2	 Bytes: 6
  %loadMem_4662a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662a2 = call %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662a2)
  store %struct.Memory* %call_4662a2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4662a8	 Bytes: 3
  %loadMem_4662a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662a8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662a8)
  store %struct.Memory* %call_4662a8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x200(%rbp)	 RIP: 4662ab	 Bytes: 6
  %loadMem_4662ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662ab = call %struct.Memory* @routine_movl__eax__MINUS0x200__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662ab)
  store %struct.Memory* %call_4662ab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46605c	 RIP: 4662b1	 Bytes: 5
  %loadMem_4662b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662b1 = call %struct.Memory* @routine_jmpq_.L_46605c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662b1, i64 -597, i64 5)
  store %struct.Memory* %call_4662b1, %struct.Memory** %MEMORY

  br label %block_.L_46605c

  ; Code: .L_4662b6:	 RIP: 4662b6	 Bytes: 0
block_.L_4662b6:

  ; Code: cmpl $0x0, -0x1fc(%rbp)	 RIP: 4662b6	 Bytes: 7
  %loadMem_4662b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662b6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662b6)
  store %struct.Memory* %call_4662b6, %struct.Memory** %MEMORY

  ; Code: je .L_466367	 RIP: 4662bd	 Bytes: 6
  %loadMem_4662bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662bd = call %struct.Memory* @routine_je_.L_466367(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662bd, i8* %BRANCH_TAKEN, i64 170, i64 6, i64 6)
  store %struct.Memory* %call_4662bd, %struct.Memory** %MEMORY

  %loadBr_4662bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4662bd = icmp eq i8 %loadBr_4662bd, 1
  br i1 %cmpBr_4662bd, label %block_.L_466367, label %block_4662c3

block_4662c3:
  ; Code: jmpq .L_4662c8	 RIP: 4662c3	 Bytes: 5
  %loadMem_4662c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662c3 = call %struct.Memory* @routine_jmpq_.L_4662c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662c3, i64 5, i64 5)
  store %struct.Memory* %call_4662c3, %struct.Memory** %MEMORY

  br label %block_.L_4662c8

  ; Code: .L_4662c8:	 RIP: 4662c8	 Bytes: 0
block_.L_4662c8:

  ; Code: cmpl $0x0, -0x1fc(%rbp)	 RIP: 4662c8	 Bytes: 7
  %loadMem_4662c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662c8 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662c8)
  store %struct.Memory* %call_4662c8, %struct.Memory** %MEMORY

  ; Code: je .L_466328	 RIP: 4662cf	 Bytes: 6
  %loadMem_4662cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662cf = call %struct.Memory* @routine_je_.L_466328(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662cf, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_4662cf, %struct.Memory** %MEMORY

  %loadBr_4662cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4662cf = icmp eq i8 %loadBr_4662cf, 1
  br i1 %cmpBr_4662cf, label %block_.L_466328, label %block_4662d5

block_4662d5:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 4662d5	 Bytes: 5
  %loadMem_4662d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662d5 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662d5)
  store %struct.Memory* %call_4662d5, %struct.Memory** %MEMORY

  ; Code: je .L_4662ec	 RIP: 4662da	 Bytes: 6
  %loadMem_4662da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662da = call %struct.Memory* @routine_je_.L_4662ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662da, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4662da, %struct.Memory** %MEMORY

  %loadBr_4662da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4662da = icmp eq i8 %loadBr_4662da, 1
  br i1 %cmpBr_4662da, label %block_.L_4662ec, label %block_4662e0

block_4662e0:
  ; Code: movl -0x1f8(%rbp), %eax	 RIP: 4662e0	 Bytes: 6
  %loadMem_4662e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662e0 = call %struct.Memory* @routine_movl_MINUS0x1f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662e0)
  store %struct.Memory* %call_4662e0, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 4662e6	 Bytes: 4
  %loadMem_4662e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662e6 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662e6)
  store %struct.Memory* %call_4662e6, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 4662ea	 Bytes: 2
  %loadMem_4662ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662ea = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662ea)
  store %struct.Memory* %call_4662ea, %struct.Memory** %MEMORY

  ; Code: .L_4662ec:	 RIP: 4662ec	 Bytes: 0
  br label %block_.L_4662ec
block_.L_4662ec:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 4662ec	 Bytes: 9
  %loadMem_4662ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662ec = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662ec)
  store %struct.Memory* %call_4662ec, %struct.Memory** %MEMORY

  ; Code: je .L_466323	 RIP: 4662f5	 Bytes: 6
  %loadMem_4662f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662f5 = call %struct.Memory* @routine_je_.L_466323(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662f5, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_4662f5, %struct.Memory** %MEMORY

  %loadBr_4662f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4662f5 = icmp eq i8 %loadBr_4662f5, 1
  br i1 %cmpBr_4662f5, label %block_.L_466323, label %block_4662fb

block_4662fb:
  ; Code: movq $0x57f60a, %r8	 RIP: 4662fb	 Bytes: 10
  %loadMem_4662fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4662fb = call %struct.Memory* @routine_movq__0x57f60a___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4662fb)
  store %struct.Memory* %call_4662fb, %struct.Memory** %MEMORY

  ; Code: movq -0x208(%rbp), %rdi	 RIP: 466305	 Bytes: 7
  %loadMem_466305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466305 = call %struct.Memory* @routine_movq_MINUS0x208__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466305)
  store %struct.Memory* %call_466305, %struct.Memory** %MEMORY

  ; Code: movl -0x20c(%rbp), %esi	 RIP: 46630c	 Bytes: 6
  %loadMem_46630c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46630c = call %struct.Memory* @routine_movl_MINUS0x20c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46630c)
  store %struct.Memory* %call_46630c, %struct.Memory** %MEMORY

  ; Code: movl -0x1f8(%rbp), %edx	 RIP: 466312	 Bytes: 6
  %loadMem_466312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466312 = call %struct.Memory* @routine_movl_MINUS0x1f8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466312)
  store %struct.Memory* %call_466312, %struct.Memory** %MEMORY

  ; Code: movl -0x1fc(%rbp), %ecx	 RIP: 466318	 Bytes: 6
  %loadMem_466318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466318 = call %struct.Memory* @routine_movl_MINUS0x1fc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466318)
  store %struct.Memory* %call_466318, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 46631e	 Bytes: 5
  %loadMem1_46631e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46631e = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46631e, i64 -320350, i64 5, i64 5)
  store %struct.Memory* %call1_46631e, %struct.Memory** %MEMORY

  %loadMem2_46631e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46631e = load i64, i64* %3
  %call2_46631e = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_46631e, %struct.Memory* %loadMem2_46631e)
  store %struct.Memory* %call2_46631e, %struct.Memory** %MEMORY

  ; Code: .L_466323:	 RIP: 466323	 Bytes: 0
  br label %block_.L_466323
block_.L_466323:

  ; Code: jmpq .L_466359	 RIP: 466323	 Bytes: 5
  %loadMem_466323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466323 = call %struct.Memory* @routine_jmpq_.L_466359(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466323, i64 54, i64 5)
  store %struct.Memory* %call_466323, %struct.Memory** %MEMORY

  br label %block_.L_466359

  ; Code: .L_466328:	 RIP: 466328	 Bytes: 0
block_.L_466328:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 466328	 Bytes: 9
  %loadMem_466328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466328 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466328)
  store %struct.Memory* %call_466328, %struct.Memory** %MEMORY

  ; Code: je .L_466354	 RIP: 466331	 Bytes: 6
  %loadMem_466331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466331 = call %struct.Memory* @routine_je_.L_466354(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466331, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_466331, %struct.Memory** %MEMORY

  %loadBr_466331 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466331 = icmp eq i8 %loadBr_466331, 1
  br i1 %cmpBr_466331, label %block_.L_466354, label %block_466337

block_466337:
  ; Code: xorl %eax, %eax	 RIP: 466337	 Bytes: 2
  %loadMem_466337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466337 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466337)
  store %struct.Memory* %call_466337, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 466339	 Bytes: 2
  %loadMem_466339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466339 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466339)
  store %struct.Memory* %call_466339, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %r8d	 RIP: 46633b	 Bytes: 3
  %loadMem_46633b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46633b = call %struct.Memory* @routine_movl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46633b)
  store %struct.Memory* %call_46633b, %struct.Memory** %MEMORY

  ; Code: movq -0x208(%rbp), %rdi	 RIP: 46633e	 Bytes: 7
  %loadMem_46633e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46633e = call %struct.Memory* @routine_movq_MINUS0x208__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46633e)
  store %struct.Memory* %call_46633e, %struct.Memory** %MEMORY

  ; Code: movl -0x20c(%rbp), %esi	 RIP: 466345	 Bytes: 6
  %loadMem_466345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466345 = call %struct.Memory* @routine_movl_MINUS0x20c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466345)
  store %struct.Memory* %call_466345, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 46634b	 Bytes: 2
  %loadMem_46634b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46634b = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46634b)
  store %struct.Memory* %call_46634b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 46634d	 Bytes: 2
  %loadMem_46634d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46634d = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46634d)
  store %struct.Memory* %call_46634d, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 46634f	 Bytes: 5
  %loadMem1_46634f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46634f = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46634f, i64 -320399, i64 5, i64 5)
  store %struct.Memory* %call1_46634f, %struct.Memory** %MEMORY

  %loadMem2_46634f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46634f = load i64, i64* %3
  %call2_46634f = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_46634f, %struct.Memory* %loadMem2_46634f)
  store %struct.Memory* %call2_46634f, %struct.Memory** %MEMORY

  ; Code: .L_466354:	 RIP: 466354	 Bytes: 0
  br label %block_.L_466354
block_.L_466354:

  ; Code: jmpq .L_466359	 RIP: 466354	 Bytes: 5
  %loadMem_466354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466354 = call %struct.Memory* @routine_jmpq_.L_466359(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466354, i64 5, i64 5)
  store %struct.Memory* %call_466354, %struct.Memory** %MEMORY

  br label %block_.L_466359

  ; Code: .L_466359:	 RIP: 466359	 Bytes: 0
block_.L_466359:

  ; Code: movl -0x1fc(%rbp), %eax	 RIP: 466359	 Bytes: 6
  %loadMem_466359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466359 = call %struct.Memory* @routine_movl_MINUS0x1fc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466359)
  store %struct.Memory* %call_466359, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 46635f	 Bytes: 3
  %loadMem_46635f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46635f = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46635f)
  store %struct.Memory* %call_46635f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46639f	 RIP: 466362	 Bytes: 5
  %loadMem_466362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466362 = call %struct.Memory* @routine_jmpq_.L_46639f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466362, i64 61, i64 5)
  store %struct.Memory* %call_466362, %struct.Memory** %MEMORY

  br label %block_.L_46639f

  ; Code: .L_466367:	 RIP: 466367	 Bytes: 0
block_.L_466367:

  ; Code: jmpq .L_46636c	 RIP: 466367	 Bytes: 5
  %loadMem_466367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466367 = call %struct.Memory* @routine_jmpq_.L_46636c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466367, i64 5, i64 5)
  store %struct.Memory* %call_466367, %struct.Memory** %MEMORY

  br label %block_.L_46636c

  ; Code: .L_46636c:	 RIP: 46636c	 Bytes: 0
block_.L_46636c:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 46636c	 Bytes: 9
  %loadMem_46636c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46636c = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46636c)
  store %struct.Memory* %call_46636c, %struct.Memory** %MEMORY

  ; Code: je .L_466398	 RIP: 466375	 Bytes: 6
  %loadMem_466375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466375 = call %struct.Memory* @routine_je_.L_466398(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466375, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_466375, %struct.Memory** %MEMORY

  %loadBr_466375 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_466375 = icmp eq i8 %loadBr_466375, 1
  br i1 %cmpBr_466375, label %block_.L_466398, label %block_46637b

block_46637b:
  ; Code: xorl %eax, %eax	 RIP: 46637b	 Bytes: 2
  %loadMem_46637b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46637b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46637b)
  store %struct.Memory* %call_46637b, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 46637d	 Bytes: 2
  %loadMem_46637d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46637d = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46637d)
  store %struct.Memory* %call_46637d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %r8d	 RIP: 46637f	 Bytes: 3
  %loadMem_46637f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46637f = call %struct.Memory* @routine_movl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46637f)
  store %struct.Memory* %call_46637f, %struct.Memory** %MEMORY

  ; Code: movq -0x208(%rbp), %rdi	 RIP: 466382	 Bytes: 7
  %loadMem_466382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466382 = call %struct.Memory* @routine_movq_MINUS0x208__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466382)
  store %struct.Memory* %call_466382, %struct.Memory** %MEMORY

  ; Code: movl -0x20c(%rbp), %esi	 RIP: 466389	 Bytes: 6
  %loadMem_466389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466389 = call %struct.Memory* @routine_movl_MINUS0x20c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466389)
  store %struct.Memory* %call_466389, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 46638f	 Bytes: 2
  %loadMem_46638f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46638f = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46638f)
  store %struct.Memory* %call_46638f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 466391	 Bytes: 2
  %loadMem_466391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466391 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466391)
  store %struct.Memory* %call_466391, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 466393	 Bytes: 5
  %loadMem1_466393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_466393 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_466393, i64 -320467, i64 5, i64 5)
  store %struct.Memory* %call1_466393, %struct.Memory** %MEMORY

  %loadMem2_466393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_466393 = load i64, i64* %3
  %call2_466393 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_466393, %struct.Memory* %loadMem2_466393)
  store %struct.Memory* %call2_466393, %struct.Memory** %MEMORY

  ; Code: .L_466398:	 RIP: 466398	 Bytes: 0
  br label %block_.L_466398
block_.L_466398:

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 466398	 Bytes: 7
  %loadMem_466398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_466398 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_466398)
  store %struct.Memory* %call_466398, %struct.Memory** %MEMORY

  ; Code: .L_46639f:	 RIP: 46639f	 Bytes: 0
  br label %block_.L_46639f
block_.L_46639f:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 46639f	 Bytes: 3
  %loadMem_46639f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46639f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46639f)
  store %struct.Memory* %call_46639f, %struct.Memory** %MEMORY

  ; Code: addq $0x368, %rsp	 RIP: 4663a2	 Bytes: 7
  %loadMem_4663a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4663a2 = call %struct.Memory* @routine_addq__0x368___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4663a2)
  store %struct.Memory* %call_4663a2, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 4663a9	 Bytes: 1
  %loadMem_4663a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4663a9 = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4663a9)
  store %struct.Memory* %call_4663a9, %struct.Memory** %MEMORY

  ; Code: popq %r12	 RIP: 4663aa	 Bytes: 2
  %loadMem_4663aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4663aa = call %struct.Memory* @routine_popq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4663aa)
  store %struct.Memory* %call_4663aa, %struct.Memory** %MEMORY

  ; Code: popq %r13	 RIP: 4663ac	 Bytes: 2
  %loadMem_4663ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4663ac = call %struct.Memory* @routine_popq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4663ac)
  store %struct.Memory* %call_4663ac, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 4663ae	 Bytes: 2
  %loadMem_4663ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4663ae = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4663ae)
  store %struct.Memory* %call_4663ae, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 4663b0	 Bytes: 2
  %loadMem_4663b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4663b0 = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4663b0)
  store %struct.Memory* %call_4663b0, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4663b2	 Bytes: 1
  %loadMem_4663b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4663b2 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4663b2)
  store %struct.Memory* %call_4663b2, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4663b3	 Bytes: 1
  %loadMem_4663b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4663b3 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4663b3)
  store %struct.Memory* %call_4663b3, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4663b3
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

define %struct.Memory* @routine_subq__0x368___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 872)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 3)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x57a741___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57a741_type* @G__0x57a741 to i64))
  ret %struct.Memory* %11
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 504
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x1fc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 508
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__r8__MINUS0x208__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 520
  %14 = load i64, i64* %R8
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


define %struct.Memory* @routine_movl__ecx__MINUS0x20c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 524
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

define %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_je_.L_4655f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_4655f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_465621(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl__0x580___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1408)
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


define %struct.Memory* @routine_jne_.L_465637(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_46565f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x581___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1409)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57fcb0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fcb0_type* @G__0x57fcb0 to i64))
  ret %struct.Memory* %11
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x5c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_465682(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4656f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x584___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1412)
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




define %struct.Memory* @routine_movl__eax__MINUS0x2b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 688
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


define %struct.Memory* @routine_movq__rdx__MINUS0x2b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 696
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


define %struct.Memory* @routine_movl_MINUS0x2b0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 688
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


define %struct.Memory* @routine_movl__eax__MINUS0x2bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 700
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x2b8__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 696
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x2c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 704
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


define %struct.Memory* @routine_movl_MINUS0x2bc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 700
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2c0__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 704
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__0x0__MINUS0x200__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 512
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x200__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_cmpl_MINUS0x50__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 80
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

define %struct.Memory* @routine_jge_.L_46574b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x200__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x5c__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -92
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_movl__ecx__MINUS0x1f0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -496
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl__0x0__MINUS0x128__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -296
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_movl__eax__MINUS0x200__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 512
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4656fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 496
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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






define %struct.Memory* @routine_callq_.break_chain2_efficient_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 496
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x5c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 68
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






define %struct.Memory* @routine_callq_.edge_clamp_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jg_.L_4657bf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x1f0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 496
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_callq_.hane_rescue_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x208__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 520
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






define %struct.Memory* @routine_cmpl_MINUS0x60__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 96
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_465a65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jl_.L_46581a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x200__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 512
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_jle_.L_46581a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_465a65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movslq_MINUS0x200__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x1f0__rbp__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -496
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_movl__r9d__MINUS0x2c4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 708
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edi__MINUS0x2c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 712
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x2cc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 716
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x2d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 720
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x2d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 724
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

define %struct.Memory* @routine_movb__cl__MINUS0x2d5__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 725
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jg_.L_46588c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x1fc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 508
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


define %struct.Memory* @routine_movb__al__MINUS0x2d5__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 725
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

define %struct.Memory* @routine_movb_MINUS0x2d5__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 725
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__0x57fcc3___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fcc3_type* @G__0x57fcc3 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x210__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x214__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 532
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x218__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 536
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


define %struct.Memory* @routine_movl_MINUS0x2c8__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 712
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdi__MINUS0x2e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 736
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


define %struct.Memory* @routine_movl_MINUS0x2cc__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 716
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x2e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 744
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


define %struct.Memory* @routine_movl_MINUS0x2d0__rbp____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 720
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x2f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 752
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


define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 724
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r8d__MINUS0x2f4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 756
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


define %struct.Memory* @routine_movl_MINUS0x2c4__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 708
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x2f0__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 752
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


define %struct.Memory* @routine_movq_MINUS0x2e8__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 744
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


define %struct.Memory* @routine_movq_MINUS0x2e0__rbp____r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 736
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


define %struct.Memory* @routine_movl_MINUS0x2f4__rbp____r13d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 756
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


define %struct.Memory* @routine_je_.L_465a4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x218__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 536
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_465a0e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x210__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x214__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 532
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x21c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 540
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x21c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 540
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4659ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_46598f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_4659c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57fc87___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57fc87_type* @G__0x57fc87 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x208__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 520
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x20c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 524
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_jmpq_.L_46639f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_subl_MINUS0x21c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 540
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl_MINUS0x1fc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 508
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_4659ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x1f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 504
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__eax__MINUS0x1fc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 508
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_465a04(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_465a09(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_465a47(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_je_.L_465a42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x1f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 504
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x1__MINUS0x1fc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 508
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_465a4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_465a51(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4657e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x1f4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 500
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jg_.L_465a95(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_callq_.special_rescue3_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jg_.L_465af5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_465af0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x5c__rbp__rax_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -92
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_callq_.special_rescue_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_465ab3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_465af5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jl_.L_465b2b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_465b2b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x4___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_callq_.superstring_breakchain_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_465b4e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.break_chain2_defense_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_465b88(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_callq_.special_rescue5_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_callq_.special_rescue6_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x1f4__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 500
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x1f4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 500
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x200__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 512
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jge_.L_465e0e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_movl__r9d__MINUS0x2f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 760
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edi__MINUS0x2fc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 764
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x300__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 768
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x304__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 772
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x308__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 776
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movb__cl__MINUS0x309__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 777
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jg_.L_465c35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movb__al__MINUS0x309__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 777
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x309__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 777
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__0x57fccd___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fccd_type* @G__0x57fccd to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x220__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x224__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 548
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x228__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x2fc__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 764
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdi__MINUS0x318__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 792
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x300__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 768
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x320__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 800
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x304__rbp____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 772
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x328__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 808
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x308__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 776
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r8d__MINUS0x32c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 812
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x2f8__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 760
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x328__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 808
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x320__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 800
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x318__rbp____r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 792
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x32c__rbp____r13d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 812
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_je_.L_465df5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x228__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 552
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_465db7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x220__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x224__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 548
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x22c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 556
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x22c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 556
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_465d77(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_465d38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_465d6b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_subl_MINUS0x22c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 556
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jle_.L_465da8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_465dad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_465db2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_465df0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}
















define %struct.Memory* @routine_je_.L_465deb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_465df5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_465dfa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_465bb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jl_.L_46600d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_46600d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 560
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


define %struct.Memory* @routine_leaq_MINUS0x290__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 656
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






define %struct.Memory* @routine_cmpl_MINUS0x230__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 560
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_465f93(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x290__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -656
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__ecx__MINUS0x294__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 660
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x294__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 660
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




define %struct.Memory* @routine_je_.L_465ea0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_465f7f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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




define %struct.Memory* @routine_jle_.L_465f7a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_465ec5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x298__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 664
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x298__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 664
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_465f2e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x298__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 664
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x1f0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -496
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_cmpl_MINUS0x294__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 660
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_465f15(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x128__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -296
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


define %struct.Memory* @routine_movl__ecx__MINUS0x128__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -296
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_465f2e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_465f1a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x298__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 664
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_465ecf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_465f70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x32__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 50)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_465f70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x294__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 660
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x60__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x1f0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -496
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl__0x0__MINUS0x128__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -296
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}








define %struct.Memory* @routine_jmpq_.L_465f75(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_465f7a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jmpq_.L_465e5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jge_.L_466008(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x29c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 668
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x29c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 668
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_465fdf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_465ff4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl_MINUS0x29c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 668
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jmpq_.L_465f9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_46600d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jg_.L_466030(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.break_chain3_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jge_.L_4662b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_movl__r9d__MINUS0x330__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 816
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edi__MINUS0x334__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 820
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x338__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 824
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x33c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 828
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x340__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 832
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movb__cl__MINUS0x341__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 833
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jg_.L_4660dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movb__al__MINUS0x341__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 833
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x341__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 833
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_leaq_MINUS0x2a0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 672
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x2a4__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 676
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x2a8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x334__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 820
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdi__MINUS0x350__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 848
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x338__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 824
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x358__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 856
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x33c__rbp____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 828
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x360__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 864
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x340__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 832
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r8d__MINUS0x364__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 868
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x330__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 816
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x360__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 864
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x358__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 856
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x350__rbp____r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 848
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x364__rbp____r13d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 868
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_je_.L_46629d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x2a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 680
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46625f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x2a0__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 672
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2a4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 676
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x2ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 684
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x2ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 684
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46621f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_4661e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_466213(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_subl_MINUS0x2ac__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 684
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jle_.L_466250(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_466255(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_46625a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_466298(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}
















define %struct.Memory* @routine_je_.L_466293(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_46629d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4662a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_46605c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_466367(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4662c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_466328(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_4662ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x1f8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_466323(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x1f8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x1fc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 508
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_466359(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_466354(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x1fc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 508
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




define %struct.Memory* @routine_jmpq_.L_46636c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_466398(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x368___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 872)
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

