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

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4774b0.increase_depth_values(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_431e70.defense_move_reason_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_46a780.find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_432520.add_defense_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_431d30.attack_move_reason_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_432120.add_attack_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4774c0.decrease_depth_values(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x7ae438_type = type <{ [4 x i8] }>
@G_0x7ae438= global %G_0x7ae438_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0f28_type = type <{ [1 x i8] }>
@G_0xab0f28= global %G_0xab0f28_type <{ [1 x i8] c"\00" }>
%G__0x57c2fd_type = type <{ [8 x i8] }>
@G__0x57c2fd= global %G__0x57c2fd_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x581d46_type = type <{ [8 x i8] }>
@G__0x581d46= global %G__0x581d46_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582d8c_type = type <{ [8 x i8] }>
@G__0x582d8c= global %G__0x582d8c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582dd0_type = type <{ [8 x i8] }>
@G__0x582dd0= global %G__0x582dd0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582e06_type = type <{ [8 x i8] }>
@G__0x582e06= global %G__0x582e06_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586073_type = type <{ [8 x i8] }>
@G__0x586073= global %G__0x586073_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xafdfc0_type = type <{ [8 x i8] }>
@G__0xafdfc0= global %G__0xafdfc0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
@G__0xb0eff0= global %G__0xb0eff0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb9d8f0_type = type <{ [8 x i8] }>
@G__0xb9d8f0= global %G__0xb9d8f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @find_more_attack_and_defense_moves(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .find_more_attack_and_defense_moves:	 RIP: 47c870	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 47c870	 Bytes: 1
  %loadMem_47c870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c870 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c870)
  store %struct.Memory* %call_47c870, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 47c871	 Bytes: 3
  %loadMem_47c871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c871 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c871)
  store %struct.Memory* %call_47c871, %struct.Memory** %MEMORY

  ; Code: subq $0x430, %rsp	 RIP: 47c874	 Bytes: 7
  %loadMem_47c874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c874 = call %struct.Memory* @routine_subq__0x430___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c874)
  store %struct.Memory* %call_47c874, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 47c87b	 Bytes: 5
  %loadMem_47c87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c87b = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c87b)
  store %struct.Memory* %call_47c87b, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 47c880	 Bytes: 3
  %loadMem_47c880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c880 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c880)
  store %struct.Memory* %call_47c880, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3d4(%rbp)	 RIP: 47c883	 Bytes: 10
  %loadMem_47c883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c883 = call %struct.Memory* @routine_movl__0x0__MINUS0x3d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c883)
  store %struct.Memory* %call_47c883, %struct.Memory** %MEMORY

  ; Code: subl -0x4(%rbp), %eax	 RIP: 47c88d	 Bytes: 3
  %loadMem_47c88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c88d = call %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c88d)
  store %struct.Memory* %call_47c88d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3e8(%rbp)	 RIP: 47c890	 Bytes: 6
  %loadMem_47c890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c890 = call %struct.Memory* @routine_movl__eax__MINUS0x3e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c890)
  store %struct.Memory* %call_47c890, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 47c896	 Bytes: 8
  %loadMem_47c896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c896 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c896)
  store %struct.Memory* %call_47c896, %struct.Memory** %MEMORY

  ; Code: jne .L_47c8a9	 RIP: 47c89e	 Bytes: 6
  %loadMem_47c89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c89e = call %struct.Memory* @routine_jne_.L_47c8a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c89e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47c89e, %struct.Memory** %MEMORY

  %loadBr_47c89e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c89e = icmp eq i8 %loadBr_47c89e, 1
  br i1 %cmpBr_47c89e, label %block_.L_47c8a9, label %block_47c8a4

block_47c8a4:
  ; Code: jmpq .L_47c8c0	 RIP: 47c8a4	 Bytes: 5
  %loadMem_47c8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c8a4 = call %struct.Memory* @routine_jmpq_.L_47c8c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c8a4, i64 28, i64 5)
  store %struct.Memory* %call_47c8a4, %struct.Memory** %MEMORY

  br label %block_.L_47c8c0

  ; Code: .L_47c8a9:	 RIP: 47c8a9	 Bytes: 0
block_.L_47c8a9:

  ; Code: movq $0x582d8c, %rdi	 RIP: 47c8a9	 Bytes: 10
  %loadMem_47c8a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c8a9 = call %struct.Memory* @routine_movq__0x582d8c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c8a9)
  store %struct.Memory* %call_47c8a9, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 47c8b3	 Bytes: 2
  %loadMem_47c8b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c8b3 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c8b3)
  store %struct.Memory* %call_47c8b3, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 47c8b5	 Bytes: 5
  %loadMem1_47c8b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47c8b5 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47c8b5, i64 -174853, i64 5, i64 5)
  store %struct.Memory* %call1_47c8b5, %struct.Memory** %MEMORY

  %loadMem2_47c8b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47c8b5 = load i64, i64* %3
  %call2_47c8b5 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_47c8b5, %struct.Memory* %loadMem2_47c8b5)
  store %struct.Memory* %call2_47c8b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x414(%rbp)	 RIP: 47c8ba	 Bytes: 6
  %loadMem_47c8ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c8ba = call %struct.Memory* @routine_movl__eax__MINUS0x414__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c8ba)
  store %struct.Memory* %call_47c8ba, %struct.Memory** %MEMORY

  ; Code: .L_47c8c0:	 RIP: 47c8c0	 Bytes: 0
  br label %block_.L_47c8c0
block_.L_47c8c0:

  ; Code: movl $0x0, -0x3d8(%rbp)	 RIP: 47c8c0	 Bytes: 10
  %loadMem_47c8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c8c0 = call %struct.Memory* @routine_movl__0x0__MINUS0x3d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c8c0)
  store %struct.Memory* %call_47c8c0, %struct.Memory** %MEMORY

  ; Code: .L_47c8ca:	 RIP: 47c8ca	 Bytes: 0
  br label %block_.L_47c8ca
block_.L_47c8ca:

  ; Code: movl -0x3d8(%rbp), %eax	 RIP: 47c8ca	 Bytes: 6
  %loadMem_47c8ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c8ca = call %struct.Memory* @routine_movl_MINUS0x3d8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c8ca)
  store %struct.Memory* %call_47c8ca, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 47c8d0	 Bytes: 7
  %loadMem_47c8d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c8d0 = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c8d0)
  store %struct.Memory* %call_47c8d0, %struct.Memory** %MEMORY

  ; Code: jge .L_47c9f4	 RIP: 47c8d7	 Bytes: 6
  %loadMem_47c8d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c8d7 = call %struct.Memory* @routine_jge_.L_47c9f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c8d7, i8* %BRANCH_TAKEN, i64 285, i64 6, i64 6)
  store %struct.Memory* %call_47c8d7, %struct.Memory** %MEMORY

  %loadBr_47c8d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c8d7 = icmp eq i8 %loadBr_47c8d7, 1
  br i1 %cmpBr_47c8d7, label %block_.L_47c9f4, label %block_47c8dd

block_47c8dd:
  ; Code: movl $0x0, -0x3dc(%rbp)	 RIP: 47c8dd	 Bytes: 10
  %loadMem_47c8dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c8dd = call %struct.Memory* @routine_movl__0x0__MINUS0x3dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c8dd)
  store %struct.Memory* %call_47c8dd, %struct.Memory** %MEMORY

  ; Code: .L_47c8e7:	 RIP: 47c8e7	 Bytes: 0
  br label %block_.L_47c8e7
block_.L_47c8e7:

  ; Code: movl -0x3dc(%rbp), %eax	 RIP: 47c8e7	 Bytes: 6
  %loadMem_47c8e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c8e7 = call %struct.Memory* @routine_movl_MINUS0x3dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c8e7)
  store %struct.Memory* %call_47c8e7, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 47c8ed	 Bytes: 7
  %loadMem_47c8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c8ed = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c8ed)
  store %struct.Memory* %call_47c8ed, %struct.Memory** %MEMORY

  ; Code: jge .L_47c9db	 RIP: 47c8f4	 Bytes: 6
  %loadMem_47c8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c8f4 = call %struct.Memory* @routine_jge_.L_47c9db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c8f4, i8* %BRANCH_TAKEN, i64 231, i64 6, i64 6)
  store %struct.Memory* %call_47c8f4, %struct.Memory** %MEMORY

  %loadBr_47c8f4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c8f4 = icmp eq i8 %loadBr_47c8f4, 1
  br i1 %cmpBr_47c8f4, label %block_.L_47c9db, label %block_47c8fa

block_47c8fa:
  ; Code: imull $0x14, -0x3d8(%rbp), %eax	 RIP: 47c8fa	 Bytes: 7
  %loadMem_47c8fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c8fa = call %struct.Memory* @routine_imull__0x14__MINUS0x3d8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c8fa)
  store %struct.Memory* %call_47c8fa, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 47c901	 Bytes: 3
  %loadMem_47c901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c901 = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c901)
  store %struct.Memory* %call_47c901, %struct.Memory** %MEMORY

  ; Code: addl -0x3dc(%rbp), %eax	 RIP: 47c904	 Bytes: 6
  %loadMem_47c904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c904 = call %struct.Memory* @routine_addl_MINUS0x3dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c904)
  store %struct.Memory* %call_47c904, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3e0(%rbp)	 RIP: 47c90a	 Bytes: 6
  %loadMem_47c90a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c90a = call %struct.Memory* @routine_movl__eax__MINUS0x3e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c90a)
  store %struct.Memory* %call_47c90a, %struct.Memory** %MEMORY

  ; Code: movslq -0x3e0(%rbp), %rcx	 RIP: 47c910	 Bytes: 7
  %loadMem_47c910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c910 = call %struct.Memory* @routine_movslq_MINUS0x3e0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c910)
  store %struct.Memory* %call_47c910, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 47c917	 Bytes: 8
  %loadMem_47c917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c917 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c917)
  store %struct.Memory* %call_47c917, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47c91f	 Bytes: 3
  %loadMem_47c91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c91f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c91f)
  store %struct.Memory* %call_47c91f, %struct.Memory** %MEMORY

  ; Code: je .L_47c9c2	 RIP: 47c922	 Bytes: 6
  %loadMem_47c922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c922 = call %struct.Memory* @routine_je_.L_47c9c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c922, i8* %BRANCH_TAKEN, i64 160, i64 6, i64 6)
  store %struct.Memory* %call_47c922, %struct.Memory** %MEMORY

  %loadBr_47c922 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c922 = icmp eq i8 %loadBr_47c922, 1
  br i1 %cmpBr_47c922, label %block_.L_47c9c2, label %block_47c928

block_47c928:
  ; Code: movq $0xb0eff0, %rax	 RIP: 47c928	 Bytes: 10
  %loadMem_47c928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c928 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c928)
  store %struct.Memory* %call_47c928, %struct.Memory** %MEMORY

  ; Code: movslq -0x3e0(%rbp), %rcx	 RIP: 47c932	 Bytes: 7
  %loadMem_47c932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c932 = call %struct.Memory* @routine_movslq_MINUS0x3e0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c932)
  store %struct.Memory* %call_47c932, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 47c939	 Bytes: 7
  %loadMem_47c939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c939 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c939)
  store %struct.Memory* %call_47c939, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47c940	 Bytes: 3
  %loadMem_47c940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c940 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c940)
  store %struct.Memory* %call_47c940, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 47c943	 Bytes: 3
  %loadMem_47c943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c943 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c943)
  store %struct.Memory* %call_47c943, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3e0(%rbp), %edx	 RIP: 47c946	 Bytes: 6
  %loadMem_47c946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c946 = call %struct.Memory* @routine_cmpl_MINUS0x3e0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c946)
  store %struct.Memory* %call_47c946, %struct.Memory** %MEMORY

  ; Code: jne .L_47c9c2	 RIP: 47c94c	 Bytes: 6
  %loadMem_47c94c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c94c = call %struct.Memory* @routine_jne_.L_47c9c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c94c, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_47c94c, %struct.Memory** %MEMORY

  %loadBr_47c94c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c94c = icmp eq i8 %loadBr_47c94c, 1
  br i1 %cmpBr_47c94c, label %block_.L_47c9c2, label %block_47c952

block_47c952:
  ; Code: movq $0xb0eff0, %rax	 RIP: 47c952	 Bytes: 10
  %loadMem_47c952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c952 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c952)
  store %struct.Memory* %call_47c952, %struct.Memory** %MEMORY

  ; Code: movslq -0x3e0(%rbp), %rcx	 RIP: 47c95c	 Bytes: 7
  %loadMem_47c95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c95c = call %struct.Memory* @routine_movslq_MINUS0x3e0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c95c)
  store %struct.Memory* %call_47c95c, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 47c963	 Bytes: 7
  %loadMem_47c963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c963 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c963)
  store %struct.Memory* %call_47c963, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47c96a	 Bytes: 3
  %loadMem_47c96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c96a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c96a)
  store %struct.Memory* %call_47c96a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x64(%rax)	 RIP: 47c96d	 Bytes: 4
  %loadMem_47c96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c96d = call %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c96d)
  store %struct.Memory* %call_47c96d, %struct.Memory** %MEMORY

  ; Code: je .L_47c9c2	 RIP: 47c971	 Bytes: 6
  %loadMem_47c971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c971 = call %struct.Memory* @routine_je_.L_47c9c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c971, i8* %BRANCH_TAKEN, i64 81, i64 6, i64 6)
  store %struct.Memory* %call_47c971, %struct.Memory** %MEMORY

  %loadBr_47c971 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c971 = icmp eq i8 %loadBr_47c971, 1
  br i1 %cmpBr_47c971, label %block_.L_47c9c2, label %block_47c977

block_47c977:
  ; Code: movq $0xb0eff0, %rax	 RIP: 47c977	 Bytes: 10
  %loadMem_47c977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c977 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c977)
  store %struct.Memory* %call_47c977, %struct.Memory** %MEMORY

  ; Code: movslq -0x3e0(%rbp), %rcx	 RIP: 47c981	 Bytes: 7
  %loadMem_47c981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c981 = call %struct.Memory* @routine_movslq_MINUS0x3e0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c981)
  store %struct.Memory* %call_47c981, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 47c988	 Bytes: 7
  %loadMem_47c988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c988 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c988)
  store %struct.Memory* %call_47c988, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47c98f	 Bytes: 3
  %loadMem_47c98f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c98f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c98f)
  store %struct.Memory* %call_47c98f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb4(%rax)	 RIP: 47c992	 Bytes: 7
  %loadMem_47c992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c992 = call %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c992)
  store %struct.Memory* %call_47c992, %struct.Memory** %MEMORY

  ; Code: je .L_47c9c2	 RIP: 47c999	 Bytes: 6
  %loadMem_47c999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c999 = call %struct.Memory* @routine_je_.L_47c9c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c999, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_47c999, %struct.Memory** %MEMORY

  %loadBr_47c999 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c999 = icmp eq i8 %loadBr_47c999, 1
  br i1 %cmpBr_47c999, label %block_.L_47c9c2, label %block_47c99f

block_47c99f:
  ; Code: movl -0x3e0(%rbp), %eax	 RIP: 47c99f	 Bytes: 6
  %loadMem_47c99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c99f = call %struct.Memory* @routine_movl_MINUS0x3e0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c99f)
  store %struct.Memory* %call_47c99f, %struct.Memory** %MEMORY

  ; Code: movslq -0x3d4(%rbp), %rcx	 RIP: 47c9a5	 Bytes: 7
  %loadMem_47c9a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9a5 = call %struct.Memory* @routine_movslq_MINUS0x3d4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9a5)
  store %struct.Memory* %call_47c9a5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3d0(%rbp,%rcx,4)	 RIP: 47c9ac	 Bytes: 7
  %loadMem_47c9ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9ac = call %struct.Memory* @routine_movl__eax__MINUS0x3d0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9ac)
  store %struct.Memory* %call_47c9ac, %struct.Memory** %MEMORY

  ; Code: movl -0x3d4(%rbp), %eax	 RIP: 47c9b3	 Bytes: 6
  %loadMem_47c9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9b3 = call %struct.Memory* @routine_movl_MINUS0x3d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9b3)
  store %struct.Memory* %call_47c9b3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47c9b9	 Bytes: 3
  %loadMem_47c9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9b9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9b9)
  store %struct.Memory* %call_47c9b9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3d4(%rbp)	 RIP: 47c9bc	 Bytes: 6
  %loadMem_47c9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9bc = call %struct.Memory* @routine_movl__eax__MINUS0x3d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9bc)
  store %struct.Memory* %call_47c9bc, %struct.Memory** %MEMORY

  ; Code: .L_47c9c2:	 RIP: 47c9c2	 Bytes: 0
  br label %block_.L_47c9c2
block_.L_47c9c2:

  ; Code: jmpq .L_47c9c7	 RIP: 47c9c2	 Bytes: 5
  %loadMem_47c9c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9c2 = call %struct.Memory* @routine_jmpq_.L_47c9c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9c2, i64 5, i64 5)
  store %struct.Memory* %call_47c9c2, %struct.Memory** %MEMORY

  br label %block_.L_47c9c7

  ; Code: .L_47c9c7:	 RIP: 47c9c7	 Bytes: 0
block_.L_47c9c7:

  ; Code: movl -0x3dc(%rbp), %eax	 RIP: 47c9c7	 Bytes: 6
  %loadMem_47c9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9c7 = call %struct.Memory* @routine_movl_MINUS0x3dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9c7)
  store %struct.Memory* %call_47c9c7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47c9cd	 Bytes: 3
  %loadMem_47c9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9cd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9cd)
  store %struct.Memory* %call_47c9cd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3dc(%rbp)	 RIP: 47c9d0	 Bytes: 6
  %loadMem_47c9d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9d0 = call %struct.Memory* @routine_movl__eax__MINUS0x3dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9d0)
  store %struct.Memory* %call_47c9d0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47c8e7	 RIP: 47c9d6	 Bytes: 5
  %loadMem_47c9d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9d6 = call %struct.Memory* @routine_jmpq_.L_47c8e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9d6, i64 -239, i64 5)
  store %struct.Memory* %call_47c9d6, %struct.Memory** %MEMORY

  br label %block_.L_47c8e7

  ; Code: .L_47c9db:	 RIP: 47c9db	 Bytes: 0
block_.L_47c9db:

  ; Code: jmpq .L_47c9e0	 RIP: 47c9db	 Bytes: 5
  %loadMem_47c9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9db = call %struct.Memory* @routine_jmpq_.L_47c9e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9db, i64 5, i64 5)
  store %struct.Memory* %call_47c9db, %struct.Memory** %MEMORY

  br label %block_.L_47c9e0

  ; Code: .L_47c9e0:	 RIP: 47c9e0	 Bytes: 0
block_.L_47c9e0:

  ; Code: movl -0x3d8(%rbp), %eax	 RIP: 47c9e0	 Bytes: 6
  %loadMem_47c9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9e0 = call %struct.Memory* @routine_movl_MINUS0x3d8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9e0)
  store %struct.Memory* %call_47c9e0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47c9e6	 Bytes: 3
  %loadMem_47c9e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9e6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9e6)
  store %struct.Memory* %call_47c9e6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3d8(%rbp)	 RIP: 47c9e9	 Bytes: 6
  %loadMem_47c9e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9e9 = call %struct.Memory* @routine_movl__eax__MINUS0x3d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9e9)
  store %struct.Memory* %call_47c9e9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47c8ca	 RIP: 47c9ef	 Bytes: 5
  %loadMem_47c9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9ef = call %struct.Memory* @routine_jmpq_.L_47c8ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9ef, i64 -293, i64 5)
  store %struct.Memory* %call_47c9ef, %struct.Memory** %MEMORY

  br label %block_.L_47c8ca

  ; Code: .L_47c9f4:	 RIP: 47c9f4	 Bytes: 0
block_.L_47c9f4:

  ; Code: callq .increase_depth_values	 RIP: 47c9f4	 Bytes: 5
  %loadMem1_47c9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47c9f4 = call %struct.Memory* @routine_callq_.increase_depth_values(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47c9f4, i64 -21828, i64 5, i64 5)
  store %struct.Memory* %call1_47c9f4, %struct.Memory** %MEMORY

  %loadMem2_47c9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47c9f4 = load i64, i64* %3
  %call2_47c9f4 = call %struct.Memory* @sub_4774b0.increase_depth_values(%struct.State* %0, i64  %loadPC_47c9f4, %struct.Memory* %loadMem2_47c9f4)
  store %struct.Memory* %call2_47c9f4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3d8(%rbp)	 RIP: 47c9f9	 Bytes: 10
  %loadMem_47c9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47c9f9 = call %struct.Memory* @routine_movl__0x0__MINUS0x3d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47c9f9)
  store %struct.Memory* %call_47c9f9, %struct.Memory** %MEMORY

  ; Code: .L_47ca03:	 RIP: 47ca03	 Bytes: 0
  br label %block_.L_47ca03
block_.L_47ca03:

  ; Code: movl -0x3d8(%rbp), %eax	 RIP: 47ca03	 Bytes: 6
  %loadMem_47ca03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca03 = call %struct.Memory* @routine_movl_MINUS0x3d8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca03)
  store %struct.Memory* %call_47ca03, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 47ca09	 Bytes: 7
  %loadMem_47ca09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca09 = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca09)
  store %struct.Memory* %call_47ca09, %struct.Memory** %MEMORY

  ; Code: jge .L_47d135	 RIP: 47ca10	 Bytes: 6
  %loadMem_47ca10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca10 = call %struct.Memory* @routine_jge_.L_47d135(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca10, i8* %BRANCH_TAKEN, i64 1829, i64 6, i64 6)
  store %struct.Memory* %call_47ca10, %struct.Memory** %MEMORY

  %loadBr_47ca10 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ca10 = icmp eq i8 %loadBr_47ca10, 1
  br i1 %cmpBr_47ca10, label %block_.L_47d135, label %block_47ca16

block_47ca16:
  ; Code: movl $0x0, -0x3dc(%rbp)	 RIP: 47ca16	 Bytes: 10
  %loadMem_47ca16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca16 = call %struct.Memory* @routine_movl__0x0__MINUS0x3dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca16)
  store %struct.Memory* %call_47ca16, %struct.Memory** %MEMORY

  ; Code: .L_47ca20:	 RIP: 47ca20	 Bytes: 0
  br label %block_.L_47ca20
block_.L_47ca20:

  ; Code: movl -0x3dc(%rbp), %eax	 RIP: 47ca20	 Bytes: 6
  %loadMem_47ca20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca20 = call %struct.Memory* @routine_movl_MINUS0x3dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca20)
  store %struct.Memory* %call_47ca20, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 47ca26	 Bytes: 7
  %loadMem_47ca26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca26 = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca26)
  store %struct.Memory* %call_47ca26, %struct.Memory** %MEMORY

  ; Code: jge .L_47d11c	 RIP: 47ca2d	 Bytes: 6
  %loadMem_47ca2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca2d = call %struct.Memory* @routine_jge_.L_47d11c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca2d, i8* %BRANCH_TAKEN, i64 1775, i64 6, i64 6)
  store %struct.Memory* %call_47ca2d, %struct.Memory** %MEMORY

  %loadBr_47ca2d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ca2d = icmp eq i8 %loadBr_47ca2d, 1
  br i1 %cmpBr_47ca2d, label %block_.L_47d11c, label %block_47ca33

block_47ca33:
  ; Code: imull $0x14, -0x3d8(%rbp), %eax	 RIP: 47ca33	 Bytes: 7
  %loadMem_47ca33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca33 = call %struct.Memory* @routine_imull__0x14__MINUS0x3d8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca33)
  store %struct.Memory* %call_47ca33, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 47ca3a	 Bytes: 3
  %loadMem_47ca3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca3a = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca3a)
  store %struct.Memory* %call_47ca3a, %struct.Memory** %MEMORY

  ; Code: addl -0x3dc(%rbp), %eax	 RIP: 47ca3d	 Bytes: 6
  %loadMem_47ca3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca3d = call %struct.Memory* @routine_addl_MINUS0x3dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca3d)
  store %struct.Memory* %call_47ca3d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3e0(%rbp)	 RIP: 47ca43	 Bytes: 6
  %loadMem_47ca43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca43 = call %struct.Memory* @routine_movl__eax__MINUS0x3e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca43)
  store %struct.Memory* %call_47ca43, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3e4(%rbp)	 RIP: 47ca49	 Bytes: 10
  %loadMem_47ca49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca49 = call %struct.Memory* @routine_movl__0x0__MINUS0x3e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca49)
  store %struct.Memory* %call_47ca49, %struct.Memory** %MEMORY

  ; Code: .L_47ca53:	 RIP: 47ca53	 Bytes: 0
  br label %block_.L_47ca53
block_.L_47ca53:

  ; Code: cmpl $0x78, -0x3e4(%rbp)	 RIP: 47ca53	 Bytes: 7
  %loadMem_47ca53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca53 = call %struct.Memory* @routine_cmpl__0x78__MINUS0x3e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca53)
  store %struct.Memory* %call_47ca53, %struct.Memory** %MEMORY

  ; Code: jge .L_47cbde	 RIP: 47ca5a	 Bytes: 6
  %loadMem_47ca5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca5a = call %struct.Memory* @routine_jge_.L_47cbde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca5a, i8* %BRANCH_TAKEN, i64 388, i64 6, i64 6)
  store %struct.Memory* %call_47ca5a, %struct.Memory** %MEMORY

  %loadBr_47ca5a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ca5a = icmp eq i8 %loadBr_47ca5a, 1
  br i1 %cmpBr_47ca5a, label %block_.L_47cbde, label %block_47ca60

block_47ca60:
  ; Code: movq $0xb9d8f0, %rax	 RIP: 47ca60	 Bytes: 10
  %loadMem_47ca60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca60 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca60)
  store %struct.Memory* %call_47ca60, %struct.Memory** %MEMORY

  ; Code: movslq -0x3e0(%rbp), %rcx	 RIP: 47ca6a	 Bytes: 7
  %loadMem_47ca6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca6a = call %struct.Memory* @routine_movslq_MINUS0x3e0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca6a)
  store %struct.Memory* %call_47ca6a, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 47ca71	 Bytes: 7
  %loadMem_47ca71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca71 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca71)
  store %struct.Memory* %call_47ca71, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47ca78	 Bytes: 3
  %loadMem_47ca78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca78 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca78)
  store %struct.Memory* %call_47ca78, %struct.Memory** %MEMORY

  ; Code: movslq -0x3e4(%rbp), %rcx	 RIP: 47ca7b	 Bytes: 7
  %loadMem_47ca7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca7b = call %struct.Memory* @routine_movslq_MINUS0x3e4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca7b)
  store %struct.Memory* %call_47ca7b, %struct.Memory** %MEMORY

  ; Code: movl 0x48(%rax,%rcx,4), %edx	 RIP: 47ca82	 Bytes: 4
  %loadMem_47ca82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca82 = call %struct.Memory* @routine_movl_0x48__rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca82)
  store %struct.Memory* %call_47ca82, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3f0(%rbp)	 RIP: 47ca86	 Bytes: 6
  %loadMem_47ca86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca86 = call %struct.Memory* @routine_movl__edx__MINUS0x3f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca86)
  store %struct.Memory* %call_47ca86, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x3f0(%rbp)	 RIP: 47ca8c	 Bytes: 7
  %loadMem_47ca8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca8c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca8c)
  store %struct.Memory* %call_47ca8c, %struct.Memory** %MEMORY

  ; Code: jge .L_47ca9e	 RIP: 47ca93	 Bytes: 6
  %loadMem_47ca93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca93 = call %struct.Memory* @routine_jge_.L_47ca9e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca93, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47ca93, %struct.Memory** %MEMORY

  %loadBr_47ca93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ca93 = icmp eq i8 %loadBr_47ca93, 1
  br i1 %cmpBr_47ca93, label %block_.L_47ca9e, label %block_47ca99

block_47ca99:
  ; Code: jmpq .L_47cbde	 RIP: 47ca99	 Bytes: 5
  %loadMem_47ca99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca99 = call %struct.Memory* @routine_jmpq_.L_47cbde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca99, i64 325, i64 5)
  store %struct.Memory* %call_47ca99, %struct.Memory** %MEMORY

  br label %block_.L_47cbde

  ; Code: .L_47ca9e:	 RIP: 47ca9e	 Bytes: 0
block_.L_47ca9e:

  ; Code: movq $0xafdfc0, %rax	 RIP: 47ca9e	 Bytes: 10
  %loadMem_47ca9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ca9e = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ca9e)
  store %struct.Memory* %call_47ca9e, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f0(%rbp), %rcx	 RIP: 47caa8	 Bytes: 7
  %loadMem_47caa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47caa8 = call %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47caa8)
  store %struct.Memory* %call_47caa8, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47caaf	 Bytes: 4
  %loadMem_47caaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47caaf = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47caaf)
  store %struct.Memory* %call_47caaf, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 47cab3	 Bytes: 3
  %loadMem_47cab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cab3 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cab3)
  store %struct.Memory* %call_47cab3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 47cab6	 Bytes: 3
  %loadMem_47cab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cab6 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cab6)
  store %struct.Memory* %call_47cab6, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rdx), %esi	 RIP: 47cab9	 Bytes: 3
  %loadMem_47cab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cab9 = call %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cab9)
  store %struct.Memory* %call_47cab9, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x3f4(%rbp)	 RIP: 47cabc	 Bytes: 6
  %loadMem_47cabc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cabc = call %struct.Memory* @routine_movl__esi__MINUS0x3f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cabc)
  store %struct.Memory* %call_47cabc, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f0(%rbp), %rcx	 RIP: 47cac2	 Bytes: 7
  %loadMem_47cac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cac2 = call %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cac2)
  store %struct.Memory* %call_47cac2, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47cac9	 Bytes: 4
  %loadMem_47cac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cac9 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cac9)
  store %struct.Memory* %call_47cac9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47cacd	 Bytes: 3
  %loadMem_47cacd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cacd = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cacd)
  store %struct.Memory* %call_47cacd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, (%rax)	 RIP: 47cad0	 Bytes: 3
  %loadMem_47cad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cad0 = call %struct.Memory* @routine_cmpl__0x2____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cad0)
  store %struct.Memory* %call_47cad0, %struct.Memory** %MEMORY

  ; Code: je .L_47cbc0	 RIP: 47cad3	 Bytes: 6
  %loadMem_47cad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cad3 = call %struct.Memory* @routine_je_.L_47cbc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cad3, i8* %BRANCH_TAKEN, i64 237, i64 6, i64 6)
  store %struct.Memory* %call_47cad3, %struct.Memory** %MEMORY

  %loadBr_47cad3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cad3 = icmp eq i8 %loadBr_47cad3, 1
  br i1 %cmpBr_47cad3, label %block_.L_47cbc0, label %block_47cad9

block_47cad9:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47cad9	 Bytes: 10
  %loadMem_47cad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cad9 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cad9)
  store %struct.Memory* %call_47cad9, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f0(%rbp), %rcx	 RIP: 47cae3	 Bytes: 7
  %loadMem_47cae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cae3 = call %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cae3)
  store %struct.Memory* %call_47cae3, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47caea	 Bytes: 4
  %loadMem_47caea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47caea = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47caea)
  store %struct.Memory* %call_47caea, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47caee	 Bytes: 3
  %loadMem_47caee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47caee = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47caee)
  store %struct.Memory* %call_47caee, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, (%rax)	 RIP: 47caf1	 Bytes: 3
  %loadMem_47caf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47caf1 = call %struct.Memory* @routine_cmpl__0x4____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47caf1)
  store %struct.Memory* %call_47caf1, %struct.Memory** %MEMORY

  ; Code: je .L_47cbc0	 RIP: 47caf4	 Bytes: 6
  %loadMem_47caf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47caf4 = call %struct.Memory* @routine_je_.L_47cbc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47caf4, i8* %BRANCH_TAKEN, i64 204, i64 6, i64 6)
  store %struct.Memory* %call_47caf4, %struct.Memory** %MEMORY

  %loadBr_47caf4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47caf4 = icmp eq i8 %loadBr_47caf4, 1
  br i1 %cmpBr_47caf4, label %block_.L_47cbc0, label %block_47cafa

block_47cafa:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47cafa	 Bytes: 10
  %loadMem_47cafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cafa = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cafa)
  store %struct.Memory* %call_47cafa, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f0(%rbp), %rcx	 RIP: 47cb04	 Bytes: 7
  %loadMem_47cb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb04 = call %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb04)
  store %struct.Memory* %call_47cb04, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47cb0b	 Bytes: 4
  %loadMem_47cb0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb0b = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb0b)
  store %struct.Memory* %call_47cb0b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47cb0f	 Bytes: 3
  %loadMem_47cb0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb0f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb0f)
  store %struct.Memory* %call_47cb0f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x6, (%rax)	 RIP: 47cb12	 Bytes: 3
  %loadMem_47cb12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb12 = call %struct.Memory* @routine_cmpl__0x6____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb12)
  store %struct.Memory* %call_47cb12, %struct.Memory** %MEMORY

  ; Code: je .L_47cbc0	 RIP: 47cb15	 Bytes: 6
  %loadMem_47cb15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb15 = call %struct.Memory* @routine_je_.L_47cbc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb15, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_47cb15, %struct.Memory** %MEMORY

  %loadBr_47cb15 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cb15 = icmp eq i8 %loadBr_47cb15, 1
  br i1 %cmpBr_47cb15, label %block_.L_47cbc0, label %block_47cb1b

block_47cb1b:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47cb1b	 Bytes: 10
  %loadMem_47cb1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb1b = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb1b)
  store %struct.Memory* %call_47cb1b, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f0(%rbp), %rcx	 RIP: 47cb25	 Bytes: 7
  %loadMem_47cb25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb25 = call %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb25)
  store %struct.Memory* %call_47cb25, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47cb2c	 Bytes: 4
  %loadMem_47cb2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb2c = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb2c)
  store %struct.Memory* %call_47cb2c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47cb30	 Bytes: 3
  %loadMem_47cb30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb30 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb30)
  store %struct.Memory* %call_47cb30, %struct.Memory** %MEMORY

  ; Code: cmpl $0x8, (%rax)	 RIP: 47cb33	 Bytes: 3
  %loadMem_47cb33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb33 = call %struct.Memory* @routine_cmpl__0x8____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb33)
  store %struct.Memory* %call_47cb33, %struct.Memory** %MEMORY

  ; Code: je .L_47cbc0	 RIP: 47cb36	 Bytes: 6
  %loadMem_47cb36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb36 = call %struct.Memory* @routine_je_.L_47cbc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb36, i8* %BRANCH_TAKEN, i64 138, i64 6, i64 6)
  store %struct.Memory* %call_47cb36, %struct.Memory** %MEMORY

  %loadBr_47cb36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cb36 = icmp eq i8 %loadBr_47cb36, 1
  br i1 %cmpBr_47cb36, label %block_.L_47cbc0, label %block_47cb3c

block_47cb3c:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47cb3c	 Bytes: 10
  %loadMem_47cb3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb3c = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb3c)
  store %struct.Memory* %call_47cb3c, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f0(%rbp), %rcx	 RIP: 47cb46	 Bytes: 7
  %loadMem_47cb46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb46 = call %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb46)
  store %struct.Memory* %call_47cb46, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47cb4d	 Bytes: 4
  %loadMem_47cb4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb4d = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb4d)
  store %struct.Memory* %call_47cb4d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47cb51	 Bytes: 3
  %loadMem_47cb51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb51 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb51)
  store %struct.Memory* %call_47cb51, %struct.Memory** %MEMORY

  ; Code: cmpl $0xa, (%rax)	 RIP: 47cb54	 Bytes: 3
  %loadMem_47cb54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb54 = call %struct.Memory* @routine_cmpl__0xa____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb54)
  store %struct.Memory* %call_47cb54, %struct.Memory** %MEMORY

  ; Code: je .L_47cbc0	 RIP: 47cb57	 Bytes: 6
  %loadMem_47cb57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb57 = call %struct.Memory* @routine_je_.L_47cbc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb57, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_47cb57, %struct.Memory** %MEMORY

  %loadBr_47cb57 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cb57 = icmp eq i8 %loadBr_47cb57, 1
  br i1 %cmpBr_47cb57, label %block_.L_47cbc0, label %block_47cb5d

block_47cb5d:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47cb5d	 Bytes: 10
  %loadMem_47cb5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb5d = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb5d)
  store %struct.Memory* %call_47cb5d, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f0(%rbp), %rcx	 RIP: 47cb67	 Bytes: 7
  %loadMem_47cb67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb67 = call %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb67)
  store %struct.Memory* %call_47cb67, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47cb6e	 Bytes: 4
  %loadMem_47cb6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb6e = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb6e)
  store %struct.Memory* %call_47cb6e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47cb72	 Bytes: 3
  %loadMem_47cb72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb72 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb72)
  store %struct.Memory* %call_47cb72, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc, (%rax)	 RIP: 47cb75	 Bytes: 3
  %loadMem_47cb75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb75 = call %struct.Memory* @routine_cmpl__0xc____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb75)
  store %struct.Memory* %call_47cb75, %struct.Memory** %MEMORY

  ; Code: je .L_47cbc0	 RIP: 47cb78	 Bytes: 6
  %loadMem_47cb78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb78 = call %struct.Memory* @routine_je_.L_47cbc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb78, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_47cb78, %struct.Memory** %MEMORY

  %loadBr_47cb78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cb78 = icmp eq i8 %loadBr_47cb78, 1
  br i1 %cmpBr_47cb78, label %block_.L_47cbc0, label %block_47cb7e

block_47cb7e:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47cb7e	 Bytes: 10
  %loadMem_47cb7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb7e = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb7e)
  store %struct.Memory* %call_47cb7e, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f0(%rbp), %rcx	 RIP: 47cb88	 Bytes: 7
  %loadMem_47cb88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb88 = call %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb88)
  store %struct.Memory* %call_47cb88, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47cb8f	 Bytes: 4
  %loadMem_47cb8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb8f = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb8f)
  store %struct.Memory* %call_47cb8f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47cb93	 Bytes: 3
  %loadMem_47cb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb93 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb93)
  store %struct.Memory* %call_47cb93, %struct.Memory** %MEMORY

  ; Code: cmpl $0xe, (%rax)	 RIP: 47cb96	 Bytes: 3
  %loadMem_47cb96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb96 = call %struct.Memory* @routine_cmpl__0xe____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb96)
  store %struct.Memory* %call_47cb96, %struct.Memory** %MEMORY

  ; Code: je .L_47cbc0	 RIP: 47cb99	 Bytes: 6
  %loadMem_47cb99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb99 = call %struct.Memory* @routine_je_.L_47cbc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb99, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_47cb99, %struct.Memory** %MEMORY

  %loadBr_47cb99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cb99 = icmp eq i8 %loadBr_47cb99, 1
  br i1 %cmpBr_47cb99, label %block_.L_47cbc0, label %block_47cb9f

block_47cb9f:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47cb9f	 Bytes: 10
  %loadMem_47cb9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cb9f = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cb9f)
  store %struct.Memory* %call_47cb9f, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f0(%rbp), %rcx	 RIP: 47cba9	 Bytes: 7
  %loadMem_47cba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cba9 = call %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cba9)
  store %struct.Memory* %call_47cba9, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47cbb0	 Bytes: 4
  %loadMem_47cbb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cbb0 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cbb0)
  store %struct.Memory* %call_47cbb0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47cbb4	 Bytes: 3
  %loadMem_47cbb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cbb4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cbb4)
  store %struct.Memory* %call_47cbb4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x10, (%rax)	 RIP: 47cbb7	 Bytes: 3
  %loadMem_47cbb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cbb7 = call %struct.Memory* @routine_cmpl__0x10____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cbb7)
  store %struct.Memory* %call_47cbb7, %struct.Memory** %MEMORY

  ; Code: jne .L_47cbc5	 RIP: 47cbba	 Bytes: 6
  %loadMem_47cbba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cbba = call %struct.Memory* @routine_jne_.L_47cbc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cbba, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47cbba, %struct.Memory** %MEMORY

  %loadBr_47cbba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cbba = icmp eq i8 %loadBr_47cbba, 1
  br i1 %cmpBr_47cbba, label %block_.L_47cbc5, label %block_.L_47cbc0

  ; Code: .L_47cbc0:	 RIP: 47cbc0	 Bytes: 0
block_.L_47cbc0:

  ; Code: jmpq .L_47cbde	 RIP: 47cbc0	 Bytes: 5
  %loadMem_47cbc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cbc0 = call %struct.Memory* @routine_jmpq_.L_47cbde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cbc0, i64 30, i64 5)
  store %struct.Memory* %call_47cbc0, %struct.Memory** %MEMORY

  br label %block_.L_47cbde

  ; Code: .L_47cbc5:	 RIP: 47cbc5	 Bytes: 0
block_.L_47cbc5:

  ; Code: jmpq .L_47cbca	 RIP: 47cbc5	 Bytes: 5
  %loadMem_47cbc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cbc5 = call %struct.Memory* @routine_jmpq_.L_47cbca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cbc5, i64 5, i64 5)
  store %struct.Memory* %call_47cbc5, %struct.Memory** %MEMORY

  br label %block_.L_47cbca

  ; Code: .L_47cbca:	 RIP: 47cbca	 Bytes: 0
block_.L_47cbca:

  ; Code: movl -0x3e4(%rbp), %eax	 RIP: 47cbca	 Bytes: 6
  %loadMem_47cbca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cbca = call %struct.Memory* @routine_movl_MINUS0x3e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cbca)
  store %struct.Memory* %call_47cbca, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47cbd0	 Bytes: 3
  %loadMem_47cbd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cbd0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cbd0)
  store %struct.Memory* %call_47cbd0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3e4(%rbp)	 RIP: 47cbd3	 Bytes: 6
  %loadMem_47cbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cbd3 = call %struct.Memory* @routine_movl__eax__MINUS0x3e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cbd3)
  store %struct.Memory* %call_47cbd3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47ca53	 RIP: 47cbd9	 Bytes: 5
  %loadMem_47cbd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cbd9 = call %struct.Memory* @routine_jmpq_.L_47ca53(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cbd9, i64 -390, i64 5)
  store %struct.Memory* %call_47cbd9, %struct.Memory** %MEMORY

  br label %block_.L_47ca53

  ; Code: .L_47cbde:	 RIP: 47cbde	 Bytes: 0
block_.L_47cbde:

  ; Code: cmpl $0x78, -0x3e4(%rbp)	 RIP: 47cbde	 Bytes: 7
  %loadMem_47cbde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cbde = call %struct.Memory* @routine_cmpl__0x78__MINUS0x3e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cbde)
  store %struct.Memory* %call_47cbde, %struct.Memory** %MEMORY

  ; Code: je .L_47cc18	 RIP: 47cbe5	 Bytes: 6
  %loadMem_47cbe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cbe5 = call %struct.Memory* @routine_je_.L_47cc18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cbe5, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_47cbe5, %struct.Memory** %MEMORY

  %loadBr_47cbe5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cbe5 = icmp eq i8 %loadBr_47cbe5, 1
  br i1 %cmpBr_47cbe5, label %block_.L_47cc18, label %block_47cbeb

block_47cbeb:
  ; Code: movq $0xb9d8f0, %rax	 RIP: 47cbeb	 Bytes: 10
  %loadMem_47cbeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cbeb = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cbeb)
  store %struct.Memory* %call_47cbeb, %struct.Memory** %MEMORY

  ; Code: movslq -0x3e0(%rbp), %rcx	 RIP: 47cbf5	 Bytes: 7
  %loadMem_47cbf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cbf5 = call %struct.Memory* @routine_movslq_MINUS0x3e0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cbf5)
  store %struct.Memory* %call_47cbf5, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 47cbfc	 Bytes: 7
  %loadMem_47cbfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cbfc = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cbfc)
  store %struct.Memory* %call_47cbfc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47cc03	 Bytes: 3
  %loadMem_47cc03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc03 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc03)
  store %struct.Memory* %call_47cc03, %struct.Memory** %MEMORY

  ; Code: movslq -0x3e4(%rbp), %rcx	 RIP: 47cc06	 Bytes: 7
  %loadMem_47cc06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc06 = call %struct.Memory* @routine_movslq_MINUS0x3e4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc06)
  store %struct.Memory* %call_47cc06, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, 0x48(%rax,%rcx,4)	 RIP: 47cc0d	 Bytes: 5
  %loadMem_47cc0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc0d = call %struct.Memory* @routine_cmpl__0xffffffff__0x48__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc0d)
  store %struct.Memory* %call_47cc0d, %struct.Memory** %MEMORY

  ; Code: jne .L_47cc1d	 RIP: 47cc12	 Bytes: 6
  %loadMem_47cc12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc12 = call %struct.Memory* @routine_jne_.L_47cc1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc12, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47cc12, %struct.Memory** %MEMORY

  %loadBr_47cc12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cc12 = icmp eq i8 %loadBr_47cc12, 1
  br i1 %cmpBr_47cc12, label %block_.L_47cc1d, label %block_.L_47cc18

  ; Code: .L_47cc18:	 RIP: 47cc18	 Bytes: 0
block_.L_47cc18:

  ; Code: jmpq .L_47d108	 RIP: 47cc18	 Bytes: 5
  %loadMem_47cc18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc18 = call %struct.Memory* @routine_jmpq_.L_47d108(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc18, i64 1264, i64 5)
  store %struct.Memory* %call_47cc18, %struct.Memory** %MEMORY

  br label %block_.L_47d108

  ; Code: .L_47cc1d:	 RIP: 47cc1d	 Bytes: 0
block_.L_47cc1d:

  ; Code: movl $0x0, -0x3ec(%rbp)	 RIP: 47cc1d	 Bytes: 10
  %loadMem_47cc1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc1d = call %struct.Memory* @routine_movl__0x0__MINUS0x3ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc1d)
  store %struct.Memory* %call_47cc1d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 47cc27	 Bytes: 8
  %loadMem_47cc27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc27 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc27)
  store %struct.Memory* %call_47cc27, %struct.Memory** %MEMORY

  ; Code: jne .L_47cc3a	 RIP: 47cc2f	 Bytes: 6
  %loadMem_47cc2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc2f = call %struct.Memory* @routine_jne_.L_47cc3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc2f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47cc2f, %struct.Memory** %MEMORY

  %loadBr_47cc2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cc2f = icmp eq i8 %loadBr_47cc2f, 1
  br i1 %cmpBr_47cc2f, label %block_.L_47cc3a, label %block_47cc35

block_47cc35:
  ; Code: jmpq .L_47cc57	 RIP: 47cc35	 Bytes: 5
  %loadMem_47cc35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc35 = call %struct.Memory* @routine_jmpq_.L_47cc57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc35, i64 34, i64 5)
  store %struct.Memory* %call_47cc35, %struct.Memory** %MEMORY

  br label %block_.L_47cc57

  ; Code: .L_47cc3a:	 RIP: 47cc3a	 Bytes: 0
block_.L_47cc3a:

  ; Code: movq $0x57c2fd, %rdi	 RIP: 47cc3a	 Bytes: 10
  %loadMem_47cc3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc3a = call %struct.Memory* @routine_movq__0x57c2fd___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc3a)
  store %struct.Memory* %call_47cc3a, %struct.Memory** %MEMORY

  ; Code: movl -0x3e0(%rbp), %esi	 RIP: 47cc44	 Bytes: 6
  %loadMem_47cc44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc44 = call %struct.Memory* @routine_movl_MINUS0x3e0__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc44)
  store %struct.Memory* %call_47cc44, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 47cc4a	 Bytes: 2
  %loadMem_47cc4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc4a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc4a)
  store %struct.Memory* %call_47cc4a, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 47cc4c	 Bytes: 5
  %loadMem1_47cc4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47cc4c = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47cc4c, i64 -175772, i64 5, i64 5)
  store %struct.Memory* %call1_47cc4c, %struct.Memory** %MEMORY

  %loadMem2_47cc4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cc4c = load i64, i64* %3
  %call2_47cc4c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_47cc4c, %struct.Memory* %loadMem2_47cc4c)
  store %struct.Memory* %call2_47cc4c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x418(%rbp)	 RIP: 47cc51	 Bytes: 6
  %loadMem_47cc51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc51 = call %struct.Memory* @routine_movl__eax__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc51)
  store %struct.Memory* %call_47cc51, %struct.Memory** %MEMORY

  ; Code: .L_47cc57:	 RIP: 47cc57	 Bytes: 0
  br label %block_.L_47cc57
block_.L_47cc57:

  ; Code: movq $0x581d46, %rdx	 RIP: 47cc57	 Bytes: 10
  %loadMem_47cc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc57 = call %struct.Memory* @routine_movq__0x581d46___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc57)
  store %struct.Memory* %call_47cc57, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 47cc61	 Bytes: 2
  %loadMem_47cc61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc61 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc61)
  store %struct.Memory* %call_47cc61, %struct.Memory** %MEMORY

  ; Code: movl -0x3e0(%rbp), %edi	 RIP: 47cc63	 Bytes: 6
  %loadMem_47cc63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc63 = call %struct.Memory* @routine_movl_MINUS0x3e0__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc63)
  store %struct.Memory* %call_47cc63, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 47cc69	 Bytes: 3
  %loadMem_47cc69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc69 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc69)
  store %struct.Memory* %call_47cc69, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47cc6c	 Bytes: 2
  %loadMem_47cc6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc6c = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc6c)
  store %struct.Memory* %call_47cc6c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 47cc6e	 Bytes: 3
  %loadMem_47cc6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc6e = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc6e)
  store %struct.Memory* %call_47cc6e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 47cc71	 Bytes: 3
  %loadMem_47cc71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc71 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc71)
  store %struct.Memory* %call_47cc71, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 47cc74	 Bytes: 5
  %loadMem1_47cc74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47cc74 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47cc74, i64 -474692, i64 5, i64 5)
  store %struct.Memory* %call1_47cc74, %struct.Memory** %MEMORY

  %loadMem2_47cc74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cc74 = load i64, i64* %3
  %call2_47cc74 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_47cc74, %struct.Memory* %loadMem2_47cc74)
  store %struct.Memory* %call2_47cc74, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47cc79	 Bytes: 3
  %loadMem_47cc79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc79 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc79)
  store %struct.Memory* %call_47cc79, %struct.Memory** %MEMORY

  ; Code: je .L_47d103	 RIP: 47cc7c	 Bytes: 6
  %loadMem_47cc7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc7c = call %struct.Memory* @routine_je_.L_47d103(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc7c, i8* %BRANCH_TAKEN, i64 1159, i64 6, i64 6)
  store %struct.Memory* %call_47cc7c, %struct.Memory** %MEMORY

  %loadBr_47cc7c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cc7c = icmp eq i8 %loadBr_47cc7c, 1
  br i1 %cmpBr_47cc7c, label %block_.L_47d103, label %block_47cc82

block_47cc82:
  ; Code: movl $0x0, -0x3e4(%rbp)	 RIP: 47cc82	 Bytes: 10
  %loadMem_47cc82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc82 = call %struct.Memory* @routine_movl__0x0__MINUS0x3e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc82)
  store %struct.Memory* %call_47cc82, %struct.Memory** %MEMORY

  ; Code: .L_47cc8c:	 RIP: 47cc8c	 Bytes: 0
  br label %block_.L_47cc8c
block_.L_47cc8c:

  ; Code: movl -0x3e4(%rbp), %eax	 RIP: 47cc8c	 Bytes: 6
  %loadMem_47cc8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc8c = call %struct.Memory* @routine_movl_MINUS0x3e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc8c)
  store %struct.Memory* %call_47cc8c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3d4(%rbp), %eax	 RIP: 47cc92	 Bytes: 6
  %loadMem_47cc92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc92 = call %struct.Memory* @routine_cmpl_MINUS0x3d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc92)
  store %struct.Memory* %call_47cc92, %struct.Memory** %MEMORY

  ; Code: jge .L_47d0fe	 RIP: 47cc98	 Bytes: 6
  %loadMem_47cc98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc98 = call %struct.Memory* @routine_jge_.L_47d0fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc98, i8* %BRANCH_TAKEN, i64 1126, i64 6, i64 6)
  store %struct.Memory* %call_47cc98, %struct.Memory** %MEMORY

  %loadBr_47cc98 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cc98 = icmp eq i8 %loadBr_47cc98, 1
  br i1 %cmpBr_47cc98, label %block_.L_47d0fe, label %block_47cc9e

block_47cc9e:
  ; Code: movslq -0x3e4(%rbp), %rax	 RIP: 47cc9e	 Bytes: 7
  %loadMem_47cc9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cc9e = call %struct.Memory* @routine_movslq_MINUS0x3e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cc9e)
  store %struct.Memory* %call_47cc9e, %struct.Memory** %MEMORY

  ; Code: movl -0x3d0(%rbp,%rax,4), %ecx	 RIP: 47cca5	 Bytes: 7
  %loadMem_47cca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cca5 = call %struct.Memory* @routine_movl_MINUS0x3d0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cca5)
  store %struct.Memory* %call_47cca5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3f8(%rbp)	 RIP: 47ccac	 Bytes: 6
  %loadMem_47ccac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccac = call %struct.Memory* @routine_movl__ecx__MINUS0x3f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccac)
  store %struct.Memory* %call_47ccac, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f8(%rbp), %rax	 RIP: 47ccb2	 Bytes: 7
  %loadMem_47ccb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccb2 = call %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccb2)
  store %struct.Memory* %call_47ccb2, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47ccb9	 Bytes: 8
  %loadMem_47ccb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccb9 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccb9)
  store %struct.Memory* %call_47ccb9, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %ecx	 RIP: 47ccc1	 Bytes: 3
  %loadMem_47ccc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccc1 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccc1)
  store %struct.Memory* %call_47ccc1, %struct.Memory** %MEMORY

  ; Code: jne .L_47ceda	 RIP: 47ccc4	 Bytes: 6
  %loadMem_47ccc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccc4 = call %struct.Memory* @routine_jne_.L_47ceda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccc4, i8* %BRANCH_TAKEN, i64 534, i64 6, i64 6)
  store %struct.Memory* %call_47ccc4, %struct.Memory** %MEMORY

  %loadBr_47ccc4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ccc4 = icmp eq i8 %loadBr_47ccc4, 1
  br i1 %cmpBr_47ccc4, label %block_.L_47ceda, label %block_47ccca

block_47ccca:
  ; Code: movl -0x3e0(%rbp), %edi	 RIP: 47ccca	 Bytes: 6
  %loadMem_47ccca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccca = call %struct.Memory* @routine_movl_MINUS0x3e0__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccca)
  store %struct.Memory* %call_47ccca, %struct.Memory** %MEMORY

  ; Code: movslq -0x3e4(%rbp), %rax	 RIP: 47ccd0	 Bytes: 7
  %loadMem_47ccd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccd0 = call %struct.Memory* @routine_movslq_MINUS0x3e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccd0)
  store %struct.Memory* %call_47ccd0, %struct.Memory** %MEMORY

  ; Code: movl -0x3d0(%rbp,%rax,4), %esi	 RIP: 47ccd7	 Bytes: 7
  %loadMem_47ccd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccd7 = call %struct.Memory* @routine_movl_MINUS0x3d0__rbp__rax_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccd7)
  store %struct.Memory* %call_47ccd7, %struct.Memory** %MEMORY

  ; Code: callq .defense_move_reason_known	 RIP: 47ccde	 Bytes: 5
  %loadMem1_47ccde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ccde = call %struct.Memory* @routine_callq_.defense_move_reason_known(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ccde, i64 -306798, i64 5, i64 5)
  store %struct.Memory* %call1_47ccde, %struct.Memory** %MEMORY

  %loadMem2_47ccde = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ccde = load i64, i64* %3
  %call2_47ccde = call %struct.Memory* @sub_431e70.defense_move_reason_known(%struct.State* %0, i64  %loadPC_47ccde, %struct.Memory* %loadMem2_47ccde)
  store %struct.Memory* %call2_47ccde, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47cce3	 Bytes: 3
  %loadMem_47cce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cce3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cce3)
  store %struct.Memory* %call_47cce3, %struct.Memory** %MEMORY

  ; Code: jne .L_47ceda	 RIP: 47cce6	 Bytes: 6
  %loadMem_47cce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cce6 = call %struct.Memory* @routine_jne_.L_47ceda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cce6, i8* %BRANCH_TAKEN, i64 500, i64 6, i64 6)
  store %struct.Memory* %call_47cce6, %struct.Memory** %MEMORY

  %loadBr_47cce6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cce6 = icmp eq i8 %loadBr_47cce6, 1
  br i1 %cmpBr_47cce6, label %block_.L_47ceda, label %block_47ccec

block_47ccec:
  ; Code: xorl %eax, %eax	 RIP: 47ccec	 Bytes: 2
  %loadMem_47ccec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccec = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccec)
  store %struct.Memory* %call_47ccec, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 47ccee	 Bytes: 2
  %loadMem_47ccee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccee = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccee)
  store %struct.Memory* %call_47ccee, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %edi	 RIP: 47ccf0	 Bytes: 6
  %loadMem_47ccf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccf0 = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccf0)
  store %struct.Memory* %call_47ccf0, %struct.Memory** %MEMORY

  ; Code: callq .attack	 RIP: 47ccf6	 Bytes: 5
  %loadMem1_47ccf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ccf6 = call %struct.Memory* @routine_callq_.attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ccf6, i64 -127414, i64 5, i64 5)
  store %struct.Memory* %call1_47ccf6, %struct.Memory** %MEMORY

  %loadMem2_47ccf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ccf6 = load i64, i64* %3
  %call2_47ccf6 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64  %loadPC_47ccf6, %struct.Memory* %loadMem2_47ccf6)
  store %struct.Memory* %call2_47ccf6, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rsi	 RIP: 47ccfb	 Bytes: 10
  %loadMem_47ccfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccfb = call %struct.Memory* @routine_movq__0xb0eff0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccfb)
  store %struct.Memory* %call_47ccfb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3fc(%rbp)	 RIP: 47cd05	 Bytes: 6
  %loadMem_47cd05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd05 = call %struct.Memory* @routine_movl__eax__MINUS0x3fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd05)
  store %struct.Memory* %call_47cd05, %struct.Memory** %MEMORY

  ; Code: movl -0x3fc(%rbp), %eax	 RIP: 47cd0b	 Bytes: 6
  %loadMem_47cd0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd0b = call %struct.Memory* @routine_movl_MINUS0x3fc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd0b)
  store %struct.Memory* %call_47cd0b, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f8(%rbp), %rcx	 RIP: 47cd11	 Bytes: 7
  %loadMem_47cd11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd11 = call %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd11)
  store %struct.Memory* %call_47cd11, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 47cd18	 Bytes: 7
  %loadMem_47cd18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd18 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd18)
  store %struct.Memory* %call_47cd18, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 47cd1f	 Bytes: 3
  %loadMem_47cd1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd1f = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd1f)
  store %struct.Memory* %call_47cd1f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x64(%rsi), %eax	 RIP: 47cd22	 Bytes: 3
  %loadMem_47cd22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd22 = call %struct.Memory* @routine_cmpl_0x64__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd22)
  store %struct.Memory* %call_47cd22, %struct.Memory** %MEMORY

  ; Code: jge .L_47ced5	 RIP: 47cd25	 Bytes: 6
  %loadMem_47cd25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd25 = call %struct.Memory* @routine_jge_.L_47ced5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd25, i8* %BRANCH_TAKEN, i64 432, i64 6, i64 6)
  store %struct.Memory* %call_47cd25, %struct.Memory** %MEMORY

  %loadBr_47cd25 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cd25 = icmp eq i8 %loadBr_47cd25, 1
  br i1 %cmpBr_47cd25, label %block_.L_47ced5, label %block_47cd2b

block_47cd2b:
  ; Code: movq $0x581d46, %rdx	 RIP: 47cd2b	 Bytes: 10
  %loadMem_47cd2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd2b = call %struct.Memory* @routine_movq__0x581d46___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd2b)
  store %struct.Memory* %call_47cd2b, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 47cd35	 Bytes: 2
  %loadMem_47cd35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd35 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd35)
  store %struct.Memory* %call_47cd35, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rcx	 RIP: 47cd37	 Bytes: 10
  %loadMem_47cd37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd37 = call %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd37)
  store %struct.Memory* %call_47cd37, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x400(%rbp)	 RIP: 47cd41	 Bytes: 10
  %loadMem_47cd41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd41 = call %struct.Memory* @routine_movl__0x1__MINUS0x400__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd41)
  store %struct.Memory* %call_47cd41, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f8(%rbp), %rsi	 RIP: 47cd4b	 Bytes: 7
  %loadMem_47cd4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd4b = call %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd4b)
  store %struct.Memory* %call_47cd4b, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rsi, %rsi	 RIP: 47cd52	 Bytes: 7
  %loadMem_47cd52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd52 = call %struct.Memory* @routine_imulq__0x17c___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd52)
  store %struct.Memory* %call_47cd52, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 47cd59	 Bytes: 3
  %loadMem_47cd59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd59 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd59)
  store %struct.Memory* %call_47cd59, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rcx), %edi	 RIP: 47cd5c	 Bytes: 3
  %loadMem_47cd5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd5c = call %struct.Memory* @routine_movl_0x3c__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd5c)
  store %struct.Memory* %call_47cd5c, %struct.Memory** %MEMORY

  ; Code: movl -0x3e8(%rbp), %esi	 RIP: 47cd5f	 Bytes: 6
  %loadMem_47cd5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd5f = call %struct.Memory* @routine_movl_MINUS0x3e8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd5f)
  store %struct.Memory* %call_47cd5f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47cd65	 Bytes: 2
  %loadMem_47cd65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd65 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd65)
  store %struct.Memory* %call_47cd65, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 47cd67	 Bytes: 3
  %loadMem_47cd67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd67 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd67)
  store %struct.Memory* %call_47cd67, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 47cd6a	 Bytes: 3
  %loadMem_47cd6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd6a = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd6a)
  store %struct.Memory* %call_47cd6a, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 47cd6d	 Bytes: 5
  %loadMem1_47cd6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47cd6d = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47cd6d, i64 -474941, i64 5, i64 5)
  store %struct.Memory* %call1_47cd6d, %struct.Memory** %MEMORY

  %loadMem2_47cd6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cd6d = load i64, i64* %3
  %call2_47cd6d = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_47cd6d, %struct.Memory* %loadMem2_47cd6d)
  store %struct.Memory* %call2_47cd6d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47cd72	 Bytes: 3
  %loadMem_47cd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd72 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd72)
  store %struct.Memory* %call_47cd72, %struct.Memory** %MEMORY

  ; Code: je .L_47ce1c	 RIP: 47cd75	 Bytes: 6
  %loadMem_47cd75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd75 = call %struct.Memory* @routine_je_.L_47ce1c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd75, i8* %BRANCH_TAKEN, i64 167, i64 6, i64 6)
  store %struct.Memory* %call_47cd75, %struct.Memory** %MEMORY

  %loadBr_47cd75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cd75 = icmp eq i8 %loadBr_47cd75, 1
  br i1 %cmpBr_47cd75, label %block_.L_47ce1c, label %block_47cd7b

block_47cd7b:
  ; Code: movslq -0x3f8(%rbp), %rax	 RIP: 47cd7b	 Bytes: 7
  %loadMem_47cd7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd7b = call %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd7b)
  store %struct.Memory* %call_47cd7b, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, 0xb89e60(,%rax,1)	 RIP: 47cd82	 Bytes: 8
  %loadMem_47cd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd82 = call %struct.Memory* @routine_cmpb__0x0__0xb89e60___rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd82)
  store %struct.Memory* %call_47cd82, %struct.Memory** %MEMORY

  ; Code: jne .L_47cd9f	 RIP: 47cd8a	 Bytes: 6
  %loadMem_47cd8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd8a = call %struct.Memory* @routine_jne_.L_47cd9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd8a, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_47cd8a, %struct.Memory** %MEMORY

  %loadBr_47cd8a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cd8a = icmp eq i8 %loadBr_47cd8a, 1
  br i1 %cmpBr_47cd8a, label %block_.L_47cd9f, label %block_47cd90

block_47cd90:
  ; Code: movl $0x0, -0x400(%rbp)	 RIP: 47cd90	 Bytes: 10
  %loadMem_47cd90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd90 = call %struct.Memory* @routine_movl__0x0__MINUS0x400__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd90)
  store %struct.Memory* %call_47cd90, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47ce17	 RIP: 47cd9a	 Bytes: 5
  %loadMem_47cd9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd9a = call %struct.Memory* @routine_jmpq_.L_47ce17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd9a, i64 125, i64 5)
  store %struct.Memory* %call_47cd9a, %struct.Memory** %MEMORY

  br label %block_.L_47ce17

  ; Code: .L_47cd9f:	 RIP: 47cd9f	 Bytes: 0
block_.L_47cd9f:

  ; Code: xorl %eax, %eax	 RIP: 47cd9f	 Bytes: 2
  %loadMem_47cd9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd9f = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd9f)
  store %struct.Memory* %call_47cd9f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 47cda1	 Bytes: 2
  %loadMem_47cda1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cda1 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cda1)
  store %struct.Memory* %call_47cda1, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %edi	 RIP: 47cda3	 Bytes: 6
  %loadMem_47cda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cda3 = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cda3)
  store %struct.Memory* %call_47cda3, %struct.Memory** %MEMORY

  ; Code: callq .find_defense	 RIP: 47cda9	 Bytes: 5
  %loadMem1_47cda9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47cda9 = call %struct.Memory* @routine_callq_.find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47cda9, i64 -75305, i64 5, i64 5)
  store %struct.Memory* %call1_47cda9, %struct.Memory** %MEMORY

  %loadMem2_47cda9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cda9 = load i64, i64* %3
  %call2_47cda9 = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64  %loadPC_47cda9, %struct.Memory* %loadMem2_47cda9)
  store %struct.Memory* %call2_47cda9, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %edi	 RIP: 47cdae	 Bytes: 5
  %loadMem_47cdae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdae = call %struct.Memory* @routine_movl__0x5___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdae)
  store %struct.Memory* %call_47cdae, %struct.Memory** %MEMORY

  ; Code: subl %eax, %edi	 RIP: 47cdb3	 Bytes: 2
  %loadMem_47cdb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdb3 = call %struct.Memory* @routine_subl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdb3)
  store %struct.Memory* %call_47cdb3, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x404(%rbp)	 RIP: 47cdb5	 Bytes: 6
  %loadMem_47cdb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdb5 = call %struct.Memory* @routine_movl__edi__MINUS0x404__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdb5)
  store %struct.Memory* %call_47cdb5, %struct.Memory** %MEMORY

  ; Code: movl -0x404(%rbp), %eax	 RIP: 47cdbb	 Bytes: 6
  %loadMem_47cdbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdbb = call %struct.Memory* @routine_movl_MINUS0x404__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdbb)
  store %struct.Memory* %call_47cdbb, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3fc(%rbp), %eax	 RIP: 47cdc1	 Bytes: 6
  %loadMem_47cdc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdc1 = call %struct.Memory* @routine_cmpl_MINUS0x3fc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdc1)
  store %struct.Memory* %call_47cdc1, %struct.Memory** %MEMORY

  ; Code: jle .L_47ce12	 RIP: 47cdc7	 Bytes: 6
  %loadMem_47cdc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdc7 = call %struct.Memory* @routine_jle_.L_47ce12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdc7, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_47cdc7, %struct.Memory** %MEMORY

  %loadBr_47cdc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cdc7 = icmp eq i8 %loadBr_47cdc7, 1
  br i1 %cmpBr_47cdc7, label %block_.L_47ce12, label %block_47cdcd

block_47cdcd:
  ; Code: movq $0xb0eff0, %rax	 RIP: 47cdcd	 Bytes: 10
  %loadMem_47cdcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdcd = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdcd)
  store %struct.Memory* %call_47cdcd, %struct.Memory** %MEMORY

  ; Code: movl -0x404(%rbp), %ecx	 RIP: 47cdd7	 Bytes: 6
  %loadMem_47cdd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdd7 = call %struct.Memory* @routine_movl_MINUS0x404__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdd7)
  store %struct.Memory* %call_47cdd7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3fc(%rbp)	 RIP: 47cddd	 Bytes: 6
  %loadMem_47cddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cddd = call %struct.Memory* @routine_movl__ecx__MINUS0x3fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cddd)
  store %struct.Memory* %call_47cddd, %struct.Memory** %MEMORY

  ; Code: movl -0x3fc(%rbp), %ecx	 RIP: 47cde3	 Bytes: 6
  %loadMem_47cde3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cde3 = call %struct.Memory* @routine_movl_MINUS0x3fc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cde3)
  store %struct.Memory* %call_47cde3, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f8(%rbp), %rdx	 RIP: 47cde9	 Bytes: 7
  %loadMem_47cde9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cde9 = call %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cde9)
  store %struct.Memory* %call_47cde9, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 47cdf0	 Bytes: 7
  %loadMem_47cdf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdf0 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdf0)
  store %struct.Memory* %call_47cdf0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47cdf7	 Bytes: 3
  %loadMem_47cdf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdf7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdf7)
  store %struct.Memory* %call_47cdf7, %struct.Memory** %MEMORY

  ; Code: cmpl 0x64(%rax), %ecx	 RIP: 47cdfa	 Bytes: 3
  %loadMem_47cdfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdfa = call %struct.Memory* @routine_cmpl_0x64__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdfa)
  store %struct.Memory* %call_47cdfa, %struct.Memory** %MEMORY

  ; Code: jl .L_47ce0d	 RIP: 47cdfd	 Bytes: 6
  %loadMem_47cdfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdfd = call %struct.Memory* @routine_jl_.L_47ce0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdfd, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_47cdfd, %struct.Memory** %MEMORY

  %loadBr_47cdfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cdfd = icmp eq i8 %loadBr_47cdfd, 1
  br i1 %cmpBr_47cdfd, label %block_.L_47ce0d, label %block_47ce03

block_47ce03:
  ; Code: movl $0x0, -0x400(%rbp)	 RIP: 47ce03	 Bytes: 10
  %loadMem_47ce03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce03 = call %struct.Memory* @routine_movl__0x0__MINUS0x400__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce03)
  store %struct.Memory* %call_47ce03, %struct.Memory** %MEMORY

  ; Code: .L_47ce0d:	 RIP: 47ce0d	 Bytes: 0
  br label %block_.L_47ce0d
block_.L_47ce0d:

  ; Code: jmpq .L_47ce12	 RIP: 47ce0d	 Bytes: 5
  %loadMem_47ce0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce0d = call %struct.Memory* @routine_jmpq_.L_47ce12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce0d, i64 5, i64 5)
  store %struct.Memory* %call_47ce0d, %struct.Memory** %MEMORY

  br label %block_.L_47ce12

  ; Code: .L_47ce12:	 RIP: 47ce12	 Bytes: 0
block_.L_47ce12:

  ; Code: jmpq .L_47ce17	 RIP: 47ce12	 Bytes: 5
  %loadMem_47ce12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce12 = call %struct.Memory* @routine_jmpq_.L_47ce17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce12, i64 5, i64 5)
  store %struct.Memory* %call_47ce12, %struct.Memory** %MEMORY

  br label %block_.L_47ce17

  ; Code: .L_47ce17:	 RIP: 47ce17	 Bytes: 0
block_.L_47ce17:

  ; Code: callq .popgo	 RIP: 47ce17	 Bytes: 5
  %loadMem1_47ce17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ce17 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ce17, i64 -454839, i64 5, i64 5)
  store %struct.Memory* %call1_47ce17, %struct.Memory** %MEMORY

  %loadMem2_47ce17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ce17 = load i64, i64* %3
  %call2_47ce17 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_47ce17, %struct.Memory* %loadMem2_47ce17)
  store %struct.Memory* %call2_47ce17, %struct.Memory** %MEMORY

  ; Code: .L_47ce1c:	 RIP: 47ce1c	 Bytes: 0
  br label %block_.L_47ce1c
block_.L_47ce1c:

  ; Code: cmpl $0x0, -0x400(%rbp)	 RIP: 47ce1c	 Bytes: 7
  %loadMem_47ce1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce1c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x400__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce1c)
  store %struct.Memory* %call_47ce1c, %struct.Memory** %MEMORY

  ; Code: je .L_47ced0	 RIP: 47ce23	 Bytes: 6
  %loadMem_47ce23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce23 = call %struct.Memory* @routine_je_.L_47ced0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce23, i8* %BRANCH_TAKEN, i64 173, i64 6, i64 6)
  store %struct.Memory* %call_47ce23, %struct.Memory** %MEMORY

  %loadBr_47ce23 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ce23 = icmp eq i8 %loadBr_47ce23, 1
  br i1 %cmpBr_47ce23, label %block_.L_47ced0, label %block_47ce29

block_47ce29:
  ; Code: cmpl $0x0, -0x3ec(%rbp)	 RIP: 47ce29	 Bytes: 7
  %loadMem_47ce29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce29 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce29)
  store %struct.Memory* %call_47ce29, %struct.Memory** %MEMORY

  ; Code: jne .L_47ce65	 RIP: 47ce30	 Bytes: 6
  %loadMem_47ce30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce30 = call %struct.Memory* @routine_jne_.L_47ce65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce30, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_47ce30, %struct.Memory** %MEMORY

  %loadBr_47ce30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ce30 = icmp eq i8 %loadBr_47ce30, 1
  br i1 %cmpBr_47ce30, label %block_.L_47ce65, label %block_47ce36

block_47ce36:
  ; Code: cmpl $0x0, 0xab0f28	 RIP: 47ce36	 Bytes: 8
  %loadMem_47ce36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce36 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce36)
  store %struct.Memory* %call_47ce36, %struct.Memory** %MEMORY

  ; Code: jne .L_47ce49	 RIP: 47ce3e	 Bytes: 6
  %loadMem_47ce3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce3e = call %struct.Memory* @routine_jne_.L_47ce49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce3e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47ce3e, %struct.Memory** %MEMORY

  %loadBr_47ce3e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ce3e = icmp eq i8 %loadBr_47ce3e, 1
  br i1 %cmpBr_47ce3e, label %block_.L_47ce49, label %block_47ce44

block_47ce44:
  ; Code: jmpq .L_47ce60	 RIP: 47ce44	 Bytes: 5
  %loadMem_47ce44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce44 = call %struct.Memory* @routine_jmpq_.L_47ce60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce44, i64 28, i64 5)
  store %struct.Memory* %call_47ce44, %struct.Memory** %MEMORY

  br label %block_.L_47ce60

  ; Code: .L_47ce49:	 RIP: 47ce49	 Bytes: 0
block_.L_47ce49:

  ; Code: movq $0x586073, %rdi	 RIP: 47ce49	 Bytes: 10
  %loadMem_47ce49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce49 = call %struct.Memory* @routine_movq__0x586073___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce49)
  store %struct.Memory* %call_47ce49, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 47ce53	 Bytes: 2
  %loadMem_47ce53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce53 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce53)
  store %struct.Memory* %call_47ce53, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 47ce55	 Bytes: 5
  %loadMem1_47ce55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ce55 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ce55, i64 -176293, i64 5, i64 5)
  store %struct.Memory* %call1_47ce55, %struct.Memory** %MEMORY

  %loadMem2_47ce55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ce55 = load i64, i64* %3
  %call2_47ce55 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_47ce55, %struct.Memory* %loadMem2_47ce55)
  store %struct.Memory* %call2_47ce55, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x41c(%rbp)	 RIP: 47ce5a	 Bytes: 6
  %loadMem_47ce5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce5a = call %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce5a)
  store %struct.Memory* %call_47ce5a, %struct.Memory** %MEMORY

  ; Code: .L_47ce60:	 RIP: 47ce60	 Bytes: 0
  br label %block_.L_47ce60
block_.L_47ce60:

  ; Code: jmpq .L_47ce65	 RIP: 47ce60	 Bytes: 5
  %loadMem_47ce60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce60 = call %struct.Memory* @routine_jmpq_.L_47ce65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce60, i64 5, i64 5)
  store %struct.Memory* %call_47ce60, %struct.Memory** %MEMORY

  br label %block_.L_47ce65

  ; Code: .L_47ce65:	 RIP: 47ce65	 Bytes: 0
block_.L_47ce65:

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 47ce65	 Bytes: 8
  %loadMem_47ce65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce65 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce65)
  store %struct.Memory* %call_47ce65, %struct.Memory** %MEMORY

  ; Code: jne .L_47ce78	 RIP: 47ce6d	 Bytes: 6
  %loadMem_47ce6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce6d = call %struct.Memory* @routine_jne_.L_47ce78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce6d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47ce6d, %struct.Memory** %MEMORY

  %loadBr_47ce6d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ce6d = icmp eq i8 %loadBr_47ce6d, 1
  br i1 %cmpBr_47ce6d, label %block_.L_47ce78, label %block_47ce73

block_47ce73:
  ; Code: jmpq .L_47cea8	 RIP: 47ce73	 Bytes: 5
  %loadMem_47ce73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce73 = call %struct.Memory* @routine_jmpq_.L_47cea8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce73, i64 53, i64 5)
  store %struct.Memory* %call_47ce73, %struct.Memory** %MEMORY

  br label %block_.L_47cea8

  ; Code: .L_47ce78:	 RIP: 47ce78	 Bytes: 0
block_.L_47ce78:

  ; Code: movq $0x582dd0, %rdi	 RIP: 47ce78	 Bytes: 10
  %loadMem_47ce78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce78 = call %struct.Memory* @routine_movq__0x582dd0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce78)
  store %struct.Memory* %call_47ce78, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 47ce82	 Bytes: 5
  %loadMem_47ce82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce82 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce82)
  store %struct.Memory* %call_47ce82, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %esi	 RIP: 47ce87	 Bytes: 6
  %loadMem_47ce87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce87 = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce87)
  store %struct.Memory* %call_47ce87, %struct.Memory** %MEMORY

  ; Code: movl -0x3e0(%rbp), %edx	 RIP: 47ce8d	 Bytes: 6
  %loadMem_47ce8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce8d = call %struct.Memory* @routine_movl_MINUS0x3e0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce8d)
  store %struct.Memory* %call_47ce8d, %struct.Memory** %MEMORY

  ; Code: subl -0x3fc(%rbp), %eax	 RIP: 47ce93	 Bytes: 6
  %loadMem_47ce93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce93 = call %struct.Memory* @routine_subl_MINUS0x3fc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce93)
  store %struct.Memory* %call_47ce93, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47ce99	 Bytes: 2
  %loadMem_47ce99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce99 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce99)
  store %struct.Memory* %call_47ce99, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 47ce9b	 Bytes: 2
  %loadMem_47ce9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce9b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce9b)
  store %struct.Memory* %call_47ce9b, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 47ce9d	 Bytes: 5
  %loadMem1_47ce9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ce9d = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ce9d, i64 -176365, i64 5, i64 5)
  store %struct.Memory* %call1_47ce9d, %struct.Memory** %MEMORY

  %loadMem2_47ce9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ce9d = load i64, i64* %3
  %call2_47ce9d = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_47ce9d, %struct.Memory* %loadMem2_47ce9d)
  store %struct.Memory* %call2_47ce9d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x420(%rbp)	 RIP: 47cea2	 Bytes: 6
  %loadMem_47cea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cea2 = call %struct.Memory* @routine_movl__eax__MINUS0x420__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cea2)
  store %struct.Memory* %call_47cea2, %struct.Memory** %MEMORY

  ; Code: .L_47cea8:	 RIP: 47cea8	 Bytes: 0
  br label %block_.L_47cea8
block_.L_47cea8:

  ; Code: movl $0x5, %eax	 RIP: 47cea8	 Bytes: 5
  %loadMem_47cea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cea8 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cea8)
  store %struct.Memory* %call_47cea8, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x3ec(%rbp)	 RIP: 47cead	 Bytes: 10
  %loadMem_47cead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cead = call %struct.Memory* @routine_movl__0x1__MINUS0x3ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cead)
  store %struct.Memory* %call_47cead, %struct.Memory** %MEMORY

  ; Code: movl -0x3e0(%rbp), %edi	 RIP: 47ceb7	 Bytes: 6
  %loadMem_47ceb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ceb7 = call %struct.Memory* @routine_movl_MINUS0x3e0__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ceb7)
  store %struct.Memory* %call_47ceb7, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %esi	 RIP: 47cebd	 Bytes: 6
  %loadMem_47cebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cebd = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cebd)
  store %struct.Memory* %call_47cebd, %struct.Memory** %MEMORY

  ; Code: subl -0x3fc(%rbp), %eax	 RIP: 47cec3	 Bytes: 6
  %loadMem_47cec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cec3 = call %struct.Memory* @routine_subl_MINUS0x3fc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cec3)
  store %struct.Memory* %call_47cec3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 47cec9	 Bytes: 2
  %loadMem_47cec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cec9 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cec9)
  store %struct.Memory* %call_47cec9, %struct.Memory** %MEMORY

  ; Code: callq .add_defense_move	 RIP: 47cecb	 Bytes: 5
  %loadMem1_47cecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47cecb = call %struct.Memory* @routine_callq_.add_defense_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47cecb, i64 -305579, i64 5, i64 5)
  store %struct.Memory* %call1_47cecb, %struct.Memory** %MEMORY

  %loadMem2_47cecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cecb = load i64, i64* %3
  %call2_47cecb = call %struct.Memory* @sub_432520.add_defense_move(%struct.State* %0, i64  %loadPC_47cecb, %struct.Memory* %loadMem2_47cecb)
  store %struct.Memory* %call2_47cecb, %struct.Memory** %MEMORY

  ; Code: .L_47ced0:	 RIP: 47ced0	 Bytes: 0
  br label %block_.L_47ced0
block_.L_47ced0:

  ; Code: jmpq .L_47ced5	 RIP: 47ced0	 Bytes: 5
  %loadMem_47ced0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ced0 = call %struct.Memory* @routine_jmpq_.L_47ced5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ced0, i64 5, i64 5)
  store %struct.Memory* %call_47ced0, %struct.Memory** %MEMORY

  br label %block_.L_47ced5

  ; Code: .L_47ced5:	 RIP: 47ced5	 Bytes: 0
block_.L_47ced5:

  ; Code: jmpq .L_47ceda	 RIP: 47ced5	 Bytes: 5
  %loadMem_47ced5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ced5 = call %struct.Memory* @routine_jmpq_.L_47ceda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ced5, i64 5, i64 5)
  store %struct.Memory* %call_47ced5, %struct.Memory** %MEMORY

  br label %block_.L_47ceda

  ; Code: .L_47ceda:	 RIP: 47ceda	 Bytes: 0
block_.L_47ceda:

  ; Code: movslq -0x3f8(%rbp), %rax	 RIP: 47ceda	 Bytes: 7
  %loadMem_47ceda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ceda = call %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ceda)
  store %struct.Memory* %call_47ceda, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47cee1	 Bytes: 8
  %loadMem_47cee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cee1 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cee1)
  store %struct.Memory* %call_47cee1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3e8(%rbp), %ecx	 RIP: 47cee9	 Bytes: 6
  %loadMem_47cee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cee9 = call %struct.Memory* @routine_cmpl_MINUS0x3e8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cee9)
  store %struct.Memory* %call_47cee9, %struct.Memory** %MEMORY

  ; Code: jne .L_47d0e5	 RIP: 47ceef	 Bytes: 6
  %loadMem_47ceef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ceef = call %struct.Memory* @routine_jne_.L_47d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ceef, i8* %BRANCH_TAKEN, i64 502, i64 6, i64 6)
  store %struct.Memory* %call_47ceef, %struct.Memory** %MEMORY

  %loadBr_47ceef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ceef = icmp eq i8 %loadBr_47ceef, 1
  br i1 %cmpBr_47ceef, label %block_.L_47d0e5, label %block_47cef5

block_47cef5:
  ; Code: movl -0x3e0(%rbp), %edi	 RIP: 47cef5	 Bytes: 6
  %loadMem_47cef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cef5 = call %struct.Memory* @routine_movl_MINUS0x3e0__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cef5)
  store %struct.Memory* %call_47cef5, %struct.Memory** %MEMORY

  ; Code: movslq -0x3e4(%rbp), %rax	 RIP: 47cefb	 Bytes: 7
  %loadMem_47cefb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cefb = call %struct.Memory* @routine_movslq_MINUS0x3e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cefb)
  store %struct.Memory* %call_47cefb, %struct.Memory** %MEMORY

  ; Code: movl -0x3d0(%rbp,%rax,4), %esi	 RIP: 47cf02	 Bytes: 7
  %loadMem_47cf02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf02 = call %struct.Memory* @routine_movl_MINUS0x3d0__rbp__rax_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf02)
  store %struct.Memory* %call_47cf02, %struct.Memory** %MEMORY

  ; Code: callq .attack_move_reason_known	 RIP: 47cf09	 Bytes: 5
  %loadMem1_47cf09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47cf09 = call %struct.Memory* @routine_callq_.attack_move_reason_known(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47cf09, i64 -307673, i64 5, i64 5)
  store %struct.Memory* %call1_47cf09, %struct.Memory** %MEMORY

  %loadMem2_47cf09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cf09 = load i64, i64* %3
  %call2_47cf09 = call %struct.Memory* @sub_431d30.attack_move_reason_known(%struct.State* %0, i64  %loadPC_47cf09, %struct.Memory* %loadMem2_47cf09)
  store %struct.Memory* %call2_47cf09, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47cf0e	 Bytes: 3
  %loadMem_47cf0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf0e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf0e)
  store %struct.Memory* %call_47cf0e, %struct.Memory** %MEMORY

  ; Code: jne .L_47d0e5	 RIP: 47cf11	 Bytes: 6
  %loadMem_47cf11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf11 = call %struct.Memory* @routine_jne_.L_47d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf11, i8* %BRANCH_TAKEN, i64 468, i64 6, i64 6)
  store %struct.Memory* %call_47cf11, %struct.Memory** %MEMORY

  %loadBr_47cf11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cf11 = icmp eq i8 %loadBr_47cf11, 1
  br i1 %cmpBr_47cf11, label %block_.L_47d0e5, label %block_47cf17

block_47cf17:
  ; Code: xorl %eax, %eax	 RIP: 47cf17	 Bytes: 2
  %loadMem_47cf17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf17 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf17)
  store %struct.Memory* %call_47cf17, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 47cf19	 Bytes: 2
  %loadMem_47cf19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf19 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf19)
  store %struct.Memory* %call_47cf19, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %edi	 RIP: 47cf1b	 Bytes: 6
  %loadMem_47cf1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf1b = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf1b)
  store %struct.Memory* %call_47cf1b, %struct.Memory** %MEMORY

  ; Code: callq .find_defense	 RIP: 47cf21	 Bytes: 5
  %loadMem1_47cf21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47cf21 = call %struct.Memory* @routine_callq_.find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47cf21, i64 -75681, i64 5, i64 5)
  store %struct.Memory* %call1_47cf21, %struct.Memory** %MEMORY

  %loadMem2_47cf21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cf21 = load i64, i64* %3
  %call2_47cf21 = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64  %loadPC_47cf21, %struct.Memory* %loadMem2_47cf21)
  store %struct.Memory* %call2_47cf21, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rsi	 RIP: 47cf26	 Bytes: 10
  %loadMem_47cf26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf26 = call %struct.Memory* @routine_movq__0xb0eff0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf26)
  store %struct.Memory* %call_47cf26, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x408(%rbp)	 RIP: 47cf30	 Bytes: 6
  %loadMem_47cf30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf30 = call %struct.Memory* @routine_movl__eax__MINUS0x408__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf30)
  store %struct.Memory* %call_47cf30, %struct.Memory** %MEMORY

  ; Code: movl -0x408(%rbp), %eax	 RIP: 47cf36	 Bytes: 6
  %loadMem_47cf36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf36 = call %struct.Memory* @routine_movl_MINUS0x408__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf36)
  store %struct.Memory* %call_47cf36, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f8(%rbp), %rcx	 RIP: 47cf3c	 Bytes: 7
  %loadMem_47cf3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf3c = call %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf3c)
  store %struct.Memory* %call_47cf3c, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 47cf43	 Bytes: 7
  %loadMem_47cf43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf43 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf43)
  store %struct.Memory* %call_47cf43, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 47cf4a	 Bytes: 3
  %loadMem_47cf4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf4a = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf4a)
  store %struct.Memory* %call_47cf4a, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb4(%rsi), %eax	 RIP: 47cf4d	 Bytes: 6
  %loadMem_47cf4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf4d = call %struct.Memory* @routine_cmpl_0xb4__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf4d)
  store %struct.Memory* %call_47cf4d, %struct.Memory** %MEMORY

  ; Code: jge .L_47d0e0	 RIP: 47cf53	 Bytes: 6
  %loadMem_47cf53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf53 = call %struct.Memory* @routine_jge_.L_47d0e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf53, i8* %BRANCH_TAKEN, i64 397, i64 6, i64 6)
  store %struct.Memory* %call_47cf53, %struct.Memory** %MEMORY

  %loadBr_47cf53 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cf53 = icmp eq i8 %loadBr_47cf53, 1
  br i1 %cmpBr_47cf53, label %block_.L_47d0e0, label %block_47cf59

block_47cf59:
  ; Code: movq $0x581d46, %rdx	 RIP: 47cf59	 Bytes: 10
  %loadMem_47cf59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf59 = call %struct.Memory* @routine_movq__0x581d46___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf59)
  store %struct.Memory* %call_47cf59, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 47cf63	 Bytes: 2
  %loadMem_47cf63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf63 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf63)
  store %struct.Memory* %call_47cf63, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rcx	 RIP: 47cf65	 Bytes: 10
  %loadMem_47cf65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf65 = call %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf65)
  store %struct.Memory* %call_47cf65, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x40c(%rbp)	 RIP: 47cf6f	 Bytes: 10
  %loadMem_47cf6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf6f = call %struct.Memory* @routine_movl__0x1__MINUS0x40c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf6f)
  store %struct.Memory* %call_47cf6f, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f8(%rbp), %rsi	 RIP: 47cf79	 Bytes: 7
  %loadMem_47cf79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf79 = call %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf79)
  store %struct.Memory* %call_47cf79, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rsi, %rsi	 RIP: 47cf80	 Bytes: 7
  %loadMem_47cf80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf80 = call %struct.Memory* @routine_imulq__0x17c___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf80)
  store %struct.Memory* %call_47cf80, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 47cf87	 Bytes: 3
  %loadMem_47cf87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf87 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf87)
  store %struct.Memory* %call_47cf87, %struct.Memory** %MEMORY

  ; Code: movl 0x8c(%rcx), %edi	 RIP: 47cf8a	 Bytes: 6
  %loadMem_47cf8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf8a = call %struct.Memory* @routine_movl_0x8c__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf8a)
  store %struct.Memory* %call_47cf8a, %struct.Memory** %MEMORY

  ; Code: movl -0x3e8(%rbp), %esi	 RIP: 47cf90	 Bytes: 6
  %loadMem_47cf90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf90 = call %struct.Memory* @routine_movl_MINUS0x3e8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf90)
  store %struct.Memory* %call_47cf90, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47cf96	 Bytes: 2
  %loadMem_47cf96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf96 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf96)
  store %struct.Memory* %call_47cf96, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 47cf98	 Bytes: 3
  %loadMem_47cf98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf98 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf98)
  store %struct.Memory* %call_47cf98, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 47cf9b	 Bytes: 3
  %loadMem_47cf9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf9b = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf9b)
  store %struct.Memory* %call_47cf9b, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 47cf9e	 Bytes: 5
  %loadMem1_47cf9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47cf9e = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47cf9e, i64 -475502, i64 5, i64 5)
  store %struct.Memory* %call1_47cf9e, %struct.Memory** %MEMORY

  %loadMem2_47cf9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cf9e = load i64, i64* %3
  %call2_47cf9e = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_47cf9e, %struct.Memory* %loadMem2_47cf9e)
  store %struct.Memory* %call2_47cf9e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47cfa3	 Bytes: 3
  %loadMem_47cfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfa3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfa3)
  store %struct.Memory* %call_47cfa3, %struct.Memory** %MEMORY

  ; Code: je .L_47d027	 RIP: 47cfa6	 Bytes: 6
  %loadMem_47cfa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfa6 = call %struct.Memory* @routine_je_.L_47d027(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfa6, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_47cfa6, %struct.Memory** %MEMORY

  %loadBr_47cfa6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cfa6 = icmp eq i8 %loadBr_47cfa6, 1
  br i1 %cmpBr_47cfa6, label %block_.L_47d027, label %block_47cfac

block_47cfac:
  ; Code: xorl %eax, %eax	 RIP: 47cfac	 Bytes: 2
  %loadMem_47cfac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfac = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfac)
  store %struct.Memory* %call_47cfac, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 47cfae	 Bytes: 2
  %loadMem_47cfae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfae = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfae)
  store %struct.Memory* %call_47cfae, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %edi	 RIP: 47cfb0	 Bytes: 6
  %loadMem_47cfb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfb0 = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfb0)
  store %struct.Memory* %call_47cfb0, %struct.Memory** %MEMORY

  ; Code: callq .attack	 RIP: 47cfb6	 Bytes: 5
  %loadMem1_47cfb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47cfb6 = call %struct.Memory* @routine_callq_.attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47cfb6, i64 -128118, i64 5, i64 5)
  store %struct.Memory* %call1_47cfb6, %struct.Memory** %MEMORY

  %loadMem2_47cfb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cfb6 = load i64, i64* %3
  %call2_47cfb6 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64  %loadPC_47cfb6, %struct.Memory* %loadMem2_47cfb6)
  store %struct.Memory* %call2_47cfb6, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %edi	 RIP: 47cfbb	 Bytes: 5
  %loadMem_47cfbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfbb = call %struct.Memory* @routine_movl__0x5___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfbb)
  store %struct.Memory* %call_47cfbb, %struct.Memory** %MEMORY

  ; Code: subl %eax, %edi	 RIP: 47cfc0	 Bytes: 2
  %loadMem_47cfc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfc0 = call %struct.Memory* @routine_subl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfc0)
  store %struct.Memory* %call_47cfc0, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x410(%rbp)	 RIP: 47cfc2	 Bytes: 6
  %loadMem_47cfc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfc2 = call %struct.Memory* @routine_movl__edi__MINUS0x410__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfc2)
  store %struct.Memory* %call_47cfc2, %struct.Memory** %MEMORY

  ; Code: movl -0x410(%rbp), %eax	 RIP: 47cfc8	 Bytes: 6
  %loadMem_47cfc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfc8 = call %struct.Memory* @routine_movl_MINUS0x410__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfc8)
  store %struct.Memory* %call_47cfc8, %struct.Memory** %MEMORY

  ; Code: cmpl -0x408(%rbp), %eax	 RIP: 47cfce	 Bytes: 6
  %loadMem_47cfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfce = call %struct.Memory* @routine_cmpl_MINUS0x408__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfce)
  store %struct.Memory* %call_47cfce, %struct.Memory** %MEMORY

  ; Code: jle .L_47d022	 RIP: 47cfd4	 Bytes: 6
  %loadMem_47cfd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfd4 = call %struct.Memory* @routine_jle_.L_47d022(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfd4, i8* %BRANCH_TAKEN, i64 78, i64 6, i64 6)
  store %struct.Memory* %call_47cfd4, %struct.Memory** %MEMORY

  %loadBr_47cfd4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cfd4 = icmp eq i8 %loadBr_47cfd4, 1
  br i1 %cmpBr_47cfd4, label %block_.L_47d022, label %block_47cfda

block_47cfda:
  ; Code: movq $0xb0eff0, %rax	 RIP: 47cfda	 Bytes: 10
  %loadMem_47cfda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfda = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfda)
  store %struct.Memory* %call_47cfda, %struct.Memory** %MEMORY

  ; Code: movl -0x410(%rbp), %ecx	 RIP: 47cfe4	 Bytes: 6
  %loadMem_47cfe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfe4 = call %struct.Memory* @routine_movl_MINUS0x410__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfe4)
  store %struct.Memory* %call_47cfe4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x408(%rbp)	 RIP: 47cfea	 Bytes: 6
  %loadMem_47cfea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfea = call %struct.Memory* @routine_movl__ecx__MINUS0x408__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfea)
  store %struct.Memory* %call_47cfea, %struct.Memory** %MEMORY

  ; Code: movl -0x408(%rbp), %ecx	 RIP: 47cff0	 Bytes: 6
  %loadMem_47cff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cff0 = call %struct.Memory* @routine_movl_MINUS0x408__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cff0)
  store %struct.Memory* %call_47cff0, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f8(%rbp), %rdx	 RIP: 47cff6	 Bytes: 7
  %loadMem_47cff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cff6 = call %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cff6)
  store %struct.Memory* %call_47cff6, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 47cffd	 Bytes: 7
  %loadMem_47cffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cffd = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cffd)
  store %struct.Memory* %call_47cffd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47d004	 Bytes: 3
  %loadMem_47d004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d004 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d004)
  store %struct.Memory* %call_47d004, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb4(%rax), %ecx	 RIP: 47d007	 Bytes: 6
  %loadMem_47d007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d007 = call %struct.Memory* @routine_cmpl_0xb4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d007)
  store %struct.Memory* %call_47d007, %struct.Memory** %MEMORY

  ; Code: jl .L_47d01d	 RIP: 47d00d	 Bytes: 6
  %loadMem_47d00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d00d = call %struct.Memory* @routine_jl_.L_47d01d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d00d, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_47d00d, %struct.Memory** %MEMORY

  %loadBr_47d00d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d00d = icmp eq i8 %loadBr_47d00d, 1
  br i1 %cmpBr_47d00d, label %block_.L_47d01d, label %block_47d013

block_47d013:
  ; Code: movl $0x0, -0x40c(%rbp)	 RIP: 47d013	 Bytes: 10
  %loadMem_47d013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d013 = call %struct.Memory* @routine_movl__0x0__MINUS0x40c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d013)
  store %struct.Memory* %call_47d013, %struct.Memory** %MEMORY

  ; Code: .L_47d01d:	 RIP: 47d01d	 Bytes: 0
  br label %block_.L_47d01d
block_.L_47d01d:

  ; Code: jmpq .L_47d022	 RIP: 47d01d	 Bytes: 5
  %loadMem_47d01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d01d = call %struct.Memory* @routine_jmpq_.L_47d022(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d01d, i64 5, i64 5)
  store %struct.Memory* %call_47d01d, %struct.Memory** %MEMORY

  br label %block_.L_47d022

  ; Code: .L_47d022:	 RIP: 47d022	 Bytes: 0
block_.L_47d022:

  ; Code: callq .popgo	 RIP: 47d022	 Bytes: 5
  %loadMem1_47d022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d022 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d022, i64 -455362, i64 5, i64 5)
  store %struct.Memory* %call1_47d022, %struct.Memory** %MEMORY

  %loadMem2_47d022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d022 = load i64, i64* %3
  %call2_47d022 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_47d022, %struct.Memory* %loadMem2_47d022)
  store %struct.Memory* %call2_47d022, %struct.Memory** %MEMORY

  ; Code: .L_47d027:	 RIP: 47d027	 Bytes: 0
  br label %block_.L_47d027
block_.L_47d027:

  ; Code: cmpl $0x0, -0x40c(%rbp)	 RIP: 47d027	 Bytes: 7
  %loadMem_47d027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d027 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x40c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d027)
  store %struct.Memory* %call_47d027, %struct.Memory** %MEMORY

  ; Code: je .L_47d0db	 RIP: 47d02e	 Bytes: 6
  %loadMem_47d02e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d02e = call %struct.Memory* @routine_je_.L_47d0db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d02e, i8* %BRANCH_TAKEN, i64 173, i64 6, i64 6)
  store %struct.Memory* %call_47d02e, %struct.Memory** %MEMORY

  %loadBr_47d02e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d02e = icmp eq i8 %loadBr_47d02e, 1
  br i1 %cmpBr_47d02e, label %block_.L_47d0db, label %block_47d034

block_47d034:
  ; Code: cmpl $0x0, -0x3ec(%rbp)	 RIP: 47d034	 Bytes: 7
  %loadMem_47d034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d034 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d034)
  store %struct.Memory* %call_47d034, %struct.Memory** %MEMORY

  ; Code: jne .L_47d070	 RIP: 47d03b	 Bytes: 6
  %loadMem_47d03b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d03b = call %struct.Memory* @routine_jne_.L_47d070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d03b, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_47d03b, %struct.Memory** %MEMORY

  %loadBr_47d03b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d03b = icmp eq i8 %loadBr_47d03b, 1
  br i1 %cmpBr_47d03b, label %block_.L_47d070, label %block_47d041

block_47d041:
  ; Code: cmpl $0x0, 0xab0f28	 RIP: 47d041	 Bytes: 8
  %loadMem_47d041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d041 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d041)
  store %struct.Memory* %call_47d041, %struct.Memory** %MEMORY

  ; Code: jne .L_47d054	 RIP: 47d049	 Bytes: 6
  %loadMem_47d049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d049 = call %struct.Memory* @routine_jne_.L_47d054(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d049, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47d049, %struct.Memory** %MEMORY

  %loadBr_47d049 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d049 = icmp eq i8 %loadBr_47d049, 1
  br i1 %cmpBr_47d049, label %block_.L_47d054, label %block_47d04f

block_47d04f:
  ; Code: jmpq .L_47d06b	 RIP: 47d04f	 Bytes: 5
  %loadMem_47d04f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d04f = call %struct.Memory* @routine_jmpq_.L_47d06b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d04f, i64 28, i64 5)
  store %struct.Memory* %call_47d04f, %struct.Memory** %MEMORY

  br label %block_.L_47d06b

  ; Code: .L_47d054:	 RIP: 47d054	 Bytes: 0
block_.L_47d054:

  ; Code: movq $0x586073, %rdi	 RIP: 47d054	 Bytes: 10
  %loadMem_47d054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d054 = call %struct.Memory* @routine_movq__0x586073___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d054)
  store %struct.Memory* %call_47d054, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 47d05e	 Bytes: 2
  %loadMem_47d05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d05e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d05e)
  store %struct.Memory* %call_47d05e, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 47d060	 Bytes: 5
  %loadMem1_47d060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d060 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d060, i64 -176816, i64 5, i64 5)
  store %struct.Memory* %call1_47d060, %struct.Memory** %MEMORY

  %loadMem2_47d060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d060 = load i64, i64* %3
  %call2_47d060 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_47d060, %struct.Memory* %loadMem2_47d060)
  store %struct.Memory* %call2_47d060, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x424(%rbp)	 RIP: 47d065	 Bytes: 6
  %loadMem_47d065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d065 = call %struct.Memory* @routine_movl__eax__MINUS0x424__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d065)
  store %struct.Memory* %call_47d065, %struct.Memory** %MEMORY

  ; Code: .L_47d06b:	 RIP: 47d06b	 Bytes: 0
  br label %block_.L_47d06b
block_.L_47d06b:

  ; Code: jmpq .L_47d070	 RIP: 47d06b	 Bytes: 5
  %loadMem_47d06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d06b = call %struct.Memory* @routine_jmpq_.L_47d070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d06b, i64 5, i64 5)
  store %struct.Memory* %call_47d06b, %struct.Memory** %MEMORY

  br label %block_.L_47d070

  ; Code: .L_47d070:	 RIP: 47d070	 Bytes: 0
block_.L_47d070:

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 47d070	 Bytes: 8
  %loadMem_47d070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d070 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d070)
  store %struct.Memory* %call_47d070, %struct.Memory** %MEMORY

  ; Code: jne .L_47d083	 RIP: 47d078	 Bytes: 6
  %loadMem_47d078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d078 = call %struct.Memory* @routine_jne_.L_47d083(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d078, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47d078, %struct.Memory** %MEMORY

  %loadBr_47d078 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d078 = icmp eq i8 %loadBr_47d078, 1
  br i1 %cmpBr_47d078, label %block_.L_47d083, label %block_47d07e

block_47d07e:
  ; Code: jmpq .L_47d0b3	 RIP: 47d07e	 Bytes: 5
  %loadMem_47d07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d07e = call %struct.Memory* @routine_jmpq_.L_47d0b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d07e, i64 53, i64 5)
  store %struct.Memory* %call_47d07e, %struct.Memory** %MEMORY

  br label %block_.L_47d0b3

  ; Code: .L_47d083:	 RIP: 47d083	 Bytes: 0
block_.L_47d083:

  ; Code: movq $0x582e06, %rdi	 RIP: 47d083	 Bytes: 10
  %loadMem_47d083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d083 = call %struct.Memory* @routine_movq__0x582e06___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d083)
  store %struct.Memory* %call_47d083, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 47d08d	 Bytes: 5
  %loadMem_47d08d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d08d = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d08d)
  store %struct.Memory* %call_47d08d, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %esi	 RIP: 47d092	 Bytes: 6
  %loadMem_47d092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d092 = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d092)
  store %struct.Memory* %call_47d092, %struct.Memory** %MEMORY

  ; Code: movl -0x3e0(%rbp), %edx	 RIP: 47d098	 Bytes: 6
  %loadMem_47d098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d098 = call %struct.Memory* @routine_movl_MINUS0x3e0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d098)
  store %struct.Memory* %call_47d098, %struct.Memory** %MEMORY

  ; Code: subl -0x408(%rbp), %eax	 RIP: 47d09e	 Bytes: 6
  %loadMem_47d09e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d09e = call %struct.Memory* @routine_subl_MINUS0x408__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d09e)
  store %struct.Memory* %call_47d09e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47d0a4	 Bytes: 2
  %loadMem_47d0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0a4 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0a4)
  store %struct.Memory* %call_47d0a4, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 47d0a6	 Bytes: 2
  %loadMem_47d0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0a6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0a6)
  store %struct.Memory* %call_47d0a6, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 47d0a8	 Bytes: 5
  %loadMem1_47d0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d0a8 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d0a8, i64 -176888, i64 5, i64 5)
  store %struct.Memory* %call1_47d0a8, %struct.Memory** %MEMORY

  %loadMem2_47d0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d0a8 = load i64, i64* %3
  %call2_47d0a8 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_47d0a8, %struct.Memory* %loadMem2_47d0a8)
  store %struct.Memory* %call2_47d0a8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x428(%rbp)	 RIP: 47d0ad	 Bytes: 6
  %loadMem_47d0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0ad = call %struct.Memory* @routine_movl__eax__MINUS0x428__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0ad)
  store %struct.Memory* %call_47d0ad, %struct.Memory** %MEMORY

  ; Code: .L_47d0b3:	 RIP: 47d0b3	 Bytes: 0
  br label %block_.L_47d0b3
block_.L_47d0b3:

  ; Code: movl $0x5, %eax	 RIP: 47d0b3	 Bytes: 5
  %loadMem_47d0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0b3 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0b3)
  store %struct.Memory* %call_47d0b3, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x3ec(%rbp)	 RIP: 47d0b8	 Bytes: 10
  %loadMem_47d0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0b8 = call %struct.Memory* @routine_movl__0x1__MINUS0x3ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0b8)
  store %struct.Memory* %call_47d0b8, %struct.Memory** %MEMORY

  ; Code: movl -0x3e0(%rbp), %edi	 RIP: 47d0c2	 Bytes: 6
  %loadMem_47d0c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0c2 = call %struct.Memory* @routine_movl_MINUS0x3e0__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0c2)
  store %struct.Memory* %call_47d0c2, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %esi	 RIP: 47d0c8	 Bytes: 6
  %loadMem_47d0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0c8 = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0c8)
  store %struct.Memory* %call_47d0c8, %struct.Memory** %MEMORY

  ; Code: subl -0x408(%rbp), %eax	 RIP: 47d0ce	 Bytes: 6
  %loadMem_47d0ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0ce = call %struct.Memory* @routine_subl_MINUS0x408__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0ce)
  store %struct.Memory* %call_47d0ce, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 47d0d4	 Bytes: 2
  %loadMem_47d0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0d4 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0d4)
  store %struct.Memory* %call_47d0d4, %struct.Memory** %MEMORY

  ; Code: callq .add_attack_move	 RIP: 47d0d6	 Bytes: 5
  %loadMem1_47d0d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d0d6 = call %struct.Memory* @routine_callq_.add_attack_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d0d6, i64 -307126, i64 5, i64 5)
  store %struct.Memory* %call1_47d0d6, %struct.Memory** %MEMORY

  %loadMem2_47d0d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d0d6 = load i64, i64* %3
  %call2_47d0d6 = call %struct.Memory* @sub_432120.add_attack_move(%struct.State* %0, i64  %loadPC_47d0d6, %struct.Memory* %loadMem2_47d0d6)
  store %struct.Memory* %call2_47d0d6, %struct.Memory** %MEMORY

  ; Code: .L_47d0db:	 RIP: 47d0db	 Bytes: 0
  br label %block_.L_47d0db
block_.L_47d0db:

  ; Code: jmpq .L_47d0e0	 RIP: 47d0db	 Bytes: 5
  %loadMem_47d0db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0db = call %struct.Memory* @routine_jmpq_.L_47d0e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0db, i64 5, i64 5)
  store %struct.Memory* %call_47d0db, %struct.Memory** %MEMORY

  br label %block_.L_47d0e0

  ; Code: .L_47d0e0:	 RIP: 47d0e0	 Bytes: 0
block_.L_47d0e0:

  ; Code: jmpq .L_47d0e5	 RIP: 47d0e0	 Bytes: 5
  %loadMem_47d0e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0e0 = call %struct.Memory* @routine_jmpq_.L_47d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0e0, i64 5, i64 5)
  store %struct.Memory* %call_47d0e0, %struct.Memory** %MEMORY

  br label %block_.L_47d0e5

  ; Code: .L_47d0e5:	 RIP: 47d0e5	 Bytes: 0
block_.L_47d0e5:

  ; Code: jmpq .L_47d0ea	 RIP: 47d0e5	 Bytes: 5
  %loadMem_47d0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0e5 = call %struct.Memory* @routine_jmpq_.L_47d0ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0e5, i64 5, i64 5)
  store %struct.Memory* %call_47d0e5, %struct.Memory** %MEMORY

  br label %block_.L_47d0ea

  ; Code: .L_47d0ea:	 RIP: 47d0ea	 Bytes: 0
block_.L_47d0ea:

  ; Code: movl -0x3e4(%rbp), %eax	 RIP: 47d0ea	 Bytes: 6
  %loadMem_47d0ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0ea = call %struct.Memory* @routine_movl_MINUS0x3e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0ea)
  store %struct.Memory* %call_47d0ea, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47d0f0	 Bytes: 3
  %loadMem_47d0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0f0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0f0)
  store %struct.Memory* %call_47d0f0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3e4(%rbp)	 RIP: 47d0f3	 Bytes: 6
  %loadMem_47d0f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0f3 = call %struct.Memory* @routine_movl__eax__MINUS0x3e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0f3)
  store %struct.Memory* %call_47d0f3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47cc8c	 RIP: 47d0f9	 Bytes: 5
  %loadMem_47d0f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0f9 = call %struct.Memory* @routine_jmpq_.L_47cc8c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0f9, i64 -1133, i64 5)
  store %struct.Memory* %call_47d0f9, %struct.Memory** %MEMORY

  br label %block_.L_47cc8c

  ; Code: .L_47d0fe:	 RIP: 47d0fe	 Bytes: 0
block_.L_47d0fe:

  ; Code: callq .popgo	 RIP: 47d0fe	 Bytes: 5
  %loadMem1_47d0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d0fe = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d0fe, i64 -455582, i64 5, i64 5)
  store %struct.Memory* %call1_47d0fe, %struct.Memory** %MEMORY

  %loadMem2_47d0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d0fe = load i64, i64* %3
  %call2_47d0fe = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_47d0fe, %struct.Memory* %loadMem2_47d0fe)
  store %struct.Memory* %call2_47d0fe, %struct.Memory** %MEMORY

  ; Code: .L_47d103:	 RIP: 47d103	 Bytes: 0
  br label %block_.L_47d103
block_.L_47d103:

  ; Code: jmpq .L_47d108	 RIP: 47d103	 Bytes: 5
  %loadMem_47d103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d103 = call %struct.Memory* @routine_jmpq_.L_47d108(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d103, i64 5, i64 5)
  store %struct.Memory* %call_47d103, %struct.Memory** %MEMORY

  br label %block_.L_47d108

  ; Code: .L_47d108:	 RIP: 47d108	 Bytes: 0
block_.L_47d108:

  ; Code: movl -0x3dc(%rbp), %eax	 RIP: 47d108	 Bytes: 6
  %loadMem_47d108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d108 = call %struct.Memory* @routine_movl_MINUS0x3dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d108)
  store %struct.Memory* %call_47d108, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47d10e	 Bytes: 3
  %loadMem_47d10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d10e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d10e)
  store %struct.Memory* %call_47d10e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3dc(%rbp)	 RIP: 47d111	 Bytes: 6
  %loadMem_47d111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d111 = call %struct.Memory* @routine_movl__eax__MINUS0x3dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d111)
  store %struct.Memory* %call_47d111, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47ca20	 RIP: 47d117	 Bytes: 5
  %loadMem_47d117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d117 = call %struct.Memory* @routine_jmpq_.L_47ca20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d117, i64 -1783, i64 5)
  store %struct.Memory* %call_47d117, %struct.Memory** %MEMORY

  br label %block_.L_47ca20

  ; Code: .L_47d11c:	 RIP: 47d11c	 Bytes: 0
block_.L_47d11c:

  ; Code: jmpq .L_47d121	 RIP: 47d11c	 Bytes: 5
  %loadMem_47d11c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d11c = call %struct.Memory* @routine_jmpq_.L_47d121(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d11c, i64 5, i64 5)
  store %struct.Memory* %call_47d11c, %struct.Memory** %MEMORY

  br label %block_.L_47d121

  ; Code: .L_47d121:	 RIP: 47d121	 Bytes: 0
block_.L_47d121:

  ; Code: movl -0x3d8(%rbp), %eax	 RIP: 47d121	 Bytes: 6
  %loadMem_47d121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d121 = call %struct.Memory* @routine_movl_MINUS0x3d8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d121)
  store %struct.Memory* %call_47d121, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47d127	 Bytes: 3
  %loadMem_47d127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d127 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d127)
  store %struct.Memory* %call_47d127, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3d8(%rbp)	 RIP: 47d12a	 Bytes: 6
  %loadMem_47d12a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d12a = call %struct.Memory* @routine_movl__eax__MINUS0x3d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d12a)
  store %struct.Memory* %call_47d12a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47ca03	 RIP: 47d130	 Bytes: 5
  %loadMem_47d130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d130 = call %struct.Memory* @routine_jmpq_.L_47ca03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d130, i64 -1837, i64 5)
  store %struct.Memory* %call_47d130, %struct.Memory** %MEMORY

  br label %block_.L_47ca03

  ; Code: .L_47d135:	 RIP: 47d135	 Bytes: 0
block_.L_47d135:

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 47d135	 Bytes: 8
  %loadMem_47d135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d135 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d135)
  store %struct.Memory* %call_47d135, %struct.Memory** %MEMORY

  ; Code: jne .L_47d148	 RIP: 47d13d	 Bytes: 6
  %loadMem_47d13d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d13d = call %struct.Memory* @routine_jne_.L_47d148(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d13d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47d13d, %struct.Memory** %MEMORY

  %loadBr_47d13d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d13d = icmp eq i8 %loadBr_47d13d, 1
  br i1 %cmpBr_47d13d, label %block_.L_47d148, label %block_47d143

block_47d143:
  ; Code: jmpq .L_47d15f	 RIP: 47d143	 Bytes: 5
  %loadMem_47d143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d143 = call %struct.Memory* @routine_jmpq_.L_47d15f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d143, i64 28, i64 5)
  store %struct.Memory* %call_47d143, %struct.Memory** %MEMORY

  br label %block_.L_47d15f

  ; Code: .L_47d148:	 RIP: 47d148	 Bytes: 0
block_.L_47d148:

  ; Code: movq $0x586073, %rdi	 RIP: 47d148	 Bytes: 10
  %loadMem_47d148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d148 = call %struct.Memory* @routine_movq__0x586073___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d148)
  store %struct.Memory* %call_47d148, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 47d152	 Bytes: 2
  %loadMem_47d152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d152 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d152)
  store %struct.Memory* %call_47d152, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 47d154	 Bytes: 5
  %loadMem1_47d154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d154 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d154, i64 -177060, i64 5, i64 5)
  store %struct.Memory* %call1_47d154, %struct.Memory** %MEMORY

  %loadMem2_47d154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d154 = load i64, i64* %3
  %call2_47d154 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_47d154, %struct.Memory* %loadMem2_47d154)
  store %struct.Memory* %call2_47d154, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x42c(%rbp)	 RIP: 47d159	 Bytes: 6
  %loadMem_47d159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d159 = call %struct.Memory* @routine_movl__eax__MINUS0x42c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d159)
  store %struct.Memory* %call_47d159, %struct.Memory** %MEMORY

  ; Code: .L_47d15f:	 RIP: 47d15f	 Bytes: 0
  br label %block_.L_47d15f
block_.L_47d15f:

  ; Code: callq .decrease_depth_values	 RIP: 47d15f	 Bytes: 5
  %loadMem1_47d15f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d15f = call %struct.Memory* @routine_callq_.decrease_depth_values(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d15f, i64 -23711, i64 5, i64 5)
  store %struct.Memory* %call1_47d15f, %struct.Memory** %MEMORY

  %loadMem2_47d15f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d15f = load i64, i64* %3
  %call2_47d15f = call %struct.Memory* @sub_4774c0.decrease_depth_values(%struct.State* %0, i64  %loadPC_47d15f, %struct.Memory* %loadMem2_47d15f)
  store %struct.Memory* %call2_47d15f, %struct.Memory** %MEMORY

  ; Code: addq $0x430, %rsp	 RIP: 47d164	 Bytes: 7
  %loadMem_47d164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d164 = call %struct.Memory* @routine_addq__0x430___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d164)
  store %struct.Memory* %call_47d164, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 47d16b	 Bytes: 1
  %loadMem_47d16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d16b = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d16b)
  store %struct.Memory* %call_47d16b, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 47d16c	 Bytes: 1
  %loadMem_47d16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d16c = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d16c)
  store %struct.Memory* %call_47d16c, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_47d16c
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

define %struct.Memory* @routine_subq__0x430___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1072)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x3d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 980
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__eax__MINUS0x3e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1000
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jne_.L_47c8a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_47c8c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x582d8c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582d8c_type* @G__0x582d8c to i64))
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


define %struct.Memory* @routine_movl__eax__MINUS0x414__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1044
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x3d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 984
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x3d8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 984
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

define %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x7ae438_type* @G_0x7ae438 to i64))
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

define %struct.Memory* @routine_jge_.L_47c9f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x3dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 988
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x3dc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 988
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_47c9db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %3 to i32*
  %7 = load i32, i32* %6
  %8 = sext i32 %7 to i64
  %9 = shl i64 %4, 32
  %10 = ashr exact i64 %9, 32
  %11 = mul  i64 %8, %10
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

define %struct.Memory* @routine_imull__0x14__MINUS0x3d8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 984
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13, i64 20)
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

define %struct.Memory* @routine_addl__0x15___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 21)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_addl_MINUS0x3dc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 988
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x3e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 992
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movslq_MINUS0x3e0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 992
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_je_.L_47c9c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xb0eff0_type* @G__0xb0eff0 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 380)
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


define %struct.Memory* @routine_cmpl_MINUS0x3e0__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 992
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_47c9c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 100
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 180
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_MINUS0x3e0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 992
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x3d4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 980
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x3d0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -976
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movl_MINUS0x3d4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 980
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x3d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 980
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47c9c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x3dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 988
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47c8e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47c9e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x3d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 984
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47c8ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_callq_.increase_depth_values(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_47d135(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_47d11c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl__0x0__MINUS0x3e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 996
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x78__MINUS0x3e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 996
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 120)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_47cbde(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xb9d8f0_type* @G__0xb9d8f0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 564)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0x3e4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 996
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x48__rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, 72
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__edx__MINUS0x3f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1008
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x3f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1008
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_47ca9e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47cbde(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xafdfc0_type* @G__0xafdfc0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1008
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 12)
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


define %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x3f4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1012
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_cmpl__0x2____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_je_.L_47cbc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x4____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 4)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_cmpl__0x6____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 6)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_cmpl__0x8____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 8)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_cmpl__0xa____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 10)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_cmpl__0xc____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 12)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_cmpl__0xe____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 14)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_cmpl__0x10____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 16)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_47cbc5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_47cbca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x3e4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 996
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x3e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 996
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47ca53(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_47cc18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_cmpl__0xffffffff__0x48__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, 72
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 -1)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jne_.L_47cc1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d108(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x3ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1004
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jne_.L_47cc3a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47cc57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57c2fd___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57c2fd_type* @G__0x57c2fd to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x3e0__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 992
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0x418__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1048
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__0x581d46___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x581d46_type* @G__0x581d46 to i64))
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


define %struct.Memory* @routine_movl_MINUS0x3e0__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 992
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_je_.L_47d103(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl_MINUS0x3d4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 980
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_47d0fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x3e4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 996
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x3d0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -976
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__ecx__MINUS0x3f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1016
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_47ceda(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x3d0__rbp__rax_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -976
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_callq_.defense_move_reason_known(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x3f8__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movq__0xb0eff0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0xb0eff0_type* @G__0xb0eff0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x3fc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1020
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x3fc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1020
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_cmpl_0x64__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = add i64 %14, 100
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_47ced5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0xb0eff0_type* @G__0xb0eff0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x1__MINUS0x400__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1024
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x17c___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 380)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rsi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl_0x3c__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x3e8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1000
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_je_.L_47ce1c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_47cd9f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x400__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1024
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_47ce17(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movl__0x5___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 5)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_subl__eax___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edi__MINUS0x404__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1028
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x404__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1028
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x3fc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1020
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
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

define %struct.Memory* @routine_jle_.L_47ce12(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x404__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1028
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x3fc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1020
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x3fc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1020
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 380)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_cmpl_0x64__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 100
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jl_.L_47ce0d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_47ce12(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x400__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1024
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_47ced0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x3ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1004
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47ce65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_47ce49(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47ce60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x586073___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x586073_type* @G__0x586073 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1052
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47ce65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_47ce78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47cea8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x582dd0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582dd0_type* @G__0x582dd0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x3e0__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 992
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl_MINUS0x3fc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1020
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl__eax__MINUS0x420__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1056
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__0x1__MINUS0x3ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1004
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_callq_.add_defense_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47ced5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47ceda(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_cmpl_MINUS0x3e8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1000
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_47d0e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_callq_.attack_move_reason_known(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_movl__eax__MINUS0x408__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1032
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x408__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1032
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cmpl_0xb4__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = add i64 %14, 180
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_47d0e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl__0x1__MINUS0x40c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1036
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movl_0x8c__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_je_.L_47d027(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movl__edi__MINUS0x410__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1040
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x410__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1040
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x408__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1032
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_47d022(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x410__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1040
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x408__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1032
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x408__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1032
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cmpl_0xb4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 180
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jl_.L_47d01d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x40c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1036
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_47d022(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x40c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1036
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_47d0db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_47d070(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_47d054(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d06b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movl__eax__MINUS0x424__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1060
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47d070(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_47d083(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d0b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x582e06___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582e06_type* @G__0x582e06 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_subl_MINUS0x408__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1032
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl__eax__MINUS0x428__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1064
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_callq_.add_attack_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d0e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47d0e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47d0ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_47cc8c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jmpq_.L_47ca20(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47d121(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_47ca03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_47d148(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d15f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movl__eax__MINUS0x42c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1068
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.decrease_depth_values(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x430___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1072)
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

