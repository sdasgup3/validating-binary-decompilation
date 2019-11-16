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

declare %struct.Memory* @sub_40d280.update_liberties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x99da08_type = type <{ [4 x i8] }>
@G_0x99da08= global %G_0x99da08_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xa0e710_type = type <{ [8 x i8] }>
@G_0xa0e710= global %G_0xa0e710_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xa7f430_type = type <{ [8 x i8] }>
@G__0xa7f430= global %G__0xa7f430_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xaaba30_type = type <{ [8 x i8] }>
@G__0xaaba30= global %G__0xaaba30_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @extend_neighbor_string(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .extend_neighbor_string:	 RIP: 40b1b0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 40b1b0	 Bytes: 1
  %loadMem_40b1b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1b0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1b0)
  store %struct.Memory* %call_40b1b0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 40b1b1	 Bytes: 3
  %loadMem_40b1b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1b1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1b1)
  store %struct.Memory* %call_40b1b1, %struct.Memory** %MEMORY

  ; Code: subq $0x30, %rsp	 RIP: 40b1b4	 Bytes: 4
  %loadMem_40b1b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1b4 = call %struct.Memory* @routine_subq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1b4)
  store %struct.Memory* %call_40b1b4, %struct.Memory** %MEMORY

  ; Code: movq $0xaaba30, %rax	 RIP: 40b1b8	 Bytes: 10
  %loadMem_40b1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1b8 = call %struct.Memory* @routine_movq__0xaaba30___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1b8)
  store %struct.Memory* %call_40b1b8, %struct.Memory** %MEMORY

  ; Code: movq $0xa7f430, %rcx	 RIP: 40b1c2	 Bytes: 10
  %loadMem_40b1c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1c2 = call %struct.Memory* @routine_movq__0xa7f430___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1c2)
  store %struct.Memory* %call_40b1c2, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %edx	 RIP: 40b1cc	 Bytes: 5
  %loadMem_40b1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1cc = call %struct.Memory* @routine_movl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1cc)
  store %struct.Memory* %call_40b1cc, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 40b1d1	 Bytes: 3
  %loadMem_40b1d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1d1 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1d1)
  store %struct.Memory* %call_40b1d1, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 40b1d4	 Bytes: 3
  %loadMem_40b1d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1d4 = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1d4)
  store %struct.Memory* %call_40b1d4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 40b1d7	 Bytes: 7
  %loadMem_40b1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1d7 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1d7)
  store %struct.Memory* %call_40b1d7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %r8	 RIP: 40b1de	 Bytes: 4
  %loadMem_40b1de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1de = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1de)
  store %struct.Memory* %call_40b1de, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%r8,1), %esi	 RIP: 40b1e2	 Bytes: 9
  %loadMem_40b1e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1e2 = call %struct.Memory* @routine_movzbl_0xb89e60___r8_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1e2)
  store %struct.Memory* %call_40b1e2, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x14(%rbp)	 RIP: 40b1eb	 Bytes: 3
  %loadMem_40b1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1eb = call %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1eb)
  store %struct.Memory* %call_40b1eb, %struct.Memory** %MEMORY

  ; Code: subl -0x14(%rbp), %edx	 RIP: 40b1ee	 Bytes: 3
  %loadMem_40b1ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1ee = call %struct.Memory* @routine_subl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1ee)
  store %struct.Memory* %call_40b1ee, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x18(%rbp)	 RIP: 40b1f1	 Bytes: 3
  %loadMem_40b1f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1f1 = call %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1f1)
  store %struct.Memory* %call_40b1f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %r8	 RIP: 40b1f4	 Bytes: 4
  %loadMem_40b1f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1f4 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1f4)
  store %struct.Memory* %call_40b1f4, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %r8, %r8	 RIP: 40b1f8	 Bytes: 7
  %loadMem_40b1f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1f8 = call %struct.Memory* @routine_imulq__0x2e8___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1f8)
  store %struct.Memory* %call_40b1f8, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rcx	 RIP: 40b1ff	 Bytes: 3
  %loadMem_40b1ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b1ff = call %struct.Memory* @routine_addq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b1ff)
  store %struct.Memory* %call_40b1ff, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rcx), %edx	 RIP: 40b202	 Bytes: 3
  %loadMem_40b202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b202 = call %struct.Memory* @routine_movl_0x8__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b202)
  store %struct.Memory* %call_40b202, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1c(%rbp)	 RIP: 40b205	 Bytes: 3
  %loadMem_40b205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b205 = call %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b205)
  store %struct.Memory* %call_40b205, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 40b208	 Bytes: 4
  %loadMem_40b208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b208 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b208)
  store %struct.Memory* %call_40b208, %struct.Memory** %MEMORY

  ; Code: movl 0xaaba30(,%rcx,4), %edx	 RIP: 40b20c	 Bytes: 7
  %loadMem_40b20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b20c = call %struct.Memory* @routine_movl_0xaaba30___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b20c)
  store %struct.Memory* %call_40b20c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 40b213	 Bytes: 4
  %loadMem_40b213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b213 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b213)
  store %struct.Memory* %call_40b213, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xaaba30(,%rcx,4)	 RIP: 40b217	 Bytes: 7
  %loadMem_40b217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b217 = call %struct.Memory* @routine_movl__edx__0xaaba30___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b217)
  store %struct.Memory* %call_40b217, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 40b21e	 Bytes: 4
  %loadMem_40b21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b21e = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b21e)
  store %struct.Memory* %call_40b21e, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 40b222	 Bytes: 4
  %loadMem_40b222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b222 = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b222)
  store %struct.Memory* %call_40b222, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40b226	 Bytes: 3
  %loadMem_40b226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b226 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b226)
  store %struct.Memory* %call_40b226, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rcx	 RIP: 40b229	 Bytes: 8
  %loadMem_40b229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b229 = call %struct.Memory* @routine_movq_0xa0e710___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b229)
  store %struct.Memory* %call_40b229, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 40b231	 Bytes: 3
  %loadMem_40b231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b231 = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b231)
  store %struct.Memory* %call_40b231, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 40b234	 Bytes: 4
  %loadMem_40b234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b234 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b234)
  store %struct.Memory* %call_40b234, %struct.Memory** %MEMORY

  ; Code: movl 0xaaba30(,%rax,4), %edx	 RIP: 40b238	 Bytes: 7
  %loadMem_40b238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b238 = call %struct.Memory* @routine_movl_0xaaba30___rax_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b238)
  store %struct.Memory* %call_40b238, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rax	 RIP: 40b23f	 Bytes: 8
  %loadMem_40b23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b23f = call %struct.Memory* @routine_movq_0xa0e710___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b23f)
  store %struct.Memory* %call_40b23f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 40b247	 Bytes: 3
  %loadMem_40b247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b247 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b247)
  store %struct.Memory* %call_40b247, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rcx	 RIP: 40b24a	 Bytes: 4
  %loadMem_40b24a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b24a = call %struct.Memory* @routine_addq__0x10___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b24a)
  store %struct.Memory* %call_40b24a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0xa0e710	 RIP: 40b24e	 Bytes: 8
  %loadMem_40b24e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b24e = call %struct.Memory* @routine_movq__rcx__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b24e)
  store %struct.Memory* %call_40b24e, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8(%rax)	 RIP: 40b256	 Bytes: 3
  %loadMem_40b256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b256 = call %struct.Memory* @routine_movl__edx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b256)
  store %struct.Memory* %call_40b256, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 40b259	 Bytes: 3
  %loadMem_40b259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b259 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b259)
  store %struct.Memory* %call_40b259, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 40b25c	 Bytes: 4
  %loadMem_40b25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b25c = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b25c)
  store %struct.Memory* %call_40b25c, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xaaba30(,%rax,4)	 RIP: 40b260	 Bytes: 7
  %loadMem_40b260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b260 = call %struct.Memory* @routine_movl__edx__0xaaba30___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b260)
  store %struct.Memory* %call_40b260, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 40b267	 Bytes: 3
  %loadMem_40b267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b267 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b267)
  store %struct.Memory* %call_40b267, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1c(%rbp), %edx	 RIP: 40b26a	 Bytes: 3
  %loadMem_40b26a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b26a = call %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b26a)
  store %struct.Memory* %call_40b26a, %struct.Memory** %MEMORY

  ; Code: jge .L_40b2df	 RIP: 40b26d	 Bytes: 6
  %loadMem_40b26d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b26d = call %struct.Memory* @routine_jge_.L_40b2df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b26d, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_40b26d, %struct.Memory** %MEMORY

  %loadBr_40b26d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b26d = icmp eq i8 %loadBr_40b26d, 1
  br i1 %cmpBr_40b26d, label %block_.L_40b2df, label %block_40b273

block_40b273:
  ; Code: movq $0xa7f430, %rax	 RIP: 40b273	 Bytes: 10
  %loadMem_40b273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b273 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b273)
  store %struct.Memory* %call_40b273, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40b27d	 Bytes: 4
  %loadMem_40b27d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b27d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b27d)
  store %struct.Memory* %call_40b27d, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40b281	 Bytes: 7
  %loadMem_40b281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b281 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b281)
  store %struct.Memory* %call_40b281, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 40b288	 Bytes: 3
  %loadMem_40b288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b288 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b288)
  store %struct.Memory* %call_40b288, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 40b28b	 Bytes: 3
  %loadMem_40b28b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b28b = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b28b)
  store %struct.Memory* %call_40b28b, %struct.Memory** %MEMORY

  ; Code: addq $0x8, %rdx	 RIP: 40b28e	 Bytes: 4
  %loadMem_40b28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b28e = call %struct.Memory* @routine_addq__0x8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b28e)
  store %struct.Memory* %call_40b28e, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rcx	 RIP: 40b292	 Bytes: 8
  %loadMem_40b292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b292 = call %struct.Memory* @routine_movq_0xa0e710___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b292)
  store %struct.Memory* %call_40b292, %struct.Memory** %MEMORY

  ; Code: movq %rdx, (%rcx)	 RIP: 40b29a	 Bytes: 3
  %loadMem_40b29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b29a = call %struct.Memory* @routine_movq__rdx____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b29a)
  store %struct.Memory* %call_40b29a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40b29d	 Bytes: 4
  %loadMem_40b29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b29d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b29d)
  store %struct.Memory* %call_40b29d, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40b2a1	 Bytes: 7
  %loadMem_40b2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2a1 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2a1)
  store %struct.Memory* %call_40b2a1, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 40b2a8	 Bytes: 3
  %loadMem_40b2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2a8 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2a8)
  store %struct.Memory* %call_40b2a8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 40b2ab	 Bytes: 3
  %loadMem_40b2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2ab = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2ab)
  store %struct.Memory* %call_40b2ab, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rdx), %esi	 RIP: 40b2ae	 Bytes: 3
  %loadMem_40b2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2ae = call %struct.Memory* @routine_movl_0x8__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2ae)
  store %struct.Memory* %call_40b2ae, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rcx	 RIP: 40b2b1	 Bytes: 8
  %loadMem_40b2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2b1 = call %struct.Memory* @routine_movq_0xa0e710___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2b1)
  store %struct.Memory* %call_40b2b1, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 40b2b9	 Bytes: 3
  %loadMem_40b2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2b9 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2b9)
  store %struct.Memory* %call_40b2b9, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rdx	 RIP: 40b2bc	 Bytes: 4
  %loadMem_40b2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2bc = call %struct.Memory* @routine_addq__0x10___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2bc)
  store %struct.Memory* %call_40b2bc, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0xa0e710	 RIP: 40b2c0	 Bytes: 8
  %loadMem_40b2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2c0 = call %struct.Memory* @routine_movq__rdx__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2c0)
  store %struct.Memory* %call_40b2c0, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8(%rcx)	 RIP: 40b2c8	 Bytes: 3
  %loadMem_40b2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2c8 = call %struct.Memory* @routine_movl__esi__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2c8)
  store %struct.Memory* %call_40b2c8, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 40b2cb	 Bytes: 3
  %loadMem_40b2cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2cb = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2cb)
  store %struct.Memory* %call_40b2cb, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40b2ce	 Bytes: 4
  %loadMem_40b2ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2ce = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2ce)
  store %struct.Memory* %call_40b2ce, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40b2d2	 Bytes: 7
  %loadMem_40b2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2d2 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2d2)
  store %struct.Memory* %call_40b2d2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40b2d9	 Bytes: 3
  %loadMem_40b2d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2d9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2d9)
  store %struct.Memory* %call_40b2d9, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8(%rax)	 RIP: 40b2dc	 Bytes: 3
  %loadMem_40b2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2dc = call %struct.Memory* @routine_movl__esi__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2dc)
  store %struct.Memory* %call_40b2dc, %struct.Memory** %MEMORY

  ; Code: .L_40b2df:	 RIP: 40b2df	 Bytes: 0
  br label %block_.L_40b2df
block_.L_40b2df:

  ; Code: movq $0xa7f430, %rax	 RIP: 40b2df	 Bytes: 10
  %loadMem_40b2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2df = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2df)
  store %struct.Memory* %call_40b2df, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 40b2e9	 Bytes: 3
  %loadMem_40b2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2e9 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2e9)
  store %struct.Memory* %call_40b2e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40b2ec	 Bytes: 4
  %loadMem_40b2ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2ec = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2ec)
  store %struct.Memory* %call_40b2ec, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xaab3f0(,%rdx,4)	 RIP: 40b2f0	 Bytes: 7
  %loadMem_40b2f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2f0 = call %struct.Memory* @routine_movl__ecx__0xaab3f0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2f0)
  store %struct.Memory* %call_40b2f0, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b2f7	 Bytes: 4
  %loadMem_40b2f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2f7 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2f7)
  store %struct.Memory* %call_40b2f7, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b2fb	 Bytes: 7
  %loadMem_40b2fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b2fb = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b2fb)
  store %struct.Memory* %call_40b2fb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b302	 Bytes: 3
  %loadMem_40b302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b302 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b302)
  store %struct.Memory* %call_40b302, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b305	 Bytes: 3
  %loadMem_40b305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b305 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b305)
  store %struct.Memory* %call_40b305, %struct.Memory** %MEMORY

  ; Code: addq $0x4, %rsi	 RIP: 40b308	 Bytes: 4
  %loadMem_40b308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b308 = call %struct.Memory* @routine_addq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b308)
  store %struct.Memory* %call_40b308, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40b30c	 Bytes: 8
  %loadMem_40b30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b30c = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b30c)
  store %struct.Memory* %call_40b30c, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40b314	 Bytes: 3
  %loadMem_40b314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b314 = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b314)
  store %struct.Memory* %call_40b314, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b317	 Bytes: 4
  %loadMem_40b317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b317 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b317)
  store %struct.Memory* %call_40b317, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b31b	 Bytes: 7
  %loadMem_40b31b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b31b = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b31b)
  store %struct.Memory* %call_40b31b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b322	 Bytes: 3
  %loadMem_40b322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b322 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b322)
  store %struct.Memory* %call_40b322, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b325	 Bytes: 3
  %loadMem_40b325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b325 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b325)
  store %struct.Memory* %call_40b325, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rsi), %ecx	 RIP: 40b328	 Bytes: 3
  %loadMem_40b328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b328 = call %struct.Memory* @routine_movl_0x4__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b328)
  store %struct.Memory* %call_40b328, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40b32b	 Bytes: 8
  %loadMem_40b32b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b32b = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b32b)
  store %struct.Memory* %call_40b32b, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40b333	 Bytes: 3
  %loadMem_40b333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b333 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b333)
  store %struct.Memory* %call_40b333, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40b336	 Bytes: 4
  %loadMem_40b336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b336 = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b336)
  store %struct.Memory* %call_40b336, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40b33a	 Bytes: 8
  %loadMem_40b33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b33a = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b33a)
  store %struct.Memory* %call_40b33a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40b342	 Bytes: 3
  %loadMem_40b342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b342 = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b342)
  store %struct.Memory* %call_40b342, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b345	 Bytes: 4
  %loadMem_40b345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b345 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b345)
  store %struct.Memory* %call_40b345, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b349	 Bytes: 7
  %loadMem_40b349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b349 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b349)
  store %struct.Memory* %call_40b349, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b350	 Bytes: 3
  %loadMem_40b350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b350 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b350)
  store %struct.Memory* %call_40b350, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b353	 Bytes: 3
  %loadMem_40b353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b353 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b353)
  store %struct.Memory* %call_40b353, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rsi), %ecx	 RIP: 40b356	 Bytes: 3
  %loadMem_40b356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b356 = call %struct.Memory* @routine_movl_0x4__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b356)
  store %struct.Memory* %call_40b356, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40b359	 Bytes: 3
  %loadMem_40b359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b359 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b359)
  store %struct.Memory* %call_40b359, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rsi)	 RIP: 40b35c	 Bytes: 3
  %loadMem_40b35c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b35c = call %struct.Memory* @routine_movl__ecx__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b35c)
  store %struct.Memory* %call_40b35c, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b35f	 Bytes: 4
  %loadMem_40b35f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b35f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b35f)
  store %struct.Memory* %call_40b35f, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b363	 Bytes: 7
  %loadMem_40b363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b363 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b363)
  store %struct.Memory* %call_40b363, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40b36a	 Bytes: 3
  %loadMem_40b36a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b36a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b36a)
  store %struct.Memory* %call_40b36a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 40b36d	 Bytes: 4
  %loadMem_40b36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b36d = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b36d)
  store %struct.Memory* %call_40b36d, %struct.Memory** %MEMORY

  ; Code: jle .L_40b38b	 RIP: 40b371	 Bytes: 6
  %loadMem_40b371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b371 = call %struct.Memory* @routine_jle_.L_40b38b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b371, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_40b371, %struct.Memory** %MEMORY

  %loadBr_40b371 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b371 = icmp eq i8 %loadBr_40b371, 1
  br i1 %cmpBr_40b371, label %block_.L_40b38b, label %block_40b377

block_40b377:
  ; Code: movl -0x8(%rbp), %edi	 RIP: 40b377	 Bytes: 3
  %loadMem_40b377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b377 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b377)
  store %struct.Memory* %call_40b377, %struct.Memory** %MEMORY

  ; Code: callq .update_liberties	 RIP: 40b37a	 Bytes: 5
  %loadMem1_40b37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40b37a = call %struct.Memory* @routine_callq_.update_liberties(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40b37a, i64 7942, i64 5, i64 5)
  store %struct.Memory* %call1_40b37a, %struct.Memory** %MEMORY

  %loadMem2_40b37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40b37a = load i64, i64* %3
  %call2_40b37a = call %struct.Memory* @sub_40d280.update_liberties(%struct.State* %0, i64  %loadPC_40b37a, %struct.Memory* %loadMem2_40b37a)
  store %struct.Memory* %call2_40b37a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x10(%rbp)	 RIP: 40b37f	 Bytes: 7
  %loadMem_40b37f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b37f = call %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b37f)
  store %struct.Memory* %call_40b37f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40b396	 RIP: 40b386	 Bytes: 5
  %loadMem_40b386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b386 = call %struct.Memory* @routine_jmpq_.L_40b396(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b386, i64 16, i64 5)
  store %struct.Memory* %call_40b386, %struct.Memory** %MEMORY

  br label %block_.L_40b396

  ; Code: .L_40b38b:	 RIP: 40b38b	 Bytes: 0
block_.L_40b38b:

  ; Code: movl -0x8(%rbp), %edi	 RIP: 40b38b	 Bytes: 3
  %loadMem_40b38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b38b = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b38b)
  store %struct.Memory* %call_40b38b, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 40b38e	 Bytes: 3
  %loadMem_40b38e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b38e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b38e)
  store %struct.Memory* %call_40b38e, %struct.Memory** %MEMORY

  ; Code: callq .remove_liberty	 RIP: 40b391	 Bytes: 5
  %loadMem1_40b391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40b391 = call %struct.Memory* @routine_callq_.remove_liberty(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40b391, i64 -3281, i64 5, i64 5)
  store %struct.Memory* %call1_40b391, %struct.Memory** %MEMORY

  %loadMem2_40b391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40b391 = load i64, i64* %3
  %call2_40b391 = call %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* %0, i64  %loadPC_40b391, %struct.Memory* %loadMem2_40b391)
  store %struct.Memory* %call2_40b391, %struct.Memory** %MEMORY

  ; Code: .L_40b396:	 RIP: 40b396	 Bytes: 0
  br label %block_.L_40b396
block_.L_40b396:

  ; Code: movl 0x99da08, %eax	 RIP: 40b396	 Bytes: 7
  %loadMem_40b396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b396 = call %struct.Memory* @routine_movl_0x99da08___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b396)
  store %struct.Memory* %call_40b396, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40b39d	 Bytes: 3
  %loadMem_40b39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b39d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b39d)
  store %struct.Memory* %call_40b39d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x99da08	 RIP: 40b3a0	 Bytes: 7
  %loadMem_40b3a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3a0 = call %struct.Memory* @routine_movl__eax__0x99da08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3a0)
  store %struct.Memory* %call_40b3a0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 40b3a7	 Bytes: 7
  %loadMem_40b3a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3a7 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3a7)
  store %struct.Memory* %call_40b3a7, %struct.Memory** %MEMORY

  ; Code: .L_40b3ae:	 RIP: 40b3ae	 Bytes: 0
  br label %block_.L_40b3ae
block_.L_40b3ae:

  ; Code: movq $0xa7f430, %rax	 RIP: 40b3ae	 Bytes: 10
  %loadMem_40b3ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3ae = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3ae)
  store %struct.Memory* %call_40b3ae, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 40b3b8	 Bytes: 3
  %loadMem_40b3b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3b8 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3b8)
  store %struct.Memory* %call_40b3b8, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b3bb	 Bytes: 4
  %loadMem_40b3bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3bb = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3bb)
  store %struct.Memory* %call_40b3bb, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b3bf	 Bytes: 7
  %loadMem_40b3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3bf = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3bf)
  store %struct.Memory* %call_40b3bf, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40b3c6	 Bytes: 3
  %loadMem_40b3c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3c6 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3c6)
  store %struct.Memory* %call_40b3c6, %struct.Memory** %MEMORY

  ; Code: cmpl 0x60(%rax), %ecx	 RIP: 40b3c9	 Bytes: 3
  %loadMem_40b3c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3c9 = call %struct.Memory* @routine_cmpl_0x60__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3c9)
  store %struct.Memory* %call_40b3c9, %struct.Memory** %MEMORY

  ; Code: jge .L_40b41b	 RIP: 40b3cc	 Bytes: 6
  %loadMem_40b3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3cc = call %struct.Memory* @routine_jge_.L_40b41b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3cc, i8* %BRANCH_TAKEN, i64 79, i64 6, i64 6)
  store %struct.Memory* %call_40b3cc, %struct.Memory** %MEMORY

  %loadBr_40b3cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b3cc = icmp eq i8 %loadBr_40b3cc, 1
  br i1 %cmpBr_40b3cc, label %block_.L_40b41b, label %block_40b3d2

block_40b3d2:
  ; Code: movq $0xa7f430, %rax	 RIP: 40b3d2	 Bytes: 10
  %loadMem_40b3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3d2 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3d2)
  store %struct.Memory* %call_40b3d2, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 40b3dc	 Bytes: 7
  %loadMem_40b3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3dc = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3dc)
  store %struct.Memory* %call_40b3dc, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b3e3	 Bytes: 4
  %loadMem_40b3e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3e3 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3e3)
  store %struct.Memory* %call_40b3e3, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b3e7	 Bytes: 7
  %loadMem_40b3e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3e7 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3e7)
  store %struct.Memory* %call_40b3e7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b3ee	 Bytes: 3
  %loadMem_40b3ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3ee = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3ee)
  store %struct.Memory* %call_40b3ee, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b3f1	 Bytes: 3
  %loadMem_40b3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3f1 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3f1)
  store %struct.Memory* %call_40b3f1, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 40b3f4	 Bytes: 4
  %loadMem_40b3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3f4 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3f4)
  store %struct.Memory* %call_40b3f4, %struct.Memory** %MEMORY

  ; Code: movslq 0x64(%rsi,%rdx,4), %rdx	 RIP: 40b3f8	 Bytes: 5
  %loadMem_40b3f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3f8 = call %struct.Memory* @routine_movslq_0x64__rsi__rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3f8)
  store %struct.Memory* %call_40b3f8, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b3fd	 Bytes: 7
  %loadMem_40b3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b3fd = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b3fd)
  store %struct.Memory* %call_40b3fd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40b404	 Bytes: 3
  %loadMem_40b404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b404 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b404)
  store %struct.Memory* %call_40b404, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 40b407	 Bytes: 6
  %loadMem_40b407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b407 = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b407)
  store %struct.Memory* %call_40b407, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 40b40d	 Bytes: 3
  %loadMem_40b40d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b40d = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b40d)
  store %struct.Memory* %call_40b40d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40b410	 Bytes: 3
  %loadMem_40b410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b410 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b410)
  store %struct.Memory* %call_40b410, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 40b413	 Bytes: 3
  %loadMem_40b413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b413 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b413)
  store %struct.Memory* %call_40b413, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40b3ae	 RIP: 40b416	 Bytes: 5
  %loadMem_40b416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b416 = call %struct.Memory* @routine_jmpq_.L_40b3ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b416, i64 -104, i64 5)
  store %struct.Memory* %call_40b416, %struct.Memory** %MEMORY

  br label %block_.L_40b3ae

  ; Code: .L_40b41b:	 RIP: 40b41b	 Bytes: 0
block_.L_40b41b:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b41b	 Bytes: 3
  %loadMem_40b41b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b41b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b41b)
  store %struct.Memory* %call_40b41b, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40b41e	 Bytes: 3
  %loadMem_40b41e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b41e = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b41e)
  store %struct.Memory* %call_40b41e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b421	 Bytes: 3
  %loadMem_40b421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b421 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b421)
  store %struct.Memory* %call_40b421, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40b424	 Bytes: 8
  %loadMem_40b424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b424 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b424)
  store %struct.Memory* %call_40b424, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 40b42c	 Bytes: 3
  %loadMem_40b42c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b42c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b42c)
  store %struct.Memory* %call_40b42c, %struct.Memory** %MEMORY

  ; Code: jne .L_40b573	 RIP: 40b42f	 Bytes: 6
  %loadMem_40b42f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b42f = call %struct.Memory* @routine_jne_.L_40b573(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b42f, i8* %BRANCH_TAKEN, i64 324, i64 6, i64 6)
  store %struct.Memory* %call_40b42f, %struct.Memory** %MEMORY

  %loadBr_40b42f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b42f = icmp eq i8 %loadBr_40b42f, 1
  br i1 %cmpBr_40b42f, label %block_.L_40b573, label %block_40b435

block_40b435:
  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 40b435	 Bytes: 4
  %loadMem_40b435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b435 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b435)
  store %struct.Memory* %call_40b435, %struct.Memory** %MEMORY

  ; Code: jne .L_40b56e	 RIP: 40b439	 Bytes: 6
  %loadMem_40b439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b439 = call %struct.Memory* @routine_jne_.L_40b56e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b439, i8* %BRANCH_TAKEN, i64 309, i64 6, i64 6)
  store %struct.Memory* %call_40b439, %struct.Memory** %MEMORY

  %loadBr_40b439 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b439 = icmp eq i8 %loadBr_40b439, 1
  br i1 %cmpBr_40b439, label %block_.L_40b56e, label %block_40b43f

block_40b43f:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b43f	 Bytes: 3
  %loadMem_40b43f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b43f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b43f)
  store %struct.Memory* %call_40b43f, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40b442	 Bytes: 3
  %loadMem_40b442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b442 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b442)
  store %struct.Memory* %call_40b442, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40b445	 Bytes: 3
  %loadMem_40b445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b445 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b445)
  store %struct.Memory* %call_40b445, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b448	 Bytes: 3
  %loadMem_40b448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b448 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b448)
  store %struct.Memory* %call_40b448, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40b44b	 Bytes: 8
  %loadMem_40b44b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b44b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b44b)
  store %struct.Memory* %call_40b44b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40b453	 Bytes: 3
  %loadMem_40b453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b453 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b453)
  store %struct.Memory* %call_40b453, %struct.Memory** %MEMORY

  ; Code: jne .L_40b478	 RIP: 40b456	 Bytes: 6
  %loadMem_40b456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b456 = call %struct.Memory* @routine_jne_.L_40b478(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b456, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_40b456, %struct.Memory** %MEMORY

  %loadBr_40b456 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b456 = icmp eq i8 %loadBr_40b456, 1
  br i1 %cmpBr_40b456, label %block_.L_40b478, label %block_40b45c

block_40b45c:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b45c	 Bytes: 3
  %loadMem_40b45c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b45c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b45c)
  store %struct.Memory* %call_40b45c, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40b45f	 Bytes: 3
  %loadMem_40b45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b45f = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b45f)
  store %struct.Memory* %call_40b45f, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40b462	 Bytes: 3
  %loadMem_40b462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b462 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b462)
  store %struct.Memory* %call_40b462, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b465	 Bytes: 3
  %loadMem_40b465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b465 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b465)
  store %struct.Memory* %call_40b465, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40b468	 Bytes: 7
  %loadMem_40b468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b468 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b468)
  store %struct.Memory* %call_40b468, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 40b46f	 Bytes: 3
  %loadMem_40b46f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b46f = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b46f)
  store %struct.Memory* %call_40b46f, %struct.Memory** %MEMORY

  ; Code: je .L_40b56e	 RIP: 40b472	 Bytes: 6
  %loadMem_40b472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b472 = call %struct.Memory* @routine_je_.L_40b56e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b472, i8* %BRANCH_TAKEN, i64 252, i64 6, i64 6)
  store %struct.Memory* %call_40b472, %struct.Memory** %MEMORY

  %loadBr_40b472 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b472 = icmp eq i8 %loadBr_40b472, 1
  br i1 %cmpBr_40b472, label %block_.L_40b56e, label %block_.L_40b478

  ; Code: .L_40b478:	 RIP: 40b478	 Bytes: 0
block_.L_40b478:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b478	 Bytes: 3
  %loadMem_40b478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b478 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b478)
  store %struct.Memory* %call_40b478, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40b47b	 Bytes: 3
  %loadMem_40b47b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b47b = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b47b)
  store %struct.Memory* %call_40b47b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40b47e	 Bytes: 3
  %loadMem_40b47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b47e = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b47e)
  store %struct.Memory* %call_40b47e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b481	 Bytes: 3
  %loadMem_40b481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b481 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b481)
  store %struct.Memory* %call_40b481, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40b484	 Bytes: 8
  %loadMem_40b484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b484 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b484)
  store %struct.Memory* %call_40b484, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40b48c	 Bytes: 3
  %loadMem_40b48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b48c = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b48c)
  store %struct.Memory* %call_40b48c, %struct.Memory** %MEMORY

  ; Code: jne .L_40b4b1	 RIP: 40b48f	 Bytes: 6
  %loadMem_40b48f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b48f = call %struct.Memory* @routine_jne_.L_40b4b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b48f, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_40b48f, %struct.Memory** %MEMORY

  %loadBr_40b48f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b48f = icmp eq i8 %loadBr_40b48f, 1
  br i1 %cmpBr_40b48f, label %block_.L_40b4b1, label %block_40b495

block_40b495:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b495	 Bytes: 3
  %loadMem_40b495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b495 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b495)
  store %struct.Memory* %call_40b495, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40b498	 Bytes: 3
  %loadMem_40b498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b498 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b498)
  store %struct.Memory* %call_40b498, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40b49b	 Bytes: 3
  %loadMem_40b49b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b49b = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b49b)
  store %struct.Memory* %call_40b49b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b49e	 Bytes: 3
  %loadMem_40b49e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b49e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b49e)
  store %struct.Memory* %call_40b49e, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40b4a1	 Bytes: 7
  %loadMem_40b4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4a1 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4a1)
  store %struct.Memory* %call_40b4a1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 40b4a8	 Bytes: 3
  %loadMem_40b4a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4a8 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4a8)
  store %struct.Memory* %call_40b4a8, %struct.Memory** %MEMORY

  ; Code: je .L_40b56e	 RIP: 40b4ab	 Bytes: 6
  %loadMem_40b4ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4ab = call %struct.Memory* @routine_je_.L_40b56e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4ab, i8* %BRANCH_TAKEN, i64 195, i64 6, i64 6)
  store %struct.Memory* %call_40b4ab, %struct.Memory** %MEMORY

  %loadBr_40b4ab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b4ab = icmp eq i8 %loadBr_40b4ab, 1
  br i1 %cmpBr_40b4ab, label %block_.L_40b56e, label %block_.L_40b4b1

  ; Code: .L_40b4b1:	 RIP: 40b4b1	 Bytes: 0
block_.L_40b4b1:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b4b1	 Bytes: 3
  %loadMem_40b4b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4b1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4b1)
  store %struct.Memory* %call_40b4b1, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40b4b4	 Bytes: 3
  %loadMem_40b4b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4b4 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4b4)
  store %struct.Memory* %call_40b4b4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40b4b7	 Bytes: 3
  %loadMem_40b4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4b7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4b7)
  store %struct.Memory* %call_40b4b7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b4ba	 Bytes: 3
  %loadMem_40b4ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4ba = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4ba)
  store %struct.Memory* %call_40b4ba, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40b4bd	 Bytes: 8
  %loadMem_40b4bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4bd = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4bd)
  store %struct.Memory* %call_40b4bd, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40b4c5	 Bytes: 3
  %loadMem_40b4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4c5 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4c5)
  store %struct.Memory* %call_40b4c5, %struct.Memory** %MEMORY

  ; Code: jne .L_40b4ea	 RIP: 40b4c8	 Bytes: 6
  %loadMem_40b4c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4c8 = call %struct.Memory* @routine_jne_.L_40b4ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4c8, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_40b4c8, %struct.Memory** %MEMORY

  %loadBr_40b4c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b4c8 = icmp eq i8 %loadBr_40b4c8, 1
  br i1 %cmpBr_40b4c8, label %block_.L_40b4ea, label %block_40b4ce

block_40b4ce:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b4ce	 Bytes: 3
  %loadMem_40b4ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4ce = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4ce)
  store %struct.Memory* %call_40b4ce, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40b4d1	 Bytes: 3
  %loadMem_40b4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4d1 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4d1)
  store %struct.Memory* %call_40b4d1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40b4d4	 Bytes: 3
  %loadMem_40b4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4d4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4d4)
  store %struct.Memory* %call_40b4d4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b4d7	 Bytes: 3
  %loadMem_40b4d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4d7 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4d7)
  store %struct.Memory* %call_40b4d7, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40b4da	 Bytes: 7
  %loadMem_40b4da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4da = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4da)
  store %struct.Memory* %call_40b4da, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 40b4e1	 Bytes: 3
  %loadMem_40b4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4e1 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4e1)
  store %struct.Memory* %call_40b4e1, %struct.Memory** %MEMORY

  ; Code: je .L_40b56e	 RIP: 40b4e4	 Bytes: 6
  %loadMem_40b4e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4e4 = call %struct.Memory* @routine_je_.L_40b56e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4e4, i8* %BRANCH_TAKEN, i64 138, i64 6, i64 6)
  store %struct.Memory* %call_40b4e4, %struct.Memory** %MEMORY

  %loadBr_40b4e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b4e4 = icmp eq i8 %loadBr_40b4e4, 1
  br i1 %cmpBr_40b4e4, label %block_.L_40b56e, label %block_.L_40b4ea

  ; Code: .L_40b4ea:	 RIP: 40b4ea	 Bytes: 0
block_.L_40b4ea:

  ; Code: jmpq .L_40b4ef	 RIP: 40b4ea	 Bytes: 5
  %loadMem_40b4ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4ea = call %struct.Memory* @routine_jmpq_.L_40b4ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4ea, i64 5, i64 5)
  store %struct.Memory* %call_40b4ea, %struct.Memory** %MEMORY

  br label %block_.L_40b4ef

  ; Code: .L_40b4ef:	 RIP: 40b4ef	 Bytes: 0
block_.L_40b4ef:

  ; Code: movq $0xa7f430, %rax	 RIP: 40b4ef	 Bytes: 10
  %loadMem_40b4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4ef = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4ef)
  store %struct.Memory* %call_40b4ef, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40b4f9	 Bytes: 4
  %loadMem_40b4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4f9 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4f9)
  store %struct.Memory* %call_40b4f9, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40b4fd	 Bytes: 7
  %loadMem_40b4fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b4fd = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b4fd)
  store %struct.Memory* %call_40b4fd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40b504	 Bytes: 3
  %loadMem_40b504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b504 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b504)
  store %struct.Memory* %call_40b504, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 40b507	 Bytes: 4
  %loadMem_40b507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b507 = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b507)
  store %struct.Memory* %call_40b507, %struct.Memory** %MEMORY

  ; Code: jge .L_40b548	 RIP: 40b50b	 Bytes: 6
  %loadMem_40b50b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b50b = call %struct.Memory* @routine_jge_.L_40b548(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b50b, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_40b50b, %struct.Memory** %MEMORY

  %loadBr_40b50b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b50b = icmp eq i8 %loadBr_40b50b, 1
  br i1 %cmpBr_40b50b, label %block_.L_40b548, label %block_40b511

block_40b511:
  ; Code: movq $0xa7f430, %rax	 RIP: 40b511	 Bytes: 10
  %loadMem_40b511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b511 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b511)
  store %struct.Memory* %call_40b511, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40b51b	 Bytes: 3
  %loadMem_40b51b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b51b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b51b)
  store %struct.Memory* %call_40b51b, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40b51e	 Bytes: 3
  %loadMem_40b51e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b51e = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b51e)
  store %struct.Memory* %call_40b51e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b521	 Bytes: 4
  %loadMem_40b521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b521 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b521)
  store %struct.Memory* %call_40b521, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b525	 Bytes: 7
  %loadMem_40b525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b525 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b525)
  store %struct.Memory* %call_40b525, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b52c	 Bytes: 3
  %loadMem_40b52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b52c = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b52c)
  store %struct.Memory* %call_40b52c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b52f	 Bytes: 3
  %loadMem_40b52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b52f = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b52f)
  store %struct.Memory* %call_40b52f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b532	 Bytes: 4
  %loadMem_40b532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b532 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b532)
  store %struct.Memory* %call_40b532, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b536	 Bytes: 7
  %loadMem_40b536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b536 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b536)
  store %struct.Memory* %call_40b536, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40b53d	 Bytes: 3
  %loadMem_40b53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b53d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b53d)
  store %struct.Memory* %call_40b53d, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 40b540	 Bytes: 4
  %loadMem_40b540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b540 = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b540)
  store %struct.Memory* %call_40b540, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 40b544	 Bytes: 4
  %loadMem_40b544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b544 = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b544)
  store %struct.Memory* %call_40b544, %struct.Memory** %MEMORY

  ; Code: .L_40b548:	 RIP: 40b548	 Bytes: 0
  br label %block_.L_40b548
block_.L_40b548:

  ; Code: movq $0xa7f430, %rax	 RIP: 40b548	 Bytes: 10
  %loadMem_40b548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b548 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b548)
  store %struct.Memory* %call_40b548, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40b552	 Bytes: 4
  %loadMem_40b552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b552 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b552)
  store %struct.Memory* %call_40b552, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40b556	 Bytes: 7
  %loadMem_40b556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b556 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b556)
  store %struct.Memory* %call_40b556, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40b55d	 Bytes: 3
  %loadMem_40b55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b55d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b55d)
  store %struct.Memory* %call_40b55d, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40b560	 Bytes: 3
  %loadMem_40b560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b560 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b560)
  store %struct.Memory* %call_40b560, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40b563	 Bytes: 3
  %loadMem_40b563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b563 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b563)
  store %struct.Memory* %call_40b563, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 40b566	 Bytes: 3
  %loadMem_40b566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b566 = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b566)
  store %struct.Memory* %call_40b566, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40b56e	 RIP: 40b569	 Bytes: 5
  %loadMem_40b569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b569 = call %struct.Memory* @routine_jmpq_.L_40b56e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b569, i64 5, i64 5)
  store %struct.Memory* %call_40b569, %struct.Memory** %MEMORY

  br label %block_.L_40b56e

  ; Code: .L_40b56e:	 RIP: 40b56e	 Bytes: 0
block_.L_40b56e:

  ; Code: jmpq .L_40b738	 RIP: 40b56e	 Bytes: 5
  %loadMem_40b56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b56e = call %struct.Memory* @routine_jmpq_.L_40b738(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b56e, i64 458, i64 5)
  store %struct.Memory* %call_40b56e, %struct.Memory** %MEMORY

  br label %block_.L_40b738

  ; Code: .L_40b573:	 RIP: 40b573	 Bytes: 0
block_.L_40b573:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b573	 Bytes: 3
  %loadMem_40b573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b573 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b573)
  store %struct.Memory* %call_40b573, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40b576	 Bytes: 3
  %loadMem_40b576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b576 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b576)
  store %struct.Memory* %call_40b576, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b579	 Bytes: 3
  %loadMem_40b579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b579 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b579)
  store %struct.Memory* %call_40b579, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40b57c	 Bytes: 8
  %loadMem_40b57c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b57c = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b57c)
  store %struct.Memory* %call_40b57c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 40b584	 Bytes: 3
  %loadMem_40b584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b584 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b584)
  store %struct.Memory* %call_40b584, %struct.Memory** %MEMORY

  ; Code: jne .L_40b733	 RIP: 40b587	 Bytes: 6
  %loadMem_40b587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b587 = call %struct.Memory* @routine_jne_.L_40b733(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b587, i8* %BRANCH_TAKEN, i64 428, i64 6, i64 6)
  store %struct.Memory* %call_40b587, %struct.Memory** %MEMORY

  %loadBr_40b587 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b587 = icmp eq i8 %loadBr_40b587, 1
  br i1 %cmpBr_40b587, label %block_.L_40b733, label %block_40b58d

block_40b58d:
  ; Code: movq $0xa7f430, %rax	 RIP: 40b58d	 Bytes: 10
  %loadMem_40b58d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b58d = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b58d)
  store %struct.Memory* %call_40b58d, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40b597	 Bytes: 3
  %loadMem_40b597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b597 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b597)
  store %struct.Memory* %call_40b597, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40b59a	 Bytes: 3
  %loadMem_40b59a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b59a = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b59a)
  store %struct.Memory* %call_40b59a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40b59d	 Bytes: 3
  %loadMem_40b59d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b59d = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b59d)
  store %struct.Memory* %call_40b59d, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40b5a0	 Bytes: 8
  %loadMem_40b5a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5a0 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5a0)
  store %struct.Memory* %call_40b5a0, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b5a8	 Bytes: 7
  %loadMem_40b5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5a8 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5a8)
  store %struct.Memory* %call_40b5a8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40b5af	 Bytes: 3
  %loadMem_40b5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5af = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5af)
  store %struct.Memory* %call_40b5af, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40b5b2	 Bytes: 6
  %loadMem_40b5b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5b2 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5b2)
  store %struct.Memory* %call_40b5b2, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40b5b8	 Bytes: 7
  %loadMem_40b5b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5b8 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5b8)
  store %struct.Memory* %call_40b5b8, %struct.Memory** %MEMORY

  ; Code: je .L_40b733	 RIP: 40b5bf	 Bytes: 6
  %loadMem_40b5bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5bf = call %struct.Memory* @routine_je_.L_40b733(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5bf, i8* %BRANCH_TAKEN, i64 372, i64 6, i64 6)
  store %struct.Memory* %call_40b5bf, %struct.Memory** %MEMORY

  %loadBr_40b5bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b5bf = icmp eq i8 %loadBr_40b5bf, 1
  br i1 %cmpBr_40b5bf, label %block_.L_40b733, label %block_40b5c5

block_40b5c5:
  ; Code: movq $0xa7f430, %rax	 RIP: 40b5c5	 Bytes: 10
  %loadMem_40b5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5c5 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5c5)
  store %struct.Memory* %call_40b5c5, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40b5cf	 Bytes: 3
  %loadMem_40b5cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5cf = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5cf)
  store %struct.Memory* %call_40b5cf, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40b5d2	 Bytes: 3
  %loadMem_40b5d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5d2 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5d2)
  store %struct.Memory* %call_40b5d2, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40b5d5	 Bytes: 3
  %loadMem_40b5d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5d5 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5d5)
  store %struct.Memory* %call_40b5d5, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40b5d8	 Bytes: 7
  %loadMem_40b5d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5d8 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5d8)
  store %struct.Memory* %call_40b5d8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 40b5df	 Bytes: 3
  %loadMem_40b5df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5df = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5df)
  store %struct.Memory* %call_40b5df, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b5e2	 Bytes: 4
  %loadMem_40b5e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5e2 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5e2)
  store %struct.Memory* %call_40b5e2, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b5e6	 Bytes: 7
  %loadMem_40b5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5e6 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5e6)
  store %struct.Memory* %call_40b5e6, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b5ed	 Bytes: 3
  %loadMem_40b5ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5ed = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5ed)
  store %struct.Memory* %call_40b5ed, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b5f0	 Bytes: 3
  %loadMem_40b5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5f0 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5f0)
  store %struct.Memory* %call_40b5f0, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40b5f3	 Bytes: 4
  %loadMem_40b5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5f3 = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5f3)
  store %struct.Memory* %call_40b5f3, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40b5f7	 Bytes: 8
  %loadMem_40b5f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5f7 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5f7)
  store %struct.Memory* %call_40b5f7, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40b5ff	 Bytes: 3
  %loadMem_40b5ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b5ff = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b5ff)
  store %struct.Memory* %call_40b5ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b602	 Bytes: 4
  %loadMem_40b602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b602 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b602)
  store %struct.Memory* %call_40b602, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b606	 Bytes: 7
  %loadMem_40b606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b606 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b606)
  store %struct.Memory* %call_40b606, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b60d	 Bytes: 3
  %loadMem_40b60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b60d = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b60d)
  store %struct.Memory* %call_40b60d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b610	 Bytes: 3
  %loadMem_40b610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b610 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b610)
  store %struct.Memory* %call_40b610, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40b613	 Bytes: 3
  %loadMem_40b613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b613 = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b613)
  store %struct.Memory* %call_40b613, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40b616	 Bytes: 8
  %loadMem_40b616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b616 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b616)
  store %struct.Memory* %call_40b616, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40b61e	 Bytes: 3
  %loadMem_40b61e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b61e = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b61e)
  store %struct.Memory* %call_40b61e, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40b621	 Bytes: 4
  %loadMem_40b621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b621 = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b621)
  store %struct.Memory* %call_40b621, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40b625	 Bytes: 8
  %loadMem_40b625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b625 = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b625)
  store %struct.Memory* %call_40b625, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40b62d	 Bytes: 3
  %loadMem_40b62d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b62d = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b62d)
  store %struct.Memory* %call_40b62d, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40b630	 Bytes: 3
  %loadMem_40b630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b630 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b630)
  store %struct.Memory* %call_40b630, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40b633	 Bytes: 3
  %loadMem_40b633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b633 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b633)
  store %struct.Memory* %call_40b633, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40b636	 Bytes: 3
  %loadMem_40b636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b636 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b636)
  store %struct.Memory* %call_40b636, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40b639	 Bytes: 7
  %loadMem_40b639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b639 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b639)
  store %struct.Memory* %call_40b639, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b640	 Bytes: 4
  %loadMem_40b640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b640 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b640)
  store %struct.Memory* %call_40b640, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b644	 Bytes: 7
  %loadMem_40b644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b644 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b644)
  store %struct.Memory* %call_40b644, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b64b	 Bytes: 3
  %loadMem_40b64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b64b = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b64b)
  store %struct.Memory* %call_40b64b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b64e	 Bytes: 3
  %loadMem_40b64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b64e = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b64e)
  store %struct.Memory* %call_40b64e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b651	 Bytes: 4
  %loadMem_40b651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b651 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b651)
  store %struct.Memory* %call_40b651, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b655	 Bytes: 7
  %loadMem_40b655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b655 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b655)
  store %struct.Memory* %call_40b655, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40b65c	 Bytes: 3
  %loadMem_40b65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b65c = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b65c)
  store %struct.Memory* %call_40b65c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40b65f	 Bytes: 3
  %loadMem_40b65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b65f = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b65f)
  store %struct.Memory* %call_40b65f, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40b662	 Bytes: 4
  %loadMem_40b662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b662 = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b662)
  store %struct.Memory* %call_40b662, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40b666	 Bytes: 3
  %loadMem_40b666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b666 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b666)
  store %struct.Memory* %call_40b666, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40b669	 Bytes: 4
  %loadMem_40b669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b669 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b669)
  store %struct.Memory* %call_40b669, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40b66d	 Bytes: 4
  %loadMem_40b66d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b66d = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b66d)
  store %struct.Memory* %call_40b66d, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40b671	 Bytes: 3
  %loadMem_40b671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b671 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b671)
  store %struct.Memory* %call_40b671, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40b674	 Bytes: 4
  %loadMem_40b674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b674 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b674)
  store %struct.Memory* %call_40b674, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40b678	 Bytes: 4
  %loadMem_40b678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b678 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b678)
  store %struct.Memory* %call_40b678, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b67c	 Bytes: 7
  %loadMem_40b67c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b67c = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b67c)
  store %struct.Memory* %call_40b67c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b683	 Bytes: 3
  %loadMem_40b683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b683 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b683)
  store %struct.Memory* %call_40b683, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b686	 Bytes: 3
  %loadMem_40b686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b686 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b686)
  store %struct.Memory* %call_40b686, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40b689	 Bytes: 4
  %loadMem_40b689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b689 = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b689)
  store %struct.Memory* %call_40b689, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40b68d	 Bytes: 8
  %loadMem_40b68d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b68d = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b68d)
  store %struct.Memory* %call_40b68d, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40b695	 Bytes: 3
  %loadMem_40b695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b695 = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b695)
  store %struct.Memory* %call_40b695, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40b698	 Bytes: 4
  %loadMem_40b698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b698 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b698)
  store %struct.Memory* %call_40b698, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b69c	 Bytes: 7
  %loadMem_40b69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b69c = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b69c)
  store %struct.Memory* %call_40b69c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b6a3	 Bytes: 3
  %loadMem_40b6a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6a3 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6a3)
  store %struct.Memory* %call_40b6a3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b6a6	 Bytes: 3
  %loadMem_40b6a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6a6 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6a6)
  store %struct.Memory* %call_40b6a6, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40b6a9	 Bytes: 3
  %loadMem_40b6a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6a9 = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6a9)
  store %struct.Memory* %call_40b6a9, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40b6ac	 Bytes: 8
  %loadMem_40b6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6ac = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6ac)
  store %struct.Memory* %call_40b6ac, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40b6b4	 Bytes: 3
  %loadMem_40b6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6b4 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6b4)
  store %struct.Memory* %call_40b6b4, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40b6b7	 Bytes: 4
  %loadMem_40b6b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6b7 = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6b7)
  store %struct.Memory* %call_40b6b7, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40b6bb	 Bytes: 8
  %loadMem_40b6bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6bb = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6bb)
  store %struct.Memory* %call_40b6bb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40b6c3	 Bytes: 3
  %loadMem_40b6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6c3 = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6c3)
  store %struct.Memory* %call_40b6c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40b6c6	 Bytes: 4
  %loadMem_40b6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6c6 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6c6)
  store %struct.Memory* %call_40b6c6, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40b6ca	 Bytes: 7
  %loadMem_40b6ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6ca = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6ca)
  store %struct.Memory* %call_40b6ca, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40b6d1	 Bytes: 4
  %loadMem_40b6d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6d1 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6d1)
  store %struct.Memory* %call_40b6d1, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b6d5	 Bytes: 7
  %loadMem_40b6d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6d5 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6d5)
  store %struct.Memory* %call_40b6d5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b6dc	 Bytes: 3
  %loadMem_40b6dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6dc = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6dc)
  store %struct.Memory* %call_40b6dc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b6df	 Bytes: 3
  %loadMem_40b6df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6df = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6df)
  store %struct.Memory* %call_40b6df, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40b6e2	 Bytes: 4
  %loadMem_40b6e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6e2 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6e2)
  store %struct.Memory* %call_40b6e2, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b6e6	 Bytes: 7
  %loadMem_40b6e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6e6 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6e6)
  store %struct.Memory* %call_40b6e6, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40b6ed	 Bytes: 3
  %loadMem_40b6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6ed = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6ed)
  store %struct.Memory* %call_40b6ed, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40b6f0	 Bytes: 3
  %loadMem_40b6f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6f0 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6f0)
  store %struct.Memory* %call_40b6f0, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40b6f3	 Bytes: 4
  %loadMem_40b6f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6f3 = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6f3)
  store %struct.Memory* %call_40b6f3, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40b6f7	 Bytes: 3
  %loadMem_40b6f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6f7 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6f7)
  store %struct.Memory* %call_40b6f7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40b6fa	 Bytes: 4
  %loadMem_40b6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6fa = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6fa)
  store %struct.Memory* %call_40b6fa, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40b6fe	 Bytes: 4
  %loadMem_40b6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b6fe = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b6fe)
  store %struct.Memory* %call_40b6fe, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40b702	 Bytes: 3
  %loadMem_40b702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b702 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b702)
  store %struct.Memory* %call_40b702, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40b705	 Bytes: 4
  %loadMem_40b705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b705 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b705)
  store %struct.Memory* %call_40b705, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 40b709	 Bytes: 7
  %loadMem_40b709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b709 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b709)
  store %struct.Memory* %call_40b709, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40b710	 Bytes: 4
  %loadMem_40b710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b710 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b710)
  store %struct.Memory* %call_40b710, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %r8d	 RIP: 40b714	 Bytes: 4
  %loadMem_40b714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b714 = call %struct.Memory* @routine_addl__0x14___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b714)
  store %struct.Memory* %call_40b714, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40b718	 Bytes: 3
  %loadMem_40b718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b718 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b718)
  store %struct.Memory* %call_40b718, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40b71b	 Bytes: 8
  %loadMem_40b71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b71b = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b71b)
  store %struct.Memory* %call_40b71b, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b723	 Bytes: 7
  %loadMem_40b723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b723 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b723)
  store %struct.Memory* %call_40b723, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40b72a	 Bytes: 3
  %loadMem_40b72a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b72a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b72a)
  store %struct.Memory* %call_40b72a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 40b72d	 Bytes: 6
  %loadMem_40b72d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b72d = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b72d)
  store %struct.Memory* %call_40b72d, %struct.Memory** %MEMORY

  ; Code: .L_40b733:	 RIP: 40b733	 Bytes: 0
  br label %block_.L_40b733
block_.L_40b733:

  ; Code: jmpq .L_40b738	 RIP: 40b733	 Bytes: 5
  %loadMem_40b733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b733 = call %struct.Memory* @routine_jmpq_.L_40b738(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b733, i64 5, i64 5)
  store %struct.Memory* %call_40b733, %struct.Memory** %MEMORY

  br label %block_.L_40b738

  ; Code: .L_40b738:	 RIP: 40b738	 Bytes: 0
block_.L_40b738:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b738	 Bytes: 3
  %loadMem_40b738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b738 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b738)
  store %struct.Memory* %call_40b738, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40b73b	 Bytes: 3
  %loadMem_40b73b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b73b = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b73b)
  store %struct.Memory* %call_40b73b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b73e	 Bytes: 3
  %loadMem_40b73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b73e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b73e)
  store %struct.Memory* %call_40b73e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40b741	 Bytes: 8
  %loadMem_40b741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b741 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b741)
  store %struct.Memory* %call_40b741, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 40b749	 Bytes: 3
  %loadMem_40b749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b749 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b749)
  store %struct.Memory* %call_40b749, %struct.Memory** %MEMORY

  ; Code: jne .L_40b890	 RIP: 40b74c	 Bytes: 6
  %loadMem_40b74c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b74c = call %struct.Memory* @routine_jne_.L_40b890(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b74c, i8* %BRANCH_TAKEN, i64 324, i64 6, i64 6)
  store %struct.Memory* %call_40b74c, %struct.Memory** %MEMORY

  %loadBr_40b74c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b74c = icmp eq i8 %loadBr_40b74c, 1
  br i1 %cmpBr_40b74c, label %block_.L_40b890, label %block_40b752

block_40b752:
  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 40b752	 Bytes: 4
  %loadMem_40b752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b752 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b752)
  store %struct.Memory* %call_40b752, %struct.Memory** %MEMORY

  ; Code: jne .L_40b88b	 RIP: 40b756	 Bytes: 6
  %loadMem_40b756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b756 = call %struct.Memory* @routine_jne_.L_40b88b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b756, i8* %BRANCH_TAKEN, i64 309, i64 6, i64 6)
  store %struct.Memory* %call_40b756, %struct.Memory** %MEMORY

  %loadBr_40b756 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b756 = icmp eq i8 %loadBr_40b756, 1
  br i1 %cmpBr_40b756, label %block_.L_40b88b, label %block_40b75c

block_40b75c:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b75c	 Bytes: 3
  %loadMem_40b75c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b75c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b75c)
  store %struct.Memory* %call_40b75c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40b75f	 Bytes: 3
  %loadMem_40b75f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b75f = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b75f)
  store %struct.Memory* %call_40b75f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40b762	 Bytes: 3
  %loadMem_40b762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b762 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b762)
  store %struct.Memory* %call_40b762, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b765	 Bytes: 3
  %loadMem_40b765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b765 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b765)
  store %struct.Memory* %call_40b765, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40b768	 Bytes: 8
  %loadMem_40b768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b768 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b768)
  store %struct.Memory* %call_40b768, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40b770	 Bytes: 3
  %loadMem_40b770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b770 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b770)
  store %struct.Memory* %call_40b770, %struct.Memory** %MEMORY

  ; Code: jne .L_40b795	 RIP: 40b773	 Bytes: 6
  %loadMem_40b773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b773 = call %struct.Memory* @routine_jne_.L_40b795(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b773, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_40b773, %struct.Memory** %MEMORY

  %loadBr_40b773 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b773 = icmp eq i8 %loadBr_40b773, 1
  br i1 %cmpBr_40b773, label %block_.L_40b795, label %block_40b779

block_40b779:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b779	 Bytes: 3
  %loadMem_40b779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b779 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b779)
  store %struct.Memory* %call_40b779, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40b77c	 Bytes: 3
  %loadMem_40b77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b77c = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b77c)
  store %struct.Memory* %call_40b77c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40b77f	 Bytes: 3
  %loadMem_40b77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b77f = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b77f)
  store %struct.Memory* %call_40b77f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b782	 Bytes: 3
  %loadMem_40b782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b782 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b782)
  store %struct.Memory* %call_40b782, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40b785	 Bytes: 7
  %loadMem_40b785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b785 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b785)
  store %struct.Memory* %call_40b785, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 40b78c	 Bytes: 3
  %loadMem_40b78c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b78c = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b78c)
  store %struct.Memory* %call_40b78c, %struct.Memory** %MEMORY

  ; Code: je .L_40b88b	 RIP: 40b78f	 Bytes: 6
  %loadMem_40b78f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b78f = call %struct.Memory* @routine_je_.L_40b88b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b78f, i8* %BRANCH_TAKEN, i64 252, i64 6, i64 6)
  store %struct.Memory* %call_40b78f, %struct.Memory** %MEMORY

  %loadBr_40b78f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b78f = icmp eq i8 %loadBr_40b78f, 1
  br i1 %cmpBr_40b78f, label %block_.L_40b88b, label %block_.L_40b795

  ; Code: .L_40b795:	 RIP: 40b795	 Bytes: 0
block_.L_40b795:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b795	 Bytes: 3
  %loadMem_40b795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b795 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b795)
  store %struct.Memory* %call_40b795, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40b798	 Bytes: 3
  %loadMem_40b798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b798 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b798)
  store %struct.Memory* %call_40b798, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40b79b	 Bytes: 3
  %loadMem_40b79b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b79b = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b79b)
  store %struct.Memory* %call_40b79b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b79e	 Bytes: 3
  %loadMem_40b79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b79e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b79e)
  store %struct.Memory* %call_40b79e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40b7a1	 Bytes: 8
  %loadMem_40b7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7a1 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7a1)
  store %struct.Memory* %call_40b7a1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40b7a9	 Bytes: 3
  %loadMem_40b7a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7a9 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7a9)
  store %struct.Memory* %call_40b7a9, %struct.Memory** %MEMORY

  ; Code: jne .L_40b7ce	 RIP: 40b7ac	 Bytes: 6
  %loadMem_40b7ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7ac = call %struct.Memory* @routine_jne_.L_40b7ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7ac, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_40b7ac, %struct.Memory** %MEMORY

  %loadBr_40b7ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b7ac = icmp eq i8 %loadBr_40b7ac, 1
  br i1 %cmpBr_40b7ac, label %block_.L_40b7ce, label %block_40b7b2

block_40b7b2:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b7b2	 Bytes: 3
  %loadMem_40b7b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7b2 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7b2)
  store %struct.Memory* %call_40b7b2, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40b7b5	 Bytes: 3
  %loadMem_40b7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7b5 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7b5)
  store %struct.Memory* %call_40b7b5, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40b7b8	 Bytes: 3
  %loadMem_40b7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7b8 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7b8)
  store %struct.Memory* %call_40b7b8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b7bb	 Bytes: 3
  %loadMem_40b7bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7bb = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7bb)
  store %struct.Memory* %call_40b7bb, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40b7be	 Bytes: 7
  %loadMem_40b7be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7be = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7be)
  store %struct.Memory* %call_40b7be, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 40b7c5	 Bytes: 3
  %loadMem_40b7c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7c5 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7c5)
  store %struct.Memory* %call_40b7c5, %struct.Memory** %MEMORY

  ; Code: je .L_40b88b	 RIP: 40b7c8	 Bytes: 6
  %loadMem_40b7c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7c8 = call %struct.Memory* @routine_je_.L_40b88b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7c8, i8* %BRANCH_TAKEN, i64 195, i64 6, i64 6)
  store %struct.Memory* %call_40b7c8, %struct.Memory** %MEMORY

  %loadBr_40b7c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b7c8 = icmp eq i8 %loadBr_40b7c8, 1
  br i1 %cmpBr_40b7c8, label %block_.L_40b88b, label %block_.L_40b7ce

  ; Code: .L_40b7ce:	 RIP: 40b7ce	 Bytes: 0
block_.L_40b7ce:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b7ce	 Bytes: 3
  %loadMem_40b7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7ce = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7ce)
  store %struct.Memory* %call_40b7ce, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40b7d1	 Bytes: 3
  %loadMem_40b7d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7d1 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7d1)
  store %struct.Memory* %call_40b7d1, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40b7d4	 Bytes: 3
  %loadMem_40b7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7d4 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7d4)
  store %struct.Memory* %call_40b7d4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b7d7	 Bytes: 3
  %loadMem_40b7d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7d7 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7d7)
  store %struct.Memory* %call_40b7d7, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40b7da	 Bytes: 8
  %loadMem_40b7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7da = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7da)
  store %struct.Memory* %call_40b7da, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40b7e2	 Bytes: 3
  %loadMem_40b7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7e2 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7e2)
  store %struct.Memory* %call_40b7e2, %struct.Memory** %MEMORY

  ; Code: jne .L_40b807	 RIP: 40b7e5	 Bytes: 6
  %loadMem_40b7e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7e5 = call %struct.Memory* @routine_jne_.L_40b807(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7e5, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_40b7e5, %struct.Memory** %MEMORY

  %loadBr_40b7e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b7e5 = icmp eq i8 %loadBr_40b7e5, 1
  br i1 %cmpBr_40b7e5, label %block_.L_40b807, label %block_40b7eb

block_40b7eb:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b7eb	 Bytes: 3
  %loadMem_40b7eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7eb = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7eb)
  store %struct.Memory* %call_40b7eb, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40b7ee	 Bytes: 3
  %loadMem_40b7ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7ee = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7ee)
  store %struct.Memory* %call_40b7ee, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40b7f1	 Bytes: 3
  %loadMem_40b7f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7f1 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7f1)
  store %struct.Memory* %call_40b7f1, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b7f4	 Bytes: 3
  %loadMem_40b7f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7f4 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7f4)
  store %struct.Memory* %call_40b7f4, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40b7f7	 Bytes: 7
  %loadMem_40b7f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7f7 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7f7)
  store %struct.Memory* %call_40b7f7, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 40b7fe	 Bytes: 3
  %loadMem_40b7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b7fe = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b7fe)
  store %struct.Memory* %call_40b7fe, %struct.Memory** %MEMORY

  ; Code: je .L_40b88b	 RIP: 40b801	 Bytes: 6
  %loadMem_40b801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b801 = call %struct.Memory* @routine_je_.L_40b88b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b801, i8* %BRANCH_TAKEN, i64 138, i64 6, i64 6)
  store %struct.Memory* %call_40b801, %struct.Memory** %MEMORY

  %loadBr_40b801 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b801 = icmp eq i8 %loadBr_40b801, 1
  br i1 %cmpBr_40b801, label %block_.L_40b88b, label %block_.L_40b807

  ; Code: .L_40b807:	 RIP: 40b807	 Bytes: 0
block_.L_40b807:

  ; Code: jmpq .L_40b80c	 RIP: 40b807	 Bytes: 5
  %loadMem_40b807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b807 = call %struct.Memory* @routine_jmpq_.L_40b80c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b807, i64 5, i64 5)
  store %struct.Memory* %call_40b807, %struct.Memory** %MEMORY

  br label %block_.L_40b80c

  ; Code: .L_40b80c:	 RIP: 40b80c	 Bytes: 0
block_.L_40b80c:

  ; Code: movq $0xa7f430, %rax	 RIP: 40b80c	 Bytes: 10
  %loadMem_40b80c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b80c = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b80c)
  store %struct.Memory* %call_40b80c, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40b816	 Bytes: 4
  %loadMem_40b816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b816 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b816)
  store %struct.Memory* %call_40b816, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40b81a	 Bytes: 7
  %loadMem_40b81a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b81a = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b81a)
  store %struct.Memory* %call_40b81a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40b821	 Bytes: 3
  %loadMem_40b821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b821 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b821)
  store %struct.Memory* %call_40b821, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 40b824	 Bytes: 4
  %loadMem_40b824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b824 = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b824)
  store %struct.Memory* %call_40b824, %struct.Memory** %MEMORY

  ; Code: jge .L_40b865	 RIP: 40b828	 Bytes: 6
  %loadMem_40b828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b828 = call %struct.Memory* @routine_jge_.L_40b865(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b828, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_40b828, %struct.Memory** %MEMORY

  %loadBr_40b828 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b828 = icmp eq i8 %loadBr_40b828, 1
  br i1 %cmpBr_40b828, label %block_.L_40b865, label %block_40b82e

block_40b82e:
  ; Code: movq $0xa7f430, %rax	 RIP: 40b82e	 Bytes: 10
  %loadMem_40b82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b82e = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b82e)
  store %struct.Memory* %call_40b82e, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40b838	 Bytes: 3
  %loadMem_40b838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b838 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b838)
  store %struct.Memory* %call_40b838, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40b83b	 Bytes: 3
  %loadMem_40b83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b83b = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b83b)
  store %struct.Memory* %call_40b83b, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b83e	 Bytes: 4
  %loadMem_40b83e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b83e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b83e)
  store %struct.Memory* %call_40b83e, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b842	 Bytes: 7
  %loadMem_40b842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b842 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b842)
  store %struct.Memory* %call_40b842, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b849	 Bytes: 3
  %loadMem_40b849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b849 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b849)
  store %struct.Memory* %call_40b849, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b84c	 Bytes: 3
  %loadMem_40b84c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b84c = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b84c)
  store %struct.Memory* %call_40b84c, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b84f	 Bytes: 4
  %loadMem_40b84f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b84f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b84f)
  store %struct.Memory* %call_40b84f, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b853	 Bytes: 7
  %loadMem_40b853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b853 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b853)
  store %struct.Memory* %call_40b853, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40b85a	 Bytes: 3
  %loadMem_40b85a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b85a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b85a)
  store %struct.Memory* %call_40b85a, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 40b85d	 Bytes: 4
  %loadMem_40b85d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b85d = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b85d)
  store %struct.Memory* %call_40b85d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 40b861	 Bytes: 4
  %loadMem_40b861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b861 = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b861)
  store %struct.Memory* %call_40b861, %struct.Memory** %MEMORY

  ; Code: .L_40b865:	 RIP: 40b865	 Bytes: 0
  br label %block_.L_40b865
block_.L_40b865:

  ; Code: movq $0xa7f430, %rax	 RIP: 40b865	 Bytes: 10
  %loadMem_40b865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b865 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b865)
  store %struct.Memory* %call_40b865, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40b86f	 Bytes: 4
  %loadMem_40b86f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b86f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b86f)
  store %struct.Memory* %call_40b86f, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40b873	 Bytes: 7
  %loadMem_40b873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b873 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b873)
  store %struct.Memory* %call_40b873, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40b87a	 Bytes: 3
  %loadMem_40b87a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b87a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b87a)
  store %struct.Memory* %call_40b87a, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40b87d	 Bytes: 3
  %loadMem_40b87d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b87d = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b87d)
  store %struct.Memory* %call_40b87d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40b880	 Bytes: 3
  %loadMem_40b880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b880 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b880)
  store %struct.Memory* %call_40b880, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 40b883	 Bytes: 3
  %loadMem_40b883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b883 = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b883)
  store %struct.Memory* %call_40b883, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40b88b	 RIP: 40b886	 Bytes: 5
  %loadMem_40b886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b886 = call %struct.Memory* @routine_jmpq_.L_40b88b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b886, i64 5, i64 5)
  store %struct.Memory* %call_40b886, %struct.Memory** %MEMORY

  br label %block_.L_40b88b

  ; Code: .L_40b88b:	 RIP: 40b88b	 Bytes: 0
block_.L_40b88b:

  ; Code: jmpq .L_40ba55	 RIP: 40b88b	 Bytes: 5
  %loadMem_40b88b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b88b = call %struct.Memory* @routine_jmpq_.L_40ba55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b88b, i64 458, i64 5)
  store %struct.Memory* %call_40b88b, %struct.Memory** %MEMORY

  br label %block_.L_40ba55

  ; Code: .L_40b890:	 RIP: 40b890	 Bytes: 0
block_.L_40b890:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40b890	 Bytes: 3
  %loadMem_40b890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b890 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b890)
  store %struct.Memory* %call_40b890, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40b893	 Bytes: 3
  %loadMem_40b893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b893 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b893)
  store %struct.Memory* %call_40b893, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40b896	 Bytes: 3
  %loadMem_40b896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b896 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b896)
  store %struct.Memory* %call_40b896, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40b899	 Bytes: 8
  %loadMem_40b899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b899 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b899)
  store %struct.Memory* %call_40b899, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 40b8a1	 Bytes: 3
  %loadMem_40b8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8a1 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8a1)
  store %struct.Memory* %call_40b8a1, %struct.Memory** %MEMORY

  ; Code: jne .L_40ba50	 RIP: 40b8a4	 Bytes: 6
  %loadMem_40b8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8a4 = call %struct.Memory* @routine_jne_.L_40ba50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8a4, i8* %BRANCH_TAKEN, i64 428, i64 6, i64 6)
  store %struct.Memory* %call_40b8a4, %struct.Memory** %MEMORY

  %loadBr_40b8a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b8a4 = icmp eq i8 %loadBr_40b8a4, 1
  br i1 %cmpBr_40b8a4, label %block_.L_40ba50, label %block_40b8aa

block_40b8aa:
  ; Code: movq $0xa7f430, %rax	 RIP: 40b8aa	 Bytes: 10
  %loadMem_40b8aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8aa = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8aa)
  store %struct.Memory* %call_40b8aa, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40b8b4	 Bytes: 3
  %loadMem_40b8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8b4 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8b4)
  store %struct.Memory* %call_40b8b4, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40b8b7	 Bytes: 3
  %loadMem_40b8b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8b7 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8b7)
  store %struct.Memory* %call_40b8b7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40b8ba	 Bytes: 3
  %loadMem_40b8ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8ba = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8ba)
  store %struct.Memory* %call_40b8ba, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40b8bd	 Bytes: 8
  %loadMem_40b8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8bd = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8bd)
  store %struct.Memory* %call_40b8bd, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b8c5	 Bytes: 7
  %loadMem_40b8c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8c5 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8c5)
  store %struct.Memory* %call_40b8c5, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40b8cc	 Bytes: 3
  %loadMem_40b8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8cc = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8cc)
  store %struct.Memory* %call_40b8cc, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40b8cf	 Bytes: 6
  %loadMem_40b8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8cf = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8cf)
  store %struct.Memory* %call_40b8cf, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40b8d5	 Bytes: 7
  %loadMem_40b8d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8d5 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8d5)
  store %struct.Memory* %call_40b8d5, %struct.Memory** %MEMORY

  ; Code: je .L_40ba50	 RIP: 40b8dc	 Bytes: 6
  %loadMem_40b8dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8dc = call %struct.Memory* @routine_je_.L_40ba50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8dc, i8* %BRANCH_TAKEN, i64 372, i64 6, i64 6)
  store %struct.Memory* %call_40b8dc, %struct.Memory** %MEMORY

  %loadBr_40b8dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b8dc = icmp eq i8 %loadBr_40b8dc, 1
  br i1 %cmpBr_40b8dc, label %block_.L_40ba50, label %block_40b8e2

block_40b8e2:
  ; Code: movq $0xa7f430, %rax	 RIP: 40b8e2	 Bytes: 10
  %loadMem_40b8e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8e2 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8e2)
  store %struct.Memory* %call_40b8e2, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40b8ec	 Bytes: 3
  %loadMem_40b8ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8ec = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8ec)
  store %struct.Memory* %call_40b8ec, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40b8ef	 Bytes: 3
  %loadMem_40b8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8ef = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8ef)
  store %struct.Memory* %call_40b8ef, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40b8f2	 Bytes: 3
  %loadMem_40b8f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8f2 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8f2)
  store %struct.Memory* %call_40b8f2, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40b8f5	 Bytes: 7
  %loadMem_40b8f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8f5 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8f5)
  store %struct.Memory* %call_40b8f5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 40b8fc	 Bytes: 3
  %loadMem_40b8fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8fc = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8fc)
  store %struct.Memory* %call_40b8fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b8ff	 Bytes: 4
  %loadMem_40b8ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b8ff = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b8ff)
  store %struct.Memory* %call_40b8ff, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b903	 Bytes: 7
  %loadMem_40b903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b903 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b903)
  store %struct.Memory* %call_40b903, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b90a	 Bytes: 3
  %loadMem_40b90a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b90a = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b90a)
  store %struct.Memory* %call_40b90a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b90d	 Bytes: 3
  %loadMem_40b90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b90d = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b90d)
  store %struct.Memory* %call_40b90d, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40b910	 Bytes: 4
  %loadMem_40b910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b910 = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b910)
  store %struct.Memory* %call_40b910, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40b914	 Bytes: 8
  %loadMem_40b914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b914 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b914)
  store %struct.Memory* %call_40b914, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40b91c	 Bytes: 3
  %loadMem_40b91c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b91c = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b91c)
  store %struct.Memory* %call_40b91c, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b91f	 Bytes: 4
  %loadMem_40b91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b91f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b91f)
  store %struct.Memory* %call_40b91f, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b923	 Bytes: 7
  %loadMem_40b923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b923 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b923)
  store %struct.Memory* %call_40b923, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b92a	 Bytes: 3
  %loadMem_40b92a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b92a = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b92a)
  store %struct.Memory* %call_40b92a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b92d	 Bytes: 3
  %loadMem_40b92d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b92d = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b92d)
  store %struct.Memory* %call_40b92d, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40b930	 Bytes: 3
  %loadMem_40b930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b930 = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b930)
  store %struct.Memory* %call_40b930, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40b933	 Bytes: 8
  %loadMem_40b933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b933 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b933)
  store %struct.Memory* %call_40b933, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40b93b	 Bytes: 3
  %loadMem_40b93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b93b = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b93b)
  store %struct.Memory* %call_40b93b, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40b93e	 Bytes: 4
  %loadMem_40b93e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b93e = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b93e)
  store %struct.Memory* %call_40b93e, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40b942	 Bytes: 8
  %loadMem_40b942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b942 = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b942)
  store %struct.Memory* %call_40b942, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40b94a	 Bytes: 3
  %loadMem_40b94a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b94a = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b94a)
  store %struct.Memory* %call_40b94a, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40b94d	 Bytes: 3
  %loadMem_40b94d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b94d = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b94d)
  store %struct.Memory* %call_40b94d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 40b950	 Bytes: 3
  %loadMem_40b950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b950 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b950)
  store %struct.Memory* %call_40b950, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40b953	 Bytes: 3
  %loadMem_40b953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b953 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b953)
  store %struct.Memory* %call_40b953, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40b956	 Bytes: 7
  %loadMem_40b956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b956 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b956)
  store %struct.Memory* %call_40b956, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b95d	 Bytes: 4
  %loadMem_40b95d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b95d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b95d)
  store %struct.Memory* %call_40b95d, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b961	 Bytes: 7
  %loadMem_40b961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b961 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b961)
  store %struct.Memory* %call_40b961, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b968	 Bytes: 3
  %loadMem_40b968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b968 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b968)
  store %struct.Memory* %call_40b968, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b96b	 Bytes: 3
  %loadMem_40b96b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b96b = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b96b)
  store %struct.Memory* %call_40b96b, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40b96e	 Bytes: 4
  %loadMem_40b96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b96e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b96e)
  store %struct.Memory* %call_40b96e, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b972	 Bytes: 7
  %loadMem_40b972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b972 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b972)
  store %struct.Memory* %call_40b972, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40b979	 Bytes: 3
  %loadMem_40b979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b979 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b979)
  store %struct.Memory* %call_40b979, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40b97c	 Bytes: 3
  %loadMem_40b97c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b97c = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b97c)
  store %struct.Memory* %call_40b97c, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40b97f	 Bytes: 4
  %loadMem_40b97f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b97f = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b97f)
  store %struct.Memory* %call_40b97f, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40b983	 Bytes: 3
  %loadMem_40b983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b983 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b983)
  store %struct.Memory* %call_40b983, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40b986	 Bytes: 4
  %loadMem_40b986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b986 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b986)
  store %struct.Memory* %call_40b986, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40b98a	 Bytes: 4
  %loadMem_40b98a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b98a = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b98a)
  store %struct.Memory* %call_40b98a, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40b98e	 Bytes: 3
  %loadMem_40b98e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b98e = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b98e)
  store %struct.Memory* %call_40b98e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40b991	 Bytes: 4
  %loadMem_40b991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b991 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b991)
  store %struct.Memory* %call_40b991, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 40b995	 Bytes: 4
  %loadMem_40b995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b995 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b995)
  store %struct.Memory* %call_40b995, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b999	 Bytes: 7
  %loadMem_40b999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b999 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b999)
  store %struct.Memory* %call_40b999, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b9a0	 Bytes: 3
  %loadMem_40b9a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9a0 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9a0)
  store %struct.Memory* %call_40b9a0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b9a3	 Bytes: 3
  %loadMem_40b9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9a3 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9a3)
  store %struct.Memory* %call_40b9a3, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40b9a6	 Bytes: 4
  %loadMem_40b9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9a6 = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9a6)
  store %struct.Memory* %call_40b9a6, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40b9aa	 Bytes: 8
  %loadMem_40b9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9aa = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9aa)
  store %struct.Memory* %call_40b9aa, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40b9b2	 Bytes: 3
  %loadMem_40b9b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9b2 = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9b2)
  store %struct.Memory* %call_40b9b2, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 40b9b5	 Bytes: 4
  %loadMem_40b9b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9b5 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9b5)
  store %struct.Memory* %call_40b9b5, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b9b9	 Bytes: 7
  %loadMem_40b9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9b9 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9b9)
  store %struct.Memory* %call_40b9b9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b9c0	 Bytes: 3
  %loadMem_40b9c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9c0 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9c0)
  store %struct.Memory* %call_40b9c0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b9c3	 Bytes: 3
  %loadMem_40b9c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9c3 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9c3)
  store %struct.Memory* %call_40b9c3, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40b9c6	 Bytes: 3
  %loadMem_40b9c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9c6 = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9c6)
  store %struct.Memory* %call_40b9c6, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40b9c9	 Bytes: 8
  %loadMem_40b9c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9c9 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9c9)
  store %struct.Memory* %call_40b9c9, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40b9d1	 Bytes: 3
  %loadMem_40b9d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9d1 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9d1)
  store %struct.Memory* %call_40b9d1, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40b9d4	 Bytes: 4
  %loadMem_40b9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9d4 = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9d4)
  store %struct.Memory* %call_40b9d4, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40b9d8	 Bytes: 8
  %loadMem_40b9d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9d8 = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9d8)
  store %struct.Memory* %call_40b9d8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40b9e0	 Bytes: 3
  %loadMem_40b9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9e0 = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9e0)
  store %struct.Memory* %call_40b9e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40b9e3	 Bytes: 4
  %loadMem_40b9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9e3 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9e3)
  store %struct.Memory* %call_40b9e3, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40b9e7	 Bytes: 7
  %loadMem_40b9e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9e7 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9e7)
  store %struct.Memory* %call_40b9e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 40b9ee	 Bytes: 4
  %loadMem_40b9ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9ee = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9ee)
  store %struct.Memory* %call_40b9ee, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40b9f2	 Bytes: 7
  %loadMem_40b9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9f2 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9f2)
  store %struct.Memory* %call_40b9f2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40b9f9	 Bytes: 3
  %loadMem_40b9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9f9 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9f9)
  store %struct.Memory* %call_40b9f9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40b9fc	 Bytes: 3
  %loadMem_40b9fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9fc = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9fc)
  store %struct.Memory* %call_40b9fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 40b9ff	 Bytes: 4
  %loadMem_40b9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40b9ff = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40b9ff)
  store %struct.Memory* %call_40b9ff, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ba03	 Bytes: 7
  %loadMem_40ba03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba03 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba03)
  store %struct.Memory* %call_40ba03, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40ba0a	 Bytes: 3
  %loadMem_40ba0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba0a = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba0a)
  store %struct.Memory* %call_40ba0a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40ba0d	 Bytes: 3
  %loadMem_40ba0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba0d = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba0d)
  store %struct.Memory* %call_40ba0d, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40ba10	 Bytes: 4
  %loadMem_40ba10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba10 = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba10)
  store %struct.Memory* %call_40ba10, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40ba14	 Bytes: 3
  %loadMem_40ba14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba14 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba14)
  store %struct.Memory* %call_40ba14, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40ba17	 Bytes: 4
  %loadMem_40ba17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba17 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba17)
  store %struct.Memory* %call_40ba17, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40ba1b	 Bytes: 4
  %loadMem_40ba1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba1b = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba1b)
  store %struct.Memory* %call_40ba1b, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40ba1f	 Bytes: 3
  %loadMem_40ba1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba1f = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba1f)
  store %struct.Memory* %call_40ba1f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40ba22	 Bytes: 4
  %loadMem_40ba22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba22 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba22)
  store %struct.Memory* %call_40ba22, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 40ba26	 Bytes: 7
  %loadMem_40ba26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba26 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba26)
  store %struct.Memory* %call_40ba26, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40ba2d	 Bytes: 4
  %loadMem_40ba2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba2d = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba2d)
  store %struct.Memory* %call_40ba2d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %r8d	 RIP: 40ba31	 Bytes: 4
  %loadMem_40ba31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba31 = call %struct.Memory* @routine_subl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba31)
  store %struct.Memory* %call_40ba31, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40ba35	 Bytes: 3
  %loadMem_40ba35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba35 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba35)
  store %struct.Memory* %call_40ba35, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40ba38	 Bytes: 8
  %loadMem_40ba38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba38 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba38)
  store %struct.Memory* %call_40ba38, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40ba40	 Bytes: 7
  %loadMem_40ba40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba40 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba40)
  store %struct.Memory* %call_40ba40, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40ba47	 Bytes: 3
  %loadMem_40ba47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba47 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba47)
  store %struct.Memory* %call_40ba47, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 40ba4a	 Bytes: 6
  %loadMem_40ba4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba4a = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba4a)
  store %struct.Memory* %call_40ba4a, %struct.Memory** %MEMORY

  ; Code: .L_40ba50:	 RIP: 40ba50	 Bytes: 0
  br label %block_.L_40ba50
block_.L_40ba50:

  ; Code: jmpq .L_40ba55	 RIP: 40ba50	 Bytes: 5
  %loadMem_40ba50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba50 = call %struct.Memory* @routine_jmpq_.L_40ba55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba50, i64 5, i64 5)
  store %struct.Memory* %call_40ba50, %struct.Memory** %MEMORY

  br label %block_.L_40ba55

  ; Code: .L_40ba55:	 RIP: 40ba55	 Bytes: 0
block_.L_40ba55:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40ba55	 Bytes: 3
  %loadMem_40ba55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba55 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba55)
  store %struct.Memory* %call_40ba55, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40ba58	 Bytes: 3
  %loadMem_40ba58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba58 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba58)
  store %struct.Memory* %call_40ba58, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ba5b	 Bytes: 3
  %loadMem_40ba5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba5b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba5b)
  store %struct.Memory* %call_40ba5b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40ba5e	 Bytes: 8
  %loadMem_40ba5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba5e = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba5e)
  store %struct.Memory* %call_40ba5e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 40ba66	 Bytes: 3
  %loadMem_40ba66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba66 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba66)
  store %struct.Memory* %call_40ba66, %struct.Memory** %MEMORY

  ; Code: jne .L_40bbad	 RIP: 40ba69	 Bytes: 6
  %loadMem_40ba69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba69 = call %struct.Memory* @routine_jne_.L_40bbad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba69, i8* %BRANCH_TAKEN, i64 324, i64 6, i64 6)
  store %struct.Memory* %call_40ba69, %struct.Memory** %MEMORY

  %loadBr_40ba69 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ba69 = icmp eq i8 %loadBr_40ba69, 1
  br i1 %cmpBr_40ba69, label %block_.L_40bbad, label %block_40ba6f

block_40ba6f:
  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 40ba6f	 Bytes: 4
  %loadMem_40ba6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba6f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba6f)
  store %struct.Memory* %call_40ba6f, %struct.Memory** %MEMORY

  ; Code: jne .L_40bba8	 RIP: 40ba73	 Bytes: 6
  %loadMem_40ba73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba73 = call %struct.Memory* @routine_jne_.L_40bba8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba73, i8* %BRANCH_TAKEN, i64 309, i64 6, i64 6)
  store %struct.Memory* %call_40ba73, %struct.Memory** %MEMORY

  %loadBr_40ba73 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ba73 = icmp eq i8 %loadBr_40ba73, 1
  br i1 %cmpBr_40ba73, label %block_.L_40bba8, label %block_40ba79

block_40ba79:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40ba79	 Bytes: 3
  %loadMem_40ba79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba79 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba79)
  store %struct.Memory* %call_40ba79, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40ba7c	 Bytes: 3
  %loadMem_40ba7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba7c = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba7c)
  store %struct.Memory* %call_40ba7c, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40ba7f	 Bytes: 3
  %loadMem_40ba7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba7f = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba7f)
  store %struct.Memory* %call_40ba7f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ba82	 Bytes: 3
  %loadMem_40ba82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba82 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba82)
  store %struct.Memory* %call_40ba82, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40ba85	 Bytes: 8
  %loadMem_40ba85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba85 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba85)
  store %struct.Memory* %call_40ba85, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40ba8d	 Bytes: 3
  %loadMem_40ba8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba8d = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba8d)
  store %struct.Memory* %call_40ba8d, %struct.Memory** %MEMORY

  ; Code: jne .L_40bab2	 RIP: 40ba90	 Bytes: 6
  %loadMem_40ba90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba90 = call %struct.Memory* @routine_jne_.L_40bab2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba90, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_40ba90, %struct.Memory** %MEMORY

  %loadBr_40ba90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ba90 = icmp eq i8 %loadBr_40ba90, 1
  br i1 %cmpBr_40ba90, label %block_.L_40bab2, label %block_40ba96

block_40ba96:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40ba96	 Bytes: 3
  %loadMem_40ba96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba96 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba96)
  store %struct.Memory* %call_40ba96, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40ba99	 Bytes: 3
  %loadMem_40ba99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba99 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba99)
  store %struct.Memory* %call_40ba99, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40ba9c	 Bytes: 3
  %loadMem_40ba9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba9c = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba9c)
  store %struct.Memory* %call_40ba9c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ba9f	 Bytes: 3
  %loadMem_40ba9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ba9f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ba9f)
  store %struct.Memory* %call_40ba9f, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40baa2	 Bytes: 7
  %loadMem_40baa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40baa2 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40baa2)
  store %struct.Memory* %call_40baa2, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 40baa9	 Bytes: 3
  %loadMem_40baa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40baa9 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40baa9)
  store %struct.Memory* %call_40baa9, %struct.Memory** %MEMORY

  ; Code: je .L_40bba8	 RIP: 40baac	 Bytes: 6
  %loadMem_40baac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40baac = call %struct.Memory* @routine_je_.L_40bba8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40baac, i8* %BRANCH_TAKEN, i64 252, i64 6, i64 6)
  store %struct.Memory* %call_40baac, %struct.Memory** %MEMORY

  %loadBr_40baac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40baac = icmp eq i8 %loadBr_40baac, 1
  br i1 %cmpBr_40baac, label %block_.L_40bba8, label %block_.L_40bab2

  ; Code: .L_40bab2:	 RIP: 40bab2	 Bytes: 0
block_.L_40bab2:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40bab2	 Bytes: 3
  %loadMem_40bab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bab2 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bab2)
  store %struct.Memory* %call_40bab2, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40bab5	 Bytes: 3
  %loadMem_40bab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bab5 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bab5)
  store %struct.Memory* %call_40bab5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40bab8	 Bytes: 3
  %loadMem_40bab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bab8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bab8)
  store %struct.Memory* %call_40bab8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40babb	 Bytes: 3
  %loadMem_40babb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40babb = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40babb)
  store %struct.Memory* %call_40babb, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40babe	 Bytes: 8
  %loadMem_40babe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40babe = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40babe)
  store %struct.Memory* %call_40babe, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40bac6	 Bytes: 3
  %loadMem_40bac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bac6 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bac6)
  store %struct.Memory* %call_40bac6, %struct.Memory** %MEMORY

  ; Code: jne .L_40baeb	 RIP: 40bac9	 Bytes: 6
  %loadMem_40bac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bac9 = call %struct.Memory* @routine_jne_.L_40baeb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bac9, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_40bac9, %struct.Memory** %MEMORY

  %loadBr_40bac9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bac9 = icmp eq i8 %loadBr_40bac9, 1
  br i1 %cmpBr_40bac9, label %block_.L_40baeb, label %block_40bacf

block_40bacf:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40bacf	 Bytes: 3
  %loadMem_40bacf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bacf = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bacf)
  store %struct.Memory* %call_40bacf, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40bad2	 Bytes: 3
  %loadMem_40bad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bad2 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bad2)
  store %struct.Memory* %call_40bad2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40bad5	 Bytes: 3
  %loadMem_40bad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bad5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bad5)
  store %struct.Memory* %call_40bad5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40bad8	 Bytes: 3
  %loadMem_40bad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bad8 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bad8)
  store %struct.Memory* %call_40bad8, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40badb	 Bytes: 7
  %loadMem_40badb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40badb = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40badb)
  store %struct.Memory* %call_40badb, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 40bae2	 Bytes: 3
  %loadMem_40bae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bae2 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bae2)
  store %struct.Memory* %call_40bae2, %struct.Memory** %MEMORY

  ; Code: je .L_40bba8	 RIP: 40bae5	 Bytes: 6
  %loadMem_40bae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bae5 = call %struct.Memory* @routine_je_.L_40bba8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bae5, i8* %BRANCH_TAKEN, i64 195, i64 6, i64 6)
  store %struct.Memory* %call_40bae5, %struct.Memory** %MEMORY

  %loadBr_40bae5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bae5 = icmp eq i8 %loadBr_40bae5, 1
  br i1 %cmpBr_40bae5, label %block_.L_40bba8, label %block_.L_40baeb

  ; Code: .L_40baeb:	 RIP: 40baeb	 Bytes: 0
block_.L_40baeb:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40baeb	 Bytes: 3
  %loadMem_40baeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40baeb = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40baeb)
  store %struct.Memory* %call_40baeb, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40baee	 Bytes: 3
  %loadMem_40baee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40baee = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40baee)
  store %struct.Memory* %call_40baee, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40baf1	 Bytes: 3
  %loadMem_40baf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40baf1 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40baf1)
  store %struct.Memory* %call_40baf1, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40baf4	 Bytes: 3
  %loadMem_40baf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40baf4 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40baf4)
  store %struct.Memory* %call_40baf4, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40baf7	 Bytes: 8
  %loadMem_40baf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40baf7 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40baf7)
  store %struct.Memory* %call_40baf7, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40baff	 Bytes: 3
  %loadMem_40baff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40baff = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40baff)
  store %struct.Memory* %call_40baff, %struct.Memory** %MEMORY

  ; Code: jne .L_40bb24	 RIP: 40bb02	 Bytes: 6
  %loadMem_40bb02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb02 = call %struct.Memory* @routine_jne_.L_40bb24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb02, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_40bb02, %struct.Memory** %MEMORY

  %loadBr_40bb02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bb02 = icmp eq i8 %loadBr_40bb02, 1
  br i1 %cmpBr_40bb02, label %block_.L_40bb24, label %block_40bb08

block_40bb08:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40bb08	 Bytes: 3
  %loadMem_40bb08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb08 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb08)
  store %struct.Memory* %call_40bb08, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40bb0b	 Bytes: 3
  %loadMem_40bb0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb0b = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb0b)
  store %struct.Memory* %call_40bb0b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40bb0e	 Bytes: 3
  %loadMem_40bb0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb0e = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb0e)
  store %struct.Memory* %call_40bb0e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40bb11	 Bytes: 3
  %loadMem_40bb11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb11 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb11)
  store %struct.Memory* %call_40bb11, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40bb14	 Bytes: 7
  %loadMem_40bb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb14 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb14)
  store %struct.Memory* %call_40bb14, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 40bb1b	 Bytes: 3
  %loadMem_40bb1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb1b = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb1b)
  store %struct.Memory* %call_40bb1b, %struct.Memory** %MEMORY

  ; Code: je .L_40bba8	 RIP: 40bb1e	 Bytes: 6
  %loadMem_40bb1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb1e = call %struct.Memory* @routine_je_.L_40bba8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb1e, i8* %BRANCH_TAKEN, i64 138, i64 6, i64 6)
  store %struct.Memory* %call_40bb1e, %struct.Memory** %MEMORY

  %loadBr_40bb1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bb1e = icmp eq i8 %loadBr_40bb1e, 1
  br i1 %cmpBr_40bb1e, label %block_.L_40bba8, label %block_.L_40bb24

  ; Code: .L_40bb24:	 RIP: 40bb24	 Bytes: 0
block_.L_40bb24:

  ; Code: jmpq .L_40bb29	 RIP: 40bb24	 Bytes: 5
  %loadMem_40bb24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb24 = call %struct.Memory* @routine_jmpq_.L_40bb29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb24, i64 5, i64 5)
  store %struct.Memory* %call_40bb24, %struct.Memory** %MEMORY

  br label %block_.L_40bb29

  ; Code: .L_40bb29:	 RIP: 40bb29	 Bytes: 0
block_.L_40bb29:

  ; Code: movq $0xa7f430, %rax	 RIP: 40bb29	 Bytes: 10
  %loadMem_40bb29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb29 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb29)
  store %struct.Memory* %call_40bb29, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40bb33	 Bytes: 4
  %loadMem_40bb33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb33 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb33)
  store %struct.Memory* %call_40bb33, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40bb37	 Bytes: 7
  %loadMem_40bb37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb37 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb37)
  store %struct.Memory* %call_40bb37, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40bb3e	 Bytes: 3
  %loadMem_40bb3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb3e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb3e)
  store %struct.Memory* %call_40bb3e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 40bb41	 Bytes: 4
  %loadMem_40bb41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb41 = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb41)
  store %struct.Memory* %call_40bb41, %struct.Memory** %MEMORY

  ; Code: jge .L_40bb82	 RIP: 40bb45	 Bytes: 6
  %loadMem_40bb45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb45 = call %struct.Memory* @routine_jge_.L_40bb82(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb45, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_40bb45, %struct.Memory** %MEMORY

  %loadBr_40bb45 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bb45 = icmp eq i8 %loadBr_40bb45, 1
  br i1 %cmpBr_40bb45, label %block_.L_40bb82, label %block_40bb4b

block_40bb4b:
  ; Code: movq $0xa7f430, %rax	 RIP: 40bb4b	 Bytes: 10
  %loadMem_40bb4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb4b = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb4b)
  store %struct.Memory* %call_40bb4b, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40bb55	 Bytes: 3
  %loadMem_40bb55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb55 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb55)
  store %struct.Memory* %call_40bb55, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 40bb58	 Bytes: 3
  %loadMem_40bb58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb58 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb58)
  store %struct.Memory* %call_40bb58, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40bb5b	 Bytes: 4
  %loadMem_40bb5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb5b = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb5b)
  store %struct.Memory* %call_40bb5b, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bb5f	 Bytes: 7
  %loadMem_40bb5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb5f = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb5f)
  store %struct.Memory* %call_40bb5f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40bb66	 Bytes: 3
  %loadMem_40bb66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb66 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb66)
  store %struct.Memory* %call_40bb66, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40bb69	 Bytes: 3
  %loadMem_40bb69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb69 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb69)
  store %struct.Memory* %call_40bb69, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40bb6c	 Bytes: 4
  %loadMem_40bb6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb6c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb6c)
  store %struct.Memory* %call_40bb6c, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bb70	 Bytes: 7
  %loadMem_40bb70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb70 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb70)
  store %struct.Memory* %call_40bb70, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40bb77	 Bytes: 3
  %loadMem_40bb77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb77 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb77)
  store %struct.Memory* %call_40bb77, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 40bb7a	 Bytes: 4
  %loadMem_40bb7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb7a = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb7a)
  store %struct.Memory* %call_40bb7a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 40bb7e	 Bytes: 4
  %loadMem_40bb7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb7e = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb7e)
  store %struct.Memory* %call_40bb7e, %struct.Memory** %MEMORY

  ; Code: .L_40bb82:	 RIP: 40bb82	 Bytes: 0
  br label %block_.L_40bb82
block_.L_40bb82:

  ; Code: movq $0xa7f430, %rax	 RIP: 40bb82	 Bytes: 10
  %loadMem_40bb82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb82 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb82)
  store %struct.Memory* %call_40bb82, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40bb8c	 Bytes: 4
  %loadMem_40bb8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb8c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb8c)
  store %struct.Memory* %call_40bb8c, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40bb90	 Bytes: 7
  %loadMem_40bb90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb90 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb90)
  store %struct.Memory* %call_40bb90, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40bb97	 Bytes: 3
  %loadMem_40bb97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb97 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb97)
  store %struct.Memory* %call_40bb97, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40bb9a	 Bytes: 3
  %loadMem_40bb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb9a = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb9a)
  store %struct.Memory* %call_40bb9a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40bb9d	 Bytes: 3
  %loadMem_40bb9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bb9d = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bb9d)
  store %struct.Memory* %call_40bb9d, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 40bba0	 Bytes: 3
  %loadMem_40bba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bba0 = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bba0)
  store %struct.Memory* %call_40bba0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40bba8	 RIP: 40bba3	 Bytes: 5
  %loadMem_40bba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bba3 = call %struct.Memory* @routine_jmpq_.L_40bba8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bba3, i64 5, i64 5)
  store %struct.Memory* %call_40bba3, %struct.Memory** %MEMORY

  br label %block_.L_40bba8

  ; Code: .L_40bba8:	 RIP: 40bba8	 Bytes: 0
block_.L_40bba8:

  ; Code: jmpq .L_40bd72	 RIP: 40bba8	 Bytes: 5
  %loadMem_40bba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bba8 = call %struct.Memory* @routine_jmpq_.L_40bd72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bba8, i64 458, i64 5)
  store %struct.Memory* %call_40bba8, %struct.Memory** %MEMORY

  br label %block_.L_40bd72

  ; Code: .L_40bbad:	 RIP: 40bbad	 Bytes: 0
block_.L_40bbad:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40bbad	 Bytes: 3
  %loadMem_40bbad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbad = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbad)
  store %struct.Memory* %call_40bbad, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40bbb0	 Bytes: 3
  %loadMem_40bbb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbb0 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbb0)
  store %struct.Memory* %call_40bbb0, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40bbb3	 Bytes: 3
  %loadMem_40bbb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbb3 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbb3)
  store %struct.Memory* %call_40bbb3, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40bbb6	 Bytes: 8
  %loadMem_40bbb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbb6 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbb6)
  store %struct.Memory* %call_40bbb6, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 40bbbe	 Bytes: 3
  %loadMem_40bbbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbbe = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbbe)
  store %struct.Memory* %call_40bbbe, %struct.Memory** %MEMORY

  ; Code: jne .L_40bd6d	 RIP: 40bbc1	 Bytes: 6
  %loadMem_40bbc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbc1 = call %struct.Memory* @routine_jne_.L_40bd6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbc1, i8* %BRANCH_TAKEN, i64 428, i64 6, i64 6)
  store %struct.Memory* %call_40bbc1, %struct.Memory** %MEMORY

  %loadBr_40bbc1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bbc1 = icmp eq i8 %loadBr_40bbc1, 1
  br i1 %cmpBr_40bbc1, label %block_.L_40bd6d, label %block_40bbc7

block_40bbc7:
  ; Code: movq $0xa7f430, %rax	 RIP: 40bbc7	 Bytes: 10
  %loadMem_40bbc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbc7 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbc7)
  store %struct.Memory* %call_40bbc7, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40bbd1	 Bytes: 3
  %loadMem_40bbd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbd1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbd1)
  store %struct.Memory* %call_40bbd1, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 40bbd4	 Bytes: 3
  %loadMem_40bbd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbd4 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbd4)
  store %struct.Memory* %call_40bbd4, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40bbd7	 Bytes: 3
  %loadMem_40bbd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbd7 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbd7)
  store %struct.Memory* %call_40bbd7, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40bbda	 Bytes: 8
  %loadMem_40bbda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbda = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbda)
  store %struct.Memory* %call_40bbda, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bbe2	 Bytes: 7
  %loadMem_40bbe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbe2 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbe2)
  store %struct.Memory* %call_40bbe2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40bbe9	 Bytes: 3
  %loadMem_40bbe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbe9 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbe9)
  store %struct.Memory* %call_40bbe9, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40bbec	 Bytes: 6
  %loadMem_40bbec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbec = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbec)
  store %struct.Memory* %call_40bbec, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40bbf2	 Bytes: 7
  %loadMem_40bbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbf2 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbf2)
  store %struct.Memory* %call_40bbf2, %struct.Memory** %MEMORY

  ; Code: je .L_40bd6d	 RIP: 40bbf9	 Bytes: 6
  %loadMem_40bbf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbf9 = call %struct.Memory* @routine_je_.L_40bd6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbf9, i8* %BRANCH_TAKEN, i64 372, i64 6, i64 6)
  store %struct.Memory* %call_40bbf9, %struct.Memory** %MEMORY

  %loadBr_40bbf9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bbf9 = icmp eq i8 %loadBr_40bbf9, 1
  br i1 %cmpBr_40bbf9, label %block_.L_40bd6d, label %block_40bbff

block_40bbff:
  ; Code: movq $0xa7f430, %rax	 RIP: 40bbff	 Bytes: 10
  %loadMem_40bbff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bbff = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bbff)
  store %struct.Memory* %call_40bbff, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40bc09	 Bytes: 3
  %loadMem_40bc09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc09 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc09)
  store %struct.Memory* %call_40bc09, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 40bc0c	 Bytes: 3
  %loadMem_40bc0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc0c = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc0c)
  store %struct.Memory* %call_40bc0c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40bc0f	 Bytes: 3
  %loadMem_40bc0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc0f = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc0f)
  store %struct.Memory* %call_40bc0f, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40bc12	 Bytes: 7
  %loadMem_40bc12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc12 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc12)
  store %struct.Memory* %call_40bc12, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 40bc19	 Bytes: 3
  %loadMem_40bc19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc19 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc19)
  store %struct.Memory* %call_40bc19, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40bc1c	 Bytes: 4
  %loadMem_40bc1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc1c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc1c)
  store %struct.Memory* %call_40bc1c, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bc20	 Bytes: 7
  %loadMem_40bc20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc20 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc20)
  store %struct.Memory* %call_40bc20, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40bc27	 Bytes: 3
  %loadMem_40bc27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc27 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc27)
  store %struct.Memory* %call_40bc27, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40bc2a	 Bytes: 3
  %loadMem_40bc2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc2a = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc2a)
  store %struct.Memory* %call_40bc2a, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40bc2d	 Bytes: 4
  %loadMem_40bc2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc2d = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc2d)
  store %struct.Memory* %call_40bc2d, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40bc31	 Bytes: 8
  %loadMem_40bc31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc31 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc31)
  store %struct.Memory* %call_40bc31, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40bc39	 Bytes: 3
  %loadMem_40bc39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc39 = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc39)
  store %struct.Memory* %call_40bc39, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40bc3c	 Bytes: 4
  %loadMem_40bc3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc3c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc3c)
  store %struct.Memory* %call_40bc3c, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bc40	 Bytes: 7
  %loadMem_40bc40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc40 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc40)
  store %struct.Memory* %call_40bc40, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40bc47	 Bytes: 3
  %loadMem_40bc47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc47 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc47)
  store %struct.Memory* %call_40bc47, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40bc4a	 Bytes: 3
  %loadMem_40bc4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc4a = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc4a)
  store %struct.Memory* %call_40bc4a, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40bc4d	 Bytes: 3
  %loadMem_40bc4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc4d = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc4d)
  store %struct.Memory* %call_40bc4d, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40bc50	 Bytes: 8
  %loadMem_40bc50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc50 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc50)
  store %struct.Memory* %call_40bc50, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40bc58	 Bytes: 3
  %loadMem_40bc58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc58 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc58)
  store %struct.Memory* %call_40bc58, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40bc5b	 Bytes: 4
  %loadMem_40bc5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc5b = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc5b)
  store %struct.Memory* %call_40bc5b, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40bc5f	 Bytes: 8
  %loadMem_40bc5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc5f = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc5f)
  store %struct.Memory* %call_40bc5f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40bc67	 Bytes: 3
  %loadMem_40bc67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc67 = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc67)
  store %struct.Memory* %call_40bc67, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40bc6a	 Bytes: 3
  %loadMem_40bc6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc6a = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc6a)
  store %struct.Memory* %call_40bc6a, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 40bc6d	 Bytes: 3
  %loadMem_40bc6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc6d = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc6d)
  store %struct.Memory* %call_40bc6d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40bc70	 Bytes: 3
  %loadMem_40bc70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc70 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc70)
  store %struct.Memory* %call_40bc70, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40bc73	 Bytes: 7
  %loadMem_40bc73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc73 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc73)
  store %struct.Memory* %call_40bc73, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40bc7a	 Bytes: 4
  %loadMem_40bc7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc7a = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc7a)
  store %struct.Memory* %call_40bc7a, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bc7e	 Bytes: 7
  %loadMem_40bc7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc7e = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc7e)
  store %struct.Memory* %call_40bc7e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40bc85	 Bytes: 3
  %loadMem_40bc85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc85 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc85)
  store %struct.Memory* %call_40bc85, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40bc88	 Bytes: 3
  %loadMem_40bc88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc88 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc88)
  store %struct.Memory* %call_40bc88, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40bc8b	 Bytes: 4
  %loadMem_40bc8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc8b = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc8b)
  store %struct.Memory* %call_40bc8b, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bc8f	 Bytes: 7
  %loadMem_40bc8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc8f = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc8f)
  store %struct.Memory* %call_40bc8f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40bc96	 Bytes: 3
  %loadMem_40bc96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc96 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc96)
  store %struct.Memory* %call_40bc96, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40bc99	 Bytes: 3
  %loadMem_40bc99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc99 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc99)
  store %struct.Memory* %call_40bc99, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40bc9c	 Bytes: 4
  %loadMem_40bc9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bc9c = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bc9c)
  store %struct.Memory* %call_40bc9c, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40bca0	 Bytes: 3
  %loadMem_40bca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bca0 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bca0)
  store %struct.Memory* %call_40bca0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40bca3	 Bytes: 4
  %loadMem_40bca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bca3 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bca3)
  store %struct.Memory* %call_40bca3, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40bca7	 Bytes: 4
  %loadMem_40bca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bca7 = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bca7)
  store %struct.Memory* %call_40bca7, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40bcab	 Bytes: 3
  %loadMem_40bcab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcab = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcab)
  store %struct.Memory* %call_40bcab, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40bcae	 Bytes: 4
  %loadMem_40bcae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcae = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcae)
  store %struct.Memory* %call_40bcae, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40bcb2	 Bytes: 4
  %loadMem_40bcb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcb2 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcb2)
  store %struct.Memory* %call_40bcb2, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bcb6	 Bytes: 7
  %loadMem_40bcb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcb6 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcb6)
  store %struct.Memory* %call_40bcb6, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40bcbd	 Bytes: 3
  %loadMem_40bcbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcbd = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcbd)
  store %struct.Memory* %call_40bcbd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40bcc0	 Bytes: 3
  %loadMem_40bcc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcc0 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcc0)
  store %struct.Memory* %call_40bcc0, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40bcc3	 Bytes: 4
  %loadMem_40bcc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcc3 = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcc3)
  store %struct.Memory* %call_40bcc3, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40bcc7	 Bytes: 8
  %loadMem_40bcc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcc7 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcc7)
  store %struct.Memory* %call_40bcc7, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40bccf	 Bytes: 3
  %loadMem_40bccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bccf = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bccf)
  store %struct.Memory* %call_40bccf, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40bcd2	 Bytes: 4
  %loadMem_40bcd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcd2 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcd2)
  store %struct.Memory* %call_40bcd2, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bcd6	 Bytes: 7
  %loadMem_40bcd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcd6 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcd6)
  store %struct.Memory* %call_40bcd6, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40bcdd	 Bytes: 3
  %loadMem_40bcdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcdd = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcdd)
  store %struct.Memory* %call_40bcdd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40bce0	 Bytes: 3
  %loadMem_40bce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bce0 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bce0)
  store %struct.Memory* %call_40bce0, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40bce3	 Bytes: 3
  %loadMem_40bce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bce3 = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bce3)
  store %struct.Memory* %call_40bce3, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40bce6	 Bytes: 8
  %loadMem_40bce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bce6 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bce6)
  store %struct.Memory* %call_40bce6, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40bcee	 Bytes: 3
  %loadMem_40bcee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcee = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcee)
  store %struct.Memory* %call_40bcee, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40bcf1	 Bytes: 4
  %loadMem_40bcf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcf1 = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcf1)
  store %struct.Memory* %call_40bcf1, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40bcf5	 Bytes: 8
  %loadMem_40bcf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcf5 = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcf5)
  store %struct.Memory* %call_40bcf5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40bcfd	 Bytes: 3
  %loadMem_40bcfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bcfd = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bcfd)
  store %struct.Memory* %call_40bcfd, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40bd00	 Bytes: 4
  %loadMem_40bd00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd00 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd00)
  store %struct.Memory* %call_40bd00, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40bd04	 Bytes: 7
  %loadMem_40bd04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd04 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd04)
  store %struct.Memory* %call_40bd04, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40bd0b	 Bytes: 4
  %loadMem_40bd0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd0b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd0b)
  store %struct.Memory* %call_40bd0b, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bd0f	 Bytes: 7
  %loadMem_40bd0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd0f = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd0f)
  store %struct.Memory* %call_40bd0f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40bd16	 Bytes: 3
  %loadMem_40bd16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd16 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd16)
  store %struct.Memory* %call_40bd16, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40bd19	 Bytes: 3
  %loadMem_40bd19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd19 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd19)
  store %struct.Memory* %call_40bd19, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40bd1c	 Bytes: 4
  %loadMem_40bd1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd1c = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd1c)
  store %struct.Memory* %call_40bd1c, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bd20	 Bytes: 7
  %loadMem_40bd20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd20 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd20)
  store %struct.Memory* %call_40bd20, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40bd27	 Bytes: 3
  %loadMem_40bd27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd27 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd27)
  store %struct.Memory* %call_40bd27, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40bd2a	 Bytes: 3
  %loadMem_40bd2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd2a = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd2a)
  store %struct.Memory* %call_40bd2a, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40bd2d	 Bytes: 4
  %loadMem_40bd2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd2d = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd2d)
  store %struct.Memory* %call_40bd2d, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40bd31	 Bytes: 3
  %loadMem_40bd31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd31 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd31)
  store %struct.Memory* %call_40bd31, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40bd34	 Bytes: 4
  %loadMem_40bd34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd34 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd34)
  store %struct.Memory* %call_40bd34, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40bd38	 Bytes: 4
  %loadMem_40bd38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd38 = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd38)
  store %struct.Memory* %call_40bd38, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40bd3c	 Bytes: 3
  %loadMem_40bd3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd3c = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd3c)
  store %struct.Memory* %call_40bd3c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40bd3f	 Bytes: 4
  %loadMem_40bd3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd3f = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd3f)
  store %struct.Memory* %call_40bd3f, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 40bd43	 Bytes: 7
  %loadMem_40bd43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd43 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd43)
  store %struct.Memory* %call_40bd43, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 40bd4a	 Bytes: 4
  %loadMem_40bd4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd4a = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd4a)
  store %struct.Memory* %call_40bd4a, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %r8d	 RIP: 40bd4e	 Bytes: 4
  %loadMem_40bd4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd4e = call %struct.Memory* @routine_subl__0x14___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd4e)
  store %struct.Memory* %call_40bd4e, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40bd52	 Bytes: 3
  %loadMem_40bd52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd52 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd52)
  store %struct.Memory* %call_40bd52, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40bd55	 Bytes: 8
  %loadMem_40bd55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd55 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd55)
  store %struct.Memory* %call_40bd55, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bd5d	 Bytes: 7
  %loadMem_40bd5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd5d = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd5d)
  store %struct.Memory* %call_40bd5d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40bd64	 Bytes: 3
  %loadMem_40bd64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd64 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd64)
  store %struct.Memory* %call_40bd64, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 40bd67	 Bytes: 6
  %loadMem_40bd67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd67 = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd67)
  store %struct.Memory* %call_40bd67, %struct.Memory** %MEMORY

  ; Code: .L_40bd6d:	 RIP: 40bd6d	 Bytes: 0
  br label %block_.L_40bd6d
block_.L_40bd6d:

  ; Code: jmpq .L_40bd72	 RIP: 40bd6d	 Bytes: 5
  %loadMem_40bd6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd6d = call %struct.Memory* @routine_jmpq_.L_40bd72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd6d, i64 5, i64 5)
  store %struct.Memory* %call_40bd6d, %struct.Memory** %MEMORY

  br label %block_.L_40bd72

  ; Code: .L_40bd72:	 RIP: 40bd72	 Bytes: 0
block_.L_40bd72:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40bd72	 Bytes: 3
  %loadMem_40bd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd72 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd72)
  store %struct.Memory* %call_40bd72, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40bd75	 Bytes: 3
  %loadMem_40bd75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd75 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd75)
  store %struct.Memory* %call_40bd75, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40bd78	 Bytes: 3
  %loadMem_40bd78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd78 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd78)
  store %struct.Memory* %call_40bd78, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40bd7b	 Bytes: 8
  %loadMem_40bd7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd7b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd7b)
  store %struct.Memory* %call_40bd7b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 40bd83	 Bytes: 3
  %loadMem_40bd83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd83 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd83)
  store %struct.Memory* %call_40bd83, %struct.Memory** %MEMORY

  ; Code: jne .L_40beca	 RIP: 40bd86	 Bytes: 6
  %loadMem_40bd86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd86 = call %struct.Memory* @routine_jne_.L_40beca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd86, i8* %BRANCH_TAKEN, i64 324, i64 6, i64 6)
  store %struct.Memory* %call_40bd86, %struct.Memory** %MEMORY

  %loadBr_40bd86 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bd86 = icmp eq i8 %loadBr_40bd86, 1
  br i1 %cmpBr_40bd86, label %block_.L_40beca, label %block_40bd8c

block_40bd8c:
  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 40bd8c	 Bytes: 4
  %loadMem_40bd8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd8c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd8c)
  store %struct.Memory* %call_40bd8c, %struct.Memory** %MEMORY

  ; Code: jne .L_40bec5	 RIP: 40bd90	 Bytes: 6
  %loadMem_40bd90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd90 = call %struct.Memory* @routine_jne_.L_40bec5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd90, i8* %BRANCH_TAKEN, i64 309, i64 6, i64 6)
  store %struct.Memory* %call_40bd90, %struct.Memory** %MEMORY

  %loadBr_40bd90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bd90 = icmp eq i8 %loadBr_40bd90, 1
  br i1 %cmpBr_40bd90, label %block_.L_40bec5, label %block_40bd96

block_40bd96:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40bd96	 Bytes: 3
  %loadMem_40bd96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd96 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd96)
  store %struct.Memory* %call_40bd96, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40bd99	 Bytes: 3
  %loadMem_40bd99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd99 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd99)
  store %struct.Memory* %call_40bd99, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40bd9c	 Bytes: 3
  %loadMem_40bd9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd9c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd9c)
  store %struct.Memory* %call_40bd9c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40bd9f	 Bytes: 3
  %loadMem_40bd9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bd9f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bd9f)
  store %struct.Memory* %call_40bd9f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40bda2	 Bytes: 8
  %loadMem_40bda2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bda2 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bda2)
  store %struct.Memory* %call_40bda2, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40bdaa	 Bytes: 3
  %loadMem_40bdaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdaa = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdaa)
  store %struct.Memory* %call_40bdaa, %struct.Memory** %MEMORY

  ; Code: jne .L_40bdcf	 RIP: 40bdad	 Bytes: 6
  %loadMem_40bdad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdad = call %struct.Memory* @routine_jne_.L_40bdcf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdad, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_40bdad, %struct.Memory** %MEMORY

  %loadBr_40bdad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bdad = icmp eq i8 %loadBr_40bdad, 1
  br i1 %cmpBr_40bdad, label %block_.L_40bdcf, label %block_40bdb3

block_40bdb3:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40bdb3	 Bytes: 3
  %loadMem_40bdb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdb3 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdb3)
  store %struct.Memory* %call_40bdb3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40bdb6	 Bytes: 3
  %loadMem_40bdb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdb6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdb6)
  store %struct.Memory* %call_40bdb6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40bdb9	 Bytes: 3
  %loadMem_40bdb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdb9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdb9)
  store %struct.Memory* %call_40bdb9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40bdbc	 Bytes: 3
  %loadMem_40bdbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdbc = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdbc)
  store %struct.Memory* %call_40bdbc, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40bdbf	 Bytes: 7
  %loadMem_40bdbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdbf = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdbf)
  store %struct.Memory* %call_40bdbf, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 40bdc6	 Bytes: 3
  %loadMem_40bdc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdc6 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdc6)
  store %struct.Memory* %call_40bdc6, %struct.Memory** %MEMORY

  ; Code: je .L_40bec5	 RIP: 40bdc9	 Bytes: 6
  %loadMem_40bdc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdc9 = call %struct.Memory* @routine_je_.L_40bec5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdc9, i8* %BRANCH_TAKEN, i64 252, i64 6, i64 6)
  store %struct.Memory* %call_40bdc9, %struct.Memory** %MEMORY

  %loadBr_40bdc9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bdc9 = icmp eq i8 %loadBr_40bdc9, 1
  br i1 %cmpBr_40bdc9, label %block_.L_40bec5, label %block_.L_40bdcf

  ; Code: .L_40bdcf:	 RIP: 40bdcf	 Bytes: 0
block_.L_40bdcf:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40bdcf	 Bytes: 3
  %loadMem_40bdcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdcf = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdcf)
  store %struct.Memory* %call_40bdcf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40bdd2	 Bytes: 3
  %loadMem_40bdd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdd2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdd2)
  store %struct.Memory* %call_40bdd2, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40bdd5	 Bytes: 3
  %loadMem_40bdd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdd5 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdd5)
  store %struct.Memory* %call_40bdd5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40bdd8	 Bytes: 3
  %loadMem_40bdd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdd8 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdd8)
  store %struct.Memory* %call_40bdd8, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40bddb	 Bytes: 8
  %loadMem_40bddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bddb = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bddb)
  store %struct.Memory* %call_40bddb, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40bde3	 Bytes: 3
  %loadMem_40bde3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bde3 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bde3)
  store %struct.Memory* %call_40bde3, %struct.Memory** %MEMORY

  ; Code: jne .L_40be08	 RIP: 40bde6	 Bytes: 6
  %loadMem_40bde6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bde6 = call %struct.Memory* @routine_jne_.L_40be08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bde6, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_40bde6, %struct.Memory** %MEMORY

  %loadBr_40bde6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bde6 = icmp eq i8 %loadBr_40bde6, 1
  br i1 %cmpBr_40bde6, label %block_.L_40be08, label %block_40bdec

block_40bdec:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40bdec	 Bytes: 3
  %loadMem_40bdec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdec = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdec)
  store %struct.Memory* %call_40bdec, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40bdef	 Bytes: 3
  %loadMem_40bdef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdef = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdef)
  store %struct.Memory* %call_40bdef, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40bdf2	 Bytes: 3
  %loadMem_40bdf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdf2 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdf2)
  store %struct.Memory* %call_40bdf2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40bdf5	 Bytes: 3
  %loadMem_40bdf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdf5 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdf5)
  store %struct.Memory* %call_40bdf5, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40bdf8	 Bytes: 7
  %loadMem_40bdf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdf8 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdf8)
  store %struct.Memory* %call_40bdf8, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 40bdff	 Bytes: 3
  %loadMem_40bdff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bdff = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bdff)
  store %struct.Memory* %call_40bdff, %struct.Memory** %MEMORY

  ; Code: je .L_40bec5	 RIP: 40be02	 Bytes: 6
  %loadMem_40be02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be02 = call %struct.Memory* @routine_je_.L_40bec5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be02, i8* %BRANCH_TAKEN, i64 195, i64 6, i64 6)
  store %struct.Memory* %call_40be02, %struct.Memory** %MEMORY

  %loadBr_40be02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40be02 = icmp eq i8 %loadBr_40be02, 1
  br i1 %cmpBr_40be02, label %block_.L_40bec5, label %block_.L_40be08

  ; Code: .L_40be08:	 RIP: 40be08	 Bytes: 0
block_.L_40be08:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40be08	 Bytes: 3
  %loadMem_40be08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be08 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be08)
  store %struct.Memory* %call_40be08, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40be0b	 Bytes: 3
  %loadMem_40be0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be0b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be0b)
  store %struct.Memory* %call_40be0b, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40be0e	 Bytes: 3
  %loadMem_40be0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be0e = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be0e)
  store %struct.Memory* %call_40be0e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40be11	 Bytes: 3
  %loadMem_40be11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be11 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be11)
  store %struct.Memory* %call_40be11, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40be14	 Bytes: 8
  %loadMem_40be14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be14 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be14)
  store %struct.Memory* %call_40be14, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40be1c	 Bytes: 3
  %loadMem_40be1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be1c = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be1c)
  store %struct.Memory* %call_40be1c, %struct.Memory** %MEMORY

  ; Code: jne .L_40be41	 RIP: 40be1f	 Bytes: 6
  %loadMem_40be1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be1f = call %struct.Memory* @routine_jne_.L_40be41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be1f, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_40be1f, %struct.Memory** %MEMORY

  %loadBr_40be1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40be1f = icmp eq i8 %loadBr_40be1f, 1
  br i1 %cmpBr_40be1f, label %block_.L_40be41, label %block_40be25

block_40be25:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 40be25	 Bytes: 3
  %loadMem_40be25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be25 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be25)
  store %struct.Memory* %call_40be25, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40be28	 Bytes: 3
  %loadMem_40be28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be28 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be28)
  store %struct.Memory* %call_40be28, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40be2b	 Bytes: 3
  %loadMem_40be2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be2b = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be2b)
  store %struct.Memory* %call_40be2b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40be2e	 Bytes: 3
  %loadMem_40be2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be2e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be2e)
  store %struct.Memory* %call_40be2e, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40be31	 Bytes: 7
  %loadMem_40be31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be31 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be31)
  store %struct.Memory* %call_40be31, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 40be38	 Bytes: 3
  %loadMem_40be38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be38 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be38)
  store %struct.Memory* %call_40be38, %struct.Memory** %MEMORY

  ; Code: je .L_40bec5	 RIP: 40be3b	 Bytes: 6
  %loadMem_40be3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be3b = call %struct.Memory* @routine_je_.L_40bec5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be3b, i8* %BRANCH_TAKEN, i64 138, i64 6, i64 6)
  store %struct.Memory* %call_40be3b, %struct.Memory** %MEMORY

  %loadBr_40be3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40be3b = icmp eq i8 %loadBr_40be3b, 1
  br i1 %cmpBr_40be3b, label %block_.L_40bec5, label %block_.L_40be41

  ; Code: .L_40be41:	 RIP: 40be41	 Bytes: 0
block_.L_40be41:

  ; Code: jmpq .L_40be46	 RIP: 40be41	 Bytes: 5
  %loadMem_40be41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be41 = call %struct.Memory* @routine_jmpq_.L_40be46(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be41, i64 5, i64 5)
  store %struct.Memory* %call_40be41, %struct.Memory** %MEMORY

  br label %block_.L_40be46

  ; Code: .L_40be46:	 RIP: 40be46	 Bytes: 0
block_.L_40be46:

  ; Code: movq $0xa7f430, %rax	 RIP: 40be46	 Bytes: 10
  %loadMem_40be46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be46 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be46)
  store %struct.Memory* %call_40be46, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40be50	 Bytes: 4
  %loadMem_40be50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be50 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be50)
  store %struct.Memory* %call_40be50, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40be54	 Bytes: 7
  %loadMem_40be54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be54 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be54)
  store %struct.Memory* %call_40be54, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40be5b	 Bytes: 3
  %loadMem_40be5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be5b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be5b)
  store %struct.Memory* %call_40be5b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 40be5e	 Bytes: 4
  %loadMem_40be5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be5e = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be5e)
  store %struct.Memory* %call_40be5e, %struct.Memory** %MEMORY

  ; Code: jge .L_40be9f	 RIP: 40be62	 Bytes: 6
  %loadMem_40be62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be62 = call %struct.Memory* @routine_jge_.L_40be9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be62, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_40be62, %struct.Memory** %MEMORY

  %loadBr_40be62 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40be62 = icmp eq i8 %loadBr_40be62, 1
  br i1 %cmpBr_40be62, label %block_.L_40be9f, label %block_40be68

block_40be68:
  ; Code: movq $0xa7f430, %rax	 RIP: 40be68	 Bytes: 10
  %loadMem_40be68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be68 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be68)
  store %struct.Memory* %call_40be68, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40be72	 Bytes: 3
  %loadMem_40be72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be72 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be72)
  store %struct.Memory* %call_40be72, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40be75	 Bytes: 3
  %loadMem_40be75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be75 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be75)
  store %struct.Memory* %call_40be75, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40be78	 Bytes: 4
  %loadMem_40be78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be78 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be78)
  store %struct.Memory* %call_40be78, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40be7c	 Bytes: 7
  %loadMem_40be7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be7c = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be7c)
  store %struct.Memory* %call_40be7c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40be83	 Bytes: 3
  %loadMem_40be83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be83 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be83)
  store %struct.Memory* %call_40be83, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40be86	 Bytes: 3
  %loadMem_40be86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be86 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be86)
  store %struct.Memory* %call_40be86, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40be89	 Bytes: 4
  %loadMem_40be89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be89 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be89)
  store %struct.Memory* %call_40be89, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40be8d	 Bytes: 7
  %loadMem_40be8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be8d = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be8d)
  store %struct.Memory* %call_40be8d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40be94	 Bytes: 3
  %loadMem_40be94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be94 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be94)
  store %struct.Memory* %call_40be94, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 40be97	 Bytes: 4
  %loadMem_40be97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be97 = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be97)
  store %struct.Memory* %call_40be97, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 40be9b	 Bytes: 4
  %loadMem_40be9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be9b = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be9b)
  store %struct.Memory* %call_40be9b, %struct.Memory** %MEMORY

  ; Code: .L_40be9f:	 RIP: 40be9f	 Bytes: 0
  br label %block_.L_40be9f
block_.L_40be9f:

  ; Code: movq $0xa7f430, %rax	 RIP: 40be9f	 Bytes: 10
  %loadMem_40be9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40be9f = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40be9f)
  store %struct.Memory* %call_40be9f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 40bea9	 Bytes: 4
  %loadMem_40bea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bea9 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bea9)
  store %struct.Memory* %call_40bea9, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40bead	 Bytes: 7
  %loadMem_40bead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bead = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bead)
  store %struct.Memory* %call_40bead, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40beb4	 Bytes: 3
  %loadMem_40beb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40beb4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40beb4)
  store %struct.Memory* %call_40beb4, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40beb7	 Bytes: 3
  %loadMem_40beb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40beb7 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40beb7)
  store %struct.Memory* %call_40beb7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40beba	 Bytes: 3
  %loadMem_40beba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40beba = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40beba)
  store %struct.Memory* %call_40beba, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 40bebd	 Bytes: 3
  %loadMem_40bebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bebd = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bebd)
  store %struct.Memory* %call_40bebd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40bec5	 RIP: 40bec0	 Bytes: 5
  %loadMem_40bec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bec0 = call %struct.Memory* @routine_jmpq_.L_40bec5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bec0, i64 5, i64 5)
  store %struct.Memory* %call_40bec0, %struct.Memory** %MEMORY

  br label %block_.L_40bec5

  ; Code: .L_40bec5:	 RIP: 40bec5	 Bytes: 0
block_.L_40bec5:

  ; Code: jmpq .L_40c062	 RIP: 40bec5	 Bytes: 5
  %loadMem_40bec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bec5 = call %struct.Memory* @routine_jmpq_.L_40c062(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bec5, i64 413, i64 5)
  store %struct.Memory* %call_40bec5, %struct.Memory** %MEMORY

  br label %block_.L_40c062

  ; Code: .L_40beca:	 RIP: 40beca	 Bytes: 0
block_.L_40beca:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 40beca	 Bytes: 3
  %loadMem_40beca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40beca = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40beca)
  store %struct.Memory* %call_40beca, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40becd	 Bytes: 3
  %loadMem_40becd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40becd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40becd)
  store %struct.Memory* %call_40becd, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40bed0	 Bytes: 3
  %loadMem_40bed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bed0 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bed0)
  store %struct.Memory* %call_40bed0, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40bed3	 Bytes: 8
  %loadMem_40bed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bed3 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bed3)
  store %struct.Memory* %call_40bed3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 40bedb	 Bytes: 3
  %loadMem_40bedb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bedb = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bedb)
  store %struct.Memory* %call_40bedb, %struct.Memory** %MEMORY

  ; Code: jne .L_40c05d	 RIP: 40bede	 Bytes: 6
  %loadMem_40bede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bede = call %struct.Memory* @routine_jne_.L_40c05d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bede, i8* %BRANCH_TAKEN, i64 383, i64 6, i64 6)
  store %struct.Memory* %call_40bede, %struct.Memory** %MEMORY

  %loadBr_40bede = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bede = icmp eq i8 %loadBr_40bede, 1
  br i1 %cmpBr_40bede, label %block_.L_40c05d, label %block_40bee4

block_40bee4:
  ; Code: movq $0xa7f430, %rax	 RIP: 40bee4	 Bytes: 10
  %loadMem_40bee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bee4 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bee4)
  store %struct.Memory* %call_40bee4, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40beee	 Bytes: 3
  %loadMem_40beee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40beee = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40beee)
  store %struct.Memory* %call_40beee, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40bef1	 Bytes: 3
  %loadMem_40bef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bef1 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bef1)
  store %struct.Memory* %call_40bef1, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40bef4	 Bytes: 3
  %loadMem_40bef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bef4 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bef4)
  store %struct.Memory* %call_40bef4, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40bef7	 Bytes: 8
  %loadMem_40bef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bef7 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bef7)
  store %struct.Memory* %call_40bef7, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40beff	 Bytes: 7
  %loadMem_40beff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40beff = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40beff)
  store %struct.Memory* %call_40beff, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40bf06	 Bytes: 3
  %loadMem_40bf06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf06 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf06)
  store %struct.Memory* %call_40bf06, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40bf09	 Bytes: 6
  %loadMem_40bf09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf09 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf09)
  store %struct.Memory* %call_40bf09, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40bf0f	 Bytes: 7
  %loadMem_40bf0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf0f = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf0f)
  store %struct.Memory* %call_40bf0f, %struct.Memory** %MEMORY

  ; Code: je .L_40c05d	 RIP: 40bf16	 Bytes: 6
  %loadMem_40bf16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf16 = call %struct.Memory* @routine_je_.L_40c05d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf16, i8* %BRANCH_TAKEN, i64 327, i64 6, i64 6)
  store %struct.Memory* %call_40bf16, %struct.Memory** %MEMORY

  %loadBr_40bf16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40bf16 = icmp eq i8 %loadBr_40bf16, 1
  br i1 %cmpBr_40bf16, label %block_.L_40c05d, label %block_40bf1c

block_40bf1c:
  ; Code: movq $0xa7f430, %rax	 RIP: 40bf1c	 Bytes: 10
  %loadMem_40bf1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf1c = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf1c)
  store %struct.Memory* %call_40bf1c, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40bf26	 Bytes: 3
  %loadMem_40bf26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf26 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf26)
  store %struct.Memory* %call_40bf26, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40bf29	 Bytes: 3
  %loadMem_40bf29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf29 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf29)
  store %struct.Memory* %call_40bf29, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40bf2c	 Bytes: 3
  %loadMem_40bf2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf2c = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf2c)
  store %struct.Memory* %call_40bf2c, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40bf2f	 Bytes: 7
  %loadMem_40bf2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf2f = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf2f)
  store %struct.Memory* %call_40bf2f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 40bf36	 Bytes: 3
  %loadMem_40bf36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf36 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf36)
  store %struct.Memory* %call_40bf36, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40bf39	 Bytes: 4
  %loadMem_40bf39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf39 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf39)
  store %struct.Memory* %call_40bf39, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bf3d	 Bytes: 7
  %loadMem_40bf3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf3d = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf3d)
  store %struct.Memory* %call_40bf3d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40bf44	 Bytes: 3
  %loadMem_40bf44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf44 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf44)
  store %struct.Memory* %call_40bf44, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40bf47	 Bytes: 3
  %loadMem_40bf47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf47 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf47)
  store %struct.Memory* %call_40bf47, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40bf4a	 Bytes: 4
  %loadMem_40bf4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf4a = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf4a)
  store %struct.Memory* %call_40bf4a, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40bf4e	 Bytes: 8
  %loadMem_40bf4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf4e = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf4e)
  store %struct.Memory* %call_40bf4e, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40bf56	 Bytes: 3
  %loadMem_40bf56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf56 = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf56)
  store %struct.Memory* %call_40bf56, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40bf59	 Bytes: 4
  %loadMem_40bf59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf59 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf59)
  store %struct.Memory* %call_40bf59, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bf5d	 Bytes: 7
  %loadMem_40bf5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf5d = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf5d)
  store %struct.Memory* %call_40bf5d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40bf64	 Bytes: 3
  %loadMem_40bf64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf64 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf64)
  store %struct.Memory* %call_40bf64, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40bf67	 Bytes: 3
  %loadMem_40bf67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf67 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf67)
  store %struct.Memory* %call_40bf67, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40bf6a	 Bytes: 3
  %loadMem_40bf6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf6a = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf6a)
  store %struct.Memory* %call_40bf6a, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40bf6d	 Bytes: 8
  %loadMem_40bf6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf6d = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf6d)
  store %struct.Memory* %call_40bf6d, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40bf75	 Bytes: 3
  %loadMem_40bf75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf75 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf75)
  store %struct.Memory* %call_40bf75, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40bf78	 Bytes: 4
  %loadMem_40bf78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf78 = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf78)
  store %struct.Memory* %call_40bf78, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40bf7c	 Bytes: 8
  %loadMem_40bf7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf7c = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf7c)
  store %struct.Memory* %call_40bf7c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40bf84	 Bytes: 3
  %loadMem_40bf84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf84 = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf84)
  store %struct.Memory* %call_40bf84, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 40bf87	 Bytes: 3
  %loadMem_40bf87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf87 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf87)
  store %struct.Memory* %call_40bf87, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40bf8a	 Bytes: 3
  %loadMem_40bf8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf8a = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf8a)
  store %struct.Memory* %call_40bf8a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40bf8d	 Bytes: 3
  %loadMem_40bf8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf8d = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf8d)
  store %struct.Memory* %call_40bf8d, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40bf90	 Bytes: 7
  %loadMem_40bf90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf90 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf90)
  store %struct.Memory* %call_40bf90, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40bf97	 Bytes: 4
  %loadMem_40bf97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf97 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf97)
  store %struct.Memory* %call_40bf97, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bf9b	 Bytes: 7
  %loadMem_40bf9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bf9b = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bf9b)
  store %struct.Memory* %call_40bf9b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40bfa2	 Bytes: 3
  %loadMem_40bfa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfa2 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfa2)
  store %struct.Memory* %call_40bfa2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40bfa5	 Bytes: 3
  %loadMem_40bfa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfa5 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfa5)
  store %struct.Memory* %call_40bfa5, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 40bfa8	 Bytes: 4
  %loadMem_40bfa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfa8 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfa8)
  store %struct.Memory* %call_40bfa8, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bfac	 Bytes: 7
  %loadMem_40bfac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfac = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfac)
  store %struct.Memory* %call_40bfac, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40bfb3	 Bytes: 3
  %loadMem_40bfb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfb3 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfb3)
  store %struct.Memory* %call_40bfb3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40bfb6	 Bytes: 3
  %loadMem_40bfb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfb6 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfb6)
  store %struct.Memory* %call_40bfb6, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40bfb9	 Bytes: 4
  %loadMem_40bfb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfb9 = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfb9)
  store %struct.Memory* %call_40bfb9, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40bfbd	 Bytes: 3
  %loadMem_40bfbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfbd = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfbd)
  store %struct.Memory* %call_40bfbd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40bfc0	 Bytes: 4
  %loadMem_40bfc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfc0 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfc0)
  store %struct.Memory* %call_40bfc0, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40bfc4	 Bytes: 4
  %loadMem_40bfc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfc4 = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfc4)
  store %struct.Memory* %call_40bfc4, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40bfc8	 Bytes: 3
  %loadMem_40bfc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfc8 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfc8)
  store %struct.Memory* %call_40bfc8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40bfcb	 Bytes: 4
  %loadMem_40bfcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfcb = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfcb)
  store %struct.Memory* %call_40bfcb, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 40bfcf	 Bytes: 4
  %loadMem_40bfcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfcf = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfcf)
  store %struct.Memory* %call_40bfcf, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bfd3	 Bytes: 7
  %loadMem_40bfd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfd3 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfd3)
  store %struct.Memory* %call_40bfd3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40bfda	 Bytes: 3
  %loadMem_40bfda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfda = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfda)
  store %struct.Memory* %call_40bfda, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40bfdd	 Bytes: 3
  %loadMem_40bfdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfdd = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfdd)
  store %struct.Memory* %call_40bfdd, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsi	 RIP: 40bfe0	 Bytes: 4
  %loadMem_40bfe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfe0 = call %struct.Memory* @routine_addq__0x60___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfe0)
  store %struct.Memory* %call_40bfe0, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40bfe4	 Bytes: 8
  %loadMem_40bfe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfe4 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfe4)
  store %struct.Memory* %call_40bfe4, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%rdx)	 RIP: 40bfec	 Bytes: 3
  %loadMem_40bfec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfec = call %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfec)
  store %struct.Memory* %call_40bfec, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 40bfef	 Bytes: 4
  %loadMem_40bfef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bfef = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bfef)
  store %struct.Memory* %call_40bfef, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40bff3	 Bytes: 7
  %loadMem_40bff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bff3 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bff3)
  store %struct.Memory* %call_40bff3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40bffa	 Bytes: 3
  %loadMem_40bffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bffa = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bffa)
  store %struct.Memory* %call_40bffa, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40bffd	 Bytes: 3
  %loadMem_40bffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40bffd = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40bffd)
  store %struct.Memory* %call_40bffd, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rsi), %ecx	 RIP: 40c000	 Bytes: 3
  %loadMem_40c000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c000 = call %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c000)
  store %struct.Memory* %call_40c000, %struct.Memory** %MEMORY

  ; Code: movq 0xa0e710, %rdx	 RIP: 40c003	 Bytes: 8
  %loadMem_40c003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c003 = call %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c003)
  store %struct.Memory* %call_40c003, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 40c00b	 Bytes: 3
  %loadMem_40c00b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c00b = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c00b)
  store %struct.Memory* %call_40c00b, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsi	 RIP: 40c00e	 Bytes: 4
  %loadMem_40c00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c00e = call %struct.Memory* @routine_addq__0x10___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c00e)
  store %struct.Memory* %call_40c00e, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xa0e710	 RIP: 40c012	 Bytes: 8
  %loadMem_40c012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c012 = call %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c012)
  store %struct.Memory* %call_40c012, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rdx)	 RIP: 40c01a	 Bytes: 3
  %loadMem_40c01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c01a = call %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c01a)
  store %struct.Memory* %call_40c01a, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40c01d	 Bytes: 4
  %loadMem_40c01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c01d = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c01d)
  store %struct.Memory* %call_40c01d, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40c021	 Bytes: 7
  %loadMem_40c021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c021 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c021)
  store %struct.Memory* %call_40c021, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 40c028	 Bytes: 4
  %loadMem_40c028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c028 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c028)
  store %struct.Memory* %call_40c028, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c02c	 Bytes: 7
  %loadMem_40c02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c02c = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c02c)
  store %struct.Memory* %call_40c02c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40c033	 Bytes: 3
  %loadMem_40c033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c033 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c033)
  store %struct.Memory* %call_40c033, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40c036	 Bytes: 3
  %loadMem_40c036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c036 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c036)
  store %struct.Memory* %call_40c036, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 40c039	 Bytes: 4
  %loadMem_40c039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c039 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c039)
  store %struct.Memory* %call_40c039, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40c03d	 Bytes: 7
  %loadMem_40c03d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c03d = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c03d)
  store %struct.Memory* %call_40c03d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40c044	 Bytes: 3
  %loadMem_40c044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c044 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c044)
  store %struct.Memory* %call_40c044, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rax), %r8d	 RIP: 40c047	 Bytes: 4
  %loadMem_40c047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c047 = call %struct.Memory* @routine_movl_0x60__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c047)
  store %struct.Memory* %call_40c047, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 40c04b	 Bytes: 3
  %loadMem_40c04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c04b = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c04b)
  store %struct.Memory* %call_40c04b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 40c04e	 Bytes: 4
  %loadMem_40c04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c04e = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c04e)
  store %struct.Memory* %call_40c04e, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rax)	 RIP: 40c052	 Bytes: 4
  %loadMem_40c052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c052 = call %struct.Memory* @routine_movl__r9d__0x60__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c052)
  store %struct.Memory* %call_40c052, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rax	 RIP: 40c056	 Bytes: 3
  %loadMem_40c056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c056 = call %struct.Memory* @routine_movslq__r8d___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c056)
  store %struct.Memory* %call_40c056, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rax,4)	 RIP: 40c059	 Bytes: 4
  %loadMem_40c059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c059 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c059)
  store %struct.Memory* %call_40c059, %struct.Memory** %MEMORY

  ; Code: .L_40c05d:	 RIP: 40c05d	 Bytes: 0
  br label %block_.L_40c05d
block_.L_40c05d:

  ; Code: jmpq .L_40c062	 RIP: 40c05d	 Bytes: 5
  %loadMem_40c05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c05d = call %struct.Memory* @routine_jmpq_.L_40c062(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c05d, i64 5, i64 5)
  store %struct.Memory* %call_40c05d, %struct.Memory** %MEMORY

  br label %block_.L_40c062

  ; Code: .L_40c062:	 RIP: 40c062	 Bytes: 0
block_.L_40c062:

  ; Code: addq $0x30, %rsp	 RIP: 40c062	 Bytes: 4
  %loadMem_40c062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c062 = call %struct.Memory* @routine_addq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c062)
  store %struct.Memory* %call_40c062, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 40c066	 Bytes: 1
  %loadMem_40c066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c066 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c066)
  store %struct.Memory* %call_40c066, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40c067	 Bytes: 1
  %loadMem_40c067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40c067 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40c067)
  store %struct.Memory* %call_40c067, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40c067
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

define %struct.Memory* @routine_movq__0xaaba30___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xaaba30_type* @G__0xaaba30 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0xa7f430___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0xa7f430_type* @G__0xa7f430 to i64))
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


define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl_0xb89e60___r8_1____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 9
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_subl_MINUS0x14__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movslq_MINUS0x8__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
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

define %struct.Memory* @routine_imulq__0x2e8___r8___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 744)
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

define %struct.Memory* @routine_addq__r8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x8__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0xaaba30___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 11188784
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_shlq__0x2___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_0xaaba30___rax_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 11188784
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_addq__0x10___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 16)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rcx__0xa0e710(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xa0e710_type* @G_0xa0e710 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_movl__edx__0xaaba30___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 11188784
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 28
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

define %struct.Memory* @routine_jge_.L_40b2df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addq__rcx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_addq__0x8___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 8)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rdx____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl_0x8__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__esi__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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








define %struct.Memory* @routine_movl__esi__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_addq__0x4___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 4)
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










define %struct.Memory* @routine_movl_0x4__rsi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
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


define %struct.Memory* @routine_movl__ecx__0x4__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jle_.L_40b38b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_callq_.update_liberties(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_40b396(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_callq_.remove_liberty(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x99da08___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__eax__0x99da08(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64), i64 %10)
  ret %struct.Memory* %13
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








define %struct.Memory* @routine_cmpl_0x60__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 96
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_40b41b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movslq_0x64__rsi__rdx_4____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 100
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %16)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_jmpq_.L_40b3ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_jne_.L_40b573(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_jne_.L_40b56e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 20
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_40b478(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_je_.L_40b56e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_40b4b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_40b4ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_40b4ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_40b548(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40b56e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_40b738(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 24
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_40b733(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_40b733(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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
























define %struct.Memory* @routine_jne_.L_40b890(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_40b88b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_40b795(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_40b88b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_40b7ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_40b807(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_40b80c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_40b865(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































define %struct.Memory* @routine_jmpq_.L_40b88b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_40ba55(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_40ba50(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_40ba50(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








































































define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
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
























define %struct.Memory* @routine_jne_.L_40bbad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_40bba8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_40bab2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_40bba8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_40baeb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_40bb24(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_40bb29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_40bb82(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































define %struct.Memory* @routine_jmpq_.L_40bba8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_40bd72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_40bd6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_40bd6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








































































define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
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
























define %struct.Memory* @routine_jne_.L_40beca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_40bec5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_40bdcf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_40bec5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_40be08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_40be41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_40be46(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_40be9f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








































define %struct.Memory* @routine_jmpq_.L_40bec5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_40c062(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_40c05d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_40c05d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








































































define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
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

