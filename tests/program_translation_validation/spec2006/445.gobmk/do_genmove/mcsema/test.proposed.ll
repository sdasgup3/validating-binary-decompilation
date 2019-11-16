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

declare %struct.Memory* @sub_47c350.start_timer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4274f0.get_level(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_425bd0.reset_engine(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_415e70.stones_on_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4275b0.find_mirror_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_425c60.examine_position(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_47c3d0.time_report(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_46e0c0.estimate_score(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_46cc10.print_moyo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_474e00.showboard(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_48a790.worm_reasons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44b4b0.owl_reasons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_424f30.fuseki(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_472fa0.shapes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_418700.combinations(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_47c690.review_move_reasons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4276d0.revise_thrashing_dragon(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_474900.endgame_shapes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4278f0.revise_semeai(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_423930.fill_liberty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_47c530.record_top_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_427a70.move_considered(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4049b0.aftermath_genmove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40ead0.is_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_408d30.test_gray_border(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x7ae448_type = type <{ [4 x i8] }>
@G_0x7ae448= global %G_0x7ae448_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7ae458_type = type <{ [4 x i8] }>
@G_0x7ae458= global %G_0x7ae458_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x99c0a0_type = type <{ [8 x i8] }>
@G_0x99c0a0= global %G_0x99c0a0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xab0eb8_type = type <{ [16 x i8] }>
@G_0xab0eb8= global %G_0xab0eb8_type <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>
%G_0xab0ec0_type = type <{ [16 x i8] }>
@G_0xab0ec0= global %G_0xab0ec0_type <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>
%G_0xab0ec8_type = type <{ [4 x i8] }>
@G_0xab0ec8= global %G_0xab0ec8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0ecc_type = type <{ [4 x i8] }>
@G_0xab0ecc= global %G_0xab0ecc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0ed0_type = type <{ [1 x i8] }>
@G_0xab0ed0= global %G_0xab0ed0_type <{ [1 x i8] c"\00" }>
%G_0xab0ed8_type = type <{ [1 x i8] }>
@G_0xab0ed8= global %G_0xab0ed8_type <{ [1 x i8] c"\00" }>
%G_0xab0ee4_type = type <{ [1 x i8] }>
@G_0xab0ee4= global %G_0xab0ee4_type <{ [1 x i8] c"\00" }>
%G_0xab0ee8_type = type <{ [4 x i8] }>
@G_0xab0ee8= global %G_0xab0ee8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0f0c_type = type <{ [1 x i8] }>
@G_0xab0f0c= global %G_0xab0f0c_type <{ [1 x i8] c"\00" }>
%G_0xab0f10_type = type <{ [1 x i8] }>
@G_0xab0f10= global %G_0xab0f10_type <{ [1 x i8] c"\00" }>
%G_0xab0f14_type = type <{ [16 x i8] }>
@G_0xab0f14= global %G_0xab0f14_type <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>
%G_0xab0f18_type = type <{ [4 x i8] }>
@G_0xab0f18= global %G_0xab0f18_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0f1c_type = type <{ [4 x i8] }>
@G_0xab0f1c= global %G_0xab0f1c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0f28_type = type <{ [4 x i8] }>
@G_0xab0f28= global %G_0xab0f28_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0fb8_type = type <{ [1 x i8] }>
@G_0xab0fb8= global %G_0xab0fb8_type <{ [1 x i8] c"\00" }>
%G_0xab0fbc_type = type <{ [1 x i8] }>
@G_0xab0fbc= global %G_0xab0fbc_type <{ [1 x i8] c"\00" }>
%G_0xab0fd0_type = type <{ [1 x i8] }>
@G_0xab0fd0= global %G_0xab0fd0_type <{ [1 x i8] c"\00" }>
%G_0xab0fd4_type = type <{ [1 x i8] }>
@G_0xab0fd4= global %G_0xab0fd4_type <{ [1 x i8] c"\00" }>
%G_0xab0fd8_type = type <{ [1 x i8] }>
@G_0xab0fd8= global %G_0xab0fd8_type <{ [1 x i8] c"\00" }>
%G_0xafdfb0_type = type <{ [4 x i8] }>
@G_0xafdfb0= global %G_0xafdfb0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb4a000_type = type <{ [4 x i8] }>
@G_0xb4a000= global %G_0xb4a000_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb4a004_type = type <{ [4 x i8] }>
@G_0xb4a004= global %G_0xb4a004_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb4a008_type = type <{ [4 x i8] }>
@G_0xb4a008= global %G_0xb4a008_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb4a00c_type = type <{ [4 x i8] }>
@G_0xb4a00c= global %G_0xb4a00c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb4a010_type = type <{ [4 x i8] }>
@G_0xb4a010= global %G_0xb4a010_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb4a014_type = type <{ [4 x i8] }>
@G_0xb4a014= global %G_0xb4a014_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
@G_0xb54ce4= global %G_0xb54ce4_type <{ [1 x i8] c"\00" }>
%G_0xb8b854_type = type <{ [4 x i8] }>
@G_0xb8b854= global %G_0xb8b854_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xbbc5d__rip__type = type <{ [8 x i8] }>
@G_0xbbc5d__rip_= global %G_0xbbc5d__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbbdd3__rip__type = type <{ [8 x i8] }>
@G_0xbbdd3__rip_= global %G_0xbbdd3__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbbf4a__rip__type = type <{ [8 x i8] }>
@G_0xbbf4a__rip_= global %G_0xbbf4a__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbbfdd__rip__type = type <{ [4 x i8] }>
@G_0xbbfdd__rip_= global %G_0xbbfdd__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xbc11e__rip__type = type <{ [8 x i8] }>
@G_0xbc11e__rip_= global %G_0xbc11e__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbc134__rip__type = type <{ [8 x i8] }>
@G_0xbc134__rip_= global %G_0xbc134__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbc13b__rip__type = type <{ [8 x i8] }>
@G_0xbc13b__rip_= global %G_0xbc13b__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbc164__rip__type = type <{ [4 x i8] }>
@G_0xbc164__rip_= global %G_0xbc164__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xbc1fe__rip__type = type <{ [8 x i8] }>
@G_0xbc1fe__rip_= global %G_0xbc1fe__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbc2d5__rip__type = type <{ [8 x i8] }>
@G_0xbc2d5__rip_= global %G_0xbc2d5__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbc34e__rip__type = type <{ [4 x i8] }>
@G_0xbc34e__rip_= global %G_0xbc34e__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xbc403__rip__type = type <{ [8 x i8] }>
@G_0xbc403__rip_= global %G_0xbc403__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbc456__rip__type = type <{ [8 x i8] }>
@G_0xbc456__rip_= global %G_0xbc456__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbc4ef__rip__type = type <{ [8 x i8] }>
@G_0xbc4ef__rip_= global %G_0xbc4ef__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbc542__rip__type = type <{ [8 x i8] }>
@G_0xbc542__rip_= global %G_0xbc542__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbc5f0__rip__type = type <{ [8 x i8] }>
@G_0xbc5f0__rip_= global %G_0xbc5f0__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbc659__rip__type = type <{ [8 x i8] }>
@G_0xbc659__rip_= global %G_0xbc659__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbc66d__rip__type = type <{ [4 x i8] }>
@G_0xbc66d__rip_= global %G_0xbc66d__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xbc882__rip__type = type <{ [8 x i8] }>
@G_0xbc882__rip_= global %G_0xbc882__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbcac8__rip__type = type <{ [8 x i8] }>
@G_0xbcac8__rip_= global %G_0xbcac8__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xbcdde__rip__type = type <{ [4 x i8] }>
@G_0xbcdde__rip_= global %G_0xbcdde__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x579da7_type = type <{ [8 x i8] }>
@G__0x579da7= global %G__0x579da7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x579daa_type = type <{ [8 x i8] }>
@G__0x579daa= global %G__0x579daa_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57a0c7_type = type <{ [8 x i8] }>
@G__0x57a0c7= global %G__0x57a0c7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57a0df_type = type <{ [8 x i8] }>
@G__0x57a0df= global %G__0x57a0df_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57a100_type = type <{ [8 x i8] }>
@G__0x57a100= global %G__0x57a100_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57a10c_type = type <{ [8 x i8] }>
@G__0x57a10c= global %G__0x57a10c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57a135_type = type <{ [8 x i8] }>
@G__0x57a135= global %G__0x57a135_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57a146_type = type <{ [8 x i8] }>
@G__0x57a146= global %G__0x57a146_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bf39_type = type <{ [8 x i8] }>
@G__0x57bf39= global %G__0x57bf39_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bfef_type = type <{ [8 x i8] }>
@G__0x57bfef= global %G__0x57bfef_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c05a_type = type <{ [8 x i8] }>
@G__0x57c05a= global %G__0x57c05a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c066_type = type <{ [8 x i8] }>
@G__0x57c066= global %G__0x57c066_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c08f_type = type <{ [8 x i8] }>
@G__0x57c08f= global %G__0x57c08f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c0a0_type = type <{ [8 x i8] }>
@G__0x57c0a0= global %G__0x57c0a0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c0af_type = type <{ [8 x i8] }>
@G__0x57c0af= global %G__0x57c0af_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c0d3_type = type <{ [8 x i8] }>
@G__0x57c0d3= global %G__0x57c0d3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c0ed_type = type <{ [8 x i8] }>
@G__0x57c0ed= global %G__0x57c0ed_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c10f_type = type <{ [8 x i8] }>
@G__0x57c10f= global %G__0x57c10f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c135_type = type <{ [8 x i8] }>
@G__0x57c135= global %G__0x57c135_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c13c_type = type <{ [8 x i8] }>
@G__0x57c13c= global %G__0x57c13c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c149_type = type <{ [8 x i8] }>
@G__0x57c149= global %G__0x57c149_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c15d_type = type <{ [8 x i8] }>
@G__0x57c15d= global %G__0x57c15d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c19b_type = type <{ [8 x i8] }>
@G__0x57c19b= global %G__0x57c19b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c1c3_type = type <{ [8 x i8] }>
@G__0x57c1c3= global %G__0x57c1c3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c1cb_type = type <{ [8 x i8] }>
@G__0x57c1cb= global %G__0x57c1cb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c1e5_type = type <{ [8 x i8] }>
@G__0x57c1e5= global %G__0x57c1e5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c1f2_type = type <{ [8 x i8] }>
@G__0x57c1f2= global %G__0x57c1f2_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c209_type = type <{ [8 x i8] }>
@G__0x57c209= global %G__0x57c209_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c220_type = type <{ [8 x i8] }>
@G__0x57c220= global %G__0x57c220_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c232_type = type <{ [8 x i8] }>
@G__0x57c232= global %G__0x57c232_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c24c_type = type <{ [8 x i8] }>
@G__0x57c24c= global %G__0x57c24c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c266_type = type <{ [8 x i8] }>
@G__0x57c266= global %G__0x57c266_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c280_type = type <{ [8 x i8] }>
@G__0x57c280= global %G__0x57c280_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c29a_type = type <{ [8 x i8] }>
@G__0x57c29a= global %G__0x57c29a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c2b4_type = type <{ [8 x i8] }>
@G__0x57c2b4= global %G__0x57c2b4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c2ce_type = type <{ [8 x i8] }>
@G__0x57c2ce= global %G__0x57c2ce_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c2e8_type = type <{ [8 x i8] }>
@G__0x57c2e8= global %G__0x57c2e8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c302_type = type <{ [8 x i8] }>
@G__0x57c302= global %G__0x57c302_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c312_type = type <{ [8 x i8] }>
@G__0x57c312= global %G__0x57c312_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c338_type = type <{ [8 x i8] }>
@G__0x57c338= global %G__0x57c338_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c353_type = type <{ [8 x i8] }>
@G__0x57c353= global %G__0x57c353_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x7ae448_type = type <{ [8 x i8] }>
@G__0x7ae448= global %G__0x7ae448_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xab0f18_type = type <{ [8 x i8] }>
@G__0xab0f18= global %G__0xab0f18_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xab0f1c_type = type <{ [8 x i8] }>
@G__0xab0f1c= global %G__0xab0f1c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb6e920_type = type <{ [8 x i8] }>
@G__0xb6e920= global %G__0xb6e920_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @do_genmove(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .do_genmove:	 RIP: 4262f0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4262f0	 Bytes: 1
  %loadMem_4262f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4262f0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4262f0)
  store %struct.Memory* %call_4262f0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4262f1	 Bytes: 3
  %loadMem_4262f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4262f1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4262f1)
  store %struct.Memory* %call_4262f1, %struct.Memory** %MEMORY

  ; Code: subq $0x1a0, %rsp	 RIP: 4262f4	 Bytes: 7
  %loadMem_4262f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4262f4 = call %struct.Memory* @routine_subq__0x1a0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4262f4)
  store %struct.Memory* %call_4262f4, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 4262fb	 Bytes: 2
  %loadMem_4262fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4262fb = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4262fb)
  store %struct.Memory* %call_4262fb, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 4262fd	 Bytes: 4
  %loadMem_4262fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4262fd = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4262fd)
  store %struct.Memory* %call_4262fd, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x14(%rbp)	 RIP: 426301	 Bytes: 3
  %loadMem_426301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426301 = call %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426301)
  store %struct.Memory* %call_426301, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x18(%rbp)	 RIP: 426304	 Bytes: 5
  %loadMem_426304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426304 = call %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426304)
  store %struct.Memory* %call_426304, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x20(%rbp)	 RIP: 426309	 Bytes: 4
  %loadMem_426309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426309 = call %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426309)
  store %struct.Memory* %call_426309, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 42630d	 Bytes: 2
  %loadMem_42630d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42630d = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42630d)
  store %struct.Memory* %call_42630d, %struct.Memory** %MEMORY

  ; Code: callq .start_timer	 RIP: 42630f	 Bytes: 5
  %loadMem1_42630f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42630f = call %struct.Memory* @routine_callq_.start_timer(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42630f, i64 352321, i64 5, i64 5)
  store %struct.Memory* %call1_42630f, %struct.Memory** %MEMORY

  %loadMem2_42630f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42630f = load i64, i64* %3
  %call2_42630f = call %struct.Memory* @sub_47c350.start_timer(%struct.State* %0, i64  %loadPC_42630f, %struct.Memory* %loadMem2_42630f)
  store %struct.Memory* %call2_42630f, %struct.Memory** %MEMORY

  ; Code: movq $0x7ae448, %rdi	 RIP: 426314	 Bytes: 10
  %loadMem_426314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426314 = call %struct.Memory* @routine_movq__0x7ae448___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426314)
  store %struct.Memory* %call_426314, %struct.Memory** %MEMORY

  ; Code: movss 0xbcdde(%rip), %xmm0	 RIP: 42631e	 Bytes: 8
  %loadMem_42631e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42631e = call %struct.Memory* @routine_movss_0xbcdde__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42631e)
  store %struct.Memory* %call_42631e, %struct.Memory** %MEMORY

  ; Code: movq $0xb6e920, %rdx	 RIP: 426326	 Bytes: 10
  %loadMem_426326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426326 = call %struct.Memory* @routine_movq__0xb6e920___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426326)
  store %struct.Memory* %call_426326, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 426330	 Bytes: 2
  %loadMem_426330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426330 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426330)
  store %struct.Memory* %call_426330, %struct.Memory** %MEMORY

  ; Code: movl $0x5a4, %eax	 RIP: 426332	 Bytes: 5
  %loadMem_426332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426332 = call %struct.Memory* @routine_movl__0x5a4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426332)
  store %struct.Memory* %call_426332, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 426337	 Bytes: 2
  %loadMem_426337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426337 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426337)
  store %struct.Memory* %call_426337, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x40(%rbp)	 RIP: 426339	 Bytes: 4
  %loadMem_426339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426339 = call %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426339)
  store %struct.Memory* %call_426339, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 42633d	 Bytes: 3
  %loadMem_42633d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42633d = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42633d)
  store %struct.Memory* %call_42633d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 426340	 Bytes: 3
  %loadMem_426340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426340 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426340)
  store %struct.Memory* %call_426340, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x44(%rbp)	 RIP: 426343	 Bytes: 5
  %loadMem_426343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426343 = call %struct.Memory* @routine_movss__xmm0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426343)
  store %struct.Memory* %call_426343, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 426348	 Bytes: 5
  %loadMem1_426348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426348 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426348, i64 -152280, i64 5, i64 5)
  store %struct.Memory* %call1_426348, %struct.Memory** %MEMORY

  %loadMem2_426348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426348 = load i64, i64* %3
  %call2_426348 = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_426348, %struct.Memory* %loadMem2_426348)
  store %struct.Memory* %call2_426348, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0xb4a000	 RIP: 42634d	 Bytes: 11
  %loadMem_42634d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42634d = call %struct.Memory* @routine_movl__0x0__0xb4a000(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42634d)
  store %struct.Memory* %call_42634d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0xb4a004	 RIP: 426358	 Bytes: 11
  %loadMem_426358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426358 = call %struct.Memory* @routine_movl__0x0__0xb4a004(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426358)
  store %struct.Memory* %call_426358, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0xb4a008	 RIP: 426363	 Bytes: 11
  %loadMem_426363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426363 = call %struct.Memory* @routine_movl__0x0__0xb4a008(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426363)
  store %struct.Memory* %call_426363, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0xb4a00c	 RIP: 42636e	 Bytes: 11
  %loadMem_42636e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42636e = call %struct.Memory* @routine_movl__0x0__0xb4a00c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42636e)
  store %struct.Memory* %call_42636e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0xb4a010	 RIP: 426379	 Bytes: 11
  %loadMem_426379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426379 = call %struct.Memory* @routine_movl__0x0__0xb4a010(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426379)
  store %struct.Memory* %call_426379, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0xb4a014	 RIP: 426384	 Bytes: 11
  %loadMem_426384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426384 = call %struct.Memory* @routine_movl__0x0__0xb4a014(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426384)
  store %struct.Memory* %call_426384, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42638f	 Bytes: 4
  %loadMem_42638f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42638f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42638f)
  store %struct.Memory* %call_42638f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx)	 RIP: 426393	 Bytes: 6
  %loadMem_426393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426393 = call %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426393)
  store %struct.Memory* %call_426393, %struct.Memory** %MEMORY

  ; Code: movss -0x44(%rbp), %xmm0	 RIP: 426399	 Bytes: 5
  %loadMem_426399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426399 = call %struct.Memory* @routine_movss_MINUS0x44__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426399)
  store %struct.Memory* %call_426399, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x24(%rbp)	 RIP: 42639e	 Bytes: 5
  %loadMem_42639e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42639e = call %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42639e)
  store %struct.Memory* %call_42639e, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 4263a3	 Bytes: 4
  %loadMem_4263a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4263a3 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4263a3)
  store %struct.Memory* %call_4263a3, %struct.Memory** %MEMORY

  ; Code: callq .get_level	 RIP: 4263a7	 Bytes: 5
  %loadMem1_4263a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4263a7 = call %struct.Memory* @routine_callq_.get_level(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4263a7, i64 4425, i64 5, i64 5)
  store %struct.Memory* %call1_4263a7, %struct.Memory** %MEMORY

  %loadMem2_4263a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4263a7 = load i64, i64* %3
  %call2_4263a7 = call %struct.Memory* @sub_4274f0.get_level(%struct.State* %0, i64  %loadPC_4263a7, %struct.Memory* %loadMem2_4263a7)
  store %struct.Memory* %call2_4263a7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4263ac	 Bytes: 3
  %loadMem_4263ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4263ac = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4263ac)
  store %struct.Memory* %call_4263ac, %struct.Memory** %MEMORY

  ; Code: je .L_4263d8	 RIP: 4263af	 Bytes: 6
  %loadMem_4263af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4263af = call %struct.Memory* @routine_je_.L_4263d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4263af, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_4263af, %struct.Memory** %MEMORY

  %loadBr_4263af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4263af = icmp eq i8 %loadBr_4263af, 1
  br i1 %cmpBr_4263af, label %block_.L_4263d8, label %block_4263b5

block_4263b5:
  ; Code: movq $0x57c05a, %rsi	 RIP: 4263b5	 Bytes: 10
  %loadMem_4263b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4263b5 = call %struct.Memory* @routine_movq__0x57c05a___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4263b5)
  store %struct.Memory* %call_4263b5, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4263bf	 Bytes: 8
  %loadMem_4263bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4263bf = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4263bf)
  store %struct.Memory* %call_4263bf, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae448, %edx	 RIP: 4263c7	 Bytes: 7
  %loadMem_4263c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4263c7 = call %struct.Memory* @routine_movl_0x7ae448___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4263c7)
  store %struct.Memory* %call_4263c7, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4263ce	 Bytes: 2
  %loadMem_4263ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4263ce = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4263ce)
  store %struct.Memory* %call_4263ce, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4263d0	 Bytes: 5
  %loadMem1_4263d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4263d0 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4263d0, i64 -152320, i64 5, i64 5)
  store %struct.Memory* %call1_4263d0, %struct.Memory** %MEMORY

  %loadMem2_4263d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4263d0 = load i64, i64* %3
  %call2_4263d0 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4263d0, %struct.Memory* %loadMem2_4263d0)
  store %struct.Memory* %call2_4263d0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 4263d5	 Bytes: 3
  %loadMem_4263d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4263d5 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4263d5)
  store %struct.Memory* %call_4263d5, %struct.Memory** %MEMORY

  ; Code: .L_4263d8:	 RIP: 4263d8	 Bytes: 0
  br label %block_.L_4263d8
block_.L_4263d8:

  ; Code: callq .reset_engine	 RIP: 4263d8	 Bytes: 5
  %loadMem1_4263d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4263d8 = call %struct.Memory* @routine_callq_.reset_engine(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4263d8, i64 -2056, i64 5, i64 5)
  store %struct.Memory* %call1_4263d8, %struct.Memory** %MEMORY

  %loadMem2_4263d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4263d8 = load i64, i64* %3
  %call2_4263d8 = call %struct.Memory* @sub_425bd0.reset_engine(%struct.State* %0, i64  %loadPC_4263d8, %struct.Memory* %loadMem2_4263d8)
  store %struct.Memory* %call2_4263d8, %struct.Memory** %MEMORY

  ; Code: movl 0xb8b854, %eax	 RIP: 4263dd	 Bytes: 7
  %loadMem_4263dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4263dd = call %struct.Memory* @routine_movl_0xb8b854___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4263dd)
  store %struct.Memory* %call_4263dd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 4263e4	 Bytes: 3
  %loadMem_4263e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4263e4 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4263e4)
  store %struct.Memory* %call_4263e4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0fd8	 RIP: 4263e7	 Bytes: 8
  %loadMem_4263e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4263e7 = call %struct.Memory* @routine_cmpl__0x0__0xab0fd8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4263e7)
  store %struct.Memory* %call_4263e7, %struct.Memory** %MEMORY

  ; Code: je .L_426468	 RIP: 4263ef	 Bytes: 6
  %loadMem_4263ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4263ef = call %struct.Memory* @routine_je_.L_426468(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4263ef, i8* %BRANCH_TAKEN, i64 121, i64 6, i64 6)
  store %struct.Memory* %call_4263ef, %struct.Memory** %MEMORY

  %loadBr_4263ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4263ef = icmp eq i8 %loadBr_4263ef, 1
  br i1 %cmpBr_4263ef, label %block_.L_426468, label %block_4263f5

block_4263f5:
  ; Code: cmpl $0x0, 0x7ae458	 RIP: 4263f5	 Bytes: 8
  %loadMem_4263f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4263f5 = call %struct.Memory* @routine_cmpl__0x0__0x7ae458(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4263f5)
  store %struct.Memory* %call_4263f5, %struct.Memory** %MEMORY

  ; Code: jl .L_42641a	 RIP: 4263fd	 Bytes: 6
  %loadMem_4263fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4263fd = call %struct.Memory* @routine_jl_.L_42641a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4263fd, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_4263fd, %struct.Memory** %MEMORY

  %loadBr_4263fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4263fd = icmp eq i8 %loadBr_4263fd, 1
  br i1 %cmpBr_4263fd, label %block_.L_42641a, label %block_426403

block_426403:
  ; Code: movl $0x3, %edi	 RIP: 426403	 Bytes: 5
  %loadMem_426403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426403 = call %struct.Memory* @routine_movl__0x3___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426403)
  store %struct.Memory* %call_426403, %struct.Memory** %MEMORY

  ; Code: callq .stones_on_board	 RIP: 426408	 Bytes: 5
  %loadMem1_426408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426408 = call %struct.Memory* @routine_callq_.stones_on_board(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426408, i64 -66968, i64 5, i64 5)
  store %struct.Memory* %call1_426408, %struct.Memory** %MEMORY

  %loadMem2_426408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426408 = load i64, i64* %3
  %call2_426408 = call %struct.Memory* @sub_415e70.stones_on_board(%struct.State* %0, i64  %loadPC_426408, %struct.Memory* %loadMem2_426408)
  store %struct.Memory* %call2_426408, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae458, %eax	 RIP: 42640d	 Bytes: 7
  %loadMem_42640d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42640d = call %struct.Memory* @routine_cmpl_0x7ae458___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42640d)
  store %struct.Memory* %call_42640d, %struct.Memory** %MEMORY

  ; Code: jg .L_426468	 RIP: 426414	 Bytes: 6
  %loadMem_426414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426414 = call %struct.Memory* @routine_jg_.L_426468(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426414, i8* %BRANCH_TAKEN, i64 84, i64 6, i64 6)
  store %struct.Memory* %call_426414, %struct.Memory** %MEMORY

  %loadBr_426414 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426414 = icmp eq i8 %loadBr_426414, 1
  br i1 %cmpBr_426414, label %block_.L_426468, label %block_.L_42641a

  ; Code: .L_42641a:	 RIP: 42641a	 Bytes: 0
block_.L_42641a:

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 42641a	 Bytes: 4
  %loadMem_42641a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42641a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42641a)
  store %struct.Memory* %call_42641a, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 42641e	 Bytes: 3
  %loadMem_42641e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42641e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42641e)
  store %struct.Memory* %call_42641e, %struct.Memory** %MEMORY

  ; Code: callq .find_mirror_move	 RIP: 426421	 Bytes: 5
  %loadMem1_426421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426421 = call %struct.Memory* @routine_callq_.find_mirror_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426421, i64 4495, i64 5, i64 5)
  store %struct.Memory* %call1_426421, %struct.Memory** %MEMORY

  %loadMem2_426421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426421 = load i64, i64* %3
  %call2_426421 = call %struct.Memory* @sub_4275b0.find_mirror_move(%struct.State* %0, i64  %loadPC_426421, %struct.Memory* %loadMem2_426421)
  store %struct.Memory* %call2_426421, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 426426	 Bytes: 3
  %loadMem_426426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426426 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426426)
  store %struct.Memory* %call_426426, %struct.Memory** %MEMORY

  ; Code: je .L_426468	 RIP: 426429	 Bytes: 6
  %loadMem_426429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426429 = call %struct.Memory* @routine_je_.L_426468(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426429, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_426429, %struct.Memory** %MEMORY

  %loadBr_426429 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426429 = icmp eq i8 %loadBr_426429, 1
  br i1 %cmpBr_426429, label %block_.L_426468, label %block_42642f

block_42642f:
  ; Code: cmpl $0x0, 0xab0f28	 RIP: 42642f	 Bytes: 8
  %loadMem_42642f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42642f = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42642f)
  store %struct.Memory* %call_42642f, %struct.Memory** %MEMORY

  ; Code: jne .L_426442	 RIP: 426437	 Bytes: 6
  %loadMem_426437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426437 = call %struct.Memory* @routine_jne_.L_426442(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426437, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426437, %struct.Memory** %MEMORY

  %loadBr_426437 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426437 = icmp eq i8 %loadBr_426437, 1
  br i1 %cmpBr_426437, label %block_.L_426442, label %block_42643d

block_42643d:
  ; Code: jmpq .L_42645c	 RIP: 42643d	 Bytes: 5
  %loadMem_42643d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42643d = call %struct.Memory* @routine_jmpq_.L_42645c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42643d, i64 31, i64 5)
  store %struct.Memory* %call_42643d, %struct.Memory** %MEMORY

  br label %block_.L_42645c

  ; Code: .L_426442:	 RIP: 426442	 Bytes: 0
block_.L_426442:

  ; Code: movq $0x57c066, %rdi	 RIP: 426442	 Bytes: 10
  %loadMem_426442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426442 = call %struct.Memory* @routine_movq__0x57c066___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426442)
  store %struct.Memory* %call_426442, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 42644c	 Bytes: 4
  %loadMem_42644c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42644c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42644c)
  store %struct.Memory* %call_42644c, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 426450	 Bytes: 2
  %loadMem_426450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426450 = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426450)
  store %struct.Memory* %call_426450, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 426452	 Bytes: 2
  %loadMem_426452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426452 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426452)
  store %struct.Memory* %call_426452, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 426454	 Bytes: 5
  %loadMem1_426454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426454 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426454, i64 178524, i64 5, i64 5)
  store %struct.Memory* %call1_426454, %struct.Memory** %MEMORY

  %loadMem2_426454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426454 = load i64, i64* %3
  %call2_426454 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_426454, %struct.Memory* %loadMem2_426454)
  store %struct.Memory* %call2_426454, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 426459	 Bytes: 3
  %loadMem_426459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426459 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426459)
  store %struct.Memory* %call_426459, %struct.Memory** %MEMORY

  ; Code: .L_42645c:	 RIP: 42645c	 Bytes: 0
  br label %block_.L_42645c
block_.L_42645c:

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 42645c	 Bytes: 7
  %loadMem_42645c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42645c = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42645c)
  store %struct.Memory* %call_42645c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4274e1	 RIP: 426463	 Bytes: 5
  %loadMem_426463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426463 = call %struct.Memory* @routine_jmpq_.L_4274e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426463, i64 4222, i64 5)
  store %struct.Memory* %call_426463, %struct.Memory** %MEMORY

  br label %block_.L_4274e1

  ; Code: .L_426468:	 RIP: 426468	 Bytes: 0
block_.L_426468:

  ; Code: movl $0x1, %edi	 RIP: 426468	 Bytes: 5
  %loadMem_426468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426468 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426468)
  store %struct.Memory* %call_426468, %struct.Memory** %MEMORY

  ; Code: callq .start_timer	 RIP: 42646d	 Bytes: 5
  %loadMem1_42646d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42646d = call %struct.Memory* @routine_callq_.start_timer(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42646d, i64 351971, i64 5, i64 5)
  store %struct.Memory* %call1_42646d, %struct.Memory** %MEMORY

  %loadMem2_42646d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42646d = load i64, i64* %3
  %call2_42646d = call %struct.Memory* @sub_47c350.start_timer(%struct.State* %0, i64  %loadPC_42646d, %struct.Memory* %loadMem2_42646d)
  store %struct.Memory* %call2_42646d, %struct.Memory** %MEMORY

  ; Code: movl $0x63, %esi	 RIP: 426472	 Bytes: 5
  %loadMem_426472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426472 = call %struct.Memory* @routine_movl__0x63___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426472)
  store %struct.Memory* %call_426472, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 426477	 Bytes: 3
  %loadMem_426477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426477 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426477)
  store %struct.Memory* %call_426477, %struct.Memory** %MEMORY

  ; Code: callq .examine_position	 RIP: 42647a	 Bytes: 5
  %loadMem1_42647a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42647a = call %struct.Memory* @routine_callq_.examine_position(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42647a, i64 -2074, i64 5, i64 5)
  store %struct.Memory* %call1_42647a, %struct.Memory** %MEMORY

  %loadMem2_42647a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42647a = load i64, i64* %3
  %call2_42647a = call %struct.Memory* @sub_425c60.examine_position(%struct.State* %0, i64  %loadPC_42647a, %struct.Memory* %loadMem2_42647a)
  store %struct.Memory* %call2_42647a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edi	 RIP: 42647f	 Bytes: 5
  %loadMem_42647f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42647f = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42647f)
  store %struct.Memory* %call_42647f, %struct.Memory** %MEMORY

  ; Code: movq $0x57c08f, %rsi	 RIP: 426484	 Bytes: 10
  %loadMem_426484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426484 = call %struct.Memory* @routine_movq__0x57c08f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426484)
  store %struct.Memory* %call_426484, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 42648e	 Bytes: 2
  %loadMem_42648e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42648e = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42648e)
  store %struct.Memory* %call_42648e, %struct.Memory** %MEMORY

  ; Code: movsd 0xbcac8(%rip), %xmm0	 RIP: 426490	 Bytes: 8
  %loadMem_426490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426490 = call %struct.Memory* @routine_movsd_0xbcac8__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426490)
  store %struct.Memory* %call_426490, %struct.Memory** %MEMORY

  ; Code: callq .time_report	 RIP: 426498	 Bytes: 5
  %loadMem1_426498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426498 = call %struct.Memory* @routine_callq_.time_report(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426498, i64 352056, i64 5, i64 5)
  store %struct.Memory* %call1_426498, %struct.Memory** %MEMORY

  %loadMem2_426498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426498 = load i64, i64* %3
  %call2_426498 = call %struct.Memory* @sub_47c3d0.time_report(%struct.State* %0, i64  %loadPC_426498, %struct.Memory* %loadMem2_426498)
  store %struct.Memory* %call2_426498, %struct.Memory** %MEMORY

  ; Code: cmpl $0x8, 0x7ae448	 RIP: 42649d	 Bytes: 8
  %loadMem_42649d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42649d = call %struct.Memory* @routine_cmpl__0x8__0x7ae448(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42649d)
  store %struct.Memory* %call_42649d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 4264a5	 Bytes: 5
  %loadMem_4264a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4264a5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4264a5)
  store %struct.Memory* %call_4264a5, %struct.Memory** %MEMORY

  ; Code: jl .L_426723	 RIP: 4264aa	 Bytes: 6
  %loadMem_4264aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4264aa = call %struct.Memory* @routine_jl_.L_426723(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4264aa, i8* %BRANCH_TAKEN, i64 633, i64 6, i64 6)
  store %struct.Memory* %call_4264aa, %struct.Memory** %MEMORY

  %loadBr_4264aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4264aa = icmp eq i8 %loadBr_4264aa, 1
  br i1 %cmpBr_4264aa, label %block_.L_426723, label %block_4264b0

block_4264b0:
  ; Code: movq $0xab0f18, %rdi	 RIP: 4264b0	 Bytes: 10
  %loadMem_4264b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4264b0 = call %struct.Memory* @routine_movq__0xab0f18___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4264b0)
  store %struct.Memory* %call_4264b0, %struct.Memory** %MEMORY

  ; Code: movq $0xab0f1c, %rsi	 RIP: 4264ba	 Bytes: 10
  %loadMem_4264ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4264ba = call %struct.Memory* @routine_movq__0xab0f1c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4264ba)
  store %struct.Memory* %call_4264ba, %struct.Memory** %MEMORY

  ; Code: callq .estimate_score	 RIP: 4264c4	 Bytes: 5
  %loadMem1_4264c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4264c4 = call %struct.Memory* @routine_callq_.estimate_score(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4264c4, i64 293884, i64 5, i64 5)
  store %struct.Memory* %call1_4264c4, %struct.Memory** %MEMORY

  %loadMem2_4264c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4264c4 = load i64, i64* %3
  %call2_4264c4 = call %struct.Memory* @sub_46e0c0.estimate_score(%struct.State* %0, i64  %loadPC_4264c4, %struct.Memory* %loadMem2_4264c4)
  store %struct.Memory* %call2_4264c4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 4264c9	 Bytes: 8
  %loadMem_4264c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4264c9 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4264c9)
  store %struct.Memory* %call_4264c9, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x5c(%rbp)	 RIP: 4264d1	 Bytes: 5
  %loadMem_4264d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4264d1 = call %struct.Memory* @routine_movss__xmm0__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4264d1)
  store %struct.Memory* %call_4264d1, %struct.Memory** %MEMORY

  ; Code: jne .L_4264ea	 RIP: 4264d6	 Bytes: 6
  %loadMem_4264d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4264d6 = call %struct.Memory* @routine_jne_.L_4264ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4264d6, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_4264d6, %struct.Memory** %MEMORY

  %loadBr_4264d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4264d6 = icmp eq i8 %loadBr_4264d6, 1
  br i1 %cmpBr_4264d6, label %block_.L_4264ea, label %block_4264dc

block_4264dc:
  ; Code: cmpl $0x0, 0xab0f10	 RIP: 4264dc	 Bytes: 8
  %loadMem_4264dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4264dc = call %struct.Memory* @routine_cmpl__0x0__0xab0f10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4264dc)
  store %struct.Memory* %call_4264dc, %struct.Memory** %MEMORY

  ; Code: je .L_4266c5	 RIP: 4264e4	 Bytes: 6
  %loadMem_4264e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4264e4 = call %struct.Memory* @routine_je_.L_4266c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4264e4, i8* %BRANCH_TAKEN, i64 481, i64 6, i64 6)
  store %struct.Memory* %call_4264e4, %struct.Memory** %MEMORY

  %loadBr_4264e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4264e4 = icmp eq i8 %loadBr_4264e4, 1
  br i1 %cmpBr_4264e4, label %block_.L_4266c5, label %block_.L_4264ea

  ; Code: .L_4264ea:	 RIP: 4264ea	 Bytes: 0
block_.L_4264ea:

  ; Code: movss 0xab0f18, %xmm0	 RIP: 4264ea	 Bytes: 9
  %loadMem_4264ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4264ea = call %struct.Memory* @routine_movss_0xab0f18___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4264ea)
  store %struct.Memory* %call_4264ea, %struct.Memory** %MEMORY

  ; Code: ucomiss 0xab0f1c, %xmm0	 RIP: 4264f3	 Bytes: 8
  %loadMem_4264f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4264f3 = call %struct.Memory* @routine_ucomiss_0xab0f1c___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4264f3)
  store %struct.Memory* %call_4264f3, %struct.Memory** %MEMORY

  ; Code: jne .L_426594	 RIP: 4264fb	 Bytes: 6
  %loadMem_4264fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4264fb = call %struct.Memory* @routine_jne_.L_426594(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4264fb, i8* %BRANCH_TAKEN, i64 153, i64 6, i64 6)
  store %struct.Memory* %call_4264fb, %struct.Memory** %MEMORY

  %loadBr_4264fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4264fb = icmp eq i8 %loadBr_4264fb, 1
  br i1 %cmpBr_4264fb, label %block_.L_426594, label %block_426501

block_426501:
  ; Code: jp .L_426594	 RIP: 426501	 Bytes: 6
  %loadMem_426501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426501 = call %struct.Memory* @routine_jp_.L_426594(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426501, i8* %BRANCH_TAKEN, i64 147, i64 6, i64 6)
  store %struct.Memory* %call_426501, %struct.Memory** %MEMORY

  %loadBr_426501 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426501 = icmp eq i8 %loadBr_426501, 1
  br i1 %cmpBr_426501, label %block_.L_426594, label %block_426507

block_426507:
  ; Code: xorps %xmm0, %xmm0	 RIP: 426507	 Bytes: 3
  %loadMem_426507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426507 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426507)
  store %struct.Memory* %call_426507, %struct.Memory** %MEMORY

  ; Code: movq $0x579da7, %rax	 RIP: 42650a	 Bytes: 10
  %loadMem_42650a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42650a = call %struct.Memory* @routine_movq__0x579da7___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42650a)
  store %struct.Memory* %call_42650a, %struct.Memory** %MEMORY

  ; Code: movq $0x579daa, %rcx	 RIP: 426514	 Bytes: 10
  %loadMem_426514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426514 = call %struct.Memory* @routine_movq__0x579daa___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426514)
  store %struct.Memory* %call_426514, %struct.Memory** %MEMORY

  ; Code: movss 0xab0f18, %xmm1	 RIP: 42651e	 Bytes: 9
  %loadMem_42651e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42651e = call %struct.Memory* @routine_movss_0xab0f18___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42651e)
  store %struct.Memory* %call_42651e, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 426527	 Bytes: 3
  %loadMem_426527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426527 = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426527)
  store %struct.Memory* %call_426527, %struct.Memory** %MEMORY

  ; Code: cmovaq %rcx, %rax	 RIP: 42652a	 Bytes: 4
  %loadMem_42652a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42652a = call %struct.Memory* @routine_cmovaq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42652a)
  store %struct.Memory* %call_42652a, %struct.Memory** %MEMORY

  ; Code: ucomiss 0xab0f18, %xmm0	 RIP: 42652e	 Bytes: 8
  %loadMem_42652e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42652e = call %struct.Memory* @routine_ucomiss_0xab0f18___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42652e)
  store %struct.Memory* %call_42652e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 426536	 Bytes: 4
  %loadMem_426536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426536 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426536)
  store %struct.Memory* %call_426536, %struct.Memory** %MEMORY

  ; Code: jbe .L_426560	 RIP: 42653a	 Bytes: 6
  %loadMem_42653a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42653a = call %struct.Memory* @routine_jbe_.L_426560(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42653a, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_42653a, %struct.Memory** %MEMORY

  %loadBr_42653a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42653a = icmp eq i8 %loadBr_42653a, 1
  br i1 %cmpBr_42653a, label %block_.L_426560, label %block_426540

block_426540:
  ; Code: movss 0xab0f18, %xmm0	 RIP: 426540	 Bytes: 9
  %loadMem_426540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426540 = call %struct.Memory* @routine_movss_0xab0f18___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426540)
  store %struct.Memory* %call_426540, %struct.Memory** %MEMORY

  ; Code: movd %xmm0, %eax	 RIP: 426549	 Bytes: 4
  %loadMem_426549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426549 = call %struct.Memory* @routine_movd__xmm0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426549)
  store %struct.Memory* %call_426549, %struct.Memory** %MEMORY

  ; Code: xorl $0x80000000, %eax	 RIP: 42654d	 Bytes: 5
  %loadMem_42654d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42654d = call %struct.Memory* @routine_xorl__0x80000000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42654d)
  store %struct.Memory* %call_42654d, %struct.Memory** %MEMORY

  ; Code: movd %eax, %xmm0	 RIP: 426552	 Bytes: 4
  %loadMem_426552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426552 = call %struct.Memory* @routine_movd__eax___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426552)
  store %struct.Memory* %call_426552, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x6c(%rbp)	 RIP: 426556	 Bytes: 5
  %loadMem_426556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426556 = call %struct.Memory* @routine_movss__xmm0__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426556)
  store %struct.Memory* %call_426556, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42656e	 RIP: 42655b	 Bytes: 5
  %loadMem_42655b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42655b = call %struct.Memory* @routine_jmpq_.L_42656e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42655b, i64 19, i64 5)
  store %struct.Memory* %call_42655b, %struct.Memory** %MEMORY

  br label %block_.L_42656e

  ; Code: .L_426560:	 RIP: 426560	 Bytes: 0
block_.L_426560:

  ; Code: movss 0xab0f18, %xmm0	 RIP: 426560	 Bytes: 9
  %loadMem_426560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426560 = call %struct.Memory* @routine_movss_0xab0f18___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426560)
  store %struct.Memory* %call_426560, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x6c(%rbp)	 RIP: 426569	 Bytes: 5
  %loadMem_426569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426569 = call %struct.Memory* @routine_movss__xmm0__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426569)
  store %struct.Memory* %call_426569, %struct.Memory** %MEMORY

  ; Code: .L_42656e:	 RIP: 42656e	 Bytes: 0
  br label %block_.L_42656e
block_.L_42656e:

  ; Code: movss -0x6c(%rbp), %xmm0	 RIP: 42656e	 Bytes: 5
  %loadMem_42656e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42656e = call %struct.Memory* @routine_movss_MINUS0x6c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42656e)
  store %struct.Memory* %call_42656e, %struct.Memory** %MEMORY

  ; Code: movq $0x57a0c7, %rdi	 RIP: 426573	 Bytes: 10
  %loadMem_426573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426573 = call %struct.Memory* @routine_movq__0x57a0c7___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426573)
  store %struct.Memory* %call_426573, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 42657d	 Bytes: 4
  %loadMem_42657d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42657d = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42657d)
  store %struct.Memory* %call_42657d, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rsi	 RIP: 426581	 Bytes: 4
  %loadMem_426581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426581 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426581)
  store %struct.Memory* %call_426581, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 426585	 Bytes: 2
  %loadMem_426585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426585 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426585)
  store %struct.Memory* %call_426585, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 426587	 Bytes: 5
  %loadMem1_426587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426587 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426587, i64 178217, i64 5, i64 5)
  store %struct.Memory* %call1_426587, %struct.Memory** %MEMORY

  %loadMem2_426587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426587 = load i64, i64* %3
  %call2_426587 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_426587, %struct.Memory* %loadMem2_426587)
  store %struct.Memory* %call2_426587, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 42658c	 Bytes: 3
  %loadMem_42658c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42658c = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42658c)
  store %struct.Memory* %call_42658c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4266b2	 RIP: 42658f	 Bytes: 5
  %loadMem_42658f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42658f = call %struct.Memory* @routine_jmpq_.L_4266b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42658f, i64 291, i64 5)
  store %struct.Memory* %call_42658f, %struct.Memory** %MEMORY

  br label %block_.L_4266b2

  ; Code: .L_426594:	 RIP: 426594	 Bytes: 0
block_.L_426594:

  ; Code: xorps %xmm0, %xmm0	 RIP: 426594	 Bytes: 3
  %loadMem_426594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426594 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426594)
  store %struct.Memory* %call_426594, %struct.Memory** %MEMORY

  ; Code: movq $0x579da7, %rax	 RIP: 426597	 Bytes: 10
  %loadMem_426597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426597 = call %struct.Memory* @routine_movq__0x579da7___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426597)
  store %struct.Memory* %call_426597, %struct.Memory** %MEMORY

  ; Code: movq $0x579daa, %rcx	 RIP: 4265a1	 Bytes: 10
  %loadMem_4265a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265a1 = call %struct.Memory* @routine_movq__0x579daa___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265a1)
  store %struct.Memory* %call_4265a1, %struct.Memory** %MEMORY

  ; Code: movss 0xab0f18, %xmm1	 RIP: 4265ab	 Bytes: 9
  %loadMem_4265ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265ab = call %struct.Memory* @routine_movss_0xab0f18___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265ab)
  store %struct.Memory* %call_4265ab, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm0, %xmm1	 RIP: 4265b4	 Bytes: 3
  %loadMem_4265b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265b4 = call %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265b4)
  store %struct.Memory* %call_4265b4, %struct.Memory** %MEMORY

  ; Code: cmovaq %rcx, %rax	 RIP: 4265b7	 Bytes: 4
  %loadMem_4265b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265b7 = call %struct.Memory* @routine_cmovaq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265b7)
  store %struct.Memory* %call_4265b7, %struct.Memory** %MEMORY

  ; Code: ucomiss 0xab0f18, %xmm0	 RIP: 4265bb	 Bytes: 8
  %loadMem_4265bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265bb = call %struct.Memory* @routine_ucomiss_0xab0f18___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265bb)
  store %struct.Memory* %call_4265bb, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x78(%rbp)	 RIP: 4265c3	 Bytes: 4
  %loadMem_4265c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265c3 = call %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265c3)
  store %struct.Memory* %call_4265c3, %struct.Memory** %MEMORY

  ; Code: jbe .L_4265ed	 RIP: 4265c7	 Bytes: 6
  %loadMem_4265c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265c7 = call %struct.Memory* @routine_jbe_.L_4265ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265c7, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_4265c7, %struct.Memory** %MEMORY

  %loadBr_4265c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4265c7 = icmp eq i8 %loadBr_4265c7, 1
  br i1 %cmpBr_4265c7, label %block_.L_4265ed, label %block_4265cd

block_4265cd:
  ; Code: movss 0xab0f18, %xmm0	 RIP: 4265cd	 Bytes: 9
  %loadMem_4265cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265cd = call %struct.Memory* @routine_movss_0xab0f18___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265cd)
  store %struct.Memory* %call_4265cd, %struct.Memory** %MEMORY

  ; Code: movd %xmm0, %eax	 RIP: 4265d6	 Bytes: 4
  %loadMem_4265d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265d6 = call %struct.Memory* @routine_movd__xmm0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265d6)
  store %struct.Memory* %call_4265d6, %struct.Memory** %MEMORY

  ; Code: xorl $0x80000000, %eax	 RIP: 4265da	 Bytes: 5
  %loadMem_4265da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265da = call %struct.Memory* @routine_xorl__0x80000000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265da)
  store %struct.Memory* %call_4265da, %struct.Memory** %MEMORY

  ; Code: movd %eax, %xmm0	 RIP: 4265df	 Bytes: 4
  %loadMem_4265df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265df = call %struct.Memory* @routine_movd__eax___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265df)
  store %struct.Memory* %call_4265df, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x7c(%rbp)	 RIP: 4265e3	 Bytes: 5
  %loadMem_4265e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265e3 = call %struct.Memory* @routine_movss__xmm0__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265e3)
  store %struct.Memory* %call_4265e3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4265fb	 RIP: 4265e8	 Bytes: 5
  %loadMem_4265e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265e8 = call %struct.Memory* @routine_jmpq_.L_4265fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265e8, i64 19, i64 5)
  store %struct.Memory* %call_4265e8, %struct.Memory** %MEMORY

  br label %block_.L_4265fb

  ; Code: .L_4265ed:	 RIP: 4265ed	 Bytes: 0
block_.L_4265ed:

  ; Code: movss 0xab0f18, %xmm0	 RIP: 4265ed	 Bytes: 9
  %loadMem_4265ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265ed = call %struct.Memory* @routine_movss_0xab0f18___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265ed)
  store %struct.Memory* %call_4265ed, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x7c(%rbp)	 RIP: 4265f6	 Bytes: 5
  %loadMem_4265f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265f6 = call %struct.Memory* @routine_movss__xmm0__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265f6)
  store %struct.Memory* %call_4265f6, %struct.Memory** %MEMORY

  ; Code: .L_4265fb:	 RIP: 4265fb	 Bytes: 0
  br label %block_.L_4265fb
block_.L_4265fb:

  ; Code: movss -0x7c(%rbp), %xmm0	 RIP: 4265fb	 Bytes: 5
  %loadMem_4265fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4265fb = call %struct.Memory* @routine_movss_MINUS0x7c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4265fb)
  store %struct.Memory* %call_4265fb, %struct.Memory** %MEMORY

  ; Code: xorps %xmm1, %xmm1	 RIP: 426600	 Bytes: 3
  %loadMem_426600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426600 = call %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426600)
  store %struct.Memory* %call_426600, %struct.Memory** %MEMORY

  ; Code: movq $0x579da7, %rax	 RIP: 426603	 Bytes: 10
  %loadMem_426603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426603 = call %struct.Memory* @routine_movq__0x579da7___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426603)
  store %struct.Memory* %call_426603, %struct.Memory** %MEMORY

  ; Code: movq $0x579daa, %rcx	 RIP: 42660d	 Bytes: 10
  %loadMem_42660d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42660d = call %struct.Memory* @routine_movq__0x579daa___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42660d)
  store %struct.Memory* %call_42660d, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 426617	 Bytes: 4
  %loadMem_426617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426617 = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426617)
  store %struct.Memory* %call_426617, %struct.Memory** %MEMORY

  ; Code: movss 0xab0f1c, %xmm2	 RIP: 42661b	 Bytes: 9
  %loadMem_42661b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42661b = call %struct.Memory* @routine_movss_0xab0f1c___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42661b)
  store %struct.Memory* %call_42661b, %struct.Memory** %MEMORY

  ; Code: ucomiss %xmm1, %xmm2	 RIP: 426624	 Bytes: 3
  %loadMem_426624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426624 = call %struct.Memory* @routine_ucomiss__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426624)
  store %struct.Memory* %call_426624, %struct.Memory** %MEMORY

  ; Code: cmovaq %rcx, %rax	 RIP: 426627	 Bytes: 4
  %loadMem_426627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426627 = call %struct.Memory* @routine_cmovaq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426627)
  store %struct.Memory* %call_426627, %struct.Memory** %MEMORY

  ; Code: ucomiss 0xab0f1c, %xmm1	 RIP: 42662b	 Bytes: 8
  %loadMem_42662b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42662b = call %struct.Memory* @routine_ucomiss_0xab0f1c___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42662b)
  store %struct.Memory* %call_42662b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x88(%rbp)	 RIP: 426633	 Bytes: 7
  %loadMem_426633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426633 = call %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426633)
  store %struct.Memory* %call_426633, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x90(%rbp)	 RIP: 42663a	 Bytes: 8
  %loadMem_42663a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42663a = call %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42663a)
  store %struct.Memory* %call_42663a, %struct.Memory** %MEMORY

  ; Code: jbe .L_42666b	 RIP: 426642	 Bytes: 6
  %loadMem_426642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426642 = call %struct.Memory* @routine_jbe_.L_42666b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426642, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_426642, %struct.Memory** %MEMORY

  %loadBr_426642 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426642 = icmp eq i8 %loadBr_426642, 1
  br i1 %cmpBr_426642, label %block_.L_42666b, label %block_426648

block_426648:
  ; Code: movss 0xab0f1c, %xmm0	 RIP: 426648	 Bytes: 9
  %loadMem_426648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426648 = call %struct.Memory* @routine_movss_0xab0f1c___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426648)
  store %struct.Memory* %call_426648, %struct.Memory** %MEMORY

  ; Code: movd %xmm0, %eax	 RIP: 426651	 Bytes: 4
  %loadMem_426651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426651 = call %struct.Memory* @routine_movd__xmm0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426651)
  store %struct.Memory* %call_426651, %struct.Memory** %MEMORY

  ; Code: xorl $0x80000000, %eax	 RIP: 426655	 Bytes: 5
  %loadMem_426655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426655 = call %struct.Memory* @routine_xorl__0x80000000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426655)
  store %struct.Memory* %call_426655, %struct.Memory** %MEMORY

  ; Code: movd %eax, %xmm0	 RIP: 42665a	 Bytes: 4
  %loadMem_42665a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42665a = call %struct.Memory* @routine_movd__eax___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42665a)
  store %struct.Memory* %call_42665a, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x94(%rbp)	 RIP: 42665e	 Bytes: 8
  %loadMem_42665e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42665e = call %struct.Memory* @routine_movss__xmm0__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42665e)
  store %struct.Memory* %call_42665e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42667c	 RIP: 426666	 Bytes: 5
  %loadMem_426666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426666 = call %struct.Memory* @routine_jmpq_.L_42667c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426666, i64 22, i64 5)
  store %struct.Memory* %call_426666, %struct.Memory** %MEMORY

  br label %block_.L_42667c

  ; Code: .L_42666b:	 RIP: 42666b	 Bytes: 0
block_.L_42666b:

  ; Code: movss 0xab0f1c, %xmm0	 RIP: 42666b	 Bytes: 9
  %loadMem_42666b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42666b = call %struct.Memory* @routine_movss_0xab0f1c___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42666b)
  store %struct.Memory* %call_42666b, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x94(%rbp)	 RIP: 426674	 Bytes: 8
  %loadMem_426674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426674 = call %struct.Memory* @routine_movss__xmm0__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426674)
  store %struct.Memory* %call_426674, %struct.Memory** %MEMORY

  ; Code: .L_42667c:	 RIP: 42667c	 Bytes: 0
  br label %block_.L_42667c
block_.L_42667c:

  ; Code: movss -0x94(%rbp), %xmm0	 RIP: 42667c	 Bytes: 8
  %loadMem_42667c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42667c = call %struct.Memory* @routine_movss_MINUS0x94__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42667c)
  store %struct.Memory* %call_42667c, %struct.Memory** %MEMORY

  ; Code: movq $0x57a0df, %rdi	 RIP: 426684	 Bytes: 10
  %loadMem_426684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426684 = call %struct.Memory* @routine_movq__0x57a0df___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426684)
  store %struct.Memory* %call_426684, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm1	 RIP: 42668e	 Bytes: 4
  %loadMem_42668e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42668e = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42668e)
  store %struct.Memory* %call_42668e, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rsi	 RIP: 426692	 Bytes: 4
  %loadMem_426692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426692 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426692)
  store %struct.Memory* %call_426692, %struct.Memory** %MEMORY

  ; Code: movsd -0x90(%rbp), %xmm0	 RIP: 426696	 Bytes: 8
  %loadMem_426696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426696 = call %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426696)
  store %struct.Memory* %call_426696, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rdx	 RIP: 42669e	 Bytes: 7
  %loadMem_42669e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42669e = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42669e)
  store %struct.Memory* %call_42669e, %struct.Memory** %MEMORY

  ; Code: movb $0x2, %al	 RIP: 4266a5	 Bytes: 2
  %loadMem_4266a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4266a5 = call %struct.Memory* @routine_movb__0x2___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4266a5)
  store %struct.Memory* %call_4266a5, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 4266a7	 Bytes: 5
  %loadMem1_4266a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4266a7 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4266a7, i64 177929, i64 5, i64 5)
  store %struct.Memory* %call1_4266a7, %struct.Memory** %MEMORY

  %loadMem2_4266a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4266a7 = load i64, i64* %3
  %call2_4266a7 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_4266a7, %struct.Memory* %loadMem2_4266a7)
  store %struct.Memory* %call2_4266a7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x98(%rbp)	 RIP: 4266ac	 Bytes: 6
  %loadMem_4266ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4266ac = call %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4266ac)
  store %struct.Memory* %call_4266ac, %struct.Memory** %MEMORY

  ; Code: .L_4266b2:	 RIP: 4266b2	 Bytes: 0
  br label %block_.L_4266b2
block_.L_4266b2:

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4266b2	 Bytes: 8
  %loadMem_4266b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4266b2 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4266b2)
  store %struct.Memory* %call_4266b2, %struct.Memory** %MEMORY

  ; Code: callq .fflush_plt	 RIP: 4266ba	 Bytes: 5
  %loadMem1_4266ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4266ba = call %struct.Memory* @routine_callq_.fflush_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4266ba, i64 -152986, i64 5, i64 5)
  store %struct.Memory* %call1_4266ba, %struct.Memory** %MEMORY

  %loadMem2_4266ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4266ba = load i64, i64* %3
  %call2_4266ba = call %struct.Memory* @ext_fflush(%struct.State* %0, i64  %loadPC_4266ba, %struct.Memory* %loadMem2_4266ba)
  store %struct.Memory* %call2_4266ba, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x9c(%rbp)	 RIP: 4266bf	 Bytes: 6
  %loadMem_4266bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4266bf = call %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4266bf)
  store %struct.Memory* %call_4266bf, %struct.Memory** %MEMORY

  ; Code: .L_4266c5:	 RIP: 4266c5	 Bytes: 0
  br label %block_.L_4266c5
block_.L_4266c5:

  ; Code: movl $0x1, %edi	 RIP: 4266c5	 Bytes: 5
  %loadMem_4266c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4266c5 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4266c5)
  store %struct.Memory* %call_4266c5, %struct.Memory** %MEMORY

  ; Code: movq $0x57c0a0, %rsi	 RIP: 4266ca	 Bytes: 10
  %loadMem_4266ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4266ca = call %struct.Memory* @routine_movq__0x57c0a0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4266ca)
  store %struct.Memory* %call_4266ca, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 4266d4	 Bytes: 2
  %loadMem_4266d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4266d4 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4266d4)
  store %struct.Memory* %call_4266d4, %struct.Memory** %MEMORY

  ; Code: movsd 0xbc882(%rip), %xmm0	 RIP: 4266d6	 Bytes: 8
  %loadMem_4266d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4266d6 = call %struct.Memory* @routine_movsd_0xbc882__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4266d6)
  store %struct.Memory* %call_4266d6, %struct.Memory** %MEMORY

  ; Code: callq .time_report	 RIP: 4266de	 Bytes: 5
  %loadMem1_4266de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4266de = call %struct.Memory* @routine_callq_.time_report(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4266de, i64 351474, i64 5, i64 5)
  store %struct.Memory* %call1_4266de, %struct.Memory** %MEMORY

  %loadMem2_4266de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4266de = load i64, i64* %3
  %call2_4266de = call %struct.Memory* @sub_47c3d0.time_report(%struct.State* %0, i64  %loadPC_4266de, %struct.Memory* %loadMem2_4266de)
  store %struct.Memory* %call2_4266de, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x14(%rbp)	 RIP: 4266e3	 Bytes: 4
  %loadMem_4266e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4266e3 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4266e3)
  store %struct.Memory* %call_4266e3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xa8(%rbp)	 RIP: 4266e7	 Bytes: 8
  %loadMem_4266e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4266e7 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4266e7)
  store %struct.Memory* %call_4266e7, %struct.Memory** %MEMORY

  ; Code: jne .L_42670c	 RIP: 4266ef	 Bytes: 6
  %loadMem_4266ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4266ef = call %struct.Memory* @routine_jne_.L_42670c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4266ef, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_4266ef, %struct.Memory** %MEMORY

  %loadBr_4266ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4266ef = icmp eq i8 %loadBr_4266ef, 1
  br i1 %cmpBr_4266ef, label %block_.L_42670c, label %block_4266f5

block_4266f5:
  ; Code: movss 0xab0f18, %xmm0	 RIP: 4266f5	 Bytes: 9
  %loadMem_4266f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4266f5 = call %struct.Memory* @routine_movss_0xab0f18___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4266f5)
  store %struct.Memory* %call_4266f5, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0xab0f14	 RIP: 4266fe	 Bytes: 9
  %loadMem_4266fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4266fe = call %struct.Memory* @routine_movss__xmm0__0xab0f14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4266fe)
  store %struct.Memory* %call_4266fe, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42671e	 RIP: 426707	 Bytes: 5
  %loadMem_426707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426707 = call %struct.Memory* @routine_jmpq_.L_42671e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426707, i64 23, i64 5)
  store %struct.Memory* %call_426707, %struct.Memory** %MEMORY

  br label %block_.L_42671e

  ; Code: .L_42670c:	 RIP: 42670c	 Bytes: 0
block_.L_42670c:

  ; Code: movss 0xab0f1c, %xmm0	 RIP: 42670c	 Bytes: 9
  %loadMem_42670c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42670c = call %struct.Memory* @routine_movss_0xab0f1c___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42670c)
  store %struct.Memory* %call_42670c, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0xab0f14	 RIP: 426715	 Bytes: 9
  %loadMem_426715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426715 = call %struct.Memory* @routine_movss__xmm0__0xab0f14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426715)
  store %struct.Memory* %call_426715, %struct.Memory** %MEMORY

  ; Code: .L_42671e:	 RIP: 42671e	 Bytes: 0
  br label %block_.L_42671e
block_.L_42671e:

  ; Code: jmpq .L_42672f	 RIP: 42671e	 Bytes: 5
  %loadMem_42671e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42671e = call %struct.Memory* @routine_jmpq_.L_42672f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42671e, i64 17, i64 5)
  store %struct.Memory* %call_42671e, %struct.Memory** %MEMORY

  br label %block_.L_42672f

  ; Code: .L_426723:	 RIP: 426723	 Bytes: 0
block_.L_426723:

  ; Code: xorps %xmm0, %xmm0	 RIP: 426723	 Bytes: 3
  %loadMem_426723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426723 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426723)
  store %struct.Memory* %call_426723, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0xab0f14	 RIP: 426726	 Bytes: 9
  %loadMem_426726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426726 = call %struct.Memory* @routine_movss__xmm0__0xab0f14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426726)
  store %struct.Memory* %call_426726, %struct.Memory** %MEMORY

  ; Code: .L_42672f:	 RIP: 42672f	 Bytes: 0
  br label %block_.L_42672f
block_.L_42672f:

  ; Code: cmpl $0x0, 0xab0ee4	 RIP: 42672f	 Bytes: 8
  %loadMem_42672f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42672f = call %struct.Memory* @routine_cmpl__0x0__0xab0ee4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42672f)
  store %struct.Memory* %call_42672f, %struct.Memory** %MEMORY

  ; Code: je .L_426742	 RIP: 426737	 Bytes: 6
  %loadMem_426737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426737 = call %struct.Memory* @routine_je_.L_426742(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426737, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426737, %struct.Memory** %MEMORY

  %loadBr_426737 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426737 = icmp eq i8 %loadBr_426737, 1
  br i1 %cmpBr_426737, label %block_.L_426742, label %block_42673d

block_42673d:
  ; Code: callq .print_moyo	 RIP: 42673d	 Bytes: 5
  %loadMem1_42673d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42673d = call %struct.Memory* @routine_callq_.print_moyo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42673d, i64 287955, i64 5, i64 5)
  store %struct.Memory* %call1_42673d, %struct.Memory** %MEMORY

  %loadMem2_42673d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42673d = load i64, i64* %3
  %call2_42673d = call %struct.Memory* @sub_46cc10.print_moyo(%struct.State* %0, i64  %loadPC_42673d, %struct.Memory* %loadMem2_42673d)
  store %struct.Memory* %call2_42673d, %struct.Memory** %MEMORY

  ; Code: .L_426742:	 RIP: 426742	 Bytes: 0
  br label %block_.L_426742
block_.L_426742:

  ; Code: cmpl $0x0, 0xab0ee8	 RIP: 426742	 Bytes: 8
  %loadMem_426742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426742 = call %struct.Memory* @routine_cmpl__0x0__0xab0ee8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426742)
  store %struct.Memory* %call_426742, %struct.Memory** %MEMORY

  ; Code: je .L_42681b	 RIP: 42674a	 Bytes: 6
  %loadMem_42674a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42674a = call %struct.Memory* @routine_je_.L_42681b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42674a, i8* %BRANCH_TAKEN, i64 209, i64 6, i64 6)
  store %struct.Memory* %call_42674a, %struct.Memory** %MEMORY

  %loadBr_42674a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42674a = icmp eq i8 %loadBr_42674a, 1
  br i1 %cmpBr_42674a, label %block_.L_42681b, label %block_426750

block_426750:
  ; Code: cmpl $0x1, 0xab0ee8	 RIP: 426750	 Bytes: 8
  %loadMem_426750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426750 = call %struct.Memory* @routine_cmpl__0x1__0xab0ee8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426750)
  store %struct.Memory* %call_426750, %struct.Memory** %MEMORY

  ; Code: jne .L_42677d	 RIP: 426758	 Bytes: 6
  %loadMem_426758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426758 = call %struct.Memory* @routine_jne_.L_42677d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426758, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_426758, %struct.Memory** %MEMORY

  %loadBr_426758 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426758 = icmp eq i8 %loadBr_426758, 1
  br i1 %cmpBr_426758, label %block_.L_42677d, label %block_42675e

block_42675e:
  ; Code: movq $0x57c0af, %rsi	 RIP: 42675e	 Bytes: 10
  %loadMem_42675e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42675e = call %struct.Memory* @routine_movq__0x57c0af___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42675e)
  store %struct.Memory* %call_42675e, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 426768	 Bytes: 8
  %loadMem_426768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426768 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426768)
  store %struct.Memory* %call_426768, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 426770	 Bytes: 2
  %loadMem_426770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426770 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426770)
  store %struct.Memory* %call_426770, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 426772	 Bytes: 5
  %loadMem1_426772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426772 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426772, i64 -153250, i64 5, i64 5)
  store %struct.Memory* %call1_426772, %struct.Memory** %MEMORY

  %loadMem2_426772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426772 = load i64, i64* %3
  %call2_426772 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_426772, %struct.Memory* %loadMem2_426772)
  store %struct.Memory* %call2_426772, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xac(%rbp)	 RIP: 426777	 Bytes: 6
  %loadMem_426777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426777 = call %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426777)
  store %struct.Memory* %call_426777, %struct.Memory** %MEMORY

  ; Code: .L_42677d:	 RIP: 42677d	 Bytes: 0
  br label %block_.L_42677d
block_.L_42677d:

  ; Code: cmpl $0x2, 0xab0ee8	 RIP: 42677d	 Bytes: 8
  %loadMem_42677d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42677d = call %struct.Memory* @routine_cmpl__0x2__0xab0ee8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42677d)
  store %struct.Memory* %call_42677d, %struct.Memory** %MEMORY

  ; Code: jne .L_4267aa	 RIP: 426785	 Bytes: 6
  %loadMem_426785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426785 = call %struct.Memory* @routine_jne_.L_4267aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426785, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_426785, %struct.Memory** %MEMORY

  %loadBr_426785 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426785 = icmp eq i8 %loadBr_426785, 1
  br i1 %cmpBr_426785, label %block_.L_4267aa, label %block_42678b

block_42678b:
  ; Code: movq $0x57c0d3, %rsi	 RIP: 42678b	 Bytes: 10
  %loadMem_42678b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42678b = call %struct.Memory* @routine_movq__0x57c0d3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42678b)
  store %struct.Memory* %call_42678b, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 426795	 Bytes: 8
  %loadMem_426795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426795 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426795)
  store %struct.Memory* %call_426795, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42679d	 Bytes: 2
  %loadMem_42679d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42679d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42679d)
  store %struct.Memory* %call_42679d, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 42679f	 Bytes: 5
  %loadMem1_42679f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42679f = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42679f, i64 -153295, i64 5, i64 5)
  store %struct.Memory* %call1_42679f, %struct.Memory** %MEMORY

  %loadMem2_42679f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42679f = load i64, i64* %3
  %call2_42679f = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_42679f, %struct.Memory* %loadMem2_42679f)
  store %struct.Memory* %call2_42679f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb0(%rbp)	 RIP: 4267a4	 Bytes: 6
  %loadMem_4267a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4267a4 = call %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4267a4)
  store %struct.Memory* %call_4267a4, %struct.Memory** %MEMORY

  ; Code: .L_4267aa:	 RIP: 4267aa	 Bytes: 0
  br label %block_.L_4267aa
block_.L_4267aa:

  ; Code: movl 0xab0ee8, %edi	 RIP: 4267aa	 Bytes: 7
  %loadMem_4267aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4267aa = call %struct.Memory* @routine_movl_0xab0ee8___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4267aa)
  store %struct.Memory* %call_4267aa, %struct.Memory** %MEMORY

  ; Code: callq .showboard	 RIP: 4267b1	 Bytes: 5
  %loadMem1_4267b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4267b1 = call %struct.Memory* @routine_callq_.showboard(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4267b1, i64 321103, i64 5, i64 5)
  store %struct.Memory* %call1_4267b1, %struct.Memory** %MEMORY

  %loadMem2_4267b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4267b1 = load i64, i64* %3
  %call2_4267b1 = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64  %loadPC_4267b1, %struct.Memory* %loadMem2_4267b1)
  store %struct.Memory* %call2_4267b1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xab0ee8	 RIP: 4267b6	 Bytes: 8
  %loadMem_4267b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4267b6 = call %struct.Memory* @routine_cmpl__0x1__0xab0ee8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4267b6)
  store %struct.Memory* %call_4267b6, %struct.Memory** %MEMORY

  ; Code: jne .L_426816	 RIP: 4267be	 Bytes: 6
  %loadMem_4267be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4267be = call %struct.Memory* @routine_jne_.L_426816(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4267be, i8* %BRANCH_TAKEN, i64 88, i64 6, i64 6)
  store %struct.Memory* %call_4267be, %struct.Memory** %MEMORY

  %loadBr_4267be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4267be = icmp eq i8 %loadBr_4267be, 1
  br i1 %cmpBr_4267be, label %block_.L_426816, label %block_4267c4

block_4267c4:
  ; Code: movq $0x57c0ed, %rsi	 RIP: 4267c4	 Bytes: 10
  %loadMem_4267c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4267c4 = call %struct.Memory* @routine_movq__0x57c0ed___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4267c4)
  store %struct.Memory* %call_4267c4, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4267ce	 Bytes: 8
  %loadMem_4267ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4267ce = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4267ce)
  store %struct.Memory* %call_4267ce, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4267d6	 Bytes: 2
  %loadMem_4267d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4267d6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4267d6)
  store %struct.Memory* %call_4267d6, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4267d8	 Bytes: 5
  %loadMem1_4267d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4267d8 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4267d8, i64 -153352, i64 5, i64 5)
  store %struct.Memory* %call1_4267d8, %struct.Memory** %MEMORY

  %loadMem2_4267d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4267d8 = load i64, i64* %3
  %call2_4267d8 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4267d8, %struct.Memory* %loadMem2_4267d8)
  store %struct.Memory* %call2_4267d8, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %edi	 RIP: 4267dd	 Bytes: 5
  %loadMem_4267dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4267dd = call %struct.Memory* @routine_movl__0x3___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4267dd)
  store %struct.Memory* %call_4267dd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb4(%rbp)	 RIP: 4267e2	 Bytes: 6
  %loadMem_4267e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4267e2 = call %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4267e2)
  store %struct.Memory* %call_4267e2, %struct.Memory** %MEMORY

  ; Code: callq .showboard	 RIP: 4267e8	 Bytes: 5
  %loadMem1_4267e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4267e8 = call %struct.Memory* @routine_callq_.showboard(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4267e8, i64 321048, i64 5, i64 5)
  store %struct.Memory* %call1_4267e8, %struct.Memory** %MEMORY

  %loadMem2_4267e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4267e8 = load i64, i64* %3
  %call2_4267e8 = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64  %loadPC_4267e8, %struct.Memory* %loadMem2_4267e8)
  store %struct.Memory* %call2_4267e8, %struct.Memory** %MEMORY

  ; Code: movq $0x57c10f, %rsi	 RIP: 4267ed	 Bytes: 10
  %loadMem_4267ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4267ed = call %struct.Memory* @routine_movq__0x57c10f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4267ed)
  store %struct.Memory* %call_4267ed, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4267f7	 Bytes: 8
  %loadMem_4267f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4267f7 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4267f7)
  store %struct.Memory* %call_4267f7, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4267ff	 Bytes: 2
  %loadMem_4267ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4267ff = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4267ff)
  store %struct.Memory* %call_4267ff, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 426801	 Bytes: 5
  %loadMem1_426801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426801 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426801, i64 -153393, i64 5, i64 5)
  store %struct.Memory* %call1_426801, %struct.Memory** %MEMORY

  %loadMem2_426801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426801 = load i64, i64* %3
  %call2_426801 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_426801, %struct.Memory* %loadMem2_426801)
  store %struct.Memory* %call2_426801, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %edi	 RIP: 426806	 Bytes: 5
  %loadMem_426806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426806 = call %struct.Memory* @routine_movl__0x4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426806)
  store %struct.Memory* %call_426806, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb8(%rbp)	 RIP: 42680b	 Bytes: 6
  %loadMem_42680b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42680b = call %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42680b)
  store %struct.Memory* %call_42680b, %struct.Memory** %MEMORY

  ; Code: callq .showboard	 RIP: 426811	 Bytes: 5
  %loadMem1_426811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426811 = call %struct.Memory* @routine_callq_.showboard(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426811, i64 321007, i64 5, i64 5)
  store %struct.Memory* %call1_426811, %struct.Memory** %MEMORY

  %loadMem2_426811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426811 = load i64, i64* %3
  %call2_426811 = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64  %loadPC_426811, %struct.Memory* %loadMem2_426811)
  store %struct.Memory* %call2_426811, %struct.Memory** %MEMORY

  ; Code: .L_426816:	 RIP: 426816	 Bytes: 0
  br label %block_.L_426816
block_.L_426816:

  ; Code: jmpq .L_42681b	 RIP: 426816	 Bytes: 5
  %loadMem_426816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426816 = call %struct.Memory* @routine_jmpq_.L_42681b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426816, i64 5, i64 5)
  store %struct.Memory* %call_426816, %struct.Memory** %MEMORY

  br label %block_.L_42681b

  ; Code: .L_42681b:	 RIP: 42681b	 Bytes: 0
block_.L_42681b:

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 42681b	 Bytes: 8
  %loadMem_42681b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42681b = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42681b)
  store %struct.Memory* %call_42681b, %struct.Memory** %MEMORY

  ; Code: jne .L_42682e	 RIP: 426823	 Bytes: 6
  %loadMem_426823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426823 = call %struct.Memory* @routine_jne_.L_42682e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426823, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426823, %struct.Memory** %MEMORY

  %loadBr_426823 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426823 = icmp eq i8 %loadBr_426823, 1
  br i1 %cmpBr_426823, label %block_.L_42682e, label %block_426829

block_426829:
  ; Code: jmpq .L_426856	 RIP: 426829	 Bytes: 5
  %loadMem_426829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426829 = call %struct.Memory* @routine_jmpq_.L_426856(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426829, i64 45, i64 5)
  store %struct.Memory* %call_426829, %struct.Memory** %MEMORY

  br label %block_.L_426856

  ; Code: .L_42682e:	 RIP: 42682e	 Bytes: 0
block_.L_42682e:

  ; Code: movq $0x57bf39, %rdi	 RIP: 42682e	 Bytes: 10
  %loadMem_42682e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42682e = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42682e)
  store %struct.Memory* %call_42682e, %struct.Memory** %MEMORY

  ; Code: movl $0x182, %esi	 RIP: 426838	 Bytes: 5
  %loadMem_426838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426838 = call %struct.Memory* @routine_movl__0x182___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426838)
  store %struct.Memory* %call_426838, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 42683d	 Bytes: 10
  %loadMem_42683d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42683d = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42683d)
  store %struct.Memory* %call_42683d, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 426847	 Bytes: 5
  %loadMem_426847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426847 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426847)
  store %struct.Memory* %call_426847, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 42684c	 Bytes: 2
  %loadMem_42684c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42684c = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42684c)
  store %struct.Memory* %call_42684c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 42684e	 Bytes: 3
  %loadMem_42684e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42684e = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42684e)
  store %struct.Memory* %call_42684e, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 426851	 Bytes: 5
  %loadMem1_426851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426851 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426851, i64 178239, i64 5, i64 5)
  store %struct.Memory* %call1_426851, %struct.Memory** %MEMORY

  %loadMem2_426851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426851 = load i64, i64* %3
  %call2_426851 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_426851, %struct.Memory* %loadMem2_426851)
  store %struct.Memory* %call2_426851, %struct.Memory** %MEMORY

  ; Code: .L_426856:	 RIP: 426856	 Bytes: 0
  br label %block_.L_426856
block_.L_426856:

  ; Code: movl -0x14(%rbp), %edi	 RIP: 426856	 Bytes: 3
  %loadMem_426856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426856 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426856)
  store %struct.Memory* %call_426856, %struct.Memory** %MEMORY

  ; Code: callq .worm_reasons	 RIP: 426859	 Bytes: 5
  %loadMem1_426859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426859 = call %struct.Memory* @routine_callq_.worm_reasons(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426859, i64 409399, i64 5, i64 5)
  store %struct.Memory* %call1_426859, %struct.Memory** %MEMORY

  %loadMem2_426859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426859 = load i64, i64* %3
  %call2_426859 = call %struct.Memory* @sub_48a790.worm_reasons(%struct.State* %0, i64  %loadPC_426859, %struct.Memory* %loadMem2_426859)
  store %struct.Memory* %call2_426859, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f28, %edi	 RIP: 42685e	 Bytes: 7
  %loadMem_42685e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42685e = call %struct.Memory* @routine_movl_0xab0f28___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42685e)
  store %struct.Memory* %call_42685e, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x28(%rbp)	 RIP: 426865	 Bytes: 3
  %loadMem_426865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426865 = call %struct.Memory* @routine_movl__edi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426865)
  store %struct.Memory* %call_426865, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 426868	 Bytes: 8
  %loadMem_426868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426868 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426868)
  store %struct.Memory* %call_426868, %struct.Memory** %MEMORY

  ; Code: jle .L_426887	 RIP: 426870	 Bytes: 6
  %loadMem_426870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426870 = call %struct.Memory* @routine_jle_.L_426887(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426870, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_426870, %struct.Memory** %MEMORY

  %loadBr_426870 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426870 = icmp eq i8 %loadBr_426870, 1
  br i1 %cmpBr_426870, label %block_.L_426887, label %block_426876

block_426876:
  ; Code: movl 0xab0f28, %eax	 RIP: 426876	 Bytes: 7
  %loadMem_426876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426876 = call %struct.Memory* @routine_movl_0xab0f28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426876)
  store %struct.Memory* %call_426876, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 42687d	 Bytes: 3
  %loadMem_42687d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42687d = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42687d)
  store %struct.Memory* %call_42687d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xab0f28	 RIP: 426880	 Bytes: 7
  %loadMem_426880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426880 = call %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426880)
  store %struct.Memory* %call_426880, %struct.Memory** %MEMORY

  ; Code: .L_426887:	 RIP: 426887	 Bytes: 0
  br label %block_.L_426887
block_.L_426887:

  ; Code: movl -0x14(%rbp), %edi	 RIP: 426887	 Bytes: 3
  %loadMem_426887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426887 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426887)
  store %struct.Memory* %call_426887, %struct.Memory** %MEMORY

  ; Code: callq .owl_reasons	 RIP: 42688a	 Bytes: 5
  %loadMem1_42688a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42688a = call %struct.Memory* @routine_callq_.owl_reasons(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42688a, i64 150566, i64 5, i64 5)
  store %struct.Memory* %call1_42688a, %struct.Memory** %MEMORY

  %loadMem2_42688a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42688a = load i64, i64* %3
  %call2_42688a = call %struct.Memory* @sub_44b4b0.owl_reasons(%struct.State* %0, i64  %loadPC_42688a, %struct.Memory* %loadMem2_42688a)
  store %struct.Memory* %call2_42688a, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edi	 RIP: 42688f	 Bytes: 3
  %loadMem_42688f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42688f = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42688f)
  store %struct.Memory* %call_42688f, %struct.Memory** %MEMORY

  ; Code: movl %edi, 0xab0f28	 RIP: 426892	 Bytes: 7
  %loadMem_426892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426892 = call %struct.Memory* @routine_movl__edi__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426892)
  store %struct.Memory* %call_426892, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 426899	 Bytes: 3
  %loadMem_426899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426899 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426899)
  store %struct.Memory* %call_426899, %struct.Memory** %MEMORY

  ; Code: callq .fuseki	 RIP: 42689c	 Bytes: 5
  %loadMem1_42689c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42689c = call %struct.Memory* @routine_callq_.fuseki(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42689c, i64 -6508, i64 5, i64 5)
  store %struct.Memory* %call1_42689c, %struct.Memory** %MEMORY

  %loadMem2_42689c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42689c = load i64, i64* %3
  %call2_42689c = call %struct.Memory* @sub_424f30.fuseki(%struct.State* %0, i64  %loadPC_42689c, %struct.Memory* %loadMem2_42689c)
  store %struct.Memory* %call2_42689c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 4268a1	 Bytes: 8
  %loadMem_4268a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4268a1 = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4268a1)
  store %struct.Memory* %call_4268a1, %struct.Memory** %MEMORY

  ; Code: jne .L_4268b4	 RIP: 4268a9	 Bytes: 6
  %loadMem_4268a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4268a9 = call %struct.Memory* @routine_jne_.L_4268b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4268a9, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4268a9, %struct.Memory** %MEMORY

  %loadBr_4268a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4268a9 = icmp eq i8 %loadBr_4268a9, 1
  br i1 %cmpBr_4268a9, label %block_.L_4268b4, label %block_4268af

block_4268af:
  ; Code: jmpq .L_4268dc	 RIP: 4268af	 Bytes: 5
  %loadMem_4268af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4268af = call %struct.Memory* @routine_jmpq_.L_4268dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4268af, i64 45, i64 5)
  store %struct.Memory* %call_4268af, %struct.Memory** %MEMORY

  br label %block_.L_4268dc

  ; Code: .L_4268b4:	 RIP: 4268b4	 Bytes: 0
block_.L_4268b4:

  ; Code: movq $0x57bf39, %rdi	 RIP: 4268b4	 Bytes: 10
  %loadMem_4268b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4268b4 = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4268b4)
  store %struct.Memory* %call_4268b4, %struct.Memory** %MEMORY

  ; Code: movl $0x194, %esi	 RIP: 4268be	 Bytes: 5
  %loadMem_4268be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4268be = call %struct.Memory* @routine_movl__0x194___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4268be)
  store %struct.Memory* %call_4268be, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 4268c3	 Bytes: 10
  %loadMem_4268c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4268c3 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4268c3)
  store %struct.Memory* %call_4268c3, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 4268cd	 Bytes: 5
  %loadMem_4268cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4268cd = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4268cd)
  store %struct.Memory* %call_4268cd, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4268d2	 Bytes: 2
  %loadMem_4268d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4268d2 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4268d2)
  store %struct.Memory* %call_4268d2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 4268d4	 Bytes: 3
  %loadMem_4268d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4268d4 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4268d4)
  store %struct.Memory* %call_4268d4, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 4268d7	 Bytes: 5
  %loadMem1_4268d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4268d7 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4268d7, i64 178105, i64 5, i64 5)
  store %struct.Memory* %call1_4268d7, %struct.Memory** %MEMORY

  %loadMem2_4268d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4268d7 = load i64, i64* %3
  %call2_4268d7 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_4268d7, %struct.Memory* %loadMem2_4268d7)
  store %struct.Memory* %call2_4268d7, %struct.Memory** %MEMORY

  ; Code: .L_4268dc:	 RIP: 4268dc	 Bytes: 0
  br label %block_.L_4268dc
block_.L_4268dc:

  ; Code: movl $0x1, %edi	 RIP: 4268dc	 Bytes: 5
  %loadMem_4268dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4268dc = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4268dc)
  store %struct.Memory* %call_4268dc, %struct.Memory** %MEMORY

  ; Code: callq .start_timer	 RIP: 4268e1	 Bytes: 5
  %loadMem1_4268e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4268e1 = call %struct.Memory* @routine_callq_.start_timer(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4268e1, i64 350831, i64 5, i64 5)
  store %struct.Memory* %call1_4268e1, %struct.Memory** %MEMORY

  %loadMem2_4268e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4268e1 = load i64, i64* %3
  %call2_4268e1 = call %struct.Memory* @sub_47c350.start_timer(%struct.State* %0, i64  %loadPC_4268e1, %struct.Memory* %loadMem2_4268e1)
  store %struct.Memory* %call2_4268e1, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 4268e6	 Bytes: 3
  %loadMem_4268e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4268e6 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4268e6)
  store %struct.Memory* %call_4268e6, %struct.Memory** %MEMORY

  ; Code: callq .shapes	 RIP: 4268e9	 Bytes: 5
  %loadMem1_4268e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4268e9 = call %struct.Memory* @routine_callq_.shapes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4268e9, i64 313015, i64 5, i64 5)
  store %struct.Memory* %call1_4268e9, %struct.Memory** %MEMORY

  %loadMem2_4268e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4268e9 = load i64, i64* %3
  %call2_4268e9 = call %struct.Memory* @sub_472fa0.shapes(%struct.State* %0, i64  %loadPC_4268e9, %struct.Memory* %loadMem2_4268e9)
  store %struct.Memory* %call2_4268e9, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edi	 RIP: 4268ee	 Bytes: 5
  %loadMem_4268ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4268ee = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4268ee)
  store %struct.Memory* %call_4268ee, %struct.Memory** %MEMORY

  ; Code: movq $0x57c135, %rsi	 RIP: 4268f3	 Bytes: 10
  %loadMem_4268f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4268f3 = call %struct.Memory* @routine_movq__0x57c135___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4268f3)
  store %struct.Memory* %call_4268f3, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 4268fd	 Bytes: 2
  %loadMem_4268fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4268fd = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4268fd)
  store %struct.Memory* %call_4268fd, %struct.Memory** %MEMORY

  ; Code: movsd 0xbc659(%rip), %xmm0	 RIP: 4268ff	 Bytes: 8
  %loadMem_4268ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4268ff = call %struct.Memory* @routine_movsd_0xbc659__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4268ff)
  store %struct.Memory* %call_4268ff, %struct.Memory** %MEMORY

  ; Code: callq .time_report	 RIP: 426907	 Bytes: 5
  %loadMem1_426907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426907 = call %struct.Memory* @routine_callq_.time_report(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426907, i64 350921, i64 5, i64 5)
  store %struct.Memory* %call1_426907, %struct.Memory** %MEMORY

  %loadMem2_426907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426907 = load i64, i64* %3
  %call2_426907 = call %struct.Memory* @sub_47c3d0.time_report(%struct.State* %0, i64  %loadPC_426907, %struct.Memory* %loadMem2_426907)
  store %struct.Memory* %call2_426907, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 42690c	 Bytes: 8
  %loadMem_42690c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42690c = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42690c)
  store %struct.Memory* %call_42690c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xc0(%rbp)	 RIP: 426914	 Bytes: 8
  %loadMem_426914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426914 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426914)
  store %struct.Memory* %call_426914, %struct.Memory** %MEMORY

  ; Code: jne .L_426927	 RIP: 42691c	 Bytes: 6
  %loadMem_42691c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42691c = call %struct.Memory* @routine_jne_.L_426927(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42691c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42691c, %struct.Memory** %MEMORY

  %loadBr_42691c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42691c = icmp eq i8 %loadBr_42691c, 1
  br i1 %cmpBr_42691c, label %block_.L_426927, label %block_426922

block_426922:
  ; Code: jmpq .L_42694f	 RIP: 426922	 Bytes: 5
  %loadMem_426922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426922 = call %struct.Memory* @routine_jmpq_.L_42694f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426922, i64 45, i64 5)
  store %struct.Memory* %call_426922, %struct.Memory** %MEMORY

  br label %block_.L_42694f

  ; Code: .L_426927:	 RIP: 426927	 Bytes: 0
block_.L_426927:

  ; Code: movq $0x57bf39, %rdi	 RIP: 426927	 Bytes: 10
  %loadMem_426927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426927 = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426927)
  store %struct.Memory* %call_426927, %struct.Memory** %MEMORY

  ; Code: movl $0x19a, %esi	 RIP: 426931	 Bytes: 5
  %loadMem_426931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426931 = call %struct.Memory* @routine_movl__0x19a___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426931)
  store %struct.Memory* %call_426931, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 426936	 Bytes: 10
  %loadMem_426936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426936 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426936)
  store %struct.Memory* %call_426936, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 426940	 Bytes: 5
  %loadMem_426940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426940 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426940)
  store %struct.Memory* %call_426940, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 426945	 Bytes: 2
  %loadMem_426945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426945 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426945)
  store %struct.Memory* %call_426945, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 426947	 Bytes: 3
  %loadMem_426947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426947 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426947)
  store %struct.Memory* %call_426947, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 42694a	 Bytes: 5
  %loadMem1_42694a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42694a = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42694a, i64 177990, i64 5, i64 5)
  store %struct.Memory* %call1_42694a, %struct.Memory** %MEMORY

  %loadMem2_42694a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42694a = load i64, i64* %3
  %call2_42694a = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_42694a, %struct.Memory* %loadMem2_42694a)
  store %struct.Memory* %call2_42694a, %struct.Memory** %MEMORY

  ; Code: .L_42694f:	 RIP: 42694f	 Bytes: 0
  br label %block_.L_42694f
block_.L_42694f:

  ; Code: movl -0x14(%rbp), %edi	 RIP: 42694f	 Bytes: 3
  %loadMem_42694f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42694f = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42694f)
  store %struct.Memory* %call_42694f, %struct.Memory** %MEMORY

  ; Code: callq .combinations	 RIP: 426952	 Bytes: 5
  %loadMem1_426952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426952 = call %struct.Memory* @routine_callq_.combinations(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426952, i64 -57938, i64 5, i64 5)
  store %struct.Memory* %call1_426952, %struct.Memory** %MEMORY

  %loadMem2_426952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426952 = load i64, i64* %3
  %call2_426952 = call %struct.Memory* @sub_418700.combinations(%struct.State* %0, i64  %loadPC_426952, %struct.Memory* %loadMem2_426952)
  store %struct.Memory* %call2_426952, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edi	 RIP: 426957	 Bytes: 5
  %loadMem_426957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426957 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426957)
  store %struct.Memory* %call_426957, %struct.Memory** %MEMORY

  ; Code: movq $0x57c13c, %rsi	 RIP: 42695c	 Bytes: 10
  %loadMem_42695c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42695c = call %struct.Memory* @routine_movq__0x57c13c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42695c)
  store %struct.Memory* %call_42695c, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 426966	 Bytes: 2
  %loadMem_426966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426966 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426966)
  store %struct.Memory* %call_426966, %struct.Memory** %MEMORY

  ; Code: movsd 0xbc5f0(%rip), %xmm0	 RIP: 426968	 Bytes: 8
  %loadMem_426968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426968 = call %struct.Memory* @routine_movsd_0xbc5f0__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426968)
  store %struct.Memory* %call_426968, %struct.Memory** %MEMORY

  ; Code: callq .time_report	 RIP: 426970	 Bytes: 5
  %loadMem1_426970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426970 = call %struct.Memory* @routine_callq_.time_report(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426970, i64 350816, i64 5, i64 5)
  store %struct.Memory* %call1_426970, %struct.Memory** %MEMORY

  %loadMem2_426970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426970 = load i64, i64* %3
  %call2_426970 = call %struct.Memory* @sub_47c3d0.time_report(%struct.State* %0, i64  %loadPC_426970, %struct.Memory* %loadMem2_426970)
  store %struct.Memory* %call2_426970, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 426975	 Bytes: 8
  %loadMem_426975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426975 = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426975)
  store %struct.Memory* %call_426975, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xc8(%rbp)	 RIP: 42697d	 Bytes: 8
  %loadMem_42697d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42697d = call %struct.Memory* @routine_movsd__xmm0__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42697d)
  store %struct.Memory* %call_42697d, %struct.Memory** %MEMORY

  ; Code: jne .L_426990	 RIP: 426985	 Bytes: 6
  %loadMem_426985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426985 = call %struct.Memory* @routine_jne_.L_426990(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426985, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426985, %struct.Memory** %MEMORY

  %loadBr_426985 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426985 = icmp eq i8 %loadBr_426985, 1
  br i1 %cmpBr_426985, label %block_.L_426990, label %block_42698b

block_42698b:
  ; Code: jmpq .L_4269b8	 RIP: 42698b	 Bytes: 5
  %loadMem_42698b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42698b = call %struct.Memory* @routine_jmpq_.L_4269b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42698b, i64 45, i64 5)
  store %struct.Memory* %call_42698b, %struct.Memory** %MEMORY

  br label %block_.L_4269b8

  ; Code: .L_426990:	 RIP: 426990	 Bytes: 0
block_.L_426990:

  ; Code: movq $0x57bf39, %rdi	 RIP: 426990	 Bytes: 10
  %loadMem_426990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426990 = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426990)
  store %struct.Memory* %call_426990, %struct.Memory** %MEMORY

  ; Code: movl $0x19f, %esi	 RIP: 42699a	 Bytes: 5
  %loadMem_42699a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42699a = call %struct.Memory* @routine_movl__0x19f___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42699a)
  store %struct.Memory* %call_42699a, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 42699f	 Bytes: 10
  %loadMem_42699f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42699f = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42699f)
  store %struct.Memory* %call_42699f, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 4269a9	 Bytes: 5
  %loadMem_4269a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269a9 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269a9)
  store %struct.Memory* %call_4269a9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4269ae	 Bytes: 2
  %loadMem_4269ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269ae = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269ae)
  store %struct.Memory* %call_4269ae, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 4269b0	 Bytes: 3
  %loadMem_4269b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269b0 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269b0)
  store %struct.Memory* %call_4269b0, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 4269b3	 Bytes: 5
  %loadMem1_4269b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4269b3 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4269b3, i64 177885, i64 5, i64 5)
  store %struct.Memory* %call1_4269b3, %struct.Memory** %MEMORY

  %loadMem2_4269b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4269b3 = load i64, i64* %3
  %call2_4269b3 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_4269b3, %struct.Memory* %loadMem2_4269b3)
  store %struct.Memory* %call2_4269b3, %struct.Memory** %MEMORY

  ; Code: .L_4269b8:	 RIP: 4269b8	 Bytes: 0
  br label %block_.L_4269b8
block_.L_4269b8:

  ; Code: leaq -0x24(%rbp), %rsi	 RIP: 4269b8	 Bytes: 4
  %loadMem_4269b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269b8 = call %struct.Memory* @routine_leaq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269b8)
  store %struct.Memory* %call_4269b8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4269bc	 Bytes: 4
  %loadMem_4269bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269bc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269bc)
  store %struct.Memory* %call_4269bc, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 4269c0	 Bytes: 3
  %loadMem_4269c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269c0 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269c0)
  store %struct.Memory* %call_4269c0, %struct.Memory** %MEMORY

  ; Code: movss -0x18(%rbp), %xmm0	 RIP: 4269c3	 Bytes: 5
  %loadMem_4269c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269c3 = call %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269c3)
  store %struct.Memory* %call_4269c3, %struct.Memory** %MEMORY

  ; Code: movss 0xab0f18, %xmm1	 RIP: 4269c8	 Bytes: 9
  %loadMem_4269c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269c8 = call %struct.Memory* @routine_movss_0xab0f18___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269c8)
  store %struct.Memory* %call_4269c8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4269d1	 Bytes: 4
  %loadMem_4269d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269d1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269d1)
  store %struct.Memory* %call_4269d1, %struct.Memory** %MEMORY

  ; Code: callq .review_move_reasons	 RIP: 4269d5	 Bytes: 5
  %loadMem1_4269d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4269d5 = call %struct.Memory* @routine_callq_.review_move_reasons(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4269d5, i64 351419, i64 5, i64 5)
  store %struct.Memory* %call1_4269d5, %struct.Memory** %MEMORY

  %loadMem2_4269d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4269d5 = load i64, i64* %3
  %call2_4269d5 = call %struct.Memory* @sub_47c690.review_move_reasons(%struct.State* %0, i64  %loadPC_4269d5, %struct.Memory* %loadMem2_4269d5)
  store %struct.Memory* %call2_4269d5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4269da	 Bytes: 3
  %loadMem_4269da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269da = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269da)
  store %struct.Memory* %call_4269da, %struct.Memory** %MEMORY

  ; Code: je .L_426a1d	 RIP: 4269dd	 Bytes: 6
  %loadMem_4269dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269dd = call %struct.Memory* @routine_je_.L_426a1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269dd, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_4269dd, %struct.Memory** %MEMORY

  %loadBr_4269dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4269dd = icmp eq i8 %loadBr_4269dd, 1
  br i1 %cmpBr_4269dd, label %block_.L_426a1d, label %block_4269e3

block_4269e3:
  ; Code: cmpl $0x0, 0xab0f28	 RIP: 4269e3	 Bytes: 8
  %loadMem_4269e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269e3 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269e3)
  store %struct.Memory* %call_4269e3, %struct.Memory** %MEMORY

  ; Code: jne .L_4269f6	 RIP: 4269eb	 Bytes: 6
  %loadMem_4269eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269eb = call %struct.Memory* @routine_jne_.L_4269f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269eb, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4269eb, %struct.Memory** %MEMORY

  %loadBr_4269eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4269eb = icmp eq i8 %loadBr_4269eb, 1
  br i1 %cmpBr_4269eb, label %block_.L_4269f6, label %block_4269f1

block_4269f1:
  ; Code: jmpq .L_426a18	 RIP: 4269f1	 Bytes: 5
  %loadMem_4269f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269f1 = call %struct.Memory* @routine_jmpq_.L_426a18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269f1, i64 39, i64 5)
  store %struct.Memory* %call_4269f1, %struct.Memory** %MEMORY

  br label %block_.L_426a18

  ; Code: .L_4269f6:	 RIP: 4269f6	 Bytes: 0
block_.L_4269f6:

  ; Code: movq $0x57a10c, %rdi	 RIP: 4269f6	 Bytes: 10
  %loadMem_4269f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4269f6 = call %struct.Memory* @routine_movq__0x57a10c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4269f6)
  store %struct.Memory* %call_4269f6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 426a00	 Bytes: 4
  %loadMem_426a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a00 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a00)
  store %struct.Memory* %call_426a00, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 426a04	 Bytes: 2
  %loadMem_426a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a04 = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a04)
  store %struct.Memory* %call_426a04, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x24(%rbp), %xmm0	 RIP: 426a06	 Bytes: 5
  %loadMem_426a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a06 = call %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a06)
  store %struct.Memory* %call_426a06, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 426a0b	 Bytes: 2
  %loadMem_426a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a0b = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a0b)
  store %struct.Memory* %call_426a0b, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 426a0d	 Bytes: 5
  %loadMem1_426a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426a0d = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426a0d, i64 177059, i64 5, i64 5)
  store %struct.Memory* %call1_426a0d, %struct.Memory** %MEMORY

  %loadMem2_426a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426a0d = load i64, i64* %3
  %call2_426a0d = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_426a0d, %struct.Memory* %loadMem2_426a0d)
  store %struct.Memory* %call2_426a0d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xcc(%rbp)	 RIP: 426a12	 Bytes: 6
  %loadMem_426a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a12 = call %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a12)
  store %struct.Memory* %call_426a12, %struct.Memory** %MEMORY

  ; Code: .L_426a18:	 RIP: 426a18	 Bytes: 0
  br label %block_.L_426a18
block_.L_426a18:

  ; Code: jmpq .L_426a1d	 RIP: 426a18	 Bytes: 5
  %loadMem_426a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a18 = call %struct.Memory* @routine_jmpq_.L_426a1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a18, i64 5, i64 5)
  store %struct.Memory* %call_426a18, %struct.Memory** %MEMORY

  br label %block_.L_426a1d

  ; Code: .L_426a1d:	 RIP: 426a1d	 Bytes: 0
block_.L_426a1d:

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 426a1d	 Bytes: 8
  %loadMem_426a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a1d = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a1d)
  store %struct.Memory* %call_426a1d, %struct.Memory** %MEMORY

  ; Code: jne .L_426a30	 RIP: 426a25	 Bytes: 6
  %loadMem_426a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a25 = call %struct.Memory* @routine_jne_.L_426a30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a25, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426a25, %struct.Memory** %MEMORY

  %loadBr_426a25 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426a25 = icmp eq i8 %loadBr_426a25, 1
  br i1 %cmpBr_426a25, label %block_.L_426a30, label %block_426a2b

block_426a2b:
  ; Code: jmpq .L_426a58	 RIP: 426a2b	 Bytes: 5
  %loadMem_426a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a2b = call %struct.Memory* @routine_jmpq_.L_426a58(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a2b, i64 45, i64 5)
  store %struct.Memory* %call_426a2b, %struct.Memory** %MEMORY

  br label %block_.L_426a58

  ; Code: .L_426a30:	 RIP: 426a30	 Bytes: 0
block_.L_426a30:

  ; Code: movq $0x57bf39, %rdi	 RIP: 426a30	 Bytes: 10
  %loadMem_426a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a30 = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a30)
  store %struct.Memory* %call_426a30, %struct.Memory** %MEMORY

  ; Code: movl $0x1a5, %esi	 RIP: 426a3a	 Bytes: 5
  %loadMem_426a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a3a = call %struct.Memory* @routine_movl__0x1a5___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a3a)
  store %struct.Memory* %call_426a3a, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 426a3f	 Bytes: 10
  %loadMem_426a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a3f = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a3f)
  store %struct.Memory* %call_426a3f, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 426a49	 Bytes: 5
  %loadMem_426a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a49 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a49)
  store %struct.Memory* %call_426a49, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 426a4e	 Bytes: 2
  %loadMem_426a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a4e = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a4e)
  store %struct.Memory* %call_426a4e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 426a50	 Bytes: 3
  %loadMem_426a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a50 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a50)
  store %struct.Memory* %call_426a50, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 426a53	 Bytes: 5
  %loadMem1_426a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426a53 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426a53, i64 177725, i64 5, i64 5)
  store %struct.Memory* %call1_426a53, %struct.Memory** %MEMORY

  %loadMem2_426a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426a53 = load i64, i64* %3
  %call2_426a53 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_426a53, %struct.Memory* %loadMem2_426a53)
  store %struct.Memory* %call2_426a53, %struct.Memory** %MEMORY

  ; Code: .L_426a58:	 RIP: 426a58	 Bytes: 0
  br label %block_.L_426a58
block_.L_426a58:

  ; Code: movl $0x1, %edi	 RIP: 426a58	 Bytes: 5
  %loadMem_426a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a58 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a58)
  store %struct.Memory* %call_426a58, %struct.Memory** %MEMORY

  ; Code: movq $0x57c149, %rsi	 RIP: 426a5d	 Bytes: 10
  %loadMem_426a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a5d = call %struct.Memory* @routine_movq__0x57c149___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a5d)
  store %struct.Memory* %call_426a5d, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 426a67	 Bytes: 2
  %loadMem_426a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a67 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a67)
  store %struct.Memory* %call_426a67, %struct.Memory** %MEMORY

  ; Code: movsd 0xbc4ef(%rip), %xmm0	 RIP: 426a69	 Bytes: 8
  %loadMem_426a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a69 = call %struct.Memory* @routine_movsd_0xbc4ef__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a69)
  store %struct.Memory* %call_426a69, %struct.Memory** %MEMORY

  ; Code: callq .time_report	 RIP: 426a71	 Bytes: 5
  %loadMem1_426a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426a71 = call %struct.Memory* @routine_callq_.time_report(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426a71, i64 350559, i64 5, i64 5)
  store %struct.Memory* %call1_426a71, %struct.Memory** %MEMORY

  %loadMem2_426a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426a71 = load i64, i64* %3
  %call2_426a71 = call %struct.Memory* @sub_47c3d0.time_report(%struct.State* %0, i64  %loadPC_426a71, %struct.Memory* %loadMem2_426a71)
  store %struct.Memory* %call2_426a71, %struct.Memory** %MEMORY

  ; Code: movsd 0xbc542(%rip), %xmm1	 RIP: 426a76	 Bytes: 8
  %loadMem_426a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a76 = call %struct.Memory* @routine_movsd_0xbc542__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a76)
  store %struct.Memory* %call_426a76, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x24(%rbp), %xmm2	 RIP: 426a7e	 Bytes: 5
  %loadMem_426a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a7e = call %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a7e)
  store %struct.Memory* %call_426a7e, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm2, %xmm1	 RIP: 426a83	 Bytes: 4
  %loadMem_426a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a83 = call %struct.Memory* @routine_ucomisd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a83)
  store %struct.Memory* %call_426a83, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xd8(%rbp)	 RIP: 426a87	 Bytes: 8
  %loadMem_426a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a87 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a87)
  store %struct.Memory* %call_426a87, %struct.Memory** %MEMORY

  ; Code: jbe .L_426b6a	 RIP: 426a8f	 Bytes: 6
  %loadMem_426a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a8f = call %struct.Memory* @routine_jbe_.L_426b6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a8f, i8* %BRANCH_TAKEN, i64 219, i64 6, i64 6)
  store %struct.Memory* %call_426a8f, %struct.Memory** %MEMORY

  %loadBr_426a8f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426a8f = icmp eq i8 %loadBr_426a8f, 1
  br i1 %cmpBr_426a8f, label %block_.L_426b6a, label %block_426a95

block_426a95:
  ; Code: cmpl $0x0, 0xab0fbc	 RIP: 426a95	 Bytes: 8
  %loadMem_426a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a95 = call %struct.Memory* @routine_cmpl__0x0__0xab0fbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a95)
  store %struct.Memory* %call_426a95, %struct.Memory** %MEMORY

  ; Code: jne .L_426b6a	 RIP: 426a9d	 Bytes: 6
  %loadMem_426a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426a9d = call %struct.Memory* @routine_jne_.L_426b6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426a9d, i8* %BRANCH_TAKEN, i64 205, i64 6, i64 6)
  store %struct.Memory* %call_426a9d, %struct.Memory** %MEMORY

  %loadBr_426a9d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426a9d = icmp eq i8 %loadBr_426a9d, 1
  br i1 %cmpBr_426a9d, label %block_.L_426b6a, label %block_426aa3

block_426aa3:
  ; Code: movss 0xbc66d(%rip), %xmm0	 RIP: 426aa3	 Bytes: 8
  %loadMem_426aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426aa3 = call %struct.Memory* @routine_movss_0xbc66d__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426aa3)
  store %struct.Memory* %call_426aa3, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 426aab	 Bytes: 3
  %loadMem_426aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426aab = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426aab)
  store %struct.Memory* %call_426aab, %struct.Memory** %MEMORY

  ; Code: callq .revise_thrashing_dragon	 RIP: 426aae	 Bytes: 5
  %loadMem1_426aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426aae = call %struct.Memory* @routine_callq_.revise_thrashing_dragon(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426aae, i64 3106, i64 5, i64 5)
  store %struct.Memory* %call1_426aae, %struct.Memory** %MEMORY

  %loadMem2_426aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426aae = load i64, i64* %3
  %call2_426aae = call %struct.Memory* @sub_4276d0.revise_thrashing_dragon(%struct.State* %0, i64  %loadPC_426aae, %struct.Memory* %loadMem2_426aae)
  store %struct.Memory* %call2_426aae, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 426ab3	 Bytes: 3
  %loadMem_426ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ab3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ab3)
  store %struct.Memory* %call_426ab3, %struct.Memory** %MEMORY

  ; Code: je .L_426b44	 RIP: 426ab6	 Bytes: 6
  %loadMem_426ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ab6 = call %struct.Memory* @routine_je_.L_426b44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ab6, i8* %BRANCH_TAKEN, i64 142, i64 6, i64 6)
  store %struct.Memory* %call_426ab6, %struct.Memory** %MEMORY

  %loadBr_426ab6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426ab6 = icmp eq i8 %loadBr_426ab6, 1
  br i1 %cmpBr_426ab6, label %block_.L_426b44, label %block_426abc

block_426abc:
  ; Code: movl -0x14(%rbp), %edi	 RIP: 426abc	 Bytes: 3
  %loadMem_426abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426abc = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426abc)
  store %struct.Memory* %call_426abc, %struct.Memory** %MEMORY

  ; Code: callq .shapes	 RIP: 426abf	 Bytes: 5
  %loadMem1_426abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426abf = call %struct.Memory* @routine_callq_.shapes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426abf, i64 312545, i64 5, i64 5)
  store %struct.Memory* %call1_426abf, %struct.Memory** %MEMORY

  %loadMem2_426abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426abf = load i64, i64* %3
  %call2_426abf = call %struct.Memory* @sub_472fa0.shapes(%struct.State* %0, i64  %loadPC_426abf, %struct.Memory* %loadMem2_426abf)
  store %struct.Memory* %call2_426abf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0fb8	 RIP: 426ac4	 Bytes: 8
  %loadMem_426ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ac4 = call %struct.Memory* @routine_cmpl__0x0__0xab0fb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ac4)
  store %struct.Memory* %call_426ac4, %struct.Memory** %MEMORY

  ; Code: jne .L_426ada	 RIP: 426acc	 Bytes: 6
  %loadMem_426acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426acc = call %struct.Memory* @routine_jne_.L_426ada(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426acc, i8* %BRANCH_TAKEN, i64 14, i64 6, i64 6)
  store %struct.Memory* %call_426acc, %struct.Memory** %MEMORY

  %loadBr_426acc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426acc = icmp eq i8 %loadBr_426acc, 1
  br i1 %cmpBr_426acc, label %block_.L_426ada, label %block_426ad2

block_426ad2:
  ; Code: movl -0x14(%rbp), %edi	 RIP: 426ad2	 Bytes: 3
  %loadMem_426ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ad2 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ad2)
  store %struct.Memory* %call_426ad2, %struct.Memory** %MEMORY

  ; Code: callq .endgame_shapes	 RIP: 426ad5	 Bytes: 5
  %loadMem1_426ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426ad5 = call %struct.Memory* @routine_callq_.endgame_shapes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426ad5, i64 319019, i64 5, i64 5)
  store %struct.Memory* %call1_426ad5, %struct.Memory** %MEMORY

  %loadMem2_426ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426ad5 = load i64, i64* %3
  %call2_426ad5 = call %struct.Memory* @sub_474900.endgame_shapes(%struct.State* %0, i64  %loadPC_426ad5, %struct.Memory* %loadMem2_426ad5)
  store %struct.Memory* %call2_426ad5, %struct.Memory** %MEMORY

  ; Code: .L_426ada:	 RIP: 426ada	 Bytes: 0
  br label %block_.L_426ada
block_.L_426ada:

  ; Code: leaq -0x24(%rbp), %rsi	 RIP: 426ada	 Bytes: 4
  %loadMem_426ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ada = call %struct.Memory* @routine_leaq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ada)
  store %struct.Memory* %call_426ada, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 426ade	 Bytes: 4
  %loadMem_426ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ade = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ade)
  store %struct.Memory* %call_426ade, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 426ae2	 Bytes: 3
  %loadMem_426ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ae2 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ae2)
  store %struct.Memory* %call_426ae2, %struct.Memory** %MEMORY

  ; Code: movss -0x18(%rbp), %xmm0	 RIP: 426ae5	 Bytes: 5
  %loadMem_426ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ae5 = call %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ae5)
  store %struct.Memory* %call_426ae5, %struct.Memory** %MEMORY

  ; Code: movss 0xab0f14, %xmm1	 RIP: 426aea	 Bytes: 9
  %loadMem_426aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426aea = call %struct.Memory* @routine_movss_0xab0f14___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426aea)
  store %struct.Memory* %call_426aea, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 426af3	 Bytes: 4
  %loadMem_426af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426af3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426af3)
  store %struct.Memory* %call_426af3, %struct.Memory** %MEMORY

  ; Code: callq .review_move_reasons	 RIP: 426af7	 Bytes: 5
  %loadMem1_426af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426af7 = call %struct.Memory* @routine_callq_.review_move_reasons(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426af7, i64 351129, i64 5, i64 5)
  store %struct.Memory* %call1_426af7, %struct.Memory** %MEMORY

  %loadMem2_426af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426af7 = load i64, i64* %3
  %call2_426af7 = call %struct.Memory* @sub_47c690.review_move_reasons(%struct.State* %0, i64  %loadPC_426af7, %struct.Memory* %loadMem2_426af7)
  store %struct.Memory* %call2_426af7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 426afc	 Bytes: 3
  %loadMem_426afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426afc = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426afc)
  store %struct.Memory* %call_426afc, %struct.Memory** %MEMORY

  ; Code: je .L_426b3f	 RIP: 426aff	 Bytes: 6
  %loadMem_426aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426aff = call %struct.Memory* @routine_je_.L_426b3f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426aff, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_426aff, %struct.Memory** %MEMORY

  %loadBr_426aff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426aff = icmp eq i8 %loadBr_426aff, 1
  br i1 %cmpBr_426aff, label %block_.L_426b3f, label %block_426b05

block_426b05:
  ; Code: cmpl $0x0, 0xab0f28	 RIP: 426b05	 Bytes: 8
  %loadMem_426b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b05 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b05)
  store %struct.Memory* %call_426b05, %struct.Memory** %MEMORY

  ; Code: jne .L_426b18	 RIP: 426b0d	 Bytes: 6
  %loadMem_426b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b0d = call %struct.Memory* @routine_jne_.L_426b18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b0d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426b0d, %struct.Memory** %MEMORY

  %loadBr_426b0d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426b0d = icmp eq i8 %loadBr_426b0d, 1
  br i1 %cmpBr_426b0d, label %block_.L_426b18, label %block_426b13

block_426b13:
  ; Code: jmpq .L_426b3a	 RIP: 426b13	 Bytes: 5
  %loadMem_426b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b13 = call %struct.Memory* @routine_jmpq_.L_426b3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b13, i64 39, i64 5)
  store %struct.Memory* %call_426b13, %struct.Memory** %MEMORY

  br label %block_.L_426b3a

  ; Code: .L_426b18:	 RIP: 426b18	 Bytes: 0
block_.L_426b18:

  ; Code: movq $0x57c15d, %rdi	 RIP: 426b18	 Bytes: 10
  %loadMem_426b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b18 = call %struct.Memory* @routine_movq__0x57c15d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b18)
  store %struct.Memory* %call_426b18, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 426b22	 Bytes: 4
  %loadMem_426b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b22 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b22)
  store %struct.Memory* %call_426b22, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 426b26	 Bytes: 2
  %loadMem_426b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b26 = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b26)
  store %struct.Memory* %call_426b26, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x24(%rbp), %xmm0	 RIP: 426b28	 Bytes: 5
  %loadMem_426b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b28 = call %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b28)
  store %struct.Memory* %call_426b28, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 426b2d	 Bytes: 2
  %loadMem_426b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b2d = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b2d)
  store %struct.Memory* %call_426b2d, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 426b2f	 Bytes: 5
  %loadMem1_426b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426b2f = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426b2f, i64 176769, i64 5, i64 5)
  store %struct.Memory* %call1_426b2f, %struct.Memory** %MEMORY

  %loadMem2_426b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426b2f = load i64, i64* %3
  %call2_426b2f = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_426b2f, %struct.Memory* %loadMem2_426b2f)
  store %struct.Memory* %call2_426b2f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xdc(%rbp)	 RIP: 426b34	 Bytes: 6
  %loadMem_426b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b34 = call %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b34)
  store %struct.Memory* %call_426b34, %struct.Memory** %MEMORY

  ; Code: .L_426b3a:	 RIP: 426b3a	 Bytes: 0
  br label %block_.L_426b3a
block_.L_426b3a:

  ; Code: jmpq .L_426b3f	 RIP: 426b3a	 Bytes: 5
  %loadMem_426b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b3a = call %struct.Memory* @routine_jmpq_.L_426b3f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b3a, i64 5, i64 5)
  store %struct.Memory* %call_426b3a, %struct.Memory** %MEMORY

  br label %block_.L_426b3f

  ; Code: .L_426b3f:	 RIP: 426b3f	 Bytes: 0
block_.L_426b3f:

  ; Code: jmpq .L_426b44	 RIP: 426b3f	 Bytes: 5
  %loadMem_426b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b3f = call %struct.Memory* @routine_jmpq_.L_426b44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b3f, i64 5, i64 5)
  store %struct.Memory* %call_426b3f, %struct.Memory** %MEMORY

  br label %block_.L_426b44

  ; Code: .L_426b44:	 RIP: 426b44	 Bytes: 0
block_.L_426b44:

  ; Code: movl $0x1, %edi	 RIP: 426b44	 Bytes: 5
  %loadMem_426b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b44 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b44)
  store %struct.Memory* %call_426b44, %struct.Memory** %MEMORY

  ; Code: movq $0x57c19b, %rsi	 RIP: 426b49	 Bytes: 10
  %loadMem_426b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b49 = call %struct.Memory* @routine_movq__0x57c19b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b49)
  store %struct.Memory* %call_426b49, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 426b53	 Bytes: 2
  %loadMem_426b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b53 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b53)
  store %struct.Memory* %call_426b53, %struct.Memory** %MEMORY

  ; Code: movsd 0xbc403(%rip), %xmm0	 RIP: 426b55	 Bytes: 8
  %loadMem_426b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b55 = call %struct.Memory* @routine_movsd_0xbc403__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b55)
  store %struct.Memory* %call_426b55, %struct.Memory** %MEMORY

  ; Code: callq .time_report	 RIP: 426b5d	 Bytes: 5
  %loadMem1_426b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426b5d = call %struct.Memory* @routine_callq_.time_report(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426b5d, i64 350323, i64 5, i64 5)
  store %struct.Memory* %call1_426b5d, %struct.Memory** %MEMORY

  %loadMem2_426b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426b5d = load i64, i64* %3
  %call2_426b5d = call %struct.Memory* @sub_47c3d0.time_report(%struct.State* %0, i64  %loadPC_426b5d, %struct.Memory* %loadMem2_426b5d)
  store %struct.Memory* %call2_426b5d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xe8(%rbp)	 RIP: 426b62	 Bytes: 8
  %loadMem_426b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b62 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xe8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b62)
  store %struct.Memory* %call_426b62, %struct.Memory** %MEMORY

  ; Code: .L_426b6a:	 RIP: 426b6a	 Bytes: 0
  br label %block_.L_426b6a
block_.L_426b6a:

  ; Code: movsd 0xbc456(%rip), %xmm0	 RIP: 426b6a	 Bytes: 8
  %loadMem_426b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b6a = call %struct.Memory* @routine_movsd_0xbc456__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b6a)
  store %struct.Memory* %call_426b6a, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x24(%rbp), %xmm1	 RIP: 426b72	 Bytes: 5
  %loadMem_426b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b72 = call %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b72)
  store %struct.Memory* %call_426b72, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 426b77	 Bytes: 4
  %loadMem_426b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b77 = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b77)
  store %struct.Memory* %call_426b77, %struct.Memory** %MEMORY

  ; Code: jb .L_426c98	 RIP: 426b7b	 Bytes: 6
  %loadMem_426b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b7b = call %struct.Memory* @routine_jb_.L_426c98(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b7b, i8* %BRANCH_TAKEN, i64 285, i64 6, i64 6)
  store %struct.Memory* %call_426b7b, %struct.Memory** %MEMORY

  %loadBr_426b7b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426b7b = icmp eq i8 %loadBr_426b7b, 1
  br i1 %cmpBr_426b7b, label %block_.L_426c98, label %block_426b81

block_426b81:
  ; Code: cmpl $0x0, 0xab0fb8	 RIP: 426b81	 Bytes: 8
  %loadMem_426b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b81 = call %struct.Memory* @routine_cmpl__0x0__0xab0fb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b81)
  store %struct.Memory* %call_426b81, %struct.Memory** %MEMORY

  ; Code: jne .L_426c98	 RIP: 426b89	 Bytes: 6
  %loadMem_426b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b89 = call %struct.Memory* @routine_jne_.L_426c98(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b89, i8* %BRANCH_TAKEN, i64 271, i64 6, i64 6)
  store %struct.Memory* %call_426b89, %struct.Memory** %MEMORY

  %loadBr_426b89 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426b89 = icmp eq i8 %loadBr_426b89, 1
  br i1 %cmpBr_426b89, label %block_.L_426c98, label %block_426b8f

block_426b8f:
  ; Code: movl -0x14(%rbp), %edi	 RIP: 426b8f	 Bytes: 3
  %loadMem_426b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b8f = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b8f)
  store %struct.Memory* %call_426b8f, %struct.Memory** %MEMORY

  ; Code: callq .endgame_shapes	 RIP: 426b92	 Bytes: 5
  %loadMem1_426b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426b92 = call %struct.Memory* @routine_callq_.endgame_shapes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426b92, i64 318830, i64 5, i64 5)
  store %struct.Memory* %call1_426b92, %struct.Memory** %MEMORY

  %loadMem2_426b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426b92 = load i64, i64* %3
  %call2_426b92 = call %struct.Memory* @sub_474900.endgame_shapes(%struct.State* %0, i64  %loadPC_426b92, %struct.Memory* %loadMem2_426b92)
  store %struct.Memory* %call2_426b92, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 426b97	 Bytes: 8
  %loadMem_426b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b97 = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b97)
  store %struct.Memory* %call_426b97, %struct.Memory** %MEMORY

  ; Code: jne .L_426baa	 RIP: 426b9f	 Bytes: 6
  %loadMem_426b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426b9f = call %struct.Memory* @routine_jne_.L_426baa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426b9f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426b9f, %struct.Memory** %MEMORY

  %loadBr_426b9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426b9f = icmp eq i8 %loadBr_426b9f, 1
  br i1 %cmpBr_426b9f, label %block_.L_426baa, label %block_426ba5

block_426ba5:
  ; Code: jmpq .L_426bd2	 RIP: 426ba5	 Bytes: 5
  %loadMem_426ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ba5 = call %struct.Memory* @routine_jmpq_.L_426bd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ba5, i64 45, i64 5)
  store %struct.Memory* %call_426ba5, %struct.Memory** %MEMORY

  br label %block_.L_426bd2

  ; Code: .L_426baa:	 RIP: 426baa	 Bytes: 0
block_.L_426baa:

  ; Code: movq $0x57bf39, %rdi	 RIP: 426baa	 Bytes: 10
  %loadMem_426baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426baa = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426baa)
  store %struct.Memory* %call_426baa, %struct.Memory** %MEMORY

  ; Code: movl $0x1bd, %esi	 RIP: 426bb4	 Bytes: 5
  %loadMem_426bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bb4 = call %struct.Memory* @routine_movl__0x1bd___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bb4)
  store %struct.Memory* %call_426bb4, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 426bb9	 Bytes: 10
  %loadMem_426bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bb9 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bb9)
  store %struct.Memory* %call_426bb9, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 426bc3	 Bytes: 5
  %loadMem_426bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bc3 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bc3)
  store %struct.Memory* %call_426bc3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 426bc8	 Bytes: 2
  %loadMem_426bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bc8 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bc8)
  store %struct.Memory* %call_426bc8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 426bca	 Bytes: 3
  %loadMem_426bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bca = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bca)
  store %struct.Memory* %call_426bca, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 426bcd	 Bytes: 5
  %loadMem1_426bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426bcd = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426bcd, i64 177347, i64 5, i64 5)
  store %struct.Memory* %call1_426bcd, %struct.Memory** %MEMORY

  %loadMem2_426bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426bcd = load i64, i64* %3
  %call2_426bcd = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_426bcd, %struct.Memory* %loadMem2_426bcd)
  store %struct.Memory* %call2_426bcd, %struct.Memory** %MEMORY

  ; Code: .L_426bd2:	 RIP: 426bd2	 Bytes: 0
  br label %block_.L_426bd2
block_.L_426bd2:

  ; Code: leaq -0x24(%rbp), %rsi	 RIP: 426bd2	 Bytes: 4
  %loadMem_426bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bd2 = call %struct.Memory* @routine_leaq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bd2)
  store %struct.Memory* %call_426bd2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 426bd6	 Bytes: 4
  %loadMem_426bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bd6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bd6)
  store %struct.Memory* %call_426bd6, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 426bda	 Bytes: 3
  %loadMem_426bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bda = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bda)
  store %struct.Memory* %call_426bda, %struct.Memory** %MEMORY

  ; Code: movss -0x18(%rbp), %xmm0	 RIP: 426bdd	 Bytes: 5
  %loadMem_426bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bdd = call %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bdd)
  store %struct.Memory* %call_426bdd, %struct.Memory** %MEMORY

  ; Code: movss 0xab0f14, %xmm1	 RIP: 426be2	 Bytes: 9
  %loadMem_426be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426be2 = call %struct.Memory* @routine_movss_0xab0f14___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426be2)
  store %struct.Memory* %call_426be2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 426beb	 Bytes: 4
  %loadMem_426beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426beb = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426beb)
  store %struct.Memory* %call_426beb, %struct.Memory** %MEMORY

  ; Code: callq .review_move_reasons	 RIP: 426bef	 Bytes: 5
  %loadMem1_426bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426bef = call %struct.Memory* @routine_callq_.review_move_reasons(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426bef, i64 350881, i64 5, i64 5)
  store %struct.Memory* %call1_426bef, %struct.Memory** %MEMORY

  %loadMem2_426bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426bef = load i64, i64* %3
  %call2_426bef = call %struct.Memory* @sub_47c690.review_move_reasons(%struct.State* %0, i64  %loadPC_426bef, %struct.Memory* %loadMem2_426bef)
  store %struct.Memory* %call2_426bef, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 426bf4	 Bytes: 3
  %loadMem_426bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bf4 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bf4)
  store %struct.Memory* %call_426bf4, %struct.Memory** %MEMORY

  ; Code: je .L_426c37	 RIP: 426bf7	 Bytes: 6
  %loadMem_426bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bf7 = call %struct.Memory* @routine_je_.L_426c37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bf7, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_426bf7, %struct.Memory** %MEMORY

  %loadBr_426bf7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426bf7 = icmp eq i8 %loadBr_426bf7, 1
  br i1 %cmpBr_426bf7, label %block_.L_426c37, label %block_426bfd

block_426bfd:
  ; Code: cmpl $0x0, 0xab0f28	 RIP: 426bfd	 Bytes: 8
  %loadMem_426bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426bfd = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426bfd)
  store %struct.Memory* %call_426bfd, %struct.Memory** %MEMORY

  ; Code: jne .L_426c10	 RIP: 426c05	 Bytes: 6
  %loadMem_426c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c05 = call %struct.Memory* @routine_jne_.L_426c10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c05, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426c05, %struct.Memory** %MEMORY

  %loadBr_426c05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426c05 = icmp eq i8 %loadBr_426c05, 1
  br i1 %cmpBr_426c05, label %block_.L_426c10, label %block_426c0b

block_426c0b:
  ; Code: jmpq .L_426c32	 RIP: 426c0b	 Bytes: 5
  %loadMem_426c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c0b = call %struct.Memory* @routine_jmpq_.L_426c32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c0b, i64 39, i64 5)
  store %struct.Memory* %call_426c0b, %struct.Memory** %MEMORY

  br label %block_.L_426c32

  ; Code: .L_426c10:	 RIP: 426c10	 Bytes: 0
block_.L_426c10:

  ; Code: movq $0x57a10c, %rdi	 RIP: 426c10	 Bytes: 10
  %loadMem_426c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c10 = call %struct.Memory* @routine_movq__0x57a10c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c10)
  store %struct.Memory* %call_426c10, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 426c1a	 Bytes: 4
  %loadMem_426c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c1a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c1a)
  store %struct.Memory* %call_426c1a, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 426c1e	 Bytes: 2
  %loadMem_426c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c1e = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c1e)
  store %struct.Memory* %call_426c1e, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x24(%rbp), %xmm0	 RIP: 426c20	 Bytes: 5
  %loadMem_426c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c20 = call %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c20)
  store %struct.Memory* %call_426c20, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 426c25	 Bytes: 2
  %loadMem_426c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c25 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c25)
  store %struct.Memory* %call_426c25, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 426c27	 Bytes: 5
  %loadMem1_426c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426c27 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426c27, i64 176521, i64 5, i64 5)
  store %struct.Memory* %call1_426c27, %struct.Memory** %MEMORY

  %loadMem2_426c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426c27 = load i64, i64* %3
  %call2_426c27 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_426c27, %struct.Memory* %loadMem2_426c27)
  store %struct.Memory* %call2_426c27, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xec(%rbp)	 RIP: 426c2c	 Bytes: 6
  %loadMem_426c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c2c = call %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c2c)
  store %struct.Memory* %call_426c2c, %struct.Memory** %MEMORY

  ; Code: .L_426c32:	 RIP: 426c32	 Bytes: 0
  br label %block_.L_426c32
block_.L_426c32:

  ; Code: jmpq .L_426c37	 RIP: 426c32	 Bytes: 5
  %loadMem_426c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c32 = call %struct.Memory* @routine_jmpq_.L_426c37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c32, i64 5, i64 5)
  store %struct.Memory* %call_426c32, %struct.Memory** %MEMORY

  br label %block_.L_426c37

  ; Code: .L_426c37:	 RIP: 426c37	 Bytes: 0
block_.L_426c37:

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 426c37	 Bytes: 8
  %loadMem_426c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c37 = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c37)
  store %struct.Memory* %call_426c37, %struct.Memory** %MEMORY

  ; Code: jne .L_426c4a	 RIP: 426c3f	 Bytes: 6
  %loadMem_426c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c3f = call %struct.Memory* @routine_jne_.L_426c4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c3f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426c3f, %struct.Memory** %MEMORY

  %loadBr_426c3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426c3f = icmp eq i8 %loadBr_426c3f, 1
  br i1 %cmpBr_426c3f, label %block_.L_426c4a, label %block_426c45

block_426c45:
  ; Code: jmpq .L_426c72	 RIP: 426c45	 Bytes: 5
  %loadMem_426c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c45 = call %struct.Memory* @routine_jmpq_.L_426c72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c45, i64 45, i64 5)
  store %struct.Memory* %call_426c45, %struct.Memory** %MEMORY

  br label %block_.L_426c72

  ; Code: .L_426c4a:	 RIP: 426c4a	 Bytes: 0
block_.L_426c4a:

  ; Code: movq $0x57bf39, %rdi	 RIP: 426c4a	 Bytes: 10
  %loadMem_426c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c4a = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c4a)
  store %struct.Memory* %call_426c4a, %struct.Memory** %MEMORY

  ; Code: movl $0x1c1, %esi	 RIP: 426c54	 Bytes: 5
  %loadMem_426c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c54 = call %struct.Memory* @routine_movl__0x1c1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c54)
  store %struct.Memory* %call_426c54, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 426c59	 Bytes: 10
  %loadMem_426c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c59 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c59)
  store %struct.Memory* %call_426c59, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 426c63	 Bytes: 5
  %loadMem_426c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c63 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c63)
  store %struct.Memory* %call_426c63, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 426c68	 Bytes: 2
  %loadMem_426c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c68 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c68)
  store %struct.Memory* %call_426c68, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 426c6a	 Bytes: 3
  %loadMem_426c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c6a = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c6a)
  store %struct.Memory* %call_426c6a, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 426c6d	 Bytes: 5
  %loadMem1_426c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426c6d = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426c6d, i64 177187, i64 5, i64 5)
  store %struct.Memory* %call1_426c6d, %struct.Memory** %MEMORY

  %loadMem2_426c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426c6d = load i64, i64* %3
  %call2_426c6d = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_426c6d, %struct.Memory* %loadMem2_426c6d)
  store %struct.Memory* %call2_426c6d, %struct.Memory** %MEMORY

  ; Code: .L_426c72:	 RIP: 426c72	 Bytes: 0
  br label %block_.L_426c72
block_.L_426c72:

  ; Code: movl $0x1, %edi	 RIP: 426c72	 Bytes: 5
  %loadMem_426c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c72 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c72)
  store %struct.Memory* %call_426c72, %struct.Memory** %MEMORY

  ; Code: movq $0x57c1c3, %rsi	 RIP: 426c77	 Bytes: 10
  %loadMem_426c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c77 = call %struct.Memory* @routine_movq__0x57c1c3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c77)
  store %struct.Memory* %call_426c77, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 426c81	 Bytes: 2
  %loadMem_426c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c81 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c81)
  store %struct.Memory* %call_426c81, %struct.Memory** %MEMORY

  ; Code: movsd 0xbc2d5(%rip), %xmm0	 RIP: 426c83	 Bytes: 8
  %loadMem_426c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c83 = call %struct.Memory* @routine_movsd_0xbc2d5__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c83)
  store %struct.Memory* %call_426c83, %struct.Memory** %MEMORY

  ; Code: callq .time_report	 RIP: 426c8b	 Bytes: 5
  %loadMem1_426c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426c8b = call %struct.Memory* @routine_callq_.time_report(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426c8b, i64 350021, i64 5, i64 5)
  store %struct.Memory* %call1_426c8b, %struct.Memory** %MEMORY

  %loadMem2_426c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426c8b = load i64, i64* %3
  %call2_426c8b = call %struct.Memory* @sub_47c3d0.time_report(%struct.State* %0, i64  %loadPC_426c8b, %struct.Memory* %loadMem2_426c8b)
  store %struct.Memory* %call2_426c8b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xf8(%rbp)	 RIP: 426c90	 Bytes: 8
  %loadMem_426c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c90 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c90)
  store %struct.Memory* %call_426c90, %struct.Memory** %MEMORY

  ; Code: .L_426c98:	 RIP: 426c98	 Bytes: 0
  br label %block_.L_426c98
block_.L_426c98:

  ; Code: xorps %xmm0, %xmm0	 RIP: 426c98	 Bytes: 3
  %loadMem_426c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c98 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c98)
  store %struct.Memory* %call_426c98, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x24(%rbp), %xmm1	 RIP: 426c9b	 Bytes: 5
  %loadMem_426c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426c9b = call %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426c9b)
  store %struct.Memory* %call_426c9b, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 426ca0	 Bytes: 4
  %loadMem_426ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ca0 = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ca0)
  store %struct.Memory* %call_426ca0, %struct.Memory** %MEMORY

  ; Code: jbe .L_426d6f	 RIP: 426ca4	 Bytes: 6
  %loadMem_426ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ca4 = call %struct.Memory* @routine_jbe_.L_426d6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ca4, i8* %BRANCH_TAKEN, i64 203, i64 6, i64 6)
  store %struct.Memory* %call_426ca4, %struct.Memory** %MEMORY

  %loadBr_426ca4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426ca4 = icmp eq i8 %loadBr_426ca4, 1
  br i1 %cmpBr_426ca4, label %block_.L_426d6f, label %block_426caa

block_426caa:
  ; Code: xorps %xmm0, %xmm0	 RIP: 426caa	 Bytes: 3
  %loadMem_426caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426caa = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426caa)
  store %struct.Memory* %call_426caa, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 426cad	 Bytes: 3
  %loadMem_426cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cad = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cad)
  store %struct.Memory* %call_426cad, %struct.Memory** %MEMORY

  ; Code: callq .revise_thrashing_dragon	 RIP: 426cb0	 Bytes: 5
  %loadMem1_426cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426cb0 = call %struct.Memory* @routine_callq_.revise_thrashing_dragon(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426cb0, i64 2592, i64 5, i64 5)
  store %struct.Memory* %call1_426cb0, %struct.Memory** %MEMORY

  %loadMem2_426cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426cb0 = load i64, i64* %3
  %call2_426cb0 = call %struct.Memory* @sub_4276d0.revise_thrashing_dragon(%struct.State* %0, i64  %loadPC_426cb0, %struct.Memory* %loadMem2_426cb0)
  store %struct.Memory* %call2_426cb0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 426cb5	 Bytes: 3
  %loadMem_426cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cb5 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cb5)
  store %struct.Memory* %call_426cb5, %struct.Memory** %MEMORY

  ; Code: jne .L_426ccf	 RIP: 426cb8	 Bytes: 6
  %loadMem_426cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cb8 = call %struct.Memory* @routine_jne_.L_426ccf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cb8, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_426cb8, %struct.Memory** %MEMORY

  %loadBr_426cb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426cb8 = icmp eq i8 %loadBr_426cb8, 1
  br i1 %cmpBr_426cb8, label %block_.L_426ccf, label %block_426cbe

block_426cbe:
  ; Code: movl -0x14(%rbp), %edi	 RIP: 426cbe	 Bytes: 3
  %loadMem_426cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cbe = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cbe)
  store %struct.Memory* %call_426cbe, %struct.Memory** %MEMORY

  ; Code: callq .revise_semeai	 RIP: 426cc1	 Bytes: 5
  %loadMem1_426cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426cc1 = call %struct.Memory* @routine_callq_.revise_semeai(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426cc1, i64 3119, i64 5, i64 5)
  store %struct.Memory* %call1_426cc1, %struct.Memory** %MEMORY

  %loadMem2_426cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426cc1 = load i64, i64* %3
  %call2_426cc1 = call %struct.Memory* @sub_4278f0.revise_semeai(%struct.State* %0, i64  %loadPC_426cc1, %struct.Memory* %loadMem2_426cc1)
  store %struct.Memory* %call2_426cc1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 426cc6	 Bytes: 3
  %loadMem_426cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cc6 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cc6)
  store %struct.Memory* %call_426cc6, %struct.Memory** %MEMORY

  ; Code: je .L_426d49	 RIP: 426cc9	 Bytes: 6
  %loadMem_426cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cc9 = call %struct.Memory* @routine_je_.L_426d49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cc9, i8* %BRANCH_TAKEN, i64 128, i64 6, i64 6)
  store %struct.Memory* %call_426cc9, %struct.Memory** %MEMORY

  %loadBr_426cc9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426cc9 = icmp eq i8 %loadBr_426cc9, 1
  br i1 %cmpBr_426cc9, label %block_.L_426d49, label %block_.L_426ccf

  ; Code: .L_426ccf:	 RIP: 426ccf	 Bytes: 0
block_.L_426ccf:

  ; Code: movl -0x14(%rbp), %edi	 RIP: 426ccf	 Bytes: 3
  %loadMem_426ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ccf = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ccf)
  store %struct.Memory* %call_426ccf, %struct.Memory** %MEMORY

  ; Code: callq .shapes	 RIP: 426cd2	 Bytes: 5
  %loadMem1_426cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426cd2 = call %struct.Memory* @routine_callq_.shapes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426cd2, i64 312014, i64 5, i64 5)
  store %struct.Memory* %call1_426cd2, %struct.Memory** %MEMORY

  %loadMem2_426cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426cd2 = load i64, i64* %3
  %call2_426cd2 = call %struct.Memory* @sub_472fa0.shapes(%struct.State* %0, i64  %loadPC_426cd2, %struct.Memory* %loadMem2_426cd2)
  store %struct.Memory* %call2_426cd2, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 426cd7	 Bytes: 3
  %loadMem_426cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cd7 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cd7)
  store %struct.Memory* %call_426cd7, %struct.Memory** %MEMORY

  ; Code: callq .endgame_shapes	 RIP: 426cda	 Bytes: 5
  %loadMem1_426cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426cda = call %struct.Memory* @routine_callq_.endgame_shapes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426cda, i64 318502, i64 5, i64 5)
  store %struct.Memory* %call1_426cda, %struct.Memory** %MEMORY

  %loadMem2_426cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426cda = load i64, i64* %3
  %call2_426cda = call %struct.Memory* @sub_474900.endgame_shapes(%struct.State* %0, i64  %loadPC_426cda, %struct.Memory* %loadMem2_426cda)
  store %struct.Memory* %call2_426cda, %struct.Memory** %MEMORY

  ; Code: leaq -0x24(%rbp), %rsi	 RIP: 426cdf	 Bytes: 4
  %loadMem_426cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cdf = call %struct.Memory* @routine_leaq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cdf)
  store %struct.Memory* %call_426cdf, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 426ce3	 Bytes: 4
  %loadMem_426ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ce3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ce3)
  store %struct.Memory* %call_426ce3, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 426ce7	 Bytes: 3
  %loadMem_426ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ce7 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ce7)
  store %struct.Memory* %call_426ce7, %struct.Memory** %MEMORY

  ; Code: movss -0x18(%rbp), %xmm0	 RIP: 426cea	 Bytes: 5
  %loadMem_426cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cea = call %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cea)
  store %struct.Memory* %call_426cea, %struct.Memory** %MEMORY

  ; Code: movss 0xab0f14, %xmm1	 RIP: 426cef	 Bytes: 9
  %loadMem_426cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cef = call %struct.Memory* @routine_movss_0xab0f14___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cef)
  store %struct.Memory* %call_426cef, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 426cf8	 Bytes: 4
  %loadMem_426cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426cf8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426cf8)
  store %struct.Memory* %call_426cf8, %struct.Memory** %MEMORY

  ; Code: callq .review_move_reasons	 RIP: 426cfc	 Bytes: 5
  %loadMem1_426cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426cfc = call %struct.Memory* @routine_callq_.review_move_reasons(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426cfc, i64 350612, i64 5, i64 5)
  store %struct.Memory* %call1_426cfc, %struct.Memory** %MEMORY

  %loadMem2_426cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426cfc = load i64, i64* %3
  %call2_426cfc = call %struct.Memory* @sub_47c690.review_move_reasons(%struct.State* %0, i64  %loadPC_426cfc, %struct.Memory* %loadMem2_426cfc)
  store %struct.Memory* %call2_426cfc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 426d01	 Bytes: 3
  %loadMem_426d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d01 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d01)
  store %struct.Memory* %call_426d01, %struct.Memory** %MEMORY

  ; Code: je .L_426d44	 RIP: 426d04	 Bytes: 6
  %loadMem_426d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d04 = call %struct.Memory* @routine_je_.L_426d44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d04, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_426d04, %struct.Memory** %MEMORY

  %loadBr_426d04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426d04 = icmp eq i8 %loadBr_426d04, 1
  br i1 %cmpBr_426d04, label %block_.L_426d44, label %block_426d0a

block_426d0a:
  ; Code: cmpl $0x0, 0xab0f28	 RIP: 426d0a	 Bytes: 8
  %loadMem_426d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d0a = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d0a)
  store %struct.Memory* %call_426d0a, %struct.Memory** %MEMORY

  ; Code: jne .L_426d1d	 RIP: 426d12	 Bytes: 6
  %loadMem_426d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d12 = call %struct.Memory* @routine_jne_.L_426d1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d12, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426d12, %struct.Memory** %MEMORY

  %loadBr_426d12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426d12 = icmp eq i8 %loadBr_426d12, 1
  br i1 %cmpBr_426d12, label %block_.L_426d1d, label %block_426d18

block_426d18:
  ; Code: jmpq .L_426d3f	 RIP: 426d18	 Bytes: 5
  %loadMem_426d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d18 = call %struct.Memory* @routine_jmpq_.L_426d3f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d18, i64 39, i64 5)
  store %struct.Memory* %call_426d18, %struct.Memory** %MEMORY

  br label %block_.L_426d3f

  ; Code: .L_426d1d:	 RIP: 426d1d	 Bytes: 0
block_.L_426d1d:

  ; Code: movq $0x57c15d, %rdi	 RIP: 426d1d	 Bytes: 10
  %loadMem_426d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d1d = call %struct.Memory* @routine_movq__0x57c15d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d1d)
  store %struct.Memory* %call_426d1d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 426d27	 Bytes: 4
  %loadMem_426d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d27 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d27)
  store %struct.Memory* %call_426d27, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 426d2b	 Bytes: 2
  %loadMem_426d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d2b = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d2b)
  store %struct.Memory* %call_426d2b, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x24(%rbp), %xmm0	 RIP: 426d2d	 Bytes: 5
  %loadMem_426d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d2d = call %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d2d)
  store %struct.Memory* %call_426d2d, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 426d32	 Bytes: 2
  %loadMem_426d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d32 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d32)
  store %struct.Memory* %call_426d32, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 426d34	 Bytes: 5
  %loadMem1_426d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426d34 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426d34, i64 176252, i64 5, i64 5)
  store %struct.Memory* %call1_426d34, %struct.Memory** %MEMORY

  %loadMem2_426d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426d34 = load i64, i64* %3
  %call2_426d34 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_426d34, %struct.Memory* %loadMem2_426d34)
  store %struct.Memory* %call2_426d34, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xfc(%rbp)	 RIP: 426d39	 Bytes: 6
  %loadMem_426d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d39 = call %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d39)
  store %struct.Memory* %call_426d39, %struct.Memory** %MEMORY

  ; Code: .L_426d3f:	 RIP: 426d3f	 Bytes: 0
  br label %block_.L_426d3f
block_.L_426d3f:

  ; Code: jmpq .L_426d44	 RIP: 426d3f	 Bytes: 5
  %loadMem_426d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d3f = call %struct.Memory* @routine_jmpq_.L_426d44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d3f, i64 5, i64 5)
  store %struct.Memory* %call_426d3f, %struct.Memory** %MEMORY

  br label %block_.L_426d44

  ; Code: .L_426d44:	 RIP: 426d44	 Bytes: 0
block_.L_426d44:

  ; Code: jmpq .L_426d49	 RIP: 426d44	 Bytes: 5
  %loadMem_426d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d44 = call %struct.Memory* @routine_jmpq_.L_426d49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d44, i64 5, i64 5)
  store %struct.Memory* %call_426d44, %struct.Memory** %MEMORY

  br label %block_.L_426d49

  ; Code: .L_426d49:	 RIP: 426d49	 Bytes: 0
block_.L_426d49:

  ; Code: movl $0x1, %edi	 RIP: 426d49	 Bytes: 5
  %loadMem_426d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d49 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d49)
  store %struct.Memory* %call_426d49, %struct.Memory** %MEMORY

  ; Code: movq $0x57c19b, %rsi	 RIP: 426d4e	 Bytes: 10
  %loadMem_426d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d4e = call %struct.Memory* @routine_movq__0x57c19b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d4e)
  store %struct.Memory* %call_426d4e, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 426d58	 Bytes: 2
  %loadMem_426d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d58 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d58)
  store %struct.Memory* %call_426d58, %struct.Memory** %MEMORY

  ; Code: movsd 0xbc1fe(%rip), %xmm0	 RIP: 426d5a	 Bytes: 8
  %loadMem_426d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d5a = call %struct.Memory* @routine_movsd_0xbc1fe__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d5a)
  store %struct.Memory* %call_426d5a, %struct.Memory** %MEMORY

  ; Code: callq .time_report	 RIP: 426d62	 Bytes: 5
  %loadMem1_426d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426d62 = call %struct.Memory* @routine_callq_.time_report(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426d62, i64 349806, i64 5, i64 5)
  store %struct.Memory* %call1_426d62, %struct.Memory** %MEMORY

  %loadMem2_426d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426d62 = load i64, i64* %3
  %call2_426d62 = call %struct.Memory* @sub_47c3d0.time_report(%struct.State* %0, i64  %loadPC_426d62, %struct.Memory* %loadMem2_426d62)
  store %struct.Memory* %call2_426d62, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x108(%rbp)	 RIP: 426d67	 Bytes: 8
  %loadMem_426d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d67 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d67)
  store %struct.Memory* %call_426d67, %struct.Memory** %MEMORY

  ; Code: .L_426d6f:	 RIP: 426d6f	 Bytes: 0
  br label %block_.L_426d6f
block_.L_426d6f:

  ; Code: xorps %xmm0, %xmm0	 RIP: 426d6f	 Bytes: 3
  %loadMem_426d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d6f = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d6f)
  store %struct.Memory* %call_426d6f, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x24(%rbp), %xmm1	 RIP: 426d72	 Bytes: 5
  %loadMem_426d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d72 = call %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d72)
  store %struct.Memory* %call_426d72, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 426d77	 Bytes: 4
  %loadMem_426d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d77 = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d77)
  store %struct.Memory* %call_426d77, %struct.Memory** %MEMORY

  ; Code: jbe .L_426e39	 RIP: 426d7b	 Bytes: 6
  %loadMem_426d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d7b = call %struct.Memory* @routine_jbe_.L_426e39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d7b, i8* %BRANCH_TAKEN, i64 190, i64 6, i64 6)
  store %struct.Memory* %call_426d7b, %struct.Memory** %MEMORY

  %loadBr_426d7b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426d7b = icmp eq i8 %loadBr_426d7b, 1
  br i1 %cmpBr_426d7b, label %block_.L_426e39, label %block_426d81

block_426d81:
  ; Code: movq -0x10(%rbp), %rdi	 RIP: 426d81	 Bytes: 4
  %loadMem_426d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d81 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d81)
  store %struct.Memory* %call_426d81, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 426d85	 Bytes: 3
  %loadMem_426d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d85 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d85)
  store %struct.Memory* %call_426d85, %struct.Memory** %MEMORY

  ; Code: callq .fill_liberty	 RIP: 426d88	 Bytes: 5
  %loadMem1_426d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426d88 = call %struct.Memory* @routine_callq_.fill_liberty(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426d88, i64 -13400, i64 5, i64 5)
  store %struct.Memory* %call1_426d88, %struct.Memory** %MEMORY

  %loadMem2_426d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426d88 = load i64, i64* %3
  %call2_426d88 = call %struct.Memory* @sub_423930.fill_liberty(%struct.State* %0, i64  %loadPC_426d88, %struct.Memory* %loadMem2_426d88)
  store %struct.Memory* %call2_426d88, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 426d8d	 Bytes: 3
  %loadMem_426d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d8d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d8d)
  store %struct.Memory* %call_426d8d, %struct.Memory** %MEMORY

  ; Code: je .L_426e39	 RIP: 426d90	 Bytes: 6
  %loadMem_426d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d90 = call %struct.Memory* @routine_je_.L_426e39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d90, i8* %BRANCH_TAKEN, i64 169, i64 6, i64 6)
  store %struct.Memory* %call_426d90, %struct.Memory** %MEMORY

  %loadBr_426d90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426d90 = icmp eq i8 %loadBr_426d90, 1
  br i1 %cmpBr_426d90, label %block_.L_426e39, label %block_426d96

block_426d96:
  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 426d96	 Bytes: 5
  %loadMem_426d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d96 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d96)
  store %struct.Memory* %call_426d96, %struct.Memory** %MEMORY

  ; Code: je .L_426db6	 RIP: 426d9b	 Bytes: 6
  %loadMem_426d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426d9b = call %struct.Memory* @routine_je_.L_426db6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426d9b, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_426d9b, %struct.Memory** %MEMORY

  %loadBr_426d9b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426d9b = icmp eq i8 %loadBr_426d9b, 1
  br i1 %cmpBr_426d9b, label %block_.L_426db6, label %block_426da1

block_426da1:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 426da1	 Bytes: 4
  %loadMem_426da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426da1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426da1)
  store %struct.Memory* %call_426da1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 426da5	 Bytes: 4
  %loadMem_426da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426da5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426da5)
  store %struct.Memory* %call_426da5, %struct.Memory** %MEMORY

  ; Code: movslq (%rcx), %rcx	 RIP: 426da9	 Bytes: 3
  %loadMem_426da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426da9 = call %struct.Memory* @routine_movslq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426da9)
  store %struct.Memory* %call_426da9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rcx,4)	 RIP: 426dac	 Bytes: 4
  %loadMem_426dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dac = call %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dac)
  store %struct.Memory* %call_426dac, %struct.Memory** %MEMORY

  ; Code: je .L_426e39	 RIP: 426db0	 Bytes: 6
  %loadMem_426db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426db0 = call %struct.Memory* @routine_je_.L_426e39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426db0, i8* %BRANCH_TAKEN, i64 137, i64 6, i64 6)
  store %struct.Memory* %call_426db0, %struct.Memory** %MEMORY

  %loadBr_426db0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426db0 = icmp eq i8 %loadBr_426db0, 1
  br i1 %cmpBr_426db0, label %block_.L_426e39, label %block_.L_426db6

  ; Code: .L_426db6:	 RIP: 426db6	 Bytes: 0
block_.L_426db6:

  ; Code: movss 0xbc34e(%rip), %xmm0	 RIP: 426db6	 Bytes: 8
  %loadMem_426db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426db6 = call %struct.Memory* @routine_movss_0xbc34e__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426db6)
  store %struct.Memory* %call_426db6, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x24(%rbp)	 RIP: 426dbe	 Bytes: 5
  %loadMem_426dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dbe = call %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dbe)
  store %struct.Memory* %call_426dbe, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 426dc3	 Bytes: 8
  %loadMem_426dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dc3 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dc3)
  store %struct.Memory* %call_426dc3, %struct.Memory** %MEMORY

  ; Code: jne .L_426dd6	 RIP: 426dcb	 Bytes: 6
  %loadMem_426dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dcb = call %struct.Memory* @routine_jne_.L_426dd6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dcb, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426dcb, %struct.Memory** %MEMORY

  %loadBr_426dcb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426dcb = icmp eq i8 %loadBr_426dcb, 1
  br i1 %cmpBr_426dcb, label %block_.L_426dd6, label %block_426dd1

block_426dd1:
  ; Code: jmpq .L_426df3	 RIP: 426dd1	 Bytes: 5
  %loadMem_426dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dd1 = call %struct.Memory* @routine_jmpq_.L_426df3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dd1, i64 34, i64 5)
  store %struct.Memory* %call_426dd1, %struct.Memory** %MEMORY

  br label %block_.L_426df3

  ; Code: .L_426dd6:	 RIP: 426dd6	 Bytes: 0
block_.L_426dd6:

  ; Code: movq $0x57c1cb, %rdi	 RIP: 426dd6	 Bytes: 10
  %loadMem_426dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426dd6 = call %struct.Memory* @routine_movq__0x57c1cb___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426dd6)
  store %struct.Memory* %call_426dd6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 426de0	 Bytes: 4
  %loadMem_426de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426de0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426de0)
  store %struct.Memory* %call_426de0, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 426de4	 Bytes: 2
  %loadMem_426de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426de4 = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426de4)
  store %struct.Memory* %call_426de4, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 426de6	 Bytes: 2
  %loadMem_426de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426de6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426de6)
  store %struct.Memory* %call_426de6, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 426de8	 Bytes: 5
  %loadMem1_426de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426de8 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426de8, i64 176072, i64 5, i64 5)
  store %struct.Memory* %call1_426de8, %struct.Memory** %MEMORY

  %loadMem2_426de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426de8 = load i64, i64* %3
  %call2_426de8 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_426de8, %struct.Memory* %loadMem2_426de8)
  store %struct.Memory* %call2_426de8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10c(%rbp)	 RIP: 426ded	 Bytes: 6
  %loadMem_426ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ded = call %struct.Memory* @routine_movl__eax__MINUS0x10c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ded)
  store %struct.Memory* %call_426ded, %struct.Memory** %MEMORY

  ; Code: .L_426df3:	 RIP: 426df3	 Bytes: 0
  br label %block_.L_426df3
block_.L_426df3:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 426df3	 Bytes: 4
  %loadMem_426df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426df3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426df3)
  store %struct.Memory* %call_426df3, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edi	 RIP: 426df7	 Bytes: 2
  %loadMem_426df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426df7 = call %struct.Memory* @routine_movl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426df7)
  store %struct.Memory* %call_426df7, %struct.Memory** %MEMORY

  ; Code: movss -0x24(%rbp), %xmm0	 RIP: 426df9	 Bytes: 5
  %loadMem_426df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426df9 = call %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426df9)
  store %struct.Memory* %call_426df9, %struct.Memory** %MEMORY

  ; Code: callq .record_top_move	 RIP: 426dfe	 Bytes: 5
  %loadMem1_426dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426dfe = call %struct.Memory* @routine_callq_.record_top_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426dfe, i64 350002, i64 5, i64 5)
  store %struct.Memory* %call1_426dfe, %struct.Memory** %MEMORY

  %loadMem2_426dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426dfe = load i64, i64* %3
  %call2_426dfe = call %struct.Memory* @sub_47c530.record_top_move(%struct.State* %0, i64  %loadPC_426dfe, %struct.Memory* %loadMem2_426dfe)
  store %struct.Memory* %call2_426dfe, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 426e03	 Bytes: 4
  %loadMem_426e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e03 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e03)
  store %struct.Memory* %call_426e03, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edi	 RIP: 426e07	 Bytes: 2
  %loadMem_426e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e07 = call %struct.Memory* @routine_movl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e07)
  store %struct.Memory* %call_426e07, %struct.Memory** %MEMORY

  ; Code: movss -0x24(%rbp), %xmm0	 RIP: 426e09	 Bytes: 5
  %loadMem_426e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e09 = call %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e09)
  store %struct.Memory* %call_426e09, %struct.Memory** %MEMORY

  ; Code: callq .move_considered	 RIP: 426e0e	 Bytes: 5
  %loadMem1_426e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426e0e = call %struct.Memory* @routine_callq_.move_considered(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426e0e, i64 3170, i64 5, i64 5)
  store %struct.Memory* %call1_426e0e, %struct.Memory** %MEMORY

  %loadMem2_426e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426e0e = load i64, i64* %3
  %call2_426e0e = call %struct.Memory* @sub_427a70.move_considered(%struct.State* %0, i64  %loadPC_426e0e, %struct.Memory* %loadMem2_426e0e)
  store %struct.Memory* %call2_426e0e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edi	 RIP: 426e13	 Bytes: 5
  %loadMem_426e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e13 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e13)
  store %struct.Memory* %call_426e13, %struct.Memory** %MEMORY

  ; Code: movq $0x57c1e5, %rsi	 RIP: 426e18	 Bytes: 10
  %loadMem_426e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e18 = call %struct.Memory* @routine_movq__0x57c1e5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e18)
  store %struct.Memory* %call_426e18, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 426e22	 Bytes: 2
  %loadMem_426e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e22 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e22)
  store %struct.Memory* %call_426e22, %struct.Memory** %MEMORY

  ; Code: movsd 0xbc134(%rip), %xmm0	 RIP: 426e24	 Bytes: 8
  %loadMem_426e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e24 = call %struct.Memory* @routine_movsd_0xbc134__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e24)
  store %struct.Memory* %call_426e24, %struct.Memory** %MEMORY

  ; Code: callq .time_report	 RIP: 426e2c	 Bytes: 5
  %loadMem1_426e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426e2c = call %struct.Memory* @routine_callq_.time_report(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426e2c, i64 349604, i64 5, i64 5)
  store %struct.Memory* %call1_426e2c, %struct.Memory** %MEMORY

  %loadMem2_426e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426e2c = load i64, i64* %3
  %call2_426e2c = call %struct.Memory* @sub_47c3d0.time_report(%struct.State* %0, i64  %loadPC_426e2c, %struct.Memory* %loadMem2_426e2c)
  store %struct.Memory* %call2_426e2c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x118(%rbp)	 RIP: 426e31	 Bytes: 8
  %loadMem_426e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e31 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e31)
  store %struct.Memory* %call_426e31, %struct.Memory** %MEMORY

  ; Code: .L_426e39:	 RIP: 426e39	 Bytes: 0
  br label %block_.L_426e39
block_.L_426e39:

  ; Code: xorps %xmm0, %xmm0	 RIP: 426e39	 Bytes: 3
  %loadMem_426e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e39 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e39)
  store %struct.Memory* %call_426e39, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x24(%rbp), %xmm1	 RIP: 426e3c	 Bytes: 5
  %loadMem_426e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e3c = call %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e3c)
  store %struct.Memory* %call_426e3c, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 426e41	 Bytes: 4
  %loadMem_426e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e41 = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e41)
  store %struct.Memory* %call_426e41, %struct.Memory** %MEMORY

  ; Code: jbe .L_427023	 RIP: 426e45	 Bytes: 6
  %loadMem_426e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e45 = call %struct.Memory* @routine_jbe_.L_427023(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e45, i8* %BRANCH_TAKEN, i64 478, i64 6, i64 6)
  store %struct.Memory* %call_426e45, %struct.Memory** %MEMORY

  %loadBr_426e45 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426e45 = icmp eq i8 %loadBr_426e45, 1
  br i1 %cmpBr_426e45, label %block_.L_427023, label %block_426e4b

block_426e4b:
  ; Code: cmpl $0x0, 0xab0fbc	 RIP: 426e4b	 Bytes: 8
  %loadMem_426e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e4b = call %struct.Memory* @routine_cmpl__0x0__0xab0fbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e4b)
  store %struct.Memory* %call_426e4b, %struct.Memory** %MEMORY

  ; Code: jne .L_427023	 RIP: 426e53	 Bytes: 6
  %loadMem_426e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e53 = call %struct.Memory* @routine_jne_.L_427023(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e53, i8* %BRANCH_TAKEN, i64 464, i64 6, i64 6)
  store %struct.Memory* %call_426e53, %struct.Memory** %MEMORY

  %loadBr_426e53 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426e53 = icmp eq i8 %loadBr_426e53, 1
  br i1 %cmpBr_426e53, label %block_.L_427023, label %block_426e59

block_426e59:
  ; Code: cmpl $0x0, 0xab0fd4	 RIP: 426e59	 Bytes: 8
  %loadMem_426e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e59 = call %struct.Memory* @routine_cmpl__0x0__0xab0fd4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e59)
  store %struct.Memory* %call_426e59, %struct.Memory** %MEMORY

  ; Code: jne .L_426ecd	 RIP: 426e61	 Bytes: 6
  %loadMem_426e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e61 = call %struct.Memory* @routine_jne_.L_426ecd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e61, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_426e61, %struct.Memory** %MEMORY

  %loadBr_426e61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426e61 = icmp eq i8 %loadBr_426e61, 1
  br i1 %cmpBr_426e61, label %block_.L_426ecd, label %block_426e67

block_426e67:
  ; Code: cmpl $0x0, 0xab0fd0	 RIP: 426e67	 Bytes: 8
  %loadMem_426e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e67 = call %struct.Memory* @routine_cmpl__0x0__0xab0fd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e67)
  store %struct.Memory* %call_426e67, %struct.Memory** %MEMORY

  ; Code: jne .L_426ecd	 RIP: 426e6f	 Bytes: 6
  %loadMem_426e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e6f = call %struct.Memory* @routine_jne_.L_426ecd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e6f, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_426e6f, %struct.Memory** %MEMORY

  %loadBr_426e6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426e6f = icmp eq i8 %loadBr_426e6f, 1
  br i1 %cmpBr_426e6f, label %block_.L_426ecd, label %block_426e75

block_426e75:
  ; Code: cmpl $0x0, 0xab0ed0	 RIP: 426e75	 Bytes: 8
  %loadMem_426e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e75 = call %struct.Memory* @routine_cmpl__0x0__0xab0ed0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e75)
  store %struct.Memory* %call_426e75, %struct.Memory** %MEMORY

  ; Code: je .L_427023	 RIP: 426e7d	 Bytes: 6
  %loadMem_426e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e7d = call %struct.Memory* @routine_je_.L_427023(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e7d, i8* %BRANCH_TAKEN, i64 422, i64 6, i64 6)
  store %struct.Memory* %call_426e7d, %struct.Memory** %MEMORY

  %loadBr_426e7d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426e7d = icmp eq i8 %loadBr_426e7d, 1
  br i1 %cmpBr_426e7d, label %block_.L_427023, label %block_426e83

block_426e83:
  ; Code: cmpl $0x2, -0x14(%rbp)	 RIP: 426e83	 Bytes: 4
  %loadMem_426e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e83 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e83)
  store %struct.Memory* %call_426e83, %struct.Memory** %MEMORY

  ; Code: jne .L_426ea8	 RIP: 426e87	 Bytes: 6
  %loadMem_426e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e87 = call %struct.Memory* @routine_jne_.L_426ea8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e87, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_426e87, %struct.Memory** %MEMORY

  %loadBr_426e87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426e87 = icmp eq i8 %loadBr_426e87, 1
  br i1 %cmpBr_426e87, label %block_.L_426ea8, label %block_426e8d

block_426e8d:
  ; Code: movsd 0xbc13b(%rip), %xmm0	 RIP: 426e8d	 Bytes: 8
  %loadMem_426e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e8d = call %struct.Memory* @routine_movsd_0xbc13b__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e8d)
  store %struct.Memory* %call_426e8d, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0xab0f14, %xmm1	 RIP: 426e95	 Bytes: 9
  %loadMem_426e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e95 = call %struct.Memory* @routine_cvtss2sd_0xab0f14___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e95)
  store %struct.Memory* %call_426e95, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 426e9e	 Bytes: 4
  %loadMem_426e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426e9e = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426e9e)
  store %struct.Memory* %call_426e9e, %struct.Memory** %MEMORY

  ; Code: ja .L_426ecd	 RIP: 426ea2	 Bytes: 6
  %loadMem_426ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ea2 = call %struct.Memory* @routine_ja_.L_426ecd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ea2, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_426ea2, %struct.Memory** %MEMORY

  %loadBr_426ea2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426ea2 = icmp eq i8 %loadBr_426ea2, 1
  br i1 %cmpBr_426ea2, label %block_.L_426ecd, label %block_.L_426ea8

  ; Code: .L_426ea8:	 RIP: 426ea8	 Bytes: 0
block_.L_426ea8:

  ; Code: cmpl $0x1, -0x14(%rbp)	 RIP: 426ea8	 Bytes: 4
  %loadMem_426ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ea8 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ea8)
  store %struct.Memory* %call_426ea8, %struct.Memory** %MEMORY

  ; Code: jne .L_427023	 RIP: 426eac	 Bytes: 6
  %loadMem_426eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426eac = call %struct.Memory* @routine_jne_.L_427023(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426eac, i8* %BRANCH_TAKEN, i64 375, i64 6, i64 6)
  store %struct.Memory* %call_426eac, %struct.Memory** %MEMORY

  %loadBr_426eac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426eac = icmp eq i8 %loadBr_426eac, 1
  br i1 %cmpBr_426eac, label %block_.L_427023, label %block_426eb2

block_426eb2:
  ; Code: movsd 0xbc11e(%rip), %xmm0	 RIP: 426eb2	 Bytes: 8
  %loadMem_426eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426eb2 = call %struct.Memory* @routine_movsd_0xbc11e__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426eb2)
  store %struct.Memory* %call_426eb2, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0xab0f14, %xmm1	 RIP: 426eba	 Bytes: 9
  %loadMem_426eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426eba = call %struct.Memory* @routine_cvtss2sd_0xab0f14___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426eba)
  store %struct.Memory* %call_426eba, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 426ec3	 Bytes: 4
  %loadMem_426ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ec3 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ec3)
  store %struct.Memory* %call_426ec3, %struct.Memory** %MEMORY

  ; Code: jbe .L_427023	 RIP: 426ec7	 Bytes: 6
  %loadMem_426ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ec7 = call %struct.Memory* @routine_jbe_.L_427023(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ec7, i8* %BRANCH_TAKEN, i64 348, i64 6, i64 6)
  store %struct.Memory* %call_426ec7, %struct.Memory** %MEMORY

  %loadBr_426ec7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426ec7 = icmp eq i8 %loadBr_426ec7, 1
  br i1 %cmpBr_426ec7, label %block_.L_427023, label %block_.L_426ecd

  ; Code: .L_426ecd:	 RIP: 426ecd	 Bytes: 0
block_.L_426ecd:

  ; Code: xorl %eax, %eax	 RIP: 426ecd	 Bytes: 2
  %loadMem_426ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ecd = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ecd)
  store %struct.Memory* %call_426ecd, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 426ecf	 Bytes: 2
  %loadMem_426ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ecf = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ecf)
  store %struct.Memory* %call_426ecf, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 426ed1	 Bytes: 2
  %loadMem_426ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ed1 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ed1)
  store %struct.Memory* %call_426ed1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 426ed3	 Bytes: 4
  %loadMem_426ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ed3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ed3)
  store %struct.Memory* %call_426ed3, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 426ed7	 Bytes: 3
  %loadMem_426ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ed7 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ed7)
  store %struct.Memory* %call_426ed7, %struct.Memory** %MEMORY

  ; Code: callq .aftermath_genmove	 RIP: 426eda	 Bytes: 5
  %loadMem1_426eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426eda = call %struct.Memory* @routine_callq_.aftermath_genmove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426eda, i64 -140586, i64 5, i64 5)
  store %struct.Memory* %call1_426eda, %struct.Memory** %MEMORY

  %loadMem2_426eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426eda = load i64, i64* %3
  %call2_426eda = call %struct.Memory* @sub_4049b0.aftermath_genmove(%struct.State* %0, i64  %loadPC_426eda, %struct.Memory* %loadMem2_426eda)
  store %struct.Memory* %call2_426eda, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 426edf	 Bytes: 3
  %loadMem_426edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426edf = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426edf)
  store %struct.Memory* %call_426edf, %struct.Memory** %MEMORY

  ; Code: jle .L_427023	 RIP: 426ee2	 Bytes: 6
  %loadMem_426ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ee2 = call %struct.Memory* @routine_jle_.L_427023(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ee2, i8* %BRANCH_TAKEN, i64 321, i64 6, i64 6)
  store %struct.Memory* %call_426ee2, %struct.Memory** %MEMORY

  %loadBr_426ee2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426ee2 = icmp eq i8 %loadBr_426ee2, 1
  br i1 %cmpBr_426ee2, label %block_.L_427023, label %block_426ee8

block_426ee8:
  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 426ee8	 Bytes: 5
  %loadMem_426ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ee8 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ee8)
  store %struct.Memory* %call_426ee8, %struct.Memory** %MEMORY

  ; Code: je .L_426f08	 RIP: 426eed	 Bytes: 6
  %loadMem_426eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426eed = call %struct.Memory* @routine_je_.L_426f08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426eed, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_426eed, %struct.Memory** %MEMORY

  %loadBr_426eed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426eed = icmp eq i8 %loadBr_426eed, 1
  br i1 %cmpBr_426eed, label %block_.L_426f08, label %block_426ef3

block_426ef3:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 426ef3	 Bytes: 4
  %loadMem_426ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ef3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ef3)
  store %struct.Memory* %call_426ef3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 426ef7	 Bytes: 4
  %loadMem_426ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ef7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ef7)
  store %struct.Memory* %call_426ef7, %struct.Memory** %MEMORY

  ; Code: movslq (%rcx), %rcx	 RIP: 426efb	 Bytes: 3
  %loadMem_426efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426efb = call %struct.Memory* @routine_movslq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426efb)
  store %struct.Memory* %call_426efb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rcx,4)	 RIP: 426efe	 Bytes: 4
  %loadMem_426efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426efe = call %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426efe)
  store %struct.Memory* %call_426efe, %struct.Memory** %MEMORY

  ; Code: je .L_427023	 RIP: 426f02	 Bytes: 6
  %loadMem_426f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f02 = call %struct.Memory* @routine_je_.L_427023(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f02, i8* %BRANCH_TAKEN, i64 289, i64 6, i64 6)
  store %struct.Memory* %call_426f02, %struct.Memory** %MEMORY

  %loadBr_426f02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426f02 = icmp eq i8 %loadBr_426f02, 1
  br i1 %cmpBr_426f02, label %block_.L_427023, label %block_.L_426f08

  ; Code: .L_426f08:	 RIP: 426f08	 Bytes: 0
block_.L_426f08:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 426f08	 Bytes: 4
  %loadMem_426f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f08 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f08)
  store %struct.Memory* %call_426f08, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edi	 RIP: 426f0c	 Bytes: 2
  %loadMem_426f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f0c = call %struct.Memory* @routine_movl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f0c)
  store %struct.Memory* %call_426f0c, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 426f0e	 Bytes: 3
  %loadMem_426f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f0e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f0e)
  store %struct.Memory* %call_426f0e, %struct.Memory** %MEMORY

  ; Code: callq .is_legal	 RIP: 426f11	 Bytes: 5
  %loadMem1_426f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426f11 = call %struct.Memory* @routine_callq_.is_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426f11, i64 -99393, i64 5, i64 5)
  store %struct.Memory* %call1_426f11, %struct.Memory** %MEMORY

  %loadMem2_426f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426f11 = load i64, i64* %3
  %call2_426f11 = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64  %loadPC_426f11, %struct.Memory* %loadMem2_426f11)
  store %struct.Memory* %call2_426f11, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 426f16	 Bytes: 3
  %loadMem_426f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f16 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f16)
  store %struct.Memory* %call_426f16, %struct.Memory** %MEMORY

  ; Code: je .L_426f24	 RIP: 426f19	 Bytes: 6
  %loadMem_426f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f19 = call %struct.Memory* @routine_je_.L_426f24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f19, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426f19, %struct.Memory** %MEMORY

  %loadBr_426f19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426f19 = icmp eq i8 %loadBr_426f19, 1
  br i1 %cmpBr_426f19, label %block_.L_426f24, label %block_426f1f

block_426f1f:
  ; Code: jmpq .L_426fa0	 RIP: 426f1f	 Bytes: 5
  %loadMem_426f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f1f = call %struct.Memory* @routine_jmpq_.L_426fa0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f1f, i64 129, i64 5)
  store %struct.Memory* %call_426f1f, %struct.Memory** %MEMORY

  br label %block_.L_426fa0

  ; Code: .L_426f24:	 RIP: 426f24	 Bytes: 0
block_.L_426f24:

  ; Code: movq $0x57bf39, %rdi	 RIP: 426f24	 Bytes: 10
  %loadMem_426f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f24 = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f24)
  store %struct.Memory* %call_426f24, %struct.Memory** %MEMORY

  ; Code: movl $0x1f2, %esi	 RIP: 426f2e	 Bytes: 5
  %loadMem_426f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f2e = call %struct.Memory* @routine_movl__0x1f2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f2e)
  store %struct.Memory* %call_426f2e, %struct.Memory** %MEMORY

  ; Code: movq $0x57c1f2, %rdx	 RIP: 426f33	 Bytes: 10
  %loadMem_426f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f33 = call %struct.Memory* @routine_movq__0x57c1f2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f33)
  store %struct.Memory* %call_426f33, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 426f3d	 Bytes: 5
  %loadMem_426f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f3d = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f3d)
  store %struct.Memory* %call_426f3d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 426f42	 Bytes: 4
  %loadMem_426f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f42 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f42)
  store %struct.Memory* %call_426f42, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %r8d	 RIP: 426f46	 Bytes: 3
  %loadMem_426f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f46 = call %struct.Memory* @routine_movl___rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f46)
  store %struct.Memory* %call_426f46, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x11c(%rbp)	 RIP: 426f49	 Bytes: 6
  %loadMem_426f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f49 = call %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f49)
  store %struct.Memory* %call_426f49, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 426f4f	 Bytes: 3
  %loadMem_426f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f4f = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f4f)
  store %struct.Memory* %call_426f4f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x128(%rbp)	 RIP: 426f52	 Bytes: 7
  %loadMem_426f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f52 = call %struct.Memory* @routine_movq__rdx__MINUS0x128__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f52)
  store %struct.Memory* %call_426f52, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 426f59	 Bytes: 1
  %loadMem_426f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f59 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f59)
  store %struct.Memory* %call_426f59, %struct.Memory** %MEMORY

  ; Code: movl -0x11c(%rbp), %r8d	 RIP: 426f5a	 Bytes: 7
  %loadMem_426f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f5a = call %struct.Memory* @routine_movl_MINUS0x11c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f5a)
  store %struct.Memory* %call_426f5a, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 426f61	 Bytes: 3
  %loadMem_426f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f61 = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f61)
  store %struct.Memory* %call_426f61, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 426f64	 Bytes: 3
  %loadMem_426f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f64 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f64)
  store %struct.Memory* %call_426f64, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 426f67	 Bytes: 4
  %loadMem_426f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f67 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f67)
  store %struct.Memory* %call_426f67, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %r9d	 RIP: 426f6b	 Bytes: 3
  %loadMem_426f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f6b = call %struct.Memory* @routine_movl___rcx____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f6b)
  store %struct.Memory* %call_426f6b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x12c(%rbp)	 RIP: 426f6e	 Bytes: 6
  %loadMem_426f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f6e = call %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f6e)
  store %struct.Memory* %call_426f6e, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %eax	 RIP: 426f74	 Bytes: 3
  %loadMem_426f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f74 = call %struct.Memory* @routine_movl__r9d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f74)
  store %struct.Memory* %call_426f74, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 426f77	 Bytes: 1
  %loadMem_426f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f77 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f77)
  store %struct.Memory* %call_426f77, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 426f78	 Bytes: 3
  %loadMem_426f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f78 = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f78)
  store %struct.Memory* %call_426f78, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 426f7b	 Bytes: 3
  %loadMem_426f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f7b = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f7b)
  store %struct.Memory* %call_426f7b, %struct.Memory** %MEMORY

  ; Code: movq -0x128(%rbp), %rcx	 RIP: 426f7e	 Bytes: 7
  %loadMem_426f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f7e = call %struct.Memory* @routine_movq_MINUS0x128__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f7e)
  store %struct.Memory* %call_426f7e, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x130(%rbp)	 RIP: 426f85	 Bytes: 6
  %loadMem_426f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f85 = call %struct.Memory* @routine_movl__edx__MINUS0x130__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f85)
  store %struct.Memory* %call_426f85, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 426f8b	 Bytes: 3
  %loadMem_426f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f8b = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f8b)
  store %struct.Memory* %call_426f8b, %struct.Memory** %MEMORY

  ; Code: movl -0x12c(%rbp), %ecx	 RIP: 426f8e	 Bytes: 6
  %loadMem_426f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f8e = call %struct.Memory* @routine_movl_MINUS0x12c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f8e)
  store %struct.Memory* %call_426f8e, %struct.Memory** %MEMORY

  ; Code: movl -0x130(%rbp), %r8d	 RIP: 426f94	 Bytes: 7
  %loadMem_426f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426f94 = call %struct.Memory* @routine_movl_MINUS0x130__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426f94)
  store %struct.Memory* %call_426f94, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 426f9b	 Bytes: 5
  %loadMem1_426f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426f9b = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426f9b, i64 176373, i64 5, i64 5)
  store %struct.Memory* %call1_426f9b, %struct.Memory** %MEMORY

  %loadMem2_426f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426f9b = load i64, i64* %3
  %call2_426f9b = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_426f9b, %struct.Memory* %loadMem2_426f9b)
  store %struct.Memory* %call2_426f9b, %struct.Memory** %MEMORY

  ; Code: .L_426fa0:	 RIP: 426fa0	 Bytes: 0
  br label %block_.L_426fa0
block_.L_426fa0:

  ; Code: movss 0xbc164(%rip), %xmm0	 RIP: 426fa0	 Bytes: 8
  %loadMem_426fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426fa0 = call %struct.Memory* @routine_movss_0xbc164__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426fa0)
  store %struct.Memory* %call_426fa0, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x24(%rbp)	 RIP: 426fa8	 Bytes: 5
  %loadMem_426fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426fa8 = call %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426fa8)
  store %struct.Memory* %call_426fa8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 426fad	 Bytes: 8
  %loadMem_426fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426fad = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426fad)
  store %struct.Memory* %call_426fad, %struct.Memory** %MEMORY

  ; Code: jne .L_426fc0	 RIP: 426fb5	 Bytes: 6
  %loadMem_426fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426fb5 = call %struct.Memory* @routine_jne_.L_426fc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426fb5, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426fb5, %struct.Memory** %MEMORY

  %loadBr_426fb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426fb5 = icmp eq i8 %loadBr_426fb5, 1
  br i1 %cmpBr_426fb5, label %block_.L_426fc0, label %block_426fbb

block_426fbb:
  ; Code: jmpq .L_426fdd	 RIP: 426fbb	 Bytes: 5
  %loadMem_426fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426fbb = call %struct.Memory* @routine_jmpq_.L_426fdd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426fbb, i64 34, i64 5)
  store %struct.Memory* %call_426fbb, %struct.Memory** %MEMORY

  br label %block_.L_426fdd

  ; Code: .L_426fc0:	 RIP: 426fc0	 Bytes: 0
block_.L_426fc0:

  ; Code: movq $0x57c209, %rdi	 RIP: 426fc0	 Bytes: 10
  %loadMem_426fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426fc0 = call %struct.Memory* @routine_movq__0x57c209___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426fc0)
  store %struct.Memory* %call_426fc0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 426fca	 Bytes: 4
  %loadMem_426fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426fca = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426fca)
  store %struct.Memory* %call_426fca, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 426fce	 Bytes: 2
  %loadMem_426fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426fce = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426fce)
  store %struct.Memory* %call_426fce, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 426fd0	 Bytes: 2
  %loadMem_426fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426fd0 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426fd0)
  store %struct.Memory* %call_426fd0, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 426fd2	 Bytes: 5
  %loadMem1_426fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426fd2 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426fd2, i64 175582, i64 5, i64 5)
  store %struct.Memory* %call1_426fd2, %struct.Memory** %MEMORY

  %loadMem2_426fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426fd2 = load i64, i64* %3
  %call2_426fd2 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_426fd2, %struct.Memory* %loadMem2_426fd2)
  store %struct.Memory* %call2_426fd2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x134(%rbp)	 RIP: 426fd7	 Bytes: 6
  %loadMem_426fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426fd7 = call %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426fd7)
  store %struct.Memory* %call_426fd7, %struct.Memory** %MEMORY

  ; Code: .L_426fdd:	 RIP: 426fdd	 Bytes: 0
  br label %block_.L_426fdd
block_.L_426fdd:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 426fdd	 Bytes: 4
  %loadMem_426fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426fdd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426fdd)
  store %struct.Memory* %call_426fdd, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edi	 RIP: 426fe1	 Bytes: 2
  %loadMem_426fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426fe1 = call %struct.Memory* @routine_movl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426fe1)
  store %struct.Memory* %call_426fe1, %struct.Memory** %MEMORY

  ; Code: movss -0x24(%rbp), %xmm0	 RIP: 426fe3	 Bytes: 5
  %loadMem_426fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426fe3 = call %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426fe3)
  store %struct.Memory* %call_426fe3, %struct.Memory** %MEMORY

  ; Code: callq .record_top_move	 RIP: 426fe8	 Bytes: 5
  %loadMem1_426fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426fe8 = call %struct.Memory* @routine_callq_.record_top_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426fe8, i64 349512, i64 5, i64 5)
  store %struct.Memory* %call1_426fe8, %struct.Memory** %MEMORY

  %loadMem2_426fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426fe8 = load i64, i64* %3
  %call2_426fe8 = call %struct.Memory* @sub_47c530.record_top_move(%struct.State* %0, i64  %loadPC_426fe8, %struct.Memory* %loadMem2_426fe8)
  store %struct.Memory* %call2_426fe8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 426fed	 Bytes: 4
  %loadMem_426fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426fed = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426fed)
  store %struct.Memory* %call_426fed, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edi	 RIP: 426ff1	 Bytes: 2
  %loadMem_426ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ff1 = call %struct.Memory* @routine_movl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ff1)
  store %struct.Memory* %call_426ff1, %struct.Memory** %MEMORY

  ; Code: movss -0x24(%rbp), %xmm0	 RIP: 426ff3	 Bytes: 5
  %loadMem_426ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ff3 = call %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ff3)
  store %struct.Memory* %call_426ff3, %struct.Memory** %MEMORY

  ; Code: callq .move_considered	 RIP: 426ff8	 Bytes: 5
  %loadMem1_426ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426ff8 = call %struct.Memory* @routine_callq_.move_considered(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426ff8, i64 2680, i64 5, i64 5)
  store %struct.Memory* %call1_426ff8, %struct.Memory** %MEMORY

  %loadMem2_426ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426ff8 = load i64, i64* %3
  %call2_426ff8 = call %struct.Memory* @sub_427a70.move_considered(%struct.State* %0, i64  %loadPC_426ff8, %struct.Memory* %loadMem2_426ff8)
  store %struct.Memory* %call2_426ff8, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edi	 RIP: 426ffd	 Bytes: 5
  %loadMem_426ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426ffd = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426ffd)
  store %struct.Memory* %call_426ffd, %struct.Memory** %MEMORY

  ; Code: movq $0x57c220, %rsi	 RIP: 427002	 Bytes: 10
  %loadMem_427002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427002 = call %struct.Memory* @routine_movq__0x57c220___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427002)
  store %struct.Memory* %call_427002, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 42700c	 Bytes: 2
  %loadMem_42700c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42700c = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42700c)
  store %struct.Memory* %call_42700c, %struct.Memory** %MEMORY

  ; Code: movsd 0xbbf4a(%rip), %xmm0	 RIP: 42700e	 Bytes: 8
  %loadMem_42700e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42700e = call %struct.Memory* @routine_movsd_0xbbf4a__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42700e)
  store %struct.Memory* %call_42700e, %struct.Memory** %MEMORY

  ; Code: callq .time_report	 RIP: 427016	 Bytes: 5
  %loadMem1_427016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_427016 = call %struct.Memory* @routine_callq_.time_report(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_427016, i64 349114, i64 5, i64 5)
  store %struct.Memory* %call1_427016, %struct.Memory** %MEMORY

  %loadMem2_427016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427016 = load i64, i64* %3
  %call2_427016 = call %struct.Memory* @sub_47c3d0.time_report(%struct.State* %0, i64  %loadPC_427016, %struct.Memory* %loadMem2_427016)
  store %struct.Memory* %call2_427016, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x140(%rbp)	 RIP: 42701b	 Bytes: 8
  %loadMem_42701b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42701b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x140__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42701b)
  store %struct.Memory* %call_42701b, %struct.Memory** %MEMORY

  ; Code: .L_427023:	 RIP: 427023	 Bytes: 0
  br label %block_.L_427023
block_.L_427023:

  ; Code: xorps %xmm0, %xmm0	 RIP: 427023	 Bytes: 3
  %loadMem_427023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427023 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427023)
  store %struct.Memory* %call_427023, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x24(%rbp), %xmm1	 RIP: 427026	 Bytes: 5
  %loadMem_427026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427026 = call %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427026)
  store %struct.Memory* %call_427026, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 42702b	 Bytes: 4
  %loadMem_42702b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42702b = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42702b)
  store %struct.Memory* %call_42702b, %struct.Memory** %MEMORY

  ; Code: jbe .L_42719a	 RIP: 42702f	 Bytes: 6
  %loadMem_42702f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42702f = call %struct.Memory* @routine_jbe_.L_42719a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42702f, i8* %BRANCH_TAKEN, i64 363, i64 6, i64 6)
  store %struct.Memory* %call_42702f, %struct.Memory** %MEMORY

  %loadBr_42702f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42702f = icmp eq i8 %loadBr_42702f, 1
  br i1 %cmpBr_42702f, label %block_.L_42719a, label %block_427035

block_427035:
  ; Code: cmpl $0x0, 0xab0fbc	 RIP: 427035	 Bytes: 8
  %loadMem_427035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427035 = call %struct.Memory* @routine_cmpl__0x0__0xab0fbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427035)
  store %struct.Memory* %call_427035, %struct.Memory** %MEMORY

  ; Code: jne .L_42719a	 RIP: 42703d	 Bytes: 6
  %loadMem_42703d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42703d = call %struct.Memory* @routine_jne_.L_42719a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42703d, i8* %BRANCH_TAKEN, i64 349, i64 6, i64 6)
  store %struct.Memory* %call_42703d, %struct.Memory** %MEMORY

  %loadBr_42703d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42703d = icmp eq i8 %loadBr_42703d, 1
  br i1 %cmpBr_42703d, label %block_.L_42719a, label %block_427043

block_427043:
  ; Code: cmpl $0x0, 0xab0fd0	 RIP: 427043	 Bytes: 8
  %loadMem_427043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427043 = call %struct.Memory* @routine_cmpl__0x0__0xab0fd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427043)
  store %struct.Memory* %call_427043, %struct.Memory** %MEMORY

  ; Code: je .L_42719a	 RIP: 42704b	 Bytes: 6
  %loadMem_42704b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42704b = call %struct.Memory* @routine_je_.L_42719a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42704b, i8* %BRANCH_TAKEN, i64 335, i64 6, i64 6)
  store %struct.Memory* %call_42704b, %struct.Memory** %MEMORY

  %loadBr_42704b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42704b = icmp eq i8 %loadBr_42704b, 1
  br i1 %cmpBr_42704b, label %block_.L_42719a, label %block_427051

block_427051:
  ; Code: xorl %eax, %eax	 RIP: 427051	 Bytes: 2
  %loadMem_427051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427051 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427051)
  store %struct.Memory* %call_427051, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 427053	 Bytes: 2
  %loadMem_427053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427053 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427053)
  store %struct.Memory* %call_427053, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 427055	 Bytes: 5
  %loadMem_427055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427055 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427055)
  store %struct.Memory* %call_427055, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 42705a	 Bytes: 4
  %loadMem_42705a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42705a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42705a)
  store %struct.Memory* %call_42705a, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 42705e	 Bytes: 3
  %loadMem_42705e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42705e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42705e)
  store %struct.Memory* %call_42705e, %struct.Memory** %MEMORY

  ; Code: callq .aftermath_genmove	 RIP: 427061	 Bytes: 5
  %loadMem1_427061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_427061 = call %struct.Memory* @routine_callq_.aftermath_genmove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_427061, i64 -140977, i64 5, i64 5)
  store %struct.Memory* %call1_427061, %struct.Memory** %MEMORY

  %loadMem2_427061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427061 = load i64, i64* %3
  %call2_427061 = call %struct.Memory* @sub_4049b0.aftermath_genmove(%struct.State* %0, i64  %loadPC_427061, %struct.Memory* %loadMem2_427061)
  store %struct.Memory* %call2_427061, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 427066	 Bytes: 3
  %loadMem_427066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427066 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427066)
  store %struct.Memory* %call_427066, %struct.Memory** %MEMORY

  ; Code: jle .L_42719a	 RIP: 427069	 Bytes: 6
  %loadMem_427069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427069 = call %struct.Memory* @routine_jle_.L_42719a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427069, i8* %BRANCH_TAKEN, i64 305, i64 6, i64 6)
  store %struct.Memory* %call_427069, %struct.Memory** %MEMORY

  %loadBr_427069 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427069 = icmp eq i8 %loadBr_427069, 1
  br i1 %cmpBr_427069, label %block_.L_42719a, label %block_42706f

block_42706f:
  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 42706f	 Bytes: 5
  %loadMem_42706f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42706f = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42706f)
  store %struct.Memory* %call_42706f, %struct.Memory** %MEMORY

  ; Code: je .L_42708f	 RIP: 427074	 Bytes: 6
  %loadMem_427074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427074 = call %struct.Memory* @routine_je_.L_42708f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427074, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_427074, %struct.Memory** %MEMORY

  %loadBr_427074 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427074 = icmp eq i8 %loadBr_427074, 1
  br i1 %cmpBr_427074, label %block_.L_42708f, label %block_42707a

block_42707a:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 42707a	 Bytes: 4
  %loadMem_42707a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42707a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42707a)
  store %struct.Memory* %call_42707a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42707e	 Bytes: 4
  %loadMem_42707e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42707e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42707e)
  store %struct.Memory* %call_42707e, %struct.Memory** %MEMORY

  ; Code: movslq (%rcx), %rcx	 RIP: 427082	 Bytes: 3
  %loadMem_427082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427082 = call %struct.Memory* @routine_movslq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427082)
  store %struct.Memory* %call_427082, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rcx,4)	 RIP: 427085	 Bytes: 4
  %loadMem_427085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427085 = call %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427085)
  store %struct.Memory* %call_427085, %struct.Memory** %MEMORY

  ; Code: je .L_42719a	 RIP: 427089	 Bytes: 6
  %loadMem_427089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427089 = call %struct.Memory* @routine_je_.L_42719a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427089, i8* %BRANCH_TAKEN, i64 273, i64 6, i64 6)
  store %struct.Memory* %call_427089, %struct.Memory** %MEMORY

  %loadBr_427089 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427089 = icmp eq i8 %loadBr_427089, 1
  br i1 %cmpBr_427089, label %block_.L_42719a, label %block_.L_42708f

  ; Code: .L_42708f:	 RIP: 42708f	 Bytes: 0
block_.L_42708f:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 42708f	 Bytes: 4
  %loadMem_42708f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42708f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42708f)
  store %struct.Memory* %call_42708f, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edi	 RIP: 427093	 Bytes: 2
  %loadMem_427093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427093 = call %struct.Memory* @routine_movl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427093)
  store %struct.Memory* %call_427093, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 427095	 Bytes: 3
  %loadMem_427095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427095 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427095)
  store %struct.Memory* %call_427095, %struct.Memory** %MEMORY

  ; Code: callq .is_legal	 RIP: 427098	 Bytes: 5
  %loadMem1_427098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_427098 = call %struct.Memory* @routine_callq_.is_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_427098, i64 -99784, i64 5, i64 5)
  store %struct.Memory* %call1_427098, %struct.Memory** %MEMORY

  %loadMem2_427098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427098 = load i64, i64* %3
  %call2_427098 = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64  %loadPC_427098, %struct.Memory* %loadMem2_427098)
  store %struct.Memory* %call2_427098, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42709d	 Bytes: 3
  %loadMem_42709d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42709d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42709d)
  store %struct.Memory* %call_42709d, %struct.Memory** %MEMORY

  ; Code: je .L_4270ab	 RIP: 4270a0	 Bytes: 6
  %loadMem_4270a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270a0 = call %struct.Memory* @routine_je_.L_4270ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270a0, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4270a0, %struct.Memory** %MEMORY

  %loadBr_4270a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4270a0 = icmp eq i8 %loadBr_4270a0, 1
  br i1 %cmpBr_4270a0, label %block_.L_4270ab, label %block_4270a6

block_4270a6:
  ; Code: jmpq .L_427127	 RIP: 4270a6	 Bytes: 5
  %loadMem_4270a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270a6 = call %struct.Memory* @routine_jmpq_.L_427127(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270a6, i64 129, i64 5)
  store %struct.Memory* %call_4270a6, %struct.Memory** %MEMORY

  br label %block_.L_427127

  ; Code: .L_4270ab:	 RIP: 4270ab	 Bytes: 0
block_.L_4270ab:

  ; Code: movq $0x57bf39, %rdi	 RIP: 4270ab	 Bytes: 10
  %loadMem_4270ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270ab = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270ab)
  store %struct.Memory* %call_4270ab, %struct.Memory** %MEMORY

  ; Code: movl $0x202, %esi	 RIP: 4270b5	 Bytes: 5
  %loadMem_4270b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270b5 = call %struct.Memory* @routine_movl__0x202___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270b5)
  store %struct.Memory* %call_4270b5, %struct.Memory** %MEMORY

  ; Code: movq $0x57c1f2, %rdx	 RIP: 4270ba	 Bytes: 10
  %loadMem_4270ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270ba = call %struct.Memory* @routine_movq__0x57c1f2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270ba)
  store %struct.Memory* %call_4270ba, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 4270c4	 Bytes: 5
  %loadMem_4270c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270c4 = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270c4)
  store %struct.Memory* %call_4270c4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4270c9	 Bytes: 4
  %loadMem_4270c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270c9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270c9)
  store %struct.Memory* %call_4270c9, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %r8d	 RIP: 4270cd	 Bytes: 3
  %loadMem_4270cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270cd = call %struct.Memory* @routine_movl___rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270cd)
  store %struct.Memory* %call_4270cd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x144(%rbp)	 RIP: 4270d0	 Bytes: 6
  %loadMem_4270d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270d0 = call %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270d0)
  store %struct.Memory* %call_4270d0, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 4270d6	 Bytes: 3
  %loadMem_4270d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270d6 = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270d6)
  store %struct.Memory* %call_4270d6, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x150(%rbp)	 RIP: 4270d9	 Bytes: 7
  %loadMem_4270d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270d9 = call %struct.Memory* @routine_movq__rdx__MINUS0x150__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270d9)
  store %struct.Memory* %call_4270d9, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4270e0	 Bytes: 1
  %loadMem_4270e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270e0 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270e0)
  store %struct.Memory* %call_4270e0, %struct.Memory** %MEMORY

  ; Code: movl -0x144(%rbp), %r8d	 RIP: 4270e1	 Bytes: 7
  %loadMem_4270e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270e1 = call %struct.Memory* @routine_movl_MINUS0x144__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270e1)
  store %struct.Memory* %call_4270e1, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 4270e8	 Bytes: 3
  %loadMem_4270e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270e8 = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270e8)
  store %struct.Memory* %call_4270e8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4270eb	 Bytes: 3
  %loadMem_4270eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270eb = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270eb)
  store %struct.Memory* %call_4270eb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4270ee	 Bytes: 4
  %loadMem_4270ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270ee = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270ee)
  store %struct.Memory* %call_4270ee, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %r9d	 RIP: 4270f2	 Bytes: 3
  %loadMem_4270f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270f2 = call %struct.Memory* @routine_movl___rcx____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270f2)
  store %struct.Memory* %call_4270f2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x154(%rbp)	 RIP: 4270f5	 Bytes: 6
  %loadMem_4270f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270f5 = call %struct.Memory* @routine_movl__eax__MINUS0x154__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270f5)
  store %struct.Memory* %call_4270f5, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %eax	 RIP: 4270fb	 Bytes: 3
  %loadMem_4270fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270fb = call %struct.Memory* @routine_movl__r9d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270fb)
  store %struct.Memory* %call_4270fb, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4270fe	 Bytes: 1
  %loadMem_4270fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270fe = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270fe)
  store %struct.Memory* %call_4270fe, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 4270ff	 Bytes: 3
  %loadMem_4270ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4270ff = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4270ff)
  store %struct.Memory* %call_4270ff, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 427102	 Bytes: 3
  %loadMem_427102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427102 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427102)
  store %struct.Memory* %call_427102, %struct.Memory** %MEMORY

  ; Code: movq -0x150(%rbp), %rcx	 RIP: 427105	 Bytes: 7
  %loadMem_427105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427105 = call %struct.Memory* @routine_movq_MINUS0x150__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427105)
  store %struct.Memory* %call_427105, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x158(%rbp)	 RIP: 42710c	 Bytes: 6
  %loadMem_42710c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42710c = call %struct.Memory* @routine_movl__edx__MINUS0x158__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42710c)
  store %struct.Memory* %call_42710c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 427112	 Bytes: 3
  %loadMem_427112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427112 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427112)
  store %struct.Memory* %call_427112, %struct.Memory** %MEMORY

  ; Code: movl -0x154(%rbp), %ecx	 RIP: 427115	 Bytes: 6
  %loadMem_427115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427115 = call %struct.Memory* @routine_movl_MINUS0x154__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427115)
  store %struct.Memory* %call_427115, %struct.Memory** %MEMORY

  ; Code: movl -0x158(%rbp), %r8d	 RIP: 42711b	 Bytes: 7
  %loadMem_42711b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42711b = call %struct.Memory* @routine_movl_MINUS0x158__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42711b)
  store %struct.Memory* %call_42711b, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 427122	 Bytes: 5
  %loadMem1_427122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_427122 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_427122, i64 175982, i64 5, i64 5)
  store %struct.Memory* %call1_427122, %struct.Memory** %MEMORY

  %loadMem2_427122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427122 = load i64, i64* %3
  %call2_427122 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_427122, %struct.Memory* %loadMem2_427122)
  store %struct.Memory* %call2_427122, %struct.Memory** %MEMORY

  ; Code: .L_427127:	 RIP: 427127	 Bytes: 0
  br label %block_.L_427127
block_.L_427127:

  ; Code: movss 0xbbfdd(%rip), %xmm0	 RIP: 427127	 Bytes: 8
  %loadMem_427127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427127 = call %struct.Memory* @routine_movss_0xbbfdd__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427127)
  store %struct.Memory* %call_427127, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x24(%rbp)	 RIP: 42712f	 Bytes: 5
  %loadMem_42712f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42712f = call %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42712f)
  store %struct.Memory* %call_42712f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 427134	 Bytes: 8
  %loadMem_427134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427134 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427134)
  store %struct.Memory* %call_427134, %struct.Memory** %MEMORY

  ; Code: jne .L_427147	 RIP: 42713c	 Bytes: 6
  %loadMem_42713c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42713c = call %struct.Memory* @routine_jne_.L_427147(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42713c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42713c, %struct.Memory** %MEMORY

  %loadBr_42713c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42713c = icmp eq i8 %loadBr_42713c, 1
  br i1 %cmpBr_42713c, label %block_.L_427147, label %block_427142

block_427142:
  ; Code: jmpq .L_427164	 RIP: 427142	 Bytes: 5
  %loadMem_427142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427142 = call %struct.Memory* @routine_jmpq_.L_427164(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427142, i64 34, i64 5)
  store %struct.Memory* %call_427142, %struct.Memory** %MEMORY

  br label %block_.L_427164

  ; Code: .L_427147:	 RIP: 427147	 Bytes: 0
block_.L_427147:

  ; Code: movq $0x57c209, %rdi	 RIP: 427147	 Bytes: 10
  %loadMem_427147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427147 = call %struct.Memory* @routine_movq__0x57c209___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427147)
  store %struct.Memory* %call_427147, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 427151	 Bytes: 4
  %loadMem_427151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427151 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427151)
  store %struct.Memory* %call_427151, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 427155	 Bytes: 2
  %loadMem_427155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427155 = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427155)
  store %struct.Memory* %call_427155, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 427157	 Bytes: 2
  %loadMem_427157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427157 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427157)
  store %struct.Memory* %call_427157, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 427159	 Bytes: 5
  %loadMem1_427159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_427159 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_427159, i64 175191, i64 5, i64 5)
  store %struct.Memory* %call1_427159, %struct.Memory** %MEMORY

  %loadMem2_427159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427159 = load i64, i64* %3
  %call2_427159 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_427159, %struct.Memory* %loadMem2_427159)
  store %struct.Memory* %call2_427159, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x15c(%rbp)	 RIP: 42715e	 Bytes: 6
  %loadMem_42715e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42715e = call %struct.Memory* @routine_movl__eax__MINUS0x15c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42715e)
  store %struct.Memory* %call_42715e, %struct.Memory** %MEMORY

  ; Code: .L_427164:	 RIP: 427164	 Bytes: 0
  br label %block_.L_427164
block_.L_427164:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 427164	 Bytes: 4
  %loadMem_427164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427164 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427164)
  store %struct.Memory* %call_427164, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edi	 RIP: 427168	 Bytes: 2
  %loadMem_427168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427168 = call %struct.Memory* @routine_movl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427168)
  store %struct.Memory* %call_427168, %struct.Memory** %MEMORY

  ; Code: movss -0x24(%rbp), %xmm0	 RIP: 42716a	 Bytes: 5
  %loadMem_42716a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42716a = call %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42716a)
  store %struct.Memory* %call_42716a, %struct.Memory** %MEMORY

  ; Code: callq .move_considered	 RIP: 42716f	 Bytes: 5
  %loadMem1_42716f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42716f = call %struct.Memory* @routine_callq_.move_considered(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42716f, i64 2305, i64 5, i64 5)
  store %struct.Memory* %call1_42716f, %struct.Memory** %MEMORY

  %loadMem2_42716f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42716f = load i64, i64* %3
  %call2_42716f = call %struct.Memory* @sub_427a70.move_considered(%struct.State* %0, i64  %loadPC_42716f, %struct.Memory* %loadMem2_42716f)
  store %struct.Memory* %call2_42716f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edi	 RIP: 427174	 Bytes: 5
  %loadMem_427174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427174 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427174)
  store %struct.Memory* %call_427174, %struct.Memory** %MEMORY

  ; Code: movq $0x57c220, %rsi	 RIP: 427179	 Bytes: 10
  %loadMem_427179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427179 = call %struct.Memory* @routine_movq__0x57c220___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427179)
  store %struct.Memory* %call_427179, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 427183	 Bytes: 2
  %loadMem_427183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427183 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427183)
  store %struct.Memory* %call_427183, %struct.Memory** %MEMORY

  ; Code: movsd 0xbbdd3(%rip), %xmm0	 RIP: 427185	 Bytes: 8
  %loadMem_427185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427185 = call %struct.Memory* @routine_movsd_0xbbdd3__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427185)
  store %struct.Memory* %call_427185, %struct.Memory** %MEMORY

  ; Code: callq .time_report	 RIP: 42718d	 Bytes: 5
  %loadMem1_42718d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42718d = call %struct.Memory* @routine_callq_.time_report(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42718d, i64 348739, i64 5, i64 5)
  store %struct.Memory* %call1_42718d, %struct.Memory** %MEMORY

  %loadMem2_42718d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42718d = load i64, i64* %3
  %call2_42718d = call %struct.Memory* @sub_47c3d0.time_report(%struct.State* %0, i64  %loadPC_42718d, %struct.Memory* %loadMem2_42718d)
  store %struct.Memory* %call2_42718d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x168(%rbp)	 RIP: 427192	 Bytes: 8
  %loadMem_427192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427192 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x168__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427192)
  store %struct.Memory* %call_427192, %struct.Memory** %MEMORY

  ; Code: .L_42719a:	 RIP: 42719a	 Bytes: 0
  br label %block_.L_42719a
block_.L_42719a:

  ; Code: xorps %xmm0, %xmm0	 RIP: 42719a	 Bytes: 3
  %loadMem_42719a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42719a = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42719a)
  store %struct.Memory* %call_42719a, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x24(%rbp), %xmm1	 RIP: 42719d	 Bytes: 5
  %loadMem_42719d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42719d = call %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42719d)
  store %struct.Memory* %call_42719d, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 4271a2	 Bytes: 4
  %loadMem_4271a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4271a2 = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4271a2)
  store %struct.Memory* %call_4271a2, %struct.Memory** %MEMORY

  ; Code: jbe .L_4271e5	 RIP: 4271a6	 Bytes: 6
  %loadMem_4271a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4271a6 = call %struct.Memory* @routine_jbe_.L_4271e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4271a6, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_4271a6, %struct.Memory** %MEMORY

  %loadBr_4271a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4271a6 = icmp eq i8 %loadBr_4271a6, 1
  br i1 %cmpBr_4271a6, label %block_.L_4271e5, label %block_4271ac

block_4271ac:
  ; Code: cmpl $0x0, 0xab0f28	 RIP: 4271ac	 Bytes: 8
  %loadMem_4271ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4271ac = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4271ac)
  store %struct.Memory* %call_4271ac, %struct.Memory** %MEMORY

  ; Code: jne .L_4271bf	 RIP: 4271b4	 Bytes: 6
  %loadMem_4271b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4271b4 = call %struct.Memory* @routine_jne_.L_4271bf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4271b4, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4271b4, %struct.Memory** %MEMORY

  %loadBr_4271b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4271b4 = icmp eq i8 %loadBr_4271b4, 1
  br i1 %cmpBr_4271b4, label %block_.L_4271bf, label %block_4271ba

block_4271ba:
  ; Code: jmpq .L_4271d6	 RIP: 4271ba	 Bytes: 5
  %loadMem_4271ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4271ba = call %struct.Memory* @routine_jmpq_.L_4271d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4271ba, i64 28, i64 5)
  store %struct.Memory* %call_4271ba, %struct.Memory** %MEMORY

  br label %block_.L_4271d6

  ; Code: .L_4271bf:	 RIP: 4271bf	 Bytes: 0
block_.L_4271bf:

  ; Code: movq $0x57a135, %rdi	 RIP: 4271bf	 Bytes: 10
  %loadMem_4271bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4271bf = call %struct.Memory* @routine_movq__0x57a135___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4271bf)
  store %struct.Memory* %call_4271bf, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4271c9	 Bytes: 2
  %loadMem_4271c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4271c9 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4271c9)
  store %struct.Memory* %call_4271c9, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 4271cb	 Bytes: 5
  %loadMem1_4271cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4271cb = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4271cb, i64 175077, i64 5, i64 5)
  store %struct.Memory* %call1_4271cb, %struct.Memory** %MEMORY

  %loadMem2_4271cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4271cb = load i64, i64* %3
  %call2_4271cb = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_4271cb, %struct.Memory* %loadMem2_4271cb)
  store %struct.Memory* %call2_4271cb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x16c(%rbp)	 RIP: 4271d0	 Bytes: 6
  %loadMem_4271d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4271d0 = call %struct.Memory* @routine_movl__eax__MINUS0x16c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4271d0)
  store %struct.Memory* %call_4271d0, %struct.Memory** %MEMORY

  ; Code: .L_4271d6:	 RIP: 4271d6	 Bytes: 0
  br label %block_.L_4271d6
block_.L_4271d6:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4271d6	 Bytes: 4
  %loadMem_4271d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4271d6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4271d6)
  store %struct.Memory* %call_4271d6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax)	 RIP: 4271da	 Bytes: 6
  %loadMem_4271da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4271da = call %struct.Memory* @routine_movl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4271da)
  store %struct.Memory* %call_4271da, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42721f	 RIP: 4271e0	 Bytes: 5
  %loadMem_4271e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4271e0 = call %struct.Memory* @routine_jmpq_.L_42721f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4271e0, i64 63, i64 5)
  store %struct.Memory* %call_4271e0, %struct.Memory** %MEMORY

  br label %block_.L_42721f

  ; Code: .L_4271e5:	 RIP: 4271e5	 Bytes: 0
block_.L_4271e5:

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 4271e5	 Bytes: 8
  %loadMem_4271e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4271e5 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4271e5)
  store %struct.Memory* %call_4271e5, %struct.Memory** %MEMORY

  ; Code: jne .L_4271f8	 RIP: 4271ed	 Bytes: 6
  %loadMem_4271ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4271ed = call %struct.Memory* @routine_jne_.L_4271f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4271ed, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4271ed, %struct.Memory** %MEMORY

  %loadBr_4271ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4271ed = icmp eq i8 %loadBr_4271ed, 1
  br i1 %cmpBr_4271ed, label %block_.L_4271f8, label %block_4271f3

block_4271f3:
  ; Code: jmpq .L_42721a	 RIP: 4271f3	 Bytes: 5
  %loadMem_4271f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4271f3 = call %struct.Memory* @routine_jmpq_.L_42721a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4271f3, i64 39, i64 5)
  store %struct.Memory* %call_4271f3, %struct.Memory** %MEMORY

  br label %block_.L_42721a

  ; Code: .L_4271f8:	 RIP: 4271f8	 Bytes: 0
block_.L_4271f8:

  ; Code: movq $0x57a146, %rdi	 RIP: 4271f8	 Bytes: 10
  %loadMem_4271f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4271f8 = call %struct.Memory* @routine_movq__0x57a146___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4271f8)
  store %struct.Memory* %call_4271f8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 427202	 Bytes: 4
  %loadMem_427202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427202 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427202)
  store %struct.Memory* %call_427202, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 427206	 Bytes: 2
  %loadMem_427206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427206 = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427206)
  store %struct.Memory* %call_427206, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x24(%rbp), %xmm0	 RIP: 427208	 Bytes: 5
  %loadMem_427208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427208 = call %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427208)
  store %struct.Memory* %call_427208, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 42720d	 Bytes: 2
  %loadMem_42720d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42720d = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42720d)
  store %struct.Memory* %call_42720d, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 42720f	 Bytes: 5
  %loadMem1_42720f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42720f = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42720f, i64 175009, i64 5, i64 5)
  store %struct.Memory* %call1_42720f, %struct.Memory** %MEMORY

  %loadMem2_42720f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42720f = load i64, i64* %3
  %call2_42720f = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_42720f, %struct.Memory* %loadMem2_42720f)
  store %struct.Memory* %call2_42720f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x170(%rbp)	 RIP: 427214	 Bytes: 6
  %loadMem_427214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427214 = call %struct.Memory* @routine_movl__eax__MINUS0x170__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427214)
  store %struct.Memory* %call_427214, %struct.Memory** %MEMORY

  ; Code: .L_42721a:	 RIP: 42721a	 Bytes: 0
  br label %block_.L_42721a
block_.L_42721a:

  ; Code: jmpq .L_42721f	 RIP: 42721a	 Bytes: 5
  %loadMem_42721a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42721a = call %struct.Memory* @routine_jmpq_.L_42721f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42721a, i64 5, i64 5)
  store %struct.Memory* %call_42721a, %struct.Memory** %MEMORY

  br label %block_.L_42721f

  ; Code: .L_42721f:	 RIP: 42721f	 Bytes: 0
block_.L_42721f:

  ; Code: cmpl $0x0, 0xab0ed8	 RIP: 42721f	 Bytes: 8
  %loadMem_42721f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42721f = call %struct.Memory* @routine_cmpl__0x0__0xab0ed8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42721f)
  store %struct.Memory* %call_42721f, %struct.Memory** %MEMORY

  ; Code: je .L_4272e1	 RIP: 427227	 Bytes: 6
  %loadMem_427227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427227 = call %struct.Memory* @routine_je_.L_4272e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427227, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_427227, %struct.Memory** %MEMORY

  %loadBr_427227 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427227 = icmp eq i8 %loadBr_427227, 1
  br i1 %cmpBr_427227, label %block_.L_4272e1, label %block_42722d

block_42722d:
  ; Code: movq $0x57c232, %rdi	 RIP: 42722d	 Bytes: 10
  %loadMem_42722d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42722d = call %struct.Memory* @routine_movq__0x57c232___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42722d)
  store %struct.Memory* %call_42722d, %struct.Memory** %MEMORY

  ; Code: movl 0xb4a000, %esi	 RIP: 427237	 Bytes: 7
  %loadMem_427237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427237 = call %struct.Memory* @routine_movl_0xb4a000___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427237)
  store %struct.Memory* %call_427237, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42723e	 Bytes: 2
  %loadMem_42723e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42723e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42723e)
  store %struct.Memory* %call_42723e, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 427240	 Bytes: 5
  %loadMem1_427240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_427240 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_427240, i64 174960, i64 5, i64 5)
  store %struct.Memory* %call1_427240, %struct.Memory** %MEMORY

  %loadMem2_427240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427240 = load i64, i64* %3
  %call2_427240 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_427240, %struct.Memory* %loadMem2_427240)
  store %struct.Memory* %call2_427240, %struct.Memory** %MEMORY

  ; Code: movq $0x57c24c, %rdi	 RIP: 427245	 Bytes: 10
  %loadMem_427245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427245 = call %struct.Memory* @routine_movq__0x57c24c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427245)
  store %struct.Memory* %call_427245, %struct.Memory** %MEMORY

  ; Code: movl 0xb4a004, %esi	 RIP: 42724f	 Bytes: 7
  %loadMem_42724f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42724f = call %struct.Memory* @routine_movl_0xb4a004___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42724f)
  store %struct.Memory* %call_42724f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x174(%rbp)	 RIP: 427256	 Bytes: 6
  %loadMem_427256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427256 = call %struct.Memory* @routine_movl__eax__MINUS0x174__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427256)
  store %struct.Memory* %call_427256, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42725c	 Bytes: 2
  %loadMem_42725c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42725c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42725c)
  store %struct.Memory* %call_42725c, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 42725e	 Bytes: 5
  %loadMem1_42725e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42725e = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42725e, i64 174930, i64 5, i64 5)
  store %struct.Memory* %call1_42725e, %struct.Memory** %MEMORY

  %loadMem2_42725e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42725e = load i64, i64* %3
  %call2_42725e = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_42725e, %struct.Memory* %loadMem2_42725e)
  store %struct.Memory* %call2_42725e, %struct.Memory** %MEMORY

  ; Code: movq $0x57c266, %rdi	 RIP: 427263	 Bytes: 10
  %loadMem_427263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427263 = call %struct.Memory* @routine_movq__0x57c266___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427263)
  store %struct.Memory* %call_427263, %struct.Memory** %MEMORY

  ; Code: movl 0xb4a008, %esi	 RIP: 42726d	 Bytes: 7
  %loadMem_42726d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42726d = call %struct.Memory* @routine_movl_0xb4a008___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42726d)
  store %struct.Memory* %call_42726d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x178(%rbp)	 RIP: 427274	 Bytes: 6
  %loadMem_427274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427274 = call %struct.Memory* @routine_movl__eax__MINUS0x178__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427274)
  store %struct.Memory* %call_427274, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42727a	 Bytes: 2
  %loadMem_42727a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42727a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42727a)
  store %struct.Memory* %call_42727a, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 42727c	 Bytes: 5
  %loadMem1_42727c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42727c = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42727c, i64 174900, i64 5, i64 5)
  store %struct.Memory* %call1_42727c, %struct.Memory** %MEMORY

  %loadMem2_42727c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42727c = load i64, i64* %3
  %call2_42727c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_42727c, %struct.Memory* %loadMem2_42727c)
  store %struct.Memory* %call2_42727c, %struct.Memory** %MEMORY

  ; Code: movq $0x57c280, %rdi	 RIP: 427281	 Bytes: 10
  %loadMem_427281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427281 = call %struct.Memory* @routine_movq__0x57c280___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427281)
  store %struct.Memory* %call_427281, %struct.Memory** %MEMORY

  ; Code: movl 0xb4a00c, %esi	 RIP: 42728b	 Bytes: 7
  %loadMem_42728b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42728b = call %struct.Memory* @routine_movl_0xb4a00c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42728b)
  store %struct.Memory* %call_42728b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x17c(%rbp)	 RIP: 427292	 Bytes: 6
  %loadMem_427292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427292 = call %struct.Memory* @routine_movl__eax__MINUS0x17c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427292)
  store %struct.Memory* %call_427292, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 427298	 Bytes: 2
  %loadMem_427298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427298 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427298)
  store %struct.Memory* %call_427298, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 42729a	 Bytes: 5
  %loadMem1_42729a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42729a = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42729a, i64 174870, i64 5, i64 5)
  store %struct.Memory* %call1_42729a, %struct.Memory** %MEMORY

  %loadMem2_42729a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42729a = load i64, i64* %3
  %call2_42729a = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_42729a, %struct.Memory* %loadMem2_42729a)
  store %struct.Memory* %call2_42729a, %struct.Memory** %MEMORY

  ; Code: movq $0x57c29a, %rdi	 RIP: 42729f	 Bytes: 10
  %loadMem_42729f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42729f = call %struct.Memory* @routine_movq__0x57c29a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42729f)
  store %struct.Memory* %call_42729f, %struct.Memory** %MEMORY

  ; Code: movl 0xb4a010, %esi	 RIP: 4272a9	 Bytes: 7
  %loadMem_4272a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272a9 = call %struct.Memory* @routine_movl_0xb4a010___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272a9)
  store %struct.Memory* %call_4272a9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x180(%rbp)	 RIP: 4272b0	 Bytes: 6
  %loadMem_4272b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272b0 = call %struct.Memory* @routine_movl__eax__MINUS0x180__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272b0)
  store %struct.Memory* %call_4272b0, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4272b6	 Bytes: 2
  %loadMem_4272b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272b6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272b6)
  store %struct.Memory* %call_4272b6, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 4272b8	 Bytes: 5
  %loadMem1_4272b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4272b8 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4272b8, i64 174840, i64 5, i64 5)
  store %struct.Memory* %call1_4272b8, %struct.Memory** %MEMORY

  %loadMem2_4272b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4272b8 = load i64, i64* %3
  %call2_4272b8 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_4272b8, %struct.Memory* %loadMem2_4272b8)
  store %struct.Memory* %call2_4272b8, %struct.Memory** %MEMORY

  ; Code: movq $0x57c2b4, %rdi	 RIP: 4272bd	 Bytes: 10
  %loadMem_4272bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272bd = call %struct.Memory* @routine_movq__0x57c2b4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272bd)
  store %struct.Memory* %call_4272bd, %struct.Memory** %MEMORY

  ; Code: movl 0xb4a014, %esi	 RIP: 4272c7	 Bytes: 7
  %loadMem_4272c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272c7 = call %struct.Memory* @routine_movl_0xb4a014___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272c7)
  store %struct.Memory* %call_4272c7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x184(%rbp)	 RIP: 4272ce	 Bytes: 6
  %loadMem_4272ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272ce = call %struct.Memory* @routine_movl__eax__MINUS0x184__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272ce)
  store %struct.Memory* %call_4272ce, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4272d4	 Bytes: 2
  %loadMem_4272d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272d4 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272d4)
  store %struct.Memory* %call_4272d4, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 4272d6	 Bytes: 5
  %loadMem1_4272d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4272d6 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4272d6, i64 174810, i64 5, i64 5)
  store %struct.Memory* %call1_4272d6, %struct.Memory** %MEMORY

  %loadMem2_4272d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4272d6 = load i64, i64* %3
  %call2_4272d6 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_4272d6, %struct.Memory* %loadMem2_4272d6)
  store %struct.Memory* %call2_4272d6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x188(%rbp)	 RIP: 4272db	 Bytes: 6
  %loadMem_4272db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272db = call %struct.Memory* @routine_movl__eax__MINUS0x188__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272db)
  store %struct.Memory* %call_4272db, %struct.Memory** %MEMORY

  ; Code: .L_4272e1:	 RIP: 4272e1	 Bytes: 0
  br label %block_.L_4272e1
block_.L_4272e1:

  ; Code: cmpl $0x0, 0xab0f0c	 RIP: 4272e1	 Bytes: 8
  %loadMem_4272e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272e1 = call %struct.Memory* @routine_cmpl__0x0__0xab0f0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272e1)
  store %struct.Memory* %call_4272e1, %struct.Memory** %MEMORY

  ; Code: je .L_427426	 RIP: 4272e9	 Bytes: 6
  %loadMem_4272e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272e9 = call %struct.Memory* @routine_je_.L_427426(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272e9, i8* %BRANCH_TAKEN, i64 317, i64 6, i64 6)
  store %struct.Memory* %call_4272e9, %struct.Memory** %MEMORY

  %loadBr_4272e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4272e9 = icmp eq i8 %loadBr_4272e9, 1
  br i1 %cmpBr_4272e9, label %block_.L_427426, label %block_4272ef

block_4272ef:
  ; Code: xorl %edi, %edi	 RIP: 4272ef	 Bytes: 2
  %loadMem_4272ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272ef = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272ef)
  store %struct.Memory* %call_4272ef, %struct.Memory** %MEMORY

  ; Code: movq $0x57c2ce, %rsi	 RIP: 4272f1	 Bytes: 10
  %loadMem_4272f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272f1 = call %struct.Memory* @routine_movq__0x57c2ce___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272f1)
  store %struct.Memory* %call_4272f1, %struct.Memory** %MEMORY

  ; Code: movsd 0xbbc5d(%rip), %xmm0	 RIP: 4272fb	 Bytes: 8
  %loadMem_4272fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4272fb = call %struct.Memory* @routine_movsd_0xbbc5d__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4272fb)
  store %struct.Memory* %call_4272fb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 427303	 Bytes: 4
  %loadMem_427303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427303 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427303)
  store %struct.Memory* %call_427303, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 427307	 Bytes: 2
  %loadMem_427307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427307 = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427307)
  store %struct.Memory* %call_427307, %struct.Memory** %MEMORY

  ; Code: callq .time_report	 RIP: 427309	 Bytes: 5
  %loadMem1_427309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_427309 = call %struct.Memory* @routine_callq_.time_report(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_427309, i64 348359, i64 5, i64 5)
  store %struct.Memory* %call1_427309, %struct.Memory** %MEMORY

  %loadMem2_427309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427309 = load i64, i64* %3
  %call2_427309 = call %struct.Memory* @sub_47c3d0.time_report(%struct.State* %0, i64  %loadPC_427309, %struct.Memory* %loadMem2_427309)
  store %struct.Memory* %call2_427309, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x38(%rbp)	 RIP: 42730e	 Bytes: 5
  %loadMem_42730e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42730e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42730e)
  store %struct.Memory* %call_42730e, %struct.Memory** %MEMORY

  ; Code: movsd -0x38(%rbp), %xmm0	 RIP: 427313	 Bytes: 5
  %loadMem_427313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427313 = call %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427313)
  store %struct.Memory* %call_427313, %struct.Memory** %MEMORY

  ; Code: addsd 0xab0eb8, %xmm0	 RIP: 427318	 Bytes: 9
  %loadMem_427318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427318 = call %struct.Memory* @routine_addsd_0xab0eb8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427318)
  store %struct.Memory* %call_427318, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0xab0eb8	 RIP: 427321	 Bytes: 9
  %loadMem_427321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427321 = call %struct.Memory* @routine_movsd__xmm0__0xab0eb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427321)
  store %struct.Memory* %call_427321, %struct.Memory** %MEMORY

  ; Code: movsd -0x38(%rbp), %xmm0	 RIP: 42732a	 Bytes: 5
  %loadMem_42732a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42732a = call %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42732a)
  store %struct.Memory* %call_42732a, %struct.Memory** %MEMORY

  ; Code: ucomisd 0xab0ec0, %xmm0	 RIP: 42732f	 Bytes: 9
  %loadMem_42732f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42732f = call %struct.Memory* @routine_ucomisd_0xab0ec0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42732f)
  store %struct.Memory* %call_42732f, %struct.Memory** %MEMORY

  ; Code: jbe .L_42736a	 RIP: 427338	 Bytes: 6
  %loadMem_427338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427338 = call %struct.Memory* @routine_jbe_.L_42736a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427338, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_427338, %struct.Memory** %MEMORY

  %loadBr_427338 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427338 = icmp eq i8 %loadBr_427338, 1
  br i1 %cmpBr_427338, label %block_.L_42736a, label %block_42733e

block_42733e:
  ; Code: movsd -0x38(%rbp), %xmm0	 RIP: 42733e	 Bytes: 5
  %loadMem_42733e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42733e = call %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42733e)
  store %struct.Memory* %call_42733e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0xab0ec0	 RIP: 427343	 Bytes: 9
  %loadMem_427343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427343 = call %struct.Memory* @routine_movsd__xmm0__0xab0ec0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427343)
  store %struct.Memory* %call_427343, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 42734c	 Bytes: 4
  %loadMem_42734c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42734c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42734c)
  store %struct.Memory* %call_42734c, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 427350	 Bytes: 2
  %loadMem_427350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427350 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427350)
  store %struct.Memory* %call_427350, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xab0ec8	 RIP: 427352	 Bytes: 7
  %loadMem_427352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427352 = call %struct.Memory* @routine_movl__ecx__0xab0ec8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427352)
  store %struct.Memory* %call_427352, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %ecx	 RIP: 427359	 Bytes: 7
  %loadMem_427359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427359 = call %struct.Memory* @routine_movl_0xafdfb0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427359)
  store %struct.Memory* %call_427359, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 427360	 Bytes: 3
  %loadMem_427360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427360 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427360)
  store %struct.Memory* %call_427360, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xab0ecc	 RIP: 427363	 Bytes: 7
  %loadMem_427363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427363 = call %struct.Memory* @routine_movl__ecx__0xab0ecc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427363)
  store %struct.Memory* %call_427363, %struct.Memory** %MEMORY

  ; Code: .L_42736a:	 RIP: 42736a	 Bytes: 0
  br label %block_.L_42736a
block_.L_42736a:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 42736a	 Bytes: 4
  %loadMem_42736a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42736a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42736a)
  store %struct.Memory* %call_42736a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax)	 RIP: 42736e	 Bytes: 3
  %loadMem_42736e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42736e = call %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42736e)
  store %struct.Memory* %call_42736e, %struct.Memory** %MEMORY

  ; Code: jne .L_427421	 RIP: 427371	 Bytes: 6
  %loadMem_427371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427371 = call %struct.Memory* @routine_jne_.L_427421(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427371, i8* %BRANCH_TAKEN, i64 176, i64 6, i64 6)
  store %struct.Memory* %call_427371, %struct.Memory** %MEMORY

  %loadBr_427371 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427371 = icmp eq i8 %loadBr_427371, 1
  br i1 %cmpBr_427371, label %block_.L_427421, label %block_427377

block_427377:
  ; Code: movq $0x57c2e8, %rdi	 RIP: 427377	 Bytes: 10
  %loadMem_427377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427377 = call %struct.Memory* @routine_movq__0x57c2e8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427377)
  store %struct.Memory* %call_427377, %struct.Memory** %MEMORY

  ; Code: movl 0xab0ecc, %esi	 RIP: 427381	 Bytes: 7
  %loadMem_427381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427381 = call %struct.Memory* @routine_movl_0xab0ecc___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427381)
  store %struct.Memory* %call_427381, %struct.Memory** %MEMORY

  ; Code: movl 0xab0ec8, %edx	 RIP: 427388	 Bytes: 7
  %loadMem_427388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427388 = call %struct.Memory* @routine_movl_0xab0ec8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427388)
  store %struct.Memory* %call_427388, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42738f	 Bytes: 2
  %loadMem_42738f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42738f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42738f)
  store %struct.Memory* %call_42738f, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 427391	 Bytes: 5
  %loadMem1_427391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_427391 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_427391, i64 174623, i64 5, i64 5)
  store %struct.Memory* %call1_427391, %struct.Memory** %MEMORY

  %loadMem2_427391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427391 = load i64, i64* %3
  %call2_427391 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_427391, %struct.Memory* %loadMem2_427391)
  store %struct.Memory* %call2_427391, %struct.Memory** %MEMORY

  ; Code: movq $0x57c302, %rsi	 RIP: 427396	 Bytes: 10
  %loadMem_427396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427396 = call %struct.Memory* @routine_movq__0x57c302___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427396)
  store %struct.Memory* %call_427396, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4273a0	 Bytes: 8
  %loadMem_4273a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273a0 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273a0)
  store %struct.Memory* %call_4273a0, %struct.Memory** %MEMORY

  ; Code: movsd 0xab0ec0, %xmm0	 RIP: 4273a8	 Bytes: 9
  %loadMem_4273a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273a8 = call %struct.Memory* @routine_movsd_0xab0ec0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273a8)
  store %struct.Memory* %call_4273a8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18c(%rbp)	 RIP: 4273b1	 Bytes: 6
  %loadMem_4273b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273b1 = call %struct.Memory* @routine_movl__eax__MINUS0x18c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273b1)
  store %struct.Memory* %call_4273b1, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 4273b7	 Bytes: 2
  %loadMem_4273b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273b7 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273b7)
  store %struct.Memory* %call_4273b7, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4273b9	 Bytes: 5
  %loadMem1_4273b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4273b9 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4273b9, i64 -156393, i64 5, i64 5)
  store %struct.Memory* %call1_4273b9, %struct.Memory** %MEMORY

  %loadMem2_4273b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4273b9 = load i64, i64* %3
  %call2_4273b9 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4273b9, %struct.Memory* %loadMem2_4273b9)
  store %struct.Memory* %call2_4273b9, %struct.Memory** %MEMORY

  ; Code: movq $0x57c312, %rsi	 RIP: 4273be	 Bytes: 10
  %loadMem_4273be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273be = call %struct.Memory* @routine_movq__0x57c312___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273be)
  store %struct.Memory* %call_4273be, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4273c8	 Bytes: 8
  %loadMem_4273c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273c8 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273c8)
  store %struct.Memory* %call_4273c8, %struct.Memory** %MEMORY

  ; Code: movsd 0xab0eb8, %xmm0	 RIP: 4273d0	 Bytes: 9
  %loadMem_4273d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273d0 = call %struct.Memory* @routine_movsd_0xab0eb8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273d0)
  store %struct.Memory* %call_4273d0, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0xafdfb0, %xmm1	 RIP: 4273d9	 Bytes: 9
  %loadMem_4273d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273d9 = call %struct.Memory* @routine_cvtsi2sdl_0xafdfb0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273d9)
  store %struct.Memory* %call_4273d9, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm0	 RIP: 4273e2	 Bytes: 4
  %loadMem_4273e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273e2 = call %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273e2)
  store %struct.Memory* %call_4273e2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x190(%rbp)	 RIP: 4273e6	 Bytes: 6
  %loadMem_4273e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273e6 = call %struct.Memory* @routine_movl__eax__MINUS0x190__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273e6)
  store %struct.Memory* %call_4273e6, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 4273ec	 Bytes: 2
  %loadMem_4273ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273ec = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273ec)
  store %struct.Memory* %call_4273ec, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4273ee	 Bytes: 5
  %loadMem1_4273ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4273ee = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4273ee, i64 -156446, i64 5, i64 5)
  store %struct.Memory* %call1_4273ee, %struct.Memory** %MEMORY

  %loadMem2_4273ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4273ee = load i64, i64* %3
  %call2_4273ee = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4273ee, %struct.Memory* %loadMem2_4273ee)
  store %struct.Memory* %call2_4273ee, %struct.Memory** %MEMORY

  ; Code: movq $0x57c338, %rsi	 RIP: 4273f3	 Bytes: 10
  %loadMem_4273f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273f3 = call %struct.Memory* @routine_movq__0x57c338___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273f3)
  store %struct.Memory* %call_4273f3, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4273fd	 Bytes: 8
  %loadMem_4273fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4273fd = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4273fd)
  store %struct.Memory* %call_4273fd, %struct.Memory** %MEMORY

  ; Code: movsd 0xab0eb8, %xmm0	 RIP: 427405	 Bytes: 9
  %loadMem_427405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427405 = call %struct.Memory* @routine_movsd_0xab0eb8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427405)
  store %struct.Memory* %call_427405, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x194(%rbp)	 RIP: 42740e	 Bytes: 6
  %loadMem_42740e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42740e = call %struct.Memory* @routine_movl__eax__MINUS0x194__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42740e)
  store %struct.Memory* %call_42740e, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 427414	 Bytes: 2
  %loadMem_427414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427414 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427414)
  store %struct.Memory* %call_427414, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 427416	 Bytes: 5
  %loadMem1_427416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_427416 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_427416, i64 -156486, i64 5, i64 5)
  store %struct.Memory* %call1_427416, %struct.Memory** %MEMORY

  %loadMem2_427416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427416 = load i64, i64* %3
  %call2_427416 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_427416, %struct.Memory* %loadMem2_427416)
  store %struct.Memory* %call2_427416, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x198(%rbp)	 RIP: 42741b	 Bytes: 6
  %loadMem_42741b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42741b = call %struct.Memory* @routine_movl__eax__MINUS0x198__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42741b)
  store %struct.Memory* %call_42741b, %struct.Memory** %MEMORY

  ; Code: .L_427421:	 RIP: 427421	 Bytes: 0
  br label %block_.L_427421
block_.L_427421:

  ; Code: jmpq .L_427426	 RIP: 427421	 Bytes: 5
  %loadMem_427421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427421 = call %struct.Memory* @routine_jmpq_.L_427426(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427421, i64 5, i64 5)
  store %struct.Memory* %call_427421, %struct.Memory** %MEMORY

  br label %block_.L_427426

  ; Code: .L_427426:	 RIP: 427426	 Bytes: 0
block_.L_427426:

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 427426	 Bytes: 8
  %loadMem_427426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427426 = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427426)
  store %struct.Memory* %call_427426, %struct.Memory** %MEMORY

  ; Code: jne .L_427439	 RIP: 42742e	 Bytes: 6
  %loadMem_42742e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42742e = call %struct.Memory* @routine_jne_.L_427439(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42742e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42742e, %struct.Memory** %MEMORY

  %loadBr_42742e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42742e = icmp eq i8 %loadBr_42742e, 1
  br i1 %cmpBr_42742e, label %block_.L_427439, label %block_427434

block_427434:
  ; Code: jmpq .L_427461	 RIP: 427434	 Bytes: 5
  %loadMem_427434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427434 = call %struct.Memory* @routine_jmpq_.L_427461(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427434, i64 45, i64 5)
  store %struct.Memory* %call_427434, %struct.Memory** %MEMORY

  br label %block_.L_427461

  ; Code: .L_427439:	 RIP: 427439	 Bytes: 0
block_.L_427439:

  ; Code: movq $0x57bf39, %rdi	 RIP: 427439	 Bytes: 10
  %loadMem_427439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427439 = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427439)
  store %struct.Memory* %call_427439, %struct.Memory** %MEMORY

  ; Code: movl $0x231, %esi	 RIP: 427443	 Bytes: 5
  %loadMem_427443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427443 = call %struct.Memory* @routine_movl__0x231___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427443)
  store %struct.Memory* %call_427443, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 427448	 Bytes: 10
  %loadMem_427448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427448 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427448)
  store %struct.Memory* %call_427448, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 427452	 Bytes: 5
  %loadMem_427452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427452 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427452)
  store %struct.Memory* %call_427452, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 427457	 Bytes: 2
  %loadMem_427457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427457 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427457)
  store %struct.Memory* %call_427457, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 427459	 Bytes: 3
  %loadMem_427459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427459 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427459)
  store %struct.Memory* %call_427459, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 42745c	 Bytes: 5
  %loadMem1_42745c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42745c = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42745c, i64 175156, i64 5, i64 5)
  store %struct.Memory* %call1_42745c, %struct.Memory** %MEMORY

  %loadMem2_42745c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42745c = load i64, i64* %3
  %call2_42745c = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_42745c, %struct.Memory* %loadMem2_42745c)
  store %struct.Memory* %call2_42745c, %struct.Memory** %MEMORY

  ; Code: .L_427461:	 RIP: 427461	 Bytes: 0
  br label %block_.L_427461
block_.L_427461:

  ; Code: callq .test_gray_border	 RIP: 427461	 Bytes: 5
  %loadMem1_427461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_427461 = call %struct.Memory* @routine_callq_.test_gray_border(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_427461, i64 -124721, i64 5, i64 5)
  store %struct.Memory* %call1_427461, %struct.Memory** %MEMORY

  %loadMem2_427461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427461 = load i64, i64* %3
  %call2_427461 = call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* %0, i64  %loadPC_427461, %struct.Memory* %loadMem2_427461)
  store %struct.Memory* %call2_427461, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 427466	 Bytes: 3
  %loadMem_427466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427466 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427466)
  store %struct.Memory* %call_427466, %struct.Memory** %MEMORY

  ; Code: jge .L_427474	 RIP: 427469	 Bytes: 6
  %loadMem_427469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427469 = call %struct.Memory* @routine_jge_.L_427474(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427469, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_427469, %struct.Memory** %MEMORY

  %loadBr_427469 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_427469 = icmp eq i8 %loadBr_427469, 1
  br i1 %cmpBr_427469, label %block_.L_427474, label %block_42746f

block_42746f:
  ; Code: jmpq .L_42749c	 RIP: 42746f	 Bytes: 5
  %loadMem_42746f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42746f = call %struct.Memory* @routine_jmpq_.L_42749c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42746f, i64 45, i64 5)
  store %struct.Memory* %call_42746f, %struct.Memory** %MEMORY

  br label %block_.L_42749c

  ; Code: .L_427474:	 RIP: 427474	 Bytes: 0
block_.L_427474:

  ; Code: movq $0x57bf39, %rdi	 RIP: 427474	 Bytes: 10
  %loadMem_427474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427474 = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427474)
  store %struct.Memory* %call_427474, %struct.Memory** %MEMORY

  ; Code: movl $0x232, %esi	 RIP: 42747e	 Bytes: 5
  %loadMem_42747e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42747e = call %struct.Memory* @routine_movl__0x232___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42747e)
  store %struct.Memory* %call_42747e, %struct.Memory** %MEMORY

  ; Code: movq $0x57bfef, %rdx	 RIP: 427483	 Bytes: 10
  %loadMem_427483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427483 = call %struct.Memory* @routine_movq__0x57bfef___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427483)
  store %struct.Memory* %call_427483, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 42748d	 Bytes: 5
  %loadMem_42748d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42748d = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42748d)
  store %struct.Memory* %call_42748d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 427492	 Bytes: 2
  %loadMem_427492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427492 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427492)
  store %struct.Memory* %call_427492, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 427494	 Bytes: 3
  %loadMem_427494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_427494 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_427494)
  store %struct.Memory* %call_427494, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 427497	 Bytes: 5
  %loadMem1_427497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_427497 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_427497, i64 175097, i64 5, i64 5)
  store %struct.Memory* %call1_427497, %struct.Memory** %MEMORY

  %loadMem2_427497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_427497 = load i64, i64* %3
  %call2_427497 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_427497, %struct.Memory* %loadMem2_427497)
  store %struct.Memory* %call2_427497, %struct.Memory** %MEMORY

  ; Code: .L_42749c:	 RIP: 42749c	 Bytes: 0
  br label %block_.L_42749c
block_.L_42749c:

  ; Code: movl 0xb8b854, %eax	 RIP: 42749c	 Bytes: 7
  %loadMem_42749c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42749c = call %struct.Memory* @routine_movl_0xb8b854___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42749c)
  store %struct.Memory* %call_42749c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 4274a3	 Bytes: 3
  %loadMem_4274a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274a3 = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274a3)
  store %struct.Memory* %call_4274a3, %struct.Memory** %MEMORY

  ; Code: jne .L_4274b1	 RIP: 4274a6	 Bytes: 6
  %loadMem_4274a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274a6 = call %struct.Memory* @routine_jne_.L_4274b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274a6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4274a6, %struct.Memory** %MEMORY

  %loadBr_4274a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4274a6 = icmp eq i8 %loadBr_4274a6, 1
  br i1 %cmpBr_4274a6, label %block_.L_4274b1, label %block_4274ac

block_4274ac:
  ; Code: jmpq .L_4274d9	 RIP: 4274ac	 Bytes: 5
  %loadMem_4274ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274ac = call %struct.Memory* @routine_jmpq_.L_4274d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274ac, i64 45, i64 5)
  store %struct.Memory* %call_4274ac, %struct.Memory** %MEMORY

  br label %block_.L_4274d9

  ; Code: .L_4274b1:	 RIP: 4274b1	 Bytes: 0
block_.L_4274b1:

  ; Code: movq $0x57bf39, %rdi	 RIP: 4274b1	 Bytes: 10
  %loadMem_4274b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274b1 = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274b1)
  store %struct.Memory* %call_4274b1, %struct.Memory** %MEMORY

  ; Code: movl $0x233, %esi	 RIP: 4274bb	 Bytes: 5
  %loadMem_4274bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274bb = call %struct.Memory* @routine_movl__0x233___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274bb)
  store %struct.Memory* %call_4274bb, %struct.Memory** %MEMORY

  ; Code: movq $0x57c353, %rdx	 RIP: 4274c0	 Bytes: 10
  %loadMem_4274c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274c0 = call %struct.Memory* @routine_movq__0x57c353___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274c0)
  store %struct.Memory* %call_4274c0, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 4274ca	 Bytes: 5
  %loadMem_4274ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274ca = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274ca)
  store %struct.Memory* %call_4274ca, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4274cf	 Bytes: 2
  %loadMem_4274cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274cf = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274cf)
  store %struct.Memory* %call_4274cf, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 4274d1	 Bytes: 3
  %loadMem_4274d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274d1 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274d1)
  store %struct.Memory* %call_4274d1, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 4274d4	 Bytes: 5
  %loadMem1_4274d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4274d4 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4274d4, i64 175036, i64 5, i64 5)
  store %struct.Memory* %call1_4274d4, %struct.Memory** %MEMORY

  %loadMem2_4274d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4274d4 = load i64, i64* %3
  %call2_4274d4 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_4274d4, %struct.Memory* %loadMem2_4274d4)
  store %struct.Memory* %call2_4274d4, %struct.Memory** %MEMORY

  ; Code: .L_4274d9:	 RIP: 4274d9	 Bytes: 0
  br label %block_.L_4274d9
block_.L_4274d9:

  ; Code: cvttss2si -0x24(%rbp), %eax	 RIP: 4274d9	 Bytes: 5
  %loadMem_4274d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274d9 = call %struct.Memory* @routine_cvttss2si_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274d9)
  store %struct.Memory* %call_4274d9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4274de	 Bytes: 3
  %loadMem_4274de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274de = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274de)
  store %struct.Memory* %call_4274de, %struct.Memory** %MEMORY

  ; Code: .L_4274e1:	 RIP: 4274e1	 Bytes: 0
  br label %block_.L_4274e1
block_.L_4274e1:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4274e1	 Bytes: 3
  %loadMem_4274e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274e1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274e1)
  store %struct.Memory* %call_4274e1, %struct.Memory** %MEMORY

  ; Code: addq $0x1a0, %rsp	 RIP: 4274e4	 Bytes: 7
  %loadMem_4274e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274e4 = call %struct.Memory* @routine_addq__0x1a0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274e4)
  store %struct.Memory* %call_4274e4, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4274eb	 Bytes: 1
  %loadMem_4274eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274eb = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274eb)
  store %struct.Memory* %call_4274eb, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4274ec	 Bytes: 1
  %loadMem_4274ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4274ec = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4274ec)
  store %struct.Memory* %call_4274ec, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4274ec
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

define %struct.Memory* @routine_subq__0x1a0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 416)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_callq_.start_timer(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x7ae448___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x7ae448_type* @G__0x7ae448 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = bitcast i8* %2 to float*
  store float %6, float* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 4
  %9 = bitcast i8* %8 to float*
  store float 0.000000e+00, float* %9, align 1
  %10 = getelementptr inbounds i8, i8* %2, i64 8
  %11 = bitcast i8* %10 to float*
  store float 0.000000e+00, float* %11, align 1
  %12 = getelementptr inbounds i8, i8* %2, i64 12
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss_0xbcdde__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbcdde__rip__type* @G_0xbcdde__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__0xb6e920___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0xb6e920_type* @G__0xb6e920 to i64))
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x5a4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 1444)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rcx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 68
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.memset_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__0xb4a000(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb4a000_type* @G_0xb4a000 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0xb4a004(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb4a004_type* @G_0xb4a004 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0xb4a008(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb4a008_type* @G_0xb4a008 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0xb4a00c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb4a00c_type* @G_0xb4a00c to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0xb4a010(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb4a010_type* @G_0xb4a010 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0xb4a014(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb4a014_type* @G_0xb4a014 to i64), i64 0)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movss_MINUS0x44__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 36
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.get_level(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4263d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57c05a___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c05a_type* @G__0x57c05a to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x99c0a0_type* @G_0x99c0a0 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x7ae448___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x7ae448_type* @G_0x7ae448 to i64))
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


define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.reset_engine(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xb8b854___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xb8b854_type* @G_0xb8b854 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_cmpl__0x0__0xab0fd8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0fd8_type* @G_0xab0fd8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_426468(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x7ae458(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7ae458_type* @G_0x7ae458 to i64), i64 0)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_jl_.L_42641a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 3)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.stones_on_board(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_0x7ae458___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x7ae458_type* @G_0x7ae458 to i64))
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

define %struct.Memory* @routine_jg_.L_426468(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.find_mirror_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64), i64 0)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_jne_.L_426442(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_42645c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57c066___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57c066_type* @G__0x57c066 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl___rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_callq_.gprintf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4274e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 1)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__0x63___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 99)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_callq_.examine_position(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57c08f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c08f_type* @G__0x57c08f to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_xorl__edx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to double*
  %6 = load double, double* %5
  %7 = bitcast i8* %2 to double*
  store double %6, double* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 8
  %9 = bitcast i8* %8 to double*
  store double 0.000000e+00, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd_0xbcac8__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbcac8__rip__type* @G_0xbcac8__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_callq_.time_report(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x8__0x7ae448(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7ae448_type* @G_0x7ae448 to i64), i64 8)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jl_.L_426723(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0xab0f18___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0xab0f18_type* @G__0xab0f18 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0xab0f1c___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0xab0f1c_type* @G__0xab0f1c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.estimate_score(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movss__xmm0__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 92
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jne_.L_4264ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0xab0f10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f10_type* @G_0xab0f10 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_4266c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_0xab0f18___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xab0f18_type* @G_0xab0f18 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i64) #0 {
  %5 = bitcast i8* %2 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %3 to float*
  %9 = load float, float* %8
  %10 = fcmp uno float %7, %9
  br i1 %10, label %11, label %23

; <label>:11:                                     ; preds = %4
  %12 = fadd float %7, %9
  %13 = bitcast float %12 to i32
  %14 = and i32 %13, 2143289344
  %15 = icmp eq i32 %14, 2139095040
  %16 = and i32 %13, 4194303
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %29

; <label>:19:                                     ; preds = %11
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %21, %struct.Memory* %0) #21
  br label %40

; <label>:23:                                     ; preds = %4
  %24 = fcmp ogt float %7, %9
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp olt float %7, %9
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %25
  %28 = fcmp oeq float %7, %9
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %27, %25, %23, %11
  %30 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 1, %27 ], [ 1, %11 ]
  %31 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 1, %11 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %25 ], [ 0, %27 ], [ 1, %11 ]
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %32, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %27
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  br label %40

; <label>:40:                                     ; preds = %36, %19
  %41 = phi %struct.Memory* [ %22, %19 ], [ %0, %36 ]
  ret %struct.Memory* %41
}

define %struct.Memory* @routine_ucomiss_0xab0f1c___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xab0f1c_type* @G_0xab0f1c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_jne_.L_426594(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JPEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = icmp ne i8 %7, 0
  %10 = select i1 %9, i64 %3, i64 %4
  store i64 %10, i64* %8, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jp_.L_426594(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JPEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to i64*
  %7 = load i64, i64* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to i64*
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 8
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = xor i64 %12, %7
  %17 = xor i64 %15, %10
  %18 = trunc i64 %16 to i32
  %19 = lshr i64 %16, 32
  %20 = trunc i64 %19 to i32
  %21 = bitcast i8* %2 to i32*
  store i32 %18, i32* %21, align 1
  %22 = getelementptr inbounds i8, i8* %2, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %20, i32* %23, align 1
  %24 = trunc i64 %17 to i32
  %25 = getelementptr inbounds i8, i8* %2, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = lshr i64 %17, 32
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds i8, i8* %2, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__0x579da7___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x579da7_type* @G__0x579da7 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x579daa___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x579daa_type* @G__0x579daa to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movss_0xab0f18___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xab0f18_type* @G_0xab0f18 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = bitcast i8* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = fcmp uno float %7, %10
  br i1 %11, label %12, label %24

; <label>:12:                                     ; preds = %4
  %13 = fadd float %7, %10
  %14 = bitcast float %13 to i32
  %15 = and i32 %14, 2143289344
  %16 = icmp eq i32 %15, 2139095040
  %17 = and i32 %14, 4194303
  %18 = icmp ne i32 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %30

; <label>:20:                                     ; preds = %12
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %22, %struct.Memory* %0) #21
  br label %41

; <label>:24:                                     ; preds = %4
  %25 = fcmp ogt float %7, %10
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %7, %10
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %7, %10
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %12
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %12 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %12 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %12 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %41

; <label>:41:                                     ; preds = %37, %20
  %42 = phi %struct.Memory* [ %23, %20 ], [ %0, %37 ]
  ret %struct.Memory* %42
}

define %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L7CMOVNBEI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %6 = load i8, i8* %5, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %8 = load i8, i8* %7, align 1
  %9 = or i8 %8, %6
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %2, align 8
  %12 = select i1 %10, i64 %3, i64 %11
  store i64 %12, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmovaq__rcx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7CMOVNBEI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_ucomiss_0xab0f18___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xab0f18_type* @G_0xab0f18 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %2, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %14 = select i1 %11, i64 %3, i64 %4
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jbe_.L_426560(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVDI4RVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to i64*
  %6 = load i64, i64* %5, align 1
  %7 = trunc i64 %6 to i32
  %8 = bitcast i64* %2 to [2 x i32]*
  %9 = bitcast i64* %2 to i32*
  store i32 %7, i32* %9, align 1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %10, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movd__xmm0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVDI4RVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_xorl__0x80000000___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 -2147483648)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVDI3VnWI8vec128_tE3RVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = trunc i64 %3 to i32
  %6 = bitcast i8* %2 to i32*
  store i32 %5, i32* %6, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 4
  %8 = bitcast i8* %7 to i32*
  store i32 0, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %2, i64 8
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %2, i64 12
  %12 = bitcast i8* %11 to i32*
  store i32 0, i32* %12, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movd__eax___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVDI3VnWI8vec128_tE3RVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 108
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42656e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movss_MINUS0x6c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x57a0c7___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57a0c7_type* @G__0x57a0c7 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = fpext float %7 to double
  %9 = bitcast i8* %2 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4266b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}
















define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jbe_.L_4265ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movss__xmm0__MINUS0x7c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 124
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_4265fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movss_MINUS0x7c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}








define %struct.Memory* @routine_movss_0xab0f1c___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xab0f1c_type* @G_0xab0f1c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_ucomiss__xmm1___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_ucomiss_0xab0f1c___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xab0f1c_type* @G_0xab0f1c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jbe_.L_42666b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movss_0xab0f1c___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xab0f1c_type* @G_0xab0f1c to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movss__xmm0__MINUS0x94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 148
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42667c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movss_MINUS0x94__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x57a0df___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57a0df_type* @G__0x57a0df to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cvtss2sd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x88__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__0x2___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 2)
  ret %struct.Memory* %12
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




define %struct.Memory* @routine_callq_.fflush_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57c0a0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c0a0_type* @G__0x57c0a0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movsd_0xbc882__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbc882__rip__type* @G_0xbc882__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 168
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jne_.L_42670c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movss__xmm0__0xab0f14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f14_type* @G_0xab0f14 to i64), i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_jmpq_.L_42671e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jmpq_.L_42672f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_cmpl__0x0__0xab0ee4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0ee4_type* @G_0xab0ee4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_426742(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.print_moyo(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0xab0ee8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0ee8_type* @G_0xab0ee8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_42681b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x1__0xab0ee8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0ee8_type* @G_0xab0ee8 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_42677d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57c0af___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c0af_type* @G__0x57c0af to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_cmpl__0x2__0xab0ee8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0ee8_type* @G_0xab0ee8 to i64), i64 2)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_4267aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57c0d3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c0d3_type* @G__0x57c0d3 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl_0xab0ee8___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0xab0ee8_type* @G_0xab0ee8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.showboard(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_426816(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57c0ed___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c0ed_type* @G__0x57c0ed to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movq__0x57c10f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c10f_type* @G__0x57c10f to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__0x4___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 4)
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_jmpq_.L_42681b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb54ce4_type* @G_0xb54ce4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_42682e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_426856(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57bf39_type* @G__0x57bf39 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x182___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 386)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57a100_type* @G__0x57a100 to i64))
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




define %struct.Memory* @routine_callq_.worm_reasons(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xab0f28___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__edi__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jle_.L_426887(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xab0f28___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64))
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

define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_callq_.owl_reasons(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi__0xab0f28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_callq_.fuseki(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_4268b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4268dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x194___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 404)
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_callq_.shapes(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57c135___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c135_type* @G__0x57c135 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movsd_0xbc659__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbc659__rip__type* @G_0xbc659__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd__xmm0__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 192
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jne_.L_426927(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42694f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x19a___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 410)
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_callq_.combinations(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57c13c___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c13c_type* @G__0x57c13c to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movsd_0xbc5f0__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbc5f0__rip__type* @G_0xbc5f0__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movsd__xmm0__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 200
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jne_.L_426990(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4269b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x19f___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 415)
  ret %struct.Memory* %11
}











define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x24__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_callq_.review_move_reasons(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_426a1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_4269f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_426a18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57a10c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57a10c_type* @G__0x57a10c to i64))
  ret %struct.Memory* %11
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = fpext float %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_426a1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_426a30(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_426a58(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x1a5___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 421)
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x57c149___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c149_type* @G__0x57c149 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movsd_0xbc4ef__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbc4ef__rip__type* @G_0xbc4ef__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd_0xbc542__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbc542__rip__type* @G_0xbc542__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to double*
  %6 = load double, double* %5, align 1
  %7 = bitcast i8* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = fcmp uno double %6, %8
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %4
  %11 = fadd double %6, %8
  %12 = bitcast double %11 to i64
  %13 = and i64 %12, 9221120237041090560
  %14 = icmp eq i64 %13, 9218868437227405312
  %15 = and i64 %12, 2251799813685247
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %20, %struct.Memory* %0) #21
  br label %39

; <label>:22:                                     ; preds = %4
  %23 = fcmp ogt double %6, %8
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %6, %8
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %6, %8
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %10
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %10 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %10 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %10 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %39

; <label>:39:                                     ; preds = %35, %18
  %40 = phi %struct.Memory* [ %21, %18 ], [ %0, %35 ]
  ret %struct.Memory* %40
}

define %struct.Memory* @routine_ucomisd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0xd8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 216
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jbe_.L_426b6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpl__0x0__0xab0fbc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0fbc_type* @G_0xab0fbc to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_426b6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_0xbc66d__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbc66d__rip__type* @G_0xbc66d__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_callq_.revise_thrashing_dragon(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_426b44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x0__0xab0fb8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0fb8_type* @G_0xab0fb8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_426ada(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.endgame_shapes(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movss_0xab0f14___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xab0f14_type* @G_0xab0f14 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_je_.L_426b3f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_426b18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_426b3a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57c15d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57c15d_type* @G__0x57c15d to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 220
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_426b3f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_426b44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movq__0x57c19b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c19b_type* @G__0x57c19b to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movsd_0xbc403__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbc403__rip__type* @G_0xbc403__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0xe8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 232
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_0xbc456__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbc456__rip__type* @G_0xbc456__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = icmp ne i8 %7, 0
  %10 = select i1 %9, i64 %3, i64 %4
  store i64 %10, i64* %8, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jb_.L_426c98(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_426c98(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_426baa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_426bd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x1bd___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 445)
  ret %struct.Memory* %11
}




























define %struct.Memory* @routine_je_.L_426c37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_426c10(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_426c32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














define %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 236
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_426c37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_426c4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_426c72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x1c1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 449)
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movq__0x57c1c3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c1c3_type* @G__0x57c1c3 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movsd_0xbc2d5__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbc2d5__rip__type* @G_0xbc2d5__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0xf8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 248
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jbe_.L_426d6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jne_.L_426ccf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.revise_semeai(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_426d49(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_je_.L_426d44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_426d1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_426d3f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














define %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 252
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_426d44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_426d49(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movsd_0xbc1fe__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbc1fe__rip__type* @G_0xbc1fe__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 264
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jbe_.L_426e39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_callq_.fill_liberty(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_426e39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_426db6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq___rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movss_0xbc34e__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbc34e__rip__type* @G_0xbc34e__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jne_.L_426dd6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_426df3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57c1cb___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57c1cb_type* @G__0x57c1cb to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__MINUS0x10c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 268
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl___rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.record_top_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_callq_.move_considered(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57c1e5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c1e5_type* @G__0x57c1e5 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movsd_0xbc134__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbc134__rip__type* @G_0xbc134__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x118__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 280
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jbe_.L_427023(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_427023(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0xab0fd4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0fd4_type* @G_0xab0fd4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_426ecd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0xab0fd0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0fd0_type* @G_0xab0fd0 to i64), i64 0)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_cmpl__0x0__0xab0ed0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0ed0_type* @G_0xab0ed0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_427023(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_426ea8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0xbc13b__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbc13b__rip__type* @G_0xbc13b__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cvtss2sd_0xab0f14___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xab0f14_type* @G_0xab0f14 to i64))
  ret %struct.Memory* %11
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4JNBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp eq i8 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %2, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %14 = select i1 %11, i64 %3, i64 %4
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_ja_.L_426ecd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movsd_0xbc11e__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbc11e__rip__type* @G_0xbc11e__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
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






define %struct.Memory* @routine_callq_.aftermath_genmove(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jle_.L_427023(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_426f08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_callq_.is_legal(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_426f24(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_426fa0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x1f2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 498)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57c1f2___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57c1f2_type* @G__0x57c1f2 to i64))
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




define %struct.Memory* @routine_movl___rcx____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 284
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


define %struct.Memory* @routine_movq__rdx__MINUS0x128__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 296
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


define %struct.Memory* @routine_movl_MINUS0x11c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 284
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_idivl__r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R8D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
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




define %struct.Memory* @routine_movl___rcx____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 300
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r9d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %R9D
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


define %struct.Memory* @routine_movq_MINUS0x128__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 296
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x130__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 304
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x12c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 300
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x130__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 304
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movss_0xbc164__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbc164__rip__type* @G_0xbc164__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jne_.L_426fc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_426fdd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57c209___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57c209_type* @G__0x57c209 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 308
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




















define %struct.Memory* @routine_movq__0x57c220___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c220_type* @G__0x57c220 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movsd_0xbbf4a__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbbf4a__rip__type* @G_0xbbf4a__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x140__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 320
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jbe_.L_42719a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_42719a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_42719a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 1)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jle_.L_42719a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_42708f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_je_.L_4270ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_427127(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x202___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 514)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 324
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__rdx__MINUS0x150__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 336
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x144__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 324
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movl__eax__MINUS0x154__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 340
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movq_MINUS0x150__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x158__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 344
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x154__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 340
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x158__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 344
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movss_0xbbfdd__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbbfdd__rip__type* @G_0xbbfdd__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jne_.L_427147(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_427164(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_movl__eax__MINUS0x15c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 348
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}
















define %struct.Memory* @routine_movsd_0xbbdd3__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbbdd3__rip__type* @G_0xbbdd3__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__MINUS0x168__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 360
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jbe_.L_4271e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_4271bf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4271d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57a135___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57a135_type* @G__0x57a135 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x16c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 364
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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


define %struct.Memory* @routine_jmpq_.L_42721f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_4271f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42721a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57a146___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57a146_type* @G__0x57a146 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl__eax__MINUS0x170__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 368
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x0__0xab0ed8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0ed8_type* @G_0xab0ed8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_4272e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57c232___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57c232_type* @G__0x57c232 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0xb4a000___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xb4a000_type* @G_0xb4a000 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__0x57c24c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57c24c_type* @G__0x57c24c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0xb4a004___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xb4a004_type* @G_0xb4a004 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x174__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 372
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x57c266___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57c266_type* @G__0x57c266 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0xb4a008___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xb4a008_type* @G_0xb4a008 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x178__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 376
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x57c280___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57c280_type* @G__0x57c280 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0xb4a00c___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xb4a00c_type* @G_0xb4a00c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x17c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 380
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x57c29a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57c29a_type* @G__0x57c29a to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0xb4a010___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xb4a010_type* @G_0xb4a010 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x180__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 384
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x57c2b4___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57c2b4_type* @G__0x57c2b4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0xb4a014___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xb4a014_type* @G_0xb4a014 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x184__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 388
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x188__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 392
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__0xab0f0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f0c_type* @G_0xab0f0c to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_427426(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57c2ce___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c2ce_type* @G__0x57c2ce to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0xbbc5d__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0xbbc5d__rip__type* @G_0xbbc5d__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 56
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fadd double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addsd_0xab0eb8___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 ptrtoint( %G_0xab0eb8_type* @G_0xab0eb8 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd__xmm0__0xab0eb8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0eb8_type* @G_0xab0eb8 to i64), i8* %8)
  ret %struct.Memory* %11
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i64) #0 {
  %5 = bitcast i8* %2 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %3 to double*
  %8 = load double, double* %7
  %9 = fcmp uno double %6, %8
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %4
  %11 = fadd double %6, %8
  %12 = bitcast double %11 to i64
  %13 = and i64 %12, 9221120237041090560
  %14 = icmp eq i64 %13, 9218868437227405312
  %15 = and i64 %12, 2251799813685247
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %20, %struct.Memory* %0) #21
  br label %39

; <label>:22:                                     ; preds = %4
  %23 = fcmp ogt double %6, %8
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %6, %8
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %6, %8
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %10
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %10 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %10 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %10 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %39

; <label>:39:                                     ; preds = %35, %18
  %40 = phi %struct.Memory* [ %21, %18 ], [ %0, %35 ]
  ret %struct.Memory* %40
}

define %struct.Memory* @routine_ucomisd_0xab0ec0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xab0ec0_type* @G_0xab0ec0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_jbe_.L_42736a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movsd__xmm0__0xab0ec0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0ec0_type* @G_0xab0ec0 to i64), i8* %8)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__ecx__0xab0ec8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0ec8_type* @G_0xab0ec8 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0xafdfb0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xafdfb0_type* @G_0xafdfb0 to i64))
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


define %struct.Memory* @routine_movl__ecx__0xab0ecc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0ecc_type* @G_0xab0ecc to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_427421(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57c2e8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57c2e8_type* @G__0x57c2e8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0xab0ecc___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xab0ecc_type* @G_0xab0ecc to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0xab0ec8___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0xab0ec8_type* @G_0xab0ec8 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__0x57c302___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c302_type* @G__0x57c302 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movsd_0xab0ec0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xab0ec0_type* @G_0xab0ec0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x18c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 396
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x57c312___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c312_type* @G__0x57c312 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movsd_0xab0eb8___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xab0eb8_type* @G_0xab0eb8 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sitofp i32 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl_0xafdfb0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xafdfb0_type* @G_0xafdfb0 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fdiv double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__eax__MINUS0x190__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 400
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x57c338___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c338_type* @G__0x57c338 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x194__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 404
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x198__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 408
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_427426(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_427439(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_427461(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x231___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 561)
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_callq_.test_gray_border(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jge_.L_427474(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42749c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x232___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 562)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57bfef___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57bfef_type* @G__0x57bfef to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 44
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4274b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4274d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x233___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 563)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57c353___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57c353_type* @G__0x57c353 to i64))
  ret %struct.Memory* %11
}









define internal %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSS2SI_32I3MVnI7vec32_tEXadL_ZNS_L18FTruncTowardZero32EfEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = tail call float @llvm.trunc.f32(float %6) #22
  %8 = tail call float @llvm.fabs.f32(float %7) #22
  %9 = fcmp ogt float %8, 0x41E0000000000000
  %10 = fptosi float %7 to i32
  %11 = zext i32 %10 to i64
  %12 = select i1 %9, i64 2147483648, i64 %11
  store i64 %12, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvttss2si_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSS2SI_32I3MVnI7vec32_tEXadL_ZNS_L18FTruncTowardZero32EfEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addq__0x1a0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 416)
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

