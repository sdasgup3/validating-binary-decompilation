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

declare %struct.Memory* @sub_400fd0.toupper_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0x57a760_type = type <{ [8 x i8] }>
@G__0x57a760= global %G__0x57a760_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57a763_type = type <{ [8 x i8] }>
@G__0x57a763= global %G__0x57a763_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57a92d_type = type <{ [8 x i8] }>
@G__0x57a92d= global %G__0x57a92d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57b705_type = type <{ [8 x i8] }>
@G__0x57b705= global %G__0x57b705_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c0a9_type = type <{ [8 x i8] }>
@G__0x57c0a9= global %G__0x57c0a9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f610_type = type <{ [8 x i8] }>
@G__0x57f610= global %G__0x57f610_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fc64_type = type <{ [8 x i8] }>
@G__0x57fc64= global %G__0x57fc64_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fdf5_type = type <{ [8 x i8] }>
@G__0x57fdf5= global %G__0x57fdf5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5835e4_type = type <{ [8 x i8] }>
@G__0x5835e4= global %G__0x5835e4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x585698_type = type <{ [8 x i8] }>
@G__0x585698= global %G__0x585698_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5856fa_type = type <{ [8 x i8] }>
@G__0x5856fa= global %G__0x5856fa_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5857db_type = type <{ [8 x i8] }>
@G__0x5857db= global %G__0x5857db_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x585d71_type = type <{ [8 x i8] }>
@G__0x585d71= global %G__0x585d71_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x585f74_type = type <{ [8 x i8] }>
@G__0x585f74= global %G__0x585f74_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5861b6_type = type <{ [8 x i8] }>
@G__0x5861b6= global %G__0x5861b6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586a9a_type = type <{ [8 x i8] }>
@G__0x586a9a= global %G__0x586a9a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586aa4_type = type <{ [8 x i8] }>
@G__0x586aa4= global %G__0x586aa4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586aae_type = type <{ [8 x i8] }>
@G__0x586aae= global %G__0x586aae_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586ab8_type = type <{ [8 x i8] }>
@G__0x586ab8= global %G__0x586ab8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586ac4_type = type <{ [8 x i8] }>
@G__0x586ac4= global %G__0x586ac4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586ad0_type = type <{ [8 x i8] }>
@G__0x586ad0= global %G__0x586ad0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586add_type = type <{ [8 x i8] }>
@G__0x586add= global %G__0x586add_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586ae5_type = type <{ [8 x i8] }>
@G__0x586ae5= global %G__0x586ae5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586aef_type = type <{ [8 x i8] }>
@G__0x586aef= global %G__0x586aef_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586af6_type = type <{ [8 x i8] }>
@G__0x586af6= global %G__0x586af6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586aff_type = type <{ [8 x i8] }>
@G__0x586aff= global %G__0x586aff_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586b09_type = type <{ [8 x i8] }>
@G__0x586b09= global %G__0x586b09_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586b12_type = type <{ [8 x i8] }>
@G__0x586b12= global %G__0x586b12_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586b19_type = type <{ [8 x i8] }>
@G__0x586b19= global %G__0x586b19_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586b1e_type = type <{ [8 x i8] }>
@G__0x586b1e= global %G__0x586b1e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586b24_type = type <{ [8 x i8] }>
@G__0x586b24= global %G__0x586b24_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586b2a_type = type <{ [8 x i8] }>
@G__0x586b2a= global %G__0x586b2a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586b2f_type = type <{ [8 x i8] }>
@G__0x586b2f= global %G__0x586b2f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586b34_type = type <{ [8 x i8] }>
@G__0x586b34= global %G__0x586b34_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586b3c_type = type <{ [8 x i8] }>
@G__0x586b3c= global %G__0x586b3c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586b44_type = type <{ [8 x i8] }>
@G__0x586b44= global %G__0x586b44_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586b49_type = type <{ [8 x i8] }>
@G__0x586b49= global %G__0x586b49_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586b51_type = type <{ [8 x i8] }>
@G__0x586b51= global %G__0x586b51_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586b56_type = type <{ [8 x i8] }>
@G__0x586b56= global %G__0x586b56_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586eef_type = type <{ [8 x i8] }>
@G__0x586eef= global %G__0x586eef_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58730e_type = type <{ [8 x i8] }>
@G__0x58730e= global %G__0x58730e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58742a_type = type <{ [8 x i8] }>
@G__0x58742a= global %G__0x58742a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5877c3_type = type <{ [8 x i8] }>
@G__0x5877c3= global %G__0x5877c3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @get_command(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .get_command:	 RIP: 4909e0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4909e0	 Bytes: 1
  %loadMem_4909e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909e0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909e0)
  store %struct.Memory* %call_4909e0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4909e1	 Bytes: 3
  %loadMem_4909e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909e1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909e1)
  store %struct.Memory* %call_4909e1, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 4909e4	 Bytes: 4
  %loadMem_4909e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909e4 = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909e4)
  store %struct.Memory* %call_4909e4, %struct.Memory** %MEMORY

  ; Code: movq $0x57a92d, %rsi	 RIP: 4909e8	 Bytes: 10
  %loadMem_4909e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909e8 = call %struct.Memory* @routine_movq__0x57a92d___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909e8)
  store %struct.Memory* %call_4909e8, %struct.Memory** %MEMORY

  ; Code: leaq -0x11(%rbp), %rdx	 RIP: 4909f2	 Bytes: 4
  %loadMem_4909f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909f2 = call %struct.Memory* @routine_leaq_MINUS0x11__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909f2)
  store %struct.Memory* %call_4909f2, %struct.Memory** %MEMORY

  ; Code: leaq -0x18(%rbp), %rcx	 RIP: 4909f6	 Bytes: 4
  %loadMem_4909f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909f6 = call %struct.Memory* @routine_leaq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909f6)
  store %struct.Memory* %call_4909f6, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 4909fa	 Bytes: 4
  %loadMem_4909fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909fa = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909fa)
  store %struct.Memory* %call_4909fa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4909fe	 Bytes: 4
  %loadMem_4909fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4909fe = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4909fe)
  store %struct.Memory* %call_4909fe, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 490a02	 Bytes: 2
  %loadMem_490a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a02 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a02)
  store %struct.Memory* %call_490a02, %struct.Memory** %MEMORY

  ; Code: callq .__isoc99_sscanf_plt	 RIP: 490a04	 Bytes: 5
  %loadMem1_490a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490a04 = call %struct.Memory* @routine_callq_.__isoc99_sscanf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490a04, i64 -587972, i64 5, i64 5)
  store %struct.Memory* %call1_490a04, %struct.Memory** %MEMORY

  %loadMem2_490a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490a04 = load i64, i64* %3
  %call2_490a04 = call %struct.Memory* @ext___isoc99_sscanf(%struct.State* %0, i64  %loadPC_490a04, %struct.Memory* %loadMem2_490a04)
  store %struct.Memory* %call2_490a04, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 490a09	 Bytes: 3
  %loadMem_490a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a09 = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a09)
  store %struct.Memory* %call_490a09, %struct.Memory** %MEMORY

  ; Code: jne .L_490a5f	 RIP: 490a0c	 Bytes: 6
  %loadMem_490a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a0c = call %struct.Memory* @routine_jne_.L_490a5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a0c, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_490a0c, %struct.Memory** %MEMORY

  %loadBr_490a0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490a0c = icmp eq i8 %loadBr_490a0c, 1
  br i1 %cmpBr_490a0c, label %block_.L_490a5f, label %block_490a12

block_490a12:
  ; Code: movsbl -0x11(%rbp), %edi	 RIP: 490a12	 Bytes: 4
  %loadMem_490a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a12 = call %struct.Memory* @routine_movsbl_MINUS0x11__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a12)
  store %struct.Memory* %call_490a12, %struct.Memory** %MEMORY

  ; Code: callq .toupper_plt	 RIP: 490a16	 Bytes: 5
  %loadMem1_490a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490a16 = call %struct.Memory* @routine_callq_.toupper_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490a16, i64 -588358, i64 5, i64 5)
  store %struct.Memory* %call1_490a16, %struct.Memory** %MEMORY

  %loadMem2_490a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490a16 = load i64, i64* %3
  %call2_490a16 = call %struct.Memory* @sub_400fd0.toupper_plt(%struct.State* %0, i64  %loadPC_490a16, %struct.Memory* %loadMem2_490a16)
  store %struct.Memory* %call2_490a16, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 490a1b	 Bytes: 2
  %loadMem_490a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a1b = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a1b)
  store %struct.Memory* %call_490a1b, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x11(%rbp)	 RIP: 490a1d	 Bytes: 3
  %loadMem_490a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a1d = call %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a1d)
  store %struct.Memory* %call_490a1d, %struct.Memory** %MEMORY

  ; Code: movsbl %cl, %eax	 RIP: 490a20	 Bytes: 3
  %loadMem_490a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a20 = call %struct.Memory* @routine_movsbl__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a20)
  store %struct.Memory* %call_490a20, %struct.Memory** %MEMORY

  ; Code: cmpl $0x41, %eax	 RIP: 490a23	 Bytes: 3
  %loadMem_490a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a23 = call %struct.Memory* @routine_cmpl__0x41___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a23)
  store %struct.Memory* %call_490a23, %struct.Memory** %MEMORY

  ; Code: jl .L_490a5f	 RIP: 490a26	 Bytes: 6
  %loadMem_490a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a26 = call %struct.Memory* @routine_jl_.L_490a5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a26, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_490a26, %struct.Memory** %MEMORY

  %loadBr_490a26 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490a26 = icmp eq i8 %loadBr_490a26, 1
  br i1 %cmpBr_490a26, label %block_.L_490a5f, label %block_490a2c

block_490a2c:
  ; Code: movsbl -0x11(%rbp), %edi	 RIP: 490a2c	 Bytes: 4
  %loadMem_490a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a2c = call %struct.Memory* @routine_movsbl_MINUS0x11__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a2c)
  store %struct.Memory* %call_490a2c, %struct.Memory** %MEMORY

  ; Code: callq .toupper_plt	 RIP: 490a30	 Bytes: 5
  %loadMem1_490a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490a30 = call %struct.Memory* @routine_callq_.toupper_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490a30, i64 -588384, i64 5, i64 5)
  store %struct.Memory* %call1_490a30, %struct.Memory** %MEMORY

  %loadMem2_490a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490a30 = load i64, i64* %3
  %call2_490a30 = call %struct.Memory* @sub_400fd0.toupper_plt(%struct.State* %0, i64  %loadPC_490a30, %struct.Memory* %loadMem2_490a30)
  store %struct.Memory* %call2_490a30, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 490a35	 Bytes: 2
  %loadMem_490a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a35 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a35)
  store %struct.Memory* %call_490a35, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x11(%rbp)	 RIP: 490a37	 Bytes: 3
  %loadMem_490a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a37 = call %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a37)
  store %struct.Memory* %call_490a37, %struct.Memory** %MEMORY

  ; Code: movsbl %cl, %eax	 RIP: 490a3a	 Bytes: 3
  %loadMem_490a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a3a = call %struct.Memory* @routine_movsbl__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a3a)
  store %struct.Memory* %call_490a3a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5a, %eax	 RIP: 490a3d	 Bytes: 3
  %loadMem_490a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a3d = call %struct.Memory* @routine_cmpl__0x5a___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a3d)
  store %struct.Memory* %call_490a3d, %struct.Memory** %MEMORY

  ; Code: jg .L_490a5f	 RIP: 490a40	 Bytes: 6
  %loadMem_490a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a40 = call %struct.Memory* @routine_jg_.L_490a5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a40, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_490a40, %struct.Memory** %MEMORY

  %loadBr_490a40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490a40 = icmp eq i8 %loadBr_490a40, 1
  br i1 %cmpBr_490a40, label %block_.L_490a5f, label %block_490a46

block_490a46:
  ; Code: movsbl -0x11(%rbp), %eax	 RIP: 490a46	 Bytes: 4
  %loadMem_490a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a46 = call %struct.Memory* @routine_movsbl_MINUS0x11__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a46)
  store %struct.Memory* %call_490a46, %struct.Memory** %MEMORY

  ; Code: cmpl $0x49, %eax	 RIP: 490a4a	 Bytes: 3
  %loadMem_490a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a4a = call %struct.Memory* @routine_cmpl__0x49___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a4a)
  store %struct.Memory* %call_490a4a, %struct.Memory** %MEMORY

  ; Code: je .L_490a5f	 RIP: 490a4d	 Bytes: 6
  %loadMem_490a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a4d = call %struct.Memory* @routine_je_.L_490a5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a4d, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490a4d, %struct.Memory** %MEMORY

  %loadBr_490a4d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490a4d = icmp eq i8 %loadBr_490a4d, 1
  br i1 %cmpBr_490a4d, label %block_.L_490a5f, label %block_490a53

block_490a53:
  ; Code: movl $0x5, -0x4(%rbp)	 RIP: 490a53	 Bytes: 7
  %loadMem_490a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a53 = call %struct.Memory* @routine_movl__0x5__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a53)
  store %struct.Memory* %call_490a53, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490a5a	 Bytes: 5
  %loadMem_490a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a5a = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a5a, i64 2052, i64 5)
  store %struct.Memory* %call_490a5a, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490a5f:	 RIP: 490a5f	 Bytes: 0
block_.L_490a5f:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 490a5f	 Bytes: 4
  %loadMem_490a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a5f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a5f)
  store %struct.Memory* %call_490a5f, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 490a63	 Bytes: 3
  %loadMem_490a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a63 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a63)
  store %struct.Memory* %call_490a63, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3f, %ecx	 RIP: 490a66	 Bytes: 3
  %loadMem_490a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a66 = call %struct.Memory* @routine_cmpl__0x3f___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a66)
  store %struct.Memory* %call_490a66, %struct.Memory** %MEMORY

  ; Code: jne .L_490a7b	 RIP: 490a69	 Bytes: 6
  %loadMem_490a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a69 = call %struct.Memory* @routine_jne_.L_490a7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a69, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490a69, %struct.Memory** %MEMORY

  %loadBr_490a69 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490a69 = icmp eq i8 %loadBr_490a69, 1
  br i1 %cmpBr_490a69, label %block_.L_490a7b, label %block_490a6f

block_490a6f:
  ; Code: movl $0x12, -0x4(%rbp)	 RIP: 490a6f	 Bytes: 7
  %loadMem_490a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a6f = call %struct.Memory* @routine_movl__0x12__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a6f)
  store %struct.Memory* %call_490a6f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490a76	 Bytes: 5
  %loadMem_490a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a76 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a76, i64 2024, i64 5)
  store %struct.Memory* %call_490a76, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490a7b:	 RIP: 490a7b	 Bytes: 0
block_.L_490a7b:

  ; Code: jmpq .L_490a80	 RIP: 490a7b	 Bytes: 5
  %loadMem_490a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a7b = call %struct.Memory* @routine_jmpq_.L_490a80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a7b, i64 5, i64 5)
  store %struct.Memory* %call_490a7b, %struct.Memory** %MEMORY

  br label %block_.L_490a80

  ; Code: .L_490a80:	 RIP: 490a80	 Bytes: 0
block_.L_490a80:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 490a80	 Bytes: 4
  %loadMem_490a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a80 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a80)
  store %struct.Memory* %call_490a80, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 490a84	 Bytes: 3
  %loadMem_490a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a84 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a84)
  store %struct.Memory* %call_490a84, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %ecx	 RIP: 490a87	 Bytes: 3
  %loadMem_490a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a87 = call %struct.Memory* @routine_cmpl__0x20___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a87)
  store %struct.Memory* %call_490a87, %struct.Memory** %MEMORY

  ; Code: jne .L_490aa1	 RIP: 490a8a	 Bytes: 6
  %loadMem_490a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a8a = call %struct.Memory* @routine_jne_.L_490aa1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a8a, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_490a8a, %struct.Memory** %MEMORY

  %loadBr_490a8a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490a8a = icmp eq i8 %loadBr_490a8a, 1
  br i1 %cmpBr_490a8a, label %block_.L_490aa1, label %block_490a90

block_490a90:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 490a90	 Bytes: 4
  %loadMem_490a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a90 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a90)
  store %struct.Memory* %call_490a90, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 490a94	 Bytes: 4
  %loadMem_490a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a94 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a94)
  store %struct.Memory* %call_490a94, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x10(%rbp)	 RIP: 490a98	 Bytes: 4
  %loadMem_490a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a98 = call %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a98)
  store %struct.Memory* %call_490a98, %struct.Memory** %MEMORY

  ; Code: jmpq .L_490a80	 RIP: 490a9c	 Bytes: 5
  %loadMem_490a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490a9c = call %struct.Memory* @routine_jmpq_.L_490a80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490a9c, i64 -28, i64 5)
  store %struct.Memory* %call_490a9c, %struct.Memory** %MEMORY

  br label %block_.L_490a80

  ; Code: .L_490aa1:	 RIP: 490aa1	 Bytes: 0
block_.L_490aa1:

  ; Code: movq $0x586a9a, %rsi	 RIP: 490aa1	 Bytes: 10
  %loadMem_490aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490aa1 = call %struct.Memory* @routine_movq__0x586a9a___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490aa1)
  store %struct.Memory* %call_490aa1, %struct.Memory** %MEMORY

  ; Code: movl $0x9, %eax	 RIP: 490aab	 Bytes: 5
  %loadMem_490aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490aab = call %struct.Memory* @routine_movl__0x9___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490aab)
  store %struct.Memory* %call_490aab, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490ab0	 Bytes: 2
  %loadMem_490ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ab0 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ab0)
  store %struct.Memory* %call_490ab0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490ab2	 Bytes: 4
  %loadMem_490ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ab2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ab2)
  store %struct.Memory* %call_490ab2, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490ab6	 Bytes: 5
  %loadMem1_490ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490ab6 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490ab6, i64 -588550, i64 5, i64 5)
  store %struct.Memory* %call1_490ab6, %struct.Memory** %MEMORY

  %loadMem2_490ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490ab6 = load i64, i64* %3
  %call2_490ab6 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490ab6, %struct.Memory* %loadMem2_490ab6)
  store %struct.Memory* %call2_490ab6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490abb	 Bytes: 3
  %loadMem_490abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490abb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490abb)
  store %struct.Memory* %call_490abb, %struct.Memory** %MEMORY

  ; Code: jne .L_490ad0	 RIP: 490abe	 Bytes: 6
  %loadMem_490abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490abe = call %struct.Memory* @routine_jne_.L_490ad0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490abe, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490abe, %struct.Memory** %MEMORY

  %loadBr_490abe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490abe = icmp eq i8 %loadBr_490abe, 1
  br i1 %cmpBr_490abe, label %block_.L_490ad0, label %block_490ac4

block_490ac4:
  ; Code: movl $0x9, -0x4(%rbp)	 RIP: 490ac4	 Bytes: 7
  %loadMem_490ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ac4 = call %struct.Memory* @routine_movl__0x9__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ac4)
  store %struct.Memory* %call_490ac4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490acb	 Bytes: 5
  %loadMem_490acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490acb = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490acb, i64 1939, i64 5)
  store %struct.Memory* %call_490acb, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490ad0:	 RIP: 490ad0	 Bytes: 0
block_.L_490ad0:

  ; Code: movq $0x586aa4, %rsi	 RIP: 490ad0	 Bytes: 10
  %loadMem_490ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ad0 = call %struct.Memory* @routine_movq__0x586aa4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ad0)
  store %struct.Memory* %call_490ad0, %struct.Memory** %MEMORY

  ; Code: movl $0x9, %eax	 RIP: 490ada	 Bytes: 5
  %loadMem_490ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ada = call %struct.Memory* @routine_movl__0x9___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ada)
  store %struct.Memory* %call_490ada, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490adf	 Bytes: 2
  %loadMem_490adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490adf = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490adf)
  store %struct.Memory* %call_490adf, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490ae1	 Bytes: 4
  %loadMem_490ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ae1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ae1)
  store %struct.Memory* %call_490ae1, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490ae5	 Bytes: 5
  %loadMem1_490ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490ae5 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490ae5, i64 -588597, i64 5, i64 5)
  store %struct.Memory* %call1_490ae5, %struct.Memory** %MEMORY

  %loadMem2_490ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490ae5 = load i64, i64* %3
  %call2_490ae5 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490ae5, %struct.Memory* %loadMem2_490ae5)
  store %struct.Memory* %call2_490ae5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490aea	 Bytes: 3
  %loadMem_490aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490aea = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490aea)
  store %struct.Memory* %call_490aea, %struct.Memory** %MEMORY

  ; Code: jne .L_490aff	 RIP: 490aed	 Bytes: 6
  %loadMem_490aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490aed = call %struct.Memory* @routine_jne_.L_490aff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490aed, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490aed, %struct.Memory** %MEMORY

  %loadBr_490aed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490aed = icmp eq i8 %loadBr_490aed, 1
  br i1 %cmpBr_490aed, label %block_.L_490aff, label %block_490af3

block_490af3:
  ; Code: movl $0xa, -0x4(%rbp)	 RIP: 490af3	 Bytes: 7
  %loadMem_490af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490af3 = call %struct.Memory* @routine_movl__0xa__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490af3)
  store %struct.Memory* %call_490af3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490afa	 Bytes: 5
  %loadMem_490afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490afa = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490afa, i64 1892, i64 5)
  store %struct.Memory* %call_490afa, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490aff:	 RIP: 490aff	 Bytes: 0
block_.L_490aff:

  ; Code: movq $0x586aae, %rsi	 RIP: 490aff	 Bytes: 10
  %loadMem_490aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490aff = call %struct.Memory* @routine_movq__0x586aae___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490aff)
  store %struct.Memory* %call_490aff, %struct.Memory** %MEMORY

  ; Code: movl $0x9, %eax	 RIP: 490b09	 Bytes: 5
  %loadMem_490b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b09 = call %struct.Memory* @routine_movl__0x9___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b09)
  store %struct.Memory* %call_490b09, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490b0e	 Bytes: 2
  %loadMem_490b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b0e = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b0e)
  store %struct.Memory* %call_490b0e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490b10	 Bytes: 4
  %loadMem_490b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b10 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b10)
  store %struct.Memory* %call_490b10, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490b14	 Bytes: 5
  %loadMem1_490b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490b14 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490b14, i64 -588644, i64 5, i64 5)
  store %struct.Memory* %call1_490b14, %struct.Memory** %MEMORY

  %loadMem2_490b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490b14 = load i64, i64* %3
  %call2_490b14 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490b14, %struct.Memory* %loadMem2_490b14)
  store %struct.Memory* %call2_490b14, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490b19	 Bytes: 3
  %loadMem_490b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b19 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b19)
  store %struct.Memory* %call_490b19, %struct.Memory** %MEMORY

  ; Code: jne .L_490b2e	 RIP: 490b1c	 Bytes: 6
  %loadMem_490b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b1c = call %struct.Memory* @routine_jne_.L_490b2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b1c, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490b1c, %struct.Memory** %MEMORY

  %loadBr_490b1c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490b1c = icmp eq i8 %loadBr_490b1c, 1
  br i1 %cmpBr_490b1c, label %block_.L_490b2e, label %block_490b22

block_490b22:
  ; Code: movl $0x11, -0x4(%rbp)	 RIP: 490b22	 Bytes: 7
  %loadMem_490b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b22 = call %struct.Memory* @routine_movl__0x11__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b22)
  store %struct.Memory* %call_490b22, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490b29	 Bytes: 5
  %loadMem_490b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b29 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b29, i64 1845, i64 5)
  store %struct.Memory* %call_490b29, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490b2e:	 RIP: 490b2e	 Bytes: 0
block_.L_490b2e:

  ; Code: movq $0x586ab8, %rsi	 RIP: 490b2e	 Bytes: 10
  %loadMem_490b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b2e = call %struct.Memory* @routine_movq__0x586ab8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b2e)
  store %struct.Memory* %call_490b2e, %struct.Memory** %MEMORY

  ; Code: movl $0x9, %eax	 RIP: 490b38	 Bytes: 5
  %loadMem_490b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b38 = call %struct.Memory* @routine_movl__0x9___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b38)
  store %struct.Memory* %call_490b38, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490b3d	 Bytes: 2
  %loadMem_490b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b3d = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b3d)
  store %struct.Memory* %call_490b3d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490b3f	 Bytes: 4
  %loadMem_490b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b3f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b3f)
  store %struct.Memory* %call_490b3f, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490b43	 Bytes: 5
  %loadMem1_490b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490b43 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490b43, i64 -588691, i64 5, i64 5)
  store %struct.Memory* %call1_490b43, %struct.Memory** %MEMORY

  %loadMem2_490b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490b43 = load i64, i64* %3
  %call2_490b43 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490b43, %struct.Memory* %loadMem2_490b43)
  store %struct.Memory* %call2_490b43, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490b48	 Bytes: 3
  %loadMem_490b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b48 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b48)
  store %struct.Memory* %call_490b48, %struct.Memory** %MEMORY

  ; Code: jne .L_490b5d	 RIP: 490b4b	 Bytes: 6
  %loadMem_490b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b4b = call %struct.Memory* @routine_jne_.L_490b5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b4b, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490b4b, %struct.Memory** %MEMORY

  %loadBr_490b4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490b4b = icmp eq i8 %loadBr_490b4b, 1
  br i1 %cmpBr_490b4b, label %block_.L_490b5d, label %block_490b51

block_490b51:
  ; Code: movl $0x23, -0x4(%rbp)	 RIP: 490b51	 Bytes: 7
  %loadMem_490b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b51 = call %struct.Memory* @routine_movl__0x23__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b51)
  store %struct.Memory* %call_490b51, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490b58	 Bytes: 5
  %loadMem_490b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b58 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b58, i64 1798, i64 5)
  store %struct.Memory* %call_490b58, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490b5d:	 RIP: 490b5d	 Bytes: 0
block_.L_490b5d:

  ; Code: movq $0x586ac4, %rsi	 RIP: 490b5d	 Bytes: 10
  %loadMem_490b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b5d = call %struct.Memory* @routine_movq__0x586ac4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b5d)
  store %struct.Memory* %call_490b5d, %struct.Memory** %MEMORY

  ; Code: movl $0x9, %eax	 RIP: 490b67	 Bytes: 5
  %loadMem_490b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b67 = call %struct.Memory* @routine_movl__0x9___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b67)
  store %struct.Memory* %call_490b67, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490b6c	 Bytes: 2
  %loadMem_490b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b6c = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b6c)
  store %struct.Memory* %call_490b6c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490b6e	 Bytes: 4
  %loadMem_490b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b6e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b6e)
  store %struct.Memory* %call_490b6e, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490b72	 Bytes: 5
  %loadMem1_490b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490b72 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490b72, i64 -588738, i64 5, i64 5)
  store %struct.Memory* %call1_490b72, %struct.Memory** %MEMORY

  %loadMem2_490b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490b72 = load i64, i64* %3
  %call2_490b72 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490b72, %struct.Memory* %loadMem2_490b72)
  store %struct.Memory* %call2_490b72, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490b77	 Bytes: 3
  %loadMem_490b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b77 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b77)
  store %struct.Memory* %call_490b77, %struct.Memory** %MEMORY

  ; Code: jne .L_490b8c	 RIP: 490b7a	 Bytes: 6
  %loadMem_490b7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b7a = call %struct.Memory* @routine_jne_.L_490b8c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b7a, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490b7a, %struct.Memory** %MEMORY

  %loadBr_490b7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490b7a = icmp eq i8 %loadBr_490b7a, 1
  br i1 %cmpBr_490b7a, label %block_.L_490b8c, label %block_490b80

block_490b80:
  ; Code: movl $0x24, -0x4(%rbp)	 RIP: 490b80	 Bytes: 7
  %loadMem_490b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b80 = call %struct.Memory* @routine_movl__0x24__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b80)
  store %struct.Memory* %call_490b80, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490b87	 Bytes: 5
  %loadMem_490b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b87 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b87, i64 1751, i64 5)
  store %struct.Memory* %call_490b87, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490b8c:	 RIP: 490b8c	 Bytes: 0
block_.L_490b8c:

  ; Code: movq $0x5877c3, %rsi	 RIP: 490b8c	 Bytes: 10
  %loadMem_490b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b8c = call %struct.Memory* @routine_movq__0x5877c3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b8c)
  store %struct.Memory* %call_490b8c, %struct.Memory** %MEMORY

  ; Code: movl $0x9, %eax	 RIP: 490b96	 Bytes: 5
  %loadMem_490b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b96 = call %struct.Memory* @routine_movl__0x9___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b96)
  store %struct.Memory* %call_490b96, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490b9b	 Bytes: 2
  %loadMem_490b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b9b = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b9b)
  store %struct.Memory* %call_490b9b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490b9d	 Bytes: 4
  %loadMem_490b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490b9d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490b9d)
  store %struct.Memory* %call_490b9d, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490ba1	 Bytes: 5
  %loadMem1_490ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490ba1 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490ba1, i64 -588785, i64 5, i64 5)
  store %struct.Memory* %call1_490ba1, %struct.Memory** %MEMORY

  %loadMem2_490ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490ba1 = load i64, i64* %3
  %call2_490ba1 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490ba1, %struct.Memory* %loadMem2_490ba1)
  store %struct.Memory* %call2_490ba1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490ba6	 Bytes: 3
  %loadMem_490ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ba6 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ba6)
  store %struct.Memory* %call_490ba6, %struct.Memory** %MEMORY

  ; Code: jne .L_490bbb	 RIP: 490ba9	 Bytes: 6
  %loadMem_490ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ba9 = call %struct.Memory* @routine_jne_.L_490bbb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ba9, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490ba9, %struct.Memory** %MEMORY

  %loadBr_490ba9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490ba9 = icmp eq i8 %loadBr_490ba9, 1
  br i1 %cmpBr_490ba9, label %block_.L_490bbb, label %block_490baf

block_490baf:
  ; Code: movl $0xc, -0x4(%rbp)	 RIP: 490baf	 Bytes: 7
  %loadMem_490baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490baf = call %struct.Memory* @routine_movl__0xc__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490baf)
  store %struct.Memory* %call_490baf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490bb6	 Bytes: 5
  %loadMem_490bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bb6 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bb6, i64 1704, i64 5)
  store %struct.Memory* %call_490bb6, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490bbb:	 RIP: 490bbb	 Bytes: 0
block_.L_490bbb:

  ; Code: movq $0x586ad0, %rsi	 RIP: 490bbb	 Bytes: 10
  %loadMem_490bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bbb = call %struct.Memory* @routine_movq__0x586ad0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bbb)
  store %struct.Memory* %call_490bbb, %struct.Memory** %MEMORY

  ; Code: movl $0x9, %eax	 RIP: 490bc5	 Bytes: 5
  %loadMem_490bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bc5 = call %struct.Memory* @routine_movl__0x9___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bc5)
  store %struct.Memory* %call_490bc5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490bca	 Bytes: 2
  %loadMem_490bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bca = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bca)
  store %struct.Memory* %call_490bca, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490bcc	 Bytes: 4
  %loadMem_490bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bcc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bcc)
  store %struct.Memory* %call_490bcc, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490bd0	 Bytes: 5
  %loadMem1_490bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490bd0 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490bd0, i64 -588832, i64 5, i64 5)
  store %struct.Memory* %call1_490bd0, %struct.Memory** %MEMORY

  %loadMem2_490bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490bd0 = load i64, i64* %3
  %call2_490bd0 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490bd0, %struct.Memory* %loadMem2_490bd0)
  store %struct.Memory* %call2_490bd0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490bd5	 Bytes: 3
  %loadMem_490bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bd5 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bd5)
  store %struct.Memory* %call_490bd5, %struct.Memory** %MEMORY

  ; Code: jne .L_490bea	 RIP: 490bd8	 Bytes: 6
  %loadMem_490bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bd8 = call %struct.Memory* @routine_jne_.L_490bea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bd8, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490bd8, %struct.Memory** %MEMORY

  %loadBr_490bd8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490bd8 = icmp eq i8 %loadBr_490bd8, 1
  br i1 %cmpBr_490bd8, label %block_.L_490bea, label %block_490bde

block_490bde:
  ; Code: movl $0x29, -0x4(%rbp)	 RIP: 490bde	 Bytes: 7
  %loadMem_490bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bde = call %struct.Memory* @routine_movl__0x29__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bde)
  store %struct.Memory* %call_490bde, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490be5	 Bytes: 5
  %loadMem_490be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490be5 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490be5, i64 1657, i64 5)
  store %struct.Memory* %call_490be5, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490bea:	 RIP: 490bea	 Bytes: 0
block_.L_490bea:

  ; Code: movq $0x58742a, %rsi	 RIP: 490bea	 Bytes: 10
  %loadMem_490bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bea = call %struct.Memory* @routine_movq__0x58742a___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bea)
  store %struct.Memory* %call_490bea, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 490bf4	 Bytes: 5
  %loadMem_490bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bf4 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bf4)
  store %struct.Memory* %call_490bf4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490bf9	 Bytes: 2
  %loadMem_490bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bf9 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bf9)
  store %struct.Memory* %call_490bf9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490bfb	 Bytes: 4
  %loadMem_490bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490bfb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490bfb)
  store %struct.Memory* %call_490bfb, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490bff	 Bytes: 5
  %loadMem1_490bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490bff = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490bff, i64 -588879, i64 5, i64 5)
  store %struct.Memory* %call1_490bff, %struct.Memory** %MEMORY

  %loadMem2_490bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490bff = load i64, i64* %3
  %call2_490bff = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490bff, %struct.Memory* %loadMem2_490bff)
  store %struct.Memory* %call2_490bff, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490c04	 Bytes: 3
  %loadMem_490c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c04 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c04)
  store %struct.Memory* %call_490c04, %struct.Memory** %MEMORY

  ; Code: jne .L_490c19	 RIP: 490c07	 Bytes: 6
  %loadMem_490c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c07 = call %struct.Memory* @routine_jne_.L_490c19(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c07, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490c07, %struct.Memory** %MEMORY

  %loadBr_490c07 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490c07 = icmp eq i8 %loadBr_490c07, 1
  br i1 %cmpBr_490c07, label %block_.L_490c19, label %block_490c0d

block_490c0d:
  ; Code: movl $0xb, -0x4(%rbp)	 RIP: 490c0d	 Bytes: 7
  %loadMem_490c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c0d = call %struct.Memory* @routine_movl__0xb__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c0d)
  store %struct.Memory* %call_490c0d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490c14	 Bytes: 5
  %loadMem_490c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c14 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c14, i64 1610, i64 5)
  store %struct.Memory* %call_490c14, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490c19:	 RIP: 490c19	 Bytes: 0
block_.L_490c19:

  ; Code: movq $0x586add, %rsi	 RIP: 490c19	 Bytes: 10
  %loadMem_490c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c19 = call %struct.Memory* @routine_movq__0x586add___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c19)
  store %struct.Memory* %call_490c19, %struct.Memory** %MEMORY

  ; Code: movl $0x7, %eax	 RIP: 490c23	 Bytes: 5
  %loadMem_490c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c23 = call %struct.Memory* @routine_movl__0x7___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c23)
  store %struct.Memory* %call_490c23, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490c28	 Bytes: 2
  %loadMem_490c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c28 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c28)
  store %struct.Memory* %call_490c28, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490c2a	 Bytes: 4
  %loadMem_490c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c2a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c2a)
  store %struct.Memory* %call_490c2a, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490c2e	 Bytes: 5
  %loadMem1_490c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490c2e = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490c2e, i64 -588926, i64 5, i64 5)
  store %struct.Memory* %call1_490c2e, %struct.Memory** %MEMORY

  %loadMem2_490c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490c2e = load i64, i64* %3
  %call2_490c2e = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490c2e, %struct.Memory* %loadMem2_490c2e)
  store %struct.Memory* %call2_490c2e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490c33	 Bytes: 3
  %loadMem_490c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c33 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c33)
  store %struct.Memory* %call_490c33, %struct.Memory** %MEMORY

  ; Code: jne .L_490c48	 RIP: 490c36	 Bytes: 6
  %loadMem_490c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c36 = call %struct.Memory* @routine_jne_.L_490c48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c36, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490c36, %struct.Memory** %MEMORY

  %loadBr_490c36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490c36 = icmp eq i8 %loadBr_490c36, 1
  br i1 %cmpBr_490c36, label %block_.L_490c48, label %block_490c3c

block_490c3c:
  ; Code: movl $0x10, -0x4(%rbp)	 RIP: 490c3c	 Bytes: 7
  %loadMem_490c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c3c = call %struct.Memory* @routine_movl__0x10__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c3c)
  store %struct.Memory* %call_490c3c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490c43	 Bytes: 5
  %loadMem_490c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c43 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c43, i64 1563, i64 5)
  store %struct.Memory* %call_490c43, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490c48:	 RIP: 490c48	 Bytes: 0
block_.L_490c48:

  ; Code: movq $0x586ae5, %rsi	 RIP: 490c48	 Bytes: 10
  %loadMem_490c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c48 = call %struct.Memory* @routine_movq__0x586ae5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c48)
  store %struct.Memory* %call_490c48, %struct.Memory** %MEMORY

  ; Code: movl $0x7, %eax	 RIP: 490c52	 Bytes: 5
  %loadMem_490c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c52 = call %struct.Memory* @routine_movl__0x7___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c52)
  store %struct.Memory* %call_490c52, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490c57	 Bytes: 2
  %loadMem_490c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c57 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c57)
  store %struct.Memory* %call_490c57, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490c59	 Bytes: 4
  %loadMem_490c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c59 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c59)
  store %struct.Memory* %call_490c59, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490c5d	 Bytes: 5
  %loadMem1_490c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490c5d = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490c5d, i64 -588973, i64 5, i64 5)
  store %struct.Memory* %call1_490c5d, %struct.Memory** %MEMORY

  %loadMem2_490c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490c5d = load i64, i64* %3
  %call2_490c5d = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490c5d, %struct.Memory* %loadMem2_490c5d)
  store %struct.Memory* %call2_490c5d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490c62	 Bytes: 3
  %loadMem_490c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c62 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c62)
  store %struct.Memory* %call_490c62, %struct.Memory** %MEMORY

  ; Code: jne .L_490c77	 RIP: 490c65	 Bytes: 6
  %loadMem_490c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c65 = call %struct.Memory* @routine_jne_.L_490c77(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c65, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490c65, %struct.Memory** %MEMORY

  %loadBr_490c65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490c65 = icmp eq i8 %loadBr_490c65, 1
  br i1 %cmpBr_490c65, label %block_.L_490c77, label %block_490c6b

block_490c6b:
  ; Code: movl $0x1c, -0x4(%rbp)	 RIP: 490c6b	 Bytes: 7
  %loadMem_490c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c6b = call %struct.Memory* @routine_movl__0x1c__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c6b)
  store %struct.Memory* %call_490c6b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490c72	 Bytes: 5
  %loadMem_490c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c72 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c72, i64 1516, i64 5)
  store %struct.Memory* %call_490c72, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490c77:	 RIP: 490c77	 Bytes: 0
block_.L_490c77:

  ; Code: movq $0x586aef, %rsi	 RIP: 490c77	 Bytes: 10
  %loadMem_490c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c77 = call %struct.Memory* @routine_movq__0x586aef___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c77)
  store %struct.Memory* %call_490c77, %struct.Memory** %MEMORY

  ; Code: movl $0x6, %eax	 RIP: 490c81	 Bytes: 5
  %loadMem_490c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c81 = call %struct.Memory* @routine_movl__0x6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c81)
  store %struct.Memory* %call_490c81, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490c86	 Bytes: 2
  %loadMem_490c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c86 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c86)
  store %struct.Memory* %call_490c86, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490c88	 Bytes: 4
  %loadMem_490c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c88 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c88)
  store %struct.Memory* %call_490c88, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490c8c	 Bytes: 5
  %loadMem1_490c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490c8c = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490c8c, i64 -589020, i64 5, i64 5)
  store %struct.Memory* %call1_490c8c, %struct.Memory** %MEMORY

  %loadMem2_490c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490c8c = load i64, i64* %3
  %call2_490c8c = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490c8c, %struct.Memory* %loadMem2_490c8c)
  store %struct.Memory* %call2_490c8c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490c91	 Bytes: 3
  %loadMem_490c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c91 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c91)
  store %struct.Memory* %call_490c91, %struct.Memory** %MEMORY

  ; Code: jne .L_490ca6	 RIP: 490c94	 Bytes: 6
  %loadMem_490c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c94 = call %struct.Memory* @routine_jne_.L_490ca6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c94, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490c94, %struct.Memory** %MEMORY

  %loadBr_490c94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490c94 = icmp eq i8 %loadBr_490c94, 1
  br i1 %cmpBr_490c94, label %block_.L_490ca6, label %block_490c9a

block_490c9a:
  ; Code: movl $0x3, -0x4(%rbp)	 RIP: 490c9a	 Bytes: 7
  %loadMem_490c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c9a = call %struct.Memory* @routine_movl__0x3__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c9a)
  store %struct.Memory* %call_490c9a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490ca1	 Bytes: 5
  %loadMem_490ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ca1 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ca1, i64 1469, i64 5)
  store %struct.Memory* %call_490ca1, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490ca6:	 RIP: 490ca6	 Bytes: 0
block_.L_490ca6:

  ; Code: movq $0x586af6, %rsi	 RIP: 490ca6	 Bytes: 10
  %loadMem_490ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ca6 = call %struct.Memory* @routine_movq__0x586af6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ca6)
  store %struct.Memory* %call_490ca6, %struct.Memory** %MEMORY

  ; Code: movl $0x6, %eax	 RIP: 490cb0	 Bytes: 5
  %loadMem_490cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cb0 = call %struct.Memory* @routine_movl__0x6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cb0)
  store %struct.Memory* %call_490cb0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490cb5	 Bytes: 2
  %loadMem_490cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cb5 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cb5)
  store %struct.Memory* %call_490cb5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490cb7	 Bytes: 4
  %loadMem_490cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cb7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cb7)
  store %struct.Memory* %call_490cb7, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490cbb	 Bytes: 5
  %loadMem1_490cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490cbb = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490cbb, i64 -589067, i64 5, i64 5)
  store %struct.Memory* %call1_490cbb, %struct.Memory** %MEMORY

  %loadMem2_490cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490cbb = load i64, i64* %3
  %call2_490cbb = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490cbb, %struct.Memory* %loadMem2_490cbb)
  store %struct.Memory* %call2_490cbb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490cc0	 Bytes: 3
  %loadMem_490cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cc0 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cc0)
  store %struct.Memory* %call_490cc0, %struct.Memory** %MEMORY

  ; Code: jne .L_490cd5	 RIP: 490cc3	 Bytes: 6
  %loadMem_490cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cc3 = call %struct.Memory* @routine_jne_.L_490cd5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cc3, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490cc3, %struct.Memory** %MEMORY

  %loadBr_490cc3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490cc3 = icmp eq i8 %loadBr_490cc3, 1
  br i1 %cmpBr_490cc3, label %block_.L_490cd5, label %block_490cc9

block_490cc9:
  ; Code: movl $0x1e, -0x4(%rbp)	 RIP: 490cc9	 Bytes: 7
  %loadMem_490cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cc9 = call %struct.Memory* @routine_movl__0x1e__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cc9)
  store %struct.Memory* %call_490cc9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490cd0	 Bytes: 5
  %loadMem_490cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cd0 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cd0, i64 1422, i64 5)
  store %struct.Memory* %call_490cd0, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490cd5:	 RIP: 490cd5	 Bytes: 0
block_.L_490cd5:

  ; Code: movq $0x586aff, %rsi	 RIP: 490cd5	 Bytes: 10
  %loadMem_490cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cd5 = call %struct.Memory* @routine_movq__0x586aff___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cd5)
  store %struct.Memory* %call_490cd5, %struct.Memory** %MEMORY

  ; Code: movl $0x6, %eax	 RIP: 490cdf	 Bytes: 5
  %loadMem_490cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cdf = call %struct.Memory* @routine_movl__0x6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cdf)
  store %struct.Memory* %call_490cdf, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490ce4	 Bytes: 2
  %loadMem_490ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ce4 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ce4)
  store %struct.Memory* %call_490ce4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490ce6	 Bytes: 4
  %loadMem_490ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ce6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ce6)
  store %struct.Memory* %call_490ce6, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490cea	 Bytes: 5
  %loadMem1_490cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490cea = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490cea, i64 -589114, i64 5, i64 5)
  store %struct.Memory* %call1_490cea, %struct.Memory** %MEMORY

  %loadMem2_490cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490cea = load i64, i64* %3
  %call2_490cea = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490cea, %struct.Memory* %loadMem2_490cea)
  store %struct.Memory* %call2_490cea, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490cef	 Bytes: 3
  %loadMem_490cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cef = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cef)
  store %struct.Memory* %call_490cef, %struct.Memory** %MEMORY

  ; Code: jne .L_490d04	 RIP: 490cf2	 Bytes: 6
  %loadMem_490cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cf2 = call %struct.Memory* @routine_jne_.L_490d04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cf2, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490cf2, %struct.Memory** %MEMORY

  %loadBr_490cf2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490cf2 = icmp eq i8 %loadBr_490cf2, 1
  br i1 %cmpBr_490cf2, label %block_.L_490d04, label %block_490cf8

block_490cf8:
  ; Code: movl $0x1f, -0x4(%rbp)	 RIP: 490cf8	 Bytes: 7
  %loadMem_490cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cf8 = call %struct.Memory* @routine_movl__0x1f__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cf8)
  store %struct.Memory* %call_490cf8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490cff	 Bytes: 5
  %loadMem_490cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cff = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cff, i64 1375, i64 5)
  store %struct.Memory* %call_490cff, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490d04:	 RIP: 490d04	 Bytes: 0
block_.L_490d04:

  ; Code: movq $0x586b09, %rsi	 RIP: 490d04	 Bytes: 10
  %loadMem_490d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d04 = call %struct.Memory* @routine_movq__0x586b09___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d04)
  store %struct.Memory* %call_490d04, %struct.Memory** %MEMORY

  ; Code: movl $0x6, %eax	 RIP: 490d0e	 Bytes: 5
  %loadMem_490d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d0e = call %struct.Memory* @routine_movl__0x6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d0e)
  store %struct.Memory* %call_490d0e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490d13	 Bytes: 2
  %loadMem_490d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d13 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d13)
  store %struct.Memory* %call_490d13, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490d15	 Bytes: 4
  %loadMem_490d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d15 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d15)
  store %struct.Memory* %call_490d15, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490d19	 Bytes: 5
  %loadMem1_490d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490d19 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490d19, i64 -589161, i64 5, i64 5)
  store %struct.Memory* %call1_490d19, %struct.Memory** %MEMORY

  %loadMem2_490d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490d19 = load i64, i64* %3
  %call2_490d19 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490d19, %struct.Memory* %loadMem2_490d19)
  store %struct.Memory* %call2_490d19, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490d1e	 Bytes: 3
  %loadMem_490d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d1e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d1e)
  store %struct.Memory* %call_490d1e, %struct.Memory** %MEMORY

  ; Code: jne .L_490d33	 RIP: 490d21	 Bytes: 6
  %loadMem_490d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d21 = call %struct.Memory* @routine_jne_.L_490d33(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d21, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490d21, %struct.Memory** %MEMORY

  %loadBr_490d21 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490d21 = icmp eq i8 %loadBr_490d21, 1
  br i1 %cmpBr_490d21, label %block_.L_490d33, label %block_490d27

block_490d27:
  ; Code: movl $0x1d, -0x4(%rbp)	 RIP: 490d27	 Bytes: 7
  %loadMem_490d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d27 = call %struct.Memory* @routine_movl__0x1d__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d27)
  store %struct.Memory* %call_490d27, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490d2e	 Bytes: 5
  %loadMem_490d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d2e = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d2e, i64 1328, i64 5)
  store %struct.Memory* %call_490d2e, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490d33:	 RIP: 490d33	 Bytes: 0
block_.L_490d33:

  ; Code: movq $0x57fc64, %rsi	 RIP: 490d33	 Bytes: 10
  %loadMem_490d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d33 = call %struct.Memory* @routine_movq__0x57fc64___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d33)
  store %struct.Memory* %call_490d33, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 490d3d	 Bytes: 5
  %loadMem_490d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d3d = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d3d)
  store %struct.Memory* %call_490d3d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490d42	 Bytes: 2
  %loadMem_490d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d42 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d42)
  store %struct.Memory* %call_490d42, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490d44	 Bytes: 4
  %loadMem_490d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d44 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d44)
  store %struct.Memory* %call_490d44, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490d48	 Bytes: 5
  %loadMem1_490d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490d48 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490d48, i64 -589208, i64 5, i64 5)
  store %struct.Memory* %call1_490d48, %struct.Memory** %MEMORY

  %loadMem2_490d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490d48 = load i64, i64* %3
  %call2_490d48 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490d48, %struct.Memory* %loadMem2_490d48)
  store %struct.Memory* %call2_490d48, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490d4d	 Bytes: 3
  %loadMem_490d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d4d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d4d)
  store %struct.Memory* %call_490d4d, %struct.Memory** %MEMORY

  ; Code: jne .L_490d62	 RIP: 490d50	 Bytes: 6
  %loadMem_490d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d50 = call %struct.Memory* @routine_jne_.L_490d62(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d50, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490d50, %struct.Memory** %MEMORY

  %loadBr_490d50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490d50 = icmp eq i8 %loadBr_490d50, 1
  br i1 %cmpBr_490d50, label %block_.L_490d62, label %block_490d56

block_490d56:
  ; Code: movl $0xe, -0x4(%rbp)	 RIP: 490d56	 Bytes: 7
  %loadMem_490d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d56 = call %struct.Memory* @routine_movl__0xe__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d56)
  store %struct.Memory* %call_490d56, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490d5d	 Bytes: 5
  %loadMem_490d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d5d = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d5d, i64 1281, i64 5)
  store %struct.Memory* %call_490d5d, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490d62:	 RIP: 490d62	 Bytes: 0
block_.L_490d62:

  ; Code: movq $0x586b12, %rsi	 RIP: 490d62	 Bytes: 10
  %loadMem_490d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d62 = call %struct.Memory* @routine_movq__0x586b12___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d62)
  store %struct.Memory* %call_490d62, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 490d6c	 Bytes: 5
  %loadMem_490d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d6c = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d6c)
  store %struct.Memory* %call_490d6c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490d71	 Bytes: 2
  %loadMem_490d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d71 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d71)
  store %struct.Memory* %call_490d71, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490d73	 Bytes: 4
  %loadMem_490d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d73 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d73)
  store %struct.Memory* %call_490d73, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490d77	 Bytes: 5
  %loadMem1_490d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490d77 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490d77, i64 -589255, i64 5, i64 5)
  store %struct.Memory* %call1_490d77, %struct.Memory** %MEMORY

  %loadMem2_490d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490d77 = load i64, i64* %3
  %call2_490d77 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490d77, %struct.Memory* %loadMem2_490d77)
  store %struct.Memory* %call2_490d77, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490d7c	 Bytes: 3
  %loadMem_490d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d7c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d7c)
  store %struct.Memory* %call_490d7c, %struct.Memory** %MEMORY

  ; Code: jne .L_490d91	 RIP: 490d7f	 Bytes: 6
  %loadMem_490d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d7f = call %struct.Memory* @routine_jne_.L_490d91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d7f, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490d7f, %struct.Memory** %MEMORY

  %loadBr_490d7f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490d7f = icmp eq i8 %loadBr_490d7f, 1
  br i1 %cmpBr_490d7f, label %block_.L_490d91, label %block_490d85

block_490d85:
  ; Code: movl $0x7, -0x4(%rbp)	 RIP: 490d85	 Bytes: 7
  %loadMem_490d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d85 = call %struct.Memory* @routine_movl__0x7__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d85)
  store %struct.Memory* %call_490d85, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490d8c	 Bytes: 5
  %loadMem_490d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d8c = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d8c, i64 1234, i64 5)
  store %struct.Memory* %call_490d8c, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490d91:	 RIP: 490d91	 Bytes: 0
block_.L_490d91:

  ; Code: movq $0x586eef, %rsi	 RIP: 490d91	 Bytes: 10
  %loadMem_490d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d91 = call %struct.Memory* @routine_movq__0x586eef___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d91)
  store %struct.Memory* %call_490d91, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 490d9b	 Bytes: 5
  %loadMem_490d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d9b = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d9b)
  store %struct.Memory* %call_490d9b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490da0	 Bytes: 2
  %loadMem_490da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490da0 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490da0)
  store %struct.Memory* %call_490da0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490da2	 Bytes: 4
  %loadMem_490da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490da2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490da2)
  store %struct.Memory* %call_490da2, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490da6	 Bytes: 5
  %loadMem1_490da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490da6 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490da6, i64 -589302, i64 5, i64 5)
  store %struct.Memory* %call1_490da6, %struct.Memory** %MEMORY

  %loadMem2_490da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490da6 = load i64, i64* %3
  %call2_490da6 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490da6, %struct.Memory* %loadMem2_490da6)
  store %struct.Memory* %call2_490da6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490dab	 Bytes: 3
  %loadMem_490dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dab = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dab)
  store %struct.Memory* %call_490dab, %struct.Memory** %MEMORY

  ; Code: jne .L_490dc0	 RIP: 490dae	 Bytes: 6
  %loadMem_490dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dae = call %struct.Memory* @routine_jne_.L_490dc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dae, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490dae, %struct.Memory** %MEMORY

  %loadBr_490dae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490dae = icmp eq i8 %loadBr_490dae, 1
  br i1 %cmpBr_490dae, label %block_.L_490dc0, label %block_490db4

block_490db4:
  ; Code: movl $0xd, -0x4(%rbp)	 RIP: 490db4	 Bytes: 7
  %loadMem_490db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490db4 = call %struct.Memory* @routine_movl__0xd__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490db4)
  store %struct.Memory* %call_490db4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490dbb	 Bytes: 5
  %loadMem_490dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dbb = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dbb, i64 1187, i64 5)
  store %struct.Memory* %call_490dbb, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490dc0:	 RIP: 490dc0	 Bytes: 0
block_.L_490dc0:

  ; Code: movq $0x585698, %rsi	 RIP: 490dc0	 Bytes: 10
  %loadMem_490dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dc0 = call %struct.Memory* @routine_movq__0x585698___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dc0)
  store %struct.Memory* %call_490dc0, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 490dca	 Bytes: 5
  %loadMem_490dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dca = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dca)
  store %struct.Memory* %call_490dca, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490dcf	 Bytes: 2
  %loadMem_490dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dcf = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dcf)
  store %struct.Memory* %call_490dcf, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490dd1	 Bytes: 4
  %loadMem_490dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dd1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dd1)
  store %struct.Memory* %call_490dd1, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490dd5	 Bytes: 5
  %loadMem1_490dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490dd5 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490dd5, i64 -589349, i64 5, i64 5)
  store %struct.Memory* %call1_490dd5, %struct.Memory** %MEMORY

  %loadMem2_490dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490dd5 = load i64, i64* %3
  %call2_490dd5 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490dd5, %struct.Memory* %loadMem2_490dd5)
  store %struct.Memory* %call2_490dd5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490dda	 Bytes: 3
  %loadMem_490dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dda = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dda)
  store %struct.Memory* %call_490dda, %struct.Memory** %MEMORY

  ; Code: jne .L_490def	 RIP: 490ddd	 Bytes: 6
  %loadMem_490ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ddd = call %struct.Memory* @routine_jne_.L_490def(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ddd, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490ddd, %struct.Memory** %MEMORY

  %loadBr_490ddd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490ddd = icmp eq i8 %loadBr_490ddd, 1
  br i1 %cmpBr_490ddd, label %block_.L_490def, label %block_490de3

block_490de3:
  ; Code: movl $0x8, -0x4(%rbp)	 RIP: 490de3	 Bytes: 7
  %loadMem_490de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490de3 = call %struct.Memory* @routine_movl__0x8__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490de3)
  store %struct.Memory* %call_490de3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490dea	 Bytes: 5
  %loadMem_490dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dea = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dea, i64 1140, i64 5)
  store %struct.Memory* %call_490dea, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490def:	 RIP: 490def	 Bytes: 0
block_.L_490def:

  ; Code: movq $0x586b19, %rsi	 RIP: 490def	 Bytes: 10
  %loadMem_490def = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490def = call %struct.Memory* @routine_movq__0x586b19___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490def)
  store %struct.Memory* %call_490def, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 490df9	 Bytes: 5
  %loadMem_490df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490df9 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490df9)
  store %struct.Memory* %call_490df9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490dfe	 Bytes: 2
  %loadMem_490dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dfe = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dfe)
  store %struct.Memory* %call_490dfe, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490e00	 Bytes: 4
  %loadMem_490e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e00 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e00)
  store %struct.Memory* %call_490e00, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490e04	 Bytes: 5
  %loadMem1_490e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490e04 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490e04, i64 -589396, i64 5, i64 5)
  store %struct.Memory* %call1_490e04, %struct.Memory** %MEMORY

  %loadMem2_490e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490e04 = load i64, i64* %3
  %call2_490e04 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490e04, %struct.Memory* %loadMem2_490e04)
  store %struct.Memory* %call2_490e04, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490e09	 Bytes: 3
  %loadMem_490e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e09 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e09)
  store %struct.Memory* %call_490e09, %struct.Memory** %MEMORY

  ; Code: jne .L_490e1e	 RIP: 490e0c	 Bytes: 6
  %loadMem_490e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e0c = call %struct.Memory* @routine_jne_.L_490e1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e0c, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490e0c, %struct.Memory** %MEMORY

  %loadBr_490e0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490e0c = icmp eq i8 %loadBr_490e0c, 1
  br i1 %cmpBr_490e0c, label %block_.L_490e1e, label %block_490e12

block_490e12:
  ; Code: movl $0xf, -0x4(%rbp)	 RIP: 490e12	 Bytes: 7
  %loadMem_490e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e12 = call %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e12)
  store %struct.Memory* %call_490e12, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490e19	 Bytes: 5
  %loadMem_490e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e19 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e19, i64 1093, i64 5)
  store %struct.Memory* %call_490e19, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490e1e:	 RIP: 490e1e	 Bytes: 0
block_.L_490e1e:

  ; Code: movq $0x586b1e, %rsi	 RIP: 490e1e	 Bytes: 10
  %loadMem_490e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e1e = call %struct.Memory* @routine_movq__0x586b1e___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e1e)
  store %struct.Memory* %call_490e1e, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 490e28	 Bytes: 5
  %loadMem_490e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e28 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e28)
  store %struct.Memory* %call_490e28, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490e2d	 Bytes: 2
  %loadMem_490e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e2d = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e2d)
  store %struct.Memory* %call_490e2d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490e2f	 Bytes: 4
  %loadMem_490e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e2f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e2f)
  store %struct.Memory* %call_490e2f, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490e33	 Bytes: 5
  %loadMem1_490e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490e33 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490e33, i64 -589443, i64 5, i64 5)
  store %struct.Memory* %call1_490e33, %struct.Memory** %MEMORY

  %loadMem2_490e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490e33 = load i64, i64* %3
  %call2_490e33 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490e33, %struct.Memory* %loadMem2_490e33)
  store %struct.Memory* %call2_490e33, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490e38	 Bytes: 3
  %loadMem_490e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e38 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e38)
  store %struct.Memory* %call_490e38, %struct.Memory** %MEMORY

  ; Code: jne .L_490e4d	 RIP: 490e3b	 Bytes: 6
  %loadMem_490e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e3b = call %struct.Memory* @routine_jne_.L_490e4d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e3b, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490e3b, %struct.Memory** %MEMORY

  %loadBr_490e3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490e3b = icmp eq i8 %loadBr_490e3b, 1
  br i1 %cmpBr_490e3b, label %block_.L_490e4d, label %block_490e41

block_490e41:
  ; Code: movl $0x6, -0x4(%rbp)	 RIP: 490e41	 Bytes: 7
  %loadMem_490e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e41 = call %struct.Memory* @routine_movl__0x6__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e41)
  store %struct.Memory* %call_490e41, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490e48	 Bytes: 5
  %loadMem_490e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e48 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e48, i64 1046, i64 5)
  store %struct.Memory* %call_490e48, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490e4d:	 RIP: 490e4d	 Bytes: 0
block_.L_490e4d:

  ; Code: movq $0x586b24, %rsi	 RIP: 490e4d	 Bytes: 10
  %loadMem_490e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e4d = call %struct.Memory* @routine_movq__0x586b24___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e4d)
  store %struct.Memory* %call_490e4d, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 490e57	 Bytes: 5
  %loadMem_490e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e57 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e57)
  store %struct.Memory* %call_490e57, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490e5c	 Bytes: 2
  %loadMem_490e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e5c = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e5c)
  store %struct.Memory* %call_490e5c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490e5e	 Bytes: 4
  %loadMem_490e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e5e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e5e)
  store %struct.Memory* %call_490e5e, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490e62	 Bytes: 5
  %loadMem1_490e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490e62 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490e62, i64 -589490, i64 5, i64 5)
  store %struct.Memory* %call1_490e62, %struct.Memory** %MEMORY

  %loadMem2_490e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490e62 = load i64, i64* %3
  %call2_490e62 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490e62, %struct.Memory* %loadMem2_490e62)
  store %struct.Memory* %call2_490e62, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490e67	 Bytes: 3
  %loadMem_490e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e67 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e67)
  store %struct.Memory* %call_490e67, %struct.Memory** %MEMORY

  ; Code: jne .L_490e7c	 RIP: 490e6a	 Bytes: 6
  %loadMem_490e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e6a = call %struct.Memory* @routine_jne_.L_490e7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e6a, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490e6a, %struct.Memory** %MEMORY

  %loadBr_490e6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490e6a = icmp eq i8 %loadBr_490e6a, 1
  br i1 %cmpBr_490e6a, label %block_.L_490e7c, label %block_490e70

block_490e70:
  ; Code: movl $0x25, -0x4(%rbp)	 RIP: 490e70	 Bytes: 7
  %loadMem_490e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e70 = call %struct.Memory* @routine_movl__0x25__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e70)
  store %struct.Memory* %call_490e70, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490e77	 Bytes: 5
  %loadMem_490e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e77 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e77, i64 999, i64 5)
  store %struct.Memory* %call_490e77, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490e7c:	 RIP: 490e7c	 Bytes: 0
block_.L_490e7c:

  ; Code: movq $0x5857db, %rsi	 RIP: 490e7c	 Bytes: 10
  %loadMem_490e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e7c = call %struct.Memory* @routine_movq__0x5857db___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e7c)
  store %struct.Memory* %call_490e7c, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 490e86	 Bytes: 5
  %loadMem_490e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e86 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e86)
  store %struct.Memory* %call_490e86, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490e8b	 Bytes: 2
  %loadMem_490e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e8b = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e8b)
  store %struct.Memory* %call_490e8b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490e8d	 Bytes: 4
  %loadMem_490e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e8d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e8d)
  store %struct.Memory* %call_490e8d, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490e91	 Bytes: 5
  %loadMem1_490e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490e91 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490e91, i64 -589537, i64 5, i64 5)
  store %struct.Memory* %call1_490e91, %struct.Memory** %MEMORY

  %loadMem2_490e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490e91 = load i64, i64* %3
  %call2_490e91 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490e91, %struct.Memory* %loadMem2_490e91)
  store %struct.Memory* %call2_490e91, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490e96	 Bytes: 3
  %loadMem_490e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e96 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e96)
  store %struct.Memory* %call_490e96, %struct.Memory** %MEMORY

  ; Code: jne .L_490eab	 RIP: 490e99	 Bytes: 6
  %loadMem_490e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e99 = call %struct.Memory* @routine_jne_.L_490eab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e99, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490e99, %struct.Memory** %MEMORY

  %loadBr_490e99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490e99 = icmp eq i8 %loadBr_490e99, 1
  br i1 %cmpBr_490e99, label %block_.L_490eab, label %block_490e9f

block_490e9f:
  ; Code: movl $0x26, -0x4(%rbp)	 RIP: 490e9f	 Bytes: 7
  %loadMem_490e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e9f = call %struct.Memory* @routine_movl__0x26__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e9f)
  store %struct.Memory* %call_490e9f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490ea6	 Bytes: 5
  %loadMem_490ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ea6 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ea6, i64 952, i64 5)
  store %struct.Memory* %call_490ea6, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490eab:	 RIP: 490eab	 Bytes: 0
block_.L_490eab:

  ; Code: movq $0x5835e4, %rsi	 RIP: 490eab	 Bytes: 10
  %loadMem_490eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490eab = call %struct.Memory* @routine_movq__0x5835e4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490eab)
  store %struct.Memory* %call_490eab, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 490eb5	 Bytes: 5
  %loadMem_490eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490eb5 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490eb5)
  store %struct.Memory* %call_490eb5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490eba	 Bytes: 2
  %loadMem_490eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490eba = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490eba)
  store %struct.Memory* %call_490eba, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490ebc	 Bytes: 4
  %loadMem_490ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ebc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ebc)
  store %struct.Memory* %call_490ebc, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490ec0	 Bytes: 5
  %loadMem1_490ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490ec0 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490ec0, i64 -589584, i64 5, i64 5)
  store %struct.Memory* %call1_490ec0, %struct.Memory** %MEMORY

  %loadMem2_490ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490ec0 = load i64, i64* %3
  %call2_490ec0 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490ec0, %struct.Memory* %loadMem2_490ec0)
  store %struct.Memory* %call2_490ec0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490ec5	 Bytes: 3
  %loadMem_490ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ec5 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ec5)
  store %struct.Memory* %call_490ec5, %struct.Memory** %MEMORY

  ; Code: jne .L_490eda	 RIP: 490ec8	 Bytes: 6
  %loadMem_490ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ec8 = call %struct.Memory* @routine_jne_.L_490eda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ec8, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490ec8, %struct.Memory** %MEMORY

  %loadBr_490ec8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490ec8 = icmp eq i8 %loadBr_490ec8, 1
  br i1 %cmpBr_490ec8, label %block_.L_490eda, label %block_490ece

block_490ece:
  ; Code: movl $0x4, -0x4(%rbp)	 RIP: 490ece	 Bytes: 7
  %loadMem_490ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ece = call %struct.Memory* @routine_movl__0x4__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ece)
  store %struct.Memory* %call_490ece, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490ed5	 Bytes: 5
  %loadMem_490ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ed5 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ed5, i64 905, i64 5)
  store %struct.Memory* %call_490ed5, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490eda:	 RIP: 490eda	 Bytes: 0
block_.L_490eda:

  ; Code: movq $0x586b2a, %rsi	 RIP: 490eda	 Bytes: 10
  %loadMem_490eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490eda = call %struct.Memory* @routine_movq__0x586b2a___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490eda)
  store %struct.Memory* %call_490eda, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 490ee4	 Bytes: 5
  %loadMem_490ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ee4 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ee4)
  store %struct.Memory* %call_490ee4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490ee9	 Bytes: 2
  %loadMem_490ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ee9 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ee9)
  store %struct.Memory* %call_490ee9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490eeb	 Bytes: 4
  %loadMem_490eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490eeb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490eeb)
  store %struct.Memory* %call_490eeb, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490eef	 Bytes: 5
  %loadMem1_490eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490eef = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490eef, i64 -589631, i64 5, i64 5)
  store %struct.Memory* %call1_490eef, %struct.Memory** %MEMORY

  %loadMem2_490eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490eef = load i64, i64* %3
  %call2_490eef = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490eef, %struct.Memory* %loadMem2_490eef)
  store %struct.Memory* %call2_490eef, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490ef4	 Bytes: 3
  %loadMem_490ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ef4 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ef4)
  store %struct.Memory* %call_490ef4, %struct.Memory** %MEMORY

  ; Code: jne .L_490f09	 RIP: 490ef7	 Bytes: 6
  %loadMem_490ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ef7 = call %struct.Memory* @routine_jne_.L_490f09(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ef7, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490ef7, %struct.Memory** %MEMORY

  %loadBr_490ef7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490ef7 = icmp eq i8 %loadBr_490ef7, 1
  br i1 %cmpBr_490ef7, label %block_.L_490f09, label %block_490efd

block_490efd:
  ; Code: movl $0x21, -0x4(%rbp)	 RIP: 490efd	 Bytes: 7
  %loadMem_490efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490efd = call %struct.Memory* @routine_movl__0x21__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490efd)
  store %struct.Memory* %call_490efd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490f04	 Bytes: 5
  %loadMem_490f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f04 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f04, i64 858, i64 5)
  store %struct.Memory* %call_490f04, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490f09:	 RIP: 490f09	 Bytes: 0
block_.L_490f09:

  ; Code: movq $0x586b2f, %rsi	 RIP: 490f09	 Bytes: 10
  %loadMem_490f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f09 = call %struct.Memory* @routine_movq__0x586b2f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f09)
  store %struct.Memory* %call_490f09, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 490f13	 Bytes: 5
  %loadMem_490f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f13 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f13)
  store %struct.Memory* %call_490f13, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490f18	 Bytes: 2
  %loadMem_490f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f18 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f18)
  store %struct.Memory* %call_490f18, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490f1a	 Bytes: 4
  %loadMem_490f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f1a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f1a)
  store %struct.Memory* %call_490f1a, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490f1e	 Bytes: 5
  %loadMem1_490f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490f1e = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490f1e, i64 -589678, i64 5, i64 5)
  store %struct.Memory* %call1_490f1e, %struct.Memory** %MEMORY

  %loadMem2_490f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490f1e = load i64, i64* %3
  %call2_490f1e = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490f1e, %struct.Memory* %loadMem2_490f1e)
  store %struct.Memory* %call2_490f1e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490f23	 Bytes: 3
  %loadMem_490f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f23 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f23)
  store %struct.Memory* %call_490f23, %struct.Memory** %MEMORY

  ; Code: jne .L_490f38	 RIP: 490f26	 Bytes: 6
  %loadMem_490f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f26 = call %struct.Memory* @routine_jne_.L_490f38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f26, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490f26, %struct.Memory** %MEMORY

  %loadBr_490f26 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490f26 = icmp eq i8 %loadBr_490f26, 1
  br i1 %cmpBr_490f26, label %block_.L_490f38, label %block_490f2c

block_490f2c:
  ; Code: movl $0x22, -0x4(%rbp)	 RIP: 490f2c	 Bytes: 7
  %loadMem_490f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f2c = call %struct.Memory* @routine_movl__0x22__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f2c)
  store %struct.Memory* %call_490f2c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490f33	 Bytes: 5
  %loadMem_490f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f33 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f33, i64 811, i64 5)
  store %struct.Memory* %call_490f33, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490f38:	 RIP: 490f38	 Bytes: 0
block_.L_490f38:

  ; Code: movq $0x57a763, %rsi	 RIP: 490f38	 Bytes: 10
  %loadMem_490f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f38 = call %struct.Memory* @routine_movq__0x57a763___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f38)
  store %struct.Memory* %call_490f38, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 490f42	 Bytes: 5
  %loadMem_490f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f42 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f42)
  store %struct.Memory* %call_490f42, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490f47	 Bytes: 2
  %loadMem_490f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f47 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f47)
  store %struct.Memory* %call_490f47, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490f49	 Bytes: 4
  %loadMem_490f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f49 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f49)
  store %struct.Memory* %call_490f49, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490f4d	 Bytes: 5
  %loadMem1_490f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490f4d = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490f4d, i64 -589725, i64 5, i64 5)
  store %struct.Memory* %call1_490f4d, %struct.Memory** %MEMORY

  %loadMem2_490f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490f4d = load i64, i64* %3
  %call2_490f4d = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490f4d, %struct.Memory* %loadMem2_490f4d)
  store %struct.Memory* %call2_490f4d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490f52	 Bytes: 3
  %loadMem_490f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f52 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f52)
  store %struct.Memory* %call_490f52, %struct.Memory** %MEMORY

  ; Code: jne .L_490f67	 RIP: 490f55	 Bytes: 6
  %loadMem_490f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f55 = call %struct.Memory* @routine_jne_.L_490f67(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f55, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490f55, %struct.Memory** %MEMORY

  %loadBr_490f55 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490f55 = icmp eq i8 %loadBr_490f55, 1
  br i1 %cmpBr_490f55, label %block_.L_490f67, label %block_490f5b

block_490f5b:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 490f5b	 Bytes: 7
  %loadMem_490f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f5b = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f5b)
  store %struct.Memory* %call_490f5b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490f62	 Bytes: 5
  %loadMem_490f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f62 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f62, i64 764, i64 5)
  store %struct.Memory* %call_490f62, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490f67:	 RIP: 490f67	 Bytes: 0
block_.L_490f67:

  ; Code: movq $0x57f610, %rsi	 RIP: 490f67	 Bytes: 10
  %loadMem_490f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f67 = call %struct.Memory* @routine_movq__0x57f610___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f67)
  store %struct.Memory* %call_490f67, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 490f71	 Bytes: 5
  %loadMem_490f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f71 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f71)
  store %struct.Memory* %call_490f71, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490f76	 Bytes: 2
  %loadMem_490f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f76 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f76)
  store %struct.Memory* %call_490f76, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490f78	 Bytes: 4
  %loadMem_490f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f78 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f78)
  store %struct.Memory* %call_490f78, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490f7c	 Bytes: 5
  %loadMem1_490f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490f7c = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490f7c, i64 -589772, i64 5, i64 5)
  store %struct.Memory* %call1_490f7c, %struct.Memory** %MEMORY

  %loadMem2_490f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490f7c = load i64, i64* %3
  %call2_490f7c = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490f7c, %struct.Memory* %loadMem2_490f7c)
  store %struct.Memory* %call2_490f7c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490f81	 Bytes: 3
  %loadMem_490f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f81 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f81)
  store %struct.Memory* %call_490f81, %struct.Memory** %MEMORY

  ; Code: jne .L_490f96	 RIP: 490f84	 Bytes: 6
  %loadMem_490f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f84 = call %struct.Memory* @routine_jne_.L_490f96(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f84, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490f84, %struct.Memory** %MEMORY

  %loadBr_490f84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490f84 = icmp eq i8 %loadBr_490f84, 1
  br i1 %cmpBr_490f84, label %block_.L_490f96, label %block_490f8a

block_490f8a:
  ; Code: movl $0x5, -0x4(%rbp)	 RIP: 490f8a	 Bytes: 7
  %loadMem_490f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f8a = call %struct.Memory* @routine_movl__0x5__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f8a)
  store %struct.Memory* %call_490f8a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490f91	 Bytes: 5
  %loadMem_490f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f91 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f91, i64 717, i64 5)
  store %struct.Memory* %call_490f91, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490f96:	 RIP: 490f96	 Bytes: 0
block_.L_490f96:

  ; Code: movq $0x58730e, %rsi	 RIP: 490f96	 Bytes: 10
  %loadMem_490f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f96 = call %struct.Memory* @routine_movq__0x58730e___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f96)
  store %struct.Memory* %call_490f96, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 490fa0	 Bytes: 5
  %loadMem_490fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fa0 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fa0)
  store %struct.Memory* %call_490fa0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490fa5	 Bytes: 2
  %loadMem_490fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fa5 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fa5)
  store %struct.Memory* %call_490fa5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490fa7	 Bytes: 4
  %loadMem_490fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fa7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fa7)
  store %struct.Memory* %call_490fa7, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490fab	 Bytes: 5
  %loadMem1_490fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490fab = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490fab, i64 -589819, i64 5, i64 5)
  store %struct.Memory* %call1_490fab, %struct.Memory** %MEMORY

  %loadMem2_490fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490fab = load i64, i64* %3
  %call2_490fab = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490fab, %struct.Memory* %loadMem2_490fab)
  store %struct.Memory* %call2_490fab, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490fb0	 Bytes: 3
  %loadMem_490fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fb0 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fb0)
  store %struct.Memory* %call_490fb0, %struct.Memory** %MEMORY

  ; Code: jne .L_490fc5	 RIP: 490fb3	 Bytes: 6
  %loadMem_490fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fb3 = call %struct.Memory* @routine_jne_.L_490fc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fb3, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490fb3, %struct.Memory** %MEMORY

  %loadBr_490fb3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490fb3 = icmp eq i8 %loadBr_490fb3, 1
  br i1 %cmpBr_490fb3, label %block_.L_490fc5, label %block_490fb9

block_490fb9:
  ; Code: movl $0x13, -0x4(%rbp)	 RIP: 490fb9	 Bytes: 7
  %loadMem_490fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fb9 = call %struct.Memory* @routine_movl__0x13__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fb9)
  store %struct.Memory* %call_490fb9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490fc0	 Bytes: 5
  %loadMem_490fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fc0 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fc0, i64 670, i64 5)
  store %struct.Memory* %call_490fc0, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490fc5:	 RIP: 490fc5	 Bytes: 0
block_.L_490fc5:

  ; Code: movq $0x586b34, %rsi	 RIP: 490fc5	 Bytes: 10
  %loadMem_490fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fc5 = call %struct.Memory* @routine_movq__0x586b34___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fc5)
  store %struct.Memory* %call_490fc5, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 490fcf	 Bytes: 5
  %loadMem_490fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fcf = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fcf)
  store %struct.Memory* %call_490fcf, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 490fd4	 Bytes: 2
  %loadMem_490fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fd4 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fd4)
  store %struct.Memory* %call_490fd4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 490fd6	 Bytes: 4
  %loadMem_490fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fd6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fd6)
  store %struct.Memory* %call_490fd6, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 490fda	 Bytes: 5
  %loadMem1_490fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_490fda = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_490fda, i64 -589866, i64 5, i64 5)
  store %struct.Memory* %call1_490fda, %struct.Memory** %MEMORY

  %loadMem2_490fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_490fda = load i64, i64* %3
  %call2_490fda = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_490fda, %struct.Memory* %loadMem2_490fda)
  store %struct.Memory* %call2_490fda, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 490fdf	 Bytes: 3
  %loadMem_490fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fdf = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fdf)
  store %struct.Memory* %call_490fdf, %struct.Memory** %MEMORY

  ; Code: jne .L_490ff4	 RIP: 490fe2	 Bytes: 6
  %loadMem_490fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fe2 = call %struct.Memory* @routine_jne_.L_490ff4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fe2, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_490fe2, %struct.Memory** %MEMORY

  %loadBr_490fe2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490fe2 = icmp eq i8 %loadBr_490fe2, 1
  br i1 %cmpBr_490fe2, label %block_.L_490ff4, label %block_490fe8

block_490fe8:
  ; Code: movl $0x14, -0x4(%rbp)	 RIP: 490fe8	 Bytes: 7
  %loadMem_490fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fe8 = call %struct.Memory* @routine_movl__0x14__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fe8)
  store %struct.Memory* %call_490fe8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 490fef	 Bytes: 5
  %loadMem_490fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fef = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fef, i64 623, i64 5)
  store %struct.Memory* %call_490fef, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_490ff4:	 RIP: 490ff4	 Bytes: 0
block_.L_490ff4:

  ; Code: movq $0x57c0a9, %rsi	 RIP: 490ff4	 Bytes: 10
  %loadMem_490ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ff4 = call %struct.Memory* @routine_movq__0x57c0a9___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ff4)
  store %struct.Memory* %call_490ff4, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 490ffe	 Bytes: 5
  %loadMem_490ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ffe = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ffe)
  store %struct.Memory* %call_490ffe, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 491003	 Bytes: 2
  %loadMem_491003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491003 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491003)
  store %struct.Memory* %call_491003, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 491005	 Bytes: 4
  %loadMem_491005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491005 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491005)
  store %struct.Memory* %call_491005, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 491009	 Bytes: 5
  %loadMem1_491009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_491009 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_491009, i64 -589913, i64 5, i64 5)
  store %struct.Memory* %call1_491009, %struct.Memory** %MEMORY

  %loadMem2_491009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491009 = load i64, i64* %3
  %call2_491009 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_491009, %struct.Memory* %loadMem2_491009)
  store %struct.Memory* %call2_491009, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 49100e	 Bytes: 3
  %loadMem_49100e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49100e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49100e)
  store %struct.Memory* %call_49100e, %struct.Memory** %MEMORY

  ; Code: jne .L_491023	 RIP: 491011	 Bytes: 6
  %loadMem_491011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491011 = call %struct.Memory* @routine_jne_.L_491023(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491011, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_491011, %struct.Memory** %MEMORY

  %loadBr_491011 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491011 = icmp eq i8 %loadBr_491011, 1
  br i1 %cmpBr_491011, label %block_.L_491023, label %block_491017

block_491017:
  ; Code: movl $0x15, -0x4(%rbp)	 RIP: 491017	 Bytes: 7
  %loadMem_491017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491017 = call %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491017)
  store %struct.Memory* %call_491017, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 49101e	 Bytes: 5
  %loadMem_49101e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49101e = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49101e, i64 576, i64 5)
  store %struct.Memory* %call_49101e, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_491023:	 RIP: 491023	 Bytes: 0
block_.L_491023:

  ; Code: movq $0x57b705, %rsi	 RIP: 491023	 Bytes: 10
  %loadMem_491023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491023 = call %struct.Memory* @routine_movq__0x57b705___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491023)
  store %struct.Memory* %call_491023, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 49102d	 Bytes: 5
  %loadMem_49102d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49102d = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49102d)
  store %struct.Memory* %call_49102d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 491032	 Bytes: 2
  %loadMem_491032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491032 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491032)
  store %struct.Memory* %call_491032, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 491034	 Bytes: 4
  %loadMem_491034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491034 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491034)
  store %struct.Memory* %call_491034, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 491038	 Bytes: 5
  %loadMem1_491038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_491038 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_491038, i64 -589960, i64 5, i64 5)
  store %struct.Memory* %call1_491038, %struct.Memory** %MEMORY

  %loadMem2_491038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491038 = load i64, i64* %3
  %call2_491038 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_491038, %struct.Memory* %loadMem2_491038)
  store %struct.Memory* %call2_491038, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 49103d	 Bytes: 3
  %loadMem_49103d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49103d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49103d)
  store %struct.Memory* %call_49103d, %struct.Memory** %MEMORY

  ; Code: jne .L_491052	 RIP: 491040	 Bytes: 6
  %loadMem_491040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491040 = call %struct.Memory* @routine_jne_.L_491052(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491040, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_491040, %struct.Memory** %MEMORY

  %loadBr_491040 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491040 = icmp eq i8 %loadBr_491040, 1
  br i1 %cmpBr_491040, label %block_.L_491052, label %block_491046

block_491046:
  ; Code: movl $0x16, -0x4(%rbp)	 RIP: 491046	 Bytes: 7
  %loadMem_491046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491046 = call %struct.Memory* @routine_movl__0x16__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491046)
  store %struct.Memory* %call_491046, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 49104d	 Bytes: 5
  %loadMem_49104d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49104d = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49104d, i64 529, i64 5)
  store %struct.Memory* %call_49104d, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_491052:	 RIP: 491052	 Bytes: 0
block_.L_491052:

  ; Code: movq $0x586b3c, %rsi	 RIP: 491052	 Bytes: 10
  %loadMem_491052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491052 = call %struct.Memory* @routine_movq__0x586b3c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491052)
  store %struct.Memory* %call_491052, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 49105c	 Bytes: 5
  %loadMem_49105c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49105c = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49105c)
  store %struct.Memory* %call_49105c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 491061	 Bytes: 2
  %loadMem_491061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491061 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491061)
  store %struct.Memory* %call_491061, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 491063	 Bytes: 4
  %loadMem_491063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491063 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491063)
  store %struct.Memory* %call_491063, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 491067	 Bytes: 5
  %loadMem1_491067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_491067 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_491067, i64 -590007, i64 5, i64 5)
  store %struct.Memory* %call1_491067, %struct.Memory** %MEMORY

  %loadMem2_491067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491067 = load i64, i64* %3
  %call2_491067 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_491067, %struct.Memory* %loadMem2_491067)
  store %struct.Memory* %call2_491067, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 49106c	 Bytes: 3
  %loadMem_49106c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49106c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49106c)
  store %struct.Memory* %call_49106c, %struct.Memory** %MEMORY

  ; Code: jne .L_491081	 RIP: 49106f	 Bytes: 6
  %loadMem_49106f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49106f = call %struct.Memory* @routine_jne_.L_491081(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49106f, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_49106f, %struct.Memory** %MEMORY

  %loadBr_49106f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49106f = icmp eq i8 %loadBr_49106f, 1
  br i1 %cmpBr_49106f, label %block_.L_491081, label %block_491075

block_491075:
  ; Code: movl $0x1a, -0x4(%rbp)	 RIP: 491075	 Bytes: 7
  %loadMem_491075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491075 = call %struct.Memory* @routine_movl__0x1a__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491075)
  store %struct.Memory* %call_491075, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 49107c	 Bytes: 5
  %loadMem_49107c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49107c = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49107c, i64 482, i64 5)
  store %struct.Memory* %call_49107c, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_491081:	 RIP: 491081	 Bytes: 0
block_.L_491081:

  ; Code: movq $0x57a760, %rsi	 RIP: 491081	 Bytes: 10
  %loadMem_491081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491081 = call %struct.Memory* @routine_movq__0x57a760___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491081)
  store %struct.Memory* %call_491081, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 49108b	 Bytes: 5
  %loadMem_49108b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49108b = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49108b)
  store %struct.Memory* %call_49108b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 491090	 Bytes: 2
  %loadMem_491090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491090 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491090)
  store %struct.Memory* %call_491090, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 491092	 Bytes: 4
  %loadMem_491092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491092 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491092)
  store %struct.Memory* %call_491092, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 491096	 Bytes: 5
  %loadMem1_491096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_491096 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_491096, i64 -590054, i64 5, i64 5)
  store %struct.Memory* %call1_491096, %struct.Memory** %MEMORY

  %loadMem2_491096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491096 = load i64, i64* %3
  %call2_491096 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_491096, %struct.Memory* %loadMem2_491096)
  store %struct.Memory* %call2_491096, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 49109b	 Bytes: 3
  %loadMem_49109b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49109b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49109b)
  store %struct.Memory* %call_49109b, %struct.Memory** %MEMORY

  ; Code: jne .L_4910b0	 RIP: 49109e	 Bytes: 6
  %loadMem_49109e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49109e = call %struct.Memory* @routine_jne_.L_4910b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49109e, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_49109e, %struct.Memory** %MEMORY

  %loadBr_49109e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49109e = icmp eq i8 %loadBr_49109e, 1
  br i1 %cmpBr_49109e, label %block_.L_4910b0, label %block_4910a4

block_4910a4:
  ; Code: movl $0x1b, -0x4(%rbp)	 RIP: 4910a4	 Bytes: 7
  %loadMem_4910a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910a4 = call %struct.Memory* @routine_movl__0x1b__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910a4)
  store %struct.Memory* %call_4910a4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 4910ab	 Bytes: 5
  %loadMem_4910ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910ab = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910ab, i64 435, i64 5)
  store %struct.Memory* %call_4910ab, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_4910b0:	 RIP: 4910b0	 Bytes: 0
block_.L_4910b0:

  ; Code: movq $0x586b44, %rsi	 RIP: 4910b0	 Bytes: 10
  %loadMem_4910b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910b0 = call %struct.Memory* @routine_movq__0x586b44___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910b0)
  store %struct.Memory* %call_4910b0, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 4910ba	 Bytes: 5
  %loadMem_4910ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910ba = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910ba)
  store %struct.Memory* %call_4910ba, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4910bf	 Bytes: 2
  %loadMem_4910bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910bf = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910bf)
  store %struct.Memory* %call_4910bf, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4910c1	 Bytes: 4
  %loadMem_4910c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910c1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910c1)
  store %struct.Memory* %call_4910c1, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 4910c5	 Bytes: 5
  %loadMem1_4910c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4910c5 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4910c5, i64 -590101, i64 5, i64 5)
  store %struct.Memory* %call1_4910c5, %struct.Memory** %MEMORY

  %loadMem2_4910c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4910c5 = load i64, i64* %3
  %call2_4910c5 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_4910c5, %struct.Memory* %loadMem2_4910c5)
  store %struct.Memory* %call2_4910c5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4910ca	 Bytes: 3
  %loadMem_4910ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910ca = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910ca)
  store %struct.Memory* %call_4910ca, %struct.Memory** %MEMORY

  ; Code: jne .L_4910df	 RIP: 4910cd	 Bytes: 6
  %loadMem_4910cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910cd = call %struct.Memory* @routine_jne_.L_4910df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910cd, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4910cd, %struct.Memory** %MEMORY

  %loadBr_4910cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4910cd = icmp eq i8 %loadBr_4910cd, 1
  br i1 %cmpBr_4910cd, label %block_.L_4910df, label %block_4910d3

block_4910d3:
  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 4910d3	 Bytes: 7
  %loadMem_4910d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910d3 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910d3)
  store %struct.Memory* %call_4910d3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 4910da	 Bytes: 5
  %loadMem_4910da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910da = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910da, i64 388, i64 5)
  store %struct.Memory* %call_4910da, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_4910df:	 RIP: 4910df	 Bytes: 0
block_.L_4910df:

  ; Code: movq $0x585f74, %rsi	 RIP: 4910df	 Bytes: 10
  %loadMem_4910df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910df = call %struct.Memory* @routine_movq__0x585f74___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910df)
  store %struct.Memory* %call_4910df, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 4910e9	 Bytes: 5
  %loadMem_4910e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910e9 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910e9)
  store %struct.Memory* %call_4910e9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4910ee	 Bytes: 2
  %loadMem_4910ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910ee = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910ee)
  store %struct.Memory* %call_4910ee, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4910f0	 Bytes: 4
  %loadMem_4910f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910f0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910f0)
  store %struct.Memory* %call_4910f0, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 4910f4	 Bytes: 5
  %loadMem1_4910f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4910f4 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4910f4, i64 -590148, i64 5, i64 5)
  store %struct.Memory* %call1_4910f4, %struct.Memory** %MEMORY

  %loadMem2_4910f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4910f4 = load i64, i64* %3
  %call2_4910f4 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_4910f4, %struct.Memory* %loadMem2_4910f4)
  store %struct.Memory* %call2_4910f4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4910f9	 Bytes: 3
  %loadMem_4910f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910f9 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910f9)
  store %struct.Memory* %call_4910f9, %struct.Memory** %MEMORY

  ; Code: jne .L_49110e	 RIP: 4910fc	 Bytes: 6
  %loadMem_4910fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910fc = call %struct.Memory* @routine_jne_.L_49110e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910fc, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4910fc, %struct.Memory** %MEMORY

  %loadBr_4910fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4910fc = icmp eq i8 %loadBr_4910fc, 1
  br i1 %cmpBr_4910fc, label %block_.L_49110e, label %block_491102

block_491102:
  ; Code: movl $0x2, -0x4(%rbp)	 RIP: 491102	 Bytes: 7
  %loadMem_491102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491102 = call %struct.Memory* @routine_movl__0x2__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491102)
  store %struct.Memory* %call_491102, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 491109	 Bytes: 5
  %loadMem_491109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491109 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491109, i64 341, i64 5)
  store %struct.Memory* %call_491109, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_49110e:	 RIP: 49110e	 Bytes: 0
block_.L_49110e:

  ; Code: movq $0x5856fa, %rsi	 RIP: 49110e	 Bytes: 10
  %loadMem_49110e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49110e = call %struct.Memory* @routine_movq__0x5856fa___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49110e)
  store %struct.Memory* %call_49110e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 491118	 Bytes: 5
  %loadMem_491118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491118 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491118)
  store %struct.Memory* %call_491118, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 49111d	 Bytes: 2
  %loadMem_49111d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49111d = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49111d)
  store %struct.Memory* %call_49111d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 49111f	 Bytes: 4
  %loadMem_49111f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49111f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49111f)
  store %struct.Memory* %call_49111f, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 491123	 Bytes: 5
  %loadMem1_491123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_491123 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_491123, i64 -590195, i64 5, i64 5)
  store %struct.Memory* %call1_491123, %struct.Memory** %MEMORY

  %loadMem2_491123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491123 = load i64, i64* %3
  %call2_491123 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_491123, %struct.Memory* %loadMem2_491123)
  store %struct.Memory* %call2_491123, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 491128	 Bytes: 3
  %loadMem_491128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491128 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491128)
  store %struct.Memory* %call_491128, %struct.Memory** %MEMORY

  ; Code: jne .L_49113d	 RIP: 49112b	 Bytes: 6
  %loadMem_49112b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49112b = call %struct.Memory* @routine_jne_.L_49113d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49112b, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_49112b, %struct.Memory** %MEMORY

  %loadBr_49112b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49112b = icmp eq i8 %loadBr_49112b, 1
  br i1 %cmpBr_49112b, label %block_.L_49113d, label %block_491131

block_491131:
  ; Code: movl $0x12, -0x4(%rbp)	 RIP: 491131	 Bytes: 7
  %loadMem_491131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491131 = call %struct.Memory* @routine_movl__0x12__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491131)
  store %struct.Memory* %call_491131, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 491138	 Bytes: 5
  %loadMem_491138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491138 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491138, i64 294, i64 5)
  store %struct.Memory* %call_491138, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_49113d:	 RIP: 49113d	 Bytes: 0
block_.L_49113d:

  ; Code: movq $0x57fdf5, %rsi	 RIP: 49113d	 Bytes: 10
  %loadMem_49113d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49113d = call %struct.Memory* @routine_movq__0x57fdf5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49113d)
  store %struct.Memory* %call_49113d, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 491147	 Bytes: 5
  %loadMem_491147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491147 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491147)
  store %struct.Memory* %call_491147, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 49114c	 Bytes: 2
  %loadMem_49114c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49114c = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49114c)
  store %struct.Memory* %call_49114c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 49114e	 Bytes: 4
  %loadMem_49114e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49114e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49114e)
  store %struct.Memory* %call_49114e, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 491152	 Bytes: 5
  %loadMem1_491152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_491152 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_491152, i64 -590242, i64 5, i64 5)
  store %struct.Memory* %call1_491152, %struct.Memory** %MEMORY

  %loadMem2_491152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491152 = load i64, i64* %3
  %call2_491152 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_491152, %struct.Memory* %loadMem2_491152)
  store %struct.Memory* %call2_491152, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 491157	 Bytes: 3
  %loadMem_491157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491157 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491157)
  store %struct.Memory* %call_491157, %struct.Memory** %MEMORY

  ; Code: jne .L_49116c	 RIP: 49115a	 Bytes: 6
  %loadMem_49115a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49115a = call %struct.Memory* @routine_jne_.L_49116c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49115a, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_49115a, %struct.Memory** %MEMORY

  %loadBr_49115a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49115a = icmp eq i8 %loadBr_49115a, 1
  br i1 %cmpBr_49115a, label %block_.L_49116c, label %block_491160

block_491160:
  ; Code: movl $0x17, -0x4(%rbp)	 RIP: 491160	 Bytes: 7
  %loadMem_491160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491160 = call %struct.Memory* @routine_movl__0x17__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491160)
  store %struct.Memory* %call_491160, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 491167	 Bytes: 5
  %loadMem_491167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491167 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491167, i64 247, i64 5)
  store %struct.Memory* %call_491167, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_49116c:	 RIP: 49116c	 Bytes: 0
block_.L_49116c:

  ; Code: movq $0x586b49, %rsi	 RIP: 49116c	 Bytes: 10
  %loadMem_49116c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49116c = call %struct.Memory* @routine_movq__0x586b49___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49116c)
  store %struct.Memory* %call_49116c, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 491176	 Bytes: 5
  %loadMem_491176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491176 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491176)
  store %struct.Memory* %call_491176, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 49117b	 Bytes: 2
  %loadMem_49117b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49117b = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49117b)
  store %struct.Memory* %call_49117b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 49117d	 Bytes: 4
  %loadMem_49117d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49117d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49117d)
  store %struct.Memory* %call_49117d, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 491181	 Bytes: 5
  %loadMem1_491181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_491181 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_491181, i64 -590289, i64 5, i64 5)
  store %struct.Memory* %call1_491181, %struct.Memory** %MEMORY

  %loadMem2_491181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_491181 = load i64, i64* %3
  %call2_491181 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_491181, %struct.Memory* %loadMem2_491181)
  store %struct.Memory* %call2_491181, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 491186	 Bytes: 3
  %loadMem_491186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491186 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491186)
  store %struct.Memory* %call_491186, %struct.Memory** %MEMORY

  ; Code: jne .L_49119b	 RIP: 491189	 Bytes: 6
  %loadMem_491189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491189 = call %struct.Memory* @routine_jne_.L_49119b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491189, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_491189, %struct.Memory** %MEMORY

  %loadBr_491189 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491189 = icmp eq i8 %loadBr_491189, 1
  br i1 %cmpBr_491189, label %block_.L_49119b, label %block_49118f

block_49118f:
  ; Code: movl $0x18, -0x4(%rbp)	 RIP: 49118f	 Bytes: 7
  %loadMem_49118f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49118f = call %struct.Memory* @routine_movl__0x18__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49118f)
  store %struct.Memory* %call_49118f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 491196	 Bytes: 5
  %loadMem_491196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491196 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491196, i64 200, i64 5)
  store %struct.Memory* %call_491196, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_49119b:	 RIP: 49119b	 Bytes: 0
block_.L_49119b:

  ; Code: movq $0x5861b6, %rsi	 RIP: 49119b	 Bytes: 10
  %loadMem_49119b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49119b = call %struct.Memory* @routine_movq__0x5861b6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49119b)
  store %struct.Memory* %call_49119b, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 4911a5	 Bytes: 5
  %loadMem_4911a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911a5 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911a5)
  store %struct.Memory* %call_4911a5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4911aa	 Bytes: 2
  %loadMem_4911aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911aa = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911aa)
  store %struct.Memory* %call_4911aa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4911ac	 Bytes: 4
  %loadMem_4911ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911ac = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911ac)
  store %struct.Memory* %call_4911ac, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 4911b0	 Bytes: 5
  %loadMem1_4911b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4911b0 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4911b0, i64 -590336, i64 5, i64 5)
  store %struct.Memory* %call1_4911b0, %struct.Memory** %MEMORY

  %loadMem2_4911b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4911b0 = load i64, i64* %3
  %call2_4911b0 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_4911b0, %struct.Memory* %loadMem2_4911b0)
  store %struct.Memory* %call2_4911b0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4911b5	 Bytes: 3
  %loadMem_4911b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911b5 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911b5)
  store %struct.Memory* %call_4911b5, %struct.Memory** %MEMORY

  ; Code: jne .L_4911ca	 RIP: 4911b8	 Bytes: 6
  %loadMem_4911b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911b8 = call %struct.Memory* @routine_jne_.L_4911ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911b8, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4911b8, %struct.Memory** %MEMORY

  %loadBr_4911b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4911b8 = icmp eq i8 %loadBr_4911b8, 1
  br i1 %cmpBr_4911b8, label %block_.L_4911ca, label %block_4911be

block_4911be:
  ; Code: movl $0x19, -0x4(%rbp)	 RIP: 4911be	 Bytes: 7
  %loadMem_4911be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911be = call %struct.Memory* @routine_movl__0x19__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911be)
  store %struct.Memory* %call_4911be, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 4911c5	 Bytes: 5
  %loadMem_4911c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911c5 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911c5, i64 153, i64 5)
  store %struct.Memory* %call_4911c5, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_4911ca:	 RIP: 4911ca	 Bytes: 0
block_.L_4911ca:

  ; Code: movq $0x586b51, %rsi	 RIP: 4911ca	 Bytes: 10
  %loadMem_4911ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911ca = call %struct.Memory* @routine_movq__0x586b51___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911ca)
  store %struct.Memory* %call_4911ca, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 4911d4	 Bytes: 5
  %loadMem_4911d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911d4 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911d4)
  store %struct.Memory* %call_4911d4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4911d9	 Bytes: 2
  %loadMem_4911d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911d9 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911d9)
  store %struct.Memory* %call_4911d9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4911db	 Bytes: 4
  %loadMem_4911db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911db = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911db)
  store %struct.Memory* %call_4911db, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 4911df	 Bytes: 5
  %loadMem1_4911df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4911df = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4911df, i64 -590383, i64 5, i64 5)
  store %struct.Memory* %call1_4911df, %struct.Memory** %MEMORY

  %loadMem2_4911df = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4911df = load i64, i64* %3
  %call2_4911df = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_4911df, %struct.Memory* %loadMem2_4911df)
  store %struct.Memory* %call2_4911df, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4911e4	 Bytes: 3
  %loadMem_4911e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911e4 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911e4)
  store %struct.Memory* %call_4911e4, %struct.Memory** %MEMORY

  ; Code: jne .L_4911f9	 RIP: 4911e7	 Bytes: 6
  %loadMem_4911e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911e7 = call %struct.Memory* @routine_jne_.L_4911f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911e7, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4911e7, %struct.Memory** %MEMORY

  %loadBr_4911e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4911e7 = icmp eq i8 %loadBr_4911e7, 1
  br i1 %cmpBr_4911e7, label %block_.L_4911f9, label %block_4911ed

block_4911ed:
  ; Code: movl $0x20, -0x4(%rbp)	 RIP: 4911ed	 Bytes: 7
  %loadMem_4911ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911ed = call %struct.Memory* @routine_movl__0x20__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911ed)
  store %struct.Memory* %call_4911ed, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 4911f4	 Bytes: 5
  %loadMem_4911f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911f4 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911f4, i64 106, i64 5)
  store %struct.Memory* %call_4911f4, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_4911f9:	 RIP: 4911f9	 Bytes: 0
block_.L_4911f9:

  ; Code: movq $0x585d71, %rsi	 RIP: 4911f9	 Bytes: 10
  %loadMem_4911f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911f9 = call %struct.Memory* @routine_movq__0x585d71___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911f9)
  store %struct.Memory* %call_4911f9, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 491203	 Bytes: 5
  %loadMem_491203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491203 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491203)
  store %struct.Memory* %call_491203, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 491208	 Bytes: 2
  %loadMem_491208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491208 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491208)
  store %struct.Memory* %call_491208, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 49120a	 Bytes: 4
  %loadMem_49120a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49120a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49120a)
  store %struct.Memory* %call_49120a, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 49120e	 Bytes: 5
  %loadMem1_49120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_49120e = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_49120e, i64 -590430, i64 5, i64 5)
  store %struct.Memory* %call1_49120e, %struct.Memory** %MEMORY

  %loadMem2_49120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49120e = load i64, i64* %3
  %call2_49120e = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_49120e, %struct.Memory* %loadMem2_49120e)
  store %struct.Memory* %call2_49120e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 491213	 Bytes: 3
  %loadMem_491213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491213 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491213)
  store %struct.Memory* %call_491213, %struct.Memory** %MEMORY

  ; Code: jne .L_491228	 RIP: 491216	 Bytes: 6
  %loadMem_491216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491216 = call %struct.Memory* @routine_jne_.L_491228(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491216, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_491216, %struct.Memory** %MEMORY

  %loadBr_491216 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491216 = icmp eq i8 %loadBr_491216, 1
  br i1 %cmpBr_491216, label %block_.L_491228, label %block_49121c

block_49121c:
  ; Code: movl $0x27, -0x4(%rbp)	 RIP: 49121c	 Bytes: 7
  %loadMem_49121c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49121c = call %struct.Memory* @routine_movl__0x27__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49121c)
  store %struct.Memory* %call_49121c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 491223	 Bytes: 5
  %loadMem_491223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491223 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491223, i64 59, i64 5)
  store %struct.Memory* %call_491223, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_491228:	 RIP: 491228	 Bytes: 0
block_.L_491228:

  ; Code: movq $0x586b56, %rsi	 RIP: 491228	 Bytes: 10
  %loadMem_491228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491228 = call %struct.Memory* @routine_movq__0x586b56___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491228)
  store %struct.Memory* %call_491228, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 491232	 Bytes: 5
  %loadMem_491232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491232 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491232)
  store %struct.Memory* %call_491232, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 491237	 Bytes: 2
  %loadMem_491237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491237 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491237)
  store %struct.Memory* %call_491237, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 491239	 Bytes: 4
  %loadMem_491239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491239 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491239)
  store %struct.Memory* %call_491239, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 49123d	 Bytes: 5
  %loadMem1_49123d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_49123d = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_49123d, i64 -590477, i64 5, i64 5)
  store %struct.Memory* %call1_49123d, %struct.Memory** %MEMORY

  %loadMem2_49123d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_49123d = load i64, i64* %3
  %call2_49123d = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_49123d, %struct.Memory* %loadMem2_49123d)
  store %struct.Memory* %call2_49123d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 491242	 Bytes: 3
  %loadMem_491242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491242 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491242)
  store %struct.Memory* %call_491242, %struct.Memory** %MEMORY

  ; Code: jne .L_491257	 RIP: 491245	 Bytes: 6
  %loadMem_491245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491245 = call %struct.Memory* @routine_jne_.L_491257(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491245, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_491245, %struct.Memory** %MEMORY

  %loadBr_491245 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491245 = icmp eq i8 %loadBr_491245, 1
  br i1 %cmpBr_491245, label %block_.L_491257, label %block_49124b

block_49124b:
  ; Code: movl $0x28, -0x4(%rbp)	 RIP: 49124b	 Bytes: 7
  %loadMem_49124b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49124b = call %struct.Memory* @routine_movl__0x28__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49124b)
  store %struct.Memory* %call_49124b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_49125e	 RIP: 491252	 Bytes: 5
  %loadMem_491252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491252 = call %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491252, i64 12, i64 5)
  store %struct.Memory* %call_491252, %struct.Memory** %MEMORY

  br label %block_.L_49125e

  ; Code: .L_491257:	 RIP: 491257	 Bytes: 0
block_.L_491257:

  ; Code: movl $0xffffffff, -0x4(%rbp)	 RIP: 491257	 Bytes: 7
  %loadMem_491257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491257 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491257)
  store %struct.Memory* %call_491257, %struct.Memory** %MEMORY

  ; Code: .L_49125e:	 RIP: 49125e	 Bytes: 0
  br label %block_.L_49125e
block_.L_49125e:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 49125e	 Bytes: 3
  %loadMem_49125e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49125e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49125e)
  store %struct.Memory* %call_49125e, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rsp	 RIP: 491261	 Bytes: 4
  %loadMem_491261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491261 = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491261)
  store %struct.Memory* %call_491261, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 491265	 Bytes: 1
  %loadMem_491265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491265 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491265)
  store %struct.Memory* %call_491265, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 491266	 Bytes: 1
  %loadMem_491266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491266 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491266)
  store %struct.Memory* %call_491266, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_491266
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

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 32)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x57a92d___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57a92d_type* @G__0x57a92d to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x11__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 17
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_callq_.__isoc99_sscanf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jne_.L_490a5f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl_MINUS0x11__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 17
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.toupper_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 17
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i32
  %6 = shl i32 %5, 24
  %7 = ashr exact i32 %6, 24
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl__cl___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %CL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__0x41___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 65)
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

define %struct.Memory* @routine_jl_.L_490a5f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_cmpl__0x5a___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 90)
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

define %struct.Memory* @routine_jg_.L_490a5f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsbl_MINUS0x11__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 17
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x49___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 73)
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

define %struct.Memory* @routine_je_.L_490a5f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x5__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_49125e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_cmpl__0x3f___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 63)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_490a7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x12__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 18)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_490a80(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_cmpl__0x20___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 32)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_490aa1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x1___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__0x586a9a___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586a9a_type* @G__0x586a9a to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x9___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 9)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_callq_.strncmp_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_490ad0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x9__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 9)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586aa4___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586aa4_type* @G__0x586aa4 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490aff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xa__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586aae___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586aae_type* @G__0x586aae to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490b2e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x11__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 17)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586ab8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586ab8_type* @G__0x586ab8 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490b5d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x23__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 35)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586ac4___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586ac4_type* @G__0x586ac4 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490b8c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x24__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 36)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x5877c3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x5877c3_type* @G__0x5877c3 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490bbb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xc__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 12)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586ad0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586ad0_type* @G__0x586ad0 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490bea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x29__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 41)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x58742a___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x58742a_type* @G__0x58742a to i64))
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










define %struct.Memory* @routine_jne_.L_490c19(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xb__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 11)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586add___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586add_type* @G__0x586add to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x7___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 7)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jne_.L_490c48(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x10__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586ae5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586ae5_type* @G__0x586ae5 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490c77(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1c__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 28)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586aef___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586aef_type* @G__0x586aef to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x6___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 6)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jne_.L_490ca6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586af6___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586af6_type* @G__0x586af6 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490cd5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1e__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 30)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586aff___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586aff_type* @G__0x586aff to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490d04(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1f__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 31)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586b09___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586b09_type* @G__0x586b09 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490d33(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1d__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 29)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x57fc64___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57fc64_type* @G__0x57fc64 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490d62(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xe__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 14)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586b12___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586b12_type* @G__0x586b12 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490d91(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x7__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586eef___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586eef_type* @G__0x586eef to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jne_.L_490dc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xd__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 13)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x585698___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x585698_type* @G__0x585698 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490def(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x8__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586b19___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586b19_type* @G__0x586b19 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490e1e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 15)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586b1e___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586b1e_type* @G__0x586b1e to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490e4d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x6__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586b24___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586b24_type* @G__0x586b24 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490e7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x25__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 37)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x5857db___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x5857db_type* @G__0x5857db to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490eab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x26__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 38)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x5835e4___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x5835e4_type* @G__0x5835e4 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490eda(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x4__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586b2a___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586b2a_type* @G__0x586b2a to i64))
  ret %struct.Memory* %11
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










define %struct.Memory* @routine_jne_.L_490f09(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x21__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 33)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586b2f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586b2f_type* @G__0x586b2f to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490f38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x22__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 34)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x57a763___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57a763_type* @G__0x57a763 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490f67(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_movq__0x57f610___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57f610_type* @G__0x57f610 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490f96(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__0x58730e___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x58730e_type* @G__0x58730e to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490fc5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x13__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 19)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586b34___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586b34_type* @G__0x586b34 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_490ff4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x14__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 20)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x57c0a9___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57c0a9_type* @G__0x57c0a9 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_491023(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x57b705___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57b705_type* @G__0x57b705 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_491052(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x16__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 22)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586b3c___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586b3c_type* @G__0x586b3c to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_491081(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1a__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 26)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x57a760___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57a760_type* @G__0x57a760 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_4910b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1b__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 27)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586b44___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586b44_type* @G__0x586b44 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_4910df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x585f74___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x585f74_type* @G__0x585f74 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_49110e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x2__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x5856fa___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x5856fa_type* @G__0x5856fa to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 1)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jne_.L_49113d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__0x57fdf5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57fdf5_type* @G__0x57fdf5 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 2)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jne_.L_49116c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x17__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 23)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586b49___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586b49_type* @G__0x586b49 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_49119b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x18__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 24)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x5861b6___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x5861b6_type* @G__0x5861b6 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_4911ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x19__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 25)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586b51___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586b51_type* @G__0x586b51 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_4911f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x20__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 32)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x585d71___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x585d71_type* @G__0x585d71 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_491228(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x27__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 39)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x586b56___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586b56_type* @G__0x586b56 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_491257(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x28__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 40)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_addq__0x20___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 32)
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

